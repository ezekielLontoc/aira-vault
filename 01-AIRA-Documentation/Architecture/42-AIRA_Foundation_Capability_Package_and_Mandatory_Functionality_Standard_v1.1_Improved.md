---
document_id: "AIRA-DOC-042"
title: "AIRA Foundation Capability Package and Mandatory Functionality Standard"
version: "v1.1"
status: "improved"
source_file: "42-AIRA_Foundation_Capability_Package_and_Mandatory_Functionality_Standard_v1.1_Improved.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Architecture"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - foundation-capabilities
---

# AIRA Foundation Capability Package and Mandatory Functionality Standard

**AIRA**

**AI-Native Enterprise Platform**

AIRA Foundation Capability Package and Mandatory Functionality Standard

Reusable Enterprise Foundation | Common Capabilities | System Factory Baseline | MicroFunction Assembly | AVCI Evidence

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-042** |
| **Version** | **v1.1 Improved** |
| **Supersedes** | **42-AIRA_Foundation_Capability_Package_and_Mandatory_Functionality_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / FOUNDATION BUILD ADOPTION** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Primary Companion** | **41-AIRA Agentic DevSecOps and System Factory Standard v1.1 Improved** |
| **Effective Date** | **Upon Architecture Review Board / CAB approval** |
| **Prepared Date** | **May 25, 2026** |

**Mandatory Practice Statement. **Every AIRA-built system shall inherit the AIRA Foundation Capability Package before adding business-specific functionality. Common enterprise plumbing shall be built once, governed centrally, reused consistently, and extended only through approved configuration, MicroFunctions, APIs, workflows, policies, templates, and ADR/TDL-controlled changes.

## Document Control

| **Property** | **Value** |
| --- | --- |
| **Document Title** | **AIRA Foundation Capability Package and Mandatory Functionality Standard** |
| **Document ID** | **AIRA-DOC-042** |
| **Version** | **v1.1 Improved** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / FOUNDATION BUILD ADOPTION** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; DBA; SRE; AI Engineering; Product Owners; Internal Audit** |
| **Primary Companion** | **41-AIRA Agentic DevSecOps and System Factory Standard v1.1 Improved** |
| **Primary Audience** | **Architects, Developers, QA, DevSecOps, Security, DBA, SRE, AI Engineers, Product Owners, Business SMEs, Internal Audit** |
| **Review Cadence** | **Quarterly; unscheduled on material foundation capability, security, data, workflow, AI, agent authority, compliance, or technology-stack change** |

### v1.1 Improvement Summary

| **Improvement Area** | **v1.1 Enhancement** |
| --- | --- |
| **Platform productization** | **Clarifies AIRA as an internal reusable platform product, not only a reusable codebase.** |
| **System Factory alignment** | **Aligns foundation packages with AIRA-DOC-041 Agentic DevSecOps so agents consume the same identity, workflow, evidence, knowledge, and policy foundations.** |
| **Capability expansion** | **Adds missing enterprise platform capabilities: developer experience, DevSecOps supply chain, quality/fitness functions, resilience/BCDR, FinOps/capacity, service catalog, and consumer onboarding.** |
| **Adoption gates** | **Adds foundation inheritance rules, system onboarding workflow, exception/waiver gates, versioning, service ownership, SLOs, and capability acceptance criteria.** |
| **Governance hardening** | **Strengthens classification, privacy, audit, human-in-the-loop, separation of duties, SBAC, OPA, LiteLLM, guardrails, and kill-switch alignment.** |
| **Enterprise readiness** | **Adds KPIs, maturity model, operational controls, data/registry schema expectations, and consumer reuse metrics.** |

## Static Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Relationship to AIRA-DOC-041 and AIRA Source Packs

4. Core Design Principles and Non-Negotiable Rules

5. Foundation Platform Reference Architecture

6. Foundation Capability Package Model

7. Mandatory Capability Catalog

8. Capability Productization and Reuse Model

9. System Consumption and Onboarding Workflow

10. MicroFunction Alignment

11. Data Model, Registry, and Metadata Requirements

12. API, Event, UI, and SDK Contract Requirements

13. Security, Privacy, Classification, and Compliance Requirements

14. Agentic System Factory Alignment

15. DevSecOps, Quality, Supply Chain, and Fitness Functions

16. Resilience, Operations, BCDR, and Service Management

17. Implementation Roadmap and Sequencing

18. Metrics, KPIs, and Maturity Model

19. RACI and Separation of Duties

20. Required Templates and Schemas

21. Risks, Anti-Patterns, and Controls

22. Acceptance Criteria

23. AVCI Compliance Summary

Appendices

## 1. Executive Summary

AIRA is not only an application to be built. It is a reusable enterprise system-building platform. This standard defines the basic and mandatory capabilities that shall be part of AIRA so that BFS does not repeatedly rebuild the same foundation for every new system. Business systems shall add domain-specific workflows, data, rules, MicroFunctions, APIs, screens, integrations, and reports on top of this common foundation.

| **Outcome** | **Required Result** |
| --- | --- |
| **Build once, reuse many times** | **Common functions are platform capabilities, not per-application rework.** |
| **Configuration-first extension** | **New systems reuse capability packages through configuration, rules, workflows, policies, and MicroFunction assembly.** |
| **Consistent governance** | **Identity, access, workflow, documents, audit, evidence, release, and AI-agent behavior are governed centrally.** |
| **Faster delivery** | **Teams focus on domain capability instead of rebuilding enterprise plumbing.** |
| **Audit-ready by design** | **Every capability produces AVCI evidence, classification, security, observability, and rollback information.** |
| **System factory enablement** | **AIRA agents, developers, and future systems consume the same governed foundation rather than creating parallel patterns.** |

**v1.1 Platform Verdict. **The foundation shall be treated as an internal enterprise platform product with service owners, APIs, events, UI components, MicroFunctions, documentation, runbooks, SLOs, lifecycle roadmap, consumer support, and evidence obligations. A foundation capability is not complete when code exists; it is complete when future systems can safely consume it without rebuilding it.

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

This standard identifies the mandatory AIRA Foundation Capability Package and the minimum reusable functionality to be included in the platform baseline. It governs reusable services, MicroFunctions, APIs, workflows, data schemas, UI components, policies, evidence schemas, agentic capabilities, platform templates, and golden-path delivery assets that future AIRA-built systems must inherit.

### 2.2 Scope

Identity, authentication, authorization, organization, approval authority, workflow, MicroFunction runtime, documents, notifications, audit, evidence, observability, integration, data, search, knowledge, AI agents, administration, reporting, release, security, privacy, resilience, and lifecycle controls.

Reusable capability contracts: APIs, events, UI components, SDKs, starter kits, configuration templates, MicroFunction catalogs, policy bundles, test packs, runbooks, and evidence schemas.

Foundation consumption rules for every AIRA-built system, including PoCs, MVP modules, production applications, internal tools, AI agents, and future BFS systems.

### 2.3 Out of Scope

Business-specific mortgage, loan, collection, accounting, customer, product, legal, or other domain logic except where used as a reference implementation.

Uncontrolled autonomous self-modification by agents or direct production mutation outside PR, CI/CD, CAB, GitOps, Harness, and human approval gates.

Duplicated login, approval, audit, document, evidence, notification, AI-routing, or access-control implementations inside individual systems.

**Implementation Rule. **A business application may configure, extend, or specialize the foundation but must not bypass or duplicate it without an approved ADR/TDL, risk acceptance, expiry, and remediation plan.

## 3. Relationship to AIRA-DOC-041 and AIRA Source Packs

AIRA-DOC-041 defines the governed agentic DevSecOps and System Factory operating model. This document defines the reusable platform foundation consumed by that system factory. Together, the two standards establish the rule that AIRA agents and human teams must build future systems by inheriting approved foundation services, packages, skills, workflows, policies, evidence, and MicroFunction assemblies.

| **Source / Standard** | **How This Standard Uses It** |
| --- | --- |
| **AIRA-DOC-041 Agentic DevSecOps and System Factory** | **Defines Hermes Agent boundaries, agent registry, SBAC, trust scoring, Auto-Learn, Auto-Heal, Auto-Improve, and human governance planes. This document makes those capabilities part of the reusable foundation.** |
| **AIRA AVCI Engineering Standard** | **Defines Attributable, Verifiable, Classifiable, and Improvable evidence requirements for every foundation capability.** |
| **AIRA Engineering Blueprint** | **Defines target architecture, one-directional flow, layers, boundaries, and AI execution governance.** |
| **AIRA Technology Stack** | **Defines the approved stack: Java 25, Spring Boot, PostgreSQL, Flyway, Kafka, Flowable, Temporal, LiteLLM, NeMo Guardrails, Hermes, GitNexus, OpenKM, OpenTelemetry, and related controls.** |
| **AIRA MicroFunction Framework** | **Defines configuration-first transaction assembly and standard STP-* functions owned by the foundation.** |
| **AIRA Security and Access Standard** | **Defines identity, secrets, data protection, RBAC, ABAC, SBAC, OPA, and fail-safe security controls.** |
| **AIRA ADR/TDL Standard** | **Defines how foundation changes, exceptions, capability adoption, and material design choices are governed.** |

## 4. Core Design Principles and Non-Negotiable Rules

| **Principle** | **Foundation Rule** |
| --- | --- |
| **Foundation-first** | **Common enterprise concerns belong to AIRA, not individual applications.** |
| **Configuration before code** | **Prefer runtime configuration, rules, DMN, OPA policy, workflow, feature flags, and MicroFunction assembly before custom code.** |
| **Governed extension** | **Domain-specific capability enters through STP-BUS-* MicroFunctions, bounded-context services, approved APIs, versioned workflows, and ADR/TDL records.** |
| **One source of truth** | **Identity, organization, permissions, approval authority, documents, evidence, configuration, and release metadata must have clear ownership and authoritative storage.** |
| **Platform as product** | **Every foundation package has an owner, contract, documentation, version, SLO, support path, lifecycle, runbook, and consumer onboarding guide.** |
| **AVCI always** | **Every capability must be attributable, verifiable, classifiable, and improvable.** |
| **SOLID and Clean Architecture** | **Foundation services must remain cohesive, decoupled, interface-driven, testable, and independent of consumer-domain logic.** |
| **Fail-safe, not fail-open** | **Unavailable identity, policy, guardrail, secrets, audit, or evidence dependencies must block protected actions.** |
| **Human-in-the-loop** | **High-impact, low-confidence, destructive, policy-exception, production-impacting, or authority-expanding actions require named human approval.** |
| **Reusable but not monolithic** | **Foundation packages must remain modular and bounded so teams can consume only what is required without creating a platform bottleneck.** |

**Non-Negotiable Rule. **The foundation shall accelerate delivery without weakening architecture boundaries, security controls, testability, observability, reversibility, or AVCI evidence. Any shortcut that makes one system faster but weakens all future systems is a platform defect.

## 5. Foundation Platform Reference Architecture

The foundation capability architecture provides reusable platform services, common MicroFunctions, governance controls, and consumer-facing contracts. New systems compose these capabilities instead of creating parallel implementations.

| **Layer / Plane** | **Contains** | **Rule** |
| --- | --- | --- |
| **Foundation Control Plane** | **System registry, capability catalog, identity, access policies, SBAC, OPA, model routes, configuration, release governance, agent registry, kill switches** | **Defines who/what may use foundation capabilities and under what conditions.** |
| **Foundation Service Plane** | **Identity, organization, workflow, documents, notifications, audit, evidence, observability, data, integration, AI-agent, release, and admin services** | **Shared platform capabilities with owners, APIs, events, evidence, and operational runbooks.** |
| **MicroFunction Runtime Plane** | **Standard STP-* steps, transaction definitions, runtime configuration, idempotency, error handling, compensation, workflow binding** | **Business transactions are assembled and governed through reusable functions.** |
| **Developer Experience Plane** | **Starter kits, templates, SDKs, generated clients, test packs, devcontainers, repository bootstrap, CI/CD templates, documentation templates** | **Makes the approved path easier than the bypass path.** |
| **Domain Extension Plane** | **STP-BUS-* functions, bounded-context services, domain APIs, domain schemas, domain workflows, domain reports** | **Business-specific logic only; must not duplicate foundation plumbing.** |
| **Governance and Evidence Plane** | **AVCI records, ADR/TDL, CI/CD evidence, audit logs, model-route records, approvals, security scans, fitness functions** | **Every change and runtime action is traceable, reviewable, and improvable.** |

Reference flow:

Business system declares required foundation packages and classification scope.

Capability catalog resolves approved services, APIs, UI components, workflows, policies, and MicroFunctions.

System bootstrap applies repository, devcontainer, CI/CD, security, data, evidence, and observability templates.

Domain team adds only domain-specific workflows, STP-BUS-* functions, APIs, screens, integrations, and reports.

PR, CI/CD, security, contract, architecture fitness, and AVCI evidence gates validate reuse and prevent duplication.

Operational telemetry, incidents, reviews, and lessons feed Auto-Learn, Auto-Heal, and Auto-Improve candidate loops.

## 6. Foundation Capability Package Model

| **Package Code** | **Package** | **Included Capability Scope** |
| --- | --- | --- |
| **FND-01** | **Identity, Authentication, Session, and Access Foundation** | **Login, OIDC/Keycloak/AD, MFA, session context, RBAC, ABAC, SBAC, OPA, access audit** |
| **FND-02** | **Organization, Hierarchy, and Approval Authority Foundation** | **Company, division, department, unit, branch, position hierarchy, reporting line, approval limits, delegation, escalation** |
| **FND-03** | **Workflow and Task Foundation** | **Flowable BPMN/CMMN/DMN, task inbox, approval workflow, SLA timers, rework, escalation, workflow audit** |
| **FND-04** | **MicroFunction Runtime and Transaction Assembly Foundation** | **Transaction definition, step catalog, runtime assembly, idempotency, error handling, compensation, runtime configuration** |
| **FND-05** | **Document and Records Management Foundation** | **OpenKM integration, upload, metadata, OCR, classification, versioning, retention, search, document audit** |
| **FND-06** | **Email, Notification, and Communication Foundation** | **Email, inbound processing, templates, notification queue, delivery tracking, workflow/security/system notifications** |
| **FND-07** | **Audit, Evidence, Compliance, and Traceability Foundation** | **Technical audit, business audit, access audit, AI audit, evidence pack, compliance mapping, AVCI record** |
| **FND-08** | **Observability, Monitoring, Incident, and Runbook Foundation** | **OpenTelemetry, Prometheus, Loki, Tempo, Grafana, Sentry, Wazuh, alerts, incidents, runbooks, learning** |
| **FND-09** | **API, Integration, and Eventing Foundation** | **API gateway, OpenAPI, AsyncAPI, CloudEvents, adapters, webhooks, Kafka outbox, idempotent consumers** |
| **FND-10** | **Data, Database, Migration, and Reference Data Foundation** | **PostgreSQL, Flyway, reference data, branch/unit data scope, RLS, outbox, idempotency store, lineage, reconciliation** |
| **FND-11** | **Search, Knowledge, and Retrieval Foundation** | **Full-text search, pgvector, LightRAG, LLM Wiki, Obsidian, provenance, retrieval classification, conflict detection** |
| **FND-12** | **AI Agentic, Auto-Learn, Auto-Heal, and Auto-Improve Foundation** | **Hermes registry, agent SBAC, skill library, prompt/model/guardrail registries, trust score, AI audit** |
| **FND-13** | **Common UI/UX, Portal, and Administration Foundation** | **Application shell, dynamic menu, approval inbox UI, document viewer, audit viewer, admin console** |
| **FND-14** | **Reporting, Analytics, Export, and Management Dashboard Foundation** | **Operational, workflow, security, audit, compliance, data quality, AI usage reports, controlled export** |
| **FND-15** | **Security, Privacy, and Data Protection Foundation** | **Vault/OpenBao, encryption, masking, privacy controls, vulnerability management, secure file intake, SIEM/SOAR** |
| **FND-16** | **Release, Change, Environment, and Lifecycle Foundation** | **Change workflow, release registry, deployment evidence, rollback/forward-fix, feature flags, CAB, promotion, drift detection** |
| **FND-17** | **Developer Experience and System Bootstrap Foundation** | **Repository templates, devcontainers, service skeletons, coding rules, SDKs, generated clients, onboarding, golden paths** |
| **FND-18** | **DevSecOps, Supply Chain, and GitOps Foundation** | **CI/CD templates, SAST, SCA, DAST, SBOM, signed artifacts, image registry, Argo CD, policy gates** |
| **FND-19** | **Resilience, BCDR, Backup, and Continuity Foundation** | **Backup/restore, PITR, DR, failover, chaos drills, service continuity, recovery evidence** |
| **FND-20** | **Quality Engineering and Fitness Function Foundation** | **Unit, component, contract, E2E, security, architecture, mutation, performance, accessibility, AI-eval test packs** |
| **FND-21** | **Platform Service Catalog and Consumer Enablement Foundation** | **Capability catalog, ownership, service SLOs, consumption guides, dependency map, support model, consumer feedback** |
| **FND-22** | **Performance, Capacity, and FinOps Foundation** | **Capacity model, load testing, cost tracking, token/call budgets, infrastructure utilization, performance baselines** |

## 7. Mandatory Capability Catalog

The catalog below defines the minimum foundation capabilities. Priority definitions: P0 = foundation/MVP mandatory, P1 = build next, P2 = hardening/expansion, P3 = future optimization. P0 capabilities must exist before the platform is treated as a reusable system factory baseline.

### 7.1 Foundation Governance and Registry

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-GOV-001** | **System/Application Registry** | **Register systems, modules, services, APIs, owners, environments, classifications, lifecycle status.** | **P0** |
| **FND-GOV-002** | **Environment Registry** | **Define DEV, INT, UAT, STG, PROD, DR, sandbox, agent lab, and model environments.** | **P0** |
| **FND-GOV-003** | **Configuration Management** | **Version runtime parameters, feature flags, transaction definitions, model aliases, and workflow settings.** | **P0** |
| **FND-GOV-004** | **Reference Data Management** | **Govern common status codes, document types, country codes, reason codes, approval types, event names, and error codes.** | **P1** |
| **FND-GOV-005** | **Classification Registry** | **Define Public/Internal/Confidential/Restricted handling, model routing, storage, logging, retention, and approval rules.** | **P0** |
| **FND-GOV-006** | **Capability Catalog** | **Register foundation packages, owners, APIs, events, UI components, MicroFunctions, SLOs, and consumers.** | **P0** |
| **FND-GOV-007** | **Exception and Waiver Registry** | **Track duplicated/custom capabilities, expiry, risk acceptance, compensating controls, and remediation.** | **P0** |

### 7.2 Identity, Login, Authentication, and Session

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-IAM-001** | **Login** | **Standard login entry flow through Keycloak/OIDC and enterprise identity provider.** | **P0** |
| **FND-IAM-002** | **Authentication** | **Delegated authentication through Keycloak and Active Directory; no custom password engine.** | **P0** |
| **FND-IAM-003** | **MFA / Step-Up Authentication** | **Additional verification for privileged, high-risk, or sensitive actions.** | **P1** |
| **FND-IAM-004** | **Token Validation** | **JWT/OIDC token validation through gateway and Spring Security.** | **P0** |
| **FND-IAM-005** | **Session Context Establishment** | **Resolve actor, branch/unit, org context, roles, skills, classification ceiling, and allowed routes.** | **P0** |
| **FND-IAM-006** | **Logout and Session Termination** | **Terminate session/token context and record logout audit.** | **P0** |
| **FND-IAM-007** | **Break-Glass Access** | **Emergency privileged access with expiry, approval, audit, and post-review.** | **P1** |
| **FND-IAM-008** | **Suspicious Login Handling** | **Detect failed/risky login patterns and trigger alert or review.** | **P1** |
| **FND-IAM-009** | **Service and Agent Identity** | **Register service identities and agent identities with classification ceilings and SBAC.** | **P0** |

### 7.3 Authorization and Access Control

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-AUTHZ-001** | **RBAC** | **Role-based permissions for standard system functions.** | **P0** |
| **FND-AUTHZ-002** | **ABAC** | **Attribute-based rules using org, branch, amount, product, classification, risk, channel, status.** | **P0** |
| **FND-AUTHZ-003** | **SBAC** | **Skill-based access for humans, agents, tools, privileged actions, and specialist operations.** | **P0** |
| **FND-AUTHZ-004** | **Permission Matrix** | **Central action-resource-role-skill-condition-classification matrix.** | **P0** |
| **FND-AUTHZ-005** | **Policy-as-Code** | **OPA/Rego policies for critical authorization and routing decisions.** | **P0** |
| **FND-AUTHZ-006** | **Access Decision Audit** | **Immutable allow/deny evidence with actor, action, resource, policy version, trace_id.** | **P0** |
| **FND-AUTHZ-007** | **Segregation of Duties** | **Maker/checker/approver/deployer/auditor separation.** | **P0** |
| **FND-AUTHZ-008** | **Privileged Access Management** | **Admin, security, DBA, platform, and emergency access controls.** | **P1** |
| **FND-AUTHZ-009** | **Access Review and Recertification** | **Periodic review of roles, skills, delegations, privileged access, and agent authority.** | **P1** |

### 7.4 Organization, Hierarchy, and Approval Authority

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-ORG-001** | **Organization Hierarchy** | **Company, division, department, unit, team, branch hierarchy.** | **P0** |
| **FND-ORG-002** | **Position Hierarchy** | **Position, rank, job level, job family, and reporting line.** | **P0** |
| **FND-ORG-003** | **Supervisor / Reporting Line** | **Direct manager, functional manager, dotted-line and substitute approver.** | **P0** |
| **FND-ORG-004** | **Approval Authority Matrix** | **Approver eligibility based on role, skill, amount, product, branch, risk, classification.** | **P0** |
| **FND-ORG-005** | **Approval Limits** | **Monetary, transaction, exception, document, workflow, and system-change limits.** | **P0** |
| **FND-ORG-006** | **Delegation of Authority** | **Temporary/permanent delegation with validity, scope, reason, and audit.** | **P1** |
| **FND-ORG-007** | **Escalation Matrix** | **Time-based, risk-based, exception-based escalation.** | **P1** |
| **FND-ORG-008** | **Committee Approval** | **CAB, credit committee, security committee, architecture board approval patterns.** | **P1** |

### 7.5 Workflow, Task, and Approval Engine

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-WF-001** | **Approval Workflow** | **Sequential, parallel, conditional, maker-checker, committee approval.** | **P0** |
| **FND-WF-002** | **Task Inbox** | **Standard human task list for approvals, reviews, exceptions, rework, and escalations.** | **P0** |
| **FND-WF-003** | **Workflow Registry** | **Versioned BPMN/CMMN/DMN definitions with owner and classification.** | **P0** |
| **FND-WF-004** | **Workflow Instance Tracking** | **Status, stage, owner, pending approver, SLA, and full history.** | **P0** |
| **FND-WF-005** | **SLA Timers** | **Due date, warning, breach, escalation.** | **P1** |
| **FND-WF-006** | **Exception and Rework Flow** | **Return to maker, revise, resubmit, cancel, approve with condition.** | **P1** |
| **FND-WF-007** | **Approval Comments and Attachments** | **Standard comments, reasons, evidence, supporting documents.** | **P1** |
| **FND-WF-008** | **Workflow Analytics** | **Bottleneck, SLA, rejection, rework, pending, and aging reports.** | **P2** |
| **FND-WF-009** | **Machine Workflow Binding** | **Temporal integration for durable retries, sagas, and compensation.** | **P1** |

### 7.6 MicroFunction Runtime and Transaction Assembly

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-MF-001** | **MicroFunction Runtime** | **Configuration-driven execution of reusable steps.** | **P0** |
| **FND-MF-002** | **Transaction Definition Registry** | **Transaction code, step sequence, parameters, policies, version, classification.** | **P0** |
| **FND-MF-003** | **Standard Function Catalog** | **Reusable STP-* functions for common concerns.** | **P0** |
| **FND-MF-004** | **Runtime Configuration Publisher** | **Governed promotion/activation of transaction definitions.** | **P0** |
| **FND-MF-005** | **Idempotency Framework** | **Duplicate prevention and replay-safe processing.** | **P0** |
| **FND-MF-006** | **Concurrency Control** | **Optimistic/pessimistic locks, version checks, safe retry behavior.** | **P1** |
| **FND-MF-007** | **Error Handling Framework** | **Safe error classification, response, escalation, DLQ.** | **P0** |
| **FND-MF-008** | **Compensation Framework** | **Rollback, forward-fix, saga, deactivation, and compensation.** | **P1** |
| **FND-MF-009** | **Business MicroFunction Extension Pattern** | **STP-BUS-* pattern for domain-specific gaps only.** | **P0** |
| **FND-MF-010** | **Step Validation and Fitness Check** | **Validate mandatory steps, security, idempotency, audit, and error path before activation.** | **P0** |

### 7.7 Document and Records Management

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-DOC-001** | **Document Upload** | **Controlled upload with file type/size, malware scan, checksum, metadata.** | **P1** |
| **FND-DOC-002** | **Document Registry** | **Metadata, owner, version, classification, retention, business reference.** | **P1** |
| **FND-DOC-003** | **OpenKM Integration** | **Official DMS/RMS storage, versioning, and retrieval reference.** | **P1** |
| **FND-DOC-004** | **Document Versioning** | **Supersedence, effective date, status, source hash.** | **P1** |
| **FND-DOC-005** | **Document Access Control** | **ACL, RBAC/ABAC/SBAC, branch/unit restrictions.** | **P1** |
| **FND-DOC-006** | **OCR and Text Extraction** | **PaddleOCR extraction, confidence, canonical text, search metadata.** | **P2** |
| **FND-DOC-007** | **Retention and Legal Hold** | **Retention schedule, archive, purge, hold, disposal evidence.** | **P2** |
| **FND-DOC-008** | **Document Audit Trail** | **Upload, view, download, update, approve, archive, delete evidence.** | **P1** |
| **FND-DOC-009** | **Evidence Artifact Repository** | **Store generated evidence packs, approvals, test reports, and release artifacts.** | **P1** |

### 7.8 Email, Notification, and Communication

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-NOT-001** | **Email Sending Service** | **Template-based outbound email with audit and retry.** | **P1** |
| **FND-NOT-002** | **Inbound Email Processing** | **Receive and process inbound email where required.** | **P2** |
| **FND-NOT-003** | **Notification Template Registry** | **Email, SMS, in-app, push, voice, and collaboration templates.** | **P1** |
| **FND-NOT-004** | **Notification Queue** | **Retry-safe queued delivery with DLQ and status tracking.** | **P1** |
| **FND-NOT-005** | **Delivery Tracking** | **Sent, delivered, failed, bounced, retried.** | **P1** |
| **FND-NOT-006** | **Workflow Notifications** | **Approval, escalation, rework, SLA breach notifications.** | **P1** |
| **FND-NOT-007** | **Security Notifications** | **Login, privileged access, suspicious activity, policy denial.** | **P1** |
| **FND-NOT-008** | **Communication Audit** | **Recipient, template, purpose, delivery status, trace_id, evidence.** | **P1** |

### 7.9 Audit, Evidence, Compliance, and Traceability

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-AUD-001** | **Technical Audit Log** | **Standard event-level audit for platform and service behavior.** | **P0** |
| **FND-AUD-002** | **Business Audit Trail** | **Business-visible action history.** | **P0** |
| **FND-AUD-003** | **Access Audit** | **Login, logout, denied access, privilege use.** | **P0** |
| **FND-AUD-004** | **Approval Audit** | **Approve, reject, return, delegate, escalate.** | **P0** |
| **FND-AUD-005** | **Data Change Audit** | **Create/update/delete before/after reference, actor, policy, reason.** | **P0** |
| **FND-AUD-006** | **AI Action Audit** | **Prompt, model route, guardrail, evidence, human review, output disposition.** | **P0** |
| **FND-AUD-007** | **Evidence Pack Generator** | **CI/CD, tests, scans, release, approvals, incident evidence.** | **P0** |
| **FND-AUD-008** | **Compliance Mapping** | **ISO 27001, CIS, NIST SSDF, NIST AI RMF, SOC 2 mapping.** | **P1** |
| **FND-AUD-009** | **AVCI Evidence Record** | **Owner, source, version, verification, classification, improvement path.** | **P0** |
| **FND-AUD-010** | **Evidence Retention and Legal Hold** | **Retention, immutable evidence storage, audit review, and disposal controls.** | **P1** |

### 7.10 Observability, Monitoring, and Incident Support

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-OBS-001** | **Structured Logging** | **Redacted logs with trace_id, service, env, event_name, safe error code.** | **P0** |
| **FND-OBS-002** | **Metrics Framework** | **Prometheus metrics and SLO indicators.** | **P0** |
| **FND-OBS-003** | **Distributed Tracing** | **OpenTelemetry trace/span correlation.** | **P0** |
| **FND-OBS-004** | **Error Monitoring** | **Sentry release-health and exception intelligence.** | **P1** |
| **FND-OBS-005** | **Dashboards and Alerts** | **Grafana dashboards, alert rules, SLA/SLO and security alerts.** | **P1** |
| **FND-OBS-006** | **Incident Record** | **Incident, evidence, root cause, fix, approval, learning.** | **P1** |
| **FND-OBS-007** | **Runbook Registry** | **Standard operational procedures and remediation guides.** | **P1** |
| **FND-OBS-008** | **Post-Incident Learning** | **Lessons learned and improvement candidates.** | **P2** |
| **FND-OBS-009** | **SLO and Error Budget Tracking** | **Service objectives, burn-rate alerting, platform health and consumer impact views.** | **P2** |

### 7.11 API, Integration, and Eventing

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-INT-001** | **API Gateway** | **Routing, authentication, rate limiting, correlation, safe errors.** | **P0** |
| **FND-INT-002** | **API Contract Registry** | **OpenAPI contracts, compatibility checks, generated clients.** | **P0** |
| **FND-INT-003** | **Event Contract Registry** | **AsyncAPI, CloudEvents, schema registry, compatibility.** | **P1** |
| **FND-INT-004** | **Standard Error Response** | **Safe problem response and stable error taxonomy.** | **P0** |
| **FND-INT-005** | **Integration Adapter Framework** | **External systems behind ports/adapters.** | **P1** |
| **FND-INT-006** | **Webhook Framework** | **Governed inbound/outbound webhooks.** | **P2** |
| **FND-INT-007** | **Kafka Event Publishing** | **Transactional outbox and durable event publication.** | **P1** |
| **FND-INT-008** | **Event Consumer Framework** | **Idempotent consumers, DLQ, replay, audit.** | **P1** |
| **FND-INT-009** | **Integration Resilience** | **Timeout, retry, circuit breaker, bulkhead, fallback.** | **P1** |
| **FND-INT-010** | **MCP Gateway Governance** | **Agent/tool context protocol endpoints registered, scoped, audited, and read-only by default.** | **P2** |

### 7.12 Data, Database, Migration, and Reference Architecture

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-DATA-001** | **Database Schema Foundation** | **Standard schemas for app, audit, config, evidence, registry.** | **P0** |
| **FND-DATA-002** | **Flyway Migration Framework** | **Versioned schema, seed, RLS, extension, and data migrations.** | **P0** |
| **FND-DATA-003** | **Tenant / Branch / Unit Data Scope** | **Business-unit and branch-aware access control and data partitioning.** | **P0** |
| **FND-DATA-004** | **Row-Level Security Pattern** | **Database-layer protection for restricted or scoped data where applicable.** | **P1** |
| **FND-DATA-005** | **Outbox Pattern** | **Reliable event publication from database transaction boundary.** | **P1** |
| **FND-DATA-006** | **Idempotency Store** | **Mutation replay prevention and idempotency state.** | **P0** |
| **FND-DATA-007** | **Data Classification Metadata** | **Table/column/object classification and handling rules.** | **P0** |
| **FND-DATA-008** | **Data Lineage and Reconciliation** | **Source, transformation, counts, hashes, control totals, evidence.** | **P2** |
| **FND-DATA-009** | **Data Quality Rules** | **Completeness, uniqueness, validity, timeliness, accuracy, and exception queues.** | **P1** |
| **FND-DATA-010** | **Migration and Parallel Run Evidence** | **Cutover mapping, reconciliation, controls, rollback, and sign-off evidence.** | **P2** |

### 7.13 Search, Knowledge, and Retrieval

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-KNOW-001** | **Global Search** | **Search across approved metadata and content.** | **P2** |
| **FND-KNOW-002** | **Full-Text Search** | **PostgreSQL/GIN or approved search over eligible text.** | **P2** |
| **FND-KNOW-003** | **Vector Search** | **pgvector/LightRAG for approved AI retrieval.** | **P2** |
| **FND-KNOW-004** | **Knowledge Index** | **LLM Wiki and Obsidian curated knowledge.** | **P1** |
| **FND-KNOW-005** | **Source Provenance** | **Every result traces to source, version, classification, freshness.** | **P1** |
| **FND-KNOW-006** | **Retrieval Classification** | **Prevent unauthorized retrieval and prompt assembly.** | **P1** |
| **FND-KNOW-007** | **Conflict and Freshness Detection** | **Detect stale, superseded, conflicting, draft, and restricted knowledge.** | **P2** |
| **FND-KNOW-008** | **Approved Knowledge Promotion** | **Human-reviewed promotion to canonical knowledge.** | **P1** |
| **FND-KNOW-009** | **Knowledge Quarantine** | **Exclude superseded, uncited, unclassified, or conflicting content from default retrieval.** | **P1** |

### 7.14 AI Agentic, Auto-Learn, Auto-Heal, and Auto-Improve

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-AI-001** | **Agent Registry** | **Register Hermes and all AI agents with owner, scope, and status.** | **P0** |
| **FND-AI-002** | **Agent SBAC** | **Skill, tool, repository, model, and action permissions.** | **P0** |
| **FND-AI-003** | **Agent Skill Library** | **Candidate, approved, rejected, deprecated, archived skills.** | **P1** |
| **FND-AI-004** | **Agent Task Request** | **Standard request schema and approval requirement.** | **P0** |
| **FND-AI-005** | **Agent Output Evidence** | **Prompt, model, source, classification, tests, policy, human review.** | **P0** |
| **FND-AI-006** | **Agent Trust Score** | **Progressive autonomy based on acceptance, defects, policy, risk, rollback.** | **P2** |
| **FND-AI-007** | **Auto-Learn Candidate Capture** | **Extract lessons from PRs, tests, incidents, reviews, and rejected outputs.** | **P1** |
| **FND-AI-008** | **Auto-Learn Promotion Workflow** | **Human review before knowledge/skill promotion.** | **P1** |
| **FND-AI-009** | **Auto-Heal Recommendation Engine** | **Diagnose, propose fix, generate candidate PR and rollback plan.** | **P2** |
| **FND-AI-010** | **Auto-Improve Recommendation Engine** | **Detect recurring issues and propose measurable improvements.** | **P2** |
| **FND-AI-011** | **Model Routing Registry** | **LiteLLM aliases, classification eligibility, budgets, fallback.** | **P0** |
| **FND-AI-012** | **Guardrail Registry** | **NeMo input/retrieval/execution/output policies and tests.** | **P0** |
| **FND-AI-013** | **Prompt Registry and AI Evaluation** | **Versioned prompts, golden datasets, retrieval/prompt/agent tests.** | **P1** |
| **FND-AI-014** | **Agent Kill Switch and Quarantine** | **Disable agent, skill, route, tool, or memory path when policy or safety violation occurs.** | **P0** |
| **FND-AI-015** | **AutoResearch Candidate Flow** | **External research stays non-authoritative until verified, classified, cited, and reviewed.** | **P2** |

### 7.15 UI, Administration, Reporting, and Lifecycle

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-UI-001** | **Application Shell and Dynamic Menu** | **Common layout, navigation, profile, notifications, role/skill-aware menu.** | **P1** |
| **FND-UI-002** | **Dashboard Framework** | **Standard dashboard cards, KPIs, and management views.** | **P2** |
| **FND-UI-003** | **Form and Grid Framework** | **Validation, accessibility, classification, table/grid search/filter/export.** | **P1** |
| **FND-UI-004** | **Approval Inbox UI** | **Common task list and approval screen.** | **P1** |
| **FND-UI-005** | **Document and Audit Viewers** | **Secure document preview and activity history viewer.** | **P2** |
| **FND-ADM-001** | **Admin Console** | **User, org, role/skill, policy, workflow, config, document, agent administration.** | **P1** |
| **FND-RPT-001** | **Reporting and Export Framework** | **Operational, security, audit, workflow, compliance, AI usage reports and controlled exports.** | **P2** |
| **FND-LC-001** | **Change and Release Workflow** | **Change request, release registry, deployment evidence, rollback/forward-fix, CAB, promotion, drift detection.** | **P0** |

### 7.16 Developer Experience, DevSecOps, Resilience, Quality, and FinOps

| **Code** | **Capability** | **Mandatory Outcome** | **Priority** |
| --- | --- | --- | --- |
| **FND-DX-001** | **Repository Bootstrap Template** | **Standard folders, CODEOWNERS, CLAUDE.md/AGENTS.md, PR template, ADR/TDL templates, CI skeleton.** | **P0** |
| **FND-DX-002** | **Devcontainer and Toolchain Baseline** | **Signed, scanned, pinned development environment with approved extensions and synthetic data.** | **P0** |
| **FND-DX-003** | **Golden Path Starter Kits** | **Backend, frontend, MicroFunction, API, database, workflow, and AI starter templates.** | **P1** |
| **FND-DEVSEC-001** | **CI/CD and Evidence Pipeline** | **Build, test, scan, package, sign, attest, publish, deploy, and retain evidence.** | **P0** |
| **FND-DEVSEC-002** | **Supply Chain Security** | **SBOM, SLSA provenance, signed artifacts, image scanning, dependency automation, policy gates.** | **P0** |
| **FND-QLT-001** | **Architecture Fitness Functions** | **SOLID, Clean Architecture, DDD, direct-provider-call prevention, forbidden imports, contract compatibility.** | **P0** |
| **FND-QLT-002** | **Test Pack Framework** | **Unit, component, contract, E2E, security, mutation, performance, accessibility, AI-eval templates.** | **P1** |
| **FND-RES-001** | **Backup and Restore** | **PITR, backup evidence, restore drills, encrypted backup, retention, ransomware resilience.** | **P1** |
| **FND-RES-002** | **DR and Continuity** | **DR environment, RTO/RPO, failover, recovery runbooks, validation evidence.** | **P2** |
| **FND-FIN-001** | **Capacity and Cost Governance** | **Compute/storage/token budgets, utilization dashboards, performance baselines, cost allocation.** | **P2** |

## 8. Capability Productization and Reuse Model

A foundation capability is a reusable platform product. It must be consumable by future systems through documented contracts and supported by lifecycle management, not by copying code or recreating patterns.

| **Required Asset** | **Description** |
| --- | --- |
| **Capability owner** | **Named accountable owner and support group.** |
| **OpenAPI contract** | **Synchronous API contract with version, compatibility policy, generated client support, and safe error taxonomy.** |
| **Event contract** | **CloudEvents/AsyncAPI schema with ownership, compatibility, outbox/replay rules, and consumer guidance.** |
| **UI component** | **Reusable screen, widget, menu, approval inbox, viewer, or admin function where applicable.** |
| **MicroFunction steps** | **Standard STP-* steps, parameters, error policies, idempotency, compensation, and observability metadata.** |
| **Configuration model** | **Runtime parameters, reference data, feature flags, workflow binding, classification, and activation rules.** |
| **Policy bundle** | **OPA/Rego, SBAC rules, data classification rules, and approval thresholds.** |
| **Test pack** | **Unit/component/contract/security/fitness tests that consuming systems can inherit.** |
| **Runbook and SLO** | **Operational guide, monitoring, alerts, dashboards, support path, SLOs, and incident workflow.** |
| **AVCI evidence schema** | **Owner, source, version, classification, verification, approvals, improvement path, and retention rule.** |

### 8.1 Reuse and Extension Rules

Every new AIRA-built system must start by selecting required foundation packages from the capability catalog.

A new system must not create a separate login, authorization, approval, document, audit, notification, evidence, AI-routing, or release mechanism unless a formal exception is approved.

Foundation services expose APIs, events, MicroFunctions, UI components, SDKs, generated clients, and configuration points.

Domain systems add only domain-specific aggregates, workflows, rules, reports, screens, integrations, and STP-BUS-* MicroFunctions.

Any foundation capability change requires impact analysis because it may affect multiple current and future systems.

Where a business requirement appears to require duplication, the team must first perform a fit-gap analysis against the existing foundation capability.

## 9. System Consumption and Onboarding Workflow

Register the new system or module in the System/Application Registry with owner, classification, environment scope, target users, and business objective.

Select mandatory foundation packages and declare which capabilities will be consumed, configured, extended, or deferred.

Generate repository and devcontainer baseline from the Developer Experience foundation templates.

Apply identity, org, access, workflow, audit, evidence, observability, release, and CI/CD templates before domain implementation starts.

Map domain-specific requirements into bounded contexts, workflows, STP-BUS-* functions, APIs, data schemas, screens, reports, and integrations.

Generate or update ADR/TDL records for material deviations, foundation extensions, new technology, new workflow ownership, or security-sensitive design choices.

Run foundation smoke tests, contract tests, policy tests, security tests, architecture fitness tests, and evidence-pack checks.

Proceed to domain build only after the foundation inheritance gate passes.

**Golden Path Rule. **The correct developer experience is not to ask each team to remember all standards. The correct experience is to provide templates, starter kits, CI gates, generated clients, and agent prompts that make the governed path the easiest path.

## 10. MicroFunction Alignment

The Foundation Capability Package is implemented through reusable services and standard MicroFunctions. Common concerns such as session, security, parsing, normalization, validation, idempotency, concurrency, runtime configuration, cache, audit, events, persistence, response, error handling, and compensation must be standard steps. Business applications implement only the remaining domain-specific gap.

| **Concern** | **Foundation-Owned** | **Business-Owned** |
| --- | --- | --- |
| **Identity and session** | **Authentication context, actor, branch/unit, role/skill resolution** | **Business-specific session restrictions only when approved** |
| **Authorization** | **RBAC/ABAC/SBAC, OPA, access audit** | **Domain-specific policy inputs and risk attributes** |
| **Workflow** | **Task inbox, approval patterns, SLA, escalation** | **Domain-specific approval route and business decision** |
| **Documents** | **Upload, metadata, OpenKM, classification, retention** | **Domain-specific document types and validation rules** |
| **Audit and evidence** | **Standard audit schema and evidence record** | **Domain action semantics and business history wording** |
| **AI governance** | **Model route, prompt/guardrail registries, agent registry, AI audit** | **Domain prompts, tools, retrieval scopes, and evaluation datasets under governance** |
| **Business logic** | **Execution envelope and reusable foundation steps** | **STP-BUS-* domain logic, rules, DMN, bounded-context service** |

### 10.1 Mandatory Standard STP-* Step Groups

| **Step Group** | **Purpose** | **Foundation Requirement** |
| --- | --- | --- |
| **Receive / Correlate** | **Accept trigger and create trace/request/correlation IDs.** | **Mandatory for every transaction.** |
| **Session / Security** | **Resolve actor, roles, skills, org scope, classification, and policy decision.** | **Mandatory for protected transactions.** |
| **Parse / Normalize / Validate** | **Canonicalize inputs and enforce schema/rule validation.** | **Mandatory before business execution.** |
| **Idempotency / Concurrency** | **Prevent duplicate effects and unsafe parallel mutation.** | **Mandatory for mutating transactions.** |
| **Business Logic** | **Execute STP-BUS-* or configured rule/DMN.** | **Business-owned gap only.** |
| **Persistence / Event / Audit** | **Persist state, publish events through outbox, and record evidence.** | **Foundation-managed pattern.** |
| **Response / Error / Compensation** | **Return safe response or route to retry, DLQ, compensation, or human review.** | **Mandatory error path before activation.** |

## 11. Data Model, Registry, and Metadata Requirements

Each foundation package must have an owning bounded context, schema owner, Flyway migration path, reference-data owner, audit record, retention rule, and data classification model. Common registries must be treated as platform assets, not informal spreadsheets.

| **Registry** | **Minimum Data Elements** |
| --- | --- |
| **System/Application Registry** | **system_id, name, owner, module, environment, classification, lifecycle, APIs, repositories, support group, SLO, evidence_ref** |
| **Capability Catalog** | **capability_id, package_code, owner, version, APIs, events, UI components, MicroFunctions, data schema, policy bundle, test pack, consumers** |
| **Organization Registry** | **org_unit_id, type, parent, branch/unit, effective dates, reporting line, status, classification** |
| **Permission / Skill Registry** | **role, skill, action, resource, condition, classification ceiling, policy version, approval requirement** |
| **Approval Matrix** | **approval_type, amount/risk/classification thresholds, approver rule, delegation, escalation, workflow version** |
| **Transaction Definition Registry** | **txn_code, version, step sequence, parameters, policies, idempotency, error path, classification, activation status** |
| **Document Registry** | **document_id, owner, source, classification, retention, hash, OpenKM reference, version, access control** |
| **Model Route Registry** | **alias, provider, classification ceiling, budget, fallback, guardrails, telemetry, owner, evaluation evidence** |
| **Agent Registry** | **agent_id, owner, supervisor, purpose, SBAC scope, allowed tools, model routes, trust level, kill switch** |
| **Evidence Registry** | **evidence_id, artifact_id, owner, source, verification, classification, retention, improvement path** |

**Metadata Rule. **Schemas must include classification, created/updated actor, version, status, effective dates, trace_id, evidence_ref, and retention metadata where applicable.

## 12. API, Event, UI, and SDK Contract Requirements

Every reusable foundation capability must expose approved OpenAPI contracts where synchronous access is required.

Asynchronous capability events must use CloudEvents and schema governance.

Generated clients should be used by consuming systems to reduce contract drift.

Breaking changes require versioning, deprecation plan, compatibility tests, migration notes, and ADR/TDL where material.

Reusable UI components must enforce role/skill-aware rendering, classification handling, accessibility, secure defaults, and audit-safe interaction logging.

Foundation SDKs must be thin clients over approved APIs and must not embed business rules, secrets, or bypass policies.

| **Contract Type** | **Mandatory Control** |
| --- | --- |
| **OpenAPI** | **Versioned contract, generated client, compatibility diff, authentication, authorization, problem response, rate limit, audit fields.** |
| **AsyncAPI / CloudEvents** | **Schema ownership, compatibility, event versioning, outbox, idempotent consumer, DLQ, replay, event audit.** |
| **UI component** | **Accessibility, role/skill visibility, classification cues, safe display, no token exposure, telemetry-safe instrumentation.** |
| **SDK / Client Library** | **Generated where possible, pinned version, backward-compatible, no hidden data access or business rules.** |
| **MicroFunction Contract** | **Typed input/output, idempotency, classification ceiling, error policy, test pack, evidence fields.** |

## 13. Security, Privacy, Classification, and Compliance Requirements

| **Control Area** | **Mandatory Requirement** |
| --- | --- |
| **Classification** | **All foundation data and actions carry classification and handling rules: Public, Internal, Confidential, Restricted.** |
| **Identity and access** | **Keycloak/AD/OIDC, MFA where required, RBAC/ABAC/SBAC, OPA decisions, access audit.** |
| **Secrets** | **Secrets remain in Vault/OpenBao or approved stores and never appear in prompts, logs, tests, screenshots, documents, or agent memory.** |
| **Data protection** | **Encryption in transit and at rest, masking/redaction, branch/unit scope, retention, legal hold, secure disposal.** |
| **Model route safety** | **Confidential and Restricted content uses approved model routes and guardrails; direct model-provider calls are prohibited.** |
| **Fail-safe behavior** | **Security decisions fail closed if identity, policy, guardrails, secrets, audit, or evidence dependencies are unavailable.** |
| **Compliance mapping** | **Foundation controls map to ISO 27001:2022, CIS Controls v8, NIST SSDF, NIST AI RMF, SOC 2, BSP IT Risk expectations, and SLSA targets.** |
| **Privacy by design** | **Only necessary data is collected, retained, searched, indexed, logged, or passed to AI; privacy impact is assessed for high-risk capabilities.** |

## 14. Agentic System Factory Alignment

The Foundation Capability Package must be agent-aware. Hermes and future agents shall use the same foundation for access control, workflow approvals, evidence, audit, notification, document storage, knowledge retrieval, learning promotion, and tool-action governance.

| **Agentic Capability** | **Foundation Dependency** |
| --- | --- |
| **Hermes Agent Runtime** | **Consumes agent registry, skill library, SBAC, model route registry, guardrail registry, knowledge index, and evidence store.** |
| **Auto-Learn** | **Uses source provenance, classification, knowledge promotion workflow, human review, and LLM Wiki/Obsidian indexing controls.** |
| **Auto-Heal** | **Uses incident records, observability evidence, GitNexus read-only impact analysis, candidate PR path, tests, rollback, and human approval.** |
| **Auto-Improve** | **Uses KPIs, architecture fitness functions, defect patterns, security findings, stale knowledge detection, and improvement backlog.** |
| **AutoResearch** | **Uses non-authoritative research state until verified, classified, cited, reconciled against AIRA authority, and human-reviewed.** |
| **Protected Tool Actions** | **Route through Harness, SBAC, OPA, trust score, audit, and Flowable human approval where required.** |
| **Agent Memory** | **Hermes working memory remains Tier 3 ephemeral state unless promoted through controlled knowledge governance.** |

**Agentic Governance Rule. **Auto-Learn may create candidate knowledge or skills but cannot promote them without human review. Auto-Heal may diagnose and propose fixes but cannot merge, deploy, directly mutate production, or disable controls. Auto-Improve must preserve or improve SOLID, Clean Architecture, DDD, testability, security, observability, reversibility, and AVCI evidence.

## 15. DevSecOps, Quality, Supply Chain, and Fitness Functions

| **Gate** | **Required Evidence** |
| --- | --- |
| **Repository bootstrap** | **Standard structure, CODEOWNERS, PR template, CLAUDE.md/AGENTS.md, ADR/TDL path, tests, CI skeleton.** |
| **Build and unit tests** | **Deterministic build, Java/TypeScript tests, test reports, coverage/change-impact evidence.** |
| **Architecture fitness** | **ArchUnit/dependency checks for Clean Architecture, DDD boundaries, ports/adapters, direct-provider-call prevention.** |
| **Contract testing** | **OpenAPI/AsyncAPI diff, generated client verification, consumer compatibility, versioning evidence.** |
| **Security testing** | **SAST, SCA, DAST, secret scan, container scan, IaC scan, OPA/Conftest policy tests.** |
| **Supply chain** | **SBOM, signed images, provenance/attestation, approved registry, dependency automation, vulnerability treatment.** |
| **Evidence pack** | **AVCI summary, CI/CD results, scan results, test results, approval records, release notes, rollback/forward-fix plan.** |
| **Deployment** | **GitOps/Argo CD, environment promotion, policy gates, CAB where required, post-deploy verification.** |

## 16. Resilience, Operations, BCDR, and Service Management

| **Operational Capability** | **Required Foundation Standard** |
| --- | --- |
| **Service ownership** | **Every foundation service has owner, support group, runbook, escalation path, and review cadence.** |
| **SLO / SLA / OLA** | **Critical services define availability, latency, error, throughput, evidence retention, and support targets.** |
| **Backup and restore** | **PITR, immutable backups where applicable, restore drills, recovery evidence, and retention.** |
| **DR and continuity** | **RTO/RPO, DR environment, failover/failback runbooks, rehearsal evidence.** |
| **Incident management** | **Incident record, timeline, root cause, fix, approval, customer/business impact, learning candidate.** |
| **Problem management** | **Recurring incidents become improvement backlog items with owner and due date.** |
| **Capacity and performance** | **Load tests, capacity models, latency budgets, token/cost budgets, utilization dashboards.** |
| **Operational security** | **SIEM/SOAR integration, privileged access review, vulnerability response, evidence retention.** |

## 17. Implementation Roadmap and Sequencing

| **Phase** | **Objective** | **Deliverables** | **Exit Criteria** |
| --- | --- | --- | --- |
| **0 - Foundation governance** | **Approve standard and establish ownership.** | **Approved standard, capability catalog, owners, package boundaries, exception workflow.** | **ARB/CAB approval and foundation backlog created.** |
| **1 - P0 foundation** | **Establish minimum reusable baseline.** | **Identity/session, org, RBAC/ABAC/SBAC, approval matrix, workflow, MicroFunction runtime, audit/evidence, API gateway, PostgreSQL/Flyway, observability, CI/CD, agent/model/guardrail registry.** | **PoC 1 Login and foundation smoke tests pass; no duplicate common capability.** |
| **2 - P1 operational foundation** | **Make foundation consumable by multiple modules.** | **Documents, notifications, task inbox, policy admin, admin console, OpenKM, Obsidian/LLM Wiki, prompt/skill registry, compliance mapping, starter kits.** | **Reusable across at least two PoCs or modules.** |
| **3 - Security and compliance hardening** | **Strengthen enterprise control posture.** | **Retention, legal hold, SIEM/SOAR, compliance reports, secret/scan evidence, policy tests, access recertification.** | **Security review and audit evidence accepted.** |
| **4 - AI self-improvement foundation** | **Enable controlled Auto-Learn/Heal/Improve.** | **Auto-learn workflow, auto-heal recommendation, auto-improve backlog, agent trust metrics, kill switches.** | **Candidate outputs reviewed and promoted safely.** |
| **5 - Reusable system factory rollout** | **Consume foundation for future BFS systems.** | **System onboarding workflow, service catalog, golden-path templates, metrics dashboard, consumer feedback loop.** | **New systems reuse packages without rebuilding common capabilities.** |
| **6 - Optimization and scale** | **Improve maturity, performance, and cost.** | **Capacity model, FinOps dashboards, resilience drills, process mining, advanced analytics, automation improvements.** | **Measured improvement in delivery speed, defects, reuse, and evidence completeness.** |

### 17.1 Priority and MVP Sequencing

| **Priority** | **Build Scope** |
| --- | --- |
| **P0 - Foundation/MVP Mandatory** | **Login, authentication, session, organization structure, RBAC/ABAC/SBAC, approval authority, workflow foundation, MicroFunction runtime, audit/evidence, PostgreSQL/Flyway, API gateway/contracts, DevSecOps evidence, observability, agent registry and model/guardrail routing, repository bootstrap, architecture fitness checks.** |
| **P1 - Build Next** | **MFA/step-up, delegation/escalation, document management, email/notification, task inbox, policy administration, OpenKM, Obsidian/LLM Wiki knowledge, AI prompt/skill registry, compliance mapping, administration console, starter kits.** |
| **P2 - Hardening/Expansion** | **Auto-heal recommendations, auto-improve recommendations, agent trust score, OCR/vector search, advanced analytics, legal hold/retention, SIEM/SOAR, knowledge conflict detection, agent red teaming, performance/capacity dashboards.** |
| **P3 - Future Expansion** | **Voice agent orchestration, agent marketplace, advanced auto-remediation, process mining, predictive risk scoring, business process optimization, controlled low-risk production automation.** |

## 18. Metrics, KPIs, and Maturity Model

| **Metric Category** | **Sample Measures** |
| --- | --- |
| **Reuse adoption** | **Percentage of new systems using foundation packages; duplicate capability count; exception count; foundation consumer count.** |
| **Delivery acceleration** | **Cycle time from requirement to PR; system bootstrap time; percentage of generated starter assets reused.** |
| **Quality and architecture** | **Architecture fitness pass rate; direct-provider-call violations; boundary violations; mutation score; flaky test rate.** |
| **Security and compliance** | **Policy denial count; secrets detected; high/critical vulnerability aging; access review completion; evidence completeness.** |
| **Operational resilience** | **SLO compliance; MTTR; incident recurrence; restore drill pass rate; rollback success rate.** |
| **Agentic effectiveness** | **Agent output acceptance rate; rework rate; policy violations; successful Auto-Learn promotions; Auto-Heal PR acceptance.** |
| **Knowledge health** | **Stale/conflicting sources; citation completeness; source freshness; retrieval classification violations.** |
| **Cost and capacity** | **Infrastructure utilization; token usage; cost per system/module; capacity forecast accuracy.** |

| **Maturity Level** | **Description** | **Exit Evidence** |
| --- | --- | --- |
| **L1 - Defined** | **Foundation packages and catalog are documented.** | **Approved standard, owners, package definitions.** |
| **L2 - Implemented** | **P0 packages exist and are consumed by PoC modules.** | **Working services, CI/CD, tests, evidence, PoC consumption.** |
| **L3 - Governed** | **Reuse, exceptions, security, evidence, and release gates are enforced.** | **Policy gates, CODEOWNERS, ADR/TDL, audit dashboards.** |
| **L4 - Scaled** | **Multiple systems reuse packages with measurable speed and quality improvement.** | **Reuse KPIs, consumer feedback, compatibility metrics.** |
| **L5 - Improving** | **Auto-Learn/Heal/Improve loops propose governed improvements and reduce defects/rework.** | **Accepted improvements, reduced recurrence, mature trust metrics.** |

## 19. RACI and Separation of Duties

| **Activity** | **IT Head / Architect** | **Dev Lead** | **DevSecOps** | **Security** | **QA** | **DBA/SRE** | **Business Owner** | **Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Approve foundation package standard** | **A/R** | **C** | **C** | **C** | **C** | **C** | **C** | **I** |
| **Own foundation architecture** | **A/R** | **R** | **C** | **C** | **C** | **C** | **I** | **I** |
| **Implement foundation services** | **A** | **R** | **R** | **C** | **R** | **R** | **C** | **I** |
| **Approve security/access model** | **A** | **C** | **C** | **R** | **C** | **C** | **C** | **I** |
| **Approve workflow/approval rules** | **A** | **C** | **C** | **C** | **C** | **I** | **R** | **I** |
| **Approve database/data model** | **A** | **C** | **C** | **C** | **C** | **R** | **C** | **I** |
| **Approve capability catalog changes** | **A/R** | **R** | **C** | **C** | **C** | **C** | **C** | **I** |
| **Approve agent capability and SBAC** | **A** | **C** | **R** | **R** | **C** | **C** | **I** | **I** |
| **Validate tests/evidence** | **A** | **C** | **C** | **C** | **R** | **C** | **C** | **I** |
| **Audit foundation evidence** | **I** | **C** | **C** | **C** | **C** | **C** | **C** | **A/R** |

## 20. Required Templates and Schemas

### 20.1 Capability Definition Template

| **Field** | **Required Content** |
| --- | --- |
| **capability_code** | **Unique code such as FND-IAM-001.** |
| **capability_name** | **Business-readable capability name.** |
| **package_code** | **Owning foundation package.** |
| **owner** | **Accountable owner and support group.** |
| **purpose** | **Why the capability exists and who consumes it.** |
| **priority** | **P0/P1/P2/P3.** |
| **classification** | **Maximum data classification and handling rules.** |
| **APIs / Events** | **OpenAPI/AsyncAPI contracts and versions.** |
| **MicroFunctions** | **Standard STP-* or STP-BUS-* references.** |
| **UI components** | **Reusable screens, widgets, forms, viewers, dashboards.** |
| **Policies** | **OPA/SBAC/classification rules.** |
| **Data owner** | **Schema owner, migration path, retention rule.** |
| **Tests** | **Unit, contract, security, fitness, E2E, performance where applicable.** |
| **Audit / Evidence** | **Audit events and AVCI evidence records.** |
| **Observability** | **Logs, metrics, traces, dashboards, alerts.** |
| **Rollback / Reversibility** | **Rollback, forward-fix, compensation, disablement, or retirement method.** |
| **Dependencies** | **Services, registries, workflows, tools, or data required.** |

### 20.2 Capability Reuse Checklist

Selected package and capability codes are recorded.

Required configuration, permissions, reference data, workflow version, API contract, UI component, test pack, runbook, and evidence reference are linked.

Consumer system has passed foundation inheritance smoke tests.

Any gap has been classified as configure, extend, or exception.

No duplicate common capability is introduced.

### 20.3 Foundation Exception Template

Requested duplicate/custom capability.

Reason existing foundation cannot be used.

Impacted packages and consuming systems.

Security, compliance, operational, and maintenance risk.

Cost of duplication versus foundation extension.

Temporary workaround, expiry, approver, compensating controls, and remediation plan.

## 21. Risks, Anti-Patterns, and Controls

| **Risk / Anti-Pattern** | **Impact** | **Control** |
| --- | --- | --- |
| **Foundation becomes too large or slow** | **Teams bypass or resist platform adoption.** | **Modular packages, bounded contexts, APIs, event contracts, service catalog, staged rollout, consumer feedback.** |
| **Teams bypass foundation** | **Duplicate plumbing, inconsistent controls, higher audit and maintenance cost.** | **Architecture review, PR template, CODEOWNERS, CI checks, exception workflow.** |
| **Common capability blocks domain agility** | **Business delivery slows because the platform becomes a bottleneck.** | **Configuration-first extension, MicroFunction pattern, versioned APIs, feature flags, domain extension lane.** |
| **Foundation change breaks consumers** | **Reusable capability causes platform-wide incidents.** | **Contract tests, semantic versioning, compatibility gates, release notes, canary rollout.** |
| **Access model becomes inconsistent** | **Unauthorized access, weak approvals, audit gaps.** | **Central RBAC/ABAC/SBAC, OPA policy, permission matrix, access audit, recertification.** |
| **Knowledge and AI drift** | **Agents or developers use stale or conflicting guidance.** | **Approved source hierarchy, freshness checks, candidate promotion workflow, quarantine.** |
| **Security or audit gaps** | **Platform becomes non-compliant despite reuse.** | **Mandatory audit/evidence schema, secret scanning, classification controls, fail-closed behavior.** |
| **Foundation copied into each system** | **Upgrade and patching become fragmented.** | **Consume via APIs, packages, generated clients, UI components, and configuration; prohibit copy-paste reuse.** |
| **Agent bypasses foundation controls** | **AI gains uncontrolled access or creates unsafe artifacts.** | **Agent registry, SBAC, LiteLLM, NeMo Guardrails, Harness, OPA, Flowable approval, kill switch.** |
| **Platform ownership unclear** | **Capabilities decay, incidents lack owner, and improvements stall.** | **Named owners, RACI, SLOs, runbooks, service catalog, quarterly review.** |

## 22. Acceptance Criteria

All P0 foundation packages are registered with owner, scope, APIs/events, data schema, tests, runbook, evidence, SLO, and lifecycle state.

No AIRA-built system implements separate login, authorization, approval, audit, evidence, document, notification, model routing, or release controls without approved exception.

All P0 identity, access, organization, workflow, MicroFunction, audit, data, integration, observability, DevSecOps, model route, and guardrail capabilities are implemented or explicitly waived with expiry.

Every foundation service exposes approved contracts and generated clients where applicable.

Every mutating transaction has idempotency, audit, error, compensation, and rollback/forward-fix evidence.

Every AI/agent interaction uses registered agents, LiteLLM aliases, guardrails, SBAC, audit, and human review where required.

Every foundation change enters through PR, tests, security scans, policy checks, architecture fitness functions, and AVCI evidence.

The foundation can bootstrap at least two different PoCs/modules without rebuilding common plumbing.

Foundation consumers have onboarding documentation, templates, runbooks, and support path.

Metrics show reuse adoption, evidence completeness, defect reduction, cycle-time improvement, and exception trends.

## 23. AVCI Compliance Summary

| **AVCI Property** | **How This Standard Satisfies It** |
| --- | --- |
| **Attributable** | **Defines foundation packages, capability codes, owners, registries, decision records, consumers, service catalog, RACI, and evidence ownership.** |
| **Verifiable** | **Requires tests, contracts, CI/CD evidence, scans, architecture fitness functions, audit, observability, acceptance criteria, SLOs, and consumer smoke tests.** |
| **Classifiable** | **Requires classification registry, handling rules, access control, model routing, retention, retrieval rules, data classification metadata, and agent classification ceilings.** |
| **Improvable** | **Defines roadmap, priority sequencing, reuse metrics, exceptions, maturity model, Auto-Learn, Auto-Heal, Auto-Improve, service catalog feedback, and quarterly review cadence.** |

## Appendix A. Copy-Ready Foundation Inheritance Gate

System registered in System/Application Registry.

Capability package selection completed.

P0 capabilities consumed or formally waived.

Repository bootstrap and devcontainer baseline applied.

Identity, org, RBAC/ABAC/SBAC, OPA, and audit integrated.

Workflow/task foundation configured where approvals exist.

MicroFunction transaction definition created for applicable processes.

API/event contracts created or linked.

Flyway migration path established.

Structured logs, metrics, traces, dashboards, and alerts defined.

CI/CD, security, policy, and architecture fitness checks enabled.

AVCI and design-principle PR template active.

Runbook and support owner assigned.

Foundation smoke test passed.

## Appendix B. Suggested Repository and Package Layout

aira-platform/
 foundation/
 identity-access/
 organization-approval/
 workflow-task/
 microfunction-runtime/
 document-records/
 notification-communication/
 audit-evidence/
 observability-incident/
 api-integration-eventing/
 data-migration-reference/
 knowledge-retrieval/
 agentic-ai/
 ui-admin-reporting/
 release-lifecycle/
 developer-experience/
 devsecops-supply-chain/
 resilience-bcdr/
 quality-fitness/
 service-catalog/
 finops-capacity/
 domain-systems/
 mortgage-servicing/
 account-management/
 contracts/
 openapi/
 asyncapi/
 microfunctions/
 standard/
 business/
 docs/
 adr/
 tdl/
 runbooks/
 standards/
 infra/
 helm/
 terraform/
 flyway/
 policies/

## Appendix C. Final Adoption Rule

**Final Adoption Rule. **AIRA shall not succeed by creating one strong first application and many weak future applications. AIRA succeeds when the first application creates the foundation that future BFS systems inherit, configure, verify, operate, and improve under the same AVCI-governed system factory.
