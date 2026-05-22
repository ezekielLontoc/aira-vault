---
document_id: "AIRA-DOC-024B"
title: "AIRA Operations Incident AutoHeal and Recovery Runbook Pack"
version: "v1.1"
status: "aligned"
source_file: "24B-AIRA_Operations_Incident_AutoHeal_and_Recovery_Runbook_Pack_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "06-Runbooks-and-SOPs/Operations-Incident-AutoHeal"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - operations
  - incident-management
  - autoheal
  - recovery
  - runbook
---

# AIRA Operations Incident AutoHeal and Recovery Runbook Pack

**AIRA
AI-Native Enterprise Platform**

**AIRA Operations, Incident, Auto-Heal, and Recovery Runbook Pack**

**v1.1 - Supplemental Alignment Update | INTERNAL CONFIDENTIAL**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-024B** |
| **Document Title** | **AIRA Operations, Incident, Auto-Heal, and Recovery Runbook Pack** |
| **Version** | **v1.1 - Supplemental Alignment Update** |
| **Supersedes** | **24-AIRA_Operations_Incident_AutoHeal_and_Recovery_Runbook_Pack_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **ALIGNED FOR OBSIDIAN UPLOAD / ARCHITECTURE REVIEW** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Alignment Baseline** | **AIRA Pack 01-05 v1.2 Individual Files; canonical 01A v1.1; Technology Stack v9.1; Java 25 LTS backend baseline** |
| **Target Pack / Register Placement** | **Supplemental / Operations Runbook** |
| **Effective Date** | **2026-05-21** |

## Alignment Control Addendum

**Purpose. **This supplemental aligned version corrects missing-pack inclusion, document-numbering, classification, and cross-reference issues discovered after Pack 01-05 v1.2 generation. The original source content is preserved below, with updated references and added governance controls where necessary.

**Canonical interpretation. **Where the source text contains older references, the current aligned baseline governs: Java 25 LTS for backend services, Technology Stack v9.1, AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, MicroFunction Framework v3.1, Pack 05 Flyway governance, and canonical 01A v1.1.

### Improvement Summary

Renumbered as 24B to avoid conflict with Pack 04 Document 24 Login PoC runtime configuration schema standard.

Aligned operations controls with Pack 03 Technology Stack v9.1, Pack 05 Flyway governance, and Pack 04 MicroFunction recovery rules.

Strengthened Auto-Heal controls: advisory-first, Harness/SBAC/OPA gated, no side-channel fixes, no direct production mutation.

Added Dograh voice incident and GitNexus stale/secret-index incident awareness to the recovery catalog.

### AVCI Compliance Summary

| **AVCI Property** | **Evidence** |
| --- | --- |
| **Attributable** | **Identifies source document, owner, superseded version, target pack placement, and alignment baseline.** |
| **Verifiable** | **Preserves source content and records the specific alignment changes required for Obsidian and revision-control use.** |
| **Classifiable** | **Standardizes classification to INTERNAL CONFIDENTIAL and preserves any elevated handling controls in the body.** |
| **Improvable** | **Captures open numbering/pack-inclusion issues and creates a clean basis for future source-pack regeneration.** |

## Aligned Source Content

AIRA

AI-Native Enterprise Platform

Operations, Incident, Auto-Heal,
and Recovery Runbook Pack

Incident Response · Recovery · Auto-Heal Governance · Evidence-First Operations

Version 1.0 · April 2026 · INTERNAL CONFIDENTIAL

| **Mandatory Practice Statement<br>No incident, recovery action, Auto-Heal proposal, replay, rollback, re-index, cache rebuild, model-route change, guardrail change, or operational fix is complete until it is attributable, verifiable, classifiable, improvable, and supported by durable evidence. Auto-Heal may accelerate remediation, but it must not bypass human accountability, SBAC, OPA, Harness controls, architecture fitness functions, security gates, reversibility, or AVCI evidence.** |
| --- |

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-024** |
| **Document Title** | **AIRA Operations, Incident, Auto-Heal, and Recovery Runbook Pack** |
| **Version** | **v1.0 - Initial Execution Runbook Baseline** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR OPERATIONS, ENGINEERING, SECURITY, AND SRE ADOPTION** |
| **Owner** | **Solutions Architecture Office / DevSecOps / SRE / Security Operations** |
| **Effective Date** | **On CAB / Architecture Review Board approval** |
| **Review Cadence** | **Quarterly; unscheduled on Sev-1/Sev-2 incidents, material stack changes, or control failures** |
| **Primary Audience** | **Solutions Architect / IT Head, DevSecOps, SRE, Software Development Leads, Security Administrator, System Administrator, DBA, QA, Internal Audit** |
| **Companion Documents** | **01 AVCI v3.1; 01A Enterprise Design Principles; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.1; 05 Information Nervous System v4.1; 07 Skills Framework v3.1; 08 Unit Testing v3.1; 10/10A/10B/10C/10D MicroFunction v3.1/v2.1 v3.1/v2.1; 11 DevSecOps v3.1; 17 Security v2.1; 20 CI/CD Evidence Guide; 21 Runtime Platform Bootstrap Runbook; 23 Architecture Fitness Function Catalog** |

Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Non-Negotiable Operating Principles

4. Operations Architecture and Signal Flow

5. Severity, Priority, and Impact Classification

6. Standard Incident Lifecycle Runbook

7. Auto-Heal Governance and Safe Remediation

8. Auto-Learn and Auto-Improve Governance

9. Recovery Runbook Catalog

10. Operational Evidence Pack

11. Communications, Escalation, and CAB Controls

12. RACI and Control Ownership

13. Runbook Repository Structure and Tooling

14. Implementation Roadmap and Acceptance Criteria

## Appendix A. Incident Record Template

## Appendix B. Auto-Heal Candidate Template

## Appendix C. Recovery Evidence Checklist

## Appendix D. Rendered Diagrams and Mermaid References

## Appendix E. AVCI Compliance Summary

## 1. Executive Summary

This runbook pack converts the AIRA standards into an executable operations discipline. It defines how the platform detects, triages, contains, diagnoses, remediates, recovers, validates, learns, and improves without weakening SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, security posture, observability, reversibility, or AVCI evidence.

Operations are evidence-first: each incident and recovery action must be traceable to signals, owners, decisions, approvals, and verification results.

AI assistance is bounded: agents may analyze, draft remediation, prepare PRs, and recommend recovery actions, but execution is gated by Harness, SBAC, OPA, trust scoring, guardrails, and human approval when risk requires.

Recovery is reversible by design: rollback, forward-fix, compensation, replay, cache rebuild, re-indexing, and restore actions must have explicit entry criteria, exit criteria, and evidence.

Learning is governed: lessons, runbook changes, knowledge updates, prompt/guardrail updates, and fitness-function changes are not authoritative until reviewed and promoted through the controlled change path.

| **Strategic Outcome** | **How This Runbook Delivers It** |
| --- | --- |
| **Controlled response** | **Severity model, standard lifecycle, named roles, war-room discipline, communication rules, and CAB escalation.** |
| **Safe Auto-Heal** | **Evidence assembly, AI hypothesis, policy gates, human approval, safe action catalog, and verification gates.** |
| **Recoverability** | **Rollback, forward-fix, compensation, DLQ replay, workflow repair, cache/index rebuild, restore validation, and reconciliation.** |
| **Audit defensibility** | **Incident evidence pack with telemetry, security, change, recovery, approval, and lesson-learned artifacts.** |
| **Continuous improvement** | **Post-incident review feeds Auto-Learn, Auto-Improve, ADR/TDL updates, runbook updates, tests, and architecture fitness functions.** |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

Define the mandatory incident, operations, Auto-Heal, recovery, and evidence procedures for AIRA.

Provide repeatable runbooks for common production and non-production failures.

Ensure operational response remains aligned with AVCI, SOLID, Clean Architecture, DDD, SBAC, OPA, security, observability, and reversibility.

Create a developer- and operations-readable bridge between telemetry signals, CI/CD evidence, runtime platform controls, and human approval workflows.

### 2.2 Scope

| **In Scope** | **Out of Scope** |
| --- | --- |
| **AIRA services, APIs, workflows, MicroFunctions, database migrations, Kafka events, AI routing, retrieval indexes, guardrails, prompts, secrets, identity, observability, and GitOps deployments.** | **Corporate HR disciplinary process, non-AIRA business operations, physical facilities controls, and end-user desktop support outside the AIRA engineering estate.** |
| **DEV, INT, UAT, STG, PROD, and controlled recovery exercises.** | **Unapproved production click-ops or manual fixes outside break-glass and reconciliation controls.** |

### 2.3 Authority

| **Authority Level** | **Document / Control** | **Concern** |
| --- | --- | --- |
| **L0** | **Executive Architecture Authority / Engineering Blueprint** | **Architecture boundaries, service ownership, and recovery design constraints.** |
| **L1** | **AIRA DevSecOps Standard and this Runbook Pack** | **Operational lifecycle, incident handling, Auto-Heal, recovery, and evidence.** |
| **L2** | **AVCI and Enterprise Design Principles / SOLID Enforcement Layer** | **Universal production-readiness and design-integrity gates.** |
| **L3** | **Specialist standards: Security, Database, API, MicroFunction, CI/CD, Fitness Catalog** | **Domain-specific recovery and enforcement rules.** |
| **L4** | **Tickets, incident records, PRs, evidence packs, runbook executions** | **Operational evidence and execution records.** |

## 3. Non-Negotiable Operating Principles

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| **OPS-01** | **AVCI Evidence Required** | **No incident, fix, recovery, or learning is complete without owner, source, evidence, classification, and improvement path.** |
| **OPS-02** | **Fail Safe, Not Open** | **If OPA, Harness, Vault, Keycloak, LiteLLM, guardrails, audit, or GitOps control is unavailable, protected actions are blocked or escalated.** |
| **OPS-03** | **Human Accountability** | **AI may recommend and draft. Named humans approve high-impact actions and remain accountable for business, legal, regulatory, and customer impact.** |
| **OPS-04** | **No Side-Channel Fixes** | **No direct kubectl mutation, direct database edits, direct provider calls, unmanaged scripts, or private AI actions outside governed paths.** |
| **OPS-05** | **Recovery Must Be Reversible** | **Rollback, compensation, replay, restore, and rebuild actions require entry/exit criteria and validation evidence.** |
| **OPS-06** | **Idempotency Before Replay** | **No event replay, workflow retry, data repair, or recovery operation may run unless idempotency and duplicate-effect controls are verified.** |
| **OPS-07** | **Classification Drives Response** | **Incident data classification controls logs, screenshots, prompts, model route, communications, retention, and access.** |
| **OPS-08** | **Auto-Heal Must Preserve Architecture** | **Automated fixes must preserve or improve SOLID, Clean Architecture, DDD boundaries, ports/adapters, security, observability, testability, and AVCI.** |
| **OPS-09** | **Learning Is Not Auto-Promotion** | **Auto-Learn outputs are candidates only until reviewed, tested, approved, and promoted.** |
| **OPS-10** | **Post-Incident Improvement Is Mandatory** | **Sev-1/Sev-2 incidents must produce PIR, root-cause evidence, corrective actions, tests, and improvement backlog items.** |

## 4. Operations Architecture and Signal Flow

AIRA operations uses a signal-to-evidence-to-action model. Signals may originate from observability, security tooling, CI/CD gates, user reports, workflow exceptions, DLQ entries, model evaluation failures, guardrail blocks, or database health checks. The response path converts those signals into evidence, policy decisions, approved actions, verification, and learning.

#### 4.1 Standard Incident Lifecycle

Rendered operational diagram for developer and operations visualization.

Copy-ready Mermaid reference:

flowchart LR
 A[Signal / Alert] --> B[Triage]
 B --> C[Contain]
 C --> D[Diagnose]
 D --> E[Remediate]
 E --> F[Validate]
 F --> G[Close and Learn]
 E -. if failed .-> D
 F -. if unstable .-> E

| **Signal Source** | **Examples** | **Primary Owner** | **Evidence Required** |
| --- | --- | --- | --- |
| **Observability** | **Prometheus alert, Sentry issue, Loki error, Tempo trace anomaly, Grafana SLO breach** | **SRE / DevSecOps** | **Metric snapshot, logs, trace_id, service, release, environment** |
| **Security** | **Wazuh/SIEM alert, Vault anomaly, Keycloak failure, OPA denial spike** | **Security Administrator** | **Alert ID, actor, resource, policy version, classification, trace_id** |
| **Application** | **API error, business validation failure, MicroFunction error, outbox backlog** | **Service Owner** | **Request ID, transaction code, error code, idempotency key, audit record** |
| **Data / Workflow** | **Flyway failure, DB lock issue, Temporal stuck workflow, Flowable overdue task** | **DBA / Workflow Owner** | **Migration ID, workflow ID, task ID, compensation state, owner** |
| **AI / Retrieval** | **Guardrail failure, LiteLLM route issue, model eval regression, retrieval freshness defect** | **AI Engineering / Knowledge Steward** | **Prompt/version, model alias, guardrail result, evidence pack, classification** |

## 5. Severity, Priority, and Impact Classification

| **Severity** | **Definition** | **Examples** | **Target Response** | **Required Controls** |
| --- | --- | --- | --- | --- |
| **SEV-1 Critical** | **Major business, security, data integrity, regulatory, or production outage impact.** | **Prod down; suspected Restricted data exposure; corrupted financial state; identity compromise.** | **Immediate war room; executive and CAB escalation.** | **Named incident commander, change freeze, evidence preservation, formal PIR.** |
| **SEV-2 High** | **Material service degradation, high-risk failed deployment, security exposure without confirmed breach, or recovery risk.** | **Major API failure; workflow backlog; repeated model route failure; high DLQ volume.** | **Urgent triage and recovery plan.** | **Owner assigned, approval for remediation, PIR or after-action review.** |
| **SEV-3 Medium** | **Limited impact, non-critical incident, contained defect, or recoverable operational issue.** | **Single service degradation; cache issue; non-prod pipeline failure.** | **Same day triage where practical.** | **Ticket, evidence, resolution note, backlog if systemic.** |
| **SEV-4 Low** | **Informational, minor defect, low-risk warning, or improvement candidate.** | **Documentation issue; minor alert noise; non-blocking drift.** | **Scheduled backlog handling.** | **Ticket or improvement item.** |

| **Impact Dimension** | **Questions to Answer** |
| --- | --- |
| **Customer / Business** | **Are customers, internal users, financial calculations, approvals, or business SLAs affected?** |
| **Security / Privacy** | **Is there actual or suspected compromise, unauthorized access, PII exposure, secret exposure, or policy bypass?** |
| **Data Integrity** | **Can business state, audit evidence, indexes, workflow state, or document lineage be trusted?** |
| **Architecture / Design** | **Did the issue expose SOLID, boundary, coupling, idempotency, or reversibility defects?** |
| **AI Safety** | **Did a prompt, model route, retrieval pack, tool action, guardrail, or agent recommendation behave incorrectly?** |

## 6. Standard Incident Lifecycle Runbook

| **Phase** | **Objective** | **Key Actions** | **Exit Criteria** |
| --- | --- | --- | --- |
| **I1 Detect** | **Identify and confirm a signal.** | **Capture alert, affected service, environment, release, trace_id, start time, and reporter.** | **Incident record opened and severity assigned.** |
| **I2 Triage** | **Classify scope, impact, owner, and urgency.** | **Check dashboards, logs, recent changes, CI evidence, policy denials, DLQ/backlogs, and security alerts.** | **Incident commander and technical owner assigned.** |
| **I3 Contain** | **Prevent further harm while preserving evidence.** | **Freeze risky deploys, disable route/feature flag, isolate secret, stop replay, apply rate limits, or shift traffic if approved.** | **Impact is stable or not worsening; evidence preserved.** |
| **I4 Diagnose** | **Determine root cause or bounded hypothesis.** | **Correlate code/config/deployments/telemetry/workflows/data. AI may assist with evidence-backed hypothesis.** | **Recovery plan approved or workaround accepted.** |
| **I5 Remediate** | **Apply safe corrective action.** | **Rollback, forward-fix, compensation, cache/index rebuild, replay, restore, secret rotation, or PR-based fix.** | **Action executed through approved path and logged.** |
| **I6 Validate** | **Prove stability and correctness.** | **Run smoke tests, architecture fitness gates, monitoring checks, business-state reconciliation, and security verification.** | **Service stable and acceptance checks passed.** |
| **I7 Close** | **Capture learning and improvements.** | **Complete PIR, corrective action, runbook updates, tests, ADR/TDL, LLM Wiki candidate, and backlog items.** | **Closure approved by incident owner and risk owner where required.** |

| **Incident Command Rule<br>For SEV-1 and SEV-2 incidents, only the Incident Commander may declare severity change, approve war-room closure, or authorize broad stakeholder communication. Technical owners may recommend but must not independently close high-impact incidents.** |
| --- |

## 7. Auto-Heal Governance and Safe Remediation

Auto-Heal is a governed remediation loop. It is not autonomous production self-modification. It may detect, analyze, recommend, draft, test, prepare pull requests, trigger approved low-risk runbooks, and request human approval. High-impact actions require explicit human approval and policy validation.

#### 7.1 Auto-Heal Candidate Flow

Rendered operational diagram for developer and operations visualization.

Copy-ready Mermaid reference:

flowchart TD
 A[Detection] --> B[Evidence Assembly]
 B --> C[AI Root-Cause Hypothesis]
 C --> D[SBAC + OPA + Trust + Classification Gate]
 D --> E{Risk Level}
 E -->|Low-risk, pre-approved| F[Safe Automated Action]
 E -->|High-risk or production impact| G[Human Approval]
 G --> F
 F --> H[Verification Tests and Telemetry]
 H --> I[Auto-Learn Candidate]
 H -. evidence contradiction .-> C

| **Auto-Heal Stage** | **Allowed** | **Not Allowed** |
| --- | --- | --- |
| **Detection** | **Read alerts, logs, traces, CI failures, security findings, DLQ records, workflow errors.** | **Reading secrets or unredacted Restricted data without approved route.** |
| **Analysis** | **Generate evidence-backed hypothesis and confidence score.** | **Hallucinated root cause, unsupported fix, or ungrounded production recommendation.** |
| **Proposal** | **Draft PR, config change, rollback plan, replay plan, or runbook steps.** | **Direct database edit, direct kubectl, direct provider SDK call, direct Vault/Keycloak change.** |
| **Execution** | **Run low-risk approved tests; execute pre-approved non-prod actions through Harness.** | **Production-impacting action without SBAC, OPA, trust score, guardrail, evidence, and human approval.** |
| **Verification** | **Collect test, telemetry, security, fitness, and business evidence.** | **Marking issue resolved without independent evidence.** |
| **Learning** | **Create reviewed knowledge candidate and backlog item.** | **Auto-promoting lessons, prompt changes, guardrail changes, or standards updates.** |

| **Risk Tier** | **Example Auto-Heal Action** | **Approval Requirement** |
| --- | --- | --- |
| **Low** | **Restart non-prod failed test container; regenerate local cache; open documentation PR.** | **Pre-approved Harness policy and audit.** |
| **Medium** | **Re-run failed pipeline; create config PR; request DLQ replay in non-prod.** | **Service owner approval or delegated reviewer.** |
| **High** | **Production rollback; secret rotation; customer-impacting replay; model route change.** | **Incident Commander + Risk Owner + CAB/Security as applicable.** |
| **Critical** | **Restricted data incident response; financial-state repair; broad production recovery.** | **Executive/CAB/Security approval with post-action review.** |

## 8. Auto-Learn and Auto-Improve Governance

| **Loop** | **Input** | **Output** | **Promotion Gate** |
| --- | --- | --- | --- |
| **Auto-Learn** | **Incident records, PIRs, successful fixes, failed fixes, test failures, operational reviews.** | **LLM Wiki candidate, Obsidian note, runbook update, prompt/guardrail test, evaluation dataset item.** | **Human review, classification check, source citation, regression check, approval.** |
| **Auto-Improve** | **Recurring patterns, defect clusters, SLO trends, security findings, architecture fitness failures.** | **Refactoring proposal, ADR/TDL, fitness function, backlog epic, policy update.** | **Architecture review, tests, security review, CAB if material.** |
| **Auto-Heal Feedback** | **Outcome of remediation and recovery actions.** | **Trust-score adjustment, safe-action update, runbook change, agent skill update.** | **Evidence review, Skills Framework gate, change approval.** |

| **Learning Boundary<br>Auto-Learn may create candidates. It must not alter canonical standards, approved knowledge, prompts, guardrails, model routes, policies, or production configuration without human review and controlled promotion.** |
| --- |

## 9. Recovery Runbook Catalog

The following catalog defines the minimum standard runbooks. Each runbook execution must create or update an incident/recovery evidence record and link to the affected ticket, service, release, trace_id, workflow ID, migration ID, topic, or knowledge artifact.

| **ID** | **Runbook** | **Trigger** | **Primary Action** | **Exit Criteria** |
| --- | --- | --- | --- | --- |
| **R-01** | **Application Deployment Rollback** | **Failed deployment, severe defect, or unstable release.** | **Argo CD rollback or revert PR; no manual cluster mutation.** | **Service health, smoke tests, Sentry/Prometheus/Loki checks, business smoke test.** |
| **R-02** | **Kubernetes Service Recovery** | **Pod crash loop, readiness failure, resource exhaustion, or node issue.** | **Diagnose from telemetry; scale/restart only through approved automation or GitOps.** | **Pods healthy, SLO restored, no drift, evidence retained.** |
| **R-03** | **Database Migration Recovery** | **Flyway failure, incompatible schema, slow migration, or data issue.** | **Forward-fix migration or approved compensation; no manual prod DDL.** | **Flyway checksum, schema validation, backup/restore evidence, app compatibility.** |
| **R-04** | **Kafka DLQ and Reprocess** | **Consumer failures, poison messages, schema mismatch, downstream outage.** | **Classify payload, fix root cause, replay with idempotency and rate limit.** | **DLQ drained or quarantined, business state reconciled, audit complete.** |
| **R-05** | **Temporal Workflow Repair** | **Stuck workflow, retry storm, activity timeout, compensation failure.** | **Use workflow-safe repair, signal, cancellation, reset, or compensation pattern.** | **Workflow state correct, compensation complete, no duplicate effects.** |
| **R-06** | **Flowable Human Approval Recovery** | **Overdue human task, broken DMN, missing approver, SLA violation.** | **Reassign/repair through approved admin workflow with audit.** | **Task state valid, approval evidence preserved, SLA impact recorded.** |
| **R-07** | **Cache Rebuild and Invalidation** | **Stale Redis/Caffeine entry, config mismatch, cache poisoning, cache outage.** | **Invalidate derivative cache; rebuild from PostgreSQL or Tier-0 source.** | **Correctness verified from source of truth; cache loss does not break correctness.** |
| **R-08** | **Retrieval, pgvector, LightRAG, LLM Wiki Re-index** | **Stale chunks, bad embeddings, lineage defect, retrieval regression.** | **Quarantine stale derivative; rebuild from Tier-0 sources; re-run evaluation.** | **Freshness, lineage, ACL, classification, and golden dataset checks pass.** |
| **R-09** | **AI Model / LiteLLM / Guardrail Incident** | **Route failure, unsafe output, guardrail block, budget anomaly, model regression.** | **Fail closed, switch approved alias only if policy permits, evaluate outputs.** | **Guardrail results, route evidence, model alias audit, regression test pass.** |
| **R-10** | **Security / Secret Compromise Recovery** | **Suspected secret exposure, unauthorized access, policy bypass, identity anomaly.** | **Contain, rotate/revoke, investigate, patch, validate, report as required.** | **Access closed, secrets rotated, audit complete, risk owner sign-off.** |

### R-01 Application Deployment Rollback

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Failed deployment, severe defect, or unstable release.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Service health, smoke tests, Sentry/Prometheus/Loki checks, business smoke test.** |

### R-02 Kubernetes Service Recovery

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Pod crash loop, readiness failure, resource exhaustion, or node issue.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Pods healthy, SLO restored, no drift, evidence retained.** |

### R-03 Database Migration Recovery

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Flyway failure, incompatible schema, slow migration, or data issue.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Flyway checksum, schema validation, backup/restore evidence, app compatibility.** |

### R-04 Kafka DLQ and Reprocess

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Consumer failures, poison messages, schema mismatch, downstream outage.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **DLQ drained or quarantined, business state reconciled, audit complete.** |

### R-05 Temporal Workflow Repair

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Stuck workflow, retry storm, activity timeout, compensation failure.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Workflow state correct, compensation complete, no duplicate effects.** |

### R-06 Flowable Human Approval Recovery

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Overdue human task, broken DMN, missing approver, SLA violation.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Task state valid, approval evidence preserved, SLA impact recorded.** |

### R-07 Cache Rebuild and Invalidation

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Stale Redis/Caffeine entry, config mismatch, cache poisoning, cache outage.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Correctness verified from source of truth; cache loss does not break correctness.** |

### R-08 Retrieval, pgvector, LightRAG, LLM Wiki Re-index

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Stale chunks, bad embeddings, lineage defect, retrieval regression.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Freshness, lineage, ACL, classification, and golden dataset checks pass.** |

### R-09 AI Model / LiteLLM / Guardrail Incident

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Route failure, unsafe output, guardrail block, budget anomaly, model regression.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Guardrail results, route evidence, model alias audit, regression test pass.** |

### R-10 Security / Secret Compromise Recovery

| **Entry Criteria** | **Step Sequence** | **Evidence Required** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Suspected secret exposure, unauthorized access, policy bypass, identity anomaly.** | **1) Open/confirm incident record. 2) Capture evidence. 3) Confirm classification and owner. 4) Select approved recovery path. 5) Execute through governed toolchain. 6) Validate. 7) Update PIR/backlog/runbook if needed.** | **Incident ID; owner; affected service/environment; trace_id or workflow/event/migration ID; before/after screenshots or telemetry; approvals; test results; audit record.** | **Access closed, secrets rotated, audit complete, risk owner sign-off.** |

#### 9.1 DLQ and Reprocess Visualization

Rendered operational diagram for developer and operations visualization.

Copy-ready Mermaid reference:

sequenceDiagram
 autonumber
 participant K as Kafka Consumer
 participant M as MicroFunction Runtime
 participant D as DLQ
 participant O as Operator / Auto-Heal Candidate
 participant P as Pipeline / PR
 participant R as Replay Service
 participant A as Audit Evidence
 K->>M: Consume event with trace_id and idempotency key
 M-->>D: Write failed payload and error classification
 O->>D: Inspect PII-safe evidence
 O->>P: Submit root-cause fix or configuration correction
 P-->>O: CI, tests, security, fitness gates pass
 O->>R: Approved replay request
 R->>M: Reprocess with idempotency enforcement
 M->>A: Persist recovery evidence

#### 9.2 Recovery Decision Flow

Rendered operational diagram for developer and operations visualization.

Copy-ready Mermaid reference:

flowchart TD
 A[Recovery Trigger] --> B[Assess Scope]
 B --> C{Recovery Path}
 C --> D[Rollback / Redeploy]
 C --> E[Forward Fix / Compensation]
 C --> F[Rebuild Cache / Index / Wiki]
 D --> G[Verify]
 E --> G
 F --> G
 G --> H[Close, PIR, Backlog]
 G -. unstable .-> B

## 10. Operational Evidence Pack

#### 10.1 Incident Evidence Pack Structure

Rendered operational diagram for developer and operations visualization.

Copy-ready Mermaid reference:

flowchart LR
 A[Incident Record] --> B[Telemetry Evidence]
 A --> C[Security Evidence]
 A --> D[Change Evidence]
 A --> E[Recovery Evidence]
 A --> F[Approval Evidence]
 A --> G[Lessons Learned]

| **Evidence Category** | **Required Items** | **Retention / Handling** |
| --- | --- | --- |
| **Incident Record** | **Incident ID, severity, classification, owner, timeline, affected services, user/business impact.** | **OpenKM / DMS evidence folder; classification-based retention.** |
| **Telemetry** | **Metrics, logs, traces, Sentry issue, dashboard screenshot, SLO breach, query evidence.** | **Redacted; no PII/secrets; linked by trace_id and time window.** |
| **Security** | **OPA decisions, Keycloak/Vault events, SIEM alerts, access logs, policy versions.** | **Restricted as needed; security owner sign-off.** |
| **Change** | **Commits, PR/MR, CI run, SBOM, scan results, deployment artifact, Argo CD sync.** | **Immutable source control and evidence pack.** |
| **Recovery** | **Rollback ID, migration ID, replay request, compensation record, restore test, verification result.** | **Linked to incident and change record.** |
| **Approval** | **CAB/Flowable approval, incident commander decision, risk acceptance, waiver if any.** | **Named human approver and timestamp required.** |
| **Learning** | **PIR, root-cause analysis, corrective action, test added, ADR/TDL, runbook update, LLM Wiki candidate.** | **Promote through knowledge governance.** |

## 11. Communications, Escalation, and CAB Controls

| **Scenario** | **Communication Rule** | **Approver** |
| --- | --- | --- |
| **SEV-1** | **War room opened; executive update cadence established; customer/regulatory messaging coordinated through approved leadership channels.** | **Incident Commander + Executive Sponsor + Security/Risk when applicable** |
| **SEV-2** | **Technical and business stakeholders notified; recovery plan and risk tracked.** | **Incident Commander / Service Owner** |
| **Security incident** | **Limit audience; preserve evidence; avoid speculative statements; follow security and privacy escalation.** | **Security Administrator / Risk Owner** |
| **Production recovery change** | **CAB or emergency CAB approval unless pre-approved low-risk runbook.** | **CAB / Change Manager / Risk Owner** |
| **AI safety incident** | **AI Engineering and Security notified; model route/guardrail/prompt evidence preserved.** | **AI Engineering Lead + Security Administrator** |

Communications must distinguish confirmed facts, working hypotheses, pending verification, and final conclusions.

Screenshots, logs, and payload samples must be redacted according to classification rules before distribution.

No incident communication should include secrets, raw PII, customer account details, unrestricted prompt content, or unreviewed AI output.

## 12. RACI and Control Ownership

| **Activity** | **Solutions Architect / IT Head** | **Incident Commander** | **Dev Lead** | **DevSecOps / SRE** | **Security Admin** | **DBA** | **QA** | **CAB / Risk** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Declare architecture-impacting incident** | **A** | **R** | **C** | **C** | **C** | **C** | **C** | **I** |
| **Open and classify incident** | **C** | **A/R** | **C** | **R** | **C** | **C** | **I** | **I** |
| **Contain runtime incident** | **C** | **A** | **C** | **R** | **C** | **C** | **I** | **I** |
| **Approve production-impacting recovery** | **C** | **R** | **C** | **C** | **C** | **C** | **C** | **A** |
| **Execute GitOps rollback** | **I** | **A** | **C** | **R** | **I** | **I** | **C** | **I** |
| **Execute DB forward-fix / restore** | **C** | **A** | **C** | **C** | **C** | **R** | **C** | **C** |
| **Execute security containment** | **I** | **A** | **I** | **C** | **R** | **C** | **I** | **C** |
| **Validate fix and evidence** | **C** | **A** | **R** | **R** | **C** | **C** | **R** | **I** |
| **Complete PIR and Auto-Learn candidate** | **A** | **R** | **R** | **C** | **C** | **C** | **C** | **I** |

## 13. Runbook Repository Structure and Tooling

aira-operations/
├── runbooks/
│ ├── incident-lifecycle.md
│ ├── deployment-rollback.md
│ ├── kafka-dlq-reprocess.md
│ ├── temporal-workflow-repair.md
│ ├── flowable-human-task-recovery.md
│ ├── cache-rebuild.md
│ ├── retrieval-reindex.md
│ ├── model-guardrail-incident.md
│ └── security-secret-recovery.md
├── templates/
│ ├── incident-record.yaml
│ ├── auto-heal-candidate.yaml
│ ├── recovery-evidence-checklist.md
│ └── post-incident-review.md
├── evidence-manifests/
├── policies/
│ ├── opa/
│ └── harness-action-policies/
├── dashboards/
├── diagrams/
└── README.md

| **Tool / System** | **Operational Use** | **Evidence Output** |
| --- | --- | --- |
| **Grafana / Prometheus / Thanos** | **Metrics, SLOs, alerting, capacity evidence.** | **Dashboard snapshot, alert ID, metric query.** |
| **Loki / Tempo / OpenTelemetry** | **Logs and traces correlated by trace_id.** | **Trace/log bundle with redaction.** |
| **Sentry** | **Application exception and release health.** | **Issue ID, release, stack trace summary, environment.** |
| **Wazuh / SIEM** | **Security alerting and correlation.** | **Alert ID, severity, indicators, containment evidence.** |
| **Argo CD** | **GitOps deployment and rollback.** | **Sync status, revision, diff, rollback evidence.** |
| **Temporal / Flowable** | **Workflow recovery, compensation, approvals.** | **Workflow ID, task ID, approval and history.** |
| **OpenKM / DMS** | **Evidence retention.** | **Evidence folder, document IDs, retention marker.** |

## 14. Implementation Roadmap and Acceptance Criteria

| **Phase** | **Milestone** | **Acceptance Criteria** |
| --- | --- | --- |
| **R0** | **Runbook repository created** | **Folder structure, CODEOWNERS, templates, and PR rules are in place.** |
| **R1** | **Core dashboards linked** | **Operations dashboard covers service health, CI/CD, DB, Kafka, workflows, AI routes, guardrails, and security alerts.** |
| **R2** | **Runbook dry runs** | **Rollback, DLQ replay, cache rebuild, retrieval re-index, and secret rotation are tested in non-production.** |
| **R3** | **Evidence pack automation** | **Incident templates, evidence manifest, dashboard snapshots, and audit links are generated or attached consistently.** |
| **R4** | **Auto-Heal bounded activation** | **Low-risk non-production Auto-Heal actions pass Harness/SBAC/OPA gates and produce evidence.** |
| **R5** | **Operational readiness sign-off** | **SRE, DevSecOps, Security, DBA, QA, and Architecture approve readiness for controlled foundation development.** |

| **Readiness Gate** | **Pass Criteria** |
| --- | --- |
| **RG-1 Runbook Completeness** | **All R-01 to R-10 runbooks have owner, entry criteria, steps, evidence, and exit criteria.** |
| **RG-2 Tool Integration** | **Alerts link to dashboards, traces, logs, incident records, and evidence folders.** |
| **RG-3 Security and Classification** | **Sensitive evidence handling and access controls are tested.** |
| **RG-4 Recovery Tested** | **Critical recovery paths are dry-run in non-production.** |
| **RG-5 Auto-Heal Controlled** | **No Auto-Heal action can bypass Harness, OPA, SBAC, guardrails, audit, or human approval rules.** |

## Appendix A. Incident Record Template

incident_id: INC-YYYY-NNNN
severity: SEV-1 | SEV-2 | SEV-3 | SEV-4
classification: Public | Internal | Confidential | Restricted
status: open | contained | recovering | validating | closed
incident_commander: <name>
technical_owner: <name>
service_or_component: <service>
environment: DEV | INT | UAT | STG | PROD
start_time_utc: <timestamp>
detected_by: telemetry | security | user | ci_cd | ai_eval | other
impact_summary: <business and technical impact>
trace_ids: []
related_change_ids: []
related_workflow_ids: []
evidence_folder: <OpenKM/DMS path>
containment_actions: []
recovery_actions: []
verification_results: []
approvals: []
post_incident_review_required: true | false

## Appendix B. Auto-Heal Candidate Template

auto_heal_candidate_id: AHC-YYYY-NNNN
source_incident_or_signal: <INC/alert/pipeline ID>
classification: <label>
risk_tier: low | medium | high | critical
proposed_action_type: rollback | config_pr | code_pr | replay | rebuild | rotation | other
evidence_summary:
 telemetry: []
 code_or_config: []
 tests: []
 security: []
architecture_impact:
 solid_preserved: true
 clean_architecture_preserved: true
 ddd_boundary_preserved: true
 ports_adapters_preserved: true
 reversibility_defined: true
policy_gates:
 sbac_required_skill: <skill>
 opa_policy_result: allow | deny | needs_approval
 harness_action_id: <id>
 human_approval_required: true | false
verification_plan: []
rollback_plan: []
status: draft | pending_approval | approved | rejected | executed | closed

## Appendix C. Recovery Evidence Checklist

| **Checklist Item** | **Required for SEV-1/2** | **Required for SEV-3/4** |
| --- | --- | --- |
| **Incident record with owner and severity** | **Yes** | **Yes** |
| **Classification and handling label** | **Yes** | **Yes** |
| **Before/after telemetry snapshot** | **Yes** | **Where applicable** |
| **Approval evidence** | **Yes** | **If production-impacting** |
| **Rollback/forward-fix/replay evidence** | **Yes** | **Where applicable** |
| **Security and PII review** | **If security or data involved** | **If applicable** |
| **Business-state reconciliation** | **Yes if business state affected** | **If applicable** |
| **Test and fitness-function results** | **Yes** | **Yes for code/config changes** |
| **PIR and corrective actions** | **Yes** | **If systemic** |
| **Knowledge/runbook update candidate** | **Yes** | **If reusable lesson exists** |

## Appendix D. Rendered Diagrams and Mermaid References

Rendered diagrams and Mermaid references are included inline in Sections 4, 7, 9, and 10. The source Mermaid snippets may be copied into the engineering repository under operations/diagrams/.

| **Diagram** | **Section** | **Use** |
| --- | --- | --- |
| **Standard Incident Lifecycle** | **4.1** | **Common operating flow for all incidents.** |
| **Auto-Heal Candidate Flow** | **7.1** | **Governed AI-assisted remediation flow.** |
| **DLQ and Reprocess Visualization** | **9.1** | **Kafka/event recovery and replay.** |
| **Recovery Decision Flow** | **9.2** | **Rollback/compensation/rebuild decision model.** |
| **Incident Evidence Pack Structure** | **10.1** | **Evidence organization and audit traceability.** |

## Appendix E. AVCI Compliance Summary

| **AVCI Property** | **Compliance Statement** |
| --- | --- |
| **Attributable** | **Every incident, runbook, recovery action, approval, and learning item has a named owner, source, timestamp, and evidence reference.** |
| **Verifiable** | **Resolution requires telemetry, tests, security checks, business validation, architecture fitness results, and evidence pack completion.** |
| **Classifiable** | **Incident records, logs, screenshots, payloads, prompts, model outputs, and recovery evidence carry classification labels and handling rules.** |
| **Improvable** | **PIRs, Auto-Learn candidates, runbook changes, tests, ADR/TDL updates, and backlog items provide controlled improvement paths.** |
