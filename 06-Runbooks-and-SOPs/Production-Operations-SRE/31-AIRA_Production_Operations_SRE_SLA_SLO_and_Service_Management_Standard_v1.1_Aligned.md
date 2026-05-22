---
document_id: "AIRA-DOC-031"
title: "AIRA Production Operations SRE SLA SLO and Service Management Standard"
version: "v1.1"
status: "aligned"
source_file: "31-AIRA_Production_Operations_SRE_SLA_SLO_and_Service_Management_Standard_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "06-Runbooks-and-SOPs/Production-Operations-SRE"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - production-operations
  - sre
  - sla
  - slo
  - service-management
---

# AIRA Production Operations SRE SLA SLO and Service Management Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Production Operations, SRE, SLA, SLO, and Service Management Standard**

_SRE Operations | SLA/SLO Governance | Incident Management | Auto-Heal Readiness_

**v1.1 - Pack 03 v1.2 Alignment and Java 25 Operations Evidence Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-031** |
| **Document Title** | **AIRA Production Operations, SRE, SLA, SLO, and Service Management Standard** |
| **Document Version** | **v1.1 - Pack 03 v1.2 Alignment and Java 25 Operations Evidence Update** |
| **Supersedes** | **31-AIRA_Production_Operations_SRE_SLA_SLO_and_Service_Management_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Operations baseline** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines production operations, service management, SLOs, observability, incident response, and auto-heal guardrails.

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

Added Java 25 runtime and build metadata to operational service inventory and release-health evidence.

Aligned SRE evidence with OTel, Prometheus/Thanos, Loki, Tempo, Sentry, Wazuh, TheHive/Cortex, and audit stores.

Clarified Auto-Heal may propose or execute only bounded, approved, reversible, observable, policy-gated actions.

Updated service-management scope to include Dograh voice flows, LiteLLM routes, NeMo guardrails, GitNexus indexes, and knowledge pipelines.

Reinforced classification-safe telemetry and no PII/secrets in logs, traces, metrics labels, prompts, or incident notes.

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

**
Production Operations, SRE, SLA/SLO, and Service Management Standard**

**Document 31 | Service Reliability · Zammad ITSM · Observability · SIEM/SOAR · AVCI Evidence**

Version 1.0 | April 2026 | INTERNAL CONFIDENTIAL

| **Mandatory Operating Rule**<br>No AIRA production service, platform component, AI capability, workflow, data store, integration, or operational automation may be considered service-ready unless it has a named owner, service criticality, SLO/SLI profile, Zammad service queue, observability coverage, incident and rollback runbooks, security monitoring, support model, evidence path, and AVCI-complete operating record. |
| --- |

| **AIRA Operations Philosophy**<br>Operate with discipline first, automation second, intelligence third, and AVCI always. SRE practices, Zammad service management, Wazuh SIEM/XDR, TheHive/Cortex SOAR workflows, SigNoz/APM, OpenTelemetry, Grafana, and Auto-Heal loops are used to improve reliability without bypassing human accountability, security, or change control. |
| --- |

## Table of Contents

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Production Operations Principles

## 4. AIRA Service Operating Model

## 5. Service Catalog, Criticality, and Ownership

## 6. SLA, SLO, SLI, Error Budget, and Service Review Model

## 7. Zammad ITSM and Service Management Workflow

## 8. Incident Management and Major Incident Procedure

## 9. Problem Management, RCA, and Known Error Control

## 10. Change, Release, Deployment, and Production Transition Interface

## 11. Observability, APM, Logging, Metrics, and Tracing

## 12. Security Operations, SIEM, SOAR, and Case Management

## 13. Runbooks, Knowledge Management, and Evidence Retention

## 14. Support Tiers, On-Call, Escalation, and Communications

## 15. Capacity, Performance, Availability, and Reliability Engineering

## 16. Backup, Restore, DR, and Continuity Readiness Interface

## 17. Auto-Heal, Auto-Learn, Auto-Improve Operating Controls

## 18. Metrics, Reporting, and Management Review

## 19. RACI and Operating Responsibilities

## 20. Implementation Roadmap and Acceptance Criteria

Appendices A-F. Templates, Mermaid References, and AVCI Compliance Summary

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-031 |
| Document Title | AIRA Production Operations, SRE, SLA/SLO, and Service Management Standard |
| Version | v1.0 - Initial Production Operations Baseline |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / IT OPERATIONS / SERVICE MANAGEMENT ADOPTION |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | SRE Lead, DevSecOps Lead, Service Desk Lead, Security Administrator, System Administrator, DBA, QA Lead, Application Owners |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | Monthly during MVP/early production; quarterly after stabilization; unscheduled after Sev-1/Sev-2 incident, major release, control failure, or material stack change |
| Audience | Solutions Architect / IT Head, Software Development Lead, DevSecOps, SRE, Service Desk, System Administrator, Security Administrator, DBA, QA/SDET, Business System Owners, Compliance, Internal Audit |
| Companion Documents | 01 AVCI Engineering Standard; 01A Enterprise Design Principles and SOLID Enforcement Layer; 02 Engineering Blueprint; 03 Developer Guide; 04 Technology Stack; 11 DevSecOps Standard; 17 Security Standard; 20 CI/CD Evidence Pack; 21 Runtime Platform Bootstrap Runbook; 24 Operations, Incident, Auto-Heal and Recovery Runbook Pack; 29 UAT and Production Acceptance; 30 Release, Deployment, Change and CAB Governance |
| Primary Tooling Baseline | Zammad for ITSM/service tickets; OpenTelemetry, Prometheus, Loki, Tempo, Grafana, Sentry, and SigNoz for observability/APM; Wazuh for SIEM/XDR; TheHive for case management; Cortex for responders/analyzers; OpenKM/Obsidian/LLM Wiki for evidence and runbooks |
| Compliance Scope | AVCI; ISO/IEC 27001:2022; CIS Controls v8.1; NIST SSDF; NIST AI RMF; SOC 2; BSP IT Risk expectations; SLSA Level 3 target; internal audit and service management controls |
| Evidence Path | OpenKM Tier-0 / AIRA / Operations / Production-Operations-SRE-Service-Management / v1.0 |

## 1. Executive Summary

This standard defines how AIRA is operated after controlled release into test, UAT, staging, pilot, or production-like environments. It connects engineering delivery to service management, SRE discipline, observability, security operations, incident response, problem management, change control, and continuous improvement.

AIRA is an AI-native, mission-critical enterprise platform. Production operations therefore cannot rely on ad-hoc support, informal chat, manual observation, or undocumented fixes. Every service must have a named owner, measurable reliability target, monitored signals, ticket workflow, security evidence, runbook, escalation path, and improvement mechanism.

| **Strategic Outcome** | **Required Operating Result** |
| --- | --- |
| Reliable service delivery | Each service has SLOs, SLIs, error budgets, dependency maps, support ownership, and operational readiness evidence. |
| One ticket path | All operational work, incidents, service requests, problems, changes, and recovery actions are traceable through Zammad or linked service records. |
| Observable by design | Telemetry is produced through OpenTelemetry and analyzed through Grafana, Prometheus, Loki, Tempo, Sentry, and SigNoz as applicable. |
| Security-aware operations | Wazuh, TheHive, and Cortex provide SIEM/XDR, case management, and SOAR-assisted response under human control. |
| Audit-ready response | Incidents, changes, Auto-Heal proposals, rollback actions, and problem records produce AVCI-complete evidence. |
| Continuous improvement | RCA, recurring defects, SLO burn, support trends, and security cases become backlog items, runbook updates, training updates, or architecture fitness improvements. |

| **Production Operations Rule**<br>A service is not operationally ready because it deploys successfully. It is operationally ready only when it can be monitored, supported, secured, recovered, explained, improved, and audited. |
| --- |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

Define the production operations and SRE operating standard for AIRA services and platform components.

Establish how SLA/SLO/SLI targets are defined, reviewed, breached, escalated, and improved.

Formalize Zammad as the operational service management entry point for tickets, incidents, requests, problems, and changes.

Define observability, APM, SIEM, SOAR, runbook, escalation, and evidence requirements.

Ensure Auto-Heal, Auto-Learn, and Auto-Improve operate within human accountability, CAB, and AVCI controls.

### 2.2 In Scope

All AIRA services, APIs, workflows, MicroFunction runtime components, AI orchestration services, model-routing components, data services, integrations, and platform dependencies.

All environments where operational readiness is required: DEV shared services, INT, UAT, STG, pilot, PROD, DR, and maintenance environments.

All service management records: incidents, major incidents, service requests, problems, changes, known errors, runbook executions, post-incident reviews, and Auto-Heal candidates.

All operational tooling: Zammad, OpenTelemetry, Grafana stack, Sentry, SigNoz, Wazuh, TheHive, Cortex, OpenKM, Obsidian, LLM Wiki, CI/CD evidence stores, and security evidence stores.

### 2.3 Out of Scope

Full enterprise HR policy and non-AIRA helpdesk policy, except where Zammad service management interfaces are required.

Detailed network firewall engineering, except where service ownership, evidence, incident response, and security monitoring are affected.

Detailed DR technical design, which is governed by the AIRA BCP/DR standard, while this document defines operating readiness interfaces.

Detailed release approval, which is governed by Document 30; this document defines post-deployment validation and service transition.

### 2.4 Authority and Precedence

| **Authority Level** | **Source** | **Operating Rule** |
| --- | --- | --- |
| L0 | Regulatory, Legal, Executive Risk, Architecture Board | Mandatory business, regulatory, or risk decision controls production operation. |
| L1 | Engineering Blueprint, Security Standard, DevSecOps Standard | Architecture, security, identity, model routing, and lifecycle controls are binding. |
| L2 | This Standard | Defines production operations, SRE, SLA/SLO, service management, incident/problem management, and operational evidence. |
| L3 | Runtime Platform Runbook, Operations Runbook, CI/CD Evidence Pack, Release/CAB Standard | Implement detailed procedures and evidence workflows. |
| L4 | Zammad tickets, runbook execution records, monitoring alerts, SIEM cases, RCA records | Execution-level operational evidence. |

## 3. Production Operations Principles

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| OPS-01 | No Ticket, No Work | All operational actions must be traceable to a Zammad ticket, approved change, incident, runbook execution, or automated evidence record. |
| OPS-02 | Service Ownership is Explicit | Every service has an owner, backup owner, service tier, support group, escalation path, and evidence path. |
| OPS-03 | SLOs are Engineering Contracts | Reliability targets are measured continuously; error-budget burn triggers review and control actions. |
| OPS-04 | Observability by Design | Logs, metrics, traces, audit events, service health, and business signals are built in before production readiness. |
| OPS-05 | Security Signals are Operations Signals | Wazuh alerts, TheHive cases, and Cortex analyzer results are part of service operations, not separate after-the-fact evidence. |
| OPS-06 | Fail-Safe, Not Fail-Open | If identity, audit, policy, secrets, guardrails, or critical observability controls fail, protected operations are blocked or degraded safely. |
| OPS-07 | Human Accountability | AI and automation may detect, correlate, recommend, and draft; named humans approve high-impact actions and production changes. |
| OPS-08 | Runbook First | Repeated operational work must become a reviewed runbook or automation candidate; tribal knowledge is not acceptable. |
| OPS-09 | Reversibility by Design | Every deployment, configuration, and operational action defines rollback, forward-fix, compensation, or safe rework path. |
| OPS-10 | AVCI Evidence Always | Every incident, change, support action, auto-heal proposal, and recovery action is attributable, verifiable, classifiable, and improvable. |

## 4. AIRA Service Operating Model

AIRA operations combine SRE discipline, ITSM service management, DevSecOps evidence, security operations, and human-governed automation. Zammad is the work intake and traceability system. Observability and APM tools provide operational signals. Wazuh, TheHive, and Cortex provide security detection and response workflow. OpenKM, Obsidian, and LLM Wiki hold approved operational knowledge and evidence references.

![[attachments/31-AIRA_Production_Operations_SRE_SLA_SLO_and_Service_Management_Standard_v1.1_Aligned/image18.png]]

_Figure 1. AIRA production operations lifecycle._

| **Operating Plane** | **Primary Components** | **Responsibility** |
| --- | --- | --- |
| Service Management Plane | Zammad, service catalog, queues, ticket templates, SLA timers | Work intake, ticket lifecycle, prioritization, escalation, communication, and service reporting. |
| Observability Plane | OpenTelemetry, Prometheus, Loki, Tempo, Grafana, Sentry, SigNoz | Metrics, logs, traces, errors, APM, dashboards, alerts, and service health evidence. |
| Security Operations Plane | Wazuh, TheHive, Cortex, Vault, Keycloak, OPA, audit store | Threat detection, case management, enrichment, response actions, access evidence, and policy decision evidence. |
| Runtime Operations Plane | Kubernetes, Argo CD, PostgreSQL, Kafka, Temporal, Flowable, OpenKM, Redis/Valkey | Service runtime, workflow, storage, messaging, document management, cache, deployment state, and recovery actions. |
| Knowledge and Evidence Plane | OpenKM, Obsidian, LLM Wiki, CI/CD evidence packs, runbooks | Approved runbooks, incident evidence, lessons learned, RCA, service review packs, and audit evidence. |

![[attachments/31-AIRA_Production_Operations_SRE_SLA_SLO_and_Service_Management_Standard_v1.1_Aligned/image19.png]]

_Figure 2. AIRA production operations toolchain view._

## 5. Service Catalog, Criticality, and Ownership

Every AIRA component must be represented in the service catalog before production or UAT service operation. The catalog is the operational bridge between architecture, Zammad ticket queues, monitoring dashboards, runbooks, and evidence repositories.

| **Field** | **Required Content** | Column 3 |
| --- | --- | --- |
| service_id | Stable identifier, e.g., AIRA-SVC-GATEWAY, AIRA-SVC-WORKFLOW, AIRA-SVC-ORCHESTRATOR. |  |
| service_name | Human-readable service name. |  |
| business_capability | Business or platform capability supported. |  |
| criticality_tier | Tier 0 Mission Critical, Tier 1 Business Critical, Tier 2 Important, Tier 3 Support. |  |
| owner / backup owner | Named accountable owner and backup owner. |  |
| support_group | Zammad group/queue and escalation contacts. |  |
| dependencies | Upstream/downstream dependencies, data stores, external systems, model routes, workflows. |  |
| SLO profile | Availability, latency, error rate, queue age, workflow completion, or data freshness targets. |  |
| monitoring dashboard | Grafana/SigNoz/Sentry/Wazuh/TheHive links or evidence paths. |  |
| runbook path | OpenKM/Obsidian runbook and recovery procedure path. |  |
| classification | Data classification and support handling rules. |  |
| evidence path | OpenKM operational evidence path. |  |
| **Criticality Tier** | **Description** | **Minimum Operating Requirement** |
| Tier 0 - Mission Critical | Customer, financial, legal, identity, audit, security, or production platform function whose failure materially affects operations. | 24x7 monitoring, Sev-1 escalation, strict SLO, tested rollback, DR evidence, named owner, major incident workflow. |
| Tier 1 - Business Critical | Important business or platform function with significant operational effect. | Business-hours plus extended support as approved, Sev-2 escalation, runbook, dashboards, recovery procedure. |
| Tier 2 - Important | Support service or internal function with moderate impact. | Monitored during operating hours, standard incident process, documented owner and recovery path. |
| Tier 3 - Support | Non-critical reporting, admin, training, or non-production support component. | Ticketed support, best-effort SLO, documented evidence and owner. |

## 6. SLA, SLO, SLI, Error Budget, and Service Review Model

AIRA uses SLOs as engineering control targets and SLAs as business-facing commitments only after approval. Internal SLOs must exist before external SLA commitments are published.

| **Term** | **AIRA Meaning** | **Example** |
| --- | --- | --- |
| SLA | Business-facing service commitment with escalation or reporting consequence. | UAT support response within agreed window; production Sev-1 response within target. |
| SLO | Internal reliability target used to manage service quality. | 99.5% monthly API availability for critical business service. |
| SLI | Measured signal used to calculate SLO performance. | Request success rate, p95 latency, workflow completion rate, queue age, alert MTTA. |
| Error Budget | Allowed unreliability before reliability work overrides feature work. | If error budget is exhausted, new feature release pauses until stability improves. |
| **Service Type** | **Recommended SLI** | **Initial Target Guidance** |
| API Service | availability, p95 latency, 5xx rate, auth denial rate, request throughput | Set DEV/UAT baseline first; production target approved after pilot data. |
| Workflow Service | workflow success rate, stuck workflow count, task age, compensation rate | Alert on stuck workflows and SLA timer breach. |
| Document Intake | upload success rate, malware scan completion, registry creation, orphan record count | Zero orphan records as reliability objective. |
| AI Orchestration | guardrail pass/block rate, model route success, grounded answer rate, token/cost budget | Fail closed on unknown classification or route policy. |
| Data Service | migration status, connection saturation, replication health, query latency, backup status | No production change without backup/restore validation evidence. |
| Security Operations | alert triage age, case closure time, critical finding SLA, false positive trend | Wazuh/TheHive/Cortex metrics reported in security review. |

| **Error Budget Rule**<br>When a Tier 0 or Tier 1 service exhausts its approved error budget, feature delivery for that service is paused or restricted until the service owner, SRE lead, and Architecture/CAB authority approve recovery actions. |
| --- |

## 7. Zammad ITSM and Service Management Workflow

Zammad is the default operational system of record for AIRA service work. It captures requests, incidents, problems, change references, support communication, ownership, status, severity, SLA timers, and evidence references.

| **Ticket Type** | **Used For** | **Required Evidence** |
| --- | --- | --- |
| Service Request | Standard access, information, configuration, training, non-break/fix request. | Requester, service, approval if needed, fulfillment evidence, closure note. |
| Incident | Unplanned service interruption, degradation, failed job, user-impacting defect, security-relevant alert. | Impact, severity, affected service, timeline, mitigation, evidence path, closure validation. |
| Major Incident | Sev-1 or high-impact Sev-2 affecting critical service, security, compliance, or business operation. | War-room timeline, owner, executive updates, RCA, CAB/change links, post-incident review. |
| Problem | Underlying cause of one or more incidents or recurring failure pattern. | RCA, known error record, workaround, permanent fix, backlog item, improvement owner. |
| Change Reference | Operational work linked to CAB-approved change. | Change ID, implementation window, validation, rollback, evidence pack. |
| Knowledge Request | Runbook, FAQ, SOP, or LLM Wiki/Obsidian update request. | Source evidence, reviewer, classification, publication path. |
| **Zammad Field** | **AIRA Requirement** |  |
| Service / Component | Must map to service catalog ID. |  |
| Environment | DEV, INT, UAT, STG, PROD, DR, or shared platform. |  |
| Severity / Priority | Derived from impact and urgency; not chosen arbitrarily. |  |
| Classification | Public, Internal, Confidential, Restricted handling requirement. |  |
| Evidence Reference | OpenKM/CI/Grafana/SigNoz/Wazuh/TheHive link or evidence path. |  |
| Trace IDs | trace_id, request_id, workflow_id, audit_id, release_id where applicable. |  |
| Owner / Assignment Group | Named accountable group and human owner. |  |
| Linked Records | Problem, change, release, RCA, runbook, improvement backlog, security case. |  |

## 8. Incident Management and Major Incident Procedure

Incident management restores service safely, preserves evidence, communicates clearly, and prevents recurrence. Speed matters, but unsupported shortcuts that weaken security, audit, or data correctness are not allowed.

![[attachments/31-AIRA_Production_Operations_SRE_SLA_SLO_and_Service_Management_Standard_v1.1_Aligned/image20.png]]

_Figure 3. Incident-to-problem-to-improvement flow._

| **Severity** | **Definition** | **Response Rule** |
| --- | --- | --- |
| Sev-1 Critical | Material business outage, security incident, data integrity risk, customer-impacting failure, or executive-level impact. | Major incident procedure, immediate owner assignment, war-room, executive communication, RCA mandatory. |
| Sev-2 High | Significant service degradation, failed critical workflow, high-risk defect, or partial outage with workaround. | Priority response, service owner escalation, RCA or problem review required if recurring. |
| Sev-3 Medium | Limited issue affecting non-critical function or small user group with workaround. | Standard incident workflow, fix or backlog item, closure evidence. |
| Sev-4 Low | Minor issue, cosmetic defect, inquiry, operational noise, or non-impacting alert. | Service request or low-priority incident handling. |
| **Major Incident Stage** | **Action** |  |
| Declare | Incident Commander or accountable manager declares major incident and opens/updates Zammad major incident record. |  |
| Stabilize | Protect customer/business data, stop harmful action, apply safe mitigation, preserve evidence. |  |
| Communicate | Send stakeholder updates at agreed cadence; avoid speculative root cause. |  |
| Recover | Execute approved runbook, rollback, forward-fix, failover, queue drain, or isolation procedure. |  |
| Validate | Confirm service health through telemetry, business checks, audit evidence, and user confirmation where applicable. |  |
| Review | Complete RCA, problem record, action items, architecture/control improvements, and knowledge updates. |  |

## 9. Problem Management, RCA, and Known Error Control

Problem management eliminates recurring failure and systemic weakness. A closed incident without learning is incomplete when the issue is recurring, high impact, security-relevant, or architecture-related.

| **Trigger** | **Problem Record Required?** | **Reason** |
| --- | --- | --- |
| Sev-1 incident | Yes | Material impact requires RCA and preventive action. |
| Repeated Sev-2/Sev-3 incidents | Yes | Recurring pattern indicates systemic defect or inadequate runbook/monitoring. |
| Security incident or high-risk alert | Yes, linked to TheHive case where applicable | Security evidence and remediation must remain traceable. |
| Failed rollback/recovery test | Yes | Recovery weakness is production risk. |
| SLO breach or error budget exhaustion | Yes | Reliability target failure requires engineering review. |
| One-time low-impact user error | No, unless trend emerges | Can be resolved through training or knowledge article. |
| **RCA Field** | **Minimum Requirement** |  |
| Problem statement | What happened, when, where, who/what was affected. |  |
| Impact assessment | Business, user, data, security, compliance, and SLO impact. |  |
| Timeline | Detection, escalation, mitigation, recovery, validation, closure. |  |
| Root cause | Technical and process cause; avoid blaming individuals. |  |
| Contributing factors | Monitoring gap, test gap, design gap, knowledge gap, change gap, dependency issue. |  |
| Corrective action | Fix, rollback, guardrail, runbook, test, monitor, policy, architecture update. |  |
| Preventive action | Architecture fitness function, CI gate, training, SLO alert, automation, capacity improvement. |  |
| Evidence references | Tickets, traces, logs, Wazuh/TheHive, CI/CD, Git commits, change records, screenshots. |  |

## 10. Change, Release, Deployment, and Production Transition Interface

Document 30 governs release and CAB approval. This standard defines the operational readiness and post-deployment responsibilities that must be met before a release becomes a supported service.

| **Transition Gate** | **Operational Requirement** |
| --- | --- |
| Service Catalog Updated | New or changed service/component has owner, support group, SLO profile, dependencies, and evidence path. |
| Monitoring Ready | Dashboards, alerts, log queries, traces, Sentry/SigNoz views, and Wazuh rules where applicable are ready. |
| Runbook Ready | Known recovery, rollback, triage, restart, replay, DLQ, and escalation procedures exist. |
| Zammad Ready | Ticket queues, categories, templates, severity rules, and assignment groups are configured. |
| Security Monitoring Ready | Security-relevant events flow to Wazuh/TheHive/Cortex workflow where required. |
| Hypercare Plan Ready | Release support window, owner schedule, communication channel, known limitations, and rollback criteria are defined. |
| Knowledge Updated | OpenKM, Obsidian, LLM Wiki, and service dashboard references are updated and reviewed. |

## 11. Observability, APM, Logging, Metrics, and Tracing

AIRA observability is not optional telemetry. It is production evidence. Every critical path must be traceable from user/API request through gateway, service, workflow, database, event bus, AI gateway, audit, and response.

| **Capability** | **Primary Tools** | **AIRA Use** |
| --- | --- | --- |
| Metrics | Prometheus, Thanos, Grafana | Service health, SLO calculation, resource saturation, workflow and queue metrics, platform dashboards. |
| Logs | Loki, Log4j2 structured JSON, Grafana | Application logs, platform logs, operational troubleshooting with redaction. |
| Traces | OpenTelemetry, Tempo, Grafana, SigNoz | Distributed tracing across gateway, services, workflows, database, Kafka, AI calls. |
| Error Tracking | Sentry | Application errors, release health, stack trace triage with PII/secret redaction. |
| APM | SigNoz, OpenTelemetry | Latency analysis, service dependency maps, API performance, error correlation. |
| AI Observability | LiteLLM logs, guardrail events, prompt/model evaluation records, Grafana dashboards | Prompt usage, token/cost, model route, guardrail result, grounded output, evidence completeness. |
| **Telemetry Rule** | **Requirement** |  |
| Trace propagation | trace_id/request_id must flow through HTTP, Kafka, Temporal, Flowable, database audit, and AI call evidence. |  |
| No sensitive leakage | No secrets, tokens, raw PII, Restricted data, or raw document content in logs/traces/prompts. |  |
| Structured logs | Use JSON logs with service, environment, actor hash, classification, event type, error code, and trace ID. |  |
| Dashboard ownership | Each Tier 0/Tier 1 service has owner-reviewed dashboard and alert routing. |  |
| Alert quality | Alerts must be actionable, deduplicated where possible, and linked to runbooks. |  |
| Retention | Telemetry retention follows the data classification and retention register. |  |

## 12. Security Operations, SIEM, SOAR, and Case Management

Security operations are integrated into AIRA service operations. Wazuh provides SIEM/XDR detection and agent-based security telemetry. TheHive manages security cases. Cortex provides analyzers and responders. Automated response is bounded by policy, approval, and evidence requirements.

| **Tool** | **Role in AIRA Operations** | **Control Boundary** |
| --- | --- | --- |
| Wazuh | SIEM/XDR monitoring, endpoint/security telemetry, file integrity, vulnerability/configuration signals, alert generation. | Alerts feed service/security triage; high-impact actions require human approval. |
| TheHive | Security case management, investigation workflow, collaboration, case evidence, status tracking. | Security cases link to Zammad incident/problem records when service impact exists. |
| Cortex | Analyzers/responders for enrichment and controlled response actions. | Responder actions must be approved for high-impact containment or production effect. |
| Zammad | ITSM ticket system for user/business-visible service impact and operational work. | Security cases linked; Zammad remains service communication record. |
| OpenKM Evidence Store | Stores approved incident, access, investigation, and closure evidence. | Classification and legal hold rules apply. |
| **Security Alert Category** | **Default Handling** |  |
| Suspicious login / identity anomaly | Wazuh alert -> security triage -> Keycloak/AD evidence -> Zammad/TheHive as appropriate. |  |
| Secret exposure | Immediate containment, revoke/rotate, Git scan evidence, TheHive case, Zammad incident if service impact. |  |
| Container/image finding | CI/CD or runtime alert -> DevSecOps triage -> change or vulnerability management record. |  |
| Policy violation | OPA/Gatekeeper/Conftest alert -> block or incident depending on environment and impact. |  |
| AI governance violation | Prompt/model route/guardrail exception -> AI governance review, incident/problem if repeated or high-risk. |  |
| Data leakage suspicion | Major incident/security case; legal/privacy/compliance consulted; evidence preserved. |  |

## 13. Runbooks, Knowledge Management, and Evidence Retention

Every operationally significant component must have runbooks that are current, tested, classified, and linked from Zammad, dashboards, and service catalog records. Runbooks must be human-readable and automation-ready where appropriate.

| **Runbook Type** | **Minimum Contents** |
| --- | --- |
| Service Triage Runbook | Symptoms, dashboards, log queries, traces, expected dependencies, common causes, owner, severity guide. |
| Recovery Runbook | Safe restart, rollback, replay, failover, queue drain, cache rebuild, validation checks, evidence capture. |
| Security Response Runbook | Alert source, severity, containment, TheHive/Cortex steps, evidence preservation, escalation. |
| Data/Database Runbook | Backup check, restore validation, migration issue, connection saturation, data reconciliation. |
| Workflow Runbook | Temporal workflow stuck/retry/terminate rules, Flowable task escalation, DLQ handling, compensation. |
| AI Governance Runbook | Guardrail failure, model route failure, prompt regression, unsafe output block, evaluation failure. |

| **Knowledge Promotion Rule**<br>Incident notes, AI-generated explanations, chat summaries, and draft RCA notes are not authoritative knowledge. They become approved operational knowledge only after owner review, classification, evidence linking, and publication to OpenKM/Obsidian/LLM Wiki under AVCI controls. |
| --- |

## 14. Support Tiers, On-Call, Escalation, and Communications

| **Tier** | **Primary Role** | **Examples** |
| --- | --- | --- |
| L0 Self-Service | Approved knowledge articles, FAQs, status pages, user guidance. | Known workaround, scheduled maintenance notice, user guide. |
| L1 Service Desk | Zammad intake, categorization, basic triage, communication, simple fulfillment. | Password/access request routing, basic incident intake, status updates. |
| L2 Application/Platform Support | Service-specific triage, logs/traces, runbooks, configuration, workflow recovery. | Application error, workflow stuck, queue backlog, failed job. |
| L3 Engineering/SRE/DBA/Security | Deep root cause, code/config fix, database/platform/security investigation. | Sev-1/Sev-2, RCA, hotfix, Wazuh/TheHive/Cortex investigation. |
| L4 Vendor/External | Vendor support or external system owner. | OpenKM vendor issue, telecom/payment/core banking integration issue, cloud/provider issue. |
| **Communication Type** | **Requirement** |  |
| Incident updates | Use factual status, impact, workaround, next update time, and owner. Avoid speculation. |  |
| Executive updates | Required for Sev-1 and selected Sev-2 incidents; concise impact, action, ETA, risk. |  |
| Business user updates | Use business language, known workaround, affected process, and expected resolution window. |  |
| Post-incident communication | Summarize cause, actions taken, prevention steps, and remaining risks after approval. |  |

## 15. Capacity, Performance, Availability, and Reliability Engineering

AIRA capacity and performance management combines SLO telemetry, platform utilization, database health, Kafka/workflow lag, AI gateway usage, and support-ticket trends. Capacity is treated as a reliability and cost-control function.

| **Area** | **Signals to Monitor** | **Action Trigger** |
| --- | --- | --- |
| Compute / Kubernetes | CPU, memory, pod restarts, HPA events, scheduling failures, node pressure. | Sustained saturation, frequent restarts, scaling failures, SLO impact. |
| Database | connection pool, slow queries, locks, replication lag, storage growth, backup duration. | Pool saturation, slow query trend, backup breach, storage threshold. |
| Kafka / Events | consumer lag, DLQ count, failed publish, schema errors, outbox backlog. | Lag exceeds threshold, DLQ growth, repeated schema rejection. |
| Workflow | Temporal queue backlog, workflow failure, retry storm, Flowable task age, SLA breach. | Workflow aging, timer breach, failed compensation. |
| AI Gateway | model latency, token/cost burn, guardrail block rate, route errors, eval regression. | Budget anomaly, unsafe output block trend, route failure. |
| Service Desk | ticket volume, repeat category, SLA breach, reopened tickets, unresolved aging. | Support trend indicates service design, training, or reliability weakness. |

## 16. Backup, Restore, DR, and Continuity Readiness Interface

The formal DR/BCP standard governs complete recovery design. This operations standard requires every service to expose operational readiness evidence for backup, restore, failover, and continuity drills.

| **Readiness Area** | **Operations Requirement** |
| --- | --- |
| Backup Evidence | Critical stores have backup jobs, success monitoring, failure alerts, and retention classification. |
| Restore Validation | Restore tests are scheduled and evidence is stored; backup success without restore proof is insufficient. |
| RPO/RTO Mapping | Service catalog records show approved RPO/RTO or state that target is not yet approved. |
| DR Drill Evidence | Failover or recovery drill logs, validation checks, and lessons learned are retained. |
| Operational Dependencies | External systems, certificates, DNS, secrets, model routes, and network dependencies are documented. |

## 17. Auto-Heal, Auto-Learn, Auto-Improve Operating Controls

AIRA may use AI-assisted operations, but production autonomy is bounded. Auto-Heal can recommend, draft, open tickets, propose PRs, run safe diagnostics, and execute approved non-production checks. Production-impacting actions require policy, classification, approval, and evidence.

| **Capability** | **Allowed in Operations** | **Not Allowed Without Approval** |
| --- | --- | --- |
| Auto-Heal | Detect signal, correlate evidence, suggest cause, draft runbook step, create Zammad ticket, draft PR, propose rollback/forward-fix. | Autonomous production write, direct database edit, direct kubectl change, guardrail bypass, unapproved service restart. |
| Auto-Learn | Convert reviewed incidents, RCA, runbook outcomes, and support patterns into candidate knowledge. | Promote unreviewed AI output as authoritative knowledge. |
| Auto-Improve | Propose SLO, alert, runbook, test, architecture fitness, CI gate, or training improvement. | Change policy, classification, retention, or production configuration without MR/CAB approval. |

| **Enterprise Principle Preservation Rule**<br>Auto-Heal, Auto-Learn, and Auto-Improve must preserve or improve SOLID compliance, Clean Architecture boundaries, DDD ownership, ports-and-adapters discipline, testability, security posture, observability, reversibility, and AVCI evidence. A proposal that weakens any of these is rejected or escalated as a formal waiver. |
| --- |

## 18. Metrics, Reporting, and Management Review

| **Metric Category** | **Examples** | **Review Cadence** |
| --- | --- | --- |
| Service Reliability | SLO attainment, availability, latency, error rate, error-budget burn. | Weekly during early operations; monthly steady state. |
| Incident Management | MTTA, MTTR, Sev distribution, reopen rate, major incident count, unresolved aging. | Weekly/monthly. |
| Problem Management | RCA completion, recurring incidents, known errors, preventive actions closed. | Monthly. |
| Change/Release | Change failure rate, rollback count, emergency change count, post-deployment incidents. | Each CAB/release review. |
| Security Operations | Wazuh alert volume, TheHive case aging, Cortex analyzer success, critical finding closure. | Security operations review. |
| Support Quality | Zammad SLA breach, backlog, ticket categories, customer/user satisfaction, first-contact resolution. | Monthly service review. |
| AI Operations | Guardrail block rate, model route failures, eval regressions, AI remediation attempts, human escalation rate. | Monthly AI governance review. |

## 19. RACI and Operating Responsibilities

| **Activity** | **IT Head / SA** | **SRE** | **DevSecOps** | **Service Desk** | **Security** | **DBA** | **App Owner** | **QA** | **Business Owner** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Approve operations standard | A | R | C | C | C | C | C | C | I |
| Maintain service catalog | A | R | R | C | C | C | R | C | I |
| Configure Zammad queues/templates | A | C | C | R | C | I | C | I | I |
| Define SLO/SLI profile | A | R | C | I | C | C | R | C | C |
| Maintain dashboards/alerts | C | A/R | R | I | C | C | C | C | I |
| Manage incidents | A | R | R | R | C | C | R | C | I |
| Manage security cases | C | C | C | I | A/R | C | C | I | I |
| Conduct RCA/problem review | A | R | R | C | C | C | R | C | C |
| Approve runbooks | A | R | C | C | C | C | R | C | I |
| Review service metrics | A | R | C | C | C | C | R | C | C |
| Approve Auto-Heal production action | A | R | R | I | C | C | R | C | I |

Legend: A = Accountable, R = Responsible, C = Consulted, I = Informed.

## 20. Implementation Roadmap and Acceptance Criteria

| **Phase** | **Activities** | **Exit Criteria** |
| --- | --- | --- |
| Phase 1 - Service Management Bootstrap | Configure Zammad groups, ticket types, categories, service catalog fields, SLA timers, templates, and evidence references. | Zammad can capture AIRA incidents, service requests, problems, changes, and evidence links. |
| Phase 2 - Observability Baseline | Implement OpenTelemetry, Grafana dashboards, Prometheus alerts, Loki/Tempo/Sentry/SigNoz views for core services. | Tier 0/Tier 1 services have dashboards and actionable alerts. |
| Phase 3 - Security Operations Integration | Integrate Wazuh alerts with TheHive/Cortex workflow and Zammad links for service-impacting cases. | Security case workflow tested in non-production with evidence. |
| Phase 4 - Runbook and Evidence Alignment | Publish runbooks, OpenKM evidence paths, Obsidian/LLM Wiki references, and service review templates. | Service owner can execute and evidence runbook steps. |
| Phase 5 - SLO and Service Review Activation | Define initial SLO/SLI profiles, service review schedule, error-budget handling. | Monthly service review pack can be generated. |
| Phase 6 - Auto-Heal Governance | Connect signals to candidate automation with human approval and CAB controls. | Auto-Heal candidate workflow tested without production bypass. |
| **Acceptance Criterion** | **Ready When** |  |
| Service catalog exists | All MVP/Tier 0/Tier 1 services have owner, tier, support group, runbook, evidence path, and monitoring link. |  |
| Zammad workflow ready | Ticket templates, queues, severity, SLA timers, escalation, and closure evidence are configured. |  |
| Observability ready | Metrics, logs, traces, errors, APM, dashboards, and alerts are functioning for critical paths. |  |
| Security operations ready | Wazuh/TheHive/Cortex workflow is tested and linked to service-impacting incident process. |  |
| Runbooks ready | Triage, recovery, rollback, DLQ, database, AI, and security runbooks exist for critical services. |  |
| SLO review ready | SLO/SLI baseline and service review cadence are approved. |  |
| Evidence ready | Operational evidence paths are defined and used in tickets, incidents, changes, and reviews. |  |
| AVCI ready | Operations artifacts carry owner, evidence, classification, and improvement path. |  |

## Appendix A. Service Catalog Record Template

service_id: AIRA-SVC-EXAMPLE

service_name: Example Service

criticality_tier: Tier 1 - Business Critical

business_capability: <capability>

owner: <named owner>

backup_owner: <named backup>

support_group: Zammad / AIRA / <group>

environment_scope: [DEV, INT, UAT, STG, PROD]

dependencies: [PostgreSQL, Kafka, Vault, Keycloak]

slo_profile: <SLO-ID>

monitoring_dashboard: <Grafana/SigNoz/Sentry/Wazuh path>

runbook_path: OpenKM Tier-0 / AIRA / Runbooks / <service>

evidence_path: OpenKM Tier-0 / AIRA / Evidence / Operations / <service>

classification: Internal | Confidential | Restricted

last_reviewed_at: YYYY-MM-DD

next_review_due: YYYY-MM-DD

## Appendix B. Incident Record Minimum Fields

| **Field** | **Requirement** |
| --- | --- |
| ticket_id | Zammad ticket ID. |
| incident_type | Incident, major incident, security-linked incident, service request misroute, etc. |
| severity | Sev-1 to Sev-4 with impact/urgency basis. |
| service_id | Affected service catalog entry. |
| environment | DEV/INT/UAT/STG/PROD/DR. |
| classification | Data and evidence handling classification. |
| timeline | Detection, assignment, mitigation, recovery, validation, closure. |
| evidence_refs | Trace IDs, dashboards, logs, Wazuh/TheHive/Cortex, CI/CD, change, runbook, screenshots. |
| closure_validation | Technical validation, business validation if required, and owner sign-off. |

## Appendix C. SLO Profile Template

slo_id: SLO-AIRA-EXAMPLE-001

service_id: AIRA-SVC-EXAMPLE

slo_name: Example API Availability

criticality_tier: Tier 1

sli_definition: successful_requests / total_requests excluding approved maintenance

objective: 99.5% monthly

measurement_source: Prometheus / Grafana dashboard <link>

alert_thresholds:

warning: error_budget_burn_rate > 2x

critical: error_budget_burn_rate > 5x

owner: SRE Lead

business_owner: <owner>

review_cadence: monthly

linked_runbooks: [RB-AIRA-EXAMPLE-001]

status: draft | active | retired

## Appendix D. Copy-Ready Mermaid References

### D.1 Production Operations Lifecycle

flowchart LR

A[Detect Signal] --> B[Create or Update Zammad Ticket]

B --> C[Triage Severity, Service, Owner]

C --> D[Runbook-Guided Response]

D --> E[Recover and Validate]

E --> F[Close Incident with Evidence]

F --> G[Problem / RCA / Improvement Backlog]

### D.2 Security Operations Flow

flowchart LR

A[Wazuh Alert] --> B[Security Triage]

B --> C{Service Impact?}

C -->|Yes| D[Zammad Incident]

C -->|Security Case| E[TheHive Case]

E --> F[Cortex Analyzer / Responder]

D --> G[Evidence Pack]

F --> G

G --> H[RCA / Improvement]

### D.3 SLO Review Flow

flowchart LR

A[Telemetry Signals] --> B[SLI Calculation]

B --> C{SLO Met?}

C -->|Yes| D[Monthly Service Review]

C -->|No| E[Error Budget Action]

E --> F[Problem Record / Reliability Backlog]

F --> G[CAB or Sprint Planning]

## Appendix E. AVCI Compliance Summary

| **AVCI Property** | **Compliance Statement** |
| --- | --- |
| Attributable | Every service, incident, runbook, dashboard, Zammad ticket, security case, SLO, and operational action has a named owner and evidence reference. |
| Verifiable | Operations readiness is proven through dashboards, traces, logs, ticket records, runbook tests, CI/CD evidence, security cases, and service review records. |
| Classifiable | Operational records carry classification labels that control access, logging, prompt eligibility, retention, and evidence handling. |
| Improvable | Incidents, problems, SLO breaches, support trends, security findings, and Auto-Heal outcomes become governed improvement records, backlog items, tests, runbook updates, or architecture fitness functions. |

| **Final Control Statement**<br>AIRA production operations are approved only when service ownership, SLOs, Zammad workflow, observability, SIEM/SOAR workflow, runbooks, support escalation, recovery evidence, and AVCI compliance are complete. The service may be technically deployed, but it is not service-ready until it can be operated safely, supported reliably, secured continuously, and improved with evidence. |
| --- |
