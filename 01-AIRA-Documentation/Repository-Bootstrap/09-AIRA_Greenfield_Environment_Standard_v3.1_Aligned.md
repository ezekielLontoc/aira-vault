---
document_id: "AIRA-DOC-009"
title: "AIRA Greenfield Environment Standard"
version: "v3.1"
status: "aligned"
source_file: "09-AIRA_Greenfield_Environment_Standard_v3.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Repository-Bootstrap"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - greenfield
  - repository-bootstrap
---

# AIRA Greenfield Environment Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Greenfield Environment Standard**

_Pristine Baselines | Reproducible Workspaces | Controlled Onboarding | Drift-Free AI-Native DevSecOps_

**v3.1 - Java 25 Environment Baseline and Pack 03 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-009** |
| **Document Title** | **AIRA Greenfield Environment Standard** |
| **Document Version** | **v3.1 - Java 25 Environment Baseline and Pack 03 v1.2 Alignment Update** |
| **Supersedes** | **09-AIRA_Greenfield_Environment_Standard_v3.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Environment baseline** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines clean-slate environment setup, workstation/devcontainer baselines, onboarding gates, source control, and drift management.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active input baseline** | **AIRA Source Packs v3.1 / Aligned Pack Set v1.1 remains the input baseline; Pack 03 v1.2 is the new individual output set for Obsidian upload.** |
| **Backend runtime baseline** | **Java 25 LTS is the required AIRA backend runtime. Spring Boot 4.x and Spring Framework 7.x remain the target backend framework generation where compatible.** |
| **Java 21 handling** | **Java 21 is not the default. It may appear only as a documented compatibility fallback with Architecture Board/CAB waiver, risk acceptance, and exit plan.** |
| **Pack 01 governance references** | **References are aligned to AVCI v3.1, Engineering Blueprint v5.1, DevSecOps v3.1, 01A v1.1, and ADR-AIRA-2026-001 v1.1.** |
| **Pack 02 execution references** | **References are aligned to Developer Guide v4.1, CLAUDE.md v3.1, Skills Framework v3.1, Unit Testing v3.1, GitNexus v1.2, and Developer Onboarding v1.1.** |
| **Pack 03 numbering cleanup** | **Duplicate-number documents are promoted to suffix hierarchy: 19A/19B, 21A/21B, 22A, 23A, 25A, and 26A/26B.** |
| **Technology baseline** | **This Pack 03 v1.2 set produces Technology Stack v9.1 as an aligned successor to v9.0 while retaining v9.0 lineage and Golden Source patch-pinning discipline.** |
| **AI execution boundary** | **All model access routes through LiteLLM. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Tool actions go through Harness/SBAC/OPA.** |
| **GitNexus** | **GitNexus is read-only, derivative, commit-bound code intelligence. It cannot commit, approve, merge, deploy, mutate production, or replace tests/scans/human review.** |
| **Dograh** | **Dograh is governed voice-agent orchestration only. It is not a hardcoded STT/TTS/LLM provider and remains subject to classification, consent, guardrail, and audit controls.** |
| **Obsidian / LLM Wiki** | **Obsidian and LLM Wiki are curated/derivative knowledge layers. Tier 0 sources remain approved DOCX/PDF, Git, OpenKM, databases, workflow histories, security/evidence stores, and audit records.** |

### Material Changes in This Version

Pinned backend environment images, devcontainers, CI runners, Gradle toolchains, and local verification commands to Java 25 LTS.

Clarified Java 21 as waiver-only fallback with explicit exit plan and evidence, not a developer default.

Aligned team workspace controls with ChatGPT Business, Obsidian, LLM Wiki, GitHub/GitNexus, and Golden Source architecture.

Reinforced greenfield rule: rebuild forward from clean baseline rather than patching unmanaged local environments.

Added Dograh/GitNexus evaluation handling to controlled sandbox and conditional-tool governance.

### Mandatory Java 25 Backend Control

| **Control** | **Pack 03 v1.2 Requirement** |
| --- | --- |
| **Default backend runtime** | **Java 25 LTS. All backend service templates, code-generation prompts, devcontainers, CI runners, unit/contract/architecture tests, GitNexus indexes, evidence records, and operational inventory must assume Java 25 unless explicitly waived.** |
| **Fallback runtime** | **Java 21 is waiver-only for compatibility blockers. The waiver must include owner, reason, affected service, risk, compensating controls, target migration path, and exit date.** |
| **Golden Source** | **Exact Java distribution, image digest, Gradle/Maven version, Spring Boot/Spring Framework compatibility, and patch versions are pinned in Golden Source repositories and validated through CI evidence.** |
| **Review gate** | **PR/MR reviewers must reject backend code, templates, devcontainers, prompts, or CI jobs that quietly downgrade the runtime baseline or introduce untracked dual-runtime behavior.** |
| **Evidence** | **Evidence packs must expose java.version, toolchain version, build image digest, SBOM, SAST/SCA results, architecture fitness results, and runtime health proof.** |

### AVCI Compliance Summary for This Update

| **AVCI Property** | **Evidence in This Pack 03 v1.2 Update** |
| --- | --- |
| **Attributable** | **Each file has a document ID, owner, supersedes value, source pack context, numbering treatment, and material-change list.** |
| **Verifiable** | **The Java 25 baseline is explicitly recorded, cross-pack references are updated, duplicate numbering is resolved by suffix hierarchy, and original source content is preserved after this alignment notice.** |
| **Classifiable** | **All generated files are marked INTERNAL CONFIDENTIAL and inherit AIRA classification-handling, routing, logging, index, and retention rules.** |
| **Improvable** | **Open provisional-document treatment remains visible for master-register review; numbering cleanup is reversible and auditable through suffix hierarchy.** |

## Updated Baseline Content

**AIRA**

AI-Native DevSecOps Environment

Greenfield Environment Standard

_Clean-Slate · Evergreen · Minimalist-by-Design · Central-First · SOLID/AVCI-Governed_

**Version 3.1 · April 2026**

| **Replacement Scope**<br>This document replaces 09-AIRA_Greenfield_Environment_Standard_v3.0 and incorporates ADR-AIRA-2026-001 and 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 as mandatory environment controls. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA AI-Native DevSecOps Greenfield Environment Standard |
| Document ID | AIRA-DOC-009 |
| Version | v3.1 - Enterprise Design Principles and SOLID Enforcement Revision |
| Supersedes | 09-AIRA_Greenfield_Environment_Standard_v3.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / AI DevSecOps Lead |
| Co-Owners | System Administrator · Security Administrator · DevSecOps · QA Engineering · Enterprise Architecture |
| Audience | CTO, Enterprise Architects, Software Development Leads, DevSecOps, System / Security / Database Administrators, QA, Developers, Procurement, Compliance, Internal Audit |
| Primary Decision Inputs | ADR-AIRA-2026-001; AIRA Cross-Document Revision Control Matrix v1.1; 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Companion Documents | 01 AVCI v3.1; 01A Enterprise Design Principles v1.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.1; 05 Information Nervous System v4.1; 06 CLAUDE.md Reference v3.1; 07 Skills Framework v3.1; 08 Unit Testing v3.1; 10 MicroFunction Framework v3.1; 11 DevSecOps v3.1; 12 Rollout Starter Pack v3.1 |
| Compliance Scope | AVCI; ISO/IEC 27001:2022; CIS Controls v8.1; NIST SSDF; NIST AI RMF; NIST AI 600-1; SOC 2; SLSA Build Level 3 target; BSP IT Risk expectations |
| Purpose | Establish the mandatory clean-slate, evergreen, centrally governed development environment baseline for all AIRA servers, workstations, devcontainers, Golden Source repositories, AI tools, security controls, and evidence paths. |

## 1. Executive Summary

AIRA is a mission-critical AI-native enterprise platform. Its engineering outcomes depend on the trustworthiness of the environments used to design, build, test, secure, and improve it. Version 3.1 upgrades the Greenfield Environment Standard from a clean-slate provisioning standard into an enforceable environment governance baseline aligned with the Enterprise Design Principles and SOLID Enforcement Layer.

The environment is not merely a workstation image or server setup. It is the first control boundary for reproducibility, security, evidence, architecture discipline, tool governance, dependency hygiene, AI safety, and developer accountability. Every environment must be pristine at creation, centrally sourced, version-pinned, continuously verified, easily rebuildable, and governed through AVCI evidence.

| **Mandatory Environment Rule**<br>No AIRA server, workstation, devcontainer, extension, plug-in, AI tool, library, runtime, model, prompt, policy, or configuration may enter the development estate unless it is attributable, verifiable, classifiable, improvable, centrally sourced, least-privilege, observable, reproducible, and proven not to weaken SOLID compliance, architecture boundaries, security posture, testability, reversibility, or AVCI evidence. |
| --- |

| **v3.1 Outcome** | **Operational Meaning** |
| --- | --- |
| Pristine start | Every machine starts from a known-good baseline with no inherited tools, credentials, shadow AI accounts, or unmanaged project state. |
| Evergreen rebuild | Environments are rebuilt forward from Golden Source instead of patched indefinitely. Rebuild is the normal path, not a disaster-only path. |
| SOLID-aware tooling | Developer tools, IDE rules, devcontainers, hooks, and CI checks enforce architecture boundaries before code reaches review. |
| AI-governed workspace | ChatGPT, Codex, Claude Code, and other approved assistants operate under named seats, classification rules, CLAUDE.md, Harness, SBAC, OPA, and evidence gates. |
| Supply-chain control | Dependencies, binaries, images, extensions, prompts, guardrails, and models enter only through approved Golden Source repositories. |
| Drift as a defect | Configuration drift is treated as a security and compliance defect, with detection, quarantine, rebuild, and evidence requirements. |

## 2. Purpose, Scope, and Authority

This standard prescribes the mandatory approach for provisioning, operating, refreshing, reclaiming, and decommissioning all AIRA development environments. It applies before coding starts and remains active throughout the platform lifecycle.

| **Area** | **In Scope** | **Out of Scope** |
| --- | --- | --- |
| Central server estate | Bootstrap host, Git/SCM, CI runners, artifact registries, Golden Source repositories, AI gateway configuration, policy bundles, observability, and baseline images. | Production runtime operations except where a non-production environment must mirror production controls. |
| Developer workstations | Laptops, desktops, VDI, remote dev containers, IDEs, Git clients, AI assistants, local test tools, security tools, and environment inventory. | General office productivity devices not used for AIRA engineering. |
| AI tooling | ChatGPT Pro / Business, Codex, Claude Code, approved IDE assistants, prompt files, model aliases, guardrails, adapters, and usage evidence. | Personal AI accounts, unsupported plug-ins, and unmanaged model-provider accounts. |
| Security and evidence | Hardening, MFA, SBAC, secrets controls, dependency source control, drift monitoring, audit evidence, and offboarding records. | Physical facility security unless it affects environment evidence or data handling. |

| **Authority Level** | **Document / Control** | **Environment Interpretation** |
| --- | --- | --- |
| L0 | AIRA Consolidated Architecture / Architecture Board decisions | Highest authority for platform topology and environment boundary decisions. |
| L1 | 02 Engineering Blueprint v5.1 and 11 DevSecOps Standard v3.1 | Define architecture and day-to-day operating discipline that environments must enable. |
| L2 | 01 AVCI v3.1 and 01A Enterprise Design Principles v1.1 | Define universal environment quality gates and the SOLID enforcement layer. |
| L3 | This Greenfield Environment Standard v3.1 | Defines clean-slate provisioning, baseline composition, subscriptions, refresh, drift control, and offboarding. |
| L4 | Repository CLAUDE.md, devcontainer files, golden images, IaC, CI hooks | Executable environment controls that may tighten but not weaken this standard. |

## 3. Guiding Principles

| **ID** | **Principle** | **Environment Requirement** |
| --- | --- | --- |
| GF-01 | Virgin / Pristine Start | Start from known hardened baseline only. No inherited tools, cached credentials, personal scripts, or undocumented configuration. |
| GF-02 | Evergreen Continuity | Refresh by forward rebuild on cadence, material CVE, stack update, AI tool change, or drift event. |
| GF-03 | Minimalist by Design | Install only approved and necessary tools. Inclusion requires owner, purpose, version, evidence, and removal path. |
| GF-04 | Centrally Sourced | All packages, images, extensions, models, prompts, binaries, templates, and policies come from Golden Source. |
| GF-05 | AVCI-Complete | Every environment artifact has owner, source, version, classification, verification evidence, and improvement path. |
| GF-06 | Least Privilege / SBAC | Access is role-, skill-, time-, and task-bounded. AI-assisted actions require named identity and SBAC evidence. |
| GF-07 | Reproducible and Reclaimable | A workstation or server can be destroyed and rebuilt to an equivalent approved state from source-controlled baselines. |
| GF-08 | Fail-Safe, Not Fail-Open | Unavailable policy, identity, guardrail, audit, or secrets services block protected actions instead of allowing bypass. |
| GF-09 | Observable by Design | Baseline health, drift, tool versions, policy status, AI usage, and security posture emit evidence by default. |
| GF-10 | One Contribution Path | Engineering artifacts enter through protected Git workflow, MR/PR review, CI gates, signing, registry, and GitOps path only. |

| **Relationship to the 20 Enterprise Design Principles**<br>The Greenfield Environment does not implement business logic, but it must enable and enforce the 20 principles. Workstations and devcontainers must contain the tools, hooks, templates, policies, and local checks needed to prevent SOLID, Clean Architecture, DDD, security, testability, observability, and reversibility violations before code reaches CI. |
| --- |

## 4. Environment Architecture

The AIRA development estate is organized as a centrally governed environment fabric. Workstations are not independent engineering islands. They are controlled endpoints connected to a Golden Source, protected contribution path, AI governance model, and evidence plane.

| **Plane** | **Components** | **Primary Responsibility** | **Control Requirement** |
| --- | --- | --- | --- |
| Golden Source Plane | Approved SCM, package registry, container registry, template registry, model/prompt/guardrail registry, baseline image repository | Provide authoritative source for all software, configuration, prompts, models, extensions, and environment definitions. | Signed, versioned, scanned, mirrored where appropriate, and access-controlled. |
| Central Server Plane | Git platform, CI runners, artifact registry, policy engine, observability, AI gateway, build cache, devcontainer base images | Host shared engineering capabilities and enforce the common contribution path. | No unmanaged binaries or click-ops changes; changes via IaC/MR only. |
| Workstation Plane | Developer OS, VS Code, devcontainer client, Git client, AI tools, local checks, browser, terminal, database clients | Enable day-to-day development while remaining reproducible, least-privilege, and evidence-producing. | Provisioned by baseline; drift monitored; no personal shadow tooling. |
| Devcontainer Plane | OCI-based devcontainers for Java, TypeScript, Python, DB migration, docs, and AI artifacts | Provide project-local reproducible toolchains independent of workstation drift. | Pinned images, SBOM, signatures, pre-commit hooks, test tools, and architecture checks. |
| AI Governance Plane | ChatGPT Business, ChatGPT Pro, Codex, Claude Code, LiteLLM, NeMo Guardrails, Harness, OPA, SBAC | Govern AI-assisted design, coding, review, and controlled tool execution. | Named seats, classification-aware usage, no direct production access, audit evidence required. |
| Evidence Plane | OpenKM, audit store, CI evidence, inventory, security scan results, drift reports, onboarding records | Preserve proof of environment compliance, change history, and readiness. | Immutable or controlled-retention evidence with traceability to owner and approval. |

## 5. Team Composition and AI Subscription Governance

AI subscriptions are environment controls. They determine where project data, prompts, code, and architecture content may be handled. Personal accounts are not allowed for AIRA engineering artifacts.

| **Role / Group** | **Approved Seat / Tooling** | **Approved Use** | **Restrictions** |
| --- | --- | --- | --- |
| Solutions Architect / IT Head | ChatGPT Pro with advanced model capability; approved Codex usage; architecture workbench | Cross-document synthesis, architecture review, standard drafting, senior review, controlled prototypes, decision analysis. | No direct production access; no Restricted data in cloud prompts; outputs enter through MR/AVCI gates. |
| Software Developers | ChatGPT Business named seats, Codex, Claude Code or approved IDE assistant, VS Code | Coding assistance, test drafting, PR explanations, documentation, refactoring proposals, local non-production checks. | No shared accounts; no direct commit to protected branches; no secrets, real PII, production data, or unmanaged plug-ins. |
| DevSecOps / System Admin | ChatGPT Business, approved CLI helpers, IaC validation tools | IaC review, pipeline explanation, runbook drafting, observability and environment troubleshooting. | No autonomous infra changes; all changes through Git/MR/CI/GitOps. |
| Security Administrator | ChatGPT Business, policy-as-code tools, secret scanning, SAST/SCA tools | Policy drafting, threat-model analysis, guardrail tests, security triage, evidence review. | Security findings must be verified by tools or human review; sensitive incident data redacted. |
| QA / SDET | ChatGPT Business, test automation tools, Playwright, JUnit, mutation testing, evidence tools | Test design, deterministic fixture generation, coverage analysis, AI evaluation assistance. | Synthetic data only; no production data in tests; failed AI-generated tests require human review. |

| **No Shadow-AI Rule**<br>AIRA code, documents, prompts, guardrails, architecture diagrams, database designs, security findings, and test evidence must not be uploaded into personal AI accounts, consumer workspaces, unapproved browser extensions, or unmanaged model-provider consoles. |
| --- |

## 6. Bootstrap and Provisioning Lifecycle

| **Stage** | **Name** | **Required Activities** | **Exit Evidence** |
| --- | --- | --- | --- |
| B0 | Governance Approval | Approve this standard, 01A alignment, subscription model, Golden Source strategy, and baseline owners. | CAB/ARB approval, owner assignment, evidence path. |
| B1 | Golden Source Preparation | Create approved mirrors/registries for packages, images, IDE extensions, devcontainer bases, templates, prompts, and guardrails. | Registry inventory, signatures, SBOMs, source approvals. |
| B2 | Central Server Bootstrap | Provision Git, CI, registry, policy tools, observability, AI gateway config, and audit/evidence stores from IaC. | IaC run logs, baseline hash, hardening evidence, access review. |
| B3 | Security Foundation | Enable SSO/MFA, Vault/secrets, SBAC roles, OPA bundles, endpoint protection, logging, drift agents, and break-glass records. | Security baseline report, policy test results, role map. |
| B4 | Devcontainer and Toolchain Build | Build Java/TypeScript/Python/docs/AI devcontainers with pinned versions, hooks, architecture checks, and test tools. | Signed images, SBOM, scan results, version manifest. |
| B5 | Workstation Provisioning | Image or configure named workstations from baseline; install approved tooling only; enroll in inventory and monitoring. | Workstation attestation, owner, device posture, installed tools list. |
| B6 | Developer Onboarding | Assign seats, run acknowledgement, configure Git/IDE, verify hooks, execute smoke tests, and validate policy access. | Signed onboarding, local check output, first successful devcontainer run. |
| B7 | Ready-to-Code Gate | Confirm environment, repo, CI, testing, security, AI, and evidence controls operate end to end. | Ready-to-code certificate, baseline snapshot, exceptions log. |

## 7. Workstation Baseline

| **Category** | **Mandatory Baseline** | **Prohibited / Controlled Items** |
| --- | --- | --- |
| Operating System | Hardened Windows/Linux baseline or approved VDI; disk encryption; endpoint protection; EDR; patch policy; local firewall. | Unmanaged OS images, unsupported versions, disabled endpoint controls, local admin by default. |
| Identity and Access | Named user, SSO/MFA, device enrollment, role/SBAC mapping, separate admin accounts where required. | Shared credentials, stored passwords, local secrets, unmanaged SSH keys. |
| IDE and Developer Tools | VS Code, approved extensions, Git client, devcontainer extension, SonarLint/Semgrep where approved, language clients. | Unapproved plug-ins, direct public registry installs, extensions with broad data exfiltration risk. |
| Local Runtime | Devcontainer client, container tools as approved, no unmanaged local database as source of truth, no direct production endpoints. | Long-lived local snowflake runtimes, direct prod credentials, direct model SDK usage. |
| AI Tools | Approved ChatGPT/Codex/Claude Code configuration, CLAUDE.md rules, adapter rules, data handling acknowledgement. | Personal AI accounts, browser plug-ins that ingest code, uncontrolled prompt stores. |
| Evidence Tools | Pre-commit hooks, local architecture checks, test runners, secret scanning, dependency scan, evidence capture. | Bypassing hooks, disabling telemetry, untracked local scripts for production-impacting work. |

## 8. Devcontainer and Local Reproducibility Standard

The devcontainer is the preferred reproducibility boundary for development. Workstations may vary by hardware, but project toolchains must be supplied through versioned containers wherever feasible.

| **Devcontainer Type** | **Required Contents** | **Mandatory Checks** |
| --- | --- | --- |
| Java / Spring | Java 25 LTS baseline, Gradle, Spring tools, JUnit, ArchUnit, Testcontainers where approved, OpenRewrite, Semgrep/SonarLint. | Compile, unit tests, ArchUnit boundary checks, dependency locking, secret scan. |
| Frontend | Node.js 24 LTS, pnpm/npm as approved, TypeScript, React/Next.js tooling, ESLint, Vitest, Playwright. | Type check, lint, unit tests, accessibility checks, generated API mock compatibility. |
| Database / Migration | Flyway, psql client, migration linter, schema diff tools, test data generator, RLS test harness. | Migration dry run, rollback/forward-fix plan, idempotency and deterministic seed checks. |
| AI Artifacts | Prompt lint, guardrail tests, golden dataset runner, retrieval eval tools, classification validator. | No secrets/PII, model route check, guardrail coverage, evidence references. |
| Documentation | Markdown/docx helpers, Mermaid validator, link checker, metadata/front-matter validator. | AVCI metadata check, link integrity, version and classification validation. |

## 9. Golden Source and Supply-Chain Controls

| **Artifact Type** | **Golden Source Requirement** | **Verification Evidence** |
| --- | --- | --- |
| Packages and libraries | Approved mirrored registry or locked source with checksum and owner. | Dependency lock, SCA scan, license review, vulnerability status. |
| Container images | Built from approved Dockerfiles or base images, signed, scanned, and stored in approved registry. | SBOM, image signature, Trivy/Grype scan, provenance. |
| IDE extensions | Approved extension list with version pin or trust policy. | Extension inventory, source review, data access review. |
| Prompts and guardrails | Stored in Git with owner, version, classification, evaluation evidence, and CLAUDE.md controls. | Prompt/guardrail tests, golden dataset results, approval record. |
| AI model aliases | Defined in model registry and routed through LiteLLM or approved private route. | Model card, route policy, classification eligibility, usage budget. |
| Infrastructure modules | Terraform/Helm/Kustomize modules from approved repositories only. | Policy-as-code results, signed release, change record. |

## 10. Security, Identity, Secrets, and Classification

| **Control** | **Environment Rule** | **Fail-Safe Behaviour** |
| --- | --- | --- |
| Identity | All users and service accounts are named, MFA-protected, role-scoped, and reviewed. | Unknown or stale identity blocks access. |
| Secrets | No secrets in workstation files, Git, prompts, test fixtures, screenshots, logs, or documentation. Vault or approved secrets manager required. | Missing secrets service blocks protected operations. |
| SBAC | Developer and AI actions require skill eligibility appropriate to risk and classification. | Insufficient skill blocks action and creates escalation evidence. |
| Classification | Public/Internal/Confidential/Restricted labels govern storage, prompt eligibility, logging, cache, and model route. | Unclassified content cannot be used in AI prompts or published artifacts. |
| Separation of Duties | Author, reviewer, approver, security checker, and deployer roles are separated according to risk. | Conflict of interest blocks merge/promotion until alternate approver assigned. |
| Break-glass | Emergency access is named, time-boxed, approved, logged, and reconciled. | No silent escalation; expired access is revoked automatically. |

## 11. Drift Detection, Refresh, and Rebuild

Drift is a security and compliance issue. AIRA prefers controlled rebuild over uncontrolled patching. The baseline is the product; the workstation is a replaceable projection of the baseline.

| **Drift Type** | **Detection Method** | **Required Response** | **Evidence** |
| --- | --- | --- | --- |
| Tool version drift | Inventory agent, local baseline check, CI mismatch report. | Update from Golden Source or rebuild devcontainer/workstation. | Drift ticket, before/after inventory. |
| Policy / hook drift | Pre-commit hash, .claude-md.lock check, CI strict mode. | Restore approved hook/ruleset; block MR if violated. | Hook validation output. |
| Security posture drift | Endpoint/security tooling, CIS checks, MFA/SSO review. | Quarantine device or remove access until compliant. | Security remediation evidence. |
| Dependency drift | Dependency lock mismatch, SCA findings, registry comparison. | Regenerate lock through approved update workflow. | SCA report, MR approval. |
| AI tool drift | Seat inventory, extension inventory, model route registry, usage evidence. | Disable unapproved tool or route; retrain user; record waiver if needed. | AI usage review and corrective action. |
| Configuration drift | IaC/GitOps diff, environment attestation, config hash. | Reconcile from Git or rebuild. Manual fix only through approved emergency process. | Config diff and reconciliation record. |

## 12. Enterprise Design Principles Enforcement in Environments

| **Principle Cluster** | **Environment Enforcement** |
| --- | --- |
| SOLID, Clean Architecture, DDD, Ports-and-Adapters | Devcontainers include architecture test tooling; CLAUDE.md rules and CI fail boundary violations; package templates enforce domain/application/adapter separation. |
| DRY, KISS, YAGNI | Template registry and starter projects prevent duplicated plumbing; review prompts reject speculative frameworks and unnecessary abstractions. |
| Idempotency, Determinism, Reproducibility | Local test harness controls time/random/network; build scripts use pinned versions and deterministic commands; environments can be rebuilt from source. |
| Fail-Safe and Human-in-the-Loop | Unavailable policy/guardrail/identity/audit blocks protected actions; Flowable approvals required for high-risk environment changes. |
| Least Privilege, SBAC, Separation of Duties | Seat, repo, registry, CI, secrets, and AI actions are mapped to role and skill; reviewer and deployer duties are separated. |
| Observability and Policy as Code | Environment health, drift, tool usage, AI usage, security posture, and CI checks emit telemetry and policy evidence. |
| Testability and Secure by Design | Testing, SAST, SCA, secret scanning, contract checks, and guardrail tests are available locally and enforced in CI. |
| Resilience, Fitness Functions, Progressive Autonomy | Local and CI fitness checks validate boundaries; AI autonomy remains proposal/draft-only unless Harness/SBAC/OPA and approval gates pass. |
| Reversibility / Rollbackability and AVCI | Every baseline change has rollback/rebuild path, owner, evidence, classification, and improvement route. |

## 13. Auto-Heal, Auto-Learn, and Auto-Improve Environment Rules

| **Capability** | **Allowed Environment Use** | **Mandatory Guardrails** |
| --- | --- | --- |
| Auto-Heal | Detect failed local/CI checks, broken devcontainer builds, drift, dependency errors, policy mismatches, and propose remediation PRs. | No direct workstation mutation outside approved repair script; no production access; evidence and human approval required. |
| Auto-Learn | Convert approved environment issues, onboarding friction, recurring setup failures, and incident lessons into knowledge updates, checklist improvements, and test cases. | Human review before promotion to Obsidian/LLM Wiki; classification and source evidence required. |
| Auto-Improve | Recommend baseline hardening, faster rebuilds, better templates, improved devcontainers, stronger hooks, and updated Golden Source controls. | Must pass architecture, security, test, rollback, and AVCI evidence review before adoption. |

| **AI Environment Constraint**<br>Auto-Heal, Auto-Learn, and Auto-Improve must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. Environment automation must never become a hidden path for bypassing Git, CI, policy, guardrails, SBAC, or human approval. |
| --- |

## 14. Ready-to-Code Environment Gate

| **Gate** | **Minimum Evidence** | **Owner** | **Status** |
| --- | --- | --- | --- |
| E1 Baseline Approved | This standard, Golden Source inventory, baseline image, devcontainer definitions, and subscription model approved. | Solutions Architect / DevSecOps | Required |
| E2 Workstation Attested | Device owner, OS baseline, endpoint controls, installed tools, AI seat, and access rights verified. | System Administrator | Required |
| E3 Golden Source Working | Package, image, extension, prompt, guardrail, model alias, and template sources available and access-controlled. | DevSecOps | Required |
| E4 Local Hooks Active | CLAUDE.md rules, pre-commit, secret scan, lint, unit test, and architecture checks run locally. | Developer / QA | Required |
| E5 CI Strict Mode Passing | Same checks pass in CI with evidence retention and no bypass flags. | DevSecOps / QA | Required |
| E6 AI Governance Verified | Named seat, data handling acknowledgement, approved AI tool configuration, model routing, and no shadow-AI use verified. | AI DevSecOps Lead | Required |
| E7 Rebuild Tested | At least one workstation/devcontainer rebuild completed from Golden Source and produces equivalent results. | System Administrator | Required |
| E8 AVCI Evidence Complete | All environment artifacts have owner, version, source, classification, verification, and improvement path. | Solutions Architect | Required |

## 15. RACI Matrix

| **Activity** | **Solutions Architect / IT Head** | **DevSecOps** | **System Admin** | **Security Admin** | **Developers / QA** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- |
| Approve environment standard | A | C | C | C | I | C |
| Build Golden Source repositories | C | A/R | R | C | I | I |
| Provision central server estate | C | A/R | R | C | I | I |
| Provision developer workstations | I | C | A/R | C | R for acceptance | I |
| Approve AI subscriptions and usage rules | A | R | I | C | I | C |
| Maintain devcontainers and hooks | C | A/R | C | C | R | I |
| Run drift detection and remediation | I | R | A/R | C | I | C |
| Review evidence and exceptions | A/R | C | C | C | I | C |
| Offboard / reclaim environment | I | C | A/R | C | I | C |

## 16. Waivers, Exceptions, and Non-Conformance

Waivers are temporary risk acceptances, not alternate standards. A waiver must identify the affected environment artifact, reason, risk, owner, expiry, compensating control, evidence, and remediation plan. Waivers must not permit secret exposure, unclassified Restricted data, direct production mutation, unmanaged AI accounts, guardrail bypass, policy bypass, or untracked tool execution.

| **Severity** | **Example** | **Required Action** |
| --- | --- | --- |
| Critical | Unapproved AI account used for AIRA code/data; secret found in workstation file; direct production credential present. | Immediate containment, access revocation, incident record, root-cause review, and rebuild. |
| High | Unapproved extension, disabled hook, drifted devcontainer, failed security baseline. | Block merge, remediate or rebuild, update evidence, retrain owner. |
| Medium | Version mismatch, missing documentation metadata, outdated local tool not used for protected work. | Correct through scheduled baseline refresh and record non-conformance. |
| Low | Minor documentation inconsistency with no operational exposure. | Update during next maintenance window. |

## 17. Implementation Roadmap

| **Phase** | **Timeframe** | **Deliverables** | **Exit Criteria** |
| --- | --- | --- | --- |
| Phase 0 | Immediately | Approve v3.1 standard; update document register; assign owners; publish baseline checklist. | CAB/ARB approval and evidence path created. |
| Phase 1 | Sprint 0 | Build Golden Source registries, devcontainer baselines, hooks, CLAUDE.md adapters, and seat assignments. | Smoke test and baseline attestations pass. |
| Phase 2 | Foundation Development | Provision workstations, run onboarding, verify local+CI parity, execute first sample build/test pipeline. | All developers meet Ready-to-Code gate. |
| Phase 3 | Controlled Expansion | Add domain-specific devcontainers, automate drift dashboards, mature AI usage review and environment refresh. | Quarterly review pack and drift metrics available. |
| Phase 4 | Continuous Improvement | Use approved Auto-Learn/Auto-Improve outputs to refine templates, baselines, and controls. | Improvements pass 01A, AVCI, security, test, and rollback gates. |

## 18. AVCI Compliance Summary

| **AVCI Property** | **v3.1 Compliance Position** |
| --- | --- |
| Attributable | Every environment artifact, workstation, devcontainer, tool, subscription, extension, prompt, guardrail, model route, and registry entry has a named owner and source. |
| Verifiable | Environment compliance is proven by baseline hashes, scans, inventory, hook results, CI evidence, drift reports, rebuild tests, and onboarding records. |
| Classifiable | Environment artifacts carry classification and handling rules that govern storage, access, AI prompt eligibility, logging, caching, and retention. |
| Improvable | Findings, drift, onboarding friction, incidents, tool updates, and developer feedback enter controlled Auto-Learn/Auto-Improve paths with human review and regression evidence. |

| **Approval Statement**<br>Upon approval, this v3.1 standard becomes the mandatory environment baseline for AIRA development. No team member, workstation, devcontainer, server, AI tool, extension, model route, or engineering artifact is ready for controlled development unless it satisfies this standard or has an approved, time-bound waiver. |
| --- |
