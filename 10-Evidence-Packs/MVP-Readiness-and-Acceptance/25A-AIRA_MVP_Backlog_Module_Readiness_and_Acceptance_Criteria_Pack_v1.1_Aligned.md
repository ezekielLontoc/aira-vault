---
document_id: "AIRA-DOC-025A"
title: "AIRA MVP Backlog Module Readiness and Acceptance Criteria Pack"
version: "v1.1"
status: "aligned"
source_file: "25A-AIRA_MVP_Backlog_Module_Readiness_and_Acceptance_Criteria_Pack_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "10-Evidence-Packs/MVP-Readiness-and-Acceptance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - mvp-readiness
  - backlog
  - acceptance-criteria
  - evidence
---

# AIRA MVP Backlog Module Readiness and Acceptance Criteria Pack

**AIRA**

AI-Native Enterprise Platform

**AIRA MVP Backlog, Module Readiness, and Acceptance Criteria Pack**

_MVP Scope | Module Readiness | Acceptance Gates | Evidence and Done Criteria_

**v1.1 - Canonical 25A Numbering and Pack 03 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-025A** |
| **Document Title** | **AIRA MVP Backlog, Module Readiness, and Acceptance Criteria Pack** |
| **Document Version** | **v1.1 - Canonical 25A Numbering and Pack 03 v1.2 Alignment Update** |
| **Supersedes** | **25-AIRA_MVP_Backlog_Module_Readiness_and_Acceptance_Criteria_Pack_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **MVP readiness companion** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines MVP backlog grouping, module readiness criteria, acceptance gates, and Definition of Done evidence.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active input baseline** | **AIRA Source Packs v3.0 / Aligned Pack Set v1.1 remains the input baseline; Pack 03 v1.2 is the new individual output set for Obsidian upload.** |
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

Renumbered from Document 25 to 25A to avoid conflict with Pack 02 Knowledge Access Architecture and Golden Source Standard.

Aligned MVP backend readiness criteria to Java 25 LTS, Java 25-compatible CI, and Pack 02 Developer Guide v4.1.

Clarified readiness gates for MicroFunctions, APIs, Flyway migrations, CI/CD evidence, UAT, release governance, and operations readiness.

Added GitNexus impact summary and architecture-fitness evidence as optional supporting proof, never as replacement for CI gates.

Reinforced AVCI, SOLID, classification, observability, rollback, and human approval acceptance criteria.

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

**CONFIDENTIAL - SOLUTIONS ARCHITECTURE OFFICE**

**AIRA**

AI-Native Enterprise Platform

**AIRA MVP Backlog, Module Readiness, and Acceptance Criteria Pack**

MVP Backlog | Module Readiness Gates | Acceptance Criteria | Sprint-0 Execution | AVCI Evidence

**Version 1.0 | April 2026**

| **MVP Control Statement**<br>AIRA MVP delivery may begin only when each module has an accountable owner, approved scope, acceptance criteria, classification, test evidence path, dependency map, rollback or compensation strategy, and AVCI completion evidence. Backlog speed must not weaken architecture boundaries, security controls, or evidence discipline. |
| --- |

Prepared for Solutions Architect / IT Head, Software Development, DevSecOps, Security, QA, DBA, System Administration, Compliance, and Internal Audit

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-025 |
| Document Title | AIRA MVP Backlog, Module Readiness, and Acceptance Criteria Pack |
| Version | v1.0 - Format-corrected regeneration |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | Software Development Lead, DevSecOps Lead, QA Lead, Security Administrator, Database Administrator |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | Bi-weekly during MVP execution; quarterly after baseline acceptance; unscheduled on architecture, security, data, or AI governance change |
| Audience | Solutions Architect, Enterprise Architects, Software Developers, QA/SDET, DevSecOps, Security Administrator, System Administrator, Database Administrator, Product/Business Owner, Internal Audit |
| Purpose | Define the MVP backlog, module readiness gates, acceptance criteria, Sprint-0 execution controls, evidence pack, and module-level release criteria for controlled AIRA development. |
| Primary Companion Documents | 01-AIRA_AVCI_Engineering_Standard_v2.0; 02-AIRA_Engineering_Blueprint_v4.0; 03-AIRA_Developer_Guide_v3.0; 04-AIRA_Technology_Stack_v7.0; 05-AIRA_AI_Native_Information_Nervous_System_v4.1; 06-AIRA_CLAUDE_MD_Reference_v2.0; 07-AIRA_AI_DevSecOps_Skills_Framework_v2.0; 08-AIRA_Unit_Testing_Standard_v2.0; 09-AIRA_Greenfield_Environment_Standard_v2.0; 10/10A/10B/10C/10D MicroFunction document set; 11-AIRA_AI_Native_DevSecOps_Standard_v2.0; 12-17 specialist standards. |
| Evidence Path | OpenKM Tier-0 / AIRA / Delivery / MVP / Backlog Readiness / v1.0/ |

### Version 1.0 Regeneration Notes

| **Area** | **Correction Applied** |
| --- | --- |
| Document format | Rebuilt using consistent page margins, header/footer, heading hierarchy, compact table styles, repeatable table headers, and page-safe table widths. |
| Governance alignment | Aligned the backlog pack with AVCI, Engineering Blueprint v4.0, Developer Guide v3.0, Unit Testing v2.0, CLAUDE.md v2.0, MicroFunction v2.2, and specialist standards. |
| MVP usability | Converted high-level architecture intent into module-level readiness gates, deliverables, acceptance criteria, backlog items, and sign-off evidence. |
| Acceptance criteria | Added standard acceptance syntax, cross-module acceptance criteria, and module-specific Definition of Ready / Definition of Done gates. |
| Developer handoff | Added RACI, sprint-0 execution plan, backlog metadata schema, PR evidence requirements, and release sign-off checklist. |

## Table of Contents

This document uses Word heading styles. In Microsoft Word, update the table of contents using References > Table of Contents > Update Table if page numbers are required.

## 1. Executive Summary

## 2. Scope, Authority, and Backlog Governance

## 3. MVP Delivery Principles and Quality Constraints

## 4. Definition of Ready, Done, Module Ready, and Release Ready

## 5. MVP Module Map and Priority Classification

## 6. MVP Backlog Master Matrix

## 7. Module Readiness and Acceptance Criteria Cards

## 8. Sprint-0 Execution Plan and Handoff Controls

## 9. Acceptance Criteria Standard and Story Template

## 10. Cross-Module Acceptance Criteria Matrix

## 11. RACI and Decision Rights

## 12. Risks, Dependencies, and Readiness Blockers

## 13. MVP Exit Criteria and Sign-Off Pack

Appendix A. Copy-Ready Backlog Metadata Schema

Appendix B. Pull Request AVCI Evidence Template

Appendix C. Module Readiness Checklist

Appendix D. Document AVCI Compliance Summary

## 1. Executive Summary

This pack converts the AIRA architecture and standards baseline into a controlled MVP execution backlog. It defines what the development team can build first, which modules are ready for coding, what evidence each module must produce, and how acceptance criteria are written, verified, and approved.

The pack is intentionally operational. It does not replace the Engineering Blueprint, Developer Guide, Technology Stack, MicroFunction Framework, Security Standard, API Standard, Database Standard, or DevSecOps Standard. Instead, it turns those companion standards into an executable backlog framework that can be used in Jira, GitHub Issues, Azure DevOps, GitLab, or an equivalent governed delivery tool.

| **Executive Decision**<br>Controlled MVP development may proceed only for modules that pass the Module Ready gate. Business-specific feature work must remain behind clear tickets, acceptance criteria, test plans, data classification, API/event contracts, rollback or compensation path, and AVCI evidence. |
| --- |

### 1.1 MVP Objective

The MVP objective is to prove the governed AIRA engineering path end to end: repository to CI, CI to signed artifact, signed artifact to GitOps deployment, API to workflow, workflow to MicroFunction runtime, document intake to retrieval, retrieval to guarded AI response, and AI action proposal to Harness-mediated approval. The MVP is successful only if the system is secure, reproducible, observable, testable, reversible, and evidence-producing by construction.

### 1.2 MVP Outcomes

| **Outcome** | **Required MVP Evidence** |
| --- | --- |
| Governed delivery path | Repository bootstrap, branch protection, CLAUDE.md hierarchy, PR template, CI gates, CODEOWNERS, artifact signing, and release evidence. |
| Secure platform foundation | Keycloak/OIDC path, Vault or approved secret manager integration, OPA policy checks, SPIFFE/SVID plan, audit trail, and fail-closed behaviour. |
| Configurable transaction runtime | MicroFunction catalog seed, transaction definition schema, runtime assembly, Caffeine/Redis cache as acceleration only, and step execution evidence. |
| Workflow partition | Temporal machine workflow path and Flowable human approval path demonstrated without responsibility overlap. |
| Document and retrieval core | OpenKM document record, PostgreSQL registry, chunk/embedding lineage, pgvector retrieval, LightRAG enrichment, and citation-ready evidence pack. |
| AI safety and routing | LiteLLM-only model route, NeMo Input/Retrieval/Execution/Output checkpoints, model alias governance, AI interaction audit, and classification-aware handling. |
| Harnessed AI action boundary | Hermes action proposal, Harness validation, SBAC/trust/OPA decision, Flowable approval when required, and immutable action audit. |
| Operational readiness | OpenTelemetry traces, structured logs, metrics, dashboards, SLO draft, alert rules, backup/restore evidence, and release rollback/compensation plan. |

### 1.3 What This Pack Is Not

It is not a substitute for detailed API contracts, database migrations, UI designs, or runbooks.

It is not permission to bypass architecture, security, testing, or evidence gates for schedule acceleration.

It is not a frozen product backlog. It is a governed backlog baseline that must evolve through approved backlog refinement and change control.

It is not an autonomy charter. AI may draft and recommend; humans approve and remain accountable.

## 2. Scope, Authority, and Backlog Governance

### 2.1 In Scope

MVP module decomposition, priority, dependencies, readiness conditions, acceptance criteria, and evidence deliverables.

Sprint-0 and foundation sprint work required before feature development can proceed safely.

Backlog metadata required for stories, technical tasks, spikes, ADRs, MicroFunction configuration, tests, and release evidence.

Module-level readiness gates for platform, security, workflow, API, data, retrieval, AI, Harness, observability, and governance modules.

Cross-module acceptance criteria that protect architecture boundaries, AVCI evidence, classification handling, testability, rollback, and audit readiness.

### 2.2 Out of Scope

Detailed UI wireframes and business-specific screen copy.

Production data migration execution plans outside the MVP proof path.

Full enterprise UAT procedure, business policy, HR policy, and procurement approval workflows.

Final production cutover scheduling, unless captured as an MVP readiness dependency.

### 2.3 Backlog Authority Hierarchy

| **Level** | **Artifact** | **Backlog Governance Role** |
| --- | --- | --- |
| L0 | Architecture Board / Consolidated Architecture Authority | Controls major architectural direction, boundary disputes, and platform-level exceptions. |
| L1 | AIRA Engineering Blueprint v4.0 and AI-Native DevSecOps Standard v2.0 | Controls build architecture, service boundaries, evidence lifecycle, CI/CD gates, promotion discipline, and AI operating model. |
| L2 | AIRA AVCI Engineering Standard v2.0 | Controls artifact quality: owner, source, evidence, classification, and feedback path. |
| L2 | Specialist standards: Developer Guide, Technology Stack, Unit Testing, Security, API, Database, MicroFunction, CLAUDE.md | Controls coding, stack, tests, security, contracts, migrations, transaction runtime, and repository rules. |
| L3 | This MVP Backlog Pack | Controls MVP module readiness, story acceptance criteria, sprint-0 execution, and release sign-off evidence. |
| L4 | Tickets, PRs/MRs, ADRs, runbooks, tests, and evidence records | Implementation-level traceability and day-to-day delivery evidence. |

### 2.4 Backlog Item Types

| **Type** | **Use For** | **Minimum Evidence** |
| --- | --- | --- |
| Epic | A major MVP module or cross-module capability. | Owner, business/architecture intent, module dependency map, readiness gate, acceptance criteria summary. |
| Capability | A coherent functional slice within an epic. | Definition of Ready, API/event/data contract reference, test strategy, risk classification. |
| User Story | User-visible or operator-visible behaviour. | Persona, value statement, acceptance criteria, test cases, demo evidence. |
| Technical Story | Architecture, infrastructure, security, data, or platform capability. | Design decision, implementation evidence, tests, scans, rollback/compensation plan. |
| Spike | Time-boxed research or proof of concept that cannot merge to main without follow-up story. | Question, hypothesis, options, result, recommendation, ADR/TDL trigger if needed. |
| Defect | Incorrect, unsafe, non-compliant, or failing behaviour. | Reproduction steps, severity, affected module, fix evidence, regression test. |
| Risk / Blocker | Condition that prevents safe delivery or validation. | Owner, impact, mitigation, target date, escalation path, decision record if unresolved. |

## 3. MVP Delivery Principles and Quality Constraints

The MVP backlog is governed by architecture constraints, not by convenience. A story is not ready because it is small; it is ready when its dependencies, evidence, classification, tests, rollback, and approval path are clear.

### 3.1 Non-Negotiable Delivery Rules

| **Rule ID** | **Rule** | **Backlog Implication** |
| --- | --- | --- |
| MVP-01 | AVCI by construction | Every ticket has owner, source/intent, verification evidence, classification, and improvement path. |
| MVP-02 | No direct model calls | Any story involving AI must route through LiteLLM aliases and record model route evidence. |
| MVP-03 | Guardrails always | AI stories must include Input, Retrieval, Execution, and Output rail acceptance criteria where applicable. |
| MVP-04 | Harness executes | AI action stories must prove Harness, SBAC, OPA, trust, approval, and audit; no direct agent credentials. |
| MVP-05 | Configuration before code | MicroFunction stories prefer catalog/configuration/rules/DMN over hardcoded transaction orchestration. |
| MVP-06 | Contract first | API/event stories require OpenAPI, AsyncAPI, schema, error, security, idempotency, and compatibility evidence before implementation. |
| MVP-07 | Database by migration only | Schema stories require Flyway migration, compatibility test, rollback/forward-fix plan, and DBA review. |
| MVP-08 | Test before merge | Stories must include tests and CI evidence; AI-generated tests require human review and same accountability. |
| MVP-09 | Fail-safe, not fail-open | If identity, OPA, Vault, LiteLLM, guardrails, Harness, or audit is unavailable, protected actions block. |
| MVP-10 | Evidence before release | Critical responses, release changes, and tool actions produce durable audit/evidence before acceptance. |

### 3.2 Enterprise Design Principles Enforcement Layer

Every module must preserve or improve the AIRA enterprise design layer. Auto-Heal, Auto-Learn, and Auto-Improve may not only fix, learn, or improve; they must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence.

| **Principle** | **MVP Enforcement Expectation** |
| --- | --- |
| SOLID | Small, cohesive services/classes; dependency inversion through ports and adapters. |
| Clean Architecture | Domain rules remain independent of framework, transport, database, and model provider concerns. |
| DDD / Bounded Contexts | Modules own their domain language, data contracts, invariants, and schema boundaries. |
| Ports and Adapters | External dependencies are isolated behind typed interfaces and tested with contract doubles. |
| DRY, KISS, YAGNI | Avoid duplicated plumbing, over-engineered abstractions, and premature extensibility. |
| Idempotency by Design | Mutations, retries, workflows, consumers, and external calls are retry-safe and deduplicated. |
| Determinism and Reproducibility | Builds, tests, migrations, prompts, model aliases, and runtime definitions are versioned and repeatable. |
| Fail-Safe, Not Fail-Open | Unavailable control dependencies block protected operations, not silently allow them. |
| Human-in-the-Loop | High-risk, low-confidence, production-impacting, or exception actions require accountable human approval. |
| Least Privilege / SBAC | Humans, services, and agents receive only scoped authority backed by policy and evidence. |
| Separation of Duties | Maker, checker, approver, deployer, and auditor responsibilities remain distinct. |
| Observability by Design | Every module emits traces, metrics, logs, audit events, and SLO signals from the first implementation slice. |
| Policy as Code | Authorization, admission, configuration, and AI action rules are reviewed policy artifacts. |
| Testability by Design | Boundaries, deterministic inputs, fakes, fixtures, and evidence assertions are designed before implementation. |
| Secure by Design | Authentication, authorization, redaction, secrets, tenant isolation, and safe errors are built in. |
| Resilience Patterns | Timeouts, retries, circuit breakers, bulkheads, outbox, DLQ, compensation, and replay are explicit. |
| Architectural Fitness Functions | CI rules detect boundary breaks, direct provider calls, forbidden imports, missing evidence, and unsafe config. |
| Progressive Autonomy | AI moves from recommendation to draft action only after evidence, trust, and approval thresholds are met. |
| Reversibility / Rollbackability | Each module has rollback, disable, compensation, or forward-fix path before release. |
| AVCI | Every input, component, process, output, and improvement remains attributable, verifiable, classifiable, and improvable. |

## 4. Definition of Ready, Done, Module Ready, and Release Ready

### 4.1 Story Definition of Ready

| **Gate** | **Required Condition** | **Reject If Missing** |
| --- | --- | --- |
| Intent | Ticket states user/actor, value, scope, non-goals, and companion source reference. | Ambiguous story intent or no owner. |
| Architecture | Affected component, boundary, contract, workflow, data, and security impact are identified. | Implementation would guess service ownership or cross a boundary. |
| Classification | Data classification, information domain, knowledge tier, logging, retention, and model eligibility are declared. | Story touches data or AI without classification. |
| Acceptance Criteria | Criteria are testable, measurable, and include happy path, unhappy path, authorization, idempotency, evidence, and rollback where applicable. | Criteria describe activity but not verifiable outcome. |
| Dependencies | Upstream/downstream module, contract, data, environment, or approval dependencies are visible. | Blocked dependency is not tracked. |
| Test Plan | Unit/component/contract/security/AI evaluation expectations are stated. | No test strategy or no synthetic data plan. |
| Evidence Plan | PR/MR evidence, CI evidence, audit evidence, and demo evidence location are defined. | No evidence path or owner. |
| Approval Path | Required reviewer, architecture/security/DBA/CAB/Business approval rules are clear. | High-risk change has no approver. |

### 4.2 Story Definition of Done

Implementation conforms to the owning service/module boundary and repository CLAUDE.md rules.

Tests pass locally and in CI, with no unexplained skipped or flaky tests.

Required scans, policy checks, contract checks, schema checks, migration checks, and AI evaluation gates pass.

AVCI Compliance Summary is complete in the PR/MR and reviewed by the checker.

OpenAPI/AsyncAPI/schema, database migration, runbook, dashboard, or knowledge update is included when impacted.

Audit, log, trace, metric, and evidence records can prove the behaviour.

Rollback, compensation, feature flag, or forward-fix path is documented and tested for material changes.

No secrets, raw PII, raw prompts, raw documents, or restricted data appear in logs, fixtures, screenshots, prompts, or evidence.

### 4.3 Module Ready Gate

| **Dimension** | **Module Ready Minimum** |
| --- | --- |
| Scope | MVP slice is explicitly bounded; non-MVP items are deferred to a later backlog lane. |
| Owner | One accountable module owner and one delivery owner are named. |
| Contracts | API, event, schema, model, guardrail, workflow, or MicroFunction contracts exist or are ticketed as blockers. |
| Data | Classification, synthetic data, schema ownership, RLS/tenant model, retention, and migration approach are clear. |
| Security | AuthN/AuthZ, secrets, OPA/SBAC rules, and least-privilege controls are defined. |
| Testing | Unit, component, contract, security, AI, migration, and smoke tests are mapped to module risk. |
| Observability | Trace, metrics, logs, audit, dashboard, SLO draft, and alert requirements are identified. |
| Operational | Runbook, rollback, DLQ/replay, cache rebuild, or re-index procedure is defined where applicable. |
| AVCI | Evidence record fields can be produced by the module from day one. |
| Decision Records | ADR/TDL triggers have been assessed and created before implementation when required. |

### 4.4 Release Ready Gate

A module is Release Ready only after it passes Module Ready, implementation Done, integration acceptance, security and quality checks, operational evidence review, and sign-off. Release readiness is evidence-based, not calendar-based.

## 5. MVP Module Map and Priority Classification

The MVP is divided into modules that can be planned, owned, implemented, tested, and accepted independently while still preserving the end-to-end AIRA architecture. P0 modules establish the coding and governance runway; P1 modules prove platform capability; P2 modules extend operations and controlled improvement.

| **Module** | **Name** | **Priority** | **Accountable Owner** | **Primary Dependencies** |
| --- | --- | --- | --- | --- |
| M0 | Governance, Repository, and Backlog Foundation | P0 | Solutions Architect / DevSecOps Lead | Approved document set; Git platform; team access; Greenfield environment baseline. |
| M1 | Platform Bootstrap and CI/CD Control Plane | P0 | DevSecOps Lead / System Administrator | M0; Greenfield environment; Technology Stack; registry access; CI runners. |
| M2 | Security, Identity, Secrets, and Access Control | P0 | Security Administrator / IAM Lead | M0, M1; Security standard; test IdP; secret manager; policy repository. |
| M3 | API Gateway and Contract Registry | P0 | Integration Lead / Backend Lead | M0, M1, M2; API Standard; schema registry decision. |
| M4 | Database, Migration, and Evidence Schema Foundation | P0 | Database Administrator / Data Architect | M0, M1, M2; Database Standard; local/DEV PostgreSQL. |
| M5 | MicroFunction Runtime and Configuration Assembly | P0 | Backend Lead / Solutions Architect | M0-M4; MicroFunction Framework documents 10/10A/10B/10C/10D. |
| M6 | Workflow Orchestration: Temporal and Flowable Partition | P0 | Workflow Lead / Backend Lead | M1-M5; Engineering Blueprint; workflow infrastructure. |
| M7 | Document Intake and OpenKM Registry | P1 | Document Platform Lead / Backend Lead | M2-M6; OpenKM environment; API and database contracts. |
| M8 | Retrieval Store, pgvector, LightRAG, and LLM Wiki Candidate Flow | P1 | AI/Retrieval Lead / Data Architect | M4, M7, M9; Information Nervous System; Knowledge Governance Standard. |
| M9 | AI Orchestration, LiteLLM Routing, and NeMo Guardrails | P1 | AI Engineering Lead / Security Admin | M2-M4, M8; Technology Stack; AI DevSecOps Standard. |
| M10 | Harness, SBAC, OPA, Trust Score, and Agent Action Boundary | P1 | AI DevSecOps Lead / Security Administrator | M2, M6, M9; Skills Framework; Security Standard. |
| M11 | Observability, Audit, Evidence, and SLO Baseline | P1 | SRE / DevSecOps Lead | M1-M10; Observability stack; audit schema. |
| M12 | Admin Governance UI and Operations Console | P2 | Frontend Lead / Admin Governance Lead | M2, M3, M6, M11; frontend baseline. |
| M13 | Testing, Quality, and Release Evidence | P0 | QA Lead / DevSecOps Lead | M0-M12; Unit Testing Standard; CI platform. |
| M14 | Governed Auto-Heal, Auto-Learn, and Auto-Improve MVP Loop | P2 | AI DevSecOps Lead / SRE | M6, M9, M10, M11, M13; Knowledge Governance Standard. |

### 5.1 Priority Definitions

| **Priority** | **Meaning** | **Delivery Rule** |
| --- | --- | --- |
| P0 | Foundation required before broad team coding or integration. | Start immediately. Block dependent modules until exit criteria are met or formal waiver is approved. |
| P1 | Core MVP platform capability required for end-to-end demo and controlled pilot. | Start after required P0 gate. Can proceed in parallel when dependencies are explicitly mocked or stubbed. |
| P2 | Operational hardening or governed improvement capability useful for MVP completeness. | Start after P0/P1 path is stable; no production dependency unless approved. |
| P3 | Post-MVP backlog candidate. | Defer unless business or compliance priority changes through backlog governance. |

## 6. MVP Backlog Master Matrix

The matrix below is the controlled baseline backlog. Each module should be translated into epics, capabilities, stories, and technical tasks in the delivery system. The Module Ready gate must be completed before production-bound implementation proceeds.

| **Epic** | **Module** | **MVP Deliverable** | **Dependencies** | **Exit Evidence** |
| --- | --- | --- | --- | --- |
| EPIC-01 | M0 - Governance, Repository, and Backlog Foundation | Create the governed engineering runway: repositories, branch protection, CLAUDE.md hierarchy, PR templates, CODEOWNERS, evidence paths, backlog metadata, and decision records. | Approved document set; Git platform; team access; Greenfield environment baseline. | Repository settings export, initial PR, CODEOWNERS, CLAUDE.md lock file, backlog schema, sample ticket, decision log entry. |
| EPIC-02 | M1 - Platform Bootstrap and CI/CD Control Plane | Establish the build, test, artifact, GitOps, and environment promotion path for MVP services. | M0; Greenfield environment; Technology Stack; registry access; CI runners. | CI run, SBOM, scan reports, artifact digest, GitOps sync record, environment smoke test. |
| EPIC-03 | M2 - Security, Identity, Secrets, and Access Control | Provide the identity, secrets, authorization, policy-as-code, and classification controls used by all MVP modules. | M0, M1; Security standard; test IdP; secret manager; policy repository. | Policy tests, auth integration tests, secret scan, redaction test, OPA decision audit sample. |
| EPIC-04 | M3 - API Gateway and Contract Registry | Establish contract-first REST/event integration for gateway-routed services and async events. | M0, M1, M2; API Standard; schema registry decision. | OpenAPI spec, contract test report, gateway smoke test, problem response sample, idempotency test. |
| EPIC-05 | M4 - Database, Migration, and Evidence Schema Foundation | Deliver PostgreSQL schema, migration discipline, idempotency, outbox, audit/evidence tables, and pgvector readiness. | M0, M1, M2; Database Standard; local/DEV PostgreSQL. | Flyway migration report, schema review, DBA approval, idempotency test, outbox test, RLS/tenant isolation test where applicable. |
| EPIC-06 | M5 - MicroFunction Runtime and Configuration Assembly | Implement the configuration-driven transaction runtime and standard function catalog seed. | M0-M4; MicroFunction Framework documents 10/10A/10B/10C/10D. | Runtime assembly tests, publish-time validation report, cache miss/rebuild test, step execution audit sample, catalog seed data. |
| EPIC-07 | M6 - Workflow Orchestration: Temporal and Flowable Partition | Prove durable machine workflows and human-in-the-loop approvals without engine responsibility overlap. | M1-M5; Engineering Blueprint; workflow infrastructure. | Temporal workflow test, Flowable task demo, compensation test, workflow history export, approval audit event. |
| EPIC-08 | M7 - Document Intake and OpenKM Registry | Deliver controlled intake of source documents, registry creation, metadata capture, checksum, malware scan handoff, and event emission. | M2-M6; OpenKM environment; API and database contracts. | Upload smoke test, registry row sample, checksum evidence, outbox event, rejection tests, audit trail. |
| EPIC-09 | M8 - Retrieval Store, pgvector, LightRAG, and LLM Wiki Candidate Flow | Build the retrieval pipeline with chunk lineage, embedding provenance, ACL filtering, graph enrichment, and curated knowledge candidate creation. | M4, M7, M9; Information Nervous System; Knowledge Governance Standard. | Retrieval test with citations, ACL negative test, embedding metadata, LightRAG rebuild note, wiki candidate review record. |
| EPIC-10 | M9 - AI Orchestration, LiteLLM Routing, and NeMo Guardrails | Provide governed prompt assembly, model routing, guardrail checkpoints, classification-aware routing, and AI audit evidence. | M2-M4, M8; Technology Stack; AI DevSecOps Standard. | Forbidden import scan, LiteLLM route log, guardrail test report, classification route test, AI audit record. |
| EPIC-11 | M10 - Harness, SBAC, OPA, Trust Score, and Agent Action Boundary | Demonstrate that AI agents can propose actions but only Harness can execute approved actions through SBAC, trust, OPA, approval, and audit. | M2, M6, M9; Skills Framework; Security Standard. | Agent profile sample, SBAC test, OPA decision record, blocked action test, approved action audit, Flowable escalation demo. |
| EPIC-12 | M11 - Observability, Audit, Evidence, and SLO Baseline | Provide the operational signals and evidence needed to debug, audit, monitor, and improve the MVP. | M1-M10; Observability stack; audit schema. | Trace screenshot/export, log redaction test, dashboard export, audit query sample, SLO rules, alert test. |
| EPIC-13 | M12 - Admin Governance UI and Operations Console | Provide minimal admin screens for controlled visibility and operational actions without bypassing policy. | M2, M3, M6, M11; frontend baseline. | UI smoke test, access control tests, redaction screenshot, admin action audit, API contract tests. |
| EPIC-14 | M13 - Testing, Quality, and Release Evidence | Operationalize the unit testing, integration testing, security scanning, AI evaluation, and release evidence gates for all MVP modules. | M0-M12; Unit Testing Standard; CI platform. | Test reports, coverage report, mutation or equivalent quality signal, golden dataset run, release pack sample. |
| EPIC-15 | M14 - Governed Auto-Heal, Auto-Learn, and Auto-Improve MVP Loop | Demonstrate controlled improvement loops as recommendation and draft-change flows, not autonomous production mutation. | M6, M9, M10, M11, M13; Knowledge Governance Standard. | Failure signal sample, draft PR, Flowable review record, knowledge candidate, backlog item, audit trail. |

### 6.1 Foundational Story Slicing Rules

| **Slice Type** | **Preferred Story Shape** | **Anti-Pattern to Avoid** |
| --- | --- | --- |
| Vertical platform slice | One thin request path that crosses gateway, service, database, audit, observability, and CI evidence. | Building only scaffolding with no runnable evidence. |
| Configuration slice | One transaction definition, one standard assembly template, one publish validator, one runtime audit path. | Hardcoding orchestration before configuration model is proven. |
| Security slice | One protected endpoint with OIDC, OPA decision, negative tests, and audit record. | Adding security after API functionality is complete. |
| Workflow slice | One Temporal retry/compensation path and one Flowable approval path with trace and evidence. | Using one workflow engine for both machine durability and human approvals. |
| AI slice | One grounded query with retrieval evidence, four guardrail checkpoints where applicable, LiteLLM route, and audit. | Calling a model directly or returning ungrounded answers. |
| Operations slice | One dashboard and one runbook tied to a real service signal and evidence query. | Treating observability as post-MVP documentation. |

## 7. Module Readiness and Acceptance Criteria Cards

Each card below is a compact module contract. It gives the development team the minimum scope, dependencies, acceptance criteria, and evidence needed to determine readiness and completion. This regenerated edition uses paragraph-based cards to keep the Word layout clean and avoid oversized, broken tables.

### M0 - Governance, Repository, and Backlog Foundation

| **P0 \| Owner: Solutions Architect / DevSecOps Lead**<br>Purpose: Create the governed engineering runway: repositories, branch protection, CLAUDE.md hierarchy, PR templates, CODEOWNERS, evidence paths, backlog metadata, and decision records.<br><br>Primary dependencies: Approved document set; Git platform; team access; Greenfield environment baseline.<br><br>Exit evidence: Repository settings export, initial PR, CODEOWNERS, CLAUDE.md lock file, backlog schema, sample ticket, decision log entry. |
| --- |

#### MVP Scope

Repository structure and rule hierarchy

Backlog taxonomy and metadata

PR/MR AVCI template

CODEOWNERS and branch protection

Decision log trigger rules

#### Acceptance Criteria

AC-01: Root and subdirectory rules exist and are versioned.

AC-02: Protected branch requires PR/MR, reviewer approval, passing checks, and signed commits/artifacts where available.

AC-03: Backlog items contain owner, classification, domain, tier, readiness status, and evidence path.

AC-04: PR/MR template includes AVCI summary, tests, scans, rollback, and AI assistance disclosure.

AC-05: ADR/TDL triggers are documented and linked from backlog workflow.

### M1 - Platform Bootstrap and CI/CD Control Plane

| **P0 \| Owner: DevSecOps Lead / System Administrator**<br>Purpose: Establish the build, test, artifact, GitOps, and environment promotion path for MVP services.<br><br>Primary dependencies: M0; Greenfield environment; Technology Stack; registry access; CI runners.<br><br>Exit evidence: CI run, SBOM, scan reports, artifact digest, GitOps sync record, environment smoke test. |
| --- |

#### MVP Scope

Devcontainer baseline

CI pipeline skeleton

SAST/SCA/secret scan gates

Artifact registry and SBOM

GitOps deployment to DEV/INT

#### Acceptance Criteria

AC-01: A sample service builds reproducibly in local devcontainer and CI.

AC-02: Pipeline produces test report, scan report, SBOM, and signed or versioned artifact.

AC-03: GitOps applies only approved manifests to DEV/INT.

AC-04: Promotion requires evidence and cannot be performed by direct cluster mutation.

AC-05: Failed quality/security gate blocks merge or deployment.

### M2 - Security, Identity, Secrets, and Access Control

| **P0 \| Owner: Security Administrator / IAM Lead**<br>Purpose: Provide the identity, secrets, authorization, policy-as-code, and classification controls used by all MVP modules.<br><br>Primary dependencies: M0, M1; Security standard; test IdP; secret manager; policy repository.<br><br>Exit evidence: Policy tests, auth integration tests, secret scan, redaction test, OPA decision audit sample. |
| --- |

#### MVP Scope

Keycloak/OIDC integration

Vault or approved secrets manager pattern

OPA authorization baseline

RBAC/ABAC/SBAC claim model

Security audit event schema

#### Acceptance Criteria

AC-01: Authenticated request path validates issuer, audience, expiry, tenant, and role claims.

AC-02: No secrets exist in Git, logs, prompts, test fixtures, or CI variables outside approved secret references.

AC-03: OPA decision record includes subject, action, resource, policy version, classification, and trace_id.

AC-04: Unauthorized, expired, wrong-tenant, and insufficient-skill requests fail closed.

AC-05: Security events appear in audit/evidence store with redaction.

### M3 - API Gateway and Contract Registry

| **P0 \| Owner: Integration Lead / Backend Lead**<br>Purpose: Establish contract-first REST/event integration for gateway-routed services and async events.<br><br>Primary dependencies: M0, M1, M2; API Standard; schema registry decision.<br><br>Exit evidence: OpenAPI spec, contract test report, gateway smoke test, problem response sample, idempotency test. |
| --- |

#### MVP Scope

Spring Cloud Gateway baseline

OpenAPI repository

AsyncAPI/Event schema repository

Problem Details error profile

Idempotency header profile

#### Acceptance Criteria

AC-01: OpenAPI exists before service implementation for MVP endpoints.

AC-02: Gateway injects or propagates request_id/trace_id and rejects unauthenticated requests.

AC-03: Error response follows RFC 9457-style Problem Details with AIRA error code and no stack trace.

AC-04: Mutating APIs define Idempotency-Key behaviour and replay/error cases.

AC-05: Contract tests and compatibility checks run in CI.

### M4 - Database, Migration, and Evidence Schema Foundation

| **P0 \| Owner: Database Administrator / Data Architect**<br>Purpose: Deliver PostgreSQL schema, migration discipline, idempotency, outbox, audit/evidence tables, and pgvector readiness.<br><br>Primary dependencies: M0, M1, M2; Database Standard; local/DEV PostgreSQL.<br><br>Exit evidence: Flyway migration report, schema review, DBA approval, idempotency test, outbox test, RLS/tenant isolation test where applicable. |
| --- |

#### MVP Scope

Flyway baseline

Schema naming and ownership

Audit/evidence record schema

Transactional outbox

Idempotency registry

pgvector extension path

#### Acceptance Criteria

AC-01: All schema changes are delivered by Flyway with checksum and CI migration test.

AC-02: Tables include required ownership, audit, classification, tenant, row_version, and trace fields where applicable.

AC-03: No free-form SQL from configuration is executable.

AC-04: Outbox and idempotency paths are tested for retry and replay.

AC-05: Migration rollback, compensation, or forward-fix path is documented.

### M5 - MicroFunction Runtime and Configuration Assembly

| **P0 \| Owner: Backend Lead / Solutions Architect**<br>Purpose: Implement the configuration-driven transaction runtime and standard function catalog seed.<br><br>Primary dependencies: M0-M4; MicroFunction Framework documents 10/10A/10B/10C/10D.<br><br>Exit evidence: Runtime assembly tests, publish-time validation report, cache miss/rebuild test, step execution audit sample, catalog seed data. |
| --- |

#### MVP Scope

Step catalog schema

RuntimeProcessDefinition assembly

Caffeine/Redis cache acceleration

Execution envelope

Step audit and error path

#### Acceptance Criteria

AC-01: Runtime definition is assembled from PostgreSQL authoritative configuration and signed or hash-verified.

AC-02: Mandatory pre-business steps cannot be omitted at activation.

AC-03: Cache miss and cache invalidation do not affect correctness.

AC-04: Every step emits status, duration, error policy, retry attempt, and evidence reference.

AC-05: Business code is isolated to STP-BUS-* or rules/DMN when standard functions cannot satisfy the need.

### M6 - Workflow Orchestration: Temporal and Flowable Partition

| **P0 \| Owner: Workflow Lead / Backend Lead**<br>Purpose: Prove durable machine workflows and human-in-the-loop approvals without engine responsibility overlap.<br><br>Primary dependencies: M1-M5; Engineering Blueprint; workflow infrastructure.<br><br>Exit evidence: Temporal workflow test, Flowable task demo, compensation test, workflow history export, approval audit event. |
| --- |

#### MVP Scope

Temporal worker baseline

Flowable approval baseline

Saga compensation pattern

Workflow history audit

Approval task evidence

#### Acceptance Criteria

AC-01: Machine-durable retry/compensation uses Temporal, not Flowable.

AC-02: Human approval, exception review, SLA timer, or CAB task uses Flowable.

AC-03: Workflow instance captures process version, tenant, actor, classification, and trace_id.

AC-04: Failed external dependency follows retry, DLQ, compensation, or human escalation path.

AC-05: Approval decision is attributable and immutable.

### M7 - Document Intake and OpenKM Registry

| **P1 \| Owner: Document Platform Lead / Backend Lead**<br>Purpose: Deliver controlled intake of source documents, registry creation, metadata capture, checksum, malware scan handoff, and event emission.<br><br>Primary dependencies: M2-M6; OpenKM environment; API and database contracts.<br><br>Exit evidence: Upload smoke test, registry row sample, checksum evidence, outbox event, rejection tests, audit trail. |
| --- |

#### MVP Scope

Upload/intake API

OpenKM document record path

PostgreSQL document registry

Checksum and content hash

Malware scan handoff

Document lifecycle event

#### Acceptance Criteria

AC-01: Original document is stored in OpenKM as source of record; PostgreSQL stores registry and lineage, not binary authority.

AC-02: Upload rejects unsupported type, unsafe content, missing classification, or unauthorized actor.

AC-03: Document event is emitted through transactional outbox with CloudEvents metadata.

AC-04: Trace_id links intake request, OpenKM reference, registry row, event, and audit evidence.

AC-05: Synthetic document fixtures are used; no production PII in tests.

### M8 - Retrieval Store, pgvector, LightRAG, and LLM Wiki Candidate Flow

| **P1 \| Owner: AI/Retrieval Lead / Data Architect**<br>Purpose: Build the retrieval pipeline with chunk lineage, embedding provenance, ACL filtering, graph enrichment, and curated knowledge candidate creation.<br><br>Primary dependencies: M4, M7, M9; Information Nervous System; Knowledge Governance Standard.<br><br>Exit evidence: Retrieval test with citations, ACL negative test, embedding metadata, LightRAG rebuild note, wiki candidate review record. |
| --- |

#### MVP Scope

Chunk schema and lineage

Embedding model metadata

pgvector query path

LightRAG relationship enrichment

ACL projection

LLM Wiki candidate staging

#### Acceptance Criteria

AC-01: Every chunk and embedding traces to OpenKM version, document registry, model alias, chunker version, and classification.

AC-02: Retrieval query applies tenant/role/classification ACL before evidence leaves retrieval layer.

AC-03: LightRAG enrichment is derivative and rebuildable from authoritative sources.

AC-04: LLM Wiki candidate is not treated as approved knowledge until human review.

AC-05: Retrieval evidence pack includes citations, confidence inputs, freshness, and request_id.

### M9 - AI Orchestration, LiteLLM Routing, and NeMo Guardrails

| **P1 \| Owner: AI Engineering Lead / Security Admin**<br>Purpose: Provide governed prompt assembly, model routing, guardrail checkpoints, classification-aware routing, and AI audit evidence.<br><br>Primary dependencies: M2-M4, M8; Technology Stack; AI DevSecOps Standard.<br><br>Exit evidence: Forbidden import scan, LiteLLM route log, guardrail test report, classification route test, AI audit record. |
| --- |

#### MVP Scope

Spring AI/Hermes orchestration baseline

LiteLLM alias route

Input/Retrieval/Execution/Output guardrails

Prompt/version registry

AI interaction audit

#### Acceptance Criteria

AC-01: No application code imports or invokes provider SDKs directly.

AC-02: Model alias, route, budget, classification, and provider decision are captured in audit.

AC-03: Input, Retrieval, Execution, and Output rails execute or fail closed depending on flow.

AC-04: Confidential/Restricted content is blocked from disallowed routes and logs.

AC-05: AI answer returns citations/evidence references and request_id.

### M10 - Harness, SBAC, OPA, Trust Score, and Agent Action Boundary

| **P1 \| Owner: AI DevSecOps Lead / Security Administrator**<br>Purpose: Demonstrate that AI agents can propose actions but only Harness can execute approved actions through SBAC, trust, OPA, approval, and audit.<br><br>Primary dependencies: M2, M6, M9; Skills Framework; Security Standard.<br><br>Exit evidence: Agent profile sample, SBAC test, OPA decision record, blocked action test, approved action audit, Flowable escalation demo. |
| --- |

#### MVP Scope

Harness action vocabulary

Agent profile registry

Skill grant checks

Trust score threshold

OPA decision integration

Flowable escalation path

#### Acceptance Criteria

AC-01: Agent has no direct credentials to Git, CI/CD, database, Kubernetes, OpenKM, or production APIs.

AC-02: Action request includes actor/agent, skill, trust, classification, scope, intent, evidence, and requested tool.

AC-03: OPA returns ALLOW, BLOCK, or ESCALATE and the result is audited.

AC-04: High-risk or low-confidence action creates Flowable approval task before execution.

AC-05: Denied action writes audit evidence and does not execute downstream.

### M11 - Observability, Audit, Evidence, and SLO Baseline

| **P1 \| Owner: SRE / DevSecOps Lead**<br>Purpose: Provide the operational signals and evidence needed to debug, audit, monitor, and improve the MVP.<br><br>Primary dependencies: M1-M10; Observability stack; audit schema.<br><br>Exit evidence: Trace screenshot/export, log redaction test, dashboard export, audit query sample, SLO rules, alert test. |
| --- |

#### MVP Scope

OpenTelemetry trace propagation

Structured logs with redaction

Metrics and dashboard baseline

Audit evidence store

SLO draft and alerts

Evidence retention rule

#### Acceptance Criteria

AC-01: Trace_id links gateway, service, workflow, database, model call, Harness action, and audit event where applicable.

AC-02: Logs contain no secrets, raw PII, raw prompts, raw documents, or unrestricted model responses.

AC-03: Dashboards show request rate, error rate, latency, workflow backlog, guardrail blocks, retrieval quality signals, and action decisions.

AC-04: Audit evidence is durable and queryable by request_id, actor, module, classification, and artifact.

AC-05: SLO draft and alert rules exist for critical MVP paths.

### M12 - Admin Governance UI and Operations Console

| **P2 \| Owner: Frontend Lead / Admin Governance Lead**<br>Purpose: Provide minimal admin screens for controlled visibility and operational actions without bypassing policy.<br><br>Primary dependencies: M2, M3, M6, M11; frontend baseline.<br><br>Exit evidence: UI smoke test, access control tests, redaction screenshot, admin action audit, API contract tests. |
| --- |

#### MVP Scope

Admin dashboard shell

Read-only evidence views

DLQ/replay request screen

Config status view

Approval task link-out

Access-controlled admin APIs

#### Acceptance Criteria

AC-01: Admin UI performs no direct database, cluster, model, or workflow mutation outside approved APIs.

AC-02: Admin APIs enforce RBAC/ABAC/SBAC/OPA as applicable.

AC-03: High-risk action is a request routed to Harness/Flowable, not direct execution.

AC-04: Read-only views redact sensitive fields based on classification and actor.

AC-05: UI actions produce audit evidence and request_id.

### M13 - Testing, Quality, and Release Evidence

| **P0 \| Owner: QA Lead / DevSecOps Lead**<br>Purpose: Operationalize the unit testing, integration testing, security scanning, AI evaluation, and release evidence gates for all MVP modules.<br><br>Primary dependencies: M0-M12; Unit Testing Standard; CI platform.<br><br>Exit evidence: Test reports, coverage report, mutation or equivalent quality signal, golden dataset run, release pack sample. |
| --- |

#### MVP Scope

TDD baseline

Test naming and tagging

Coverage and mutation targets

Contract tests

Security tests

AI eval/golden dataset tests

Release evidence pack

#### Acceptance Criteria

AC-01: Every production code story includes unit tests and changed-line evidence appropriate to risk.

AC-02: Contract, migration, security, and AI evaluation tests run where module impact requires them.

AC-03: No skipped tests without approved reason and follow-up ticket.

AC-04: Test data is synthetic and classification-safe.

AC-05: Release evidence pack links tickets, commits, tests, scans, SBOM, approvals, and deployment record.

### M14 - Governed Auto-Heal, Auto-Learn, and Auto-Improve MVP Loop

| **P2 \| Owner: AI DevSecOps Lead / SRE**<br>Purpose: Demonstrate controlled improvement loops as recommendation and draft-change flows, not autonomous production mutation.<br><br>Primary dependencies: M6, M9, M10, M11, M13; Knowledge Governance Standard.<br><br>Exit evidence: Failure signal sample, draft PR, Flowable review record, knowledge candidate, backlog item, audit trail. |
| --- |

#### MVP Scope

Signal detection

Candidate classification

Remediation draft PR

Lesson-learned candidate

Knowledge review workflow

Improvement backlog

#### Acceptance Criteria

AC-01: Auto-Heal may analyze and draft non-production remediation but cannot merge, deploy, or alter production without human approval.

AC-02: Auto-Learn output becomes draft knowledge only until human-reviewed and approved.

AC-03: Auto-Improve recommendations preserve or improve architecture boundaries, SOLID, testability, security, observability, reversibility, and AVCI evidence.

AC-04: Recurring failure pattern creates backlog item with owner and evidence.

AC-05: All loop actions are audited and traceable to originating signal.

## 8. Sprint-0 Execution Plan and Handoff Controls

Sprint-0 establishes the engineering runway. The result is not only a repository or environment; the result is a controlled path where humans, AI tools, code, tests, infrastructure, and evidence can operate without bypassing AIRA governance.

### 8.1 Sprint-0 Workstreams

| **Workstream** | **Core Activities** | **Exit Criteria** |
| --- | --- | --- |
| S0-1 Governance Baseline | Approve backlog pack, configure ticket fields, create decision log, assign module owners, publish PR/MR templates. | Backlog workflow active; owners assigned; sample ticket and PR show complete AVCI metadata. |
| S0-2 Repository Baseline | Create repositories, branch protection, CODEOWNERS, CLAUDE.md hierarchy, hooks, CI skeleton. | Protected main branch; first CI pipeline runs; root rules are enforced. |
| S0-3 Environment Baseline | Provision devcontainer, local compose stack, DEV/INT namespaces, secret references, registry access. | Developer can build/test/run sample service from clean workstation. |
| S0-4 Security Baseline | Configure identity test realm, service auth, OPA policy repo, secret scan, negative auth tests. | Protected sample API rejects unauthorized access and records audit evidence. |
| S0-5 Data and Migration Baseline | Create Flyway base, schema ownership, audit/evidence tables, idempotency/outbox skeleton. | Migration test passes and creates traceable schema/evidence tables. |
| S0-6 Quality Baseline | Set test structure, coverage target, SAST/SCA/secret scan, contract test harness, evidence reports. | CI evidence pack is produced for sample change. |
| S0-7 Observability Baseline | Configure trace_id propagation, JSON logging, OpenTelemetry, metrics, dashboard shell. | A sample request can be traced from gateway to service to database and audit. |
| S0-8 AI Governance Baseline | Register model alias, guardrail stub, prompt repository, AI evidence record, forbidden import checks. | Sample AI interaction is routed through approved abstraction or blocked if dependencies unavailable. |

### 8.2 Sprint-0 Handoff Checklist

| **Checklist Item** | **Owner** | **Pass Condition** |
| --- | --- | --- |
| Team has access to approved repositories and dev environment. | DevSecOps Lead | All named users have least-privilege access and MFA/SSO where applicable. |
| Developer guide and standards are available in official knowledge location. | Solutions Architect | Companion documents are versioned, classified, and discoverable. |
| Backlog fields and workflow are configured. | Delivery Lead | Ticket template captures owner, classification, domain, tier, readiness, acceptance, evidence. |
| PR/MR template is active. | DevSecOps Lead | Every non-trivial PR requires AVCI summary and evidence links. |
| CI gates are active. | QA Lead / DevSecOps | Build, test, scan, and evidence jobs execute on PR/MR. |
| Security baseline is verified. | Security Administrator | Unauthorized access tests, secret scan, and policy checks pass. |
| Module owners accept responsibilities. | Solutions Architect / IT Head | RACI acknowledged and module readiness review scheduled. |
| Waiver process is understood. | Architecture Board | Exceptions require owner, expiry, risk, approval, and remediation ticket. |

## 9. Acceptance Criteria Standard and Story Template

Acceptance criteria in AIRA must be testable, evidence-producing, and classification-aware. A criterion is weak if it only says that a developer completed a task. A criterion is strong when it proves observable behaviour, safety, evidence, and improvement path.

### 9.1 Acceptance Criteria Writing Rules

| **Rule** | **Requirement** |
| --- | --- |
| Observable | State what the system, user, service, policy, or evidence record must show. |
| Measurable | Use clear pass/fail conditions, thresholds, expected status codes, fields, events, or audit records. |
| Risk-aware | Include authorization failure, validation failure, downstream failure, retry/idempotency, and safe error path when applicable. |
| Evidence-linked | Name the test, scan, audit query, log, dashboard, approval, or evidence record that proves the criterion. |
| Classification-aware | Declare how Public/Internal/Confidential/Restricted data changes routing, logging, storage, retention, and prompt eligibility. |
| Reversible | For material changes, include rollback, feature flag, compensation, or forward-fix acceptance criterion. |
| AI-safe | For AI stories, include model route, guardrail checkpoints, retrieval evidence, confidence, citations, and human approval when required. |
| Non-ambiguous | Avoid vague phrases such as "works correctly", "secure", "fast", or "done" without measurable evidence. |

### 9.2 Standard Story Template

| **Field** | **Required Content** |
| --- | --- |
| Story ID | <auto-generated> |
| Module | M0-M14 |
| Title | As a <actor>, I need <capability>, so that <business/engineering outcome>. |
| Intent Source | Requirement, ADR, standard, risk, incident, or architecture section reference. |
| Classification | Public / Internal / Confidential / Restricted; data domains D1-D12; knowledge tier. |
| Scope | In scope and explicit non-goals. |
| Dependencies | Upstream and downstream module, contract, environment, data, or approval dependencies. |
| Acceptance Criteria | Given/When/Then statements plus evidence references. |
| Test Requirements | Unit, component, contract, security, migration, AI eval, smoke, or UAT tests. |
| Evidence Requirements | CI run, scan, audit record, trace, metric, dashboard, approval, screenshot if safe. |
| Rollback / Compensation | Feature flag, migration forward-fix, workflow compensation, config rollback, or disable path. |
| Approvers | Code owner, architecture, security, DBA, QA, business, CAB as applicable. |
| AI Assistance Disclosure | Tool/model alias/prompt intent/review owner if AI assistance was used. |

### 9.3 Example Acceptance Criteria Pattern

| **Pattern** | **Example** |
| --- | --- |
| Happy path | Given an authenticated actor with permitted role and tenant, when the actor submits a valid request, then the service returns 201/202, writes audit evidence, and emits the expected event with trace_id. |
| Authorization failure | Given an actor without the required role, skill, tenant, or classification clearance, when the actor attempts the action, then the service returns 403 or policy-denied response and records the OPA decision without side effects. |
| Validation failure | Given missing or invalid required fields, when the request is submitted, then the service returns safe Problem Details with AIRA error_code and no raw stack trace or sensitive data. |
| Idempotency | Given the same Idempotency-Key and request fingerprint, when the request is retried, then the service returns the original safe result or documented replay response without duplicate business effects. |
| Observability | Given the request is processed, when operations query the trace_id, then they can see gateway, service, database, workflow, model/guardrail/action, and audit spans as applicable. |
| Rollback | Given release validation fails, when rollback or disablement is executed, then the previous safe behaviour is restored and evidence of rollback is captured. |

## 10. Cross-Module Acceptance Criteria Matrix

The following criteria apply across all modules. A module-specific story may add stricter criteria, but it may not weaken these baseline gates.

| **Acceptance Area** | **Baseline Criterion** |
| --- | --- |
| Architecture | Service, workflow, data, AI, and tool-execution boundaries match the Engineering Blueprint. No module crosses a boundary without ADR/TDL. |
| AVCI | Every non-trivial artifact has owner, source, version, evidence, classification, and improvement path. |
| Security | Authentication, authorization, policy decision, secret handling, classification, and audit are implemented and tested where applicable. |
| Data | Data changes use owned schema, migration path, classification metadata, audit fields, idempotency, and retention rules. |
| API/Event | Contracts are versioned, reviewed, compatibility-tested, and registered before implementation merges. |
| MicroFunction | Standard enterprise concerns are configured/reused; business logic is isolated; activation validator rejects unsafe sequences. |
| Workflow | Temporal handles machine durability; Flowable handles human approval; history and decisions are attributable. |
| AI | Model calls route through LiteLLM; guardrails execute or fail closed; evidence/citations are captured; no direct provider SDK. |
| Harness | AI action requests pass through Harness, SBAC, trust, OPA, approval when needed, and immutable audit. |
| Testing | TDD where feasible; unit/component/contract/security/migration/AI tests pass; synthetic data only. |
| Observability | Trace, metrics, logs, audit, dashboards, and SLO signals exist for critical flows. |
| Operations | Runbook, rollback/compensation, DLQ/replay, cache rebuild, or re-index path exists when operationally relevant. |
| Knowledge | Developer-facing documentation, Obsidian/LLM Wiki candidates, and lessons learned are classified and reviewed before retrieval eligibility. |
| Compliance | Evidence supports ISO 27001, CIS, NIST SSDF/AI RMF, OWASP ASVS, SOC 2, SLSA, and BSP IT risk expectations where applicable. |

## 11. RACI and Decision Rights

RACI clarifies accountability for the MVP backlog. Role names may be mapped to actual people during onboarding and sprint planning.

| **Activity** | **Sol. Architect / IT Head** | **Enterprise Architect** | **Developer Lead** | **DevSecOps** | **Security** | **DBA** | **QA / Business** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Backlog prioritization | A/R | C | C | C | C | C | I |
| Architecture boundary decision | A/R | R | C | C | C | C | I |
| Module readiness review | A/R | R | R | R | R | R | I |
| Story implementation | C | C | A/R | C | C | C | I |
| CI/CD and environment gate | C | C | C | A/R | C | C | I |
| Security/classification approval | C | C | C | C | A/R | C | I |
| Database/schema approval | C | C | C | C | C | A/R | I |
| Test evidence and quality gate | C | C | R | C | C | C | A/R |
| Business acceptance | C | C | C | I | C | I | A/R |
| Release readiness sign-off | A/R | C | C | R | R | R | R |
| Waiver or exception approval | A/R | C | C | C | R | C | C |
| Knowledge promotion | A/R | R | C | C | C | C | C |

Legend: R = Responsible; A = Accountable; C = Consulted; I = Informed.

## 12. Risks, Dependencies, and Readiness Blockers

### 12.1 MVP Risk Register

| **Risk ID** | **Risk** | **Severity** | **Mitigation / Acceptance Condition** |
| --- | --- | --- | --- |
| R-001 | Team starts business feature coding before P0 governance, CI, security, and evidence baseline are active. | CRITICAL | Block business-feature stories until Sprint-0 gates pass or formal waiver is approved. |
| R-002 | AI-assisted coding creates direct model/provider calls, bypassed guardrails, or hardcoded model names. | CRITICAL | Forbidden import scans, CLAUDE.md rules, code review, and LiteLLM-only abstraction tests. |
| R-003 | Runtime configuration becomes an unsafe dynamic execution engine. | HIGH | Step catalog restricts execution to approved beans, rule tables, DMN, and policies; no arbitrary SQL/scripts. |
| R-004 | OpenKM, PostgreSQL, pgvector, LightRAG, and LLM Wiki source-of-truth boundaries blur. | HIGH | Lineage and tier discipline: OpenKM/Git/PostgreSQL/workflow/audit are authoritative; derivatives rebuild. |
| R-005 | Workflow engine responsibilities overlap between Temporal and Flowable. | HIGH | Temporal for machine-durable workflows; Flowable for human approvals, DMN, SLA timers, and exceptions. |
| R-006 | Test data or AI prompts accidentally include real PII or restricted content. | HIGH | Synthetic fixtures only; redaction tests; secret/PII scanning; classification-aware model routing. |
| R-007 | Observability and audit are deferred until after feature completion. | HIGH | No module can be Done without trace/log/metric/audit evidence for critical paths. |
| R-008 | Acceptance criteria are too vague to verify or audit. | MEDIUM | Apply Section 9 acceptance standard and require evidence links on each criterion. |
| R-009 | Backlog expands beyond MVP and weakens focus. | MEDIUM | Use P0/P1/P2/P3 classification; defer non-critical work to post-MVP backlog. |
| R-010 | Waivers become a normal delivery path. | HIGH | Waivers require expiry, risk owner, compensating control, approver, and remediation ticket. |

### 12.2 Readiness Blocker Handling

Classify blocker as Critical, High, Medium, or Low using security, architecture, data, delivery, and compliance impact.

Assign one accountable owner and target date; do not leave blockers owned by a group.

Create remediation ticket and link to blocked module/story.

Escalate Critical and High blockers to Solutions Architect / IT Head and Architecture Board.

If delivery must proceed, open a formal waiver with expiry, risk acceptance, compensating controls, and follow-up ticket.

Record resolution and lessons learned into the improvement backlog or knowledge governance workflow.

## 13. MVP Exit Criteria and Sign-Off Pack

MVP exit is not simply a successful demo. MVP exit means AIRA has proven its controlled delivery path, core architecture boundaries, security posture, traceability, testability, and governed AI augmentation model.

| **Exit Area** | **Minimum Pass Condition** | **Evidence Required** |
| --- | --- | --- |
| Architecture | End-to-end MVP flow respects service, workflow, data, retrieval, AI, Harness, and audit boundaries. | Architecture review record, component diagram, sequence demo, boundary test results. |
| Backlog | All MVP stories are linked to epics/modules, owners, acceptance criteria, tests, classification, and evidence. | Backlog export, story samples, traceability matrix. |
| Security | AuthN/AuthZ, secrets, policy, classification, and fail-closed behaviour are tested. | Security test report, OPA policy results, secret scan, negative access tests. |
| Data | Migrations, idempotency, outbox, audit/evidence schema, classification metadata, and retrieval lineage are verified. | Flyway report, schema review, data tests, audit records. |
| AI Safety | LiteLLM-only routing, four guardrail checkpoints where applicable, model alias governance, and AI audit records are working. | Guardrail/eval report, route evidence, forbidden import scan, AI audit record. |
| Harness | Agent action path enforces SBAC/trust/OPA/approval/audit; no direct agent credentials. | Harness action audit, blocked/allowed/escalated action tests. |
| Quality | Test suite and quality gates pass for all MVP modules; failures are tracked with owners. | CI evidence, test report, scan report, coverage/quality signals. |
| Operations | Critical flows are observable and have runbook, dashboard, rollback/compensation, and incident evidence path. | Dashboard export, runbook, trace sample, rollback/compensation test. |
| Compliance | Evidence pack supports internal audit review and maps to AVCI, ISO, CIS, NIST, OWASP, SOC 2, SLSA, and BSP expectations. | Compliance mapping, evidence register, approval/sign-off sheet. |
| Knowledge | Approved knowledge artifacts and lessons are classified, reviewed, and retrievable only through governed paths. | Obsidian/LLM Wiki record, review event, retrieval regression test. |

### 13.1 MVP Sign-Off Sheet

| **Role** | **Name / Team** | **Sign-Off Scope** | **Decision** | **Date** |
| --- | --- | --- | --- | --- |
| Solutions Architect / IT Head |  | Overall MVP readiness, architecture and AVCI evidence |  |  |
| Software Development Lead |  | Implementation completeness and code quality |  |  |
| DevSecOps Lead |  | CI/CD, GitOps, artifact, environment and release evidence |  |  |
| Security Administrator |  | Identity, policy, secrets, classification, and AI safety controls |  |  |
| Database Administrator |  | Schema, migration, RLS/tenant, data lineage, and recovery evidence |  |  |
| QA Lead |  | Test strategy, evidence, acceptance criteria, and regression readiness |  |  |
| Business Owner / Product Owner |  | Business-visible MVP acceptance and UAT readiness |  |  |
| Internal Audit / Compliance |  | Evidence sufficiency and audit traceability |  |  |

## Appendix A. Copy-Ready Backlog Metadata Schema

The following fields should be implemented in the delivery system or enforced through ticket templates and automation.

| **Field** | **Required Values / Notes** |
| --- | --- |
| artifact_id | Stable backlog item ID or generated URI. |
| module_id | M0-M14. |
| item_type | Epic, capability, user story, technical story, spike, defect, risk, blocker. |
| owner | Named human owner or accountable team. |
| intent_ref | Requirement, ADR, standard, risk, incident, or approved task reference. |
| classification | Public, Internal, Confidential, Restricted. |
| information_domain | D1-D12 from AIRA Information Nervous System. |
| knowledge_tier | Tier 0 authoritative, Tier 1 curated, Tier 2 derivative, Tier 3 ephemeral. |
| priority | P0, P1, P2, P3. |
| risk_tier | Low, Medium, High, Critical. |
| readiness_state | Draft, Ready for Refinement, Ready for Build, In Build, Ready for Review, Done, Blocked, Deferred. |
| acceptance_criteria | Testable statements with evidence references. |
| verification_evidence | Test, scan, review, CI run, audit query, demo evidence, approval. |
| ai_involvement | None, assisted drafting, generated tests, generated code, analysis, review; include model/tool alias. |
| rollback_compensation | Feature flag, config rollback, migration forward-fix, workflow compensation, disable path. |
| approvers | Required reviewers and sign-off roles. |
| improvement_path | Feedback channel, metric, alert, defect queue, lesson learned, or Auto-Improve backlog link. |

## Appendix B. Pull Request AVCI Evidence Template

| **Section** | **Required Content** |
| --- | --- |
| Summary | What changed and why. |
| Scope Control | Files/directories intentionally changed; confirm no unrelated refactor. |
| Risk and Classification | Classification, risk tier, information domains, reasoning axes. |
| Tests and Evidence | Unit, integration, contract, security scans, AI evaluation/guardrail tests, migration evidence, observability evidence. |
| Attributable | Owner, ticket/ADR/policy/incident reference, source files changed, AI assistance used. |
| Verifiable | Tests added/updated, local result, CI evidence, security/dependency/policy scan, known limitations. |
| Classifiable | Data classification, D1-D12 domains, knowledge tier, handling rules. |
| Improvable | Feedback path, monitoring/metric/alert, regression guard, follow-up ticket. |
| Rollback / Compensation | How change is reversed, compensated, or safely disabled. |
| Approval Notes | Required reviewers, CAB/security/architecture approval, sign-off evidence. |

## Appendix C. Module Readiness Checklist

| **#** | **Checklist Item** |
| --- | --- |
| 1 | Module owner and delivery owner named. |
| 2 | MVP scope and non-goals written. |
| 3 | Architecture boundaries and service ownership confirmed. |
| 4 | API/event/data/workflow/model/guardrail contracts identified. |
| 5 | Data classification, information domain, and knowledge tier declared. |
| 6 | Security controls and least-privilege model defined. |
| 7 | Test plan includes happy path, unhappy path, authorization failure, idempotency/retry, and error evidence. |
| 8 | Observability requirements include traces, metrics, logs, dashboard, alerts, and audit evidence. |
| 9 | Rollback, compensation, feature flag, or forward-fix plan exists. |
| 10 | Dependencies and blockers are tracked with owners and target dates. |
| 11 | Required ADR/TDL/waiver records are created before merge. |
| 12 | Acceptance criteria are measurable and linked to evidence. |
| 13 | No real PII, secrets, raw documents, or restricted data are used in tests/prompts/logs. |
| 14 | AI involvement, if any, is declared and governed by LiteLLM, guardrails, Harness, SBAC, OPA, and human approval as applicable. |
| 15 | Module readiness review is completed and sign-off recorded. |

## Appendix D. Document AVCI Compliance Summary

| **AVCI Property** | **How This Document Satisfies It** |
| --- | --- |
| Attributable | Owned by the Solutions Architecture Office / IT Head with co-owners across software development, DevSecOps, QA, security, and database administration. Document ID and version are explicit. |
| Verifiable | Module gates, acceptance criteria, RACI, Sprint-0 controls, evidence requirements, and release sign-off criteria provide testable verification paths. |
| Classifiable | Classified INTERNAL CONFIDENTIAL. Backlog metadata requires data classification, information domain, knowledge tier, and handling rules. |
| Improvable | Bi-weekly review during MVP and quarterly review after baseline acceptance. Risks, defects, lessons learned, and Auto-Improve findings feed controlled backlog updates. |

| **Final Governance Position**<br>This backlog pack makes MVP delivery actionable without lowering the AIRA governance bar. The team may move fast only through discipline: ready stories, clear ownership, tested boundaries, governed AI, evidence-producing pipelines, and AVCI always. |
| --- |
