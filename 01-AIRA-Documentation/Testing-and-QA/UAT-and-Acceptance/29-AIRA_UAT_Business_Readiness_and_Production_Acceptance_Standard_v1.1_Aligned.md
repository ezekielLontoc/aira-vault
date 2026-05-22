---
document_id: "AIRA-DOC-029"
title: "AIRA UAT Business Readiness and Production Acceptance Standard"
version: "v1.1"
status: "aligned"
source_file: "29-AIRA_UAT_Business_Readiness_and_Production_Acceptance_Standard_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Testing-and-QA/UAT-and-Acceptance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - acceptance-criteria
  - uat
---

# AIRA UAT Business Readiness and Production Acceptance Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA UAT, Business Readiness, and Production Acceptance Standard**

_UAT Evidence | Business Sign-Off | Production Readiness | Acceptance Gates_

**v1.1 - Pack 03 v1.2 Alignment and Java 25 Readiness Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-029** |
| **Document Title** | **AIRA UAT, Business Readiness, and Production Acceptance Standard** |
| **Document Version** | **v1.1 - Pack 03 v1.2 Alignment and Java 25 Readiness Update** |
| **Supersedes** | **29-AIRA_UAT_Business_Readiness_and_Production_Acceptance_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Business readiness baseline** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines UAT, business readiness, production acceptance, exit criteria, and sign-off evidence.

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

Added Java 25 backend runtime evidence as part of technical readiness where backend services are in scope.

Aligned acceptance gates with MVP readiness 25A, CI/CD evidence 20, release governance 30, and operations readiness 31.

Clarified that business acceptance requires classification, rollback, support, training, monitoring, and evidence completeness.

Reinforced that delivery pressure cannot lower the AVCI, security, test, and production readiness gates.

Updated Pack 01 and Pack 02 companion references to the aligned v1.2 individual document set.

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

**AI-Native Enterprise Platform**

**UAT, Business Readiness, and Production Acceptance Standard**

_User Acceptance Discipline · Business Sign-Off · Go/No-Go Governance · Evidence-Ready Production Acceptance_

**Version 1.0 · April 2026 · CONFIDENTIAL**

| **Mandatory Practice Statement**<br>No AIRA release, MVP increment, module, workflow, MicroFunction, AI capability, data migration, integration, or production change may be accepted by the business or promoted toward production unless UAT readiness, business readiness, production acceptance, security/classification evidence, rollback or rework path, and AVCI traceability have been proven and signed by named accountable owners. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-029 |
| Document Title | AIRA UAT, Business Readiness, and Production Acceptance Standard |
| Version | v1.0 - Initial Production Acceptance Baseline |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / BUSINESS READINESS APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | Product Owner; Business Process Owner; QA Lead; DevSecOps Lead; Security Administrator; DBA; Internal Audit; Compliance |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | At every MVP/release gate; quarterly; and on material business, architecture, regulatory, security, or production-readiness change |
| Primary Audience | Solutions Architect / IT Head, Product Owner, Business SMEs, Software Development Lead, QA/SDET, DevSecOps, Security, DBA, SRE, Compliance, Internal Audit, Release/CAB members |
| Companion Documents | 01 AVCI Engineering Standard; 01A Enterprise Design Principles and SOLID Enforcement Layer; 02 Engineering Blueprint; 03 Developer Guide; 04 Technology Stack; 08 Unit Testing Standard; 10 MicroFunction Framework; 11 DevSecOps Standard; 15 API Contract Standard; 16 Database Standard; 17 Security Standard; 20 CI/CD Evidence Pack; 23 Architecture Fitness Function Catalog; 24 Operations/Auto-Heal Runbook; 25 MVP Backlog and Acceptance Pack; 26 Data Classification, Retention, and Evidence Register; 27 Developer Onboarding Workbook; 28 Enterprise Design Principles Reference Library |
| Evidence Path | OpenKM Tier-0 / AIRA / Evidence / UAT-Production-Acceptance / v1.0/ |

**Table of Contents**

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Production Acceptance Philosophy

## 4. End-to-End Acceptance Operating Model

## 5. UAT Readiness Gate

## 6. UAT Planning, Scenario Design, and Test Data

## 7. UAT Execution and Evidence Capture

## 8. Defect, Issue, Risk, and Rework Management

## 9. Business Readiness Gate

## 10. Production Acceptance Gate

## 11. Go/No-Go Decision Model

## 12. Release Acceptance Evidence Pack

## 13. Roles, RACI, and Separation of Duties

## 14. Architecture, Security, Data, and AI Acceptance Controls

## 15. Zammad Ticketing, Service Transition, and Hypercare

## 16. Metrics, Quality Thresholds, and Exit Criteria

## 17. Templates and Appendices

## 18. AVCI Compliance Summary

## 1. Executive Summary

This standard defines how AIRA moves from development completion to business validation, UAT acceptance, controlled production-readiness review, and final go/no-go decision. It converts the AIRA MVP backlog, CI/CD evidence, data classification register, security standards, operations runbooks, and architecture fitness functions into one formal acceptance discipline for business and technical stakeholders.

The objective is not only to confirm that a feature works. The objective is to prove that the feature is business-valid, secure, testable, observable, reversible, classification-compliant, supported, and ready for controlled operation under AVCI.

| **AIRA Acceptance Rule**<br>AIRA does not treat UAT as a late-stage user demo. UAT is a governed evidence-producing process that validates business outcomes, control behaviour, security handling, workflow accountability, operational supportability, and production acceptance readiness. |
| --- |

| **Strategic Outcome** | **Required Result** |
| --- | --- |
| Business validation | Business owners can confirm that the solution supports the intended process, decision, control, and customer/business outcome. |
| Controlled production readiness | Architecture, security, data, operational, support, and release controls are verified before go/no-go. |
| Audit-ready acceptance | Each accepted scenario links to story, contract, code, tests, CI evidence, runtime evidence, defects, sign-off, and improvement items. |
| Safe AI-native delivery | AI summaries, model outputs, prompt usage, retrieval packs, and agent-assisted actions are validated with guardrails, model-route evidence, human accountability, and classification controls. |
| Reversible deployment posture | Rollback, compensation, reprocess, feature-flag disablement, or forward-fix plan exists before production acceptance. |

### 1.1 Non-Negotiable Acceptance Position

A business demo is not UAT unless scenarios, expected outcomes, evidence, defects, and sign-off are recorded.

A passing pipeline is not production acceptance unless business, security, data, operational, and support readiness are also verified.

A UAT sign-off is not valid if test data, classification, defects, or evidence gaps are unresolved.

A release may be small, but it must still satisfy AVCI, 01A design principles, security, testability, observability, reversibility, and human accountability.

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

Define UAT entry, execution, exit, defect handling, and sign-off requirements.

Define business readiness requirements before production go-live.

Define production acceptance gates for release, deployment, service transition, support, monitoring, and rollback readiness.

Establish evidence pack requirements for MVP increments, releases, modules, AI capabilities, MicroFunction transactions, workflows, and integrations.

Clarify RACI, separation of duties, and go/no-go authority.

### 2.2 In Scope

MVP and production candidate releases.

Business-facing modules, workflows, APIs, MicroFunction transactions, integrations, data functions, AI-assisted summaries, retrieval/evidence packs, and dashboard/reporting capabilities.

UAT test scenarios, synthetic or approved UAT data, defect triage, sign-off, readiness records, and acceptance evidence.

Production release acceptance, operational handover, Zammad ticketing setup, monitoring, hypercare, support model, rollback/recovery plan, and post-implementation review.

### 2.3 Out of Scope

Detailed coding standards, which remain governed by the Developer Guide and related implementation standards.

Full disaster recovery and business continuity procedure, except for release-level rollback, restore, and rework readiness.

HR training and performance management, except where business readiness training evidence is required.

Final legal/regulatory interpretation, which remains with Compliance, Legal, or executive risk authority.

### 2.4 Authority and Precedence

| **Authority Level** | **Source** | **Acceptance Impact** |
| --- | --- | --- |
| L0 | Regulatory / Legal / Executive Risk Decision | Can block, extend, or condition acceptance regardless of local project approval. |
| L1 | Architecture Board / Engineering Blueprint | Controls service boundaries, architecture invariants, workflow partition, AI execution boundaries, and production-readiness posture. |
| L1 | AVCI and 01A Enterprise Design Principles | Acceptance is invalid if evidence, design-principle compliance, classification, security, testability, or reversibility is missing. |
| L2 | Security, Data, API, Database, DevSecOps, CI/CD, Operations Standards | Define specialist acceptance gates and evidence requirements. |
| L3 | This Standard | Defines UAT, business readiness, production acceptance, sign-off, and go/no-go discipline. |
| L4 | Tickets, PRs/MRs, Zammad records, test runs, demo records, sign-off forms | Execution-level proof and audit trail. |

## 3. Production Acceptance Philosophy

AIRA follows a controlled acceptance philosophy: build small, validate deeply, evidence everything, and promote only when business, engineering, security, data, and operations can jointly defend the release.

| **Principle** | **Acceptance Meaning** |
| --- | --- |
| Business-value first | Acceptance must prove a usable business outcome, not merely technical completion. |
| Evidence before sign-off | Sign-off must reference test results, defects, trace IDs, audit records, CI evidence, and readiness records. |
| Fail-safe acceptance | When evidence is incomplete or a control result is unknown, the decision is Rework or Conditional, not silent approval. |
| Human accountability | Business owners accept business behaviour; technical owners accept technical readiness; AI never signs off. |
| Separation of duties | The builder cannot be the sole approver of UAT, security, production readiness, or release acceptance. |
| Reversibility by design | Every production candidate has a rollback, compensation, disablement, or forward-fix path. |
| Progressive autonomy | AI-assisted acceptance evidence may support review, but automated promotion is limited by trust, policy, and human approval gates. |

## 4. End-to-End Acceptance Operating Model

| **Operating Flow**<br>Development completion -> QA verification -> UAT readiness -> UAT execution -> defect disposition -> business readiness -> production acceptance -> CAB/go-no-go -> deployment -> hypercare -> post-implementation review. |
| --- |

| **Stage** | **Purpose** | **Primary Evidence** | **Decision** |
| --- | --- | --- | --- |
| A1 Development Complete | Confirm story/module meets Definition of Done before UAT. | PR/MR, CI run, test evidence, security scans, architecture fitness results. | Ready for QA / Return to Build |
| A2 QA Verification | Confirm test coverage, negative paths, integration behaviour, and evidence completeness. | QA test report, defect log, coverage, contract/e2e/security results. | Ready for UAT / Rework |
| A3 UAT Readiness | Confirm business scenarios, data, users, environment, support, and acceptance criteria are ready. | UAT plan, scripts, data set, readiness checklist. | Start UAT / Hold |
| A4 UAT Execution | Business validates scenarios and records results. | Scenario results, screenshots, trace IDs, observations, defects. | Accepted / Rework / Deferred |
| A5 Business Readiness | Confirm users, process, SOPs, training, support, and communications are ready. | Training records, SOPs, Zammad queues, go-live comms, support contacts. | Ready / Conditional / Not Ready |
| A6 Production Acceptance | Confirm release, security, data, operations, rollback, monitoring, and CAB evidence. | Release evidence pack, runbook, rollback proof, monitoring checks. | Go / Conditional Go / No-Go |
| A7 Hypercare and PIR | Monitor stabilization and capture lessons learned. | Zammad metrics, incident/rework log, PIR report, improvement backlog. | Close / Extend Hypercare / Rollback |

## 5. UAT Readiness Gate

UAT must not begin until the readiness gate passes. Starting UAT without environment stability, test data, business scenarios, and evidence paths produces unreliable sign-off and avoidable rework.

| **Gate ID** | **Readiness Requirement** | **Minimum Evidence** | **Owner** | **Failure Action** |
| --- | --- | --- | --- | --- |
| UAT-R01 | Approved UAT scope and scenario list | UAT scope record and mapped stories/acceptance criteria | Product Owner | Hold UAT |
| UAT-R02 | Business owner and SMEs assigned | Named participant list and availability window | Business Process Owner | Hold UAT |
| UAT-R03 | UAT environment controlled and stable | Environment readiness report and deployment version | DevSecOps/SRE | Hold UAT |
| UAT-R04 | UAT data approved and classified | Synthetic/approved UAT data register and classification evidence | Data Governance/Security | Hold or restrict scenarios |
| UAT-R05 | All Must criteria passed in QA | QA report and defect status | QA Lead | Return to build/QA |
| UAT-R06 | No open Sev-1/Sev-2 defects | Defect register | QA Lead/Product Owner | Block UAT |
| UAT-R07 | Security and access ready | User roles, SBAC, OPA policy, and access test evidence | Security Administrator | Hold affected scenarios |
| UAT-R08 | Evidence capture mechanism ready | Trace/audit/log/evidence path validation | DevSecOps/QA | Hold UAT |
| UAT-R09 | Support process prepared | Zammad project/queues/categories and escalation contacts | Service Owner | Conditional or hold |
| UAT-R10 | Rollback/rework path documented | Rollback, compensation, feature flag, or rework plan | DevSecOps/Tech Lead | Block production acceptance |

## 6. UAT Planning, Scenario Design, and Test Data

### 6.1 UAT Plan Contents

UAT objective and release/module scope.

Business process covered and process owner.

Scenario list mapped to epics, stories, acceptance criteria, APIs/events, data, workflows, and MicroFunction definitions.

User roles, skills, permissions, and separation-of-duties constraints.

Test data set with classification, source, masking/synthetic status, retention rule, and disposal procedure.

Entry/exit criteria, defect severity definitions, escalation rules, and sign-off authority.

Evidence capture method: screenshots, screen recordings if approved, trace IDs, audit IDs, Zammad ticket IDs, workflow IDs, model-call IDs, and runtime logs.

### 6.2 Scenario Design Standard

| **Scenario Type** | **Required Coverage** |
| --- | --- |
| Happy path | Standard business completion path with correct role, valid data, expected workflow, and expected result. |
| Negative path | Invalid input, missing data, duplicate submission, unauthorized role, policy denial, timeout, downstream failure. |
| Boundary path | Limits, thresholds, required approvals, SLA timers, monetary precision, data-size/file-size limits. |
| Security/classification path | Access denied, masked display, log redaction, model-route restriction, evidence retention. |
| Workflow path | Approval, rejection, return-for-rework, escalation, exception, timeout, compensation. |
| Recovery path | Replay, reprocess, rollback, feature disablement, DLQ handling, reconciliation. |
| AI path where applicable | Grounded response, citations, prompt eligibility, guardrails, model alias, confidence, human approval. |

### 6.3 UAT Data Rules

Use synthetic data by default.

Use masked or approved UAT data only when synthetic data cannot validate the business scenario.

Do not use raw production PII, secrets, credentials, privileged logs, or restricted customer data without formal approval and handling evidence.

Every data set must have owner, classification, purpose, retention rule, access policy, evidence path, and disposal or refresh plan.

AI prompt usage over UAT data must follow the Data Classification, Retention, and Evidence Register and must fail closed when eligibility is unknown.

## 7. UAT Execution and Evidence Capture

| **Execution Step** | **Required Action** | **Evidence Captured** |
| --- | --- | --- |
| Start session | Identify UAT tester, role, scenario, build/release version, and data set. | UAT run ID, tester, timestamp, environment, version. |
| Execute step | Tester performs each scripted action and records actual outcome. | Screenshot or approved record, action result, trace_id. |
| Validate expected result | Tester compares system output to expected result. | Pass/fail, comments, output references. |
| Record evidence | Capture trace, audit, workflow, event, and Zammad references where applicable. | Audit ID, workflow ID, event ID, Zammad ID. |
| Raise defect/issue | Create defect or observation when outcome differs or evidence is missing. | Defect ID, severity, owner, reproduction steps. |
| Business decision | Scenario owner marks Accepted, Accepted with Defect, Rework, Deferred, or Rejected. | Scenario sign-off and conditions. |

| **Evidence Minimum**<br>A UAT result without evidence reference is only an opinion. AIRA UAT results must be tied to scenario ID, tester, role, data set, expected result, actual result, build version, trace/audit evidence, defect status, and business decision. |
| --- |

## 8. Defect, Issue, Risk, and Rework Management

### 8.1 Defect Severity Model

| **Severity** | **Definition** | **Release Impact** | **Required Response** |
| --- | --- | --- | --- |
| Sev-1 Critical | System unavailable, data corruption, security breach, illegal/unsafe outcome, irreversible business impact. | Blocks UAT exit and production acceptance. | Immediate triage; executive escalation; no go-live. |
| Sev-2 High | Core scenario fails, incorrect decision/result, control failure, unapproved access, missing critical evidence. | Blocks UAT exit unless formally descoped or mitigated. | Fix or approved risk acceptance with CAB review. |
| Sev-3 Medium | Scenario works with workaround or non-critical defect; evidence gap manageable. | May allow conditional acceptance if business and QA approve. | Fix before production or include dated condition. |
| Sev-4 Low | Cosmetic, wording, minor usability, non-blocking reporting issue. | Does not block UAT exit unless cumulative risk is high. | Backlog for next sprint/release. |
| Observation | Question, enhancement, process gap, training issue, or improvement candidate. | Does not block unless converted to defect/risk. | Log as improvement or training action. |

### 8.2 Zammad Ticketing Rules

All UAT defects, business observations, support-readiness gaps, and hypercare issues must be logged in Zammad or the approved AIRA ticketing workflow.

Ticket categories must separate defect, change request, access issue, data issue, training issue, production incident, and improvement candidate.

Every ticket must reference release/module, scenario ID, severity, classification, owner, expected outcome, actual outcome, evidence references, and target resolution date.

No ticket = no production-impacting work, except approved emergency break-glass actions that are backfilled with evidence and review.

## 9. Business Readiness Gate

Business readiness confirms that people, process, controls, training, communications, support channels, and operating procedures are ready. It is separate from technical production readiness.

| **Gate ID** | **Business Readiness Requirement** | **Evidence** | **Owner** |
| --- | --- | --- | --- |
| BRG-01 | Business process owner confirms target process and operating procedure. | Approved SOP/process note | Business Process Owner |
| BRG-02 | Affected users are trained or briefed. | Training attendance, guide, FAQ, acknowledgement | Product Owner / Business SME |
| BRG-03 | Role, access, and approval matrix is approved. | Role/SBAC catalog and access-test evidence | Security / Business Owner |
| BRG-04 | UAT sign-off completed with conditions closed or accepted. | Signed UAT result and defect disposition | Product Owner / QA Lead |
| BRG-05 | Support and escalation path is ready. | Zammad queue, SLA, support contacts, escalation matrix | Service Owner |
| BRG-06 | Go-live communication prepared. | Communication plan and announcement template | Product Owner |
| BRG-07 | Manual workaround or fallback process documented. | Fallback procedure and owner | Business Process Owner |
| BRG-08 | Known limitations acknowledged. | Known issue list and acceptance conditions | Product Owner / Business Owner |

## 10. Production Acceptance Gate

Production acceptance confirms that the release can be deployed, monitored, supported, secured, and reversed or repaired. It is the technical and operational counterpart to business readiness.

| **Gate ID** | **Production Acceptance Requirement** | **Evidence** | **Owner** |
| --- | --- | --- | --- |
| PAG-01 | Release scope and version frozen. | Release manifest, tag, artifact digest | Release Manager / DevSecOps |
| PAG-02 | CI/CD gates passed. | Pipeline evidence pack, SBOM, signatures, scans | DevSecOps |
| PAG-03 | Architecture fitness functions passed. | AFF report and waiver register if any | Solutions Architect |
| PAG-04 | Security and classification gates passed. | SAST/SCA/secret/DAST/OPA/SBAC/model-route evidence | Security Administrator |
| PAG-05 | Database migrations reviewed and tested. | Flyway report, backup/restore note, forward-fix plan | DBA |
| PAG-06 | API/event contracts registered and compatible. | OpenAPI/AsyncAPI compatibility results | Tech Lead / QA |
| PAG-07 | Observability dashboards and alerts ready. | Grafana/SigNoz/OTel/log/audit evidence | SRE / DevSecOps |
| PAG-08 | SIEM/SOAR integration ready where applicable. | Wazuh alert path, TheHive/Cortex response evidence | Security Operations |
| PAG-09 | Runbooks and support handover complete. | Operations runbook, Zammad categories, escalation rules | Service Owner |
| PAG-10 | Rollback/recovery tested or rehearsed. | Rollback, reprocess, compensation, restore, or feature-disable evidence | DevSecOps / SRE |
| PAG-11 | CAB/go-no-go pack complete. | Go/no-go checklist, risk register, sign-offs | Release Manager |
| PAG-12 | Hypercare plan approved. | Hypercare schedule, monitoring, owners, daily review plan | Product Owner / Service Owner |

## 11. Go/No-Go Decision Model

| **Decision** | **Meaning** | **Allowed When** | **Required Action** |
| --- | --- | --- | --- |
| Go | Release may proceed as planned. | All critical gates pass; no Sev-1/Sev-2; conditions are closed or accepted. | Execute deployment and hypercare plan. |
| Conditional Go | Release may proceed with explicit conditions. | Only low/medium accepted risks remain; business and technical owners approve conditions. | Track conditions in Zammad and CAB record with due dates. |
| No-Go | Release must not proceed. | Critical evidence missing; Sev-1/Sev-2 unresolved; security/data/rollback readiness fails; business not ready. | Return to rework and reschedule release. |
| Defer | Scope or module is moved to a later release. | Business priority, dependency, readiness, or risk posture requires deferral. | Update backlog, release notes, and stakeholder communications. |
| Rollback/Backout | Release is reversed after deployment. | Production outcome violates acceptance threshold or risk trigger fires. | Execute rollback plan, create incident, run PIR. |

| **No-Go Triggers**<br>Automatic No-Go is required when restricted data handling is unresolved, cloud prompt route is incorrectly used for restricted content, evidence pack is incomplete for a critical scenario, rollback path is absent, production secrets are exposed, Sev-1/Sev-2 defects remain unresolved, or business owner refuses acceptance. |
| --- |

## 12. Release Acceptance Evidence Pack

| **Evidence Category** | **Required Contents** | **Storage / Link** |
| --- | --- | --- |
| Business evidence | UAT plan, scenario results, sign-off, accepted conditions, known limitations. | OpenKM / AIRA / Evidence / UAT / <release>/ |
| Traceability evidence | Business outcome -> epic -> story -> acceptance criteria -> contract/data/config -> code -> tests -> CI -> runtime -> UAT result. | Traceability matrix and evidence manifest. |
| Build/release evidence | CI/CD run, SBOM, artifact digest, image signature, SLSA/provenance, release manifest. | CI evidence store + OpenKM release folder. |
| Test evidence | Unit, component, integration, contract, E2E, security, performance baseline, AI eval where applicable. | QA evidence pack. |
| Security evidence | Access tests, OPA/SBAC decisions, scan results, Wazuh/SIEM alert path, secrets hygiene, classification checks. | Security evidence store. |
| Data evidence | Migration report, data classification, retention, RLS/ACL checks, reconciliation results, backup/restore notes. | Database/evidence register. |
| AI evidence | Prompt version, model alias, route policy, guardrail results, retrieval pack, output hash, human approval. | AI registry and audit store. |
| Operations evidence | Runbook, Zammad setup, dashboards, alerts, rollback/recovery, on-call/hypercare plan. | Operations evidence folder. |
| Approval evidence | Business owner, Product Owner, QA, Security, DBA, DevSecOps, Architecture, CAB decisions. | Signed acceptance record. |

## 13. Roles, RACI, and Separation of Duties

| **Activity** | **Solutions Architect** | **Product Owner** | **Business Owner/SME** | **QA Lead** | **Dev Lead** | **DevSecOps/SRE** | **Security** | **DBA** | **CAB/Release** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| UAT scope approval | C | A/R | R | C | C | C | C | C | I |
| UAT scenario design | C | A/R | R | R | C | I | C | C | I |
| UAT execution | I | A | R | R | I | I | C | C | I |
| Defect triage | C | A | R | R | R | C | C | C | I |
| Business readiness sign-off | C | A/R | A/R | C | I | C | C | I | I |
| Security/classification acceptance | C | C | C | C | C | C | A/R | C | I |
| Data/migration acceptance | C | C | C | C | C | C | C | A/R | I |
| Production readiness | A/R | C | C | C | R | A/R | R | R | C |
| Go/No-Go decision | A | R | R | R | R | R | R | R | A/R |
| Post-implementation review | A/R | R | C | R | R | R | R | C | C |

Legend: A = Accountable, R = Responsible, C = Consulted, I = Informed. Separation of duties requires that the implementation owner cannot be the sole approver for UAT acceptance, production acceptance, or security/data risk acceptance.

## 14. Architecture, Security, Data, and AI Acceptance Controls

| **Control Area** | **Acceptance Requirement** |
| --- | --- |
| SOLID / Clean Architecture / DDD | No unacceptable boundary violation, god service, direct persistence leakage, direct model/provider call, or hardcoded workflow shortcut. |
| Ports and Adapters | External systems, OpenKM, Kafka, AI gateway, identity, and databases are accessed through approved ports/adapters. |
| Idempotency and Resilience | Mutating operations have idempotency, retry/timeout/circuit breaker, safe error response, and compensation where needed. |
| Determinism and Testability | Critical logic is deterministic, testable, covered by automated tests, and not dependent on uncontrolled time/random/network state. |
| Secure by Design | Authentication, authorization, classification, secrets, policy-as-code, and least privilege are validated before production acceptance. |
| Observability by Design | OpenTelemetry traces, logs, metrics, audit records, dashboards, alerting, Wazuh SIEM integration, and SigNoz/APM evidence are ready. |
| AI Governance | LiteLLM routing, NeMo guardrails, prompt registry, model alias, retrieval citation, output classification, and human approval are evidenced. |
| Reversibility | Rollback, reprocess, compensation, disablement, restore, or forward-fix path exists and is rehearsed when risk requires it. |
| AVCI | Every acceptance artifact identifies owner, evidence, classification, and improvement path. |

## 15. Zammad Ticketing, Service Transition, and Hypercare

Create Zammad groups or queues for AIRA UAT, AIRA Production Support, AIRA Security, AIRA Data/DBA, and AIRA DevSecOps where operationally appropriate.

Define ticket categories: defect, access, data issue, workflow issue, AI output issue, integration issue, performance issue, incident, service request, change request, enhancement, and training issue.

Map severity to SLA target and escalation path before go-live.

During hypercare, review Zammad tickets daily, classify recurring issues, and route improvement candidates into the backlog.

Security incidents or suspected control failures must create linked records in Wazuh/TheHive/Cortex or the approved security operations workflow, not only a normal support ticket.

| **Hypercare Metric** | **Minimum Review Cadence** | **Action Threshold** |
| --- | --- | --- |
| Open Sev-1/Sev-2 tickets | Daily | Immediate escalation; possible rollback/backout decision. |
| Repeated user error/training issue | Daily during first week | Issue user guidance, FAQ update, or focused training. |
| Failed workflow/transaction count | Daily | Run reconciliation and root-cause review. |
| AI blocked/unsafe output count | Daily for AI-enabled modules | Review prompt/guardrail/model-route configuration. |
| Performance or availability alerts | Daily and real-time for critical services | SRE triage; capacity or configuration action. |
| Evidence gaps | Daily during hypercare | Complete evidence or create remediation task. |

## 16. Metrics, Quality Thresholds, and Exit Criteria

| **Category** | **Minimum Threshold / Exit Rule** |
| --- | --- |
| UAT scenario pass rate | 100% of Must scenarios pass or are formally descoped/accepted with risk. |
| Critical defects | No open Sev-1 or Sev-2 before production acceptance. |
| Evidence completeness | 100% for Must stories/modules and all production-impacting controls. |
| Security gate | No unresolved critical/high findings without approved risk acceptance and compensating controls. |
| Data gate | Migration, classification, retention, ACL/RLS, and backup/restore evidence complete. |
| Performance baseline | Baseline captured; no uncontrolled external latency or critical SLO violation. |
| Operational readiness | Runbook, dashboards, alerts, Zammad, escalation, and hypercare plan approved. |
| Business readiness | Training, SOPs, communication, fallback, and known limitations accepted. |
| AI safety | Guardrails, route, prompt, citations, output classification, and human approval evidence complete for AI-enabled features. |

## 17. Templates and Appendices

### Appendix A. UAT Scenario Template

| **Field** | **Entry** |
| --- | --- |
| Scenario ID |  |
| Release / Module |  |
| Business Process |  |
| Business Owner |  |
| Tester / Role |  |
| Classification |  |
| Preconditions |  |
| Test Data Reference |  |
| Steps and Expected Results |  |
| Evidence to Capture |  |
| Pass / Fail / Conditional |  |
| Defect / Zammad IDs |  |
| Business Decision |  |
| Approver / Date |  |

### Appendix B. Business Readiness Sign-Off Template

| **Field** | **Entry** |
| --- | --- |
| Release / Module |  |
| Business Owner |  |
| Product Owner |  |
| SOP / Process Guide Reference |  |
| Training Completed | Yes / No / N/A |
| Access Matrix Approved | Yes / No |
| Support Channel Ready | Yes / No |
| Known Limitations Accepted |  |
| Fallback / Manual Workaround |  |
| Decision | Ready / Conditional / Not Ready |
| Conditions |  |
| Signature / Date |  |

### Appendix C. Production Acceptance Checklist

| **Gate** | **Pass / Fail / N/A** | **Evidence Reference** | **Owner** |
| --- | --- | --- | --- |
| Release manifest and version freeze |  |  |  |
| CI/CD evidence pack complete |  |  |  |
| Architecture fitness checks pass |  |  |  |
| Security/classification gates pass |  |  |  |
| Database migration and restore evidence complete |  |  |  |
| API/event compatibility confirmed |  |  |  |
| Observability dashboards and alerts ready |  |  |  |
| Wazuh/SIEM and TheHive/Cortex path ready where applicable |  |  |  |
| Zammad support queues and categories ready |  |  |  |
| Rollback/recovery rehearsed or approved |  |  |  |
| Business readiness signed |  |  |  |
| CAB decision recorded |  |  |  |

### Appendix D. Go/No-Go Decision Record

| **Field** | **Entry** |
| --- | --- |
| Release ID |  |
| Decision Date / Time |  |
| Decision | Go / Conditional Go / No-Go / Defer |
| Business Acceptance Summary |  |
| Technical Readiness Summary |  |
| Security/Data Risk Summary |  |
| Open Defects / Accepted Conditions |  |
| Rollback / Recovery Path |  |
| Hypercare Plan Reference |  |
| Approvers | Business Owner; Product Owner; QA; Security; DBA; DevSecOps; Architecture; CAB |
| Final Notes |  |

### Appendix E. YAML Acceptance Record Template

acceptance_record_id: ACC-2026-000001
release_id: REL-2026-0001
module: document-intake
classification: Confidential
business_owner: ""
product_owner: ""
technical_owner: ""
uat:
 plan_ref: ""
 scenario_results: []
 defects: []
 decision: "Accepted | Accepted with Conditions | Rework | Deferred | Rejected"
production_acceptance:
 ci_evidence_ref: ""
 security_evidence_ref: ""
 data_evidence_ref: ""
 operations_evidence_ref: ""
 rollback_evidence_ref: ""
 go_no_go_decision: "Go | Conditional Go | No-Go | Defer"
hypercare:
 zammad_queue: ""
 start_date: "YYYY-MM-DD"
 end_date: "YYYY-MM-DD"
 review_cadence: "daily"
avci:
 attributable: "owner and approval evidence"
 verifiable: "test, CI, runtime, and UAT evidence"
 classifiable: "classification and handling evidence"
 improvable: "defects, lessons learned, and backlog references"

### Appendix F. Copy-Ready Mermaid References

#### F.1 UAT to Production Acceptance Flow

flowchart LR
 DEV[Development Complete] --> QA[QA Verification]
 QA --> UATR[UAT Readiness Gate]
 UATR --> UAT[UAT Execution]
 UAT --> DEF[Defect / Rework Triage]
 DEF -->|Rework| DEV
 DEF -->|Accepted| BR[Business Readiness]
 BR --> PA[Production Acceptance]
 PA --> CAB[CAB / Go-No-Go]
 CAB -->|Go| DEPLOY[Deploy]
 CAB -->|No-Go| DEV
 DEPLOY --> HYPER[Hypercare]
 HYPER --> PIR[Post-Implementation Review]

#### F.2 Evidence Traceability Flow

flowchart TD
 BO[Business Outcome] --> EP[Epic / Story]
 EP --> AC[Acceptance Criteria]
 AC --> CT[Contract / Data / MicroFunction Config]
 CT --> CODE[Code / PR]
 CODE --> TEST[Test Evidence]
 TEST --> CI[CI/CD Evidence Pack]
 CI --> RT[Runtime Trace / Audit]
 RT --> UAT[UAT Result]
 UAT --> GO[Go-No-Go Decision]
 GO --> IMP[Improvement Backlog]

#### F.3 Defect and Ticket Flow

flowchart LR
 FAIL[Scenario Failure or Evidence Gap] --> ZAM[Create Zammad Ticket]
 ZAM --> TRIAGE[Severity and Classification Triage]
 TRIAGE -->|Sev-1/2| BLOCK[Block UAT Exit / Go-Live]
 TRIAGE -->|Sev-3/4| COND[Condition or Backlog]
 BLOCK --> FIX[Fix / Retest]
 COND --> ACCEPT[Accepted Condition]
 FIX --> EVID[Update Evidence Pack]
 ACCEPT --> EVID

## 18. AVCI Compliance Summary

| **AVCI Property** | **Compliance Statement** |
| --- | --- |
| Attributable | Every UAT scenario, readiness gate, defect, go/no-go decision, production acceptance record, and hypercare issue has a named owner, approver, timestamp, and evidence reference. |
| Verifiable | Acceptance requires test reports, CI/CD evidence, runtime trace/audit evidence, scenario results, security/data evidence, rollback/recovery proof, and signed business/technical decisions. |
| Classifiable | UAT data, business scenarios, evidence packs, tickets, AI outputs, logs, and operational records carry classification and handling rules. |
| Improvable | Defects, UAT feedback, hypercare tickets, incidents, support trends, and post-implementation findings are routed to improvement backlog, Auto-Learn candidates, or controlled standards updates. |

| **Final Control Statement**<br>AIRA production acceptance is granted only when business readiness, UAT exit criteria, production readiness, security/classification controls, operational supportability, rollback/recovery readiness, and AVCI evidence are complete. Delivery pressure does not lower the acceptance gate. |
| --- |

**AIRA | Discipline First · Automation Second · Intelligence Third · AVCI Always**
