---
document_id: "AIRA-DOC-030"
title: "AIRA Release Deployment Change and CAB Governance Standard"
version: "v1.1"
status: "aligned"
source_file: "30-AIRA_Release_Deployment_Change_and_CAB_Governance_Standard_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/DevSecOps/Release-Change-CAB"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - release-management
  - deployment
  - cab-governance
  - devsecops
---

# AIRA Release Deployment Change and CAB Governance Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Release, Deployment, Change, and CAB Governance Standard**

_Release Governance | GitOps Promotion | CAB Discipline | Rollback Readiness | Evidence-by-Construction_

**v1.1 - Pack 03 v1.2 Alignment and Java 25 Release Evidence Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-030** |
| **Document Title** | **AIRA Release, Deployment, Change, and CAB Governance Standard** |
| **Document Version** | **v1.1 - Pack 03 v1.2 Alignment and Java 25 Release Evidence Update** |
| **Supersedes** | **30-AIRA_Release_Deployment_Change_and_CAB_Governance_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Release governance baseline** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines release governance, deployment controls, change classification, CAB workflow, evidence, and rollback/forward-fix expectations.

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

Added Java 25 build/runtime evidence to standard release evidence packs for backend deployments.

Aligned deployment gates with Argo CD/GitOps-only promotion, no manual production mutation, and Pack 05 Flyway discipline.

Updated AI-related changes to include prompt, guardrail, model alias, Dograh voice flow, GitNexus index, and LiteLLM route changes.

Clarified that CAB approval must consider classification, rollback, observability, support readiness, and AVCI evidence.

Aligned companion references with Pack 01 v1.2, Pack 02 v1.2, and Pack 03 v1.2 numbering.

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
AI-Native Enterprise Platform

**Release, Deployment, Change, and CAB Governance Standard**

Release Governance · GitOps Promotion · CAB Discipline · Rollback Readiness · Evidence-by-Construction

| **Version 1.0 · April 2026 · INTERNAL CONFIDENTIAL**<br>Prepared for Architecture Review Board, Change Advisory Board, Software Development, DevSecOps, Security, QA, Operations, Compliance, and Internal Audit |
| --- |

| **Mandatory Practice Statement**<br>No AIRA release, deployment, configuration activation, database migration, model-route change, prompt/guardrail change, infrastructure change, or production-impacting remediation may proceed unless it is approved through the appropriate change path, supported by evidence, reversible or compensable, security-reviewed, traceable to a ticket/ADR, and compliant with AVCI and the Enterprise Design Principles & SOLID Enforcement Layer. |
| --- |

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-030 |
| Document Title | AIRA Release, Deployment, Change, and CAB Governance Standard |
| Version | v1.0 - Initial Release Governance Baseline |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | DevSecOps Lead; Software Development Lead; QA Lead; Security Administrator; SRE / Operations Lead; Compliance; Internal Audit |
| Effective Date | Upon Architecture Review Board and CAB approval |
| Review Cadence | Quarterly; unscheduled on material architecture, regulatory, security, deployment, AI model-routing, platform, or operational change |
| Primary Audience | Solutions Architect, Product Owner, Development Leads, DevSecOps, QA/SDET, Security, DBA, System Administrator, SRE, CAB members, Compliance, Internal Audit |
| Companion Documents | 01 AVCI; 01A Enterprise Design Principles and SOLID Enforcement Layer; 02 Engineering Blueprint; 03 Developer Guide; 04 Technology Stack; 08 Unit Testing; 10 MicroFunction documents; 11 DevSecOps; 14 ADR/TDL; 15 API Contract; 16 Database; 17 Security; 18 Repository Bootstrap; 20 CI/CD Evidence Pack; 21 Runtime Platform Runbook; 23 Architecture Fitness Function Catalog; 24 Operations/Auto-Heal Runbook; 25 MVP Pack; 26 Data Classification Register; 29 UAT and Production Acceptance Standard |
| Purpose | Define AIRA release governance, deployment controls, change classification, CAB workflow, evidence requirements, rollback/forward-fix expectations, emergency change handling, and production promotion gates. |

## Table of Contents

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Release and Change Governance Principles

## 4. Change Classification Model

## 5. Release Lifecycle and Gate Model

## 6. CAB Governance Model

## 7. Deployment and Environment Promotion Standard

## 8. Evidence Pack Requirements

## 9. Rollback, Forward-Fix, and Reversibility Controls

## 10. Emergency Change Procedure

## 11. AI, Prompt, Guardrail, Model Alias, and Auto-Heal Change Controls

## 12. Database, Configuration, and MicroFunction Change Controls

## 13. Ticketing, Traceability, and Zammad Workflow

## 14. Release Calendar, Freeze, and Communication Rules

## 15. Release Readiness Review and Go/No-Go Criteria

## 16. Post-Deployment Verification and Hypercare Transition

## 17. Metrics, Audit, and Compliance Evidence

## 18. RACI and Separation of Duties

## 19. Implementation Roadmap

## 20. Templates and Appendices

## 21. AVCI Compliance Summary

## 1. Executive Summary

This standard defines how AIRA releases are planned, approved, deployed, verified, and improved. It converts the AIRA engineering baseline into a formal release and change governance discipline suitable for mission-critical, regulated, AI-native enterprise delivery.

AIRA does not treat release management as a late-stage activity. Release readiness begins at backlog approval, continues through CI/CD evidence, architecture fitness checks, security validation, UAT sign-off, CAB approval, controlled deployment, post-deployment verification, and hypercare transition. The result is a release process that is safe, auditable, reversible, and continuously improvable.

| **Core Release Rule**<br>AIRA releases are not approved because code exists. They are approved because intent, design, implementation, verification, deployment, rollback, evidence, and ownership are complete. |
| --- |

| **Strategic Outcome** | **Required Result** |
| --- | --- |
| Controlled production promotion | Every release follows a declared change path with named owners, evidence, approvals, and post-deployment validation. |
| Reduced deployment risk | Changes are classified by impact, rehearsed in lower environments, gated by CI/CD, and reversible through rollback, forward-fix, or compensation. |
| Audit defensibility | Release evidence connects tickets, ADRs, code, build, test, security scans, approvals, deployment manifests, runtime traces, and CAB decision records. |
| Safe AI-native operations | Prompt, guardrail, model route, Auto-Heal, and agent-action changes follow the same release discipline as code and infrastructure. |
| Continuous improvement | Release outcomes, defects, incidents, and hypercare findings feed governed Auto-Learn and Auto-Improve backlog items. |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

This document establishes the mandatory governance standard for AIRA release planning, change approval, deployment execution, production promotion, rollback readiness, emergency change, and CAB decision-making.

### 2.2 In Scope

Application releases, hotfixes, patches, feature toggles, database migrations, runtime configurations, MicroFunction configuration activation, infrastructure and GitOps changes.

AI artifacts including prompt templates, guardrails, LiteLLM model aliases, routing rules, evaluation datasets, agent profiles, and Auto-Heal remediation proposals.

All environments from DEV, INT, UAT, STG, PROD, DR, and approved sandbox/lab environments where change can influence production-bound artifacts.

All release evidence including CI/CD outputs, SBOMs, signed provenance, test results, scans, architecture fitness results, UAT records, CAB approvals, deployment logs, and post-deployment validation.

### 2.3 Out of Scope

General HR approval unrelated to release or change authority.

Business training content, except where readiness evidence is required for production acceptance.

Physical data-center change procedures, except where those changes affect AIRA runtime, security, release, or recovery posture.

### 2.4 Authority and Precedence

| **Authority Level** | **Document / Control** | **Release Governance Role** |
| --- | --- | --- |
| L0 | Executive Risk / Regulatory / Architecture Board | Final authority for production risk acceptance and architecture conflicts. |
| L1 | AIRA Engineering Blueprint and DevSecOps Standard | Defines system boundaries, release lifecycle, CI/CD gates, and operating discipline. |
| L2 | AVCI and Enterprise Design Principles & SOLID Enforcement Layer | Defines production-readiness quality and non-negotiable design principles. |
| L2 | Security, Database, API, CI/CD Evidence, Runtime Runbook, Operations Runbook | Specialist controls that must be satisfied before release approval. |
| L3 | This Standard | Defines change types, CAB workflow, release gates, deployment governance, and evidence requirements. |
| L4 | Tickets, PRs/MRs, ADRs, pipeline runs, Zammad records, CAB minutes | Execution evidence and audit records. |

## 3. Release and Change Governance Principles

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| RCG-01 | AVCI by release | Every release artifact must have owner, source, verification evidence, classification, and improvement path. |
| RCG-02 | Git is the release source of truth | Code, configuration, policies, prompts, manifests, schemas, and infrastructure definitions are promoted from protected Git. |
| RCG-03 | Evidence before approval | CAB approval requires evidence, not assurances. Missing evidence means no production change. |
| RCG-04 | Fail-safe change | If identity, OPA, guardrails, Vault, audit, CI/CD evidence, or GitOps reconciliation is unavailable, protected promotion is blocked. |
| RCG-05 | Reversibility by design | Every production-impacting change must have rollback, forward-fix, compensation, or safe disablement strategy. |
| RCG-06 | Separation of duties | The same person or agent must not author, approve, deploy, and close high-risk production change alone. |
| RCG-07 | Human accountability | AI may draft release notes, risk analysis, scripts, or remediation proposals, but named humans approve and remain accountable. |
| RCG-08 | Classification-aware promotion | Data classification determines approval, logging, model routing, evidence retention, and deployment handling. |
| RCG-09 | No silent drift | Production runtime state must be explainable as a projection of approved Git, approved config, and approved operational workflow. |
| RCG-10 | Continuous learning under control | Post-release findings feed defects, lessons learned, Auto-Learn candidates, and improvement backlog through review. |

## 4. Change Classification Model

| **Change Type** | **Description** | **Approval Path** | **Minimum Evidence** |
| --- | --- | --- | --- |
| Standard Change | Pre-approved, low-risk, repeatable change with validated runbook and no material customer/security impact. | Change owner + DevSecOps or Operations approval; CAB reporting. | Ticket, runbook reference, successful lower-environment evidence, post-check. |
| Normal Change | Planned release, feature, configuration, migration, or platform change requiring impact/risk review. | CAB approval after readiness review. | Release evidence pack, test/scans, rollback plan, UAT or business sign-off where applicable. |
| Major Change | High-impact change affecting architecture, security, data model, production operations, customer outcomes, or regulatory posture. | Architecture Board + Security + CAB approval. | ADR, risk assessment, compatibility evidence, rehearsed rollback/forward-fix, communication plan. |
| Emergency Change | Time-critical fix to restore service, close active security risk, or prevent material business impact. | Emergency CAB / delegated approver; retrospective CAB required. | Incident ticket, approver, action log, validation, retrospective, corrective actions. |
| AI Governance Change | Prompt, guardrail, model alias, tool/action policy, evaluation set, or agent profile change. | AI Governance Lead + Security + CAB according to risk. | Evaluation report, guardrail tests, model-route policy, classification evidence, human approval. |
| Data/Retention Change | Database schema, retention rule, classification rule, RLS, evidence path, or legal-hold-impacting change. | DBA/Data Governance + Security + Compliance + CAB. | Migration plan, Flyway evidence, lineage impact, rollback/forward-fix, retention/legal review. |

## 5. Release Lifecycle and Gate Model

![[attachments/30-AIRA_Release_Deployment_Change_and_CAB_Governance_Standard_v1.1_Aligned/image16.png]]

Figure 1. Release lifecycle flow from planning through continuous improvement.

| **Gate** | **Purpose** | **Required Decision** |
| --- | --- | --- |
| G0 - Intake | Validate ticket, owner, classification, and change type. | Accept, return for clarification, or reject. |
| G1 - Design Readiness | Confirm architecture, contract, data, security, and reversibility approach. | Ready for build or needs ADR/TDL. |
| G2 - Build Evidence | Confirm protected PR/MR, CI/CD, tests, scans, SBOM, and fitness checks. | Ready for release candidate or rework. |
| G3 - Release Readiness | Confirm UAT/business sign-off, release notes, deployment plan, rollback plan, and monitoring. | Ready for CAB review. |
| G4 - CAB Approval | Approve production window, risk acceptance, implementation plan, and communication. | Go, conditional go, no-go, or defer. |
| G5 - Deployment | Execute approved deployment through GitOps/CI/CD only. | Complete, rollback, or escalate. |
| G6 - Post-Deployment Verification | Validate service health, evidence, audit, business smoke tests, and monitoring. | Close, hypercare, or incident. |
| G7 - Learning | Capture lessons, defects, and improvement candidates. | Promote to backlog/knowledge after review. |

## 6. CAB Governance Model

The Change Advisory Board is the formal decision body for planned production-impacting changes. The CAB does not replace technical review, security review, UAT sign-off, or CI/CD gates. It confirms that those controls have been satisfied and that production risk is acceptable.

| **CAB Role** | **Required Representation** | **Primary Responsibility** |
| --- | --- | --- |
| CAB Chair | IT Head / delegated Change Manager | Own agenda, decision discipline, conflict escalation, and final recorded decision. |
| Architecture Representative | Solutions Architect / Enterprise Architect | Confirm architecture alignment, ADR coverage, fitness checks, and boundary compliance. |
| DevSecOps Representative | DevSecOps Lead | Confirm pipeline, GitOps, artifact signing, deployment plan, and rollback readiness. |
| Security Representative | Security Administrator | Confirm risk, vulnerability posture, secret handling, access control, and classification controls. |
| QA Representative | QA Lead / SDET Lead | Confirm test coverage, UAT status, defect posture, and evidence quality. |
| Operations Representative | SRE / System Administrator | Confirm operational readiness, monitoring, support model, and hypercare. |
| Business Representative | Product Owner / Business Owner | Confirm business acceptance, release value, operational timing, and communication. |
| Compliance/Internal Audit | As required by risk | Observe, challenge evidence, and validate audit traceability. |

| **CAB Decision** | **Meaning** | **Required Follow-Up** |
| --- | --- | --- |
| Approved | Change may proceed in the approved window. | Execute plan, capture evidence, complete post-validation. |
| Approved with Conditions | Change may proceed only if listed conditions are met before deployment. | Condition owner records proof before execution. |
| Deferred | Change is valid but not ready for current window. | Return to readiness or scheduling. |
| Rejected | Change risk, evidence, design, or readiness is unacceptable. | Rework; escalate only through defined governance. |
| Emergency Authorized | Emergency action may proceed under emergency governance. | Retrospective CAB and corrective actions required. |

## 7. Deployment and Environment Promotion Standard

| **One-Directional Promotion Invariant**<br>AIRA promotion follows one governed direction: DEV -> INT -> UAT -> STG -> PROD -> DR validation. Workstations, AI agents, and administrators do not mutate production directly. |
| --- |

| **Environment** | **Purpose** | **Promotion Rule** | **Evidence Required** |
| --- | --- | --- | --- |
| DEV | Developer integration and component validation. | Frequent changes allowed through branch/PR controls. | Local tests, component tests, code review evidence. |
| INT | Service integration, contract validation, event and workflow testing. | Only merged, buildable artifacts from protected branch. | Contract tests, integration tests, schema compatibility, logs/traces. |
| UAT | Business validation using approved synthetic or controlled UAT data. | Release candidate only; no experimental features. | UAT script, business sign-off, defect status, evidence pack. |
| STG | Production-like validation and release rehearsal. | CAB candidate build only; no unapproved changes. | Deployment rehearsal, rollback test, performance/smoke checks, security gates. |
| PROD | Live business operation. | CAB-approved, signed, versioned artifact only. | Deployment log, GitOps sync, post-deployment validation, audit evidence. |
| DR | Recoverability validation and continuity readiness. | Configured from approved production baseline. | Restore/failover evidence, RPO/RTO validation, reconciliation results. |

## 8. Evidence Pack Requirements

| **Evidence Category** | **Minimum Contents** | **Owner** |
| --- | --- | --- |
| Change Evidence | Zammad/change ticket, scope, change type, risk, classification, affected services, implementation window. | Change Owner |
| Design Evidence | ADR/TDL where required, API/event contracts, data model, MicroFunction sequence, architecture fitness mapping. | Solutions Architect / Tech Lead |
| Build Evidence | PR/MR, commit hashes, CODEOWNERS review, AI assistance disclosure, artifact digest, SBOM, signed provenance. | Development Lead / DevSecOps |
| Test Evidence | Unit, component, contract, E2E, security, performance, AI evaluation where applicable. | QA Lead |
| Security Evidence | SAST/SCA/secret scan/container scan, OPA/SBAC result, vulnerability disposition, classification check. | Security Administrator |
| Deployment Evidence | Pipeline run, GitOps sync, Helm/Kustomize version, migration result, deployment logs, deployment operator. | DevSecOps / Operations |
| Business Evidence | UAT sign-off, demo records, release notes, training/communication confirmation where applicable. | Product Owner |
| Post-Deployment Evidence | Smoke test, health checks, dashboards, trace IDs, audit IDs, incident/hypercare status. | SRE / Operations |
| Improvement Evidence | Lessons learned, defects, known limitations, Auto-Learn candidates, backlog updates. | Release Owner |

## 9. Rollback, Forward-Fix, and Reversibility Controls

| **Change Scenario** | **Preferred Reversibility Strategy** | **Mandatory Notes** |
| --- | --- | --- |
| Stateless application release | Rollback to previous signed image/chart or forward-fix if faster and safer. | Rollback artifact must remain available until release closure. |
| Database schema migration | Expand/contract, forward-fix, compensating migration; destructive rollback by exception only. | Flyway evidence and data backup/restore validation required. |
| Runtime configuration | Revert Git config and let GitOps reconcile; invalidate caches if required. | Config version and activation audit required. |
| MicroFunction configuration | Deactivate new version or promote prior active version; invalidate Caffeine/Redis/Valkey caches. | Definition hash and activation evidence required. |
| Prompt/guardrail/model route | Revert registry version; block unsafe alias; replay evaluation tests. | AI evidence, evaluation result, and output-risk assessment required. |
| External integration | Disable feature flag, route to fallback, pause connector, or compensate via saga. | Consumer/partner communication may be required. |
| Security policy change | Revert OPA bundle or emergency deny-all for affected action. | Security administrator approval and audit required. |

## 10. Emergency Change Procedure

![[attachments/30-AIRA_Release_Deployment_Change_and_CAB_Governance_Standard_v1.1_Aligned/image17.png]]

Figure 2. Emergency changes are allowed only to reduce active risk and require retrospective governance.

| **Step** | **Requirement** | **Evidence** |
| --- | --- | --- |
| Declare emergency | Incident or active risk requires time-critical action. | Incident ticket, severity, business/security impact. |
| Assess scope | Limit change to the smallest safe action needed. | Affected components, risk, rollback path. |
| Authorize | Emergency CAB or delegated approver authorizes. | Approver, timestamp, decision rationale. |
| Execute | Use controlled path wherever possible; no undocumented click-ops. | Action log, commands/scripts, operator. |
| Validate | Confirm service, security, data, and audit health. | Smoke tests, dashboards, trace IDs. |
| Retrospective | Review within next CAB or within defined SLA. | Root cause, permanent fix, evidence gap review. |
| Remediate | Convert emergency action into governed permanent change. | Backlog item, PR/MR, tests, policy update. |

## 11. AI, Prompt, Guardrail, Model Alias, and Auto-Heal Change Controls

| **AI Change Type** | **Risk** | **Required Controls** |
| --- | --- | --- |
| Prompt template change | May alter business output, reasoning, or tone. | Versioned prompt registry, golden test set, classification review, output evaluation, rollback version. |
| Guardrail policy change | May weaken safety or block valid work. | Input/Retrieval/Execution/Output tests, red-team cases, security approval, fail-closed validation. |
| Model alias or route change | May change capability, cost, data handling, jurisdiction, or accuracy. | LiteLLM route review, model evaluation, classification eligibility, budget policy, audit telemetry. |
| Agent skill or trust threshold change | May expand execution scope. | SBAC review, OPA policy test, trust score evidence, separation-of-duties check. |
| Auto-Heal remediation proposal | May modify code/config to recover service. | Human review, PR/MR path, tests, rollback, no autonomous production mutation. |
| Knowledge/LLM Wiki promotion | May influence future AI output. | Source citations, human review, classification, staleness rule, supersedence policy. |

## 12. Database, Configuration, and MicroFunction Change Controls

| **Artifact** | **Required Change Path** | **Promotion Gate** |
| --- | --- | --- |
| Flyway migration | PR/MR with migration, review, compatibility test, backup/restore impact, forward-fix notes. | DBA + CI migration gate + CAB for production. |
| Reference data | Versioned seed/config migration or controlled admin change with audit. | Owner review + test evidence + classification check. |
| Runtime parameter | Git/DB controlled configuration with owner, version, activation window, rollback. | Config validation + cache invalidation evidence. |
| MicroFunction transaction definition | DRAFT -> REVIEW -> APPROVED -> ACTIVE lifecycle with hash/signature. | Publish validator + tests + architecture fitness + activation audit. |
| OPA/Rego policy | Policy-as-code PR with positive/negative tests. | Security approval + CI policy tests. |
| Feature flag | Controlled configuration with expiry and owner. | Flag register, test both paths, cleanup/removal plan. |

## 13. Ticketing, Traceability, and Zammad Workflow

Zammad is the operational ticketing and service-management system for recording service requests, incidents, change requests, approvals, communications, and post-release support items. Engineering artifacts may live in Git, but operational accountability and business-visible change traceability must be visible through Zammad or the approved ITSM equivalent.

| **Zammad Record Type** | **Used For** | **Required Links** |
| --- | --- | --- |
| Change Request | Planned normal, major, and standard changes. | PR/MR, release candidate, CAB decision, deployment evidence, rollback plan. |
| Incident | Service outage, failed deployment, security incident, high-severity defect. | Timeline, severity, affected services, remediation, postmortem, evidence pack. |
| Problem Record | Recurring incident or systemic defect requiring root cause removal. | Incident links, RCA, improvement backlog, architecture review. |
| Service Request | Operational request such as access, environment, or report. | Approvals, fulfillment evidence, access review if applicable. |
| Release Record | Release package and production window. | Scope, version, release notes, CAB, deployment log, post-checks. |
| Known Error / Workaround | Accepted limitation or temporary operating procedure. | Risk acceptance, expiry date, owner, permanent fix backlog. |

| **Traceability Rule**<br>Every production release must be traceable from Zammad change/release record to backlog item, ADR/TDL, PR/MR, CI evidence, release artifact, GitOps deployment, runtime validation, and closure decision. |
| --- |

## 14. Release Calendar, Freeze, and Communication Rules

| **Control** | **Rule** |
| --- | --- |
| Release calendar | Production windows are scheduled and published in advance. Exceptions require CAB or emergency authorization. |
| Change freeze | Freeze periods may be declared during high-risk business cycles, audits, critical operations, or stabilization windows. |
| Release notes | Every release includes user-visible changes, technical changes, risks, known limitations, rollback note, and support contact. |
| Stakeholder communication | Business owners, operations, support, security, and affected users receive appropriate notice before and after release. |
| Deployment bridge | High-risk release windows use a named deployment bridge or command channel with decision log. |
| No hidden changes | Bundling unapproved changes into an approved release is prohibited. |

## 15. Release Readiness Review and Go/No-Go Criteria

| **Criterion** | **Go Requirement** | **No-Go Trigger** |
| --- | --- | --- |
| Scope | Release scope is frozen and mapped to tickets. | Unapproved scope or hidden change found. |
| Build | Signed artifact and SBOM exist. | Artifact unsigned, untraceable, or rebuilt outside pipeline. |
| Testing | Required test suites pass; defects dispositioned. | Sev-1/Sev-2 open or Must criteria failed. |
| Security | Scans pass or findings risk-accepted. | Critical unaccepted finding or secret leakage. |
| Architecture | Fitness checks pass or waiver approved. | Boundary violation, direct model call, direct DB bypass, or unsupported technology. |
| Data | Migration and rollback/forward-fix plan validated. | Unrehearsed destructive migration or missing backup evidence. |
| Operations | Monitoring, alerting, runbook, and support model ready. | No post-deployment validation path or unsupported operations. |
| Business | UAT/business acceptance complete where applicable. | Business owner rejects or acceptance evidence missing. |
| Rollback | Rollback/forward-fix/compensation plan complete. | No credible recovery path. |

## 16. Post-Deployment Verification and Hypercare Transition

| **Time Window** | **Required Verification** | **Owner** |
| --- | --- | --- |
| T+0 to T+15 minutes | Deployment completion, GitOps sync, pod/service health, database migration status, gateway/API reachability. | DevSecOps / Operations |
| T+15 to T+60 minutes | Smoke tests, critical workflow path, audit event creation, log/trace correlation, error-rate baseline. | QA / SRE |
| First business day | Business owner validation, Zammad ticket triage, defect review, dashboard check. | Product Owner / Support |
| Hypercare period | Daily issue review, severity tracking, known-error updates, stakeholder communication. | Release Owner |
| Closure | All required evidence captured; residual risks accepted; lessons learned logged. | CAB Chair / Release Owner |

## 17. Metrics, Audit, and Compliance Evidence

| **Metric / Evidence** | **Purpose** | **Review Cadence** |
| --- | --- | --- |
| Change success rate | Measures percent of changes completed without rollback, Sev-1/Sev-2 incident, or emergency fix. | Monthly |
| Deployment frequency | Tracks release throughput without lowering controls. | Monthly |
| Lead time for change | Measures speed from approved PR/release candidate to production. | Monthly |
| Mean time to restore | Measures operational recovery effectiveness. | Monthly / post-incident |
| Rollback/forward-fix count | Detects release quality and reversibility issues. | Monthly |
| Evidence completeness score | Measures missing or late release evidence. | Each CAB / monthly |
| Emergency change count | Detects planning or quality gaps. | Monthly CAB |
| Audit sampling results | Confirms traceability from release to controls and evidence. | Quarterly |

## 18. RACI and Separation of Duties

| **Activity** | **Solutions Architect** | **Product Owner** | **Dev Lead** | **QA Lead** | **DevSecOps** | **Security** | **DBA** | **Operations** | **CAB** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Release scope approval | A | R | C | C | C | C | C | C | I |
| Technical readiness review | A/R | C | R | C | C | C | C | C | I |
| Test evidence approval | C | C | C | A/R | C | C | C | I | I |
| Security review | C | I | C | C | C | A/R | C | C | I |
| Database migration approval | C | I | C | C | C | C | A/R | C | I |
| Deployment execution | I | I | C | C | A/R | C | C | R | I |
| CAB decision | C | C | C | C | C | C | C | C | A/R |
| Post-deployment validation | C | R | C | A/R | R | C | C | R | I |
| Release closure | A | R | C | R | R | C | C | R | A |

Legend: A = Accountable, R = Responsible, C = Consulted, I = Informed.

## 19. Implementation Roadmap

| **Phase** | **Activities** | **Exit Criteria** |
| --- | --- | --- |
| Phase 1 - Governance Adoption | Approve standard, assign CAB roles, define change types, create release templates. | CAB charter and templates approved. |
| Phase 2 - Zammad Integration | Configure change/release/incident workflows, fields, approvals, and evidence links. | Zammad workflow supports release traceability. |
| Phase 3 - CI/CD Evidence Binding | Bind pipelines, artifacts, SBOM, scans, fitness checks, and release manifests to change records. | Evidence pack can be generated for release candidate. |
| Phase 4 - GitOps Promotion | Implement environment promotion, signed artifacts, deployment windows, rollback rehearsals. | STG rehearsal passes. |
| Phase 5 - CAB Operating Cadence | Run scheduled CAB, emergency CAB, retrospective CAB, and metrics review. | CAB decisions are recorded and audit-ready. |
| Phase 6 - Continuous Improvement | Use release metrics, incidents, and audit findings to improve gates and runbooks. | Backlog and knowledge updates approved. |

## 20. Templates and Appendices

### Appendix A. Change Request Template

| **Field** | **Entry** |
| --- | --- |
| Change ID |  |
| Zammad Ticket |  |
| Change Type | Standard / Normal / Major / Emergency / AI Governance / Data |
| Release ID |  |
| Service(s) Affected |  |
| Business Owner |  |
| Technical Owner |  |
| Classification | Public / Internal / Confidential / Restricted |
| Risk Level | Low / Medium / High / Critical |
| Implementation Window |  |
| Rollback / Forward-Fix Plan |  |
| Evidence Pack Reference |  |
| CAB Decision | Approved / Conditional / Deferred / Rejected |
| Approval Date |  |

### Appendix B. Release Evidence Manifest Template

release_id: REL-YYYY-MM-NNN
change_ticket: ZAMMAD-CHANGE-ID
release_owner: ""
services: []
classification: Internal
artifact_digest: sha256:<digest>
sbom_ref: OpenKM Tier-0 / AIRA / Evidence / CI-CD / ...
provenance_ref: ""
pr_refs: []
ci_pipeline_run: ""
test_evidence_refs: []
security_evidence_refs: []
architecture_fitness_refs: []
uat_signoff_ref: ""
deployment_plan_ref: ""
rollback_plan_ref: ""
post_deployment_validation_refs: []
cab_decision_ref: ""
known_limitations: []
lessons_learned_refs: []

### Appendix C. CAB Agenda Template

| **Agenda Item** | **Required Input** |
| --- | --- |
| Change summary | Release ID, business value, affected services, change type. |
| Risk review | Risk level, classification, security findings, customer impact. |
| Evidence review | Test, security, CI/CD, architecture, UAT, rollback, deployment evidence. |
| Operational readiness | Monitoring, support, Zammad queues, hypercare plan. |
| Go/No-Go decision | Decision, conditions, owner, timestamp, next action. |
| Post-CAB action | Release calendar update, stakeholder communication, deployment bridge plan. |

### Appendix D. Copy-Ready Mermaid References

flowchart LR
 A[Change Ticket] --> B[Design / ADR / Contract]
 B --> C[Build and CI Evidence]
 C --> D[Release Candidate]
 D --> E[CAB Review]
 E -->|Go| F[GitOps Deployment]
 E -->|No-Go| R[Rework]
 F --> G[Post-Deployment Validation]
 G --> H[Release Closure and Lessons Learned]

## 21. AVCI Compliance Summary

| **AVCI Property** | **Compliance Statement** |
| --- | --- |
| Attributable | Every change, release, approval, deployment, rollback, and closure decision has named owner, ticket, source artifact, approver, and timestamp. |
| Verifiable | Release readiness is proven through CI/CD evidence, tests, scans, fitness functions, UAT records, deployment logs, post-checks, and audit trails. |
| Classifiable | Each change carries classification and handling requirements that govern access, evidence retention, logging, model routing, approval level, and communication. |
| Improvable | Release outcomes, failed gates, incidents, emergency changes, rollback events, and stakeholder feedback become governed backlog, runbook, and knowledge improvements. |

| **Final Control Statement**<br>AIRA release governance is complete only when the release is traceable, approved, deployed through governed paths, validated after deployment, supported by operations, and improved through evidence. Speed is valuable only when it remains secure, reversible, observable, and AVCI-complete. |
| --- |
