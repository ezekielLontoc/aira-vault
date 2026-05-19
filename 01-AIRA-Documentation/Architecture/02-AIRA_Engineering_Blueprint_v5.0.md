---
title: "02-AIRA Engineering Blueprint v5.0"
source_file: "01-AIRA-Documentation/Architecture/02-AIRA_Engineering_Blueprint_v5.0.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:35Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "01-AIRA-Documentation"
  - "Architecture"
aliases:
  - "02-AIRA_Engineering_Blueprint_v5.0"
creator: "Solutions Architecture Office"
created: "2013-12-23T23:15:00Z"
modified: "2013-12-23T23:15:00Z"
description: "Confidential internal architecture blueprint generated for architecture review."
---

AIRA

AI-Native Enterprise Platform

# Engineering Blueprint

Build-Ready System Specification for the Software Development Team

Enterprise Design Principles and SOLID Enforcement Release

Version 5.0 | April 2026

| Mandatory Architecture Position<br>AIRA is a governed AI-native enterprise platform. No architecture, service, MicroFunction, workflow, integration, model route, prompt, guardrail, remediation, or AI-assisted change is production-ready unless it preserves or improves AVCI, SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, testability, security posture, observability, resilience, reversibility, and architecture fitness evidence. |

| --- |

| Property | Value |

| --- | --- |

| Document Title | AIRA AI-Native Engineering Blueprint |

| Document Version | v5.0 - Enterprise Design Principles and SOLID Enforcement Release |

| Supersedes | 02-AIRA_Engineering_Blueprint_v4.0 |

| Classification | CONFIDENTIAL - Internal Use Only |

| Status | FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |

| Owner | Solutions Architecture Office / AI Enterprise Architecture |

| Effective Date | Upon Architecture Review Board / CAB approval |

| Review Cadence | Quarterly; unscheduled on material architecture, technology, security, regulatory, AI-risk, or operating-model change |

| Audience | CTO, Solutions Architect / IT Head, Enterprise Architects, Development Leads, DevSecOps, QA/SDET, Security, DBA, Platform Engineering, Internal Audit |

| Primary Governing Decision | ADR-AIRA-2026-001 - Adoption of Enterprise Design Principles and SOLID Enforcement Layer |

| Canonical Principle Reference | 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.0 |

| Universal Quality Reference | 01-AIRA AVCI Engineering Standard v3.0 |

| Companion Documents | 03 Developer Guide; 04 Technology Stack; 05 Information Nervous System; 06 CLAUDE.md Reference; 07 Skills Framework; 08 Unit Testing; 09 Greenfield Environment; 10 MicroFunction Framework; 11 DevSecOps; 13 Knowledge Governance; 14 ADR/TDL; 15 API; 16 Database; 17 Security |

| Purpose | Define the build-ready architecture, service boundaries, governance flows, enforcement controls, and architecture fitness expectations for AIRA development. |

1. Executive Summary

2. Authority, Scope, and Document Hierarchy

3. Enterprise Design Principles and SOLID Enforcement Layer

4. Target Architecture and Layered View

5. Clean Architecture, DDD, and Service Boundary Model

6. Component Responsibilities and Deployment Units

7. API, Event, and Integration Architecture

8. Workflow, MicroFunction, and Process Architecture

9. AI Orchestration, Guardrails, Model Governance, and Agent Boundary

10. Data, Knowledge, and Retrieval Architecture

11. Security Architecture and Access Control

12. Resilience, Idempotency, Determinism, and Concurrency

13. Observability, Audit, Evidence, and AVCI Traceability

14. Testing, Quality Engineering, and Architecture Fitness Functions

15. Deployment, Configuration, Release, and Reversibility

16. Auto-Heal, Auto-Learn, and Auto-Improve Architecture Governance

17. Developer Working Rules and Enforcement Gates

18. Cross-Document Revision Impact

19. RACI and Operating Model

20. Implementation Roadmap and Acceptance Criteria

Appendices

| Word TOC Note<br>This document uses a static Table of Contents for deterministic rendering in headless environments. Before publication, Microsoft Word may be used to replace it with a dynamic TOC if desired. |

| --- |

AIRA is a governed AI-native enterprise platform for regulated, mission-critical enterprise delivery. This Engineering Blueprint defines the build-ready architecture, service boundaries, data and knowledge design, workflow partition, AI governance controls, evidence model, and developer working rules required to build AIRA safely and consistently.

Version 5.0 upgrades the previous blueprint by making the Enterprise Design Principles and SOLID Enforcement Layer an explicit architecture control. The design now treats SOLID, Clean Architecture, Domain-Driven Design, ports-and-adapters, idempotency, determinism, fail-safe behaviour, human-in-the-loop approval, least privilege, separation of duties, observability, policy as code, testability, secure-by-design discipline, resilience patterns, architecture fitness functions, progressive autonomy, reversibility, rollbackability, and AVCI as enforceable invariants.

| Core Architecture Rule<br>No service, agent, script, notebook, workflow, MicroFunction, or utility may call an LLM provider directly or execute production-impacting tool actions outside the governed control path. Model traffic routes through LiteLLM and safety rails. AI tool execution routes through Harness, SBAC, OPA, trust scoring, audit, and human approval where required. |

| --- |

| Change Area | v5.0 Decision |

| --- | --- |

| 01A canonical reference | Introduces 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.0 as the canonical cross-document principle source. |

| AVCI alignment | Aligns with 01-AIRA AVCI Engineering Standard v3.0 and extends production readiness to include design-principle impact evidence. |

| Architecture principles | Expands architecture principles to all 20 enterprise design principles and marks them as design invariants. |

| Auto-* governance | Requires Auto-Heal, Auto-Learn, and Auto-Improve to preserve or improve architecture, security, testability, observability, reversibility, and AVCI evidence. |

| Fitness functions | Adds mandatory architecture fitness functions that can be enforced by CI, policy tests, contract tests, and review gates. |

| Boundary enforcement | Strengthens Clean Architecture, DDD bounded contexts, ports-and-adapters, MicroFunction isolation, and service ownership rules. |

| Decision governance | Requires material boundary, autonomy, model routing, workflow partition, and principle exceptions to be captured by ADR or TDL. |

| Outcome | How v5.0 Delivers It |

| --- | --- |

| Regulatory defensibility | Every critical decision, change, runtime action, model route, and remediation has owner, evidence, classification, and improvement path. |

| Maintainable extensibility | Business capabilities are isolated by bounded context, ports, adapters, contracts, MicroFunctions, and reusable platform concerns. |

| Safe AI acceleration | Hermes may reason and draft, but Harness, SBAC, OPA, guardrails, trust scoring, and humans govern execution. |

| Reduced architecture entropy | Architecture fitness functions detect boundary erosion, direct provider calls, contract drift, and uncontrolled dependencies. |

| Operational resilience | Idempotency, outbox, retries, circuit breakers, compensation, DLQ, and rollbackability are part of the design, not afterthoughts. |

This blueprint is the build-ready architecture authority for AIRA after the Consolidated Architecture authority, where such consolidated authority exists. It translates executive architecture decisions, AVCI quality rules, 01A design principles, and specialist standards into a coherent engineering specification.

AIRA service boundaries, deployment units, logical layers, data and knowledge architecture, workflow partition, AI orchestration, safety controls, and agent execution boundaries.

MicroFunction runtime architecture, standard step sequencing, configuration-driven assembly, error handling, compensation, audit, and runtime evidence.

Architecture governance for Auto-Heal, Auto-Learn, Auto-Improve, controlled AutoResearch, and AI-assisted development.

Architecture fitness functions, evidence requirements, release gates, and developer working rules necessary to preserve the target architecture.

Detailed syntax-level coding standards, which belong to the Developer Guide and CLAUDE.md hierarchy.

Exact product patch versions, which belong to the Technology Stack and Golden Source repositories.

Detailed human resource policy, procurement policy, and enterprise legal terms except where they affect architecture and control evidence.

| Level | Document / Control | Architecture Role |

| --- | --- | --- |

| L0 | Consolidated Architecture Blueprint / Architecture Board | Highest authority for end-to-end architecture and major conflicts. |

| L1 | 02-AIRA Engineering Blueprint v5.0 | Build-ready system specification: boundaries, flows, architecture controls, and evidence model. |

| L1 | 11-AIRA AI-Native DevSecOps Standard | Operating lifecycle, CI/CD gates, promotion discipline, and AI-assisted engineering procedures. |

| L2 | 01-AIRA AVCI Engineering Standard v3.0 | Universal artifact quality, evidence, classification, and improvement discipline. |

| L2 | 01A Enterprise Design Principles and SOLID Enforcement Layer | Canonical definition and evidence expectations for the 20 enterprise design principles. |

| L3 | Developer Guide, Technology Stack, Information Nervous System, CLAUDE.md, Unit Testing, MicroFunction, API, Database, Security standards | Specialist implementation and enforcement details. |

| L4 | ADRs, TDLs, tickets, PRs/MRs, runbooks, evidence packs | Implementation-specific decisions, work evidence, and controlled deviations. |

| Conflict Resolution Rule<br>Where this blueprint conflicts with a higher architecture authority, the higher authority governs and this blueprint is corrected through change control. Where a specialist document conflicts with this blueprint on service boundary, model route, workflow partition, or architecture invariant, this blueprint governs unless explicitly superseded by ADR. |

| --- |

The principles below are architecture invariants for AIRA. They are not optional recommendations. A design, implementation, pipeline, prompt, guardrail, workflow, model route, MicroFunction, or AI-assisted remediation that violates these principles must be rejected, remediated, or covered by an approved time-bounded exception.

| ID | Principle | Architecture Meaning | Primary Enforcement |

| --- | --- | --- | --- |

| EDP-01 | SOLID | Every component has one reason to change, stable abstractions, substitutable implementations, narrow interfaces, and dependency inversion. | ArchUnit, code review, Sonar, package boundary checks, PR checklist |

| EDP-02 | Clean Architecture | Domain logic remains independent from frameworks, UI, persistence, model providers, and infrastructure adapters. | Layer rules, package rules, dependency graph checks |

| EDP-03 | DDD / Bounded Contexts | Domain ownership, vocabulary, schema, events, and APIs are owned by explicit bounded contexts. | Context map, CODEOWNERS, schema ownership, contract registry |

| EDP-04 | Ports and Adapters | Inbound and outbound dependencies pass through explicit ports; external systems remain adapters. | Interface ownership, adapter tests, import bans |

| EDP-05 | DRY, KISS, YAGNI | Common enterprise concerns are standardized; unnecessary abstractions and speculative features are rejected. | Static analysis, review, MicroFunction reuse checks |

| EDP-06 | Idempotency by Design | Mutations, events, workflows, external calls, remediation actions, and replays are retry-safe and deduplicated. | Idempotency tests, outbox, processed-event registry |

| EDP-07 | Determinism and Reproducibility | Builds, tests, migrations, prompts, model routes, and workflows are reproducible from approved source. | Pinned versions, signed builds, deterministic test gates |

| EDP-08 | Fail-Safe, Not Fail-Open | Unavailability of policy, identity, guardrails, audit, gateway, or secrets blocks protected actions. | Health gates, circuit breakers, readiness checks |

| EDP-09 | Human-in-the-Loop | High-risk, low-confidence, production-impacting, Confidential, Restricted, or exception actions require named human accountability. | Flowable approvals, SBAC, trust threshold, audit |

| EDP-10 | Least Privilege / SBAC | Humans, services, and AI agents receive only task-necessary skills and permissions. | OPA, Keycloak, SBAC, Vault, SPIFFE/SVID |

| EDP-11 | Separation of Duties | Maker, checker, approver, deployer, and auditor responsibilities are separated for high-risk changes. | CODEOWNERS, MR approvals, CAB workflow |

| EDP-12 | Observability by Design | Every component emits trace, metric, log, audit, and evidence references without leaking sensitive data. | OTel, logs, metrics, spans, audit evidence checks |

| EDP-13 | Policy as Code | Access, admission, release, AI action, routing, and compliance rules are versioned and tested policies. | OPA/Rego, Conftest, Gatekeeper, CI policy tests |

| EDP-14 | Testability by Design | Units, contracts, workflows, policies, guardrails, AI prompts, and data flows are independently testable. | TDD, mutation, contract, guardrail, policy tests |

| EDP-15 | Secure by Design | Security is embedded in identity, secrets, validation, data, logging, CI/CD, and AI routing. | SAST, DAST, SCA, secret scanning, threat modeling |

| EDP-16 | Resilience Patterns | Retries, timeouts, circuit breakers, bulkheads, compensation, DLQs, fallbacks, and graceful degradation are explicit. | Resilience4j, Temporal, Kafka DLQ, chaos tests |

| EDP-17 | Architectural Fitness Functions | Architecture rules are executable where possible and tracked as release gates. | ArchUnit, dependency tests, CI evidence |

| EDP-18 | Progressive Autonomy | AI autonomy increases only through evidence, trust, skill, scope, policy, and human approval gates. | Trust scoring, Harness, OPA, SBAC, guardrails |

| EDP-19 | Reversibility / Rollbackability | Changes have forward-fix, rollback, compensation, or deactivation paths before release. | Flyway expand/contract, GitOps rollback, feature flags |

| EDP-20 | AVCI | Every artifact is Attributable, Verifiable, Classifiable, and Improvable before production use. | AVCI evidence schema, PR/MR summary, audit trail |

| SOLID Principle | AIRA Interpretation | Reject Condition |

| --- | --- | --- |

| Single Responsibility | Each service, module, MicroFunction, adapter, policy, and prompt has one coherent reason to change. | A component mixes domain logic, persistence, model calls, UI concerns, and operational side effects. |

| Open / Closed | Business variation is added through configuration, rules, adapters, or new bounded functions rather than modifying stable framework code. | A new business feature requires editing unrelated standard plumbing or existing stable framework paths. |

| Liskov Substitution | Alternative implementations of ports, adapters, repositories, model routes, and providers must preserve contracts and behaviour. | A replacement adapter changes error semantics, retries, data classification, or response contract unexpectedly. |

| Interface Segregation | Ports are narrow, task-specific, and classification-aware; consumers are not forced to depend on capabilities they do not use. | A service depends on broad manager interfaces or god services. |

| Dependency Inversion | Domain and application logic depend on abstractions; infrastructure, providers, databases, queues, and model gateways are adapters. | Domain code imports provider SDKs, database clients, framework-specific transport objects, or infrastructure classes. |

| Design Principle Gate<br>AIRA production readiness requires positive or neutral impact on the 20 Enterprise Design Principles. Any negative impact must be captured as a risk, waiver, ADR/TDL, remediation plan, expiry date, and named owner. Delivery pressure does not lower the gate. |

| --- |

AIRA is organized as a multi-layer architecture with explicit boundaries. Cross-layer shortcuts are architecture defects unless explicitly defined as a controlled break-glass action and approved by policy.

| Layer | Primary Responsibility | Representative Components | Boundary Rule |

| --- | --- | --- | --- |

| Presentation | User interaction, accessibility, client-side validation, and display logic. | React, Next.js, TypeScript, Tailwind | No domain decisions, direct data access, model calls, or secrets. |

| Enterprise Edge | Ingress, authentication, route policy, request correlation, rate limiting, and edge observability. | Spring Cloud Gateway, TLS, OIDC/JWT | No business rules or prompt construction. |

| Application / Domain Services | Bounded-context APIs, domain orchestration, domain events, validation, and business invariants. | Spring Boot, Spring Security, Resilience4j | Depend on ports and domain abstractions, not provider SDKs or infrastructure details. |

| Workflow and Process | Machine durability, sagas, compensation, human approvals, DMN, and configurable MicroFunction execution. | Temporal, Flowable, MicroFunction runtime | Temporal handles machine durability; Flowable handles humans and approvals. |

| AI Orchestration and Safety | Prompt assembly, retrieval coordination, guardrail sequencing, model routing, and tool-action boundary. | Spring AI, Hermes, NeMo Guardrails, LiteLLM, Harness, OPA, SBAC | Reasoning and execution remain separated. |

| Data, Knowledge, and Retrieval | Authoritative records, document storage, embeddings, retrieval, curated knowledge, and caches. | OpenKM, PostgreSQL, pgvector, LightRAG, LLM Wiki, Obsidian, Redis/Caffeine | Raw authoritative sources govern; derivatives rebuild from source. |

| Integration and Eventing | Asynchronous integration, lifecycle events, schemas, retries, DLQs, and external adapters. | Kafka, Avro, CloudEvents, schema registry | Events are contracts, not logs. |

| Platform, Security, and Observability | Runtime platform, identity, secrets, telemetry, evidence, policy, and operations. | Linux, Proxmox, Kubernetes, Vault, SPIFFE/SVID, OpenTelemetry, Prometheus, Loki, Tempo, Sentry, Grafana | Desired state comes from Git and approved operational workflows. |

Figure 1. Copy-ready Mermaid - Layered architecture overview

| flowchart TD  
  UI[Presentation Layer] --> GW[Enterprise Edge / Spring Cloud Gateway]  
  GW --> APP[Application and Domain Services]  
  APP --> WF[Workflow and Process: Temporal + Flowable + MicroFunctions]  
  APP --> AI[AI Orchestration and Safety: Hermes + Guardrails + LiteLLM + Harness]  
  APP --> DATA[Data, Knowledge and Retrieval: OpenKM + PostgreSQL + pgvector + LightRAG + LLM Wiki]  
  APP --> EVT[Integration and Eventing: Kafka + Avro + CloudEvents]  
  AI --> POL[OPA + SBAC + Trust + Audit]  
  WF --> AUD[Evidence and Audit]  
  DATA --> AUD  
  EVT --> AUD |

| --- |

AIRA engineering artifacts move from source and policy to runtime through one governed path: Git change -> MR/PR review -> CI evidence -> signed artifact -> registry -> GitOps reconciliation -> admission policy -> runtime. Workstations and AI agents do not push directly to clusters, databases, model backends, document stores, or operational tools.

Desired state is declared in Git and reconciled by GitOps tooling.

Runtime state must be explainable as a projection of approved source state, approved configuration, and approved operational workflow history.

Manual emergency actions are read-only by default and write-capable only under break-glass workflow with named approval, time-boxed access, and post-action reconciliation.

AIRA uses bounded contexts and clean architectural boundaries to prevent long-term entropy. Each bounded context owns its domain model, language, APIs, events, schema, policies, tests, and evidence. Shared data ownership is prohibited unless explicitly approved as a platform concern.

| Package / Layer | May Depend On | Must Not Depend On |

| --- | --- | --- |

| domain | Domain primitives, value objects, domain services, domain events, domain policies | Spring controllers, repositories, Kafka, HTTP clients, provider SDKs, database clients, LiteLLM, Vault |

| application | Domain, application ports, DTOs, command/query handlers, use-case orchestration | Provider-specific SDKs, direct SQL construction, direct model calls, direct infrastructure actions |

| adapter.in | Application ports, controllers, message consumers, workflow entry points | Domain internals not exposed through application use cases |

| adapter.out | Outbound ports, repositories, HTTP/Kafka/OpenKM/Vault/LiteLLM clients | Business decision ownership |

| infrastructure | Framework configuration, security, observability, persistence configuration | Domain business rules |

| tests | All layers through approved test boundaries | Real PII, production secrets, uncontrolled networks, nondeterministic clocks |

| Bounded Context | Owns | Integration Style |

| --- | --- | --- |

| Identity and Access | Human/service identity mappings, roles, skills, trust, access evidence | OIDC/OAuth, OPA, SBAC, audit events |

| Document and Records | Original documents, versions, registry, metadata, retention references | OpenKM adapter, events, document registry APIs |

| Workflow and Process | Durable workflows, approvals, process status, compensation, execution history | Temporal workflows, Flowable BPMN/DMN, events |

| MicroFunction Runtime | Runtime assembly definitions, step catalog, execution envelope, standard functions | Configuration APIs, Postgres definitions, audit events |

| Retrieval and Knowledge | Chunks, embeddings, evidence packs, graph relationships, curated wiki artifacts | ACL-filtered retrieval APIs, LLM Wiki review workflow |

| AI Orchestration | Intent handling, prompt composition, guardrail sequencing, model route proposal | LiteLLM, NeMo Guardrails, Harness proposals |

| Audit and Evidence | Immutable event records, traceability, evidence references, compliance outputs | Append-only APIs/events, observability correlation |

| Boundary Rule<br>A bounded context may consume another context through published APIs, events, projections, or approved shared platform services. It may not directly write another context's database tables or bypass the owning service. |

| --- |

The following service map defines deployment units and responsibility boundaries. A boundary violation is an architecture defect and must be corrected before production promotion unless explicitly approved by ADR.

| Service / Component | Primary Stack | Owns | Must Not Own |

| --- | --- | --- | --- |

| gateway-service | Spring Cloud Gateway / WebFlux | Ingress routing, JWT validation, edge policy, request correlation, rate limiting | Business logic, domain decisions, direct model invocation |

| orchestrator-service | Spring Boot + Spring AI + Hermes | Intent handling, prompt composition, evidence pack assembly, model invocation through LiteLLM | Direct tool execution, direct provider SDKs, credential ownership |

| harness-service | Spring Boot + OPA + SBAC | AI action mediation, action authorization, trust validation, downstream credential mediation, action audit | Reasoning, prompt generation, autonomous override |

| workflow-service | Spring Boot + Temporal + Flowable adapters | Machine workflows, sagas, retries, compensation, human approval handoff | Presentation UI, direct model routing, unbounded human task ownership |

| retrieval-service | Spring Boot + PostgreSQL + pgvector + LightRAG | ACL-filtered evidence retrieval, chunk/embedding retrieval, graph evidence assembly | Final answer generation, unreviewed wiki promotion |

| document-service | Spring Boot + OpenKM adapter | Document registry, OpenKM metadata, document version references, checksum validation | OCR, extraction, model calls, retrieval ranking |

| microfunction-runtime | Spring Boot + Caffeine + Redis + PostgreSQL | Runtime process assembly, execution envelope, standard steps, idempotency, audit, safe response | Domain-specific ownership outside STP-BUS or approved rules |

| admin-governance-service | Spring Boot + secured admin APIs | Governance actions, retention triggers, re-index requests, DLQ/replay controls | Bypassing CI/CD, CAB, guardrails, or policy approvals |

Each service has an explicit owner, repository path, runtime identity, deployment manifest, API/event contracts, observability dashboard, runbook, and test evidence.

Deployment units may share platform libraries but must not share mutable domain state outside approved schemas, events, or APIs.

Every service declares its data classification ceiling, model-route eligibility, external dependencies, SLOs, and rollback or forward-fix path.

Shared libraries are limited to stable primitives, contracts, security utilities, observability utilities, and framework-owned capabilities. They must not become hidden business logic repositories.

AIRA uses contract-first integration. Code follows approved OpenAPI, AsyncAPI, CloudEvents, and schema artifacts. AI assistants and developers may not invent endpoints, topics, fields, or error contracts outside the contract registry.

| Integration Type | Standard | Mandatory Rules |

| --- | --- | --- |

| REST APIs | OpenAPI; Spring Cloud Gateway; Problem Details error profile | Every endpoint has contract, owner, classification, auth policy, idempotency rule where mutating, examples, negative tests, and versioning plan. |

| Domain events | Kafka, Avro/JSON Schema, CloudEvents | Events are product-grade contracts with schema compatibility, classification metadata, trace_id, tenant_id where applicable, and outbox publication. |

| External systems | Ports and adapters | External APIs are wrapped behind outbound ports with timeouts, retries, circuit breakers, classification handling, and contract tests. |

| File/document integrations | OpenKM adapter and document lifecycle events | Originals remain in OpenKM; metadata and retrieval projections are traceable derivatives. |

| AI/model integrations | Spring AI abstraction, LiteLLM aliases, NeMo guardrails | No direct provider SDKs, hardcoded model names, unclassified prompts, or unmanaged fallback. |

All API and event-facing errors must use a stable, safe, machine-readable error taxonomy. Raw stack traces, SQL errors, provider errors, internal exception names, PII, secrets, and model prompts must never be exposed to callers, logs, test evidence, or AI prompt contexts.

AIRA separates durable machine workflows, human workflows, and configurable transaction execution. This separation preserves determinism, auditability, and human accountability while allowing business processes to be configured with minimal new code.

| Concern | Owner / Component | Rule |

| --- | --- | --- |

| Machine durability | Temporal | Long-running machine workflows, retries, timers, sagas, deterministic workflow history, and compensation orchestration. |

| Human approvals | Flowable | BPMN, CMMN, DMN, user tasks, SLA timers, exception reviews, CAB gates, waiver approvals. |

| Runtime transaction assembly | MicroFunction runtime | Standard steps are selected, ordered, parameterized, validated, cached, and executed through the framework. |

| Business logic | STP-BUS-* MicroFunctions or approved rules/DMN | Business behavior is isolated and reusable. Standard framework concerns are not recoded per transaction. |

| Error handling | Execution envelope | Every step has timeout, retry, error policy, safe response, audit, compensation, DLQ, or escalation path. |

A business step cannot execute before correlation, actor/session resolution, classification, authorization, normalization, validation, idempotency, and required policy gates have passed.

Mutating steps declare retry, timeout, idempotency, compensation, error policy, and audit behavior before activation.

Redis and Caffeine accelerate runtime definitions and lookups but never become authoritative sources.

New STP-BUS-* functions require catalog registration, unit/component tests, error taxonomy mapping, observability mapping, and AVCI evidence.

Figure 2. Copy-ready Mermaid - MicroFunction transaction flow

| sequenceDiagram  
  autonumber  
  actor User  
  participant GW as Gateway  
  participant API as Transaction API  
  participant MF as MicroFunction Runtime  
  participant BUS as STP-BUS-* Function  
  participant DB as PostgreSQL  
  participant AUD as Audit Evidence  
  User->>GW: Submit request  
  GW->>API: Authenticate, classify, correlate  
  API->>MF: execute(txn_code, payload, actor, tenant, idempotency_key)  
  MF->>MF: Standard controls: security, parse, normalize, validate, idempotency, lock  
  MF->>BUS: Execute isolated business capability  
  BUS->>DB: Persist through approved port/repository  
  MF->>AUD: Write step evidence and safe response metadata  
  MF-->>API: Success or safe error response |

| --- |

AI capabilities in AIRA are first-class architecture components but never bypass enterprise controls. Reasoning, retrieval, model routing, guardrails, tool execution, policy decisions, and human approvals are separate responsibilities.

| AI Concern | Required Component | Mandatory Rule |

| --- | --- | --- |

| Intent handling and prompt assembly | orchestrator-service + Hermes Agent | Uses approved prompt templates, evidence packs, classification labels, and prompt versions. |

| Model routing | LiteLLM | All model calls use governed aliases, budgets, virtual keys, logging controls, and classification-aware routes. |

| Guardrails | NeMo Guardrails | Input, Retrieval, Execution, and Output checkpoints are mandatory where applicable. Failure blocks the affected action. |

| Tool execution | Harness | Agents do not receive direct credentials. Harness validates identity, skill, trust, scope, OPA policy, approval, and audit. |

| Policy decisions | OPA | Authorization, routing, admission, release, AI action, and exception policies are versioned and tested. |

| Human approval | Flowable / CAB | High-risk, low-confidence, Confidential/Restricted, production-impacting, or exception actions require human approval. |

Figure 3. Copy-ready Mermaid - Agent action boundary

| flowchart TD  
  H[Human Request or System Signal] --> R[Agent Reasoning]  
  R --> G1[Input and Retrieval Guardrails]  
  G1 --> P[Proposed Action with Evidence, Risk, Confidence]  
  P --> G2[Execution Guardrail]  
  G2 --> HAR[Harness]  
  HAR --> SBAC[Skill and Trust Check]  
  SBAC --> OPA[OPA Policy Decision]  
  OPA -->\|Low Risk Approved\| TOOL[Approved Tool Action]  
  OPA -->\|High Risk or Low Confidence\| FLOW[Flowable Human Approval]  
  FLOW --> TOOL  
  TOOL --> AUD[Immutable Audit Evidence]  
  AUD --> LEARN[Governed Feedback Loop] |

| --- |

| Rejected AI Patterns<br>Direct provider SDK calls, ungoverned OpenRouter calls, bypass flags for guardrails, direct agent credentials, autonomous production execution, unreviewed prompt/guardrail edits, real PII in prompts/tests, and self-modifying AI artifacts are prohibited architecture patterns. |

| --- |

AIRA separates authoritative source systems from derivative retrieval, caches, graphs, and curated knowledge. This separation prevents AI-generated or compiled artifacts from silently overriding approved source truth.

| Layer | Representative Sources | Authority Rule |

| --- | --- | --- |

| Tier 0 - Authoritative | Approved Git/SCM, OpenKM, PostgreSQL transactional stores, Temporal/Flowable histories, identity/audit systems | Highest authority for conflicts, audit, and rebuild. |

| Tier 1 - Curated | LLM Wiki, Obsidian canonical notes, approved runbooks and reviewed summaries | Authoritative for guidance only when linked to approved source evidence. |

| Tier 2 - Compiled | pgvector chunks/embeddings, LightRAG graph, search indexes, generated summaries | Derivative; must retain lineage, version, classification, and refresh status. |

| Tier 3 - Ephemeral | Redis, Caffeine, semantic cache, local session state | Acceleration only; never source of truth or audit evidence. |

Retrieval results must be ACL-filtered, classification-aware, freshness-checked, and evidence-cited before prompt assembly.

Confidential and Restricted content follows approved private/on-premise model routing unless formally waived.

Auto-Learn output is a candidate artifact until reviewed, tested, classified, cited, approved, and promoted.

Stale, superseded, draft, or conflicting knowledge is quarantined from default LLM Wiki retrieval.

AIRA uses Zero Trust and least privilege by default. Human, service, workload, and AI agent access are named, authenticated, authorized, classified, trace-correlated, logged, and evidenced.

| Layer | Primary Controls | Evidence Required |

| --- | --- | --- |

| Identity | Keycloak, corporate AD/IdP, MFA, group/role mapping | User ID, realm, groups, MFA status, token issuer, revocation state |

| Gateway | TLS, JWT validation, rate limiting, route policy, trace injection | Request ID, actor, tenant, route, decision, trace_id |

| Service | Spring Security, resource authorization, OPA client, MicroFunction envelope | Subject, action, resource, policy version, classification, decision |

| Data | PostgreSQL RLS, schema ownership, encryption, audit columns | Tenant_id, actor, transaction, migration version, mutation history |

| Secrets | Vault / approved secrets manager, dynamic secrets, leases, rotation | Secret path, lease ID, accessor, TTL, rotation/revocation event |

| Workload | SPIFFE/SVID, mTLS, service identity | SPIFFE ID, certificate serial, trust domain, attestation event |

| AI Execution | Harness, SBAC, OPA, trust scoring, guardrails, LiteLLM | Agent ID, skill, trust score, model alias, guardrail result, approval, action result |

If Keycloak, Vault, OPA, Harness, LiteLLM, NeMo Guardrails, SPIFFE/SVID trust, or the audit pipeline is unavailable, protected actions are blocked by default. Availability incidents must degrade functionality safely, not silently weaken control.

AIRA must remain correct under retries, timeouts, partial failure, duplicate events, workflow restarts, cache loss, and AI remediation attempts. Correctness is more important than latency or convenience.

| Concern | Architecture Requirement | Evidence / Test |

| --- | --- | --- |

| Idempotency | Every mutating API, event consumer, workflow start, external call, and remediation action has a deduplication strategy. | Idempotency key tests, replay tests, processed-event registry checks. |

| Retries | Retry policy is named, bounded, jittered where needed, and safe only for idempotent or compensatable operations. | Resilience tests, Temporal workflow tests, error-policy evidence. |

| Timeouts | Every external dependency has explicit timeout and fallback or escalation behavior. | Contract test, resilience test, SLO dashboard. |

| Circuit breakers | Outbound dependencies are protected by circuit breaker, bulkhead, and fallback where appropriate. | Resilience4j tests, dependency health dashboards. |

| Compensation | Saga steps declare compensating action or explicit non-compensatable risk handling. | Temporal tests, MicroFunction compensation evidence. |

| Concurrency | State changes use optimistic/pessimistic lock, tenant constraints, or workflow-level serialization. | Race-condition tests, DB constraints, row-version evidence. |

| Determinism | Tests, builds, workflow history, migrations, and prompt evaluations avoid uncontrolled randomness, clocks, or external dependencies. | Pinned seed/time, hermetic test evidence, repeatability check. |

Observability is not only for troubleshooting. In AIRA, telemetry and audit evidence are part of regulatory defensibility, AI safety, and architecture governance. Every critical action must be reconstructable from trace, logs, metrics, policy decisions, model-route evidence, and audit records.

| Signal | Primary Tooling | Required Fields / Evidence |

| --- | --- | --- |

| Traces | OpenTelemetry, Tempo | trace_id, span_id, service.name, environment, route, dependency, classification marker where safe. |

| Metrics | Prometheus, Thanos, Grafana | SLOs, latency, error rate, dependency health, queue depth, model usage, guardrail blocks. |

| Logs | Log4j2 structured JSON, Loki | No PII/secrets; trace_id; event type; safe error code; classification-safe context. |

| Errors | Sentry | Exception fingerprint, release, environment, affected service, redacted context, issue lifecycle. |

| Audit | AIRA audit store / OpenKM evidence references | Actor, action, subject, resource, policy, classification, decision, approval, evidence_ref. |

| AI Evidence | LiteLLM, Guardrails, Harness, LLM Wiki | model_alias, prompt_version, guardrail_result, retrieval_refs, action_id, trust_score, human_approval. |

The minimum traceability chain for material changes is: business intent -> ticket or requirement -> ADR/TDL where material -> contract/config/code/prompt/guardrail change -> tests/scans/policy evidence -> CI run -> reviewer approval -> signed artifact -> deployment evidence -> runtime telemetry -> improvement feedback.

AIRA uses TDD, contract testing, security testing, AI evaluation, and architecture fitness functions to keep the architecture alive. Fitness functions convert architecture rules into executable checks wherever possible.

| ID | Fitness Function | Rule | Enforcement |

| --- | --- | --- | --- |

| FF-01 | No direct model provider SDK usage | Fail if provider SDK imports or direct model URLs are found in application code | CI import lint / Semgrep |

| FF-02 | Layer dependency direction | Fail if domain package depends on infrastructure, UI, persistence, framework, or AI gateway packages | ArchUnit |

| FF-03 | Bounded context isolation | Fail if one bounded context writes another context's schema or domain tables | DB migration lint / code review |

| FF-04 | Contract-first integration | Fail if REST or event implementation lacks approved OpenAPI/AsyncAPI/schema reference | Contract registry check |

| FF-05 | Mutation idempotency | Fail if state-changing API/event/workflow lacks idempotency or deduplication evidence | Unit + component test |

| FF-06 | Guardrails required | Fail if AI flow lacks Input, Retrieval, Execution, or Output rail where applicable | Guardrail test suite |

| FF-07 | Harness mediation | Fail if AI agent action directly calls tools or infrastructure instead of Harness | Architecture test / policy test |

| FF-08 | Policy-as-code coverage | Fail if access, admission, model routing, or agent action has no OPA/policy test | OPA test / Conftest |

| FF-09 | Observability evidence | Fail if service lacks trace_id, structured logs, metrics, and audit event mapping | OTel/log schema test |

| FF-10 | Reversibility evidence | Fail if deployment, migration, config, or prompt/guardrail change lacks rollback/forward-fix plan | Release checklist |

Unit and component tests for domain logic, validations, error handling, idempotency, compensation, and safe responses.

Contract tests for REST APIs, events, schemas, and provider adapters.

Policy tests for OPA/Rego, admission controls, model routing, agent actions, and access decisions.

Guardrail tests for Input, Retrieval, Execution, and Output rails.

Architecture tests for layer direction, package boundaries, forbidden imports, and service ownership.

Security tests for authorization, tenant isolation, data redaction, secret handling, and logging safety.

AI evaluation tests for groundedness, citation quality, retrieval quality, refusal behaviour, and unsafe tool-action blocking.

AIRA follows a source-to-runtime release path with signed evidence and policy gates. Releases must be repeatable, observable, reversible, and compliant with AVCI and the 20 enterprise design principles.

| Area | Architecture Rule |

| --- | --- |

| GitOps | Git is the source of truth for manifests, policies, prompts, guardrails, model aliases, pipeline definitions, and environment configuration. |

| Build provenance | Builds produce SBOM, signed provenance, test reports, scan results, and immutable CI evidence. |

| Deployment | Argo CD or approved GitOps tooling reconciles desired state. Manual kubectl changes are prohibited except controlled break-glass. |

| Configuration | Runtime parameters, feature flags, model aliases, guardrails, policies, and MicroFunction definitions are versioned, reviewed, signed, and activatable. |

| Database migration | Flyway migrations use expand/contract or forward-fix. Production DDL outside migration control is prohibited. |

| Reversibility | Each release declares rollback, forward-fix, compensation, feature-disable, cache-rebuild, or re-index strategy. |

| Release Readiness Gate<br>A release cannot proceed unless architecture fitness functions pass, tests and scans are complete, evidence is retained, rollback/forward-fix paths are declared, and no unresolved high-severity principle violations remain. |

| --- |

Auto-Heal, Auto-Learn, and Auto-Improve are governed improvement loops, not licenses for autonomous self-modification. They must preserve or improve architecture boundaries, SOLID compliance, security posture, testability, observability, resilience, reversibility, and AVCI evidence.

| Capability | Allowed Outcome | Mandatory Acceptance Conditions |

| --- | --- | --- |

| Auto-Heal | Detect failure, classify cause, propose minimal remediation, create PR/MR, run safe tests, escalate where risk requires. | Evidence-based, minimal, idempotent, tested, secure, observable, reversible, and does not bypass architecture boundaries. |

| Auto-Learn | Convert resolved incidents, reviews, postmortems, and approved patterns into candidate knowledge. | Attributable, cited, human-reviewed, classification-safe, non-conflicting, freshness-checked, and promoted through knowledge workflow. |

| Auto-Improve | Propose refactoring, architecture debt reduction, guardrail improvement, policy hardening, test expansion, or operational optimization. | Measurably improves risk, complexity, defect rate, latency, security, maintainability, or evidence completeness without weakening principles. |

Reject any automated change that weakens SOLID, Clean Architecture, DDD boundaries, ports/adapters, testability, security, observability, reversibility, or AVCI evidence.

Reject any remediation that bypasses LiteLLM, Guardrails, Harness, OPA, SBAC, Git/MR review, CI gates, or human approval for high-risk action.

Reject any learned knowledge that conflicts with approved source documents, lacks citations, uses real PII, or is based on stale/superseded artifacts.

Reject repeated AI remediation after three failed attempts and escalate to human engineering review.

Developers and AI assistants must work within the architecture. Convenience shortcuts that bypass architecture boundaries are treated as defects, not productivity improvements.

| Rule | Mandatory Practice |

| --- | --- |

| No direct model calls | All model traffic goes through LiteLLM and guardrails. Provider SDK imports in application services are prohibited. |

| No business logic in controllers | Controllers translate protocol input to application use cases and return safe responses only. |

| No infrastructure in domain | Domain logic cannot import database clients, HTTP clients, Kafka, provider SDKs, Vault, or framework-specific objects. |

| No duplicated standard concerns | Security, validation, idempotency, audit, telemetry, retries, error handling, and responses are framework concerns unless approved otherwise. |

| No hidden cross-context writes | Services may not write another bounded context's schema or tables. |

| No manual production mutation | Production changes occur through GitOps, migrations, approved workflows, or time-bound break-glass with reconciliation. |

| No unreviewed AI code | AI-generated code carries the same accountability, test, security, and review requirements as human code. |

| Evidence Item | Required Content |

| --- | --- |

| Principle impact | Positive, neutral, or negative impact on each relevant 01A principle; negative impact requires waiver. |

| Boundary impact | Service, bounded context, schema, API/event, workflow, model route, and data classification impact. |

| Fitness results | Architecture tests, policy tests, contract tests, guardrail tests, security tests, and CI evidence links. |

| Reversibility | Rollback, forward-fix, compensation, feature flag, or deactivation path. |

| AI involvement | Tool/model used, prompt intent, retrieved sources, files changed, tests run, and human checker. |

| AVCI summary | Attributable, Verifiable, Classifiable, Improvable evidence fields. |

This blueprint is part of the AIRA cross-document revision package initiated by ADR-AIRA-2026-001. The following documents must be updated or verified to ensure consistent enforcement of 01A.

| Document | Required Alignment |

| --- | --- |

| 01 AVCI Engineering Standard | Universal quality gate and evidence schema include 01A principle impact. |

| 03 Developer Guide | Coding patterns enforce SOLID, Clean Architecture, DDD, ports/adapters, and no direct model calls. |

| 04 Technology Stack | Tooling includes architecture fitness, policy, security, dependency, contract, and AI evaluation enforcement. |

| 05 Information Nervous System | Knowledge and Auto-Learn metadata include principle impact and source precedence. |

| 06 CLAUDE.md Reference | Repository rules and AI coding rules prohibit principle violations and architecture bypasses. |

| 07 Skills Framework | Human/agent skills include SOLID, DDD, architecture review, secure coding, and safe remediation. |

| 08 Unit Testing Standard | Tests include architecture tests, idempotency tests, deterministic tests, guardrail tests, and rollback evidence. |

| 10 MicroFunction documents | MicroFunctions remain single-responsibility, observable, idempotent, testable, compensatable, and isolated. |

| 11 DevSecOps Standard | Pipelines block untested, unsafe, non-reversible, or principle-weakening Auto-* PRs. |

| 13-17 Specialist Standards | Knowledge, ADR/TDL, API, database, and security standards implement principle-specific acceptance gates. |

| Activity | Responsible | Accountable | Consulted | Informed |

| --- | --- | --- | --- | --- |

| Approve architecture principles and blueprint | Enterprise Architect / Solutions Architecture Office | Solutions Architect / IT Head | Security, DevSecOps, Development Lead, QA, DBA | Development team, Internal Audit |

| Maintain service boundaries | Development Leads | Enterprise Architect | Domain SMEs, DBA, Security | Developers, QA |

| Enforce fitness functions | DevSecOps / QA | AI DevSecOps Lead | Development Lead, Security | All engineers |

| Approve Auto-Heal remediation | Development Lead / SRE | Change Owner | Security, QA, Architecture | CAB, affected teams |

| Promote Auto-Learn knowledge | Knowledge Steward | Domain Owner | Architecture, Security, QA | Developers and AI users |

| Approve principle waiver | Requesting Owner | Architecture Board / CAB | Risk Owner, Security, Compliance | Internal Audit |

Architecture Review Board: approves architecture invariants, major boundaries, ADRs, material waivers, and blueprint revisions.

Change Advisory Board: approves production-impacting changes, exception handling, release readiness, and break-glass reconciliation.

Engineering Review: validates fitness functions, code quality, tests, architectural alignment, and readiness to merge.

Knowledge Review: promotes Auto-Learn outputs, LLM Wiki artifacts, Obsidian notes, and retired/superseded references.

| Phase | Objective | Exit Criteria |

| --- | --- | --- |

| P1 - Adopt v5.0 Blueprint | Approve this blueprint and align with ADR-AIRA-2026-001, 01A, and AVCI v3.0. | Board/CAB approval, document registry updated, obsolete v4.0 marked superseded. |

| P2 - Update developer enforcement | Revise Developer Guide, CLAUDE.md, Unit Testing, DevSecOps, and MicroFunction standards. | Repository rules, PR templates, and CI gates updated. |

| P3 - Implement fitness functions | Implement initial architecture tests, import bans, contract checks, policy tests, and guardrail tests. | Fitness functions FF-01 through FF-10 running in CI with evidence retention. |

| P4 - Apply to foundation code | Use the blueprint to build repository skeleton, service boundaries, MicroFunction runtime, and CI/CD foundation. | Foundation services pass architecture, unit, contract, security, and evidence gates. |

| P5 - Govern Auto-* loops | Enable controlled Auto-Heal, Auto-Learn, and Auto-Improve proposals. | Auto-* proposals require human review, test evidence, reversibility, and principle impact assessment. |

Every AIRA service has an owner, bounded context, data ownership statement, API/event contract, security model, and observability evidence requirement.

All model traffic is governed through LiteLLM aliases and guardrail checkpoints; direct provider SDK usage is blocked.

AI agent actions are routed through Harness, SBAC, OPA, trust scoring, audit, and human approval where required.

Architecture fitness functions are defined, assigned, implemented in CI where possible, and linked to evidence retention.

MicroFunction and workflow patterns preserve SOLID, Clean Architecture, DDD, ports/adapters, idempotency, observability, and reversibility.

Cross-document revisions reference this blueprint, 01A, and AVCI v3.0 consistently.

| Field | Description |

| --- | --- |

| artifact_id | Unique identifier of code, config, prompt, guardrail, policy, schema, MicroFunction, or document artifact. |

| artifact_type | Code, configuration, migration, contract, prompt, guardrail, model route, workflow, document, policy, test, or remediation. |

| owner | Named human owner accountable for the artifact. |

| source_refs | Ticket, ADR/TDL, requirement, commit, contract, or source document references. |

| classification | Public, Internal, Confidential, or Restricted classification and handling rules. |

| principle_impact | Positive, neutral, negative, or not applicable for relevant 01A principles. |

| architecture_boundary_impact | Affected service, bounded context, schema, API/event, workflow, data source, model route, or policy boundary. |

| fitness_function_results | Passed/failed/not-applicable results and evidence links for applicable fitness functions. |

| security_impact | Authentication, authorization, secrets, logging, data classification, model routing, and access-control impact. |

| testability_impact | Unit, component, contract, policy, guardrail, architecture, and regression test impact. |

| reversibility_plan | Rollback, forward-fix, compensation, feature flag, deactivation, or rebuild path. |

| approval_state | Draft, reviewed, approved, waived, superseded, or retired. |

Copy-ready PR/MR template block

| ## AIRA Architecture Compliance Summary  
  
### Attributable  
- Owner:  
- Ticket / ADR / TDL:  
- AI tool/model used, if any:  
  
### Verifiable  
- Tests run:  
- Fitness functions passed:  
- Security/policy checks:  
- Contract/schema checks:  
  
### Classifiable  
- Data classification affected:  
- Model route eligibility:  
- Logging/redaction impact:  
  
### Improvable  
- Improvement rationale:  
- Metrics affected:  
- Follow-up backlog item, if any:  
  
### Enterprise Design Principle Impact  
- SOLID impact:  
- Clean Architecture / DDD / Ports-Adapters impact:  
- Idempotency / determinism / resilience impact:  
- Observability / security / policy-as-code impact:  
- Reversibility / rollbackability impact:  
- Waiver required: Yes/No |

| --- |

Direct model provider SDK imports or hardcoded model-provider URLs in application services.

Bypass flags for NeMo Guardrails, Harness, OPA, SBAC, audit, or classification routing.

AI agents with direct production credentials or autonomous override authority.

Domain code that depends on database clients, web clients, Kafka clients, model SDKs, or framework transport objects.

Controllers, UI components, workflow definitions, or prompts that contain hidden business decision ownership.

Cross-bounded-context database writes or shared mutable tables without approved platform ownership.

Manual production kubectl, production database edits, or click-ops configuration outside approved break-glass workflows.

Real customer PII, secrets, credentials, or restricted documents in prompts, tests, logs, traces, screenshots, examples, or embeddings.

Auto-Heal or Auto-Improve changes that remove tests, weaken security, disable observability, skip approvals, or reduce reversibility.

| AVCI Property | v5.0 Compliance |

| --- | --- |

| Attributable | Document owner, governing ADR, canonical 01A reference, companion documents, and review authority are declared. |

| Verifiable | Architecture rules are mapped to fitness functions, tests, policies, evidence gates, and review procedures. |

| Classifiable | Document and architecture artifacts are CONFIDENTIAL - Internal Use Only; runtime artifacts inherit classification-driven routing and handling. |

| Improvable | Blueprint is versioned, supersedable, reviewed quarterly, and linked to ADR/TDL, CI evidence, incident feedback, and Auto-* governance loops. |
