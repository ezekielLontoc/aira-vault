---
document_id: "AIRA-DOC-026B"
title: "AIRA Governed Knowledge Automation Pipeline Standard"
version: "v1.2"
status: "aligned"
source_file: "26B-AIRA_Governed_Knowledge_Automation_Pipeline_Standard_v1.2_Aligned.docx"
source_format: "docx"
vault_folder: "00-Control-Center/Knowledge-Governance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - knowledge-governance
  - automation-pipeline
---

# AIRA Governed Knowledge Automation Pipeline Standard

**AIRA
AI-Native Enterprise Platform**

**AIRA Governed Knowledge Automation Pipeline Standard**

**v1.2 - Supplemental Alignment Update | INTERNAL CONFIDENTIAL**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-026B** |
| **Document Title** | **AIRA Governed Knowledge Automation Pipeline Standard** |
| **Version** | **v1.2 - Supplemental Alignment Update** |
| **Supersedes** | **26-AIRA_Governed_Knowledge_Automation_Pipeline_Standard_v1.0.md** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **ALIGNED FOR OBSIDIAN UPLOAD / ARCHITECTURE REVIEW** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Alignment Baseline** | **AIRA Pack 01-05 v1.2 Individual Files; canonical 01A v1.1; Technology Stack v9.1; Java 25 LTS backend baseline** |
| **Target Pack / Register Placement** | **Pack 03 / Knowledge Automation Pipeline** |
| **Effective Date** | **2026-05-21** |

## Alignment Control Addendum

**Purpose. **This supplemental aligned version corrects missing-pack inclusion, document-numbering, classification, and cross-reference issues discovered after Pack 01-05 v1.2 generation. The original source content is preserved below, with updated references and added governance controls where necessary.

**Canonical interpretation. **Where the source text contains older references, the current aligned baseline governs: Java 25 LTS for backend services, Technology Stack v9.1, AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, MicroFunction Framework v3.1, Pack 05 Flyway governance, and canonical 01A v1.1.

### Improvement Summary

Renumbered as 26B to avoid conflict with Pack 03 Document 26A Data Classification, Retention, and Evidence Register.

Converted Markdown automation standard into formal DOCX for Obsidian source-pack consistency.

Strengthened drift detection, source freshness manifest, GitNexus-derived evidence, no raw code duplication, and human review gates.

Aligned automation pipeline with Pack 03 Knowledge Fabric, Pack 02 Golden Source, and Pack 05 ADR/TDL decision governance.

### AVCI Compliance Summary

| **AVCI Property** | **Evidence** |
| --- | --- |
| **Attributable** | **Identifies source document, owner, superseded version, target pack placement, and alignment baseline.** |
| **Verifiable** | **Preserves source content and records the specific alignment changes required for Obsidian and revision-control use.** |
| **Classifiable** | **Standardizes classification to INTERNAL CONFIDENTIAL and preserves any elevated handling controls in the body.** |
| **Improvable** | **Captures open numbering/pack-inclusion issues and creates a clean basis for future source-pack regeneration.** |

## Aligned Source Content

---

document_id: 26-AIRA_Governed_Knowledge_Automation_Pipeline_Standard

version: v1.0

status: Draft for Team Review

classification: INTERNAL CONFIDENTIAL

owner: AIRA Architecture Governance / Jun Elloso

date: 2026-05-20

tags:

AIRA

AVCI

Knowledge-Governance

Obsidian

LLM-Wiki

LightRAG

GitNexus

DevSecOps

---

## 26-AIRA Governed Knowledge Automation Pipeline Standard v1.0

### 1. Executive Summary

This standard formalizes the governed automation approach for keeping AIRA documentation, code intelligence, evidence summaries, and AI knowledge indexes up to date while preventing drift, duplication, Obsidian vault pollution, security leakage, weak AVCI evidence, and duplicate Golden Sources.

The standard does not require copying the whole source code repository into Obsidian. GitHub/GitNexus remains the Golden Source for source code and code intelligence. Obsidian remains the curated knowledge repository for standards, architecture, ADRs, runbooks, prompts, and reviewed evidence summaries. LLM Wiki/LightRAG indexes approved and permitted knowledge sources. AI assistants retrieve from the governed knowledge layer, subject to classification, SBAC, freshness, provenance, and AVCI controls.

### 2. Foundational Design Rule

_Do not copy the full codebase into Obsidian. Automate controlled extraction, summarization, validation, evidence generation, and indexing. GitHub remains the code Golden Source. Obsidian remains the curated knowledge Golden Source. GitNexus provides code intelligence. LLM Wiki/LightRAG provides retrieval. AIRA Knowledge API enforces classification, SBAC, freshness, provenance, and AVCI before AI assistants use the information._

### 3. Correct Governed Flows

#### 3.1 Documentation Flow

flowchart TD

A[AIRA Standards / Policies / ADRs] --> B[Central Docs Repository / Obsidian Vault]

B --> C[PR Review + Metadata Validation + Classification Check]

C --> D[Approved Markdown / Attachments]

D --> E[LLM Wiki / LightRAG Re-index]

E --> F[AI Assistants use approved documentation as reference]

#### 3.2 Code Flow

flowchart TD

A[Developer / Codex] --> B[GitHub Pull Request]

B --> C[CI/CD + Unit Tests + SAST + DAST + SBOM + Secret Scan]

C --> D[GitNexus Code Intelligence]

D --> E[Generated Code Map / Impact Summary / Evidence Summary]

E --> F[Review Gate]

F --> G[Obsidian / LLM Wiki]

#### 3.3 AI Knowledge Flow

flowchart TD

A[Obsidian Docs + GitHub Code + GitNexus Metadata + Evidence Summaries] --> B[AIRA Knowledge API / LLM Wiki / LightRAG]

B --> C[Classification + SBAC + Freshness Check]

C --> D[ChatGPT / Codex / Claude / Hermes retrieve approved context]

### 4. Automation Pipeline

flowchart TD

A[Source Change] --> B[Automated Detection]

B --> C[Validation and Security Checks]

C --> D[Derived Summary / Evidence Generation]

D --> E[Human Approval for Canonical Knowledge]

E --> F[LLM Wiki / LightRAG Indexing]

F --> G[AI Retrieval with Freshness, Classification, SBAC, and Provenance]

### 5. Risk and Control Matrix

| **Risk** | **Why It Is Bad** | **AIRA Control** |
| --- | --- | --- |
| **Drift** | **Code in GitHub and copied code in Obsidian can become inconsistent.** | **Source hash, commit hash, freshness manifest, and derived summaries only.** |
| **Large vault size** | **Obsidian becomes slow, polluted, and hard to curate.** | **Store curated docs and summaries, not full raw code or heavy artifacts.** |
| **Security risk** | **Secrets, configs, tokens, or sensitive code may be copied accidentally.** | **Secret scan, classification scan, redaction, and retrieval access controls.** |
| **Poor developer workflow** | **Developers should work from Git, not Obsidian copies.** | **Keep GitHub/GitNexus as code authority; Obsidian stores knowledge and evidence.** |
| **Weak AVCI** | **It becomes difficult to prove which version is authoritative.** | **Require provenance, hash, author/generator, approval, and indexed timestamp.** |
| **Duplicate Golden Source** | **Multiple truths violate one-source discipline.** | **Define clear authority boundaries and prohibit full-code duplication.** |

### 6. Automation Decision Matrix

#### Fully Automate

| **Item** | **Recommendation** |
| --- | --- |
| **Re-indexing approved documents** | **Fully automate after successful validation.** |
| **GitNexus scan after PR merge** | **Fully automate.** |
| **CI/CD evidence collection** | **Fully automate.** |
| **Test result summary generation** | **Fully automate, subject to review if published as formal evidence.** |
| **SAST/DAST/SBOM summary generation** | **Fully automate, subject to classification/redaction.** |
| **Knowledge freshness manifest update** | **Fully automate.** |
| **Broken link detection** | **Fully automate.** |
| **Drift detection** | **Fully automate and alert.** |

#### Automate with Human Review

| **Item** | **Required Review** |
| --- | --- |
| **New AIRA standard** | **Architect or document owner approval.** |
| **ADR creation or update** | **Architecture governance approval.** |
| **Code impact summary published to Obsidian** | **Technical reviewer approval.** |
| **AI-generated runbook** | **Operations/security approval.** |
| **AI incident analysis** | **Human decision remains mandatory.** |
| **Policy changes** | **Security review and policy test approval.** |
| **MicroFunction runtime configuration** | **Architecture/security approval before activation.** |

#### Do Not Automate Directly

| **Prohibited Automation** | **Reason** |
| --- | --- |
| **Copying full codebase into Obsidian** | **Causes drift, security risk, and duplicate Golden Source.** |
| **Direct AI modification of canonical standards** | **Violates governance and weakens AVCI.** |
| **Automatic activation of security policies without approval** | **May introduce fail-open or lockout risk.** |
| **Automatic account unlock** | **Requires human approval and separation of duties.** |
| **Publishing Restricted content to AI index without approval** | **Violates classification-aware routing.** |
| **Overwriting approved documents without PR/MR review** | **Weakens traceability and change control.** |

### 7. Recommended Folder Structure

AIRA-Knowledge/

├── 00-Control/

│ ├── Document-Control-Register.md

│ ├── Knowledge-Freshness-Manifest.md

│ └── Classification-Register.md

├── 01-Standards/

├── 02-Architecture/

├── 03-ADRs/

├── 04-MicroFunction/

├── 05-DevSecOps/

├── 06-Runbooks/

├── 07-Policies/

├── 08-PoC/

│ ├── PoC1-Login/

│ └── PoC2-Identity-Lifecycle/

├── 09-Derived-Evidence/

│ ├── Code-Maps/

│ ├── GitNexus-Reports/

│ ├── Test-Evidence/

│ ├── Security-Scan-Summaries/

│ └── Release-Evidence/

└── 10-Indexes/

├── LLM-Wiki-Index-Manifest.md

└── LightRAG-Index-Manifest.md

### 8. Knowledge Freshness Manifest Template

knowledge_item_id: POC1-LOGIN-CODEMAP

title: PoC1 Login Codebase Map

source_type: derived-code-intelligence

source_repo: aira-platform

source_commit: abc123

source_branch: main

source_paths:

- backend/src/main/java/com/aira/auth

- opa/auth/login.rego

generated_by: GitNexus

generated_at: 2026-05-20T10:00:00+08:00

approved_by: Jun Elloso

approved_at: 2026-05-20T11:00:00+08:00

classification: INTERNAL CONFIDENTIAL

indexed_by_llm_wiki_at: 2026-05-20T11:10:00+08:00

source_hash: sha256:...

artifact_hash: sha256:...

status: approved-indexed

staleness_policy: block_if_source_commit_changes

avci_status: verifiable

### 9. AVCI Compliance Mapping

| **AVCI Element** | **Required Evidence** |
| --- | --- |
| **Attributable** | **Document owner, generator, approver, source repository, commit, branch, source path, and timestamp.** |
| **Verifiable** | **Source hash, artifact hash, CI result, scan result, GitNexus run ID, index timestamp, and approval status.** |
| **Classifiable** | **Classification label, SBAC policy, redaction status, allowed retrieval audience, and routing constraints.** |
| **Improvable** | **Review cadence, feedback mechanism, stale detection, supersession process, and improvement backlog.** |

### 10. Standard Team Instruction

_Do not copy the whole source code into Obsidian. Use GitHub as the source code Golden Source, GitNexus as the code intelligence layer, Obsidian as the curated knowledge and evidence repository, and LLM Wiki/LightRAG as the governed retrieval index. Automation must generate summaries, validate metadata, scan for secrets, enforce classification, update freshness manifests, and trigger indexing only after approval gates are satisfied._
