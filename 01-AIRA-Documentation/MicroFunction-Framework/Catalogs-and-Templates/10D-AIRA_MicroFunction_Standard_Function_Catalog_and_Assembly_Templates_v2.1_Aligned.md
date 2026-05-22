---
document_id: "AIRA-DOC-010D"
title: "AIRA MicroFunction Standard Function Catalog and Assembly Templates"
version: "v2.1"
status: "aligned"
source_file: "10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/MicroFunction-Framework/Catalogs-and-Templates"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - microfunction
  - catalog
  - templates
---

# AIRA MicroFunction Standard Function Catalog and Assembly Templates

**AIRA**

AI-Native Enterprise Platform

**AIRA MicroFunction Standard Function Catalog and Assembly Templates**

_Reusable Step Catalog | Transaction Templates | Configuration Assembly | Login Pattern Reuse_

**v2.1 - Pack 04 v1.2 Catalog and Assembly Template Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-010D** |
| **Document Title** | **AIRA MicroFunction Standard Function Catalog and Assembly Templates** |
| **Document Version** | **v2.1 - Pack 04 v1.2 Catalog and Assembly Template Alignment Update** |
| **Supersedes** | **10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Database Administration; Platform Engineering; AI Engineering; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material MicroFunction, security, database, workflow, AI, Java/runtime, or architecture-governance change** |
| **Pack Context** | **Pack 04 v1.2 individual aligned file generated from Pack 04 v1.1 aligned source pack and synchronized against Packs 01, 02, 03, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend services, MicroFunction engine code, service templates, test fixtures, and CI evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Canonical catalog companion to Document 10.** |

**Configure First · Code Only the Business Gap · Govern Every Step · AVCI Always**

## Pack 04 v1.2 Cross-Pack Alignment and Improvement Notice

**Purpose. **This aligned version updates the individual Pack 04 source document so it can be uploaded to Obsidian as a standalone MicroFunction Framework artifact while remaining synchronized with the current AIRA source baseline, the completed Pack 01 through Pack 03 v1.2 individual outputs, and Pack 05 data/API/security/decision controls.

**Document role. **Defines the standard MicroFunction catalog, step prefixes, assembly templates, and reusable configuration patterns for AIRA transactions.

| **Alignment Area** | **Applied Control / Improvement** |
| --- | --- |
| **Source baseline** | **AIRA Source Packs v3.0 / Aligned Pack Set v1.1 remains the input baseline; Pack 04 v1.2 is the new individual output set for Obsidian upload.** |
| **Backend runtime baseline** | **Java 25 LTS is the required backend runtime for MicroFunction engine code, backend services, code-generation prompts, devcontainers, CI runners, tests, and operational evidence.** |
| **Java 21 handling** | **Java 21 is not the default. It may appear only as a documented compatibility fallback with Architecture Board/CAB waiver, risk acceptance, compensating controls, and exit plan.** |
| **Pack 01 governance references** | **References are aligned to AVCI v3.1, Engineering Blueprint v5.1, DevSecOps v3.1, 01A v1.1, and ADR-AIRA-2026-001 v1.1.** |
| **Pack 02 execution references** | **References are aligned to Developer Guide v4.1, CLAUDE.md v3.1, Skills Framework v3.1, Unit Testing v3.1, GitNexus v1.2, and Developer Onboarding v1.1.** |
| **Pack 03 technology references** | **References are aligned to Technology Stack v9.1, Information Nervous System v4.1, CI/CD Evidence Pack v1.1, AI Registry 22A, Login PoC Source Generation 23A, and Obsidian/LLM Wiki governance.** |
| **Pack 05 data/security references** | **ADR/TDL, API contract, database/Flyway, security/identity/secrets/access control, and data migration/cutover standards govern material implementation, schema, and access changes.** |
| **Pack 04 numbering cleanup** | **Remaining Pack 04 cross-pack number conflicts are resolved by promoting Login Pattern to 22B and Fitness Catalog to 23B. Document 40 remains provisional pending master-register disposition.** |
| **MicroFunction principle** | **Configure the process. Reuse standard steps. Code only the business logic gap. Every configuration and coded function must preserve SOLID, Clean Architecture, DDD, ports/adapters, security, observability, testability, reversibility, and AVCI evidence.** |
| **Login principle** | **AIRA is not building a custom login system. Login is a governed assembly of identity, session, policy, audit, event, and observability controls using approved components and reusable MicroFunctions.** |
| **AI execution boundary** | **All model access routes through LiteLLM. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Tool actions go through Harness/SBAC/OPA with human approval where required.** |
| **GitNexus / Dograh awareness** | **GitNexus may support read-only impact analysis. Dograh may support voice-agent orchestration. Neither can bypass MicroFunction, security, classification, testing, CI, or human approval gates.** |

### Material Improvements in This Version

Retained 10D as the authoritative v2.x catalog companion and removed ambiguity that it was still pending revision.

Aligned standard catalog entries to Java 25 backend implementation, Spring service boundaries, and deterministic test expectations.

Improved template guidance to ensure mandatory receive, correlate, session/security, classification, idempotency, audit, event, observability, response, and error steps are not skipped.

Added explicit reuse linkage to Login PoC patterns so login becomes a reusable governed identity/session pattern, not one-off custom code.

Clarified that new step categories require ADR/TDL, tests, catalog registration, owner, classification ceiling, rollback/deactivation path, and AVCI evidence.

### Mandatory Java 25 and MicroFunction Implementation Control

| **Control** | **Pack 04 v1.2 Requirement** |
| --- | --- |
| **Default backend runtime** | **Java 25 LTS. All backend MicroFunction engine, service templates, code-generation prompts, examples, test suites, GitNexus indexing metadata, and CI evidence must assume Java 25 unless explicitly waived.** |
| **Fallback runtime** | **Java 21 is waiver-only for compatibility blockers. The waiver must include owner, reason, affected module/service, risk, target migration, compensating controls, and exit date.** |
| **Business logic boundary** | **Business MicroFunctions must not parse transport payloads, build HTTP responses, call databases/Kafka/Redis/OpenKM/model providers directly, write audit records directly, or own framework concerns.** |
| **Configuration governance** | **Runtime configuration, catalog entries, activation rows, and login schema data are engineering artifacts. They must be versioned, reviewed, tested, classified, and promoted through CI/DBA/approval gates.** |
| **Database governance** | **Database setup and changes use Flyway only, including clean-slate baseline creation, control tables, seed data, views, indexes, RLS, and schema migration evidence.** |
| **Evidence** | **Evidence packs must expose Java/toolchain version, build image digest, tests, architecture fitness, policy decisions, migration validation, trace/audit references, classification, and rollback/compensation path.** |

### AVCI Compliance Summary for This Update

| **AVCI Property** | **Evidence in This Pack 04 v1.2 Update** |
| --- | --- |
| **Attributable** | **Each file has document ID, owner, supersedes value, source pack context, numbering treatment, and material-improvement list.** |
| **Verifiable** | **The Java 25 baseline is explicitly recorded, cross-pack references are updated, duplicate numbering is resolved, and source content is preserved after this alignment notice.** |
| **Classifiable** | **All generated files are marked INTERNAL CONFIDENTIAL and inherit AIRA classification-handling, model-routing, logging, index, and retention rules.** |
| **Improvable** | **Document 40 remains visible as provisional for master-register decision; 22B and 23B numbering cleanup is auditable and reversible through revision control.** |

## Updated Baseline Content

**AIRA**

**MicroFunction Standard Function Catalog and Assembly Templates**

Document 10D | Authoritative Catalog for Runtime-Assembled, Configuration-Driven Business Processes

**Version 2.1 | April 2026 | INTERNAL CONFIDENTIAL**

| **Executive Rule**<br>Framework concerns are standardized, configurable, testable, observable, secure, and reversible by design. Business-specific behaviour must be isolated to STP-BUS-* functions, DMN/rule tables, policies, or parameters. Developers must not re-code receiving, parsing, validation, security, audit, idempotency, retry, error handling, compensation, eventing, observability, cache, AI guardrails, or response handling in every transaction. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-010D |
| Document Title | AIRA MicroFunction Standard Function Catalog and Assembly Templates |
| Version | v2.1 - Enterprise Design Principles and SOLID Enforcement Edition |
| Supersedes | 10D-AIRA MicroFunction Standard Function Catalog and Assembly Templates v1.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / DEVELOPMENT ADOPTION |
| Owner | Solutions Architecture Office / AI DevSecOps Lead |
| Audience | Solutions Architects, Software Developers, DevSecOps, QA, DBA, Security Administrator, System Administrator |
| Primary Companion | 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Companion Documents | 01 AVCI v3.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 08 Unit Testing v3.1; 10/10A/10B/10C/10D MicroFunction documents (10 v3.0; 10A-10D v2.1); 11 DevSecOps Standard; 12 CLAUDE.md Rollout Starter Pack v3.0 |
| Purpose | Define the authoritative catalog of standard MicroFunctions, assembly templates, validation controls, evidence expectations, and design-principle enforcement rules for runtime-assembled AIRA transactions. |
| Review Cadence | Quarterly; unscheduled on material platform, architecture, security, AI governance, or regulatory change. |

## Table of Contents

## 1. Executive Summary

## 2. Authority, Scope, and Catalog Governance

## 3. Enterprise Design Principles and Catalog Enforcement

## 4. No-Code / Low-Code / Code-Required Decision Matrix

## 5. Function Category Naming Standard

## 6. Mandatory, Conditional, and Optional Step Types

## 7. Authoritative Standard Function Catalog

## 8. Standard Assembly Templates

## 9. Publish-Time Validation Gates

## 10. Error Handling, Retry, Compensation, and Reversibility Catalog

## 11. AI-Governed MicroFunctions and Tool-Action Controls

## 12. Architecture Fitness Functions and CI Enforcement

## 13. Auto-Heal, Auto-Learn, and Auto-Improve Catalog Rules

## 14. PR/MR Evidence, RACI, and Adoption Roadmap

## 15. AVCI Compliance Summary

Appendices: Catalog YAML Template and Developer Usage Notes

_Word TOC Note: Use Microsoft Word > References > Table of Contents > Automatic Table, then Update Field before final publication._

## 1. Executive Summary

**This v2.1 catalog is the authoritative support standard for AIRA MicroFunction step selection, assembly templates, validation gates, and catalog governance. **It upgrades the prior catalog by integrating the 01A Enterprise Design Principles and SOLID Enforcement Layer into every standard function category, assembly template, and publish-time activation gate. The intent is to make business-process development configurable, modular, maintainable, secure, observable, reversible, and auditable without allowing configuration flexibility to weaken architecture discipline.

| **Catalog Position**<br>A MicroFunction catalog entry is not merely a reusable code component. It is an AVCI-governed capability definition with owner, category, classification ceiling, idempotency profile, error policy, compensation behavior, observability requirement, test gate, and architecture-boundary rule. |
| --- |

| **Change Area** | **v2.1 Improvement** |
| --- | --- |
| SOLID enforcement | Every standard and business MicroFunction must declare its responsibility, dependencies, extension model, substitutability contract, interface scope, and dependency direction. |
| Clean Architecture / DDD | Catalog entries must preserve domain/application/adapter separation and bounded-context ownership. |
| Ports and adapters | Integration, database, AI, cache, workflow, and notification access must occur through approved ports/adapters, never directly inside business logic. |
| Idempotency and reversibility | Mutating, eventing, workflow, integration, and AI tool-action steps must declare idempotency and compensation posture. |
| Fitness functions | Catalog publish and CI checks validate mandatory steps, boundary rules, retries, error paths, audit, telemetry, and evidence completeness. |
| AI governance | AI retrieval, model, guardrail, and tool-action functions must route through LiteLLM, NeMo Guardrails, Harness, SBAC, OPA, trust scoring, and human approval where required. |
| Auto-Heal / Auto-Learn / Auto-Improve | Catalog updates from automated loops remain proposals until reviewed, tested, approved, and promoted through governed change control. |

## 2. Authority, Scope, and Catalog Governance

### 2.1 Purpose

Define the complete standard MicroFunction catalog used to assemble AIRA business processes.

Define which steps are mandatory, conditional, optional, and prohibited for each transaction type.

Prevent duplicate framework plumbing by requiring reuse of standard functions before new code is written.

Make Enterprise Design Principles, SOLID, Clean Architecture, DDD, idempotency, observability, security, reversibility, and AVCI evidence explicit catalog properties.

Provide assembly templates that Solutions Architects can use to build transactions without hardcoded Java orchestration.

### 2.2 Authority and Precedence

| **Level** | **Document / Artifact** | **Authority Scope** |
| --- | --- | --- |
| L0 | AIRA Architecture Authority / Engineering Blueprint v5.0 | Controls service boundaries, architecture invariants, workflow partitioning, and major design conflict resolution. |
| L1 | 01A Enterprise Design Principles and SOLID Enforcement Layer | Defines mandatory enterprise design principles applied to every catalog item and assembly template. |
| L1 | 10-AIRA MicroFunction Framework v3.1 | Defines runtime model, execution envelope, MicroFunction responsibility boundaries, and improvement constraints. |
| L2 | This 10D Catalog v2.1 | Defines step categories, standard function catalog, assembly templates, publish validators, and catalog evidence. |
| L3 | 10A/10B/10C | Guide, implementation details, and sequence references. Must not weaken this catalog. |
| L4 | Configuration rows and local templates | Implementation instances. May tighten but not weaken mandatory catalog controls. |

### 2.3 Catalog Governance Rules

Every standard function must have a unique step_code, category, owner, classification ceiling, status, version, test profile, error policy, and evidence requirement.

A business function must use the STP-BUS-* prefix and must remain domain-focused. It must not contain generic plumbing owned by the framework.

A catalog change that introduces a new category, new execution mode, new security behaviour, new AI tool action, or new cross-boundary integration requires ADR or TDL review.

A transaction cannot be activated unless its selected catalog steps satisfy mandatory preconditions, error path, audit, observability, idempotency, and compensation requirements.

A catalog entry may be deprecated but must not be silently removed while active runtime definitions still reference it.

## 3. Enterprise Design Principles and Catalog Enforcement

**The catalog is a control surface for architecture discipline. **Every step template, assembly sequence, and reusable function must preserve or improve the 20 Enterprise Design Principles. These principles are enforced at design review, catalog registration, configuration publish, CI, and PR/MR review.

| **No.** | **Principle** | **Catalog Enforcement Meaning** |
| --- | --- | --- |
| 1 | SOLID | Single responsibility, open extension, substitutable contracts, focused interfaces, dependency inversion. |
| 2 | Clean Architecture | Domain/application logic is independent from infrastructure, UI, database, AI provider, and workflow engine details. |
| 3 | DDD / Bounded Contexts | A function belongs to a bounded context and cannot mutate another context directly. |
| 4 | Ports and Adapters | External dependencies are accessed through approved interfaces and adapters. |
| 5 | DRY, KISS, YAGNI | Reuse standard functions; avoid speculative catalog expansion. |
| 6 | Idempotency by Design | Mutations and event consumers must be retry-safe and deduplicated. |
| 7 | Determinism and Reproducibility | Runtime assembly, tests, and activation are versioned and repeatable. |
| 8 | Fail-Safe, Not Fail-Open | Missing policy, guardrail, identity, audit, or config blocks controlled action. |
| 9 | Human-in-the-Loop | High-risk, low-confidence, destructive, or policy-exception actions require human approval. |
| 10 | Least Privilege / SBAC | Functions execute with only required skill, role, data, and tool scope. |
| 11 | Separation of Duties | Makers, checkers, approvers, and operators have distinct responsibilities. |
| 12 | Observability by Design | Every step emits trace, metric, log, audit, and evidence signals according to classification. |
| 13 | Policy as Code | Security, approval, routing, and eligibility decisions are expressed as reviewed policies. |
| 14 | Testability by Design | Each function has deterministic unit, component, contract, and negative tests. |
| 15 | Secure by Design | Validation, classification, redaction, secrets hygiene, and authorization are mandatory. |
| 16 | Resilience Patterns | Retries, timeouts, circuit breakers, bulkheads, fallbacks, and DLQ are configured. |
| 17 | Architectural Fitness Functions | Automated checks validate boundaries and mandatory controls. |
| 18 | Progressive Autonomy | Automation authority grows only with evidence, trust, policy, and human oversight. |
| 19 | Reversibility / Rollbackability | Mutating steps have compensation, replay, restore, or forward-fix plan. |
| 20 | AVCI | Every catalog artifact is attributable, verifiable, classifiable, and improvable. |

| **Auto-Heal / Auto-Learn / Auto-Improve Constraint**<br>Automated loops must not only fix, learn, or improve. They must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence before any catalog or configuration change is accepted. |
| --- |

## 4. No-Code / Low-Code / Code-Required Decision Matrix

| **Scenario** | **Preferred Method** | **Implementation Path** | **Approval / Evidence Required** |
| --- | --- | --- | --- |
| New transaction using existing standard steps | No-code configuration | txn_definition, step bindings, parameters, table bindings, retry, error, and compensation policies | Configuration MR, validator report, test evidence, AVCI summary |
| Change order, threshold, timeout, retry, feature flag, or approval route | No-code configuration | Versioned configuration change; no Java code | Impact analysis, regression test, cache invalidation proof |
| New business rule expressible as decision table | Low-code rule/DMN | Flowable DMN, rule table, or OPA policy depending on ownership | Rule owner approval, sample cases, negative tests |
| New policy constraint | Policy-as-code | OPA/Rego or approved equivalent | Security review, policy unit tests, audit mapping |
| New domain operation not available in catalog | Code-required STP-BUS-* | New focused business MicroFunction registered in catalog | ADR/TDL if material, unit/contract tests, security review, catalog entry |
| New framework concern | Code-required STP-* standard function | New reusable platform MicroFunction | Architecture approval, compatibility tests, migration plan |
| New AI behaviour | Configuration first; code only for new tool/action | Prompt/guardrail/model alias/eval dataset first | Golden dataset evaluation, guardrail tests, Harness/SBAC/OPA validation |
| Exception to mandatory step | Waiver only | Time-bound waiver with compensating control | Risk acceptance, expiry, remediation plan, Architecture/Security approval |

## 5. Function Category Naming Standard

| **Prefix** | **Category** | **Purpose** | **Use Rule** |
| --- | --- | --- | --- |
| STP-RCV | Reception | Receive inbound REST, Kafka, webhook, scheduled, batch, or file intake requests. | Mandatory entry for all flows |
| STP-COR | Correlation | Create and propagate trace_id, request_id, execution_id, workflow_id, causation_id. | Mandatory |
| STP-SES | Session / Actor | Resolve human, service, or agent identity; tenant; roles; skills; branch/unit. | Mandatory |
| STP-SEC | Security / Access | Authenticate, authorize, classify, OPA decision, RBAC/ABAC/SBAC, prompt eligibility. | Mandatory |
| STP-RATE | Rate / Quota | Tenant, actor, API, model, and workflow quota/rate checks. | Mandatory for exposed endpoints / AI |
| STP-PRS | Parsing | Parse JSON, XML, CSV, Avro, CloudEvents, multipart, file metadata. | Mandatory |
| STP-NRM | Normalization | Canonicalize, sanitize, trim, normalize encoding, pre-check injection patterns. | Mandatory |
| STP-VAL | Validation | Schema, field, business, DMN, policy, duplicate, and data-quality validation. | Mandatory |
| STP-CLS | Classification / Privacy | Classify, detect PII, redact/mask, confirm retention and model routing rules. | Sensitive data mandatory |
| STP-IDP | Idempotency | Check, reserve, replay, complete, expire idempotency records. | Mutation mandatory |
| STP-CON | Concurrency | Optimistic lock, pessimistic lock, Redis lock, version check. | Mutation conditional |
| STP-CFG | Runtime Config | Resolve feature flags, rule versions, active process version, parameter sets. | Runtime assembly mandatory |
| STP-CAC | Cache | Read-through, write-through, invalidate, bypass and cache-miss handling. | Conditional derivative only |
| STP-BUS | Business Logic | Reusable business-specific domain operation. | Only category for domain behaviour |
| STP-DB | Persistence | Select, insert, update, upsert, append history, save state transition. | Through repositories/ports only |
| STP-AUD | Audit | Technical audit evidence for every step, decision, model call, and change. | Mandatory |
| STP-HIS | History | Business-facing transaction timeline/status history. | Business-visible flows |
| STP-INT | Integration | Outbound internal/external API adapter with circuit breaker and timeout. | Outbound call mandatory |
| STP-EVT | Eventing | Build CloudEvent, schema validate, transactional outbox, Kafka publish. | Eventing flows |
| STP-NOT | Notification | Email, SMS, Teams, workflow task, customer/user notifications. | Conditional |
| STP-AIR | AI Retrieval | pgvector, LightRAG, LLM Wiki, Obsidian knowledge retrieval. | AI/RAG flows |
| STP-GRD | AI Guardrail | NeMo Input, Retrieval, Execution, Output rails. | AI flows mandatory |
| STP-AIM | AI Model | Prompt assembly, LiteLLM call, model fallback, token budget, response capture. | AI flows mandatory |
| STP-ERR | Error Handling | Classify, map, retry, compensate, DLQ, safe response, human escalation. | Mandatory |
| STP-CMP | Compensation | Reverse/compensate mutating steps using saga-safe actions. | Mutation conditional |
| STP-GOV | Governance | Flowable approvals, waiver, exception, CAB, manual review. | High-risk conditional |
| STP-RET | Retention | Archive, legal hold, purge, supersede, retention marker. | Lifecycle conditional |
| STP-OPS | Operations | Replay, reprocess, reconcile, repair index, rebuild cache. | Ops conditional |
| STP-OBS | Observability | Metrics, spans, SLO event, dependency check, health signal. | Mandatory for mutating/outbound |
| STP-RSP | Response | Build success response, async acknowledgement, safe error response. | Mandatory terminal step |

## 6. Mandatory, Conditional, and Optional Step Types

| **Step Type** | **Requirement Level** | **Rule** |
| --- | --- | --- |
| Receive, Correlate, Session/Actor, Security, Parse, Normalize, Validate, Audit, Response | Mandatory for synchronous user/API transactions | A transaction without these controls is not production-ready. |
| Idempotency, Concurrency, Error Handling, Observability | Mandatory for mutating transactions | Required whenever state changes, external calls, workflow start, model action, or event publication occurs. |
| Retry, Circuit Breaker, Timeout, Fallback | Mandatory for outbound calls | Every external dependency must be protected by named policy. |
| Classification / Privacy Redaction | Mandatory when data may be sensitive | Required before logs, cache, events, prompts, embeddings, and model calls. |
| Cache | Conditional | Use only for derived, non-authoritative acceleration. Redis/Caffeine never becomes source of truth. |
| AI Retrieval / Guardrail / Model | Conditional | Required for AI-assisted, RAG, prompt, summary, extraction, recommendation, or tool-action flows. |
| Human Approval / Governance | Conditional | Required for high-risk, low-confidence, production-impacting, Confidential/Restricted, or policy-exception actions. |
| Notification | Optional / Conditional | Allowed only through approved notification templates and classification-aware redaction. |
| Operations / Replay / Reconciliation | Privileged conditional | Admin-only and must be gated by SBAC, OPA, audit, and separation of duties. |

## 7. Authoritative Standard Function Catalog

The following baseline catalog is sufficient for foundation development and should be extended only through the governance model in this document. Each function must have implementation, test, and evidence records before activation.

| **Step Code** | **Function Name** | **Category** | **Purpose** | **Owner** | **Control Notes** |
| --- | --- | --- | --- | --- | --- |
| STP-RCV-REST-001 | REST request receive | STP-RCV | Accept and envelope REST/UI request | Framework | No domain logic; inject request context only |
| STP-RCV-KAFKA-001 | Kafka event receive | STP-RCV | Accept CloudEvent/Avro message | Framework | Must validate schema and processed-event key |
| STP-RCV-FILE-001 | File intake receive | STP-RCV | Accept upload metadata and file reference | Framework | No OCR or indexing here |
| STP-COR-TRACE-001 | Trace correlation | STP-COR | Create/propagate trace_id and request_id | Framework | Mandatory for every flow |
| STP-SES-ACTOR-001 | Actor resolution | STP-SES | Resolve user/service/agent and tenant context | Security | No anonymous actor for protected flows |
| STP-RATE-API-001 | API quota check | STP-RATE | Rate-limit user/tenant/API route | Platform | Fail closed or controlled throttle |
| STP-RATE-AI-001 | AI token/budget quota | STP-RATE | Control AI budget and token use | AI Ops | Required before model call |
| STP-SEC-AUTHN-001 | Authentication check | STP-SEC | Verify OIDC/JWT/service identity | Security | No local bypass |
| STP-SEC-AUTHZ-001 | Authorization check | STP-SEC | RBAC/ABAC/SBAC authorization | Security | OPA policy evidence required |
| STP-SEC-OPA-001 | OPA policy decision | STP-SEC | Policy-as-code decision | Security | Policy version included in evidence |
| STP-CLS-PII-001 | Classification and PII scan | STP-CLS | Classify, mask, route, retain | Data Gov | Required before logs/prompts/cache |
| STP-PRS-JSON-001 | JSON parser | STP-PRS | Parse request JSON into typed context | Framework | Reject unknown unsafe fields where required |
| STP-PRS-AVRO-001 | Avro parser | STP-PRS | Parse Avro payload with schema version | Integration | Schema registry validation |
| STP-NRM-CANON-001 | Canonical normalization | STP-NRM | Trim, normalize encoding, sanitize | Framework | Deterministic transformation |
| STP-VAL-SCHEMA-001 | Schema validation | STP-VAL | Validate payload schema and required fields | QA/Dev | Negative tests required |
| STP-VAL-DMN-001 | DMN/business rule validation | STP-VAL | Apply approved decision table/rules | Business/QA | Versioned rule evidence |
| STP-IDP-RESERVE-001 | Idempotency reserve | STP-IDP | Reserve idempotency key and request hash | Framework | Mandatory for mutation |
| STP-IDP-COMPLETE-001 | Idempotency complete | STP-IDP | Store response hash/outcome | Framework | Supports safe replay |
| STP-CON-LOCK-001 | Concurrency guard | STP-CON | Optimistic/pessimistic/Redis lock | Framework/DBA | Lock release guaranteed |
| STP-CFG-ACTIVE-001 | Active config resolve | STP-CFG | Resolve active process version and parameters | Platform | PostgreSQL authoritative |
| STP-CAC-RUNTIME-001 | Runtime definition cache | STP-CAC | Caffeine/Redis runtime cache lookup | Platform | Cache loss cannot change correctness |
| STP-BUS-DOMAIN-XXX | Business domain function | STP-BUS | Execute bounded-context business operation | Domain Team | Only category allowed to contain business logic |
| STP-DB-STATE-001 | Persist state transition | STP-DB | Write domain state via approved repository | Domain/DBA | No cross-context write |
| STP-AUD-STEP-001 | Step audit evidence | STP-AUD | Write step execution evidence | Framework | Mandatory for all steps |
| STP-HIS-TIMELINE-001 | Business history append | STP-HIS | Append business timeline/status | Domain | Business-visible timeline |
| STP-EVT-OUTBOX-001 | Transactional outbox write | STP-EVT | Write event intent in same transaction | Integration | Required before Kafka publish |
| STP-EVT-PUBLISH-001 | Kafka CloudEvent publish | STP-EVT | Publish schema-managed event | Integration | Outbox-driven only |
| STP-INT-HTTP-001 | Outbound API adapter | STP-INT | Call external/internal API | Integration | Timeout/retry/circuit breaker required |
| STP-NOT-TEMPLATE-001 | Templated notification | STP-NOT | Send approved notification | Platform | Classification-aware redaction |
| STP-AIR-RETRIEVE-001 | Evidence retrieval | STP-AIR | Retrieve ACL-filtered evidence pack | AI/Data | Source citations required |
| STP-GRD-IN-001 | NeMo Input Rail | STP-GRD | Validate input intent and safety | AI Gov | Fail closed |
| STP-GRD-RET-001 | NeMo Retrieval Rail | STP-GRD | Validate retrieval eligibility/grounding | AI Gov | Fail closed |
| STP-GRD-EXE-001 | NeMo Execution Rail | STP-GRD | Validate proposed tool action | AI Gov | Required before Harness |
| STP-GRD-OUT-001 | NeMo Output Rail | STP-GRD | Validate safe response and citations | AI Gov | Fail closed |
| STP-AIM-LITELLM-001 | LiteLLM model invocation | STP-AIM | Invoke approved model alias | AI Ops | No direct provider SDK |
| STP-GOV-APPROVE-001 | Human approval task | STP-GOV | Flowable approval / exception review | Governance | Required for high-risk actions |
| STP-ERR-CLASSIFY-001 | Error classification | STP-ERR | Map failure to standard error taxonomy | Framework | Safe error response only |
| STP-CMP-SAGA-001 | Saga compensation | STP-CMP | Run configured compensation chain | Workflow | Mutating steps must declare posture |
| STP-OPS-REPLAY-001 | Controlled replay | STP-OPS | Replay/reprocess with idempotency guard | Operations | Privileged and audited |
| STP-OBS-METRIC-001 | Metrics and span emit | STP-OBS | Emit OTel span, metrics, SLO event | SRE | No high-cardinality labels |
| STP-RSP-SUCCESS-001 | Safe success response | STP-RSP | Build success/ack response | Framework | No internal leakage |
| STP-RSP-ERROR-001 | Safe error response | STP-RSP | Build RFC 9457-style safe error | Framework | No stack trace/PII |

## 8. Standard Assembly Templates

| **Template** | **Use Case** | **Standard Step Pattern** | **Rules** |
| --- | --- | --- | --- |
| REST_SYNC | Synchronous REST/UI business transaction | RCV, COR, SES, RATE, SEC, PRS, NRM, VAL, CLS, IDP, CON, CFG, CAC?, BUS/RUL, DB, AUD, HIS?, EVT?, OBS, RSP, ERR/CMP path | Use for user/API command or query flows. Mutating commands require IDP, CON, DB, AUD, EVT outbox, and error/compensation path. |
| KAFKA_ASYNC | Asynchronous event consumer | RCV-KAFKA, COR, SES(service), SEC, PRS-AVRO, NRM, VAL, CLS, IDP, CON, CFG, BUS/RUL, DB, AUD, EVT?, OBS, ACK, ERR/DLQ/CMP | Use for event-driven integration. Idempotent consumer and DLQ are mandatory. |
| TEMPORAL_MACHINE | Long-running machine workflow | RCV, COR, SES(service), SEC, CFG, IDP, Temporal start, activity steps, retry policy, compensation chain, AUD, EVT, OBS, ERR/CMP | Use for machine-durable workflows, sagas, retries, and compensation. No human task ownership. |
| FLOWABLE_HUMAN | Human approval / exception review | RCV, COR, SES, SEC, CLS, VAL, GOV, DMN?, AUD, HIS, NOT?, EVT?, RSP, ERR | Use for approvals, manual reviews, CAB gates, SLA timers, exception handling. |
| HYBRID | Machine workflow with human approval checkpoints | REST/KAFKA entry, Temporal orchestration, Flowable task, callback/event, DB/AUD/EVT/OBS, compensation | Use when automated process requires human approval or review before continuation. |
| AI_RAG_QUERY | Grounded AI answer generation | RCV, COR, SES, RATE-AI, SEC, CLS, GRD-IN, AIR, GRD-RET, AIM-LITELLM, GRD-OUT, AUD, OBS, RSP | Retrieval evidence, citations, model alias, guardrail results, and audit intent are mandatory. |
| AI_TOOL_ACTION | AI-proposed tool execution | RCV, COR, SES(agent), RATE-AI, SEC/SBAC, GRD-IN, AIR, AIM, GRD-EXE, GOV? / Harness, OPA, AUD, OBS, RSP | Hermes reasons; Harness executes. High-risk actions require Flowable approval. |
| DOCUMENT_INTAKE | Document upload, malware scan, OCR, indexing | RCV-FILE, COR, SES, SEC, CLS, PRS, VAL, DB registry, OpenKM adapter, EVT, Temporal OCR/index workflow, AIR indexing, AUD, OBS, RSP | OpenKM remains authoritative for originals; PostgreSQL/pgvector/LightRAG are governed derivatives. |
| CONFIG_PUBLISH | MicroFunction configuration activation | RCV, COR, SES, SEC, VAL, FIT, SIGN, DB, CACHE-INVALIDATE, EVT config.changed, AUD, RSP | Activation requires complete validation, design-principle gate, signature, and cache invalidation. |
| RECONCILIATION | Repair/replay/reprocess operations | RCV admin, COR, SES, SEC/SBAC/OPA, GOV?, OPS, IDP, DB, EVT?, AUD, OBS, RSP | Privileged operations require separation of duties and complete audit. |
| RETENTION | Archive, supersede, legal hold, purge | RCV schedule/admin, COR, SEC, CLS, RET, DB/OpenKM/Index update, AUD, EVT, OBS, RSP | Retention actions must preserve legal/audit requirements and derivative-source cleanup. |
| AUTO_HEAL_CANDIDATE | Governed remediation proposal | Telemetry trigger, AIR retrieve evidence, AIM analyze, GRD-OUT, GOV review, PR draft, tests, AUD | No autonomous production self-modification. All fixes require PR/MR and gates. |

## 9. Publish-Time Validation Gates

| **Gate** | **Validation Rule** | **Evidence / Enforcer** |
| --- | --- | --- |
| Completeness Gate | All mandatory step categories exist for the execution mode; no missing error path, audit, response, security, or validation steps. | Configuration validator |
| Principle Gate | SOLID, Clean Architecture, DDD, ports/adapters, idempotency, observability, security, reversibility, and AVCI impact are declared and acceptable. | Fitness validator + reviewer |
| Security Gate | Classification ceiling, authorization policy, OPA rule, SBAC requirement, and secret handling are present. | Security validator |
| Idempotency Gate | Mutating transactions declare idempotency key, deduplication, replay behavior, expiry, and conflict response. | Runtime validator |
| Error / Compensation Gate | Every step has error policy, retry policy, timeout, compensation posture, DLQ or human escalation where required. | Error-policy validator |
| Observability Gate | Trace, metrics, logs, audit fields, and evidence references are configured without high-cardinality or sensitive labels. | Telemetry validator |
| AI Safety Gate | AI steps use LiteLLM aliases, NeMo checkpoints, token budgets, model classification route, Harness and approval where applicable. | AI governance validator |
| Test Gate | Unit, component, contract, negative, security, and architecture tests exist or are linked for the catalog/template change. | CI evidence |
| Signature Gate | Activated runtime definitions are hashed, signed, versioned, and immutable after activation. | Definition signer |
| Cache Invalidation Gate | Activation emits config.changed event and invalidates Caffeine/Redis derived caches. | Runtime operations |

| **Reject Rule**<br>A definition that fails any mandatory publish-time validation gate remains DRAFT or REJECTED. Schedule pressure cannot reduce the gate; it only changes escalation priority. |
| --- |

## 10. Error Handling, Retry, Compensation, and Reversibility Catalog

| **Policy** | **Use When** | **Retry Rule** | **Compensation / Reversal Rule** | **Evidence** |
| --- | --- | --- | --- | --- |
| FAIL_FAST | Validation, authorization, classification, policy denial | No retry | No compensation unless state changed unexpectedly | Safe error response and audit |
| RETRY_TRANSIENT | Network timeout, temporary downstream unavailability | Bounded exponential backoff with jitter | Not applicable unless partial mutation occurred | Retry evidence and final outcome |
| CIRCUIT_OPEN | Dependency unhealthy or error budget breach | No immediate retry; use circuit breaker reset policy | Fallback if approved | SLO event and dependency health evidence |
| COMPENSATE | State changed but later step failed | Retry only when safe and idempotent | Configured STP-CMP chain | Compensation audit and reconciliation marker |
| DLQ_ASYNC | Async event cannot be processed | Retries exhausted | Reprocess path through STP-OPS only | DLQ record, error event, replay eligibility |
| HUMAN_ESCALATE | High-risk, ambiguous, low-confidence, policy-exception | No autonomous retry unless approved | Flowable review determines action | Approval, reviewer, decision, evidence |
| SAFE_RESPONSE | User-facing error response | No retry in response builder | Not applicable | RFC 9457-style problem details without stack trace or PII |
| FORWARD_FIX | Production migration/config defect | No destructive rollback unless CAB approved | Forward-fix or compensating migration | CAB decision, migration evidence, restore test |

## 11. AI-Governed MicroFunctions and Tool-Action Controls

AI-related catalog steps are high-risk because they may affect prompts, retrieval, model routing, tool proposals, generated responses, knowledge promotion, and automated remediation. The catalog therefore treats AI retrieval, guardrail, model, governance, and Harness-controlled tool actions as separate steps with explicit evidence.

| **Control Area** | **Catalog Step** | **Required Evidence** | **Non-Negotiable Rule** |
| --- | --- | --- | --- |
| AI Retrieval | STP-AIR-* | ACL-filtered evidence pack with citations, source version, classification, freshness, and confidence. | No direct retrieval from unapproved or superseded sources. |
| Input Guardrail | STP-GRD-IN-* | Intent, prompt safety, classification, injection pre-check. | Fail closed when guardrail unavailable. |
| Retrieval Guardrail | STP-GRD-RET-* | Evidence eligibility, source authority, conflict detection, classification route. | Unreviewed/stale evidence cannot be authoritative. |
| Model Invocation | STP-AIM-* | LiteLLM alias, model route, token budget, prompt version, response capture. | No direct provider SDK or hardcoded model name. |
| Execution Guardrail | STP-GRD-EXE-* | Tool action proposal validation before Harness. | Required before Git, CI, DB, K8s, OpenKM, Kafka, Temporal, Flowable, or admin action. |
| Harness Execution | STP-GOV/Harness | SBAC skill, trust score, OPA decision, approval, downstream credential mediation. | AI never receives direct credentials. |
| Output Guardrail | STP-GRD-OUT-* | Safe answer, citation sufficiency, PII leakage check, response classification. | Unsafe output blocked or escalated. |
| AI Audit | STP-AUD-AI-* | Record prompt version, model alias, guardrail results, evidence IDs, human approval state. | Mandatory before high-impact response release. |

## 12. Architecture Fitness Functions and CI Enforcement

| **ID** | **Fitness Function** | **Acceptance Rule** | **Enforcement Point** |
| --- | --- | --- | --- |
| MF-FIT-001 | Mandatory sequence validator | Rejects transaction definitions missing mandatory controls for execution mode. | Config publish and CI |
| MF-FIT-002 | Step category ownership check | Business logic appears only in STP-BUS-* or rule/DMN steps. | Static tests / code review |
| MF-FIT-003 | Clean Architecture dependency check | Domain functions do not depend on controllers, DB clients, Kafka clients, LiteLLM, or infrastructure APIs. | ArchUnit / static analysis |
| MF-FIT-004 | Port/adapter access check | Integration, database, cache, AI, workflow, and notification access occurs through approved ports/adapters. | ArchUnit / Semgrep |
| MF-FIT-005 | Idempotency coverage check | Mutating steps declare and test idempotency behavior. | Unit/component tests |
| MF-FIT-006 | Error policy coverage check | Each step has retry, timeout, error, compensation, DLQ, or human-escalation behavior as applicable. | Validator + tests |
| MF-FIT-007 | Observability coverage check | Trace, metric, log, audit, and evidence emission are configured and safe. | CI telemetry test |
| MF-FIT-008 | Security and classification check | Classification ceiling, SBAC, OPA, and redaction rules match data risk. | Policy tests |
| MF-FIT-009 | AI governance check | AI steps use LiteLLM, NeMo checkpoints, Harness, and model routing policy. | CI / OPA tests |
| MF-FIT-010 | Reversibility check | Mutating/outbound operations have compensation or forward-fix plan. | Review gate |
| MF-FIT-011 | AVCI evidence check | Catalog entry includes owner, version, classification, tests, evidence, and improvement path. | MR template + CI |

## 13. Auto-Heal, Auto-Learn, and Auto-Improve Catalog Rules

| **Loop** | **Allowed Catalog Impact** | **Acceptance Restriction** |
| --- | --- | --- |
| Auto-Heal | May propose catalog/config/code remediation based on incidents, CI failure, telemetry, or policy failure. | Cannot directly activate production config or merge code. Must pass tests, principle gate, security gate, reversibility gate, and human approval. |
| Auto-Learn | May propose new knowledge artifacts, rule examples, catalog guidance, prompts, guardrail tests, or lessons learned. | Cannot promote unreviewed content to authoritative LLM Wiki/Obsidian. Must cite source event, owner, classification, and approval. |
| Auto-Improve | May propose refactoring, catalog consolidation, step deprecation, new validation, or optimization. | Must prove measurable improvement and must not weaken SOLID, boundaries, security, observability, rollbackability, or AVCI. |
| AutoResearch | May compare patterns, standards, tools, or external practices for recommendation. | Research output is non-authoritative until reviewed and converted into ADR/TDL, backlog item, or approved standard update. |

| **No Autonomous Catalog Mutation**<br>No agent, script, model, or automated loop may directly activate, deprecate, delete, or alter authoritative catalog entries without MR/PR, CI evidence, designated human approval, and AVCI evidence. |
| --- |

## 14. PR/MR Evidence, RACI, and Adoption Roadmap

### 14.1 PR/MR Evidence Checklist

| **Evidence Area** | **Required Content** |
| --- | --- |
| Catalog identity | step_code, name, category, owner, version, status, classification ceiling |
| Design-principle impact | SOLID, Clean Architecture, DDD, ports/adapters, DRY/KISS/YAGNI, idempotency, determinism, fail-safe, human approval, SBAC, SoD, observability, policy, testability, security, resilience, fitness, autonomy, rollbackability, AVCI |
| Test evidence | unit, component, contract, negative, security, idempotency, compensation, AI/guardrail tests where applicable |
| Runtime evidence | audit fields, telemetry fields, error policy, retry policy, compensation policy, DLQ/human escalation |
| Configuration impact | affected templates, transaction definitions, cache invalidation, activation version |
| Risk and approval | ADR/TDL link if material, reviewer, approver, waiver if any, expiry and remediation plan |

### 14.2 RACI

| **Activity** | **Responsible** | **Accountable** | **Consulted** | **Informed** |
| --- | --- | --- | --- | --- |
| Catalog architecture | Solutions Architect | Architecture Board | Tech Lead, Security, QA, DBA | Developers, DevSecOps |
| Standard function implementation | Platform/Framework Developer | Tech Lead | QA, Security, DBA | Solutions Architect |
| Business function implementation | Domain Developer | Domain Tech Lead | Business SME, QA, Security | Solutions Architect |
| Configuration activation | Solutions Architect / Config Owner | CAB or delegated approver | QA, Security, DevSecOps | Affected teams |
| Security / SBAC / OPA policy | Security Administrator | Security Lead | Solutions Architect, DevSecOps | Development Team |
| AI guardrail/model catalog steps | AI Engineering Lead | Architecture/Security | QA, Data Governance | Development Team |
| Testing and fitness functions | QA/SDET Lead | Quality Lead | Developers, DevSecOps | Architecture Board |
| Operations / replay / reconciliation | SRE / Operations Lead | Change Manager | DBA, Security, Application Owner | Internal Audit |

### 14.3 Adoption Roadmap

| **Phase** | **Activity** | **Exit Evidence** |
| --- | --- | --- |
| Phase 1 | Approve catalog v2.1 and register as authoritative 10D standard. | ARB/CAB approval record |
| Phase 2 | Load standard step catalog into PostgreSQL seed/Flyway baseline. | Seed migration and validation report |
| Phase 3 | Implement publish-time validators and fitness functions in CI. | Passing CI and validator evidence |
| Phase 4 | Update templates for REST_SYNC, KAFKA_ASYNC, TEMPORAL_MACHINE, FLOWABLE_HUMAN, AI_RAG_QUERY, DOCUMENT_INTAKE. | Template registry updated |
| Phase 5 | Train developers and Solutions Architects on no-code/low-code/code-required decision rules. | Onboarding acknowledgement |
| Phase 6 | Review first three transaction definitions through Maker-Checker and update catalog lessons learned. | Retrospective and improvement backlog |

## 15. AVCI Compliance Summary

| **AVCI Property** | **Catalog Compliance Mechanism** |
| --- | --- |
| Attributable | Every catalog entry has owner, code, version, source, companion document reference, approver, and activation record. |
| Verifiable | Every catalog entry has test evidence, fitness-function result, publish validation, reviewer approval, and runtime evidence mapping. |
| Classifiable | Every function declares classification ceiling, data handling rule, model-routing impact, logging/redaction rule, and retention posture. |
| Improvable | Every function has defect feedback path, usage telemetry, improvement owner, deprecation path, and governed Auto-Learn / Auto-Improve channel. |

| **Production-Readiness Statement**<br>A MicroFunction catalog entry or assembly template is not production-ready unless it is AVCI-complete and passes the Enterprise Design Principles and SOLID Enforcement Layer. Missing evidence is a production blocker, not a documentation gap. |
| --- |

## Appendix A. Catalog YAML Template

step_code: STP-BUS-LOAN-ELIGIBILITY-001

step_name: Loan Eligibility Evaluation

category: STP-BUS

bounded_context: loan-servicing

owner: Loan Domain Team

version: 1

status: DRAFT

classification_ceiling: CONFIDENTIAL

responsibility: Evaluate loan eligibility using approved business rules only.

ports_used:

- loanRepositoryPort

- eligibilityRulePort

adapters_prohibited:

- directJdbcClient

- directKafkaProducer

- directLiteLLMClient

mandatory_controls:

idempotency: REQUIRED_IF_MUTATING

authorization: STP-SEC-AUTHZ-001

classification: STP-CLS-PII-001

audit: STP-AUD-STEP-001

observability: STP-OBS-METRIC-001

error_policy: FAIL_FAST

retry_policy: NO_RETRY

compensation_policy: NONE_READ_ONLY

fitness_functions:

- MF-FIT-002

- MF-FIT-003

- MF-FIT-004

- MF-FIT-011

test_evidence:

unit_tests: REQUIRED

negative_tests: REQUIRED

contract_tests: REQUIRED_IF_PUBLIC_CONTRACT

security_tests: REQUIRED

avci:

attributable: owner + ticket + commit + reviewer

verifiable: tests + CI run + validation report

classifiable: classification_ceiling + handling rule

improvable: feedback channel + metrics + review cadence

## Appendix B. Developer Usage Notes

Start from an assembly template. Do not design a transaction from blank Java code.

Select existing standard functions first; add configuration rows before writing new code.

Create STP-BUS-* only when business behaviour is genuinely absent from the catalog, DMN/rules, OPA policies, or parameters.

Do not place generic plumbing inside STP-BUS-* functions. Security, audit, retry, idempotency, logging, model routing, and response building belong to framework steps.

Attach tests, fitness-function results, error policy, compensation policy, classification, and AVCI evidence before requesting merge or activation.
