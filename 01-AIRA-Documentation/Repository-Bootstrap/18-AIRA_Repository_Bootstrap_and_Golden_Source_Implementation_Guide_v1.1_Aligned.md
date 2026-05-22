---
document_id: "AIRA-DOC-018"
title: "AIRA Repository Bootstrap and Golden Source Implementation Guide"
version: "v1.1"
status: "aligned"
source_file: "18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Repository-Bootstrap"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - repository-bootstrap
  - golden-source
---

# AIRA Repository Bootstrap and Golden Source Implementation Guide

**AIRA**

AI-Native Enterprise Platform

**AIRA Repository Bootstrap and Golden Source Implementation Guide**

_Repository Structure | Branch Protection | CODEOWNERS | Devcontainer | Golden Source | Evidence-First Bootstrap_

**v1.1 - Java 25 Golden Source and Cross-Pack Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-018** |
| **Document Title** | **AIRA Repository Bootstrap and Golden Source Implementation Guide** |
| **Document Version** | **v1.1 - Java 25 Golden Source and Cross-Pack Alignment Update** |
| **Supersedes** | **18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Software Development Lead; DevSecOps Lead; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material runtime, technology, security, AI-risk, or governance change** |
| **Pack Context** | **Pack 02 v1.2 individual aligned file generated from Pack 02 v1.1 aligned source pack and synchronized against Packs 01, 03, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development. Java 21 is waiver-only fallback, not the default.** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 02 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 02 source document so it can be uploaded to Obsidian as a standalone canonical Developer Execution artifact while remaining synchronized with the current AIRA source-pack baseline and Pack 01 v1.2 outputs.

**Document role. **Bootstrap guide for repositories, branch protection, devcontainers, canonical toolchains, Golden Source, and first evidence gates.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active source baseline** | **AIRA Source Packs v3.0 / Aligned Pack Set v1.1 remains the input baseline; Pack 02 v1.2 is the new individual output set for Obsidian upload.** |
| **Backend runtime baseline** | **Java 25 LTS is the required backend baseline. Spring Boot 4.x and Spring Framework 7.x are the target backend framework baseline where compatible.** |
| **Java 21 handling** | **Java 21 is not the default. It may appear only as a documented compatibility fallback with Architecture Board/CAB waiver, risk acceptance, and exit plan.** |
| **Pack 01 governance references** | **References are aligned to AVCI v3.1, Engineering Blueprint v5.1, DevSecOps v3.1, 01A v1.1, and ADR-AIRA-2026-001 v1.1.** |
| **Technology baseline** | **Technology Stack v9.0 remains the canonical technology reference and explicitly includes Java 25 LTS as the primary backend runtime.** |
| **Information fabric baseline** | **Information Nervous System v4.0 governs source authority, retrieval eligibility, Obsidian / LLM Wiki, GitNexus indexing, and derivative knowledge handling.** |
| **AI execution boundary** | **All model access routes through LiteLLM. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Tool actions go through Harness/SBAC/OPA.** |
| **GitNexus** | **GitNexus is read-only, derivative, commit-bound code intelligence. It cannot commit, approve, merge, deploy, mutate production, or replace tests/scans/human review.** |
| **Dograh** | **Dograh is governed voice-agent orchestration only. It is not a hardcoded STT/TTS/LLM provider and remains subject to classification, consent, guardrail, and audit controls.** |
| **Flyway / Database** | **Flyway remains mandatory from initial database creation through all migrations, data fixes, RLS, extensions, seed data, and schema evolution.** |

### Material Changes in This Version

Pinned the backend bootstrap baseline to Java 25 LTS in Golden Source images, devcontainers, Gradle toolchains, CI runners, and service templates.

Clarified that Java 21 images/toolchains are compatibility fallback artifacts requiring waiver, not default repository bootstrap assets.

Aligned repository templates with Pack 01 v1.2 canonical 01A and Pack 03 Technology Stack v9.0.

Added GitNexus index and evidence-generation treatment as read-only, derivative, secret-safe, and commit-sha-bound.

Reinforced that Golden Source controls apply to source code, docs, prompts, guardrails, devcontainers, actions, packages, images, and model aliases.

### Mandatory Java 25 Backend Control

| **Control** | **Pack 02 v1.2 Requirement** |
| --- | --- |
| **Default backend runtime** | **Java 25 LTS. All backend service templates, coding examples, devcontainers, Gradle toolchains, CI runners, unit tests, architecture tests, and onboarding labs must assume Java 25 unless explicitly waived.** |
| **Fallback runtime** | **Java 21 is waiver-only for compatibility blockers. The waiver must include owner, reason, affected service, risk, compensating controls, and exit date.** |
| **Review gate** | **PR/MR reviewers must reject backend code, templates, devcontainers, or CI jobs that quietly downgrade the runtime baseline or introduce untracked dual-runtime behavior.** |
| **Evidence** | **CI evidence must expose java.version, toolchain version, Gradle/Maven version, build image digest, SBOM, and architecture fitness results.** |

### AVCI Compliance Summary for This Update

| **AVCI Property** | **Evidence in This Pack 02 v1.2 Update** |
| --- | --- |
| **Attributable** | **Each file has a document ID, owner, supersedes value, source pack context, and material-change list.** |
| **Verifiable** | **The Java 25 baseline is explicitly recorded, cross-pack references are updated, and original source content is preserved after the alignment notice.** |
| **Classifiable** | **All generated files are marked INTERNAL CONFIDENTIAL and inherit AIRA classification-handling rules.** |
| **Improvable** | **Remaining numbering issues such as duplicate 19/25 are retained for master-register cleanup rather than hidden.** |

## Updated Baseline Content

**AIRA**

AI-Native Enterprise Platform

Repository Bootstrap and Golden Source Implementation Guide

_Repository Structure · Branch Protection · CODEOWNERS · Devcontainer · Golden Source · Evidence-First Bootstrap_

**Version 1.1 · April 2026**

| **Mandatory Bootstrap Rule**<br>AIRA development repositories must be created from a controlled, signed, evidence-producing bootstrap baseline. No repository is ready for development until branch protection, CODEOWNERS, CLAUDE.md, pre-commit hooks, CI strict mode, Golden Source linkage, security scans, and AVCI evidence templates are active. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-018 |
| Document Title | AIRA Repository Bootstrap and Golden Source Implementation Guide |
| Version | v1.1 - Initial Execution Baseline |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION |
| Owner | Solutions Architecture Office / DevSecOps Lead |
| Co-Owners | Software Development Lead · Security Administrator · System Administrator · QA Lead · DBA · AI Governance Lead |
| Audience | Solutions Architect / IT Head, Software Developers, DevSecOps, System Administrator, Security Administrator, DBA, QA/SDET, Internal Audit |
| Effective Date | On CAB / Architecture Review Board approval |
| Review Cadence | Quarterly; unscheduled on material repository, toolchain, CI/CD, security, AI, or Golden Source change |
| Primary Inputs | ADR-AIRA-2026-001; AIRA Cross-Document Revision Control Matrix v1.1; 01A Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Companion Documents | 01 AVCI v3.1; 01A Enterprise Design Principles v1.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.0; 06 CLAUDE.md Reference v3.0; 08 Unit Testing v3.1; 11 DevSecOps v3.1; 12 CLAUDE.md Rollout Pack v3.0; 14 ADR/TDL v2.0; 15 API Contract v2.0; 16 Database Standard v2.0; 17 Security Standard v2.0 |
| Purpose | Define the executable repository bootstrap baseline, Golden Source implementation model, branch protection, review controls, templates, local development container, CI evidence gates, and initial adoption plan needed before controlled AIRA foundation development begins. |
| Evidence Path | OpenKM Tier-0 / AIRA / Engineering Standards / Repository Bootstrap / v1.1/ |

## Table of Contents

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Bootstrap Operating Principles

## 4. Golden Source Architecture

## 5. Repository Topology and Naming Standard

## 6. Standard Repository Layout

## 7. Branching, Protection, and CODEOWNERS

## 8. Initial File Baseline and Templates

## 9. Devcontainer and Workstation Integration

## 10. CI/CD, Pre-Commit, and Evidence Gates

## 11. Dependency, Package, Image, and Artifact Governance

## 12. AI-Assisted Development and CLAUDE.md Enforcement

## 13. GitHub / GitLab Configuration Guide

## 14. Bootstrap Procedure B0-B12

## 15. Ready-to-Develop Acceptance Gates

## 16. Roles, RACI, and Support Model

## 17. Implementation Roadmap

## 18. AVCI Compliance Summary

Appendix A. Repository Skeleton

Appendix B. CODEOWNERS Template

Appendix C. Pull Request Template

Appendix D. Root CLAUDE.md Baseline

Appendix E. devcontainer.json Baseline

Appendix F. Pre-Commit Configuration

Appendix G. GitHub Actions Baseline

Appendix H. Golden Source Registry YAML

Appendix I. Bootstrap Checklist

| **Word TOC Note**<br>This document uses a static table of contents for deterministic rendering in headless environments. A dynamic Microsoft Word TOC may be inserted before final publication if required. |
| --- |

## 1. Executive Summary

This guide converts the AIRA standards into an executable repository bootstrap model. It defines how repositories are created, protected, initialized, connected to Golden Source, enforced by CI, and prepared for AI-assisted development before any production-bound code is written.

The target outcome is simple: a developer can clone the repository, open the devcontainer, run the approved local checks, follow CLAUDE.md, create a branch, raise a pull request, produce evidence, and merge only through protected gates. No hidden setup, no shadow dependencies, no unreviewed AI behavior, and no direct route from workstation to production.

| **Strategic Decision**<br>Repository bootstrap is a control activity, not a clerical setup task. The first commit establishes the security, quality, architecture, and evidence posture of the entire AIRA engineering lifecycle. |
| --- |

![[attachments/18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1_Aligned/image1.png]]

| **Outcome** | **How This Guide Delivers It** |
| --- | --- |
| Controlled development start | Defines minimum repository, branch, CODEOWNERS, CI, devcontainer, and evidence controls before coding begins. |
| Golden Source discipline | Routes dependencies, images, templates, prompts, policies, and artifacts through approved registries and mirrors. |
| AI-safe coding | Requires root and directory-specific CLAUDE.md rules, AI usage declaration, synthetic fixtures, and no direct provider/model/tool bypass. |
| Evidence by construction | Every PR must produce AVCI summary, tests, scans, policy results, architecture fitness checks, and human approvals. |
| Reproducibility | Devcontainers, lockfiles, pinned versions, approved package sources, and CI evidence make local and pipeline behavior deterministic. |
| Secure extensibility | Repository structure enforces Clean Architecture, DDD boundaries, ports/adapters, SOLID, testability, and rollbackability. |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

The purpose of this guide is to define the practical repository implementation baseline for AIRA. It answers what to create first, what files must exist, which protections must be enabled, which templates must be copied, which checks must run, and what evidence must be produced before the software development team begins foundation coding.

### 2.2 Scope

| **In Scope** | **Out of Scope** |
| --- | --- |
| Application, infrastructure, contract, AI governance, standards, observability, and Golden Source repositories. | Business-feature requirements that have not yet been converted into approved epics, stories, contracts, or MicroFunction definitions. |
| Repository naming, folders, CODEOWNERS, branch protection, PR templates, CI workflow, hooks, devcontainer, and local setup. | Physical server provisioning, which belongs to the Runtime Platform Bootstrap Runbook. |
| Golden Source mirrors, package approval, artifact publication, signed images, dependency locks, and evidence retention. | Production support operations, which belong to operations and incident runbooks. |
| ChatGPT/Codex/Claude Code/Windsurf usage rules as repository-local enforcement. | Enterprise procurement and licensing negotiation for tools. |

### 2.3 Authority and Precedence

| **Authority Level** | **Artifact** | **Repository Impact** |
| --- | --- | --- |
| L0 | Architecture Board / Consolidated Architecture Decisions | Repository topology and boundary exceptions. |
| L1 | Engineering Blueprint v5.0 and DevSecOps Standard v3.1 | Service boundaries, lifecycle gates, CI/CD evidence, release path. |
| L2 | AVCI v3.0 and 01A Enterprise Design Principles | Universal quality, SOLID, Clean Architecture, DDD, reversibility, evidence. |
| L2 | CLAUDE.md Reference v3.0 and Rollout Pack v3.0 | Repository rules, AI/human behavior, hooks, templates, CI strict mode. |
| L3 | This Guide | Concrete repository bootstrap implementation. |
| L4 | Repository files | Executable local enforcement and project-specific controls. |

## 3. Bootstrap Operating Principles

| **ID** | **Principle** | **Implementation Meaning** |
| --- | --- | --- |
| RB-01 | Golden Source First | No repository, dependency, template, image, prompt, policy, or script is used unless approved, versioned, and source-traceable. |
| RB-02 | Single Contribution Path | All work enters through issue or ADR, feature branch, local checks, PR/MR, CI strict mode, CODEOWNERS approval, and protected merge. |
| RB-03 | Protected Main by Default | Direct commits to main, force-push, unsigned releases, skipped checks, and unreviewed changes are blocked. |
| RB-04 | Repository Rules Are Executable | CLAUDE.md, hooks, CODEOWNERS, branch protection, and CI enforce the standards; documentation alone is insufficient. |
| RB-05 | AI Is Bounded by Repository Governance | AI may draft and explain, but cannot approve, merge, bypass gates, introduce secrets, invent contracts, or violate CLAUDE.md. |
| RB-06 | Reproducible Development | Devcontainers, version pins, lockfiles, package mirrors, deterministic tests, and CI parity are mandatory. |
| RB-07 | Evidence Is a Deliverable | No PR/MR is complete without AVCI summary, tests, scans, policy evidence, architecture fitness checks, and reviewer decision. |
| RB-08 | Fail Closed | If CI, hooks, secret scan, CODEOWNERS, OPA, branch protection, or evidence publishing is unavailable, protected merge is blocked. |

## 4. Golden Source Architecture

Golden Source is the controlled supply path for source code, standards, dependencies, images, scripts, prompts, policies, templates, and generated artifacts. It prevents workstation-level drift and uncontrolled supply-chain intake.

| **Golden Source Domain** | **Authoritative Location** | **Examples** | **Control** |
| --- | --- | --- | --- |
| Source Code | Approved SCM platform | aira-platform, aira-contracts, aira-infra, aira-ai-governance | Protected branches, signed commits, CODEOWNERS, PR evidence. |
| Standards and Templates | aira-standards + OpenKM Tier-0 | DOCX standards, ADR templates, PR templates, CLAUDE.md templates | Approved version, owner, classification, review cadence. |
| Packages and Dependencies | Approved package proxy/mirror | Maven, npm, Python, container bases, Gradle wrappers | Version pin, vulnerability scan, license review, hash verification. |
| Container Images | Harbor or approved OCI registry | base images, devcontainers, service images, CI runners | Signed, scanned, immutable tags, provenance. |
| AI Artifacts | AI governance repository | prompts, guardrails, model aliases, evaluation datasets | Classification, guardrail tests, model route approval, human review. |
| Policies | Policy repository / OPA bundle registry | Rego policies, Conftest policies, admission policies | Policy tests, bundle version, owner, rollback plan. |
| Evidence | OpenKM / evidence store / CI artifacts | test reports, SBOM, SLSA provenance, scan reports | Immutable retention, classification, traceability. |

| **Golden Source Rejection Rule**<br>Direct developer downloads from public registries, copied scripts from the internet, unapproved prompts, unpinned actions, unsigned containers, and unmanaged package sources are prohibited for AIRA production-bound work. |
| --- |

## 5. Repository Topology and Naming Standard

![[attachments/18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1_Aligned/image2.png]]

| **Repository** | **Purpose** | **Must Contain** |
| --- | --- | --- |
| aira-platform | Application services, shared libraries, MicroFunction runtime, domain modules. | services/, libs/, microfunctions/, tests/, docs/, ai adapter references, root CLAUDE.md. |
| aira-contracts | OpenAPI, AsyncAPI, CloudEvents, JSON Schema, Avro schemas, examples, contract tests. | openapi/, asyncapi/, schemas/, examples/, compatibility tests, contract register. |
| aira-infra | Terraform, Kubernetes, Helm, Argo CD, network policy, runtime platform manifests. | terraform/, helm/, k8s/, argocd/, policies/, environment overlays. |
| aira-ai-governance | Prompts, guardrails, model aliases, evaluation datasets, LiteLLM route configs. | prompts/, guardrails/, models/, evaluations/, golden datasets, routing policy. |
| aira-standards | Approved standards, ADRs, templates, checklists, developer onboarding materials. | docs/, adr/, templates/, diagrams/, handoff packs, revision matrix. |
| aira-observability | Dashboards, alerts, SLOs, log/trace/metric conventions, runbooks. | grafana/, prometheus/, loki/, tempo/, sentry/, runbooks/. |
| aira-golden-source | Package mirror configs, base image definitions, signed artifacts, approved tool manifests. | registry/, package-mirrors/, base-images/, signatures/, approvals/. |

Initial development may start with a controlled monorepo if team size and governance tooling favor simplicity. If a monorepo is used, the same boundaries must be represented as top-level directories with CODEOWNERS, CLAUDE.md, and CI path filters.

## 6. Standard Repository Layout

Every repository must follow a predictable layout so humans, AI tools, CI workflows, and audit reviewers can locate contracts, rules, evidence, and implementation artifacts consistently.

| aira-platform/<br>├── CLAUDE.md<br>├── .claude-md.lock<br>├── CODEOWNERS<br>├── README.md<br>├── SECURITY.md<br>├── CONTRIBUTING.md<br>├── .editorconfig<br>├── .gitignore<br>├── .pre-commit-config.yaml<br>├── .github/ or .gitlab/<br>│ ├── pull_request_template.md<br>│ ├── workflows/aira-ci.yml<br>│ └── ISSUE_TEMPLATE/<br>├── docs/<br>│ ├── adr/<br>│ ├── architecture/<br>│ └── evidence/<br>├── services/<br>│ ├── gateway-service/<br>│ ├── workflow-service/<br>│ ├── orchestrator-service/<br>│ └── harness-service/<br>├── libs/<br>│ ├── aira-common/<br>│ ├── aira-security/<br>│ └── aira-test-support/<br>├── microfunctions/<br>├── contracts/<br>├── ai/<br>│ ├── prompts/<br>│ ├── guardrails/<br>│ ├── models/<br>│ └── evaluations/<br>├── infra/<br>├── tests/<br>└── devcontainer/ or .devcontainer/ |
| --- |

| **Directory / File** | **Mandatory Purpose** |
| --- | --- |
| CLAUDE.md | Human-readable Golden Source for repository behavior and AI-assisted coding rules. |
| .claude-md.lock | Compiled machine-readable rule lock generated from approved CLAUDE.md hierarchy. |
| CODEOWNERS | Defines mandatory reviewers by path and control domain. |
| .pre-commit-config.yaml | Local deterministic enforcement before commit. |
| pull_request_template.md | AVCI, SOLID, security, testing, and AI-use evidence declaration. |
| docs/adr | ADRs and TDLs tied to implementation decisions. |
| contracts | OpenAPI/AsyncAPI/schema artifacts used by services and tests. |
| ai | Prompt, guardrail, model alias, and evaluation artifacts under classification-aware controls. |
| infra | IaC, Helm, GitOps, policy-as-code, and environment overlays. |
| devcontainer | Reproducible developer environment definition. |

## 7. Branching, Protection, and CODEOWNERS

![[attachments/18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1_Aligned/image3.png]]

| **Branch** | **Purpose** | **Protection Rule** |
| --- | --- | --- |
| main | Authoritative integration branch for production-bound code. | No direct push; PR required; status checks required; CODEOWNERS approval; signed commits; linear history preferred. |
| develop or integration | Optional integration branch for non-production foundation work. | Protected; PR required; CI required; no force-push. |
| feature/* | Developer feature branches. | Created from main/develop; local checks required before push. |
| fix/* | Defect remediation branches. | Must link defect/ticket, tests, RCA if recurring. |
| chore/* | Repository, tooling, documentation, non-functional changes. | Same PR and evidence rules apply. |
| release/* | Release stabilization if used. | Release owner approval, signed tag, evidence pack, changelog. |
| hotfix/* | Emergency controlled fix. | CAB/security approval, same-day evidence remediation, post-incident review. |

| **Path Pattern** | **Required Owners / Reviewers** |
| --- | --- |
| /services/orchestrator-service/** | AI Governance Lead, Software Development Lead, Security Administrator |
| /services/harness-service/** | Security Administrator, DevSecOps Lead, Solutions Architect |
| /services/workflow-service/** | Software Development Lead, Workflow Owner, QA Lead |
| /libs/aira-security/** | Security Administrator, DevSecOps Lead, Software Development Lead |
| /infra/** | System Administrator, DevSecOps Lead, Security Administrator |
| /contracts/** | Integration Architect, QA Lead, Software Development Lead |
| /ai/prompts/** | AI Governance Lead, Domain Owner, Security Administrator |
| /ai/guardrails/** | AI Governance Lead, Security Administrator, QA Lead |
| /microfunctions/** | Solutions Architect, Software Development Lead, QA Lead |
| /docs/adr/** | Solutions Architect, affected domain owner |

## 8. Initial File Baseline and Templates

A new AIRA repository is not considered bootstrapped until the following baseline files exist and pass local and CI validation.

| **File** | **Required Content** | **Gate** |
| --- | --- | --- |
| README.md | Purpose, repository ownership, setup, build/test commands, evidence paths, support contacts. | Reviewed by repository owner. |
| CONTRIBUTING.md | Branching, PR rules, local checks, AI usage, testing, evidence, security reporting. | Matches this guide and CLAUDE.md. |
| SECURITY.md | Security policy, reporting path, secret handling, supported branches, vulnerability triage. | Security Admin approval. |
| CODEOWNERS | Path owners and mandatory reviewers. | Branch protection uses CODEOWNERS. |
| CLAUDE.md | Root repository rules and AI behavior baseline. | Compiled to .claude-md.lock. |
| .pre-commit-config.yaml | Secret scan, lint, format, policy checks, doc checks, rule checks. | Runs locally and in CI. |
| PR/MR template | AVCI, SOLID, tests, security, AI involvement, reversibility. | Required before merge. |
| CI workflow | Build, unit tests, SAST, SCA, secret scan, policy, SBOM, signature/provenance. | Required status check. |
| .devcontainer/devcontainer.json | Reproducible local development environment. | Image from Golden Source. |

## 9. Devcontainer and Workstation Integration

Developers must not rely on undocumented workstation tools. AIRA devcontainers provide the controlled environment where Java, Node, Gradle, security tools, pre-commit hooks, and repository rules are available consistently.

| **Capability** | **Baseline Requirement** |
| --- | --- |
| Base Image | Approved and signed AIRA devcontainer image from Harbor or approved Golden Source registry. |
| Languages | Java 25 LTS, Node.js 24 LTS, TypeScript tooling, approved Python where needed, versions pinned by Technology Stack. |
| Build Tools | Gradle wrapper, npm/pnpm lock enforcement, contract tooling, schema validators. |
| Security Tools | Gitleaks or equivalent, Semgrep/Sonar scanner, Trivy, OPA/Conftest, dependency scanner. |
| Quality Tools | JUnit, Vitest, Playwright, ArchUnit, mutation testing where applicable, formatters, linters. |
| AI Tooling | AI assistants operate under repository rules; no personal data, secrets, or Restricted content exposed. |
| Network | Access to approved mirrors/registries only where feasible; direct public dependency fetch blocked or logged. |
| Evidence | Local check outputs are reproducible in CI strict mode. |

## 10. CI/CD, Pre-Commit, and Evidence Gates

| **Gate** | **Local Pre-Commit** | **CI Strict Mode** | **Required Evidence** |
| --- | --- | --- | --- |
| Repository Rule Check | Yes | Yes | CLAUDE.md resolved rules and .claude-md.lock validation. |
| Secret Scan | Yes | Yes | Zero unresolved findings; waivers prohibited for real secrets. |
| Format / Lint | Yes | Yes | Tool output and changed-file result. |
| Unit Tests | Recommended by path | Required | JUnit/Vitest/pytest reports linked to PR. |
| Architecture Boundary | Recommended | Required | ArchUnit/import-lint/Semgrep result. |
| SAST / SCA | Optional local | Required | Finding report and remediation status. |
| Policy-as-Code | Recommended | Required | OPA/Conftest tests and bundle version. |
| SBOM / Provenance | No | Required on merge/release | CycloneDX/Syft SBOM, SLSA provenance where applicable. |
| AVCI Evidence Pack | No | Required | PR summary, test reports, scans, reviewers, artifact links. |

| **CI Authority Rule**<br>Local checks are developer convenience and early warning. CI strict mode is authoritative. A skipped or unavailable local hook does not lower the merge gate. |
| --- |

## 11. Dependency, Package, Image, and Artifact Governance

| **Artifact Type** | **Approval Before Use** | **Publication Rule** |
| --- | --- | --- |
| Java Dependencies | Approved Maven mirror, version pin, SCA/license scan, Renovate/Dependabot governance. | Lockfile or dependency lock committed; scan evidence retained. |
| Node Dependencies | Approved npm mirror, lockfile mandatory, no uncontrolled postinstall scripts. | package-lock/pnpm-lock committed; audit evidence retained. |
| Container Images | Base images from approved registry only; signed and scanned. | Immutable tag plus digest; SBOM and scan report retained. |
| GitHub/GitLab Actions | Pinned by commit SHA or approved version; no unreviewed marketplace action. | Action source and hash recorded. |
| Scripts | Owned, reviewed, tested, and stored in repository; no copy-paste internet scripts. | Script evidence and owner maintained. |
| Prompt / Guardrail / Model Alias | AI governance review, classification, evaluation tests, guardrail tests. | Stored in AI governance repo; versioned and linked to evaluation evidence. |
| Release Artifacts | Signed, scanned, traceable to commit, PR, build, and evidence pack. | Published to Golden Source registry; no manual upload bypass. |

## 12. AI-Assisted Development and CLAUDE.md Enforcement

AIRA treats AI-assisted development as governed engineering work. ChatGPT, Codex, Claude Code, Windsurf, or any approved assistant must inherit repository rules and may not create a parallel rulebook.

| **AI Control** | **Repository Enforcement** |
| --- | --- |
| Root CLAUDE.md | Defines global rules for SOLID, Clean Architecture, DDD, tests, security, secrets, data, AI routing, and evidence. |
| Directory CLAUDE.md | Adds stricter rules for services, security, infra, database, AI, contracts, tests, and MicroFunctions. |
| AI Declaration | PR template requires model/tool used, prompt intent, files affected, tests run, and human checker. |
| No Secret / PII Exposure | Pre-commit, CI, test data rules, and human review block secrets or real PII in prompts, code, tests, examples. |
| No Direct Execution | AI cannot approve, merge, deploy, run production tools, access Vault, or invoke databases outside Harness and policy. |
| Architecture Preservation | AI-generated changes must preserve SOLID, Clean Architecture, DDD boundaries, security, observability, reversibility, and AVCI evidence. |
| Conflict Handling | AI outputs that conflict with AIRA standards are treated as draft suggestions and must be rejected or reconciled through ADR/TDL. |

## 13. GitHub / GitLab Configuration Guide

| **Configuration Area** | **GitHub Setting** | **GitLab Equivalent** | **AIRA Requirement** |
| --- | --- | --- | --- |
| Branch Protection | Rulesets / branch protection for main | Protected branch | PR/MR required, no direct push, no force push. |
| Required Reviews | Require CODEOWNERS review | Approval rules / code owners | At least one owner; high-risk paths require specialist approval. |
| Status Checks | Required checks before merge | Pipelines must succeed | CI strict mode gates merge. |
| Signed Commits | Require signed commits where feasible | Push rules / signature checks | Required for protected branches or release commits. |
| Linear History | Require linear history if feasible | Fast-forward merge only | Preferred to improve audit traceability. |
| Secret Scanning | Advanced security / custom action | Secret detection job | Mandatory, blocks merge. |
| Dependency Review | Dependency review / SCA action | Dependency scanning job | Mandatory for code repositories. |
| Environments | Protected environments | Protected environments | Manual approval for release/deploy where applicable. |
| Security Advisories | Private vulnerability reporting | Vulnerability management flow | Security triage owner assigned. |

## 14. Bootstrap Procedure B0-B12

| **Step** | **Action** | **Owner** | **Exit Evidence** |
| --- | --- | --- | --- |
| B0 | Approve repository bootstrap scope, name, owners, classification, and repo strategy. | Solutions Architect | Bootstrap ticket and owner assignment. |
| B1 | Create repository from approved template, not from blank ad-hoc setup. | DevSecOps Lead | Repository creation log and template version. |
| B2 | Add baseline files: README, SECURITY, CONTRIBUTING, CODEOWNERS, CLAUDE.md, PR template, hooks, CI. | Software Development Lead | Initial commit hash and review. |
| B3 | Configure branch protection and required checks. | DevSecOps Lead | Screenshot/export of protection rules. |
| B4 | Configure CODEOWNERS and reviewer approval rules. | Solutions Architect / Leads | CODEOWNERS validation result. |
| B5 | Connect to Golden Source mirrors/registries and block unmanaged dependency sources where feasible. | System Admin / DevOps | Mirror configuration and approved registry URLs. |
| B6 | Add devcontainer baseline and validate local open/build/test cycle. | Software Development Lead | Developer workstation validation evidence. |
| B7 | Run initial CI strict mode with no application code or sample skeleton. | DevSecOps Lead | Passing CI evidence pack. |
| B8 | Add sample module or skeleton service only after CI and branch protections pass. | Development Team | Sample service PR and tests. |
| B9 | Register repository in Obsidian/LLM Wiki and evidence register. | Knowledge Steward | Registry entry and classification. |
| B10 | Assign access using least privilege, SBAC, and named seats only. | Security Administrator | Access approval and user list. |
| B11 | Complete developer onboarding acknowledgement for repository rules. | Team Lead | Signed acknowledgements. |
| B12 | Declare Ready-to-Develop after acceptance gate review. | Solutions Architect | Ready-to-Develop approval record. |

## 15. Ready-to-Develop Acceptance Gates

| **Gate** | **Pass Criteria** |
| --- | --- |
| Repository Identity | Name, purpose, owner, classification, and scope are documented. |
| Golden Source Linkage | Dependency, image, template, prompt, policy, and artifact sources are approved. |
| Branch Protection | Direct push blocked; PR required; status checks and CODEOWNERS active. |
| CODEOWNERS | Path owners reflect architecture, security, database, AI, contract, and infrastructure boundaries. |
| CLAUDE.md | Root rules exist; high-risk directories have stricter rules or planned rule files. |
| Local Hooks | Pre-commit checks installed and documented. |
| CI Strict Mode | Initial pipeline passes and blocks test, policy, secret, and architecture violations. |
| Devcontainer | A developer can clone, open, build, test, and run checks in the approved environment. |
| Evidence Path | CI artifacts and repository evidence have retention location and classification. |
| Access Control | Named users only; least privilege; no shared credentials; offboarding path defined. |
| AI Governance | AI usage rules, PR declaration, and data handling restrictions are active. |
| Approval | Solutions Architect, DevSecOps, Security, and Development Lead approve Ready-to-Develop. |

## 16. Roles, RACI, and Support Model

| **Activity** | **Solutions Architect** | **DevSecOps Lead** | **SW Dev Lead** | **Security Admin** | **SysAdmin** | **QA Lead** | **DBA** | **AI Gov Lead** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Repository strategy and naming | A | R | C | C | C | I | I | C |
| Template creation and maintenance | A/C | R | R | C | C | C | C | C |
| Branch protection and CI checks | C | A/R | C | C | R | C | I | C |
| CODEOWNERS approval model | A | R | R | C | C | C | C | C |
| Golden Source registries/mirrors | C | R | C | C | A/R | I | C | C |
| Devcontainer baseline | C | R | A/R | C | R | C | C | C |
| Security scans and secret controls | C | R | C | A/R | C | C | C | C |
| Architecture fitness checks | A | R | R | C | I | C | C | C |
| AI rules and CLAUDE.md adapters | A | R | C | C | I | C | I | R |
| Ready-to-Develop sign-off | A | R | R | R | C | R | C | R |

## 17. Implementation Roadmap

| **Phase** | **Focus** | **Exit Criteria** |
| --- | --- | --- |
| R0 - Approve Guide | Approve this document and repository bootstrap decision. | Guide approved; repository names and owners confirmed. |
| R1 - Build Template Repository | Create controlled repository template with baseline files, CI, hooks, PR template, and devcontainer. | Template repository passes CI strict mode. |
| R2 - Configure Golden Source | Configure registries, package mirrors, base images, signatures, and evidence path. | Mirror/registry connectivity and scan evidence validated. |
| R3 - Bootstrap Core Repos | Create aira-platform, aira-contracts, aira-infra, aira-ai-governance, and aira-standards. | All core repositories pass Ready-to-Develop gates. |
| R4 - Developer Onboarding | Run clone/devcontainer/local-check/PR exercise for each developer. | Acknowledgement and sample PR evidence complete. |
| R5 - Sprint-0 Start | Begin foundation build only after repository gates pass. | Sprint-0 backlog approved and first controlled PR merged. |

## 18. AVCI Compliance Summary

| **AVCI Property** | **Repository Bootstrap Evidence** |
| --- | --- |
| Attributable | Repository owner, CODEOWNERS, template version, branch rules, CI owner, artifact owner, and approval records are known. |
| Verifiable | Repository passes local hooks, CI strict mode, branch protection, security scan, architecture tests, policy tests, and evidence export. |
| Classifiable | Repository, files, data, prompts, dependencies, logs, evidence, and artifacts carry classification and handling rules. |
| Improvable | Issues, PR feedback, scan results, drift findings, pipeline failures, and developer onboarding results feed controlled improvements. |

## Appendix A. Repository Skeleton

| # Minimum bootstrap command pattern<br>mkdir -p docs/{adr,architecture,evidence} services libs microfunctions contracts ai/{prompts,guardrails,models,evaluations} infra tests .github/workflows .github/ISSUE_TEMPLATE .devcontainer<br>touch README.md SECURITY.md CONTRIBUTING.md CODEOWNERS CLAUDE.md .claude-md.lock .editorconfig .gitignore .pre-commit-config.yaml .github/pull_request_template.md .github/workflows/aira-ci.yml .devcontainer/devcontainer.json |
| --- |

## Appendix B. CODEOWNERS Template

| # AIRA CODEOWNERS baseline<br>* @aira/software-development-leads<br>/CLAUDE.md @aira/solutions-architecture @aira/devsecops @aira/ai-governance<br>/.github/** @aira/devsecops @aira/security<br>/infra/** @aira/devsecops @aira/sysadmin @aira/security<br>/services/harness-service/** @aira/security @aira/devsecops @aira/solutions-architecture<br>/services/orchestrator-service/** @aira/ai-governance @aira/software-development-leads @aira/security<br>/libs/aira-security/** @aira/security @aira/software-development-leads<br>/contracts/** @aira/integration-architecture @aira/qa<br>/ai/prompts/** @aira/ai-governance @aira/security<br>/ai/guardrails/** @aira/ai-governance @aira/security @aira/qa<br>/microfunctions/** @aira/solutions-architecture @aira/software-development-leads @aira/qa |
| --- |

## Appendix C. Pull Request Template

| ## AIRA PR / MR Compliance Summary<br><br>### Intent and Scope<br>- Ticket / ADR / TDL:<br>- Change type: feature / fix / refactor / docs / infra / AI artifact / policy<br>- Classification: Public / Internal / Confidential / Restricted<br><br>### AVCI<br>- Attributable: owner, source, approver<br>- Verifiable: tests, scans, contracts, evidence<br>- Classifiable: data and model-routing impact<br>- Improvable: feedback path and metrics<br><br>### Enterprise Design Principles<br>- SOLID impact: preserved / improved / exception<br>- Clean Architecture / DDD boundary impact:<br>- Ports/adapters impact:<br>- Idempotency / determinism / reversibility:<br><br>### AI Usage<br>- AI tool/model used, if any:<br>- Prompt intent:<br>- Files affected by AI assistance:<br>- Human checker:<br><br>### Evidence<br>- Unit/component tests:<br>- Security scans:<br>- Policy/OPA tests:<br>- Architecture fitness checks:<br>- Rollback / forward-fix plan: |
| --- |

## Appendix D. Root CLAUDE.md Baseline

| # AIRA Repository Rules<br><br>This repository follows AIRA AVCI, 01A Enterprise Design Principles, Engineering Blueprint, Developer Guide, Unit Testing, DevSecOps, Security, and CLAUDE.md Reference standards.<br><br>Non-negotiables:<br>1. Preserve SOLID, Clean Architecture, DDD boundaries, and ports/adapters.<br>2. Do not introduce direct model provider calls; use LiteLLM-governed routes only.<br>3. Do not expose secrets, real PII, production data, or Restricted content.<br>4. Do not bypass tests, branch protection, CODEOWNERS, OPA, guardrails, or Harness.<br>5. No business logic in controllers, infrastructure adapters, SQL scripts, prompts, or UI components.<br>6. All changes require AVCI evidence, tests, classification, and human review.<br>7. AI may draft; humans remain accountable.<br>8. If unsure, fail closed and ask for architecture/security review. |
| --- |

## Appendix E. devcontainer.json Baseline

| {<br> "name": "aira-devcontainer",<br> "image": "harbor.local/aira/devcontainers/java25-node24:approved",<br> "features": {},<br> "customizations": {<br> "vscode": {<br> "extensions": [<br> "vscjava.vscode-java-pack",<br> "ms-azuretools.vscode-docker",<br> "redhat.vscode-yaml",<br> "esbenp.prettier-vscode",<br> "sonarsource.sonarlint-vscode"<br> ]<br> }<br> },<br> "postCreateCommand": "pre-commit install && ./gradlew --version",<br> "remoteUser": "vscode"<br>} |
| --- |

## Appendix F. Pre-Commit Configuration

| repos:<br> - repo: https://github.com/gitleaks/gitleaks<br> rev: v8.24.0<br> hooks:<br> - id: gitleaks<br> - repo: https://github.com/pre-commit/pre-commit-hooks<br> rev: v5.0.0<br> hooks:<br> - id: trailing-whitespace<br> - id: end-of-file-fixer<br> - id: check-yaml<br> - id: check-json<br> - repo: local<br> hooks:<br> - id: aira-claude-md-check<br> name: AIRA CLAUDE.md rules check<br> entry: scripts/check-claude-rules.sh<br> language: system<br> - id: aira-policy-check<br> name: AIRA OPA policy check<br> entry: conftest test .<br> language: system |
| --- |

## Appendix G. GitHub Actions Baseline

| name: AIRA CI<br>on:<br> pull_request:<br> push:<br> branches: [ main ]<br>permissions:<br> contents: read<br> security-events: write<br> id-token: write<br>jobs:<br> validate:<br> runs-on: ubuntu-latest<br> steps:<br> - uses: actions/checkout@<pinned-sha><br> - name: Validate repository rules<br> run: scripts/check-claude-rules.sh<br> - name: Secret scan<br> run: gitleaks detect --source . --redact<br> - name: Build and test<br> run: ./gradlew clean test<br> - name: Policy checks<br> run: conftest test infra policies<br> - name: Architecture fitness checks<br> run: ./gradlew archTest<br> - name: Generate SBOM<br> run: syft dir:. -o cyclonedx-json > evidence/sbom.json |
| --- |

## Appendix H. Golden Source Registry YAML

| repository: aira-platform<br>classification: CONFIDENTIAL<br>owner: Solutions Architecture Office<br>golden_source:<br> package_mirrors:<br> maven: https://repo.local/maven<br> npm: https://repo.local/npm<br> container_registry: harbor.local/aira<br> evidence_store: OpenKM:/AIRA/EngineeringEvidence/aira-platform<br> allowed_base_images:<br> - harbor.local/aira/base/java25-node24@sha256:<digest><br>required_controls:<br> branch_protection: true<br> codeowners: true<br> ci_required: true<br> signed_artifacts: true<br> secret_scan: true<br> sbom: true<br> claude_md_lock: true |
| --- |

## Appendix I. Bootstrap Checklist

Repository created from approved template.

Repository owner, classification, purpose, and support path documented.

Root CLAUDE.md and .claude-md.lock present.

CODEOWNERS configured and validated.

Branch protection configured for main and release branches.

PR/MR template requires AVCI, SOLID, security, tests, AI usage, and reversibility evidence.

Pre-commit hooks installed and documented.

CI strict mode passes and is required for merge.

Devcontainer opens successfully and uses approved image.

Golden Source mirrors and registries configured.

Secrets scanning produces zero unresolved findings.

Security, policy, and architecture fitness checks are active.

Evidence path is registered in OpenKM or approved evidence store.

Developer access is named, least-privilege, and reviewed.

Ready-to-Develop sign-off completed.
