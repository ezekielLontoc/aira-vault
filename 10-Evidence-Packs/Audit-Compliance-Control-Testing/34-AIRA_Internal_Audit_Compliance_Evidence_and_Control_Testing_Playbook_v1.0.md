---
title: "AIRA Internal Audit, Compliance Evidence, and Control Testing Playbook"
source_file: "10-Evidence-Packs/Audit-Compliance-Control-Testing/34-AIRA_Internal_Audit_Compliance_Evidence_and_Control_Testing_Playbook_v1.0.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:43Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "10-Evidence-Packs"
  - "Audit-Compliance-Control-Testing"
aliases:
  - "34-AIRA_Internal_Audit_Compliance_Evidence_and_Control_Testing_Playbook_v1.0"
creator: "Solutions Architecture Office"
created: "2013-12-23T23:15:00Z"
modified: "2013-12-23T23:15:00Z"
description: "Generated as AIRA-DOC-034 v1.0"
---

AIRA

AI-Native Enterprise Platform

Internal Audit, Compliance Evidence, and Control Testing Playbook

Audit Universe · Control Testing · Evidence Chain-of-Custody · Findings Management · AVCI-Aligned

Document 34 · Version 1.0 · April 2026 · CONFIDENTIAL - Internal Use Only

| Mandatory Practice Statement<br>No AIRA control shall be considered audit-ready unless its design, operating effectiveness, owner, evidence source, retention rule, classification, testing method, exception path, and remediation workflow are defined and traceable. Evidence must be produced by the system of work, not reconstructed manually after the fact. |

| --- |

| Document Control | Value |

| --- | --- |

| Document ID | AIRA-DOC-034 |

| Document Title | AIRA Internal Audit, Compliance Evidence, and Control Testing Playbook |

| Version | v1.0 - Initial Audit and Control Testing Baseline |

| Classification | CONFIDENTIAL - Internal Use Only |

| Status | FOR ARCHITECTURE REVIEW BOARD / INTERNAL AUDIT / COMPLIANCE APPROVAL |

| Owner | Solutions Architecture Office / Internal Audit / Compliance Office |

| Co-Owners | Security Administrator; DevSecOps Lead; QA Lead; SRE Lead; Data Governance Lead; Application Owners |

| Audience | Solutions Architect / IT Head, Internal Audit, Compliance, Enterprise Architects, DevSecOps, Security, SRE, QA, DBA, Software Development Leads, Business Process Owners |

| Effective Date | Upon Architecture Review Board / CAB approval |

| Review Cadence | Quarterly; unscheduled on regulatory, architecture, stack, control, audit finding, production incident, or material AI governance change |

| Evidence Path | OpenKM Tier-0 / AIRA / Audit-and-Compliance / Control-Testing / v1.0 |

| Companion Documents | 01 AVCI; 02 Engineering Blueprint; 04 Technology Stack; 05 Information Nervous System; 08 Unit Testing; 11 DevSecOps; 14 ADR/TDL; 17 Security; 20 CI/CD Evidence Pack; 26 Data Classification Register; 30 Release/CAB Governance; 31 Production Operations/SRE; 32 SBAC Catalog; 33 Data Migration/Cutover |

| Compliance Scope | ISO/IEC 27001:2022; CIS Controls v8.1; NIST SSDF; NIST AI RMF; SOC 2; BSP IT Risk; internal audit, privacy, security, software supply-chain, operational resilience, and records-retention obligations applicable to AIRA |

# Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Audit Operating Model and Control Universe

4. Control Taxonomy and Register Standard

5. Evidence Lifecycle and Chain-of-Custody

6. Control Testing Methodology

7. Compliance Framework Mapping

8. AIRA Audit Domains and Control Families

9. Key Control Testing Procedures

10. AI-Native Control Testing

11. Release, Change, and Production Readiness Audit

12. Access Review and Separation-of-Duties Testing

13. Findings, Exceptions, and Remediation Workflow

14. Continuous Compliance, Dashboards, and Metrics

15. RACI and Operating Responsibilities

16. Implementation Roadmap

17. Acceptance Criteria

Appendix A. Control Test Plan Template

Appendix B. Evidence Request Template

Appendix C. Finding and CAPA Template

Appendix D. Evidence Manifest Template

Appendix E. Copy-Ready Mermaid References

Appendix F. AVCI Compliance Summary

# 1. Executive Summary

This playbook defines how AIRA proves that its controls are designed, operating, evidenced, and continuously improved. It provides the common audit language, evidence model, control testing method, remediation workflow, and compliance reporting structure required for an AI-native, DevSecOps-driven, mission-critical enterprise platform.

The playbook is intentionally practical. It translates AIRA standards into repeatable audit procedures that Internal Audit, Compliance, Security, DevSecOps, SRE, QA, Data Governance, and Application Owners can execute without relying on undocumented interpretation. It also defines how evidence from Git, CI/CD, OpenKM, PostgreSQL, Zammad, Wazuh, TheHive, Cortex, SigNoz, OpenTelemetry, Vault, Keycloak, OPA, Harness, LiteLLM, NeMo Guardrails, Temporal, Flowable, and Kubernetes is requested, tested, retained, and linked to controls.

| Management Intent<br>Audit readiness is not a year-end activity. It is a production engineering property. AIRA controls must produce evidence during normal work so that compliance can be verified continuously, exceptions can be remediated quickly, and AI-assisted actions remain attributable and human-accountable. |

| --- |

| Strategic Outcome | How This Playbook Delivers It |

| --- | --- |

| Continuous audit readiness | Defines control owners, test frequency, evidence source, retention, and remediation path for every critical AIRA control. |

| Reduced audit friction | Uses one evidence request format and one control testing method across engineering, security, operations, data, and AI governance. |

| Regulatory defensibility | Maps AIRA controls to ISO 27001:2022, CIS v8.1, NIST SSDF, NIST AI RMF, SOC 2, BSP IT Risk, and internal governance expectations. |

| AI governance assurance | Tests model routing, prompt eligibility, guardrails, Harness execution, SBAC, OPA decisions, human approval, and AI evidence records. |

| Management visibility | Defines dashboards, KPIs, KRIs, open findings, overdue remediations, exception expiry, and quarterly control health reporting. |

# 2. Purpose, Scope, and Authority

## 2.1 Purpose

Define the standard control-testing method for AIRA governance, security, engineering, data, AI, release, and operational controls.

Define the minimum evidence required to prove control design effectiveness and operating effectiveness.

Provide Internal Audit and Compliance with a repeatable playbook for evidence requests, sampling, testing, findings, remediation, and closure validation.

Enable continuous compliance by linking controls to machine-produced evidence from engineering and runtime systems.

Ensure every finding, exception, waiver, risk acceptance, and corrective action is attributable, verifiable, classifiable, and improvable.

## 2.2 In Scope

AIRA engineering controls across Plan, Code, Build, Test, Release, Deploy, Operate, and Improve.

Identity, access, SBAC/RBAC/ABAC, separation of duties, secrets, workload identity, and policy-as-code controls.

CI/CD, artifact provenance, SBOM, image signing, vulnerability scanning, test evidence, and release evidence.

Data classification, retention, OpenKM evidence paths, PostgreSQL register records, derivative invalidation, and legal hold controls.

AI-native controls: prompt registry, model routing, guardrails, LiteLLM aliases, Harness-mediated tool execution, AI evaluation, and human approval.

Operational controls: Zammad tickets, incidents, Wazuh alerts, TheHive cases, Cortex analyzer evidence, SigNoz/APM traces, OpenTelemetry evidence, runbooks, and Auto-Heal governance.

## 2.3 Out of Scope

Corporate-wide internal audit procedures unrelated to AIRA.

HR performance management, procurement contracts, and finance audit processes unless they become AIRA control evidence.

External auditor workpapers, except where AIRA evidence must support them.

Production business-user SOPs unless they are used to test AIRA UAT, release, security, or service-management controls.

## 2.4 Authority and Conflict Rule

| Authority Level | Source | Rule |

| --- | --- | --- |

| L0 | Regulatory / Legal / Executive Risk Decision | Mandatory legal, regulatory, privacy, or board risk decisions override local operating convenience. |

| L1 | AIRA Engineering Blueprint and Security Standard | Architecture and security boundaries govern control scope and testing expectations. |

| L1 | AVCI Engineering Standard and Enterprise Design Principles | Missing attribution, verification, classification, or improvement path blocks audit readiness. |

| L2 | This Playbook | Defines audit/control testing method, evidence requirements, sampling, findings, and closure validation. |

| L3 | Specialist Standards and Runbooks | Implement controls in CI/CD, repository, data, AI, release, operations, and service-management domains. |

| L4 | Tickets, logs, dashboards, reports, and screenshots | Evidence only; cannot override the governing control or standard. |

# 3. Audit Operating Model and Control Universe

AIRA uses a three-line assurance model adapted for engineering. Control owners operate controls, governance functions monitor and challenge them, and Internal Audit independently tests design and operating effectiveness. AI-generated evidence and AI-assisted recommendations are treated as inputs to assurance, not independent assurance authorities.

| Line of Assurance | Primary Participants | Responsibilities | Evidence Examples |

| --- | --- | --- | --- |

| First Line - Operate Controls | Application owners, DevSecOps, Security Admin, SRE, QA, DBA, Data Governance, AI Governance | Design, execute, monitor, remediate, and evidence controls during normal work. | CI runs, PR evidence, Zammad tickets, OPA decisions, Vault rotation logs, test reports. |

| Second Line - Govern and Monitor | Compliance, Risk, Security Governance, Architecture Board, CAB, Data Governance Council | Define policy, monitor compliance, approve exceptions, review trends, challenge risk posture. | Control dashboards, waiver register, risk register, CAB approvals, classification register. |

| Third Line - Independent Assurance | Internal Audit or authorized independent reviewer | Test design and operating effectiveness, report findings, validate remediation, support audit committee reporting. | Test plans, samples, workpapers, findings, CAPA closure evidence. |

| Audit Universe Area | Representative Systems / Evidence Sources | Core Audit Questions |

| --- | --- | --- |

| Governance and AVCI | AIRA standards, ADR/TDL, PR summaries, OpenKM, Obsidian, LLM Wiki | Are artifacts current, owned, evidenced, classified, and reviewed? |

| Identity and Access | AD/Keycloak, Vault, OPA, SBAC catalog, Zammad access tickets | Are users, services, and agents least-privileged and recertified? |

| Secure SDLC and CI/CD | Git, CI/CD, SonarQube, Trivy, Gitleaks, SBOM, SLSA provenance | Are changes tested, scanned, reviewed, signed, and promoted only through approved gates? |

| Data Governance | OpenKM, PostgreSQL, pgvector, classification register, retention register | Are data, derivatives, evidence, prompts, and model outputs classified and retained correctly? |

| AI Governance | LiteLLM, NeMo Guardrails, Harness, prompt registry, evaluation results, model aliases | Are AI routes, prompts, guardrails, model outputs, and tool actions governed and auditable? |

| Operations and Resilience | Zammad, Wazuh, TheHive, Cortex, SigNoz, Grafana, OTel, runbooks | Are incidents, alerts, traces, recovery actions, and Auto-Heal candidates handled within policy? |

| Release and Change | CAB records, Argo CD, Kubernetes admission, release evidence, rollback records | Are releases authorized, reversible, monitored, and post-validated? |

# 4. Control Taxonomy and Register Standard

AIRA controls are registered as machine-readable and human-readable artifacts. Each control must have a control owner, risk owner, evidence source, test procedure, frequency, retention rule, and remediation path.

| Control Field | Required | Description |

| --- | --- | --- |

| control_id | Yes | Unique identifier, e.g., AIRA-SEC-AC-001. |

| control_name | Yes | Human-readable name. |

| control_family | Yes | Governance, Access, CI/CD, Data, AI, Operations, Release, Resilience, Privacy, Audit. |

| risk_statement | Yes | Risk the control mitigates. |

| control_objective | Yes | Expected outcome. |

| control_type | Yes | Preventive, detective, corrective, compensating, or directive. |

| frequency | Yes | Per transaction, per PR, daily, weekly, monthly, quarterly, release-based, or event-driven. |

| owner | Yes | Role accountable for operating the control. |

| tester | Yes | Role accountable for testing the control. |

| evidence_source | Yes | Authoritative system or evidence path. |

| sample_method | Yes | Population, sample size, sample period, and selection method. |

| pass_fail_rule | Yes | Objective test result threshold. |

| classification | Yes | Evidence classification and handling rule. |

| retention_rule | Yes | Retention schedule reference. |

| remediation_path | Yes | Zammad problem/change ticket, backlog item, CAPA, waiver, or risk acceptance path. |

| last_tested_at / next_due | Yes | Testing dates and renewal cadence. |

| Control Type | Purpose | AIRA Example |

| --- | --- | --- |

| Preventive | Stops non-compliant action before it occurs. | Branch protection blocks direct merge; OPA denies unauthorized action; guardrails block unsafe prompt. |

| Detective | Detects failure or drift after or during operation. | Wazuh detects suspicious activity; SigNoz detects latency/error budget burn; drift scan detects workstation deviation. |

| Corrective | Restores compliant state after failure. | Zammad problem ticket triggers root cause analysis; Argo CD reconciles GitOps drift; cache rebuild rehydrates derivative state. |

| Compensating | Mitigates risk when primary control is temporarily unavailable. | Manual dual approval and restricted scope during approved CI/CD outage, with expiry and post-validation. |

| Directive | Defines required behaviour. | AIRA standards, CLAUDE.md rules, onboarding workbook, release governance, data classification register. |

# 5. Evidence Lifecycle and Chain-of-Custody

Evidence must be created as a by-product of normal engineering and runtime activities. Screenshots are allowed only as secondary support when primary machine-readable evidence is unavailable or when required for human-readable audit context.

| Evidence Stage | Required Control | Minimum Metadata |

| --- | --- | --- |

| Create | Evidence generated by source system, pipeline, workflow, or authorized human approval. | source_system, actor, timestamp, environment, control_id, trace_id/request_id. |

| Classify | Evidence classification assigned before storage or sharing. | classification, owner, domain, retention_rule, access_policy. |

| Hash / Reference | Evidence receives immutable hash or stable reference. | source_hash, artifact_digest, evidence_id, version. |

| Store | Evidence stored in approved Tier-0 or approved evidence store. | OpenKM path, Git commit, PostgreSQL row, CI run ID, SIEM case ID. |

| Link | Evidence linked to control, requirement, release, incident, ticket, or finding. | control_id, requirement_id, release_id, incident_id, Zammad ticket. |

| Test | Evidence evaluated using approved test procedure. | tester, sample, test_result, exceptions, workpaper reference. |

| Retain | Evidence retained based on classification and retention schedule. | retention_rule, legal_hold_status, disposal_due_date. |

| Dispose / Archive | Disposal or archival is approval-gated and evidenced. | approver, action, storage result, derivative invalidation result. |

| Evidence Source | Authoritative For | Audit Use |

| --- | --- | --- |

| OpenKM | Approved documents, signed standards, final evidence packs, records requiring DMS control. | Evidence repository for formal audit samples and signed artifacts. |

| Git / SCM | Source code, IaC, policies, prompts, guardrails, contracts, ADRs, configuration. | Proves source, review, commit history, CODEOWNERS approval, and version integrity. |

| CI/CD Platform | Build/test/scan/release evidence, SBOM, provenance, pipeline gate results. | Proves Verifiable and release readiness controls. |

| PostgreSQL | Application records, audit, registers, evidence references, lineage, RLS metadata. | Tests data controls, lineage, retention, and runtime evidence. |

| Zammad | Service requests, incidents, problems, change requests, access requests, CAPA tracking. | Proves process execution, approvals, SLA, remediation, and closure. |

| Wazuh | SIEM/security alerts, host logs, file integrity, vulnerability/security events. | Tests security monitoring and detection coverage. |

| TheHive + Cortex | Case management, analyzer results, enrichment, SOAR evidence. | Tests incident triage, investigation, enrichment, and response evidence. |

| SigNoz / OTel / Grafana Stack | Traces, metrics, service health, APM, SLO indicators, dependency evidence. | Tests observability, performance, incident reconstruction, and SRE controls. |

| Keycloak / AD / Vault / OPA | Identity, authentication, authorization, secrets, policy decisions. | Tests access, least privilege, secrets, workload identity, and fail-closed controls. |

| LiteLLM / NeMo / Harness | AI model routing, guardrails, tool execution decisions, model-call audit. | Tests AI governance, prompt eligibility, human approvals, and agent accountability. |

# 6. Control Testing Methodology

Control testing has two complementary dimensions: design effectiveness and operating effectiveness. A well-designed control that is not consistently executed is ineffective. A consistently executed control that does not address the risk is also ineffective.

| Test Type | Question Answered | Evidence Required | Result |

| --- | --- | --- | --- |

| Design Effectiveness | Is the control designed to prevent, detect, or correct the risk? | Standard, control description, system configuration, workflow diagram, policy rule, owner assignment. | Effective / Needs design improvement / Not designed. |

| Operating Effectiveness | Did the control operate consistently during the sample period? | Population, sample, logs, tickets, pipeline records, approvals, exceptions, closure evidence. | Effective / Exception noted / Ineffective / Unable to test. |

| Configuration Test | Is the system configured according to approved baseline? | Export, screenshot if necessary, YAML, Rego, Keycloak role mapping, Vault policy, CI config. | Pass / Fail / Waiver required. |

| Reperformance | Can the tester independently reproduce the control result? | Independent command output, policy test, build rerun, query result, sample replay. | Pass / Fail. |

| Walkthrough | Do owners understand and execute the process end-to-end? | Meeting notes, workflow sample, ticket path, approval chain, evidence path. | Pass / Gap / Training needed. |

| Exception Follow-up | Were exceptions remediated or risk-accepted within SLA? | Zammad/CAPA ticket, remediation evidence, retest result, approver. | Closed / Overdue / Risk accepted. |

| Sample Strategy | When to Use | Baseline Rule |

| --- | --- | --- |

| 100% population test | Automated controls, high-risk AI routing, Restricted data, production release gates. | Test all relevant events if system export is practical. |

| Risk-based sample | Quarterly audits, manual approvals, high volume service tickets. | Select high-risk, recent, exception-heavy, and random samples. |

| Attribute sample | Binary pass/fail controls such as approval present, scan passed, MFA enabled. | Define population and expected attribute before sample selection. |

| Judgmental sample | Incidents, emergency changes, break-glass events, high-impact model actions. | Always include critical/high-risk cases and policy exceptions. |

| Trend review | Operational KPIs, open findings, SLA, recurring control failures. | Compare current period to previous periods and thresholds. |

# 7. Compliance Framework Mapping

This playbook uses AIRA control families as the internal control language, then maps them to external frameworks. The mapping is used for audit planning and reporting, not as a substitute for local control testing.

| AIRA Control Family | ISO/IEC 27001:2022 Alignment | CIS v8.1 / NIST / SOC 2 Alignment | Primary Evidence |

| --- | --- | --- | --- |

| Governance and AVCI | A.5 organizational controls; policy, roles, information security management | NIST SSDF PO/PW/RV; SOC 2 CC1-CC3 | Standards, ADRs, PR AVCI summaries, ARB/CAB approvals. |

| Identity and Access | A.5/A.8 access control, identity management, privileged access | CIS 5/6; SOC 2 CC6 | AD/Keycloak exports, Zammad access tickets, recertification records. |

| Secure SDLC and CI/CD | A.8 secure development, change management, vulnerability management | CIS 16; NIST SSDF; SLSA; SOC 2 CC8 | PR review, pipeline evidence, SBOM, scans, provenance, release records. |

| Data Classification and Retention | A.5 information classification, retention, legal obligations | CIS 3; NIST AI RMF Map/Manage; SOC 2 Confidentiality | Register entries, OpenKM paths, retention workflow, disposal evidence. |

| AI Governance and Model Risk | A.5/A.8 supplier/technology/security controls applied to AI | NIST AI RMF Govern/Map/Measure/Manage; NIST AI 600-1 | Prompt registry, model aliases, guardrail results, AI evaluations, human approvals. |

| Security Monitoring and Incident Response | A.5 incident management; A.8 logging, monitoring | CIS 8/13/17; SOC 2 CC7 | Wazuh alerts, TheHive cases, Cortex reports, SigNoz/APM traces, incident tickets. |

| Resilience and Recovery | A.5 ICT readiness for business continuity; A.8 backups | CIS 11; SOC 2 Availability | Backup/restore tests, DR drill records, RPO/RTO evidence, runbook tests. |

# 8. AIRA Audit Domains and Control Families

| Domain | Control Family | Core Controls |

| --- | --- | --- |

| D1 Governance | Policy, standards, ADR/TDL, waivers | Document approval, version control, conflict resolution, supersedence, waiver expiry, evidence path. |

| D2 Requirements | Traceability and acceptance | Requirement owner, acceptance criteria, UAT sign-off, production acceptance, release linkage. |

| D3 Code | Secure SDLC | Branch protection, code review, tests, SAST/SCA, secret scan, dependency update, provenance. |

| D4 Configuration | GitOps and policy-as-code | CODEOWNERS, OPA bundles, Helm values, model aliases, prompt/guardrail versioning. |

| D5 Telemetry | Observability and SLO | Trace/log/metric correlation, redaction, retention, alerting, SigNoz/Grafana dashboards. |

| D6 Security | Identity, secrets, SIEM/SOAR | MFA, least privilege, Vault rotation, Wazuh alerts, TheHive case closure, Cortex analyzers. |

| D7 Quality | Testing and evidence | TDD, coverage, mutation, contract tests, AI eval, non-functional tests, evidence manifest. |

| D8 Data | Classification, retention, lineage | OpenKM, PostgreSQL, pgvector, RLS, legal hold, derivative invalidation. |

| D9 Enablement | Runbooks and training | Developer onboarding, runbook test, training sign-off, knowledge review. |

| D10 External | Vendor and external reference use | Citation, freshness, licensing, approved external dependency, advisory intake. |

| D11 AI Artifacts | AI governance | Prompt, guardrail, model alias, evaluation, LiteLLM route, Harness execution. |

| D12 Workflow Decisions | Temporal/Flowable decisions | Workflow histories, approvals, SLA timers, exception handling, audit retention. |

# 9. Key Control Testing Procedures

The following baseline procedures should be converted into detailed workpapers during audit planning. Each procedure should be tailored to the sample period, environment, and risk rating.

| Control ID | Control Objective | Test Procedure | Expected Evidence |

| --- | --- | --- | --- |

| AIRA-GOV-001 | Approved standards are current, owned, and classified. | Select standards from the active register; verify owner, version, status, approval, review date, classification, and evidence path. | OpenKM record, document control, review log, ARB/CAB approval. |

| AIRA-ADR-001 | Material decisions are documented before implementation. | Select material changes; trace to ADR/TDL or waiver before merge/release. | ADR/TDL record, PR link, approval, supersedence status. |

| AIRA-SDLC-001 | Protected branches prevent unreviewed production-bound changes. | Inspect branch protection and sample merged PRs for required reviews, CI success, CODEOWNERS, AVCI summary. | SCM settings, PR records, CI results, reviewer approvals. |

| AIRA-CICD-001 | Builds produce verifiable release evidence. | Sample releases; verify SBOM, signed artifact, scan results, provenance, test results, release approval. | CI run, artifact digest, SBOM, scan report, release ticket. |

| AIRA-SEC-001 | Access is named, least-privileged, MFA-protected, and recertified. | Select users/service accounts; verify role mapping, approval ticket, MFA, last review, removal on exit/change. | AD/Keycloak export, Zammad ticket, recertification record. |

| AIRA-VLT-001 | Secrets are stored and rotated in Vault or approved manager. | Select secrets/clients; verify no Git exposure, Vault policy, lease/rotation evidence, access logs. | Vault audit, Gitleaks result, policy config, rotation record. |

| AIRA-DATA-001 | Data artifacts have classification, retention, and prompt eligibility. | Select artifacts/register entries; verify classification, retention, access policy, model route, derivative policy. | Data register, OpenKM/PostgreSQL path, OPA policy, LiteLLM route rule. |

| AIRA-AI-001 | Model traffic uses LiteLLM and guardrails. | Sample model calls; verify no direct provider SDK, model alias, route policy, guardrail checkpoints, usage audit. | LiteLLM logs, NeMo checkpoint logs, code scan, prompt registry. |

| AIRA-AI-002 | AI tool actions are Harness-mediated and human-accountable. | Sample AI action requests; verify skill, trust, OPA decision, approval, action result, audit record. | Harness action evidence, SBAC record, OPA decision, audit event. |

| AIRA-OPS-001 | Incidents and alerts are recorded, triaged, remediated, and closed with evidence. | Sample incidents/alerts; trace Wazuh/SigNoz alert to TheHive/Zammad case, remediation, post-incident review. | Wazuh alert, TheHive case, Cortex result, Zammad incident/problem, PIR. |

| AIRA-REL-001 | Production changes pass CAB, go/no-go, rollback, and post-validation. | Sample releases; verify change classification, approval, deployment evidence, validation, rollback plan. | CAB record, Argo CD sync, monitoring snapshot, release evidence. |

| AIRA-DR-001 | Backup/restore and DR procedures are tested. | Inspect latest restore tests and DR drill; verify RPO/RTO, issues, remediation, next test date. | Restore log, DR test report, Zammad CAPA, evidence pack. |

# 10. AI-Native Control Testing

AI-native control testing verifies that AIRA uses AI aggressively but within classification, routing, guardrail, evaluation, approval, and evidence boundaries. The audit focus is not whether the model is intelligent. The audit focus is whether the AI path is governed, reproducible, and human-accountable.

| AI Control Area | Audit Test | Pass Criteria |

| --- | --- | --- |

| Prompt registry | Select active prompts; verify owner, version, classification, intended use, allowed route, tests, approval. | No production prompt is unowned, unclassified, untested, or outside registry. |

| Model alias registry | Verify model aliases, route rules, budgets, providers, fallback constraints, retirement date. | No code hardcodes provider/model names; Restricted route is private/on-prem only unless waived. |

| Guardrails | Sample AI flows; verify Input, Retrieval, Execution, Output checkpoints and fail-closed behaviour. | Guardrail failure blocks or escalates; no bypass or skip flag exists. |

| Retrieval grounding | Sample AI answers; verify citations, source hashes, confidence, freshness, and classification eligibility. | Answers are traceable to approved sources; stale/superseded sources excluded by default. |

| Harness execution | Sample tool actions; verify action vocabulary, skill, trust score, OPA decision, human approval when required. | No AI agent has direct credentials or unmanaged tool execution path. |

| Evaluation and red-team tests | Inspect golden datasets, adversarial tests, regression evals, output quality thresholds. | Model/prompt/guardrail changes have evaluation evidence before promotion. |

| AI output storage | Trace model output to classification, storage, retention, and human approval state. | AI outputs are treated as classified data artifacts. |

| AI Assurance Rule<br>AI may assist audit analysis by summarizing evidence, proposing test coverage, or identifying anomalies. AI may not certify control effectiveness, close findings, approve waivers, or replace named human accountability. |

| --- |

# 11. Release, Change, and Production Readiness Audit

| Gate | Audit Check | Evidence |

| --- | --- | --- |

| Pre-release scope | Release scope is tied to approved tickets, requirements, ADRs/TDLs, risks, and acceptance criteria. | Release ticket, backlog, ADR/TDL, requirements traceability. |

| CI/CD gate | Build, test, scan, SBOM, signature, provenance, and environment promotion gates passed. | Pipeline report, artifact digest, SBOM, scan reports. |

| CAB approval | Change classification, risk, impact, rollback/forward-fix plan, deployment window, approvers recorded. | CAB minutes, change ticket, approval trail. |

| Data readiness | Migration, backup, reconciliation, retention, and legal hold checks complete when applicable. | Flyway report, migration plan, reconciliation evidence, backup verification. |

| AI readiness | Prompt/model/guardrail changes evaluated, routed, approved, and registered. | Prompt registry, AI eval report, LiteLLM/NeMo/Harness evidence. |

| Operational readiness | Runbooks, alerts, dashboards, Zammad categories, hypercare, on-call, and escalation tested. | Runbook review, monitoring snapshot, hypercare plan. |

| Post-deployment validation | Smoke tests, SLO checks, logs/traces, error rates, incidents, rollback readiness verified. | Post-deployment report, SigNoz/Grafana evidence, Zammad issues. |

# 12. Access Review and Separation-of-Duties Testing

| Access Area | Minimum Test | Exception Handling |

| --- | --- | --- |

| Human user access | Verify named identity, business need, role/SBAC mapping, MFA, manager/system owner approval, last recertification. | Remove access or create time-bound risk acceptance with owner approval. |

| Privileged access | Verify JIT/time-bound approval, dual control, session logging, break-glass review, post-use ticket. | Immediate revocation if unauthorized; security finding if unlogged. |

| Service accounts/workload identities | Verify owner, SPIFFE/SVID or equivalent, short-lived credentials, Vault policy, rotation, least privilege. | Rotate/reissue credentials and open security remediation ticket. |

| AI agent skills | Verify skill status, trust score, action vocabulary, scope, expiry, and human accountability mapping. | Disable skill or reduce trust score pending remediation. |

| Separation of duties | Verify maker/checker, developer cannot approve own production change, AI cannot approve/merge/deploy. | Block merge/promotion; open SoD exception finding. |

| Terminated/transferred users | Verify timely deprovisioning across AD/Keycloak, Git, CI/CD, Vault, Zammad, OpenKM, AI workspaces. | Critical finding if production or privileged access remains. |

# 13. Findings, Exceptions, and Remediation Workflow

All audit findings, control exceptions, waivers, and corrective actions must be tracked through Zammad or the approved service-management workflow. Security incidents may also create TheHive cases, with Cortex enrichment attached as evidence. Control remediation must be independently validated before closure.

| Severity | Definition | Target Action | Approval / Escalation |

| --- | --- | --- | --- |

| Critical | Material control failure with production, security, Restricted data, legal, customer, or regulatory impact. | Immediate containment; executive and security escalation; corrective action plan within 1 business day. | IT Head, Security, Compliance, Risk/Executive owner. |

| High | Control failure likely to affect release, access, data, AI route, production readiness, or audit defensibility. | Remediation plan within 3 business days; closure target defined by risk owner. | Control owner, Security/Compliance, Architecture/CAB if relevant. |

| Medium | Control gap with limited impact or compensating control available. | Remediation plan within 10 business days. | Control owner and governance reviewer. |

| Low | Documentation, evidence, training, or minor configuration gap with low risk. | Fix in normal backlog or next review cycle. | Control owner. |

| Observation | Improvement suggestion or early warning without current control failure. | Track as improvement candidate. | Process owner. |

| Workflow Step | Required Action | Evidence |

| --- | --- | --- |

| Identify | Record finding from audit test, alert, incident, dashboard, or control exception. | Finding record, test workpaper, evidence refs. |

| Classify | Assign severity, owner, classification, affected control, affected system, and due date. | Finding metadata and risk rationale. |

| Contain | Apply immediate containment for Critical/High issues. | Emergency change, access removal, block rule, rollback, alert suppression rationale. |

| Remediate | Create CAPA or remediation ticket with root cause and corrective action. | Zammad ticket, code/config PR, policy update, training record. |

| Retest | Independently verify the fix using original and regression test criteria. | Retest workpaper, CI/run evidence, new sample result. |

| Close | Close only after evidence proves remediation and no residual unauthorized exception remains. | Closure approval, updated risk register, lessons learned. |

# 14. Continuous Compliance, Dashboards, and Metrics

| Metric / KRI | Purpose | Target / Threshold |

| --- | --- | --- |

| Control test completion rate | Measures audit plan execution. | >= 95% on-time completion per quarter. |

| Open Critical/High findings | Tracks unresolved high-risk gaps. | 0 Critical overdue; High within approved SLA. |

| Waiver and exception expiry | Prevents stale risk acceptance. | 0 expired waivers; monthly review. |

| PR/MR evidence completeness | Measures AVCI and CI/CD discipline. | >= 98% production-bound changes complete. |

| Unauthorized direct model/provider calls | Detects AI governance bypass. | 0 tolerated. |

| Guardrail fail-closed events | Measures blocked unsafe AI activity and potential tuning needs. | All fail-closed events logged and reviewed. |

| Access recertification completion | Measures least privilege hygiene. | 100% privileged; >= 98% standard users. |

| Incident-to-problem conversion | Measures root cause follow-through. | All Sev1/Sev2 and recurring incidents converted. |

| Evidence retrieval SLA | Measures audit responsiveness. | Critical evidence retrievable within 1 business day. |

# 15. RACI and Operating Responsibilities

| Activity | IT Head / SA | Internal Audit | Compliance | Security | DevSecOps | SRE/Ops | App Owner | Data Gov |

| --- | --- | --- | --- | --- | --- | --- | --- | --- |

| Approve playbook baseline | A | R | C | C | C | C | C | C |

| Maintain control register | A | C | R | R | R | C | R | R |

| Define annual/quarterly audit plan | C | A/R | R | C | C | C | C | C |

| Operate controls | I | I | C | R | R | R | R | R |

| Provide evidence | I | C | C | R | R | R | R | R |

| Test controls | I | A/R | C | C | C | C | C | C |

| Classify findings | A | R | R | R | C | C | C | C |

| Remediate findings | A | C | C | R | R | R | R | R |

| Validate remediation closure | I | A/R | C | C | C | C | C | C |

| Report quarterly control health | A | R | R | C | C | C | C | C |

R = Responsible, A = Accountable, C = Consulted, I = Informed.

# 16. Implementation Roadmap

| Phase | Activities | Exit Criteria |

| --- | --- | --- |

| Phase 1 - Control Register Bootstrap | Create control taxonomy, map controls to domains, assign owners/testers, identify evidence sources. | Approved baseline control register with owners and evidence paths. |

| Phase 2 - Evidence Source Integration | Create OpenKM folders, Zammad categories, dashboard exports, CI evidence manifest, SIEM/SOAR evidence links. | Evidence can be retrieved by control ID, release, incident, system, and date. |

| Phase 3 - Audit Workpaper Templates | Publish test plan, evidence request, finding, CAPA, waiver, and dashboard templates. | Internal Audit and control owners use common templates. |

| Phase 4 - Continuous Compliance Dashboard | Implement metrics for open findings, evidence completeness, access reviews, waivers, AI governance, release gates. | Quarterly control health dashboard is operational. |

| Phase 5 - First Control Test Cycle | Execute pilot tests across CI/CD, access, data classification, AI governance, incident response, and release governance. | Pilot findings logged and remediation workflow validated. |

| Phase 6 - Management Reporting | Produce quarterly audit/control health report and update risk/control register. | Report accepted by IT Head, Compliance, and Internal Audit. |

# 17. Acceptance Criteria

Control register exists with required fields, owners, test frequency, evidence source, classification, and retention rule.

Evidence paths are defined in OpenKM or approved Tier-0 evidence repositories.

Zammad categories/workflows support audit findings, remediation, CAPA, access requests, incidents, problems, and changes.

Wazuh, TheHive, Cortex, SigNoz/APM, OpenTelemetry, CI/CD, Git, Vault, Keycloak, OPA, LiteLLM, NeMo, and Harness evidence sources are mapped to control IDs.

Internal Audit can execute design and operating effectiveness tests using the playbook templates.

Critical controls have automated or system-produced evidence where feasible.

Findings have severity, owner, due date, remediation plan, retest evidence, and closure approval.

Quarterly control health reporting includes open findings, overdue actions, access review completion, waiver status, release gate pass rate, and AI governance exceptions.

AVCI compliance summary is required for control register changes, audit findings, remediation closures, and evidence pack updates.

# Appendix A. Control Test Plan Template

| Field | Template Value |

| --- | --- |

| test_plan_id | CTP-YYYY-### |

| control_id | AIRA-<FAMILY>-### |

| control_name |  |

| test_period | YYYY-MM-DD to YYYY-MM-DD |

| test_type | Design effectiveness \| Operating effectiveness \| Configuration \| Reperformance \| Walkthrough |

| population |  |

| sample_method | 100% \| Random \| Risk-based \| Judgmental \| Attribute sample |

| sample_size |  |

| evidence_sources |  |

| test_steps |  |

| pass_fail_rule |  |

| tester |  |

| reviewer |  |

| result | Effective \| Exception noted \| Ineffective \| Unable to test |

| workpaper_ref | OpenKM Tier-0 / AIRA / Audit-and-Compliance / ... |

# Appendix B. Evidence Request Template

| Field | Template Value |

| --- | --- |

| request_id | EVR-YYYY-### |

| requested_by | Internal Audit / Compliance / Control Tester |

| control_id |  |

| system_or_process |  |

| sample_period |  |

| evidence_required |  |

| classification | Internal \| Confidential \| Restricted |

| format | Export \| Report \| Link \| Hash \| Screenshot \| Workpaper \| Query result |

| due_date |  |

| evidence_owner |  |

| storage_path |  |

| chain_of_custody_notes |  |

# Appendix C. Finding and CAPA Template

| Field | Template Value |

| --- | --- |

| finding_id | FND-YYYY-### |

| finding_title |  |

| control_id |  |

| severity | Critical \| High \| Medium \| Low \| Observation |

| classification | Internal \| Confidential \| Restricted |

| condition | What was found. |

| criteria | What standard/control required. |

| cause | Why the gap occurred. |

| effect_or_risk | Potential impact. |

| owner |  |

| remediation_plan |  |

| target_date |  |

| zammad_ticket |  |

| retest_steps |  |

| closure_evidence |  |

| closure_approver |  |

# Appendix D. Evidence Manifest Template

YAML Evidence Manifest Reference

| evidence_manifest:<br>evidence_id: EVD-2026-000001<br>control_id: AIRA-CICD-001<br>evidence_type: ci_cd \| security \| access \| ai \| data \| incident \| release \| audit<br>source_system: github-actions \| gitlab-ci \| zammad \| wazuh \| thehive \| cortex \| signoz \| vault \| keycloak \| litellm \| nemo \| harness \| postgresql \| openkm<br>source_reference: ""<br>source_hash: sha256:<hash><br>actor: ""<br>owner: ""<br>environment: DEV \| INT \| UAT \| STG \| PROD<br>classification: Internal \| Confidential \| Restricted<br>retention_rule_id: RET-REL-07Y<br>trace_id: ""<br>request_id: ""<br>linked_ticket: ""<br>linked_release: ""<br>linked_incident: ""<br>storage_path: "OpenKM Tier-0 / AIRA / Audit-and-Compliance / ..."<br>created_at: "YYYY-MM-DDTHH:MM:SSZ"<br>verified_by: ""<br>verification_status: pending \| passed \| exception \| failed<br>notes: "" |

| --- |

# Appendix E. Copy-Ready Mermaid References

Figure E.1 - Evidence Lifecycle and Chain-of-Custody

| flowchart LR<br>A[Control Event or Audit Request] --> B[Evidence Producer]<br>B --> C[Classify and Hash Evidence]<br>C --> D[Store in Approved Evidence Path]<br>D --> E[Link to Control, Ticket, Release, or Incident]<br>E --> F[Control Test Workpaper]<br>F --> G{Pass?}<br>G -->\|Yes\| H[Retain Evidence]<br>G -->\|No\| I[Finding / CAPA in Zammad]<br>I --> J[Remediate]<br>J --> K[Retest]<br>K --> H |

| --- |

Figure E.2 - Control Testing Workflow

| flowchart TD<br>A[Audit Plan] --> B[Select Control]<br>B --> C[Define Population and Sample]<br>C --> D[Request Evidence]<br>D --> E[Test Design Effectiveness]<br>E --> F[Test Operating Effectiveness]<br>F --> G[Document Result]<br>G --> H{Exception?}<br>H -->\|No\| I[Close Workpaper]<br>H -->\|Yes\| J[Create Finding]<br>J --> K[Assign Severity and Owner]<br>K --> L[CAPA / Waiver / Risk Acceptance]<br>L --> M[Retest and Close] |

| --- |

Figure E.3 - Security and Operations Evidence Flow

| flowchart LR<br>W[Wazuh Alert] --> H[TheHive Case]<br>H --> C[Cortex Analyzer]<br>C --> Z[Zammad Incident / Problem]<br>S[SigNoz / OTel Trace] --> Z<br>Z --> R[Remediation PR / Change]<br>R --> CI[CI/CD Evidence]<br>CI --> CAB[CAB Approval]<br>CAB --> VAL[Post-Change Validation]<br>VAL --> AUD[Audit Workpaper / Evidence Pack] |

| --- |

Figure E.4 - AI Governance Control Test Flow

| flowchart LR<br>P[Prompt / Retrieval Request] --> CL[Classification Check]<br>CL --> EL[Prompt Eligibility]<br>EL --> GR1[NeMo Input / Retrieval Rail]<br>GR1 --> LR[LiteLLM Alias Route]<br>LR --> M[Model Call]<br>M --> GR2[NeMo Output Rail]<br>GR2 --> EV[AI Evidence Record]<br>M -.Tool Proposed.-> EX[NeMo Execution Rail]<br>EX --> HAR[Harness]<br>HAR --> SB[SBAC + Trust]<br>SB --> OPA[OPA Decision]<br>OPA --> HUM{Human Approval Required?}<br>HUM -->\|Yes\| F[Flowable Approval]<br>HUM -->\|No\| ACT[Approved Action]<br>F --> ACT<br>ACT --> EV |

| --- |

# Appendix F. AVCI Compliance Summary

| AVCI Property | Compliance Statement |

| --- | --- |

| Attributable | Every control, evidence request, audit test, finding, remediation, waiver, and closure decision has a named owner, tester, reviewer, system source, and evidence reference. |

| Verifiable | Control design and operating effectiveness are tested using documented procedures, reproducible evidence, sample methodology, workpapers, and retest records. |

| Classifiable | Controls and evidence carry classification, access, retention, and handling rules; Restricted evidence is protected and shared only through approved channels. |

| Improvable | Findings, exceptions, incidents, audit lessons, and control failures create CAPA, backlog, ADR/TDL, policy, runbook, or automation improvement actions with closure validation. |

AIRA | Discipline First · Automation Second · Intelligence Third · AVCI Always
