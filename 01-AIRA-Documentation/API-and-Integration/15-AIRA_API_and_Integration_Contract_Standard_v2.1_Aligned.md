---
document_id: "AIRA-DOC-015"
title: "AIRA API and Integration Contract Standard"
version: "v2.1"
status: "aligned"
source_file: "15-AIRA_API_and_Integration_Contract_Standard_v2.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/API-and-Integration"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - api
  - integration
---

# AIRA API and Integration Contract Standard

**AIRA Source Pack 05 v1.2 Alignment Control Addendum**

**Data, API, Security, and Decision | INTERNAL CONFIDENTIAL**

| **Current Document** | 15-AIRA_API_and_Integration_Contract_Standard_v2.1_Aligned.docx |
| --- | --- |
| **Document Title** | AIRA API and Integration Contract Standard |
| **Current Version** | v2.1 - Pack 05 v1.2 Alignment Update |
| **Supersedes** | 15-AIRA_API_and_Integration_Contract_Standard_v2.0 |
| **Classification** | INTERNAL CONFIDENTIAL |
| **Backend Runtime Baseline** | Java 25 LTS; Java 21 compatibility fallback by waiver is waiver-only compatibility fallback |
| **Technology Baseline** | AIRA Technology Stack v9.1; PostgreSQL 18.x; Flyway mandatory for application schema changes |
| **Canonical Principle Reference** | 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| **Prepared For** | AIRA Obsidian / LLM Wiki governed knowledge baseline |
| **Effective Date** | 2026-05-21 |

## Purpose of this v1.2 alignment

This addendum records the Pack 05 v1.2 alignment applied to AIRA API and Integration Contract Standard. It preserves the underlying source material for traceability while making the current interpretation consistent with Packs 01–04, the canonical 01A principle layer, Java 25 backend governance, Technology Stack v9.1, and the AIRA v1.2 Obsidian upload set.

## Document-specific improvements

| **Area** | **v1.2 Improvement / Interpretation** |
| --- | --- |
| Primary focus | Contract-first REST/event/API design, integration evidence, idempotency, and safe error handling. |
| Improvement 1 | Reinforced contract-first delivery for OpenAPI, AsyncAPI, CloudEvents, Problem Details, idempotency, schema compatibility, and generated client discipline. |
| Improvement 2 | Clarified that API contracts must expose no direct model-provider calls, direct database writes across bounded contexts, or policy-bypass routes. |
| Improvement 3 | Aligned API implementation expectations with Java 25, Spring Boot 4/Spring Framework 7 compatibility, LiteLLM-only model routing, and SBAC/OPA enforcement. |
| Cross-pack alignment | References to Pack 01–04 documents are interpreted using their aligned v1.2 filenames and versions, including AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, Technology Stack v9.1, Information Nervous System v4.1, and MicroFunction Framework v3.1. |
| Flyway governance | Application schemas, tables, constraints, indexes, RLS policies, reference data, outbox structures, idempotency registries, and evidence schemas must be delivered through Flyway or an approved migration workflow. Manual production DDL is rejected except approved emergency remediation with follow-up reconciliation. |
| AI/security controls | AI-assisted decisions, database changes, API contracts, migrations, and security actions remain subject to LiteLLM routing, NeMo guardrails, Harness-mediated execution, SBAC, OPA, audit evidence, and human approval where risk or classification requires it. |
| AVCI summary | Attributable: document owner and source are preserved. Verifiable: migration/contract/security evidence requirements are strengthened. Classifiable: INTERNAL CONFIDENTIAL is standardized. Improvable: open issues feed the revision-control matrix and next pack regeneration. |

## Interpretation rule

If the retained source content below contains an older version reference, the v1.2 alignment addendum governs until the next full canonical rewrite. Conflicts must be logged as AVCI reconciliation items and resolved through ADR/TDL or the revision-control matrix.

**AIRA**

AI-Native Enterprise Platform

API and Integration Contract Standard

_OpenAPI · AsyncAPI · CloudEvents · Contract-First · SOLID/AVCI-Governed_

**Version v2.1 · April 2026**

| **Mandatory Contract Principle**<br>No service integration is production-ready unless its contract is versioned, reviewed, tested, traceable, classified, registered, and aligned with the Enterprise Design Principles and SOLID Enforcement Layer. Code follows the contract; the contract does not follow accidental code behavior. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-015 |
| Document Title | AIRA API and Integration Contract Standard |
| Version | v2.1 - Pack 05 v1.2 Alignment Update |
| Supersedes | 15-AIRA_API_and_Integration_Contract_Standard_v1.0 |
| Status | FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION |
| Classification | INTERNAL CONFIDENTIAL |
| Owner | Solutions Architecture Office / Enterprise Architecture |
| Co-Owners | API Architecture · Integration Architecture · DevSecOps · Security Architecture · QA Engineering |
| Audience | Solutions Architects, Software Developers, QA/SDET, DevSecOps, Security, Integration Engineers, Database Engineers, AI Engineers, Internal Audit |
| Effective Date | On Architecture Review Board / CAB approval |
| Review Cadence | Quarterly; unscheduled review on material API, event, security, technology-stack, model-routing, or integration-pattern change |
| Primary Decision Inputs | ADR-AIRA-2026-001; AIRA Cross-Document Revision Control Matrix v1.2; 01A Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Companion Documents | 01 AVCI Engineering Standard v3.0; 01A Enterprise Design Principles v1.0; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.1; 05 Information Nervous System v4.1; 06 CLAUDE.md Reference v3.1; 07 Skills Framework v3.1; 08 Unit Testing Standard v3.0; 10/10A/10B/10C/10D MicroFunction documents; 11 DevSecOps Standard v3.0; 12 CLAUDE.md Rollout Starter Pack v3.0; 13 Knowledge Governance v2.1; 14 ADR/TDL Standard v2.0 |
| Purpose | Define the contract-first standard for REST APIs, event contracts, asynchronous integration, schema governance, error handling, versioning, idempotency, security, testing, evidence, and integration fitness functions across AIRA. |

## Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Contract Governance Principles

4. Authoritative Contract Standards

5. Contract Repository and Registry Model

6. REST API Contract Standard

7. Event and Asynchronous Integration Contract Standard

8. Error, Idempotency, Pagination, and Correlation Standard

9. Security, Classification, Privacy, and Model-Routing Rules

10. Enterprise Design Principles and SOLID Enforcement

11. Contract Testing, Compatibility, and Quality Gates

12. MicroFunction and Workflow Integration Contracts

13. AI-Assisted Contract Generation and Guardrails

14. Versioning, Deprecation, Retirement, and Reversibility

15. Observability, Audit, and Evidence Model

16. Auto-Heal, Auto-Learn, and Auto-Improve Integration Governance

17. Roles, RACI, and Operating Procedures

18. Implementation Roadmap and Acceptance Criteria

19. AVCI Compliance Summary

Appendix A. OpenAPI Template Baseline

Appendix B. AsyncAPI / CloudEvents Template Baseline

Appendix C. PR/MR Contract Evidence Checklist

| **Word TOC Note**<br>This document uses a static table of contents for deterministic rendering. In Microsoft Word, a dynamic TOC may be inserted before final publication if required. |
| --- |

## 1. Executive Summary

This standard defines how AIRA designs, publishes, validates, tests, evolves, and retires API and integration contracts. It prevents hidden coupling, undocumented interfaces, schema drift, integration defects, unsafe AI-generated shortcuts, and untraceable behavior across services and external systems.

Version 2.0 upgrades the v1.0 contract-first baseline by incorporating the Enterprise Design Principles and SOLID Enforcement Layer. API and event contracts must now explicitly preserve clean boundaries, DDD bounded contexts, ports-and-adapters separation, stable error semantics, idempotency, deterministic testing, secure-by-design controls, observability, reversibility, and AVCI evidence.

| **Strategic Outcome** | **How v2.0 Delivers It** |
| --- | --- |
| Modular development | Teams build against stable contracts owned by bounded contexts instead of waiting for accidental implementation behavior. |
| Maintainability | Versioned contracts, schema compatibility rules, deprecation windows, and ports/adapters reduce coupling and long-term entropy. |
| AI-safe development | Codex, ChatGPT, Claude Code, and other assistants must use approved contract templates and cannot invent endpoints, topics, fields, scopes, or error codes. |
| Operational resilience | Idempotency, correlation, retries, timeouts, DLQ, safe errors, and compatibility gates are part of the contract, not afterthoughts. |
| Audit defensibility | Every contract has owner, source, classification, evidence, review status, registry entry, version history, and improvement path. |

| **Contract-First Rule**<br>OpenAPI, AsyncAPI, CloudEvents schemas, error catalogs, idempotency profiles, and security definitions are design artifacts. Implementation must conform to them. A generated or manually written implementation that drifts from the approved contract is a defect. |
| --- |

## 2. Purpose, Scope, and Authority

This document gives Solutions Architects, developers, QA, DevSecOps, and integration engineers a single standard for API and integration contracts. It translates architecture principles into concrete contract design rules, review gates, test requirements, evidence records, and deprecation controls.

| **In Scope** | **Out of Scope** |
| --- | --- |
| REST APIs exposed by Spring Cloud Gateway, backend services, MicroFunction configuration APIs, Admin/Governance APIs, and internal service APIs. | Private in-memory method calls inside one class or module that do not cross a service, package, process, or bounded-context boundary. |
| Kafka topics, CloudEvents envelopes, AsyncAPI descriptions, Avro/JSON schemas, schema registry entries, event catalogs, and consumer compatibility rules. | Manual spreadsheet exports, informal reports, or one-time data extracts not used as system integrations. |
| Error contracts, pagination, filtering, idempotency, correlation IDs, audit headers, classification headers, security scopes, model-routing eligibility, and safe responses. | Screen copywriting, visual UI layout, and non-persistent frontend-only state. |
| Contract testing, schema evolution, compatibility, deprecation, retirement, and rollback/forward-fix plans. | Vendor API behavior before it is integrated; once consumed, adapter contracts are in scope. |

| **Authority Level** | **Document / Control** | **Contract Concern** |
| --- | --- | --- |
| L0 | AIRA Consolidated Architecture Blueprint / Architecture Board | End-to-end architecture, major boundaries, and external integration posture. |
| L1 | AIRA Engineering Blueprint v5.1 | Service boundaries, data ownership, workflow partition, AI safety, and integration patterns. |
| L2 | 01A Enterprise Design Principles; AVCI v3.1 | Universal design, SOLID, evidence, classification, and improvement requirements. |
| L3 | This API and Integration Contract Standard | Contract-first design, API/event rules, compatibility gates, and schema governance. |
| L4 | Contracts, schemas, ADRs, tests, and PR evidence | Implementation-level contract artifacts and evidence. |

## 3. Contract Governance Principles

| **No.** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| API-1 | Contract first | No implementation starts without an approved OpenAPI or AsyncAPI contract, except a time-boxed spike that cannot merge to main. |
| API-2 | One canonical contract registry | Contracts live in Git, are registered, and are indexed by Obsidian/LLM Wiki. Generated docs are derivative. |
| API-3 | Backward compatibility by default | Existing consumers must not break without planned versioning, migration, and deprecation controls. |
| API-4 | Schemas are owned artifacts | Every schema has owner, version, bounded context, classification, compatibility rule, and evidence references. |
| API-5 | Events are contracts, not logs | Kafka events are product-grade integration contracts, not arbitrary log payloads. |
| API-6 | Idempotency is mandatory for mutation | Client retry, workflow replay, event redelivery, or external timeout must never double-post business effects. |
| API-7 | Errors are stable and safe | Errors use standard problem details and AIRA error codes without leaking internals, secrets, prompts, or PII. |
| API-8 | Security is part of the contract | Authentication, authorization claims, scopes, tenant rules, classification handling, and model-route eligibility are contract elements. |
| API-9 | Traceability is mandatory | Every request and event carries correlation identifiers and evidence references where applicable. |
| API-10 | AI cannot invent integration behavior | AI assistants must use the contract registry and approved templates. Undocumented endpoints, topics, fields, or scopes are rejected. |
| API-11 | Ports-and-adapters always | External systems are reached through approved adapters, never by leaking vendor details into domain logic. |
| API-12 | Reversibility by design | Breaking changes require rollback, forward-fix, dual-run, consumer migration, or compensating integration strategy. |

## 4. Authoritative Contract Standards

| **Contract Area** | **AIRA Standard** | **Use in AIRA** | **Governance Rule** |
| --- | --- | --- | --- |
| HTTP / REST | OpenAPI 3.2.0 preferred; 3.1.x acceptable if tooling gap exists | All REST APIs, gateway-routed services, admin APIs, MicroFunction configuration APIs | Every endpoint must have a reviewed OpenAPI contract before implementation. |
| Asynchronous / Event-driven | AsyncAPI 3.1.0 preferred; 3.0.0 acceptable if tooling gap exists | Kafka topics, message-driven APIs, event catalogs, internal event backbone | Every producer and consumer declares channel, operation, message, payload, headers, compatibility level, and owner. |
| Event envelope | CloudEvents 1.0.2 | Kafka domain events and cross-service lifecycle events | All domain events carry CloudEvents required attributes plus AIRA trace, tenant, classification, and schema metadata. |
| Payload schema | JSON Schema 2020-12 or Avro schema registry depending on channel | REST DTOs, config schemas, event payloads, test fixtures | Schemas are versioned, linted, compatibility-tested, classified, and registered. |
| Errors | RFC 9457 Problem Details pattern plus AIRA error_code extension | REST errors, gateway errors, integration adapter errors | No raw stack traces. Error bodies are stable, safe, machine-readable, and trace-correlated. |
| Authorization | OIDC/OAuth resource-server pattern with approved JWT claim mapping | User/API authorization and service-to-service calls | Scopes, roles, claims, tenant rules, classification ceiling, and SBAC conditions are documented. |
| Idempotency | AIRA Idempotency-Key profile based on IETF draft semantics | Mutating POST/PATCH/command operations and event consumers | Key, fingerprint, expiry, replay behavior, collision behavior, and error scenarios are documented. |
| Service-to-service | SPIFFE/SVID and mTLS where applicable | Internal calls and adapters | Workload identity, audience, trust domain, and retry/timeout policy are specified. |

## 5. Contract Repository and Registry Model

AIRA maintains contracts as versioned source artifacts. Generated Swagger UI, portal pages, client SDKs, mocks, and wiki summaries are derivative and must be rebuilt from the canonical contract registry.

| aira-contracts/<br>├── README.md<br>├── openapi/<br>│ ├── gateway-service/<br>│ ├── ingestion-service/<br>│ ├── retrieval-service/<br>│ ├── orchestrator-service/<br>│ ├── microfunction-config-service/<br>│ └── admin-governance-service/<br>├── asyncapi/<br>│ ├── document-lifecycle.yaml<br>│ ├── microfunction-runtime.yaml<br>│ ├── audit-events.yaml<br>│ └── ai-governed-actions.yaml<br>├── schemas/<br>│ ├── json-schema/<br>│ └── avro/<br>├── examples/<br>│ ├── requests/<br>│ ├── responses/<br>│ └── events/<br>├── tests/<br>│ ├── contract/<br>│ ├── compatibility/<br>│ ├── negative/<br>│ └── security/<br>└── governance/<br> ├── CODEOWNERS<br> ├── contract-register.yaml<br> ├── deprecation-register.yaml<br> └── contract-evidence-register.yaml |
| --- |

| **Registry Field** | **Required Value** |
| --- | --- |
| contract_id | Unique ID for API, event, schema, error catalog, or integration profile. |
| bounded_context / owner | Owning bounded context, accountable owner, and CODEOWNER group. |
| classification | Public, Internal, Confidential, or Restricted plus handling rules. |
| version / status | Draft, Review, Accepted, Published, Deprecated, Retired, Superseded. |
| compatibility_rule | Backward compatible, additive-only, major-versioned, or breaking-change waiver. |
| evidence_refs | Contract tests, schema tests, review record, security approval, ADR/TDL, PR/MR. |
| ai_usage_allowed | Whether AI tools may use this contract as source material and under what classification route. |
| supersedes / superseded_by | History chain for safe retrieval and migration planning. |

## 6. REST API Contract Standard

| **Rule** | **Standard** |
| --- | --- |
| Base path | /api/{bounded-context}/v{major}/{resource}; internal admin APIs may use /api/admin/v{major}/... |
| Resource names | Plural nouns in kebab-case: documents, process-definitions, workflow-instances. |
| HTTP methods | GET reads; POST creates or commands; PUT replaces; PATCH partially updates; DELETE retires/soft-deletes unless hard purge is legally approved. |
| Request IDs | Every request has X-Request-Id. Gateway creates one if absent. |
| Trace context | W3C traceparent and tracestate propagated end-to-end. trace_id appears in audit evidence and safe errors. |
| Tenant and actor | Tenant, subject, role, skill, and classification context are resolved by gateway/service controls, not trusted blindly from client input. |
| DTO naming | Stable request/response schemas. No leaking of entity or persistence models to external contracts. |
| Validation | Schema, field, cross-field, business, policy, classification, and security validation are documented. |
| Response envelopes | Success responses are explicit and typed. Async commands return accepted acknowledgement with tracking reference. |
| No hidden behavior | Defaults, side effects, generated fields, workflow starts, event emissions, and idempotent replay behavior are documented. |

| paths:<br> /api/document/v1/documents:<br> post:<br> operationId: createDocumentIntake<br> summary: Create a document intake request<br> security:<br> - oidc: [document:intake:create]<br> parameters:<br> - name: X-Request-Id<br> in: header<br> required: false<br> schema: { type: string }<br> - name: Idempotency-Key<br> in: header<br> required: true<br> schema: { type: string, maxLength: 160 }<br> requestBody:<br> required: true<br> content:<br> multipart/form-data:<br> schema: { $ref: '#/components/schemas/CreateDocumentIntakeRequest' }<br> responses:<br> '202': { description: Accepted for processing }<br> '400': { $ref: '#/components/responses/ProblemBadRequest' }<br> '403': { $ref: '#/components/responses/ProblemForbidden' } |
| --- |

## 7. Event and Asynchronous Integration Contract Standard

Events in AIRA are integration contracts and must be treated with the same discipline as REST APIs. Producers must not publish fields that consumers discover by accident. Consumers must not depend on undocumented fields or ordering assumptions unless declared.

| **Event Rule** | **Standard** |
| --- | --- |
| Envelope | CloudEvents required attributes plus AIRA extensions: trace_id, request_id, tenant_id, classification, schema_id, schema_version, producer_service, evidence_ref. |
| Payload | Avro or JSON Schema with compatibility rule and schema registry entry. |
| Topic naming | aira.{bounded_context}.{event_family}.v{major}; DLQ uses .dlq suffix and preserves original metadata. |
| Event type naming | com.aira.{bounded_context}.{aggregate}.{event_name}.v{major}. |
| Ordering | Partition key is documented. Consumers must not assume global ordering. |
| Delivery semantics | At-least-once delivery is assumed. Consumers must be idempotent and retry-safe. |
| DLQ | DLQ payload includes failure reason, error_code, retry_count, first_seen, last_seen, and safe diagnostic context. |
| Retention | Retention is set by classification, legal, audit, and reprocess requirements. |
| Schema evolution | Additive compatible changes are preferred. Removing or changing field semantics requires major version or approved migration. |
| Event evidence | Producer and consumer contracts link to tests, sample events, compatibility checks, and evidence records. |

| type: com.aira.document.document-intake.accepted.v1<br>source: /services/ingestion-service<br>time: 2026-04-27T00:00:00Z<br>id: <uuid><br>specversion: '1.0'<br>datacontenttype: application/avro<br>subject: document/<document_id><br>extensions:<br> trace_id: <trace-id><br> request_id: <request-id><br> tenant_id: <tenant-id><br> classification: INTERNAL<br> schema_id: document-intake-accepted<br> schema_version: 1.0.0<br> evidence_ref: openkm://.../evidence/... |
| --- |

## 8. Error, Idempotency, Pagination, and Correlation Standard

| **Area** | **Mandatory Contract Requirement** |
| --- | --- |
| Problem Details | Every REST error uses RFC 9457 style fields plus AIRA error_code, trace_id, request_id, classification-safe message, and optional remediation hint. |
| Error catalog | Each error_code has owner, domain, HTTP status, retryability, user message, log level, security handling, and support playbook. |
| Safe error messages | No stack traces, SQL, secrets, prompt text, embeddings, tokens, file paths, raw PII, or internal topology in external errors. |
| Idempotency header | All mutating REST operations that can be retried require Idempotency-Key or an equivalent natural idempotency profile. |
| Replay behavior | Successful replay returns the original safe result or an idempotent accepted response; collisions return a stable conflict error. |
| Pagination | List APIs use explicit limit/cursor or page/size rules; sorting and filtering fields are documented and indexed where needed. |
| Correlation | X-Request-Id, traceparent, tenant context, actor context, and evidence references must propagate into logs, traces, audit, events, and errors. |

| {<br> "type": "https://aira/errors/validation-failed",<br> "title": "Validation failed",<br> "status": 400,<br> "detail": "One or more request fields are invalid.",<br> "error_code": "AIRA-VAL-0001",<br> "trace_id": "<trace-id>",<br> "request_id": "<request-id>",<br> "classification": "INTERNAL",<br> "violations": [ { "field": "document_type", "reason": "Unsupported value" } ]<br>} |
| --- |

## 9. Security, Classification, Privacy, and Model-Routing Rules

| **Control** | **Contract Requirement** |
| --- | --- |
| Authentication | Security schemes specify OIDC/OAuth profile, token audience, issuer, scopes, and required claims. |
| Authorization | Contracts identify required scopes, roles, ABAC attributes, SBAC skills, and OPA policy package where applicable. |
| Tenant isolation | Tenant-bearing APIs and events declare tenant_id handling, isolation expectation, and cross-tenant prohibition. |
| Classification | Contract fields, payloads, events, examples, and fixtures carry classification and handling rules. |
| Privacy and PII | PII fields are explicitly marked. Examples use synthetic data only. Logs, errors, cache keys, and prompts must not expose raw PII. |
| Secrets | Contracts must not contain real secrets, credentials, tokens, private keys, signed URLs, or production hostnames unless explicitly approved and redacted. |
| Model routing | AI-facing APIs declare whether content may be routed to cloud models, private/on-prem models, or no model. Confidential/Restricted follows classification-aware routing. |
| AI tool actions | Contracts for tool actions must include Harness, SBAC, OPA, trust-score, human approval, audit, and rollback conditions. |

## 10. Enterprise Design Principles and SOLID Enforcement

API and integration contracts are architecture boundaries. A poorly designed contract can violate SOLID, collapse bounded contexts, leak infrastructure details, or prevent reversibility. Therefore each material contract must include an Enterprise Design Principles impact assessment.

| **Principle Group** | **API / Integration Enforcement** |
| --- | --- |
| SOLID | Contracts expose cohesive operations; DTOs do not mix unrelated responsibilities; clients depend on stable abstractions, not implementation details. |
| Clean Architecture | Domain rules remain inside domain/application services. Controllers, adapters, schemas, and transport concerns do not own domain decisions. |
| DDD / Bounded Contexts | Resource names, event types, schemas, and ownership follow bounded-context language and do not create shared database ownership. |
| Ports and Adapters | Vendor and external systems are behind adapters; vendor payloads are translated to canonical contracts at the boundary. |
| DRY, KISS, YAGNI | Contracts reuse common headers, errors, schemas, and components without creating speculative generic mega-contracts. |
| Idempotency / Determinism | Mutating APIs and event consumers are retry-safe; contract tests are deterministic and reproducible. |
| Fail-Safe / Secure by Design | Missing auth, policy, guardrail, schema registry, or audit dependency blocks protected operation. |
| Human-in-the-Loop / Progressive Autonomy | High-risk tool actions, Restricted data routes, and destructive integration commands require human approval. |
| Least Privilege / Separation of Duties | Scopes and skills are minimal; contract changes require maker/checker review and CODEOWNERS. |
| Observability / Policy as Code | Trace, audit, metrics, OPA policy references, and SLO evidence are part of contract acceptance. |
| Resilience / Reversibility | Retries, timeouts, circuit breakers, DLQ, compensation, versioning, deprecation, and rollback paths are contractually defined. |
| AVCI | Every contract is attributable, verifiable, classifiable, and improvable with evidence and review cadence. |

## 11. Contract Testing, Compatibility, and Quality Gates

| **Gate** | **Required Checks** | **Fail Condition** |
| --- | --- | --- |
| Lint and style | OpenAPI/AsyncAPI linting, naming rules, required headers, error references, schema refs, security definitions. | Missing required contract element or non-standard naming. |
| Schema validation | JSON Schema / Avro validation, examples validate, generated DTOs compile. | Invalid schema, invalid sample, unresolved reference. |
| Compatibility | Backward-compatibility tests for REST and events; additive changes preferred. | Breaking change without major version or waiver. |
| Consumer-driven contracts | Provider verifies known consumer expectations and generated mocks remain current. | Consumer contract fails or generated mock drift detected. |
| Security tests | Auth required, scopes mapped, OPA policy referenced, negative tests for unauthorized access. | Endpoint/event lacks security or classification handling. |
| Idempotency tests | Replay, collision, expiry, and downstream timeout scenarios pass. | Mutation can double-post or replay unpredictably. |
| Error tests | Stable problem details, safe messages, standard error_code, trace correlation. | Raw exception, PII, secret, or unstable error shape. |
| Architecture fitness | Boundary checks, no direct DB/provider calls, adapter separation, no contract bypass. | Contract implementation violates architecture boundary. |
| AI guardrail tests | AI-generated contract changes are checked against approved templates and registry. | AI invents endpoint/topic/field/scope or weakens guardrails. |

## 12. MicroFunction and Workflow Integration Contracts

MicroFunction runtime APIs, configuration APIs, workflow events, Temporal/Flowable interactions, and AI-governed tool actions are contract-governed. The MicroFunction framework remains configuration-first; integration contracts ensure that standard functions, business functions, workflows, and external adapters communicate safely.

| **Integration Type** | **Contract Requirement** |
| --- | --- |
| MicroFunction runtime execution | Contract defines txn_code, profile_code, version, payload schema, actor context, idempotency key, classification, and execution result. |
| Configuration publish | Contract defines draft, validate, sign, approve, activate, rollback/forward-fix, and cache invalidation behavior. |
| Temporal workflow | Workflow start, signal, query, compensation, retry, and timeout contracts are versioned and deterministic. |
| Flowable human approval | Approval task payloads, DMN inputs, escalation events, SLA timers, and decision evidence are contract-defined. |
| External adapter | Canonical AIRA contract is separated from vendor-specific contract. Adapter maps between them with validation and error normalization. |
| AI/RAG tool action | Harness-mediated action contract includes proposed action, evidence, risk, confidence, policy decision, human approval, and audit result. |

## 13. AI-Assisted Contract Generation and Guardrails

| **AI Control** | **Rule** |
| --- | --- |
| Source grounding | AI assistants use the contract registry, approved templates, ADR/TDL, Developer Guide, and this standard as source. Ungrounded endpoints or fields are rejected. |
| Classification | No real customer data, production payloads, secrets, or Restricted content may be used in cloud AI prompts unless approved by classification-aware routing. |
| Template compliance | Generated OpenAPI/AsyncAPI must include security, errors, idempotency, examples, schemas, owner, classification, version, and evidence fields. |
| Human accountability | AI may draft contracts and tests. A named human owner approves and remains accountable. |
| Guardrails | Input, Retrieval, Execution, and Output rails apply to AI-assisted contract generation and AI-proposed tool actions. |
| Harness boundary | AI cannot publish contracts, update registry, create topics, deploy APIs, or change gateway routes without Harness/SBAC/OPA and human approval. |
| Maker-Checker | High-risk contracts require independent reviewer and, where useful, model/role diversity for AI-assisted review. |

## 14. Versioning, Deprecation, Retirement, and Reversibility

| **Change Type** | **Versioning Rule** | **Required Evidence** |
| --- | --- | --- |
| Add optional response/event field | Minor version or patch depending on compatibility policy. | Compatibility test, updated examples, consumer notification where applicable. |
| Add required request field | Breaking change unless defaulted or introduced through new operation/version. | Major version or waiver, migration plan, consumer test. |
| Remove or rename field | Breaking change. | Major version, deprecation window, replacement field, consumer migration evidence. |
| Change field semantics | Breaking even if type is unchanged. | ADR/TDL, major version or migration plan, test updates. |
| Change error code behavior | Potentially breaking for automated clients. | Error catalog update, consumer notification, tests. |
| Retire endpoint/topic/schema | Requires deprecation register entry and retirement approval. | Usage evidence, migration completion, rollback/restore plan where applicable. |
| Emergency compatibility fix | Allowed only through controlled hotfix path. | CAB record, evidence, post-implementation ADR/TDL, regression tests. |

| **Reversibility Rule**<br>A contract change is not complete until the team can explain how to roll back, forward-fix, dual-run, bridge, compensate, or retire it without orphaning consumers or corrupting business state. |
| --- |

## 15. Observability, Audit, and Evidence Model

| **Evidence Area** | **Mandatory Evidence** |
| --- | --- |
| Contract registration | Contract ID, owner, version, status, classification, bounded context, repository path, review record. |
| Runtime observability | Endpoint/topic metrics, latency, error rate, retry rate, idempotent replay count, DLQ count, SLO status. |
| Traceability | trace_id, request_id, tenant_id, actor/service identity, schema_id, schema_version, policy version, evidence_ref. |
| Security evidence | Authentication result, authorization decision, OPA policy version, scope/claim mapping, classification decision. |
| Testing evidence | Lint, schema validation, consumer contract tests, negative security tests, error/idempotency tests, compatibility tests. |
| AI involvement | Tool/model used, prompt intent, source contracts retrieved, guardrail result, human reviewer, approved output. |
| Improvement evidence | Defect, incident, consumer feedback, compatibility issue, or Auto-Learn recommendation linked to contract change. |

## 16. Auto-Heal, Auto-Learn, and Auto-Improve Integration Governance

Auto-Heal, Auto-Learn, and Auto-Improve may recommend contract fixes, schema updates, error catalog improvements, adapter resilience changes, or test improvements. They must not autonomously change public contracts, gateway routes, schema registry entries, Kafka topics, scopes, or model-routing behavior.

| **Capability** | **Allowed Output** | **Prohibited Without Approval** | **Acceptance Gate** |
| --- | --- | --- | --- |
| Auto-Heal | Draft PR for test, mock, adapter mapping, DLQ handling, or safe error normalization. | Changing contract semantics, adding/removing fields, weakening security, bypassing idempotency. | Passes contract tests, compatibility checks, security review, and rollback plan. |
| Auto-Learn | Create lesson learned, contract pattern, test fixture, error catalog improvement candidate. | Promoting unreviewed knowledge into LLM Wiki as authoritative contract guidance. | Human-reviewed, cited, classified, non-conflicting, and linked to outcome evidence. |
| Auto-Improve | Propose versioning improvement, schema refactor, duplicate contract consolidation, improved tests, or resilience pattern. | Breaking consumers, collapsing bounded contexts, leaking vendor contracts, weakening controls. | Reduces measurable risk or complexity and preserves all 01A principles. |
| AutoResearch | Research external standard/tool changes and draft impact note. | Direct adoption or contract generation from unverified external content. | ADR/TDL review before adoption. |

## 17. Roles, RACI, and Operating Procedures

| **Activity** | **Solutions Architect** | **API Owner** | **Developer** | **QA/SDET** | **Security** | **DevSecOps** | **Integration Owner** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Define API/event contract standard | A/R | C | C | C | C | C | C | I |
| Create or update contract | C | A/R | R | C | C | C | C | I |
| Review bounded-context ownership | A/R | R | C | C | C | I | C | I |
| Review security/classification | C | C | C | C | A/R | C | C | I |
| Create contract tests | C | C | R | A/R | C | C | C | I |
| Run CI compatibility gates | I | C | R | C | C | A/R | C | I |
| Approve breaking change | A/R | R | C | C | A/R | C | A/R | I |
| Monitor contract drift and evidence | C | R | C | R | C | A/R | C | A/R |

| **Procedure** | **Required Steps** |
| --- | --- |
| New contract | Create ADR/TDL if material; draft contract; assign owner; classify; add examples; add tests; review; register; publish. |
| Contract change | Assess compatibility; update version; update examples/tests; run consumers; review; update registry; notify consumers. |
| Breaking change | Create ADR; define migration; dual-run or version route; deprecation register; CAB approval; monitor consumers; retire old route. |
| Waiver | Document risk, owner, expiry, compensating controls, evidence, and remediation plan. Waivers cannot silently weaken security or classification. |
| Quarterly review | Review deprecated contracts, waiver expiry, drift reports, consumer failures, AI-assisted changes, and improvement backlog. |

## 18. Implementation Roadmap and Acceptance Criteria

| **Phase** | **Target Outcome** | **Exit Criteria** |
| --- | --- | --- |
| Phase 1 - Registry baseline | Contract repository and register are created. | CODEOWNERS, templates, contract-register.yaml, deprecation-register.yaml, and evidence register exist. |
| Phase 2 - Template adoption | OpenAPI, AsyncAPI, CloudEvents, error, idempotency, and security templates are standardized. | All new contracts use templates and pass lint/schema gates. |
| Phase 3 - CI enforcement | Contract lint, schema validation, compatibility, security, idempotency, and error tests run in CI. | Merge blocked on failing contract gates. |
| Phase 4 - Consumer testing | Known consumers and generated mocks are validated. | Consumer-driven tests and generated artifacts are synchronized. |
| Phase 5 - Architecture fitness | Boundary, adapter, direct-provider-call, and direct-database-call checks are linked to contracts. | Architecture fitness report included in release evidence. |
| Phase 6 - Continuous governance | Deprecation, retirement, drift, and improvement reviews are operational. | Quarterly report submitted to Architecture Board and Internal Audit. |

## 19. AVCI Compliance Summary

| **AVCI Property** | **How This Standard Satisfies It** |
| --- | --- |
| Attributable | Every contract has owner, bounded context, repository path, version, status, reviewer, approver, ADR/TDL link, and source reference. |
| Verifiable | Contracts are linted, schema-validated, security-tested, compatibility-tested, idempotency-tested, and linked to CI evidence. |
| Classifiable | Contracts, schemas, examples, events, errors, and AI usage rules carry classification, handling, routing, logging, retention, and access metadata. |
| Improvable | Contracts have deprecation, supersedence, feedback, incident, compatibility, and Auto-Learn improvement paths under human review. |

## Appendix A. OpenAPI Template Baseline

| openapi: 3.2.0<br>info:<br> title: <Service API><br> version: 1.0.0<br> x-aira-owner: <bounded-context-owner><br> x-aira-classification: INTERNAL<br> x-aira-contract-id: API-<CONTEXT>-<NAME>-V1<br>servers:<br> - url: /api/<bounded-context>/v1<br>security:<br> - oidc: [<scope>]<br>components:<br> securitySchemes:<br> oidc:<br> type: openIdConnect<br> openIdConnectUrl: https://idp.example/.well-known/openid-configuration<br> headers:<br> XRequestId:<br> schema: { type: string }<br> IdempotencyKey:<br> schema: { type: string, maxLength: 160 }<br> responses:<br> ProblemBadRequest:<br> description: Bad request<br> content:<br> application/problem+json:<br> schema: { $ref: '#/components/schemas/AiraProblem' } |
| --- |

## Appendix B. AsyncAPI / CloudEvents Template Baseline

| asyncapi: 3.1.0<br>info:<br> title: <Event API><br> version: 1.0.0<br> x-aira-owner: <bounded-context-owner><br> x-aira-classification: INTERNAL<br>channels:<br> aira.document.lifecycle.v1:<br> address: aira.document.lifecycle.v1<br> messages:<br> DocumentIntakeAccepted:<br> $ref: '#/components/messages/DocumentIntakeAccepted'<br>components:<br> messages:<br> DocumentIntakeAccepted:<br> contentType: application/cloudevents+avro<br> headers:<br> type: object<br> required: [trace_id, request_id, tenant_id, classification, schema_id, schema_version]<br> payload:<br> $ref: '#/components/schemas/DocumentIntakeAcceptedPayload' |
| --- |

## Appendix C. PR/MR Contract Evidence Checklist

Contract owner, bounded context, version, classification, and registry entry are present.

OpenAPI/AsyncAPI/CloudEvents schema validates and examples pass schema tests.

Security schemes, scopes, OPA policy references, tenant handling, and classification rules are documented.

Problem Details errors, AIRA error_code, trace_id, and safe-response rules are defined.

Mutating operations and event consumers include idempotency and replay behavior.

Backward compatibility test result is attached; breaking changes have ADR, migration plan, and approval.

Consumer-driven contract tests or generated mocks are updated.

Architecture fitness checks confirm no direct provider SDK, cross-context DB write, or adapter bypass.

AI assistance, if used, is declared with source grounding, guardrail result, and human reviewer.

Rollback, forward-fix, dual-run, or retirement path is documented.
