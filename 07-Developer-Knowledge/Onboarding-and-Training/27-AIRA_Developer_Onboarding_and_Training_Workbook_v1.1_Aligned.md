---
document_id: "AIRA-DOC-027"
title: "AIRA Developer Onboarding and Training Workbook"
version: "v1.1"
status: "aligned"
source_file: "27-AIRA_Developer_Onboarding_and_Training_Workbook_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "07-Developer-Knowledge/Onboarding-and-Training"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - knowledge-governance
  - developer-onboarding
  - training
---

# AIRA Developer Onboarding and Training Workbook

**AIRA**

AI-Native Enterprise Platform

**AIRA Developer Onboarding and Training Workbook**

_Ready-to-Code Curriculum | Hands-On Labs | Assessment Evidence | Developer Sign-Off_

**v1.1 - Java 25 Curriculum and Cross-Pack Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-027** |
| **Document Title** | **AIRA Developer Onboarding and Training Workbook** |
| **Document Version** | **v1.1 - Java 25 Curriculum and Cross-Pack Alignment Update** |
| **Supersedes** | **27-AIRA_Developer_Onboarding_and_Training_Workbook_v1.1** |
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

**Document role. **Onboarding workbook that certifies developers can build under AIRA governance, not merely operate tools.

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

Updated backend curriculum and lab prerequisites to Java 25 LTS, Spring Boot 4.x, Gradle toolchains, and Java 25-compatible test evidence.

Clarified that Java 21 material may appear only as fallback compatibility awareness, not as the active AIRA backend baseline.

Updated role-based reading matrix to include Pack 01 v1.2 canonical 01A, Developer Guide v4.1, Unit Testing v3.1, GitNexus v1.2, and Pack 03 Technology Stack v9.0.

Added GitNexus and Dograh awareness checkpoints for developer, QA, DevSecOps, and AI-agent governance literacy.

Reinforced Ready-to-Code certification evidence: PR AVCI summary, Java 25 local/CI proof, deterministic tests, secret scan, architecture fitness check, and human checker sign-off.

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

**
AIRA**
**AI-Native Enterprise Platform**

**
Developer Onboarding and Training Workbook**
Ready-to-Code Curriculum · Hands-On Labs · Assessment Evidence · Developer Sign-Off

**
Version 1.1 · Java 25 Curriculum and Cross-Pack Alignment Update · May 2026****
INTERNAL CONFIDENTIAL**

| **Workbook Operating Rule**<br>A developer is not Ready-to-Code for AIRA until identity, environment, standards, repository rules, security controls, MicroFunction patterns, CI/CD evidence, and AI governance have been demonstrated through hands-on exercises and signed approval. |
| --- |

Prepared for the Solutions Architecture Office / IT Head, Software Development, DevSecOps, QA, Security, DBA, System Administration, AI Engineering, and Internal Audit teams

## Document Control

| **Document ID** | AIRA-DOC-027 |
| --- | --- |
| **Document Title** | AIRA Developer Onboarding and Training Workbook |
| **Version** | v1.1 - Reviewed and Format-Improved Edition |
| **Classification** | INTERNAL CONFIDENTIAL |
| **Status** | FOR DEVELOPMENT TEAM ADOPTION / TRAINING BASELINE |
| **Owner** | Solutions Architecture Office / IT Head |
| **Co-Owners** | Software Development Lead; DevSecOps Lead; Security Administrator; QA Lead; System Administrator |
| **Effective Date** | Upon approval by Architecture Review Board / Change Advisory Board |
| **Review Cadence** | Quarterly; unscheduled on material stack, security, AI tooling, repository, onboarding-process, or control-change event |
| **Audience** | Software Developers, QA/SDET, DevSecOps, System Administrator, Security Administrator, Database Administrator, AI Engineers, Technical Leads |
| **Purpose** | Provide a structured, evidence-producing onboarding and training workbook that certifies developers for controlled AIRA foundation and business-feature development. |
| **Companion Documents** | 01 AVCI v3.1; 01A Enterprise Design Principles and SOLID Enforcement Layer; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.0; 06 CLAUDE.md Reference v3.0; 08 Unit Testing v3.1; 10-10D MicroFunction documents; 11 DevSecOps v3.1; 18 Repository Bootstrap; 20 CI/CD Evidence Guide; 23 Architecture Fitness Function Catalog. |
| **Evidence Path** | OpenKM Tier-0 / AIRA / Training / Developer-Onboarding / v1.1 / |
| **Mandatory Practice Statement**<br>Ready-to-Code is a controlled engineering gate, not an attendance certificate. AIRA developers may pair, train, and practice before certification, but independent mergeable work requires named approval, evidence, and scope of authority. |  |

## Review Findings and Improvements Applied

| **Review Area** | **Finding** | **Improvement Applied** |
| --- | --- | --- |
| Document structure | Original workbook had strong content but needed a more polished, controlled-document layout. | Added formal title page, document control, static TOC, section numbering, headers/footers, and consistent tables. |
| Governance clarity | Ready-to-Code model was present but certification scope and remediation handling needed more explicit controls. | Added certification scope levels, remediation workflow, renewal rules, and role-based approval expectations. |
| Training evidence | Evidence expectations were defined but needed stronger register alignment. | Expanded evidence-pack fields and added a developer readiness record with approval scope, restrictions, and review dates. |
| Assessment quality | Quiz and capstone requirements were present but needed a scoring rubric for consistent panel decisions. | Added assessment scoring model, pass/conditional/fail thresholds, and capstone evaluation criteria. |
| Visual format | Mermaid code existed but was not sufficient for non-technical readers. | Added rendered process diagrams while preserving copy-ready Mermaid references in the appendix. |
| Enterprise design enforcement | SOLID and design-principle references needed to be consistently reinforced through labs and PR gates. | Integrated 01A, SOLID, Clean Architecture, DDD, TDD, security, observability, reversibility, and AVCI into gate criteria and lab evidence. |

## Table of Contents

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Onboarding Journey and Certification Model

## 4. Required Reading and Role-Based Learning Path

## 5. Training Curriculum

## 6. Hands-On Labs and Exercises

## 7. Developer Assessment and Ready-to-Code Gate

## 8. AI-Assisted Development Rules

## 9. Capstone Project and Review Defense

## 10. Evidence Pack and Records

## 11. Remediation, Renewal, and Access Revocation

## 12. RACI and Operating Responsibilities

## 13. Implementation Roadmap

Appendix A. Developer Acknowledgement Template

Appendix B. Quiz Blueprint

Appendix C. Developer Readiness Record

Appendix D. Capstone Scoring Rubric

Appendix E. Copy-Ready Mermaid References

Appendix F. AVCI Compliance Summary

## 1. Executive Summary

This workbook turns the AIRA standards into practical onboarding, training, and certification activities for developers and technical delivery roles. It ensures that every team member understands not only the technology stack, but also the operating discipline required for an AI-native, mission-critical, compliance-ready platform.

The workbook is intentionally evidence-producing. Completion is not based on attendance alone. Each developer must demonstrate environment readiness, repository discipline, MicroFunction development practice, TDD, security hygiene, AI usage controls, CI/CD evidence, architecture-fitness compliance, and a capstone defense before receiving Ready-to-Code approval.

| **Management Intent**<br>Training is not a formality. It is a control. AIRA developers must be able to build, explain, test, secure, evidence, and improve their work under AVCI and the Enterprise Design Principles & SOLID Enforcement Layer. |
| --- |

| **Strategic Outcome** | **How This Workbook Delivers It** |
| --- | --- |
| Controlled onboarding | Defines a consistent O1-O9 onboarding path with named owners, evidence, and approval. |
| Reduced rework | Developers learn the AIRA architecture, MicroFunction model, repository rules, and CI/CD gates before coding. |
| Safe AI acceleration | Developers practice AI-assisted work within classification, CLAUDE.md, LiteLLM, guardrails, Harness, and human accountability. |
| Audit readiness | Every training activity produces evidence linked to the developer, role, date, environment, repository, and reviewer. |
| Long-term maintainability | SOLID, Clean Architecture, DDD, ports-and-adapters, TDD, idempotency, observability, and reversibility are trained as daily habits. |
| Scoped authority | Ready-to-Code approval is granted by scope: foundation, MicroFunction, business module, QA/SDET, DevSecOps, DBA/Security, or restricted supervised work. |

### 1.1 v1.1 Baseline Scope

| **Area** | **Workbook Baseline** |
| --- | --- |
| Readiness model | Defines the practical O1-O9 onboarding workflow and Ready-to-Code gate. |
| Training curriculum | Converts the AIRA standards into role-based learning modules and hands-on labs. |
| Developer evidence | Defines required evidence: environment proof, quiz results, lab outputs, PR/MR evidence, CI results, security checks, and capstone review. |
| AI governance | Trains developers to use ChatGPT/Codex/approved assistants under classification, CLAUDE.md, Harness, SBAC, OPA, LiteLLM, and guardrail controls. |
| SOLID and 01A enforcement | Requires developers to demonstrate SOLID, Clean Architecture, DDD, ports-and-adapters, TDD, security, observability, reversibility, and AVCI evidence. |
| Certification decision | Defines named human approval before a developer may independently work on mergeable AIRA code. |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

The purpose of this workbook is to provide a controlled onboarding path for AIRA developers and related delivery roles. It translates the formal AIRA standards into a structured training sequence, hands-on labs, assessment questions, evidence requirements, and a final Ready-to-Code decision.

### 2.2 In Scope

AIRA standards orientation and role-based reading.

Greenfield workstation and development environment readiness.

Repository, CLAUDE.md, pre-commit, CODEOWNERS, and branch protection usage.

MicroFunction configuration-first development training.

TDD, unit testing, architecture fitness functions, and CI/CD evidence.

Security, identity, secrets, classification, SBAC, OPA, and Harness awareness.

AI-assisted development usage for ChatGPT, Codex, Claude Code, or approved equivalents.

Capstone exercise, formal defense, and Ready-to-Code sign-off.

### 2.3 Out of Scope

General HR onboarding unrelated to AIRA engineering.

Business-user UAT training, which belongs to the MVP and UAT readiness pack.

Production operations certification beyond developer-level awareness.

Formal vendor certification for third-party tools.

### 2.4 Authority and Conflict Resolution

| **Authority Level** | **Document / Control** | **Training Impact** |
| --- | --- | --- |
| L0 | Architecture Board / Engineering Blueprint | Controls target architecture, service boundaries, and integration direction. |
| L1 | AVCI v3.0 and 01A SOLID Enforcement Layer | Controls production-readiness, evidence, and design-principle expectations. |
| L2 | Developer Guide, Unit Testing, DevSecOps, Technology Stack | Controls daily developer behaviour, tools, tests, and lifecycle gates. |
| L3 | This Workbook | Controls onboarding, training, assessment, and Ready-to-Code certification. |
| L4 | Lab outputs, quiz records, PR/MR evidence | Training evidence and readiness proof. |

## 3. Onboarding Journey and Certification Model

![[attachments/27-AIRA_Developer_Onboarding_and_Training_Workbook_v1.1_Aligned/image4.png]]

Figure 1. O1-O9 onboarding journey and Ready-to-Code approval path.

| **Stage** | **Objective** | **Required Evidence** | **Approval Owner** |
| --- | --- | --- | --- |
| O1 Identity and Access | Confirm named identity, MFA, workspace access, data-handling acknowledgement. | Access checklist, signed acknowledgement, account inventory. | Security Administrator |
| O2 Standards Orientation | Read mandatory AIRA documents at role-appropriate depth. | Reading log, quiz result, Q&A notes. | Software Development Lead |
| O3 Greenfield Environment | Provision clean workstation/devcontainer from Golden Source. | Baseline hash, installed tool inventory, drift scan. | System Administrator |
| O4 Repository Rules | Understand CLAUDE.md hierarchy, branch protection, CODEOWNERS, and PR/MR template. | Local hook output, repository access proof. | DevSecOps Lead |
| O5 Local Build and Test | Run starter build, tests, lint, and architecture checks locally. | Terminal log, test report, screenshot or evidence reference. | QA Lead / Tech Lead |
| O6 MicroFunction Lab | Configure and execute a sample transaction using standard functions. | Config rows/YAML, test result, diagram explanation. | Tech Lead |
| O7 CI/CD Evidence Drill | Open a training PR/MR and pass required pipeline gates. | PR/MR link, CI run ID, evidence manifest. | DevSecOps Lead |
| O8 Security and AI Governance | Demonstrate safe prompt, classification, SBAC/OPA/Harness, secret hygiene. | Prompt log, classification worksheet, policy test output. | Security Administrator |
| O9 Capstone Review | Build, test, explain, and defend a sample feature. | Capstone package, panel decision, readiness record. | Solutions Architect / IT Head |

### 3.1 Certification Scope Levels

| **Certification Scope** | **Permitted Work** | **Restrictions / Renewal Trigger** |
| --- | --- | --- |
| Foundation only | Repository bootstrap, local environment, starter tests, documentation updates, supervised platform tasks. | No independent business module work until MicroFunction or business certification is granted. |
| MicroFunction implementer | Implement or configure approved STP-BUS-* functions, standard step tests, transaction definitions, and error paths. | New framework concerns require Tech Lead and Architecture approval. |
| Business module developer | Implement approved business stories under bounded context, contract, data classification, and acceptance criteria. | No direct schema, workflow, or security-control deviation without ADR/TDL. |
| QA/SDET | Design tests, fixtures, evidence manifests, quality gates, and capstone verification. | Cannot lower quality gate or approve own test coverage gaps. |
| DevSecOps | Maintain CI/CD, pre-commit, evidence packs, repository controls, and runtime readiness scripts. | No production-impacting bypass; all changes through MR and policy checks. |
| Restricted / supervised | Pairing, training branches, or low-risk documentation/tasks only. | Requires remediation and re-assessment before independent mergeable work. |

## 4. Required Reading and Role-Based Learning Path

| **Reading Depth Rule**<br>Developers should not be asked to memorize all documents. They must know where the authoritative rule is, how to apply it during coding, and how to produce evidence that the rule was followed. |
| --- |

### 4.1 Role-Based Reading Matrix

| **Document** | **All Developers** | **Tech Lead** | **QA/SDET** | **DevSecOps** | **Security/DBA** | **Required Outcome** |
| --- | --- | --- | --- | --- | --- | --- |
| 01 AVCI v3.1 | Read | Read | Read | Read | Read | Can explain AVCI evidence and PR/MR summary. |
| 01A SOLID Enforcement Layer | Read | Read | Read | Read | Read | Can explain the 20 principles and impact on Auto-Heal/Improve. |
| 02 Engineering Blueprint v5.1 | Core sections | Full | Core sections | Core sections | Security/data sections | Can explain service boundaries and architecture invariants. |
| 03 Developer Guide v4.1 | Full | Full | Testing sections | CI/repo sections | Security/data sections | Can follow daily coding and repository rules. |
| 04 Technology Stack v9.0 | Core tiers | Full | Test tools | Full | Security/data tools | Can identify approved vs conditional tools. |
| 06 CLAUDE.md Reference v3.0 | Full | Full | Full | Full | Full | Can apply repository AI/human rules. |
| 08 Unit Testing v3.1 | Full | Full | Full | CI integration | Security tests | Can perform TDD and evidence-based testing. |
| 10-10D MicroFunction documents | Full | Full | Scenario tests | Pipeline impact | Security/data impact | Can design and implement configuration-first transactions. |
| 17 Security Standard v2.0 | Awareness | Core | Core | Core | Full | Can avoid secrets/PII leakage and apply least privilege. |
| 18-27 Execution and Readiness Documents | Awareness | Full | Relevant | Full | Relevant | Can execute repository, CI/CD, platform, and fitness gates. |

## 5. Training Curriculum

![[attachments/27-AIRA_Developer_Onboarding_and_Training_Workbook_v1.1_Aligned/image5.png]]

Figure 2. Training curriculum path from AIRA foundation to capstone defense.

| **Module** | **Topic** | **Learning Objectives** | **Exercise** | **Pass Criteria** |
| --- | --- | --- | --- | --- |
| M1 | AIRA Mission and AVCI | Understand why AIRA requires evidence-by-construction. | Map a sample artifact to AVCI. | All four AVCI properties correctly identified. |
| M2 | 01A Design Principles | Apply SOLID, Clean Architecture, DDD, ports/adapters, reversibility, observability. | Refactor a bad design into compliant boundaries. | Principle impact table accepted by reviewer. |
| M3 | Architecture Blueprint | Explain service boundaries, AI governance, workflow partition, data/knowledge responsibilities. | Trace a request through the architecture. | No boundary shortcuts or direct model calls proposed. |
| M4 | Repository Discipline | Use CLAUDE.md, hooks, branch protection, PR templates, CODEOWNERS. | Create a training branch and PR. | Hooks and CI pass; PR evidence complete. |
| M5 | TDD and Quality | Practice red-green-refactor, deterministic tests, mutation/security awareness. | Write tests before implementing a small MicroFunction. | Red-green-refactor evidence captured. |
| M6 | MicroFunction Framework | Configure standard steps and isolate STP-BUS-* logic. | Create sample transaction definition and tests. | Mandatory steps, error path, idempotency, audit included. |
| M7 | Security and Data | Use classification, secrets, least privilege, SBAC/OPA, RLS concepts. | Classify sample payload and select allowed model route. | No PII/secrets exposure; correct routing. |
| M8 | AI-Assisted Development | Use ChatGPT/Codex safely with prompts, citations, and human accountability. | Generate test suggestions and review them. | AI output declared and independently verified. |
| M9 | Operations Awareness | Understand incident, rollback, DLQ, Auto-Heal, Auto-Learn, Auto-Improve constraints. | Walk through a failed event replay scenario. | Safe recovery path and evidence identified. |
| M10 | Capstone | Deliver a small end-to-end sample with evidence and defense. | Build and defend sample function/transaction. | Panel approves Ready-to-Code. |

## 6. Hands-On Labs and Exercises

| **Lab** | **Scenario** | **Required Output** | **Evidence** |
| --- | --- | --- | --- |
| LAB-01 | Environment verification | Run devcontainer, Java/Node checks, Git hooks, local test command. | Tool versions, command output, drift scan result. |
| LAB-02 | AVCI artifact review | Review a sample PR and identify missing owner, tests, classification, improvement path. | Completed AVCI checklist. |
| LAB-03 | SOLID refactoring | Refactor a sample service that violates SRP/DIP and ports/adapters. | Before/after explanation, tests, architecture check. |
| LAB-04 | MicroFunction configuration | Assemble a sample transaction using standard steps and one STP-BUS-* function. | Config artifact, sequence diagram, unit tests. |
| LAB-05 | Error handling and compensation | Configure retry, timeout, safe response, DLQ, and compensation for a failing step. | Failure-path test output and audit evidence. |
| LAB-06 | API contract first | Create or update an OpenAPI path and generated contract test. | Contract file, compatibility check, test report. |
| LAB-07 | Database migration | Create Flyway migration with rollback/forward-fix notes and RLS/classification metadata. | Migration file, verification SQL output, evidence record. |
| LAB-08 | AI prompt safety | Classify a prompt, choose model route, apply guardrail expectations, and record usage. | Prompt registry sample and evaluation result. |
| LAB-09 | CI/CD evidence drill | Submit training PR/MR with complete AVCI and 01A summary. | Pipeline link, evidence manifest, reviewer notes. |
| LAB-10 | Incident walkthrough | Resolve simulated DLQ or failed deployment using runbook. | Incident worksheet, recovery evidence, lesson learned. |

### 6.1 Developer Workstation to Repository Flow

![[attachments/27-AIRA_Developer_Onboarding_and_Training_Workbook_v1.1_Aligned/image6.png]]

Figure 3. Developer workstation to repository flow with fail-fast local and CI feedback loops.

## 7. Developer Assessment and Ready-to-Code Gate

| **Ready-to-Code Rule**<br>No developer may independently submit production-bound AIRA code until the Ready-to-Code gate is passed and recorded. Pairing, training branches, and supervised exercises may occur before approval. |
| --- |

| **Gate** | **Requirement** | **Minimum Passing Criteria** | **Evidence Owner** |
| --- | --- | --- | --- |
| G1 Identity and Access | Named account, MFA, no shared credentials. | All required accounts active and mapped to role. | Security Admin |
| G2 Environment | Greenfield workstation/devcontainer operational. | Local build, test, and hooks execute successfully. | System Admin / DevSecOps |
| G3 Standards Knowledge | Role-based reading and quiz. | >= 85% quiz score or corrected oral defense. | Training Lead |
| G4 Architecture Understanding | Explain AIRA flow and boundaries. | No direct DB/model/provider/bypass patterns proposed. | Solutions Architect |
| G5 TDD and Testing | Demonstrate red-green-refactor and deterministic tests. | Tests pass, failure path covered, evidence retained. | QA Lead |
| G6 MicroFunction Practice | Create/configure sample transaction. | Mandatory steps, idempotency, audit, error path present. | Tech Lead |
| G7 Security and Data | Classify sample data and apply least privilege/model route. | Correct classification and no secret/PII exposure. | Security Admin |
| G8 CI/CD Evidence | Training PR/MR passes pipeline and review. | Evidence manifest complete and reviewer accepted. | DevSecOps Lead |
| G9 Capstone Defense | Deliver and explain sample feature. | Panel approves or assigns remediation. | IT Head / Solutions Architect |

### 7.1 PR/MR Evidence Gate

This flow shows how a developer PR/MR is evaluated against AVCI, 01A principles, tests, security, classification, and review evidence before merge.

![[attachments/27-AIRA_Developer_Onboarding_and_Training_Workbook_v1.1_Aligned/image7.png]]

Figure 4. PR/MR evidence gate for Ready-to-Code and future development work.

### 7.2 Assessment Scoring Model

| **Assessment Area** | **Weight** | **Minimum Standard** | **Automatic Fail Condition** |
| --- | --- | --- | --- |
| Standards knowledge and rule lookup | 15% | Can locate and apply relevant AIRA standards. | Cannot explain AVCI or ignores CLAUDE.md hierarchy. |
| Architecture and design boundaries | 20% | Correctly respects service boundaries, DDD, ports/adapters, and no direct model calls. | Proposes direct provider SDK, direct DB shortcut, or bypass of workflow/security boundary. |
| TDD, testing, and evidence | 20% | Shows red-green-refactor, deterministic tests, failure path coverage, CI evidence. | Code-first/test-later without justification or missing critical failure path. |
| MicroFunction and configuration-first design | 15% | Uses standard steps and isolates STP-BUS-* logic. | Hardcodes transaction flow or duplicates standard framework concerns. |
| Security, data, and AI governance | 20% | Correct classification, no PII/secrets, safe model route, OPA/SBAC/Harness awareness. | Pastes secrets/PII or proposes guardrail/policy bypass. |
| Communication and defense | 10% | Can explain decisions, limitations, risks, and rework path. | Cannot explain own code or evidence trail. |
| **Decision** | **Score / Condition** | **Outcome** |  |
| PASS | 85% or higher, no automatic-fail condition. | Ready-to-Code approval may be granted within defined scope. |  |
| CONDITIONAL | 75%-84% or minor evidence gaps with safe remediation. | Scoped/supervised work only until remediation is verified. |  |
| FAIL | Below 75% or any automatic-fail condition. | No independent mergeable work; repeat labs/capstone required. |  |

## 8. AI-Assisted Development Rules

| **Rule** | **Developer Requirement** | **Evidence** |
| --- | --- | --- |
| Named accountability | AI output is advisory. The developer remains accountable for correctness, tests, security, and evidence. | PR/MR declaration identifies tool/model and human checker. |
| Classification before prompt | Classify content before sharing with ChatGPT/Codex or any approved AI tool. | Prompt classification worksheet or registry entry. |
| No secrets or real PII | Do not paste credentials, customer data, production logs with PII, tokens, raw documents, or restricted data. | Reviewer confirms synthetic/masked inputs. |
| CLAUDE.md compliance | AI-generated changes must follow root and directory-specific rules. | Hook/CI output and CODEOWNERS review. |
| No direct model/provider use | Application code may not call model providers directly; use governed gateway patterns. | Import lint/fingerprint checks. |
| Guardrails and Harness | Tool actions and high-impact AI recommendations require appropriate rails and Harness/OPA/SBAC path. | Policy decision and audit reference. |
| Independent verification | AI-generated tests and code must be reviewed and executed. | Test report, reviewer notes, changed-line coverage. |
| Bounded remediation | Auto-Heal/AI remediation is capped and escalates when repeated attempts fail. | Attempt count, escalation record. |
| **AI Governance Red Line**<br>A developer cannot use an AI tool to bypass classification, security review, test evidence, architecture boundaries, or human accountability. Any such attempt is treated as a governance non-conformance, not a productivity shortcut. |  |  |

## 9. Capstone Project and Review Defense

![[attachments/27-AIRA_Developer_Onboarding_and_Training_Workbook_v1.1_Aligned/image8.png]]

Figure 5. Capstone workflow from brief to certification or remediation.

| **Capstone Component** | **Expected Work Product** | **Evaluation Criteria** |
| --- | --- | --- |
| Scenario selection | Assigned sample transaction such as document intake stub, loan eligibility placeholder, or approval route sample. | Scope is small, bounded, and suitable for training. |
| Design explanation | Short design note explaining bounded context, API/event contract, data classification, and MicroFunction sequence. | Consistent with Blueprint, Developer Guide, API, Database, and MicroFunction standards. |
| Implementation | Minimal working code/configuration with tests and no bypass patterns. | SOLID, Clean Architecture, DDD, ports/adapters, idempotency, security, observability. |
| Testing | Unit, component, error-path, security, and architecture fitness checks. | Required gates pass and failure path is demonstrated. |
| CI/CD evidence | Training PR/MR evidence manifest, SBOM/scan if applicable, reviewer approval. | Evidence is complete and traceable. |
| Demo and defense | Live walkthrough of success path, failure path, and recovery/evidence path. | Developer can explain decisions and limitations. |

## 10. Evidence Pack and Records

| **Evidence Artifact** | **Required Fields** | **Storage / Reference** |
| --- | --- | --- |
| Developer onboarding record | Name, role, manager, start date, assigned mentor, onboarding status. | OpenKM / AIRA / Training / Developer Records / |
| Reading log | Document, version, completion date, role relevance, questions raised. | Training workbook evidence package. |
| Quiz result | Module, score, incorrect answers, remediation if any. | Training evidence register. |
| Environment evidence | Workstation ID, devcontainer version, tool versions, drift scan, account map. | Greenfield environment evidence path. |
| Lab evidence | Lab ID, branch/commit, command output, tests, reviewer comments. | Repository training branch and evidence manifest. |
| AI usage evidence | Tool/model, prompt intent, classification, output use, human checker. | PR/MR AVCI summary and AI registry if applicable. |
| Capstone record | Scenario, design, implementation, CI result, panel decision, conditions. | Developer readiness register. |
| Ready-to-Code approval | Approver, date, scope of approval, restrictions, renewal date. | Signed onboarding acknowledgement. |

### 10.1 Evidence Completeness Checklist

| **Checklist Item** | **Required Before Approval** |
| --- | --- |
| Identity and access evidence | Named account, MFA, workspace, repository, and role mapping evidence captured. |
| Environment proof | Clean devcontainer/workstation baseline, tool inventory, local checks, and drift result captured. |
| Standards evidence | Reading log, quiz or oral defense, and unresolved questions recorded. |
| Lab evidence | Each assigned lab has output, reviewer, evidence reference, and pass/conditional/fail status. |
| PR/MR evidence | Training branch, PR/MR link, CI run ID, evidence manifest, and CODEOWNERS review available. |
| AI evidence | Any AI assistance declared with classification, prompt intent, tool/model, and human checker. |
| Capstone evidence | Design note, implementation, tests, demo, review decision, and remediation if any. |
| Approval evidence | Ready-to-Code record signed with approval scope and next review date. |

## 11. Remediation, Renewal, and Access Revocation

Ready-to-Code approval is not permanent when the underlying standards, technology stack, AI tooling, or developer behavior materially changes. AIRA treats onboarding certification as a living control tied to evidence and continued compliance.

| **Trigger** | **Required Action** | **Owner** |
| --- | --- | --- |
| Conditional capstone result | Create remediation plan, assign mentor, repeat failed lab or defense item. | Software Development Lead / QA Lead |
| Automatic-fail condition | Suspend independent mergeable work; repeat security/AI/governance modules and capstone. | Solutions Architect / Security Administrator |
| Major stack or standard update | Run delta training and evidence refresh for affected roles. | Training Lead / DevSecOps Lead |
| Security or data-handling violation | Revoke affected access pending review; complete corrective training and approval. | Security Administrator |
| Repeated PR evidence gaps | Restrict to supervised work until evidence discipline is restored. | Dev Lead / QA Lead |
| Quarterly review cycle | Confirm active developers remain aligned with current standards and role scope. | Solutions Architect / IT Head |

## 12. RACI and Operating Responsibilities

| **Activity** | **Solutions Architect / IT Head** | **Software Dev Lead** | **DevSecOps Lead** | **Security Admin** | **QA Lead** | **System Admin** | **Developer** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Approve workbook baseline | A | R | C | C | C | C | I |
| Assign onboarding cohort | A | R | C | C | C | C | I |
| Provision identity/access | I | C | C | R/A | I | C | I |
| Provision workstation/devcontainer | I | C | R | C | C | R/A | I |
| Conduct standards orientation | A | R | C | C | C | I | R |
| Conduct MicroFunction lab | C | R/A | C | C | C | I | R |
| Conduct testing and CI lab | C | C | R | C | R/A | C | R |
| Conduct security/AI governance lab | C | C | C | R/A | C | C | R |
| Review capstone | A | R | C | C | R | C | R |
| Grant Ready-to-Code approval | A | R | C | C | C | I | I |
| Maintain evidence records | A | R | R | R | R | C | R |

Legend: A = Accountable, R = Responsible, C = Consulted, I = Informed.

## 13. Implementation Roadmap

| **Phase** | **Timing** | **Activities** | **Exit Criteria** |
| --- | --- | --- | --- |
| Phase 1 - Workbook adoption | Week 0 | Approve workbook, assign training owners, create evidence folders and readiness register. | Training package approved and published. |
| Phase 2 - Cohort onboarding | Week 1 | Run O1-O5 identity, standards, environment, repository, local build modules. | All developers can run local build and hooks. |
| Phase 3 - Engineering labs | Week 2 | Run MicroFunction, testing, CI/CD, security, and AI governance labs. | Training PR/MR evidence passes review. |
| Phase 4 - Capstone defense | Week 3 | Develop and defend sample transaction or assigned foundation component. | Capstone panel approves or issues remediation. |
| Phase 5 - Ready-to-Code activation | Week 4 | Grant scoped repository work permissions and assign first Sprint-0 tasks. | Readiness register updated and signed. |

## Appendix A. Developer Acknowledgement Template

| **Acknowledgement Item** | **Developer Initials** | **Reviewer Initials** |
| --- | --- | --- |
| I have read the assigned AIRA standards and understand where to find authoritative rules. |  |  |
| I understand AVCI and the Enterprise Design Principles & SOLID Enforcement Layer. |  |  |
| I will not use personal accounts, unmanaged AI tools, secrets, production data, or real PII in prompts/tests/examples. |  |  |
| I will follow CLAUDE.md, branch protection, CODEOWNERS, and PR/MR evidence rules. |  |  |
| I will write deterministic tests and follow TDD where feasible. |  |  |
| I understand that AI output is advisory and human accountability remains non-delegable. |  |  |
| I understand that mergeable AIRA work requires complete evidence and human review. |  |  |

## Appendix B. Quiz Blueprint

| **Topic** | **Sample Question** | **Expected Answer Theme** |
| --- | --- | --- |
| AVCI | What makes an artifact production-ready under AVCI? | It must be attributable, verifiable, classifiable, and improvable with evidence. |
| SOLID | Why must a MicroFunction remain single-responsibility? | To keep testing, reuse, replacement, and evidence clean. |
| Architecture | Which service may directly call a model provider? | None; model traffic goes through governed LiteLLM route. |
| Security | What happens when OPA, guardrails, Harness, Vault, or audit is unavailable? | Protected actions fail closed. |
| Data | May Redis or pgvector become authoritative source of truth? | No; they are derivative/acceleration layers unless explicitly approved. |
| AI Governance | Can Codex or an agent approve its own PR or execute production actions? | No; humans approve and Harness mediates actions. |
| Testing | What is required for a mutation or side-effecting transaction? | Idempotency, tests, error path, compensation/retry as applicable, audit evidence. |

## Appendix C. Developer Readiness Record

| developer_readiness_record:<br>developer_id: ""<br>full_name: ""<br>role: "Software Developer \| QA/SDET \| DevSecOps \| DBA \| Security \| AI Engineer"<br>mentor: ""<br>onboarding_start_date: "YYYY-MM-DD"<br>assigned_workstation_id: ""<br>repository_access_scope: []<br>completed_modules: []<br>completed_labs: []<br>quiz_score_summary: ""<br>capstone_result: "PASS \| CONDITIONAL \| FAIL"<br>ready_to_code_status: "APPROVED \| RESTRICTED \| NOT APPROVED"<br>approval_scope: "Foundation only \| MicroFunction \| Business module \| Admin/config only"<br>approver: ""<br>approval_date: "YYYY-MM-DD"<br>next_review_date: "YYYY-MM-DD"<br>restrictions: []<br>remediation_items: []<br>evidence_refs: [] |
| --- |

## Appendix D. Capstone Scoring Rubric

| **Criteria** | **Excellent** | **Acceptable** | **Needs Remediation** |
| --- | --- | --- | --- |
| Design boundary | Clear bounded context, ports/adapters, no shortcut. | Minor gaps but no boundary violation. | Direct DB/provider/workflow/security bypass. |
| MicroFunction use | Standard steps reused and business logic isolated. | Configuration mostly correct with minor reviewer fixes. | Hardcoded flow or duplicated framework concern. |
| Tests and evidence | Red-green-refactor, success/failure/security tests, CI evidence complete. | Core tests pass but evidence needs minor cleanup. | Missing failure path, non-deterministic tests, or no CI proof. |
| Security and AI controls | Correct classification, no PII/secrets, safe model route. | Minor documentation gap corrected during review. | Secret/PII exposure or policy/guardrail bypass. |
| Explanation | Can explain decisions, trade-offs, limitations, and rework path. | Can explain most choices with coaching. | Cannot explain own implementation or evidence trail. |

## Appendix E. Copy-Ready Mermaid References

### E.1 Onboarding Journey

| flowchart LR<br>O1[O1 Identity, NDA, Data Handling] --> O2[O2 AIRA Standards]<br>O2 --> O3[O3 Greenfield Workstation]<br>O3 --> O4[O4 Repository + CLAUDE.md]<br>O4 --> O5[O5 Devcontainer + Local Tests]<br>O5 --> O6[O6 MicroFunction Training Lab]<br>O6 --> O7[O7 CI/CD Evidence PR Drill]<br>O7 --> O8[O8 Security and AI Governance]<br>O8 --> O9[O9 Capstone Review Defense]<br>O9 --> READY[Ready-to-Code Approval] |
| --- |

### E.2 Training Curriculum

| flowchart TD<br>A[Foundation: AIRA, AVCI, 01A] --> B[Architecture: Blueprint, DDD, Boundaries]<br>B --> C[Developer Practice: SOLID, Clean Architecture, TDD]<br>C --> D[MicroFunction Lab]<br>D --> E[Security and Data]<br>E --> F[AI Governance]<br>F --> G[CI/CD Evidence]<br>G --> H[Operations and Auto-Heal]<br>H --> I[Capstone] |
| --- |

### E.3 Developer Workstation to Repository Flow

| flowchart LR<br>A[Developer] --> B[Greenfield Workstation]<br>B --> C[Local Hooks and Devcontainer]<br>C --> D[Protected Repository]<br>D --> E[CI Pipeline]<br>E --> F[Maker-Checker Review]<br>F --> G[Merge Allowed]<br>E -. fail fast .-> C<br>F -. rework .-> D |
| --- |

### E.4 PR/MR Evidence Gate

| flowchart TD<br>PR[Pull / Merge Request] --> A[Attributable Evidence]<br>PR --> V[Verifiable Evidence]<br>PR --> C[Classifiable Evidence]<br>PR --> I[Improvable Evidence]<br>PR --> S[SOLID and 01A Impact]<br>A --> D{Reviewer Decision}<br>V --> D<br>C --> D<br>I --> D<br>S --> D<br>D -->\|All passed\| M[Merge]<br>D -->\|Gap found\| R[Reject / Rework] |
| --- |

## Appendix F. AVCI Compliance Summary

| **AVCI Property** | **Compliance Statement** |
| --- | --- |
| Attributable | This workbook is owned by the Solutions Architecture Office / IT Head with co-ownership across Software Development, DevSecOps, Security, QA, and System Administration. |
| Verifiable | Completion is verified through reading logs, quizzes, lab evidence, PR/MR evidence, CI runs, capstone defense, and signed Ready-to-Code records. |
| Classifiable | The workbook is INTERNAL CONFIDENTIAL; training evidence inherits classification based on role, system access, AI usage, and lab content. |
| Improvable | Quarterly reviews, developer feedback, audit findings, defect patterns, capstone outcomes, and standards changes feed updates to the workbook and training program. |
| **Final Control Statement**<br>The AIRA Developer Onboarding and Training Workbook certifies that a developer can build under discipline, not just run tools. A developer becomes Ready-to-Code only after the evidence shows they can follow AVCI, SOLID, Clean Architecture, TDD, security, AI governance, CI/CD evidence, and human accountability. |  |
