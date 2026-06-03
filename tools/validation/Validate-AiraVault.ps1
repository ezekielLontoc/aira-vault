<#
.SYNOPSIS
Validates AIRA Vault governance metadata and repository hygiene.

.DESCRIPTION
This script performs lightweight governance validation for the AIRA Vault:
- Markdown frontmatter presence
- Required frontmatter fields
- Duplicate document_id detection
- Valid status values
- Forbidden secret-pattern detection
- Basic full-codebase copy risk detection

Duplicate document IDs are currently reported as warnings because the vault may retain
multiple historical versions of the same controlled document. True collisions should
be resolved through the revision-control matrix.
#>

[CmdletBinding()]
param(
    [string]$RootPath = ".",
    [switch]$FailOnWarnings
)

$ErrorActionPreference = "Stop"

$allowedStatuses = @(
    "draft",
    "for-review",
    "aligned",
    "current",
    "approved",
    "supplemental-update",
    "superseded",
    "archived",
    "improved"
)

$requiredFrontmatterFields = @(
    "document_id",
    "title",
    "version",
    "status",
    "source_file",
    "source_format",
    "vault_folder",
    "generated_at",
    "tags"
)

$excludedDirectories = @(
    ".git",
    ".github",
    "node_modules",
    "vendor",
    ".venv",
    "venv",
    "dist",
    "build"
)

$errors = New-Object System.Collections.Generic.List[string]
$warnings = New-Object System.Collections.Generic.List[string]
$documentIds = @{}
$documentMetadata = @{}

function Add-ValidationError {
    param([string]$Message)
    $script:errors.Add($Message) | Out-Null
}

function Add-ValidationWarning {
    param([string]$Message)
    $script:warnings.Add($Message) | Out-Null
}

function Test-IsExcludedPath {
    param([string]$Path)

    foreach ($dir in $excludedDirectories) {
        if ($Path -like "*\$dir\*" -or $Path -like "*/$dir/*") {
            return $true
        }
    }

    return $false
}

function Get-Frontmatter {
    param([string[]]$Lines)

    if ($Lines.Count -lt 3) {
        return $null
    }

    if ($Lines[0].Trim() -ne "---") {
        return $null
    }

    $endIndex = -1

    for ($i = 1; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i].Trim() -eq "---") {
            $endIndex = $i
            break
        }
    }

    if ($endIndex -lt 0) {
        return $null
    }

    if ($endIndex -eq 1) {
        return @()
    }

    return $Lines[1..($endIndex - 1)]
}

function Convert-FrontmatterToMap {
    param([string[]]$FrontmatterLines)

    $map = @{}

    foreach ($line in $FrontmatterLines) {
        if ($line -match '^\s*([A-Za-z0-9_-]+)\s*:\s*(.*)\s*$') {
            $key = $matches[1].Trim()
            $value = $matches[2].Trim().Trim('"').Trim("'")
            $map[$key] = $value
        }
    }

    return $map
}

function Test-SecretPatterns {
    param(
        [string]$Path,
        [string]$Content
    )

    $patterns = @{
        "GitHub token" = 'ghp_[A-Za-z0-9_]{20,}'
        "AWS access key" = 'AKIA[0-9A-Z]{16}'
        "Private key block" = '-----BEGIN (RSA |EC |OPENSSH |DSA )?PRIVATE KEY-----'
        "Generic API key assignment" = '(?i)(api[_-]?key|secret|token|password)\s*[:=]\s*[''"][^''"]{12,}[''"]'
    }

    foreach ($name in $patterns.Keys) {
        if ($Content -match $patterns[$name]) {
            Add-ValidationError "Potential secret detected [$name] in $Path"
        }
    }
}

function Test-CodebaseCopyRisk {
    param(
        [string]$Path,
        [string]$Content
    )

    $extension = [System.IO.Path]::GetExtension($Path).ToLowerInvariant()

    if ($extension -ne ".md") {
        return
    }

    $codeBlockMatches = [regex]::Matches($Content, '```[\s\S]*?```')

    if ($codeBlockMatches.Count -gt 20) {
        Add-ValidationWarning "Large number of code blocks in $Path. Confirm this is not a full codebase copy."
    }

    if ($Content.Length -gt 250000) {
        Add-ValidationWarning "Very large markdown file $Path. Confirm it is governed documentation, not raw code dump."
    }
}

function Test-RequiredFieldPresent {
    param(
        [hashtable]$Metadata,
        [string]$Field
    )

    if (-not $Metadata.ContainsKey($Field)) {
        return $false
    }

    if ($Field -eq "tags") {
        return $true
    }

    return -not [string]::IsNullOrWhiteSpace($Metadata[$Field])
}

$resolvedRoot = Resolve-Path $RootPath
Write-Host "Validating AIRA Vault at: $resolvedRoot"

$markdownFiles = Get-ChildItem -Path $resolvedRoot -Recurse -File -Include "*.md" |
    Where-Object { -not (Test-IsExcludedPath -Path $_.FullName) }

foreach ($file in $markdownFiles) {
    $relativePath = Resolve-Path -Path $file.FullName -Relative
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $lines = $content -split "`r?`n"

    Test-SecretPatterns -Path $relativePath -Content $content
    Test-CodebaseCopyRisk -Path $relativePath -Content $content

    if ($file.Name -eq "README.md") {
        continue
    }

    $frontmatter = Get-Frontmatter -Lines $lines

    if ($null -eq $frontmatter) {
        Add-ValidationWarning "Missing YAML frontmatter in $relativePath"
        continue
    }

    $metadata = Convert-FrontmatterToMap -FrontmatterLines $frontmatter

    foreach ($field in $requiredFrontmatterFields) {
        if (-not (Test-RequiredFieldPresent -Metadata $metadata -Field $field)) {
            Add-ValidationWarning "Missing frontmatter field '$field' in $relativePath"
        }
    }

    if ($metadata.ContainsKey("document_id")) {
        $docId = $metadata["document_id"]

        if (-not $documentIds.ContainsKey($docId)) {
            $documentIds[$docId] = New-Object System.Collections.Generic.List[string]
        }

        $documentIds[$docId].Add($relativePath) | Out-Null

        if (-not $documentMetadata.ContainsKey($docId)) {
            $documentMetadata[$docId] = New-Object System.Collections.Generic.List[object]
        }

        $documentMetadata[$docId].Add([pscustomobject]@{
            Path = $relativePath
            Status = if ($metadata.ContainsKey("status")) { $metadata["status"] } else { "" }
            Version = if ($metadata.ContainsKey("version")) { $metadata["version"] } else { "" }
            SupersededBy = if ($metadata.ContainsKey("superseded_by")) { $metadata["superseded_by"] } else { "" }
        }) | Out-Null
    }

    if ($metadata.ContainsKey("status")) {
        $status = $metadata["status"]

        if ($allowedStatuses -notcontains $status) {
            Add-ValidationWarning "Unexpected status '$status' in $relativePath"
        }
    }
}

foreach ($docId in $documentIds.Keys) {
    if ($documentIds[$docId].Count -gt 1) {
        $entries = $documentMetadata[$docId]
        $activeEntries = @($entries | Where-Object { $_.Status -notin @("superseded", "archived") })

        if ($activeEntries.Count -le 1) {
            continue
        }

        $locations = $documentIds[$docId] -join "; "
        Add-ValidationWarning "Duplicate active document_id '$docId' found in: $locations"
    }
}

Write-Host ""
Write-Host "AIRA Vault Validation Summary"
Write-Host "-----------------------------"
Write-Host "Markdown files scanned: $($markdownFiles.Count)"
Write-Host "Unique document IDs: $($documentIds.Keys.Count)"
Write-Host "Warnings: $($warnings.Count)"
Write-Host "Errors: $($errors.Count)"
Write-Host ""

if ($warnings.Count -gt 0) {
    Write-Host "Warnings:"
    foreach ($warning in $warnings) {
        Write-Host "  [WARN] $warning"
    }
    Write-Host ""
}

if ($errors.Count -gt 0) {
    Write-Host "Errors:"
    foreach ($err in $errors) {
        Write-Host "  [ERROR] $err"
    }
    Write-Host ""
}

if ($errors.Count -gt 0) {
    exit 1
}

if ($FailOnWarnings -and $warnings.Count -gt 0) {
    exit 1
}

exit 0

