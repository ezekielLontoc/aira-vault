---
document_id: "AIRA-DOC-010"
title: "AIRA MicroFunction Framework"
version: "v3.1"
status: "aligned"
source_file: "10-AIRA_MicroFunction_Framework_v3.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/MicroFunction-Framework"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - microfunction
---

# AIRA MicroFunction Framework

**AIRA**

AI-Native Enterprise Platform

**AIRA MicroFunction Framework**

_Configuration-Driven Runtime Assembly | Reusable Steps | Governance Envelope | SOLID/AVCI Controls_

**v3.1 - Pack 04 v1.2 Framework Baseline and Java 25 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-010** |
| **Document Title** | **AIRA MicroFunction Framework** |
| **Document Version** | **v3.1 - Pack 04 v1.2 Framework Baseline and Java 25 Alignment Update** |
| **Supersedes** | **10-AIRA_MicroFunction_Framework_v3.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Database Administration; Platform Engineering; AI Engineering; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material MicroFunction, security, database, workflow, AI, Java/runtime, or architecture-governance change** |
| **Pack Context** | **Pack 04 v1.2 individual aligned file generated from Pack 04 v1.1 aligned source pack and synchronized against Packs 01, 02, 03, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend services, MicroFunction engine code, service templates, test fixtures, and CI evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Canonical parent MicroFunction standard; remains Document 10 and must appear before 10A/10B/10C/10D.** |

**Configure First · Code Only the Business Gap · Govern Every Step · AVCI Always**

## Pack 04 v1.2 Cross-Pack Alignment and Improvement Notice

**Purpose. **This aligned version updates the individual Pack 04 source document so it can be uploaded to Obsidian as a standalone MicroFunction Framework artifact while remaining synchronized with the current AIRA source baseline, the completed Pack 01 through Pack 03 v1.2 individual outputs, and Pack 05 data/API/security/decision controls.

**Document role. **Parent architecture standard for the AIRA MicroFunction execution model, runtime envelope, catalog governance, reusable step taxonomy, and configuration-first transaction assembly.

| **Alignment Area** | **Applied Control / Improvement** |
| --- | --- |
| **Source baseline** | **AIRA Source Packs v3.1 / Aligned Pack Set v1.1 remains the input baseline; Pack 04 v1.2 is the new individual output set for Obsidian upload.** |
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

Reordered Pack 04 output so the parent MicroFunction Framework is delivered before companion documents 10A through 10D.

Aligned all backend implementation references to Java 25 LTS, with Java 21 allowed only by waiver for compatibility fallback.

Clarified the MicroFunction runtime envelope as the mandatory home for session, security, classification, idempotency, audit, event, observability, error, retry, and compensation concerns.

Reinforced configuration-first delivery: code is required only for a genuine STP-BUS-* business gap or a new reusable framework capability.

Added explicit cross-pack alignment with Pack 01 v1.2 governance, Pack 02 developer execution, Pack 03 Technology Stack v9.1, and Pack 05 Flyway/security/ADR standards.

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

**AI-Native Enterprise Platform**

**MicroFunction Framework**

**Runtime-Assembled | Configuration-Driven | SOLID-Enforced | AVCI-Governed**

**Version 3.1 - Enterprise Design Principles and SOLID Enforcement Update**

| **Core Design Intent**<br>AIRA standardizes repeatable enterprise transaction concerns as reusable MicroFunctions. Solutions Architects assemble transactions by approved configuration; Software Developers add only isolated business MicroFunctions, rules, or adapters when an existing standard capability cannot satisfy the requirement. Every function, sequence, configuration, and automated improvement must preserve or improve SOLID compliance, Clean Architecture boundaries, DDD ownership, ports-and-adapters separation, testability, security posture, observability, rollbackability, and AVCI evidence. |
| --- |

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA MicroFunction Framework |
| Document ID | AIRA-DOC-010 |
| Version | v3.1 - Enterprise Design Principles and SOLID Enforcement Update |
| Supersedes | 10-AIRA_MicroFunction_Framework_v2.2 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | Development Baseline / Architecture Review Ready |
| Owner | Solutions Architecture Office / AI-Native Platform Architecture |
| Audience | Solutions Architect, Software Developers, DevSecOps, QA/SDET, Database Administrator, Security Administrator, System Administrator, AI Engineers, Internal Audit |
| Authoritative Catalog | 10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.0 |
| Companion Documents | 01A Enterprise Design Principles and SOLID Enforcement Layer; 01 AVCI Engineering Standard v3.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 06 CLAUDE.md Reference v3.1; 08 Unit Testing Standard v3.1; 10A/10B/10C/10D MicroFunction support documents; 11 DevSecOps Standard; 12 CLAUDE.md Rollout Starter Pack v3.1 |
| Review Cadence | Quarterly; unscheduled review on material architecture, security, compliance, AI-governance, or technology-stack change |

## v3.1 Change Summary

| **Change Area** | **v3.1 Improvement** |
| --- | --- |
| Enterprise Design Principles | Adds the 20-principle Enterprise Design Principles and SOLID Enforcement Layer as a mandatory MicroFunction design gate. |
| SOLID and Clean Architecture | Requires MicroFunctions to remain single-responsibility, dependency-inverted, interface-driven, testable, and isolated behind ports and adapters. |
| DDD / Bounded Contexts | Clarifies that STP-BUS-* functions must belong to one bounded context and must not write across another context boundary. |
| Configuration Safety | Strengthens publish-time validation so configuration changes cannot bypass security, idempotency, audit, error handling, observability, or rollback controls. |
| Auto-Heal / Auto-Learn / Auto-Improve | Adds explicit rule that automated changes must preserve or improve SOLID compliance, architecture boundaries, security posture, observability, reversibility, and AVCI evidence. |
| Fitness Functions | Adds machine-checkable architecture tests, package-boundary checks, idempotency tests, determinism checks, compensation tests, and policy-as-code checks. |
| Evidence | Adds MicroFunction Principle Impact Record and PR/MR evidence requirements. |

## Table of Contents

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Framework Objectives and Non-Negotiables

## 4. Enterprise Design Principles and SOLID Enforcement Layer

## 5. Architectural Model

## 6. Standard Function Catalog Baseline

## 7. Configuration and Runtime Assembly Model

## 8. Execution Envelope, Error Handling, and Compensation

## 9. Business Logic Extension Pattern

## 10. AI-Governed Auto-Heal, Auto-Learn, and Auto-Improve

## 11. Architecture Fitness Functions and Quality Gates

## 12. Evidence, PR/MR, and Release Requirements

## 13. RACI and Developer Handoff

## 14. Implementation Roadmap

## 15. AVCI Compliance Summary

## 1. Executive Summary

The AIRA MicroFunction Framework is the standard execution fabric for modular, maintainable, runtime-assembled, and enterprise-grade application behavior. It separates reusable technical concerns from business-specific logic so that transactions can be assembled through governed configuration rather than hardwired orchestration code.

Version 3.1 elevates the framework from configuration-driven reuse to architecture-enforced reuse. The framework now explicitly applies the Enterprise Design Principles and SOLID Enforcement Layer to every MicroFunction, transaction definition, runtime assembly, configuration change, AI-assisted remediation, and production promotion.

| **Business Coding Rule**<br>Business feature teams must not re-code receiving, parsing, validation, session handling, authorization, idempotency, locking, caching, audit, telemetry, error handling, event publishing, response shaping, model routing, or guardrail execution. These are standard framework MicroFunctions. Developers add only STP-BUS-* business functions, rules/DMN, OPA policies, or approved adapters when the capability does not already exist. |
| --- |

### 1.1 Strategic Outcomes

| **Outcome** | **How the Framework Delivers It** |
| --- | --- |
| Maintainable extensibility | New transactions are assembled by configuration and reuse existing standard functions; new code is isolated behind stable MicroFunction contracts. |
| SOLID by construction | Each function has a narrow responsibility, clear interface, injected dependencies, deterministic tests, and no hidden framework leakage into domain code. |
| Clean Architecture discipline | Business logic sits in STP-BUS-* or rules and depends on abstractions, not infrastructure adapters or provider SDKs. |
| Enterprise safety | Security, classification, idempotency, audit, observability, error handling, retry, compensation, and safe response are mandatory framework concerns. |
| AI-safe improvement | Auto-Heal, Auto-Learn, and Auto-Improve may propose changes, but changes pass Harness, SBAC, OPA, guardrails, tests, human review, and AVCI evidence. |

## 2. Purpose, Scope, and Authority

This document defines the architecture, governance, standard categories, execution model, extension model, quality gates, and evidence requirements for the AIRA MicroFunction Framework. It is the parent framework standard for the 10A design guide, 10B implementation standard, 10C sequence diagram reference, and 10D function catalog.

### 2.1 In Scope

Transaction definitions, step catalogs, step bindings, parameters, retry policies, error policies, compensation policies, and activation controls.

Runtime assembly, signing, caching, execution envelope, MicroFunction registry, audit, observability, idempotency, concurrency, outbox, DLQ, and response shaping.

Business MicroFunction extension patterns, rule/DMN integration, OPA policy integration, AI/RAG steps, and document-processing steps.

Auto-Heal, Auto-Learn, Auto-Improve, and controlled AutoResearch loops that affect MicroFunction code, configuration, rules, prompts, guardrails, or documentation.

### 2.2 Authority and Conflict Resolution

| **Authority Level** | **Document / Control** | **MicroFunction Impact** |
| --- | --- | --- |
| L0 | Architecture Authority / Engineering Blueprint v5.0 | Controls service boundaries, workflow partition, and AI execution architecture. |
| L1 | AVCI Engineering Standard v3.1 | Controls universal artifact quality, evidence, and production-readiness gates. |
| L1 | 01A Enterprise Design Principles and SOLID Enforcement Layer | Controls the 20 design principles and rejects changes that weaken SOLID, boundaries, testability, security, observability, rollbackability, or AVCI. |
| L2 | This MicroFunction Framework | Controls runtime assembly, standard concerns, function categories, extension rules, and framework governance. |
| L3 | 10A / 10B / 10C / 10D | Control developer procedure, implementation details, sequence diagrams, catalog entries, and templates. |

## 3. Framework Objectives and Non-Negotiables

| **Objective** | **Framework Requirement** |
| --- | --- |
| Configuration-driven behavior | Step order, parameters, retry policy, error policy, compensation, guardrail policy, table binding, approval route, and model route are configuration-managed and versioned. |
| Runtime assembly | A signed RuntimeProcessDefinition is assembled on demand, validated against mandatory controls, and cached using Caffeine L1 and Redis/Valkey L2 for acceleration only. |
| Clean programming model | MicroFunctions are small, single-responsibility, testable units that expose a stable contract and hide implementation details. |
| No duplicated standard concerns | Common enterprise concerns are implemented once as standard functions and reused in every transaction. |
| Safe extensibility | New business functions are added through catalog registration, tests, architecture checks, security review, and approval before activation. |
| Enterprise error handling | Every step has configured timeout, retry, error classification, compensation, safe response, DLQ/event handling, audit, and escalation behavior. |
| AVCI by construction | Every function, configuration row, runtime definition, execution result, improvement proposal, and release candidate is attributable, verifiable, classifiable, and improvable. |

### 3.1 Non-Negotiable Rules

A transaction definition must not execute business logic before identity, classification, input validation, idempotency, authorization, and required policy checks have passed.

A mutating or side-effecting step must declare retry, timeout, idempotency, compensation, error policy, observability, and safe-response behavior.

A model, RAG, or agentic step must pass through LiteLLM, NeMo Guardrails, Harness, SBAC, OPA, audit, and human approval controls as applicable.

Redis/Valkey and Caffeine are acceleration layers only. PostgreSQL configuration rows, workflow histories, audit records, and approved source documents remain authoritative.

Standard functions are reusable platform capabilities. Business functions must remain domain-focused and must not implement framework plumbing.

No Auto-Heal or Auto-Improve action may activate a changed function or sequence unless it preserves or improves SOLID, architecture boundaries, tests, security, observability, reversibility, and AVCI evidence.

## 4. Enterprise Design Principles and SOLID Enforcement Layer

The MicroFunction Framework adopts 01A as the canonical source for the Enterprise Design Principles and SOLID Enforcement Layer. The principles below are mandatory acceptance criteria for MicroFunction design, implementation, configuration, automated remediation, and release promotion.

| **No.** | **Principle** | **MicroFunction Enforcement Meaning** |
| --- | --- | --- |
| 1 | SOLID | Each function has one reason to change; extension is through contracts/configuration; interfaces are narrow; dependencies point to abstractions. |
| 2 | Clean Architecture | Domain/business logic is isolated from controllers, persistence, queues, model providers, and infrastructure adapters. |
| 3 | DDD / Bounded Contexts | Business functions belong to one context and do not write directly into another context's state. |
| 4 | Ports and Adapters | External systems, databases, queues, AI gateways, and document stores are accessed through approved ports/adapters. |
| 5 | DRY / KISS / YAGNI | Reuse standard concerns, keep functions simple, and avoid speculative abstractions or duplicated plumbing. |
| 6 | Idempotency | Mutating operations are retry-safe and deduplicated using keys, hashes, natural constraints, or workflow dedupe. |
| 7 | Determinism | Runtime assembly, tests, retries, compensation, and evidence generation are reproducible. |
| 8 | Fail-Safe | Unavailable identity, policy, guardrail, model gateway, audit, or configuration controls block protected execution. |
| 9 | Human-in-the-Loop | High-risk, low-confidence, destructive, or policy-exception actions require named human approval. |
| 10 | Least Privilege / SBAC | Function execution is scoped by identity, role, skill, trust, tenant, classification, and approved action vocabulary. |
| 11 | Separation of Duties | Maker, checker, approver, deployer, and auditor responsibilities are separated for high-risk changes. |
| 12 | Observability | Every step emits correlated trace, metric, log, audit, and evidence signals without leaking secrets or PII. |
| 13 | Policy as Code | Authorization, admission, routing, and promotion controls are expressed as reviewed OPA/Rego or approved policy artifacts. |
| 14 | Testability | Every function has deterministic tests, negative-path tests, contract tests, and boundary tests as applicable. |
| 15 | Secure by Design | Security, classification, redaction, secrets hygiene, and safe errors are built into the envelope, not bolted on. |
| 16 | Resilience | Timeout, retry, circuit breaker, fallback, bulkhead, DLQ, and compensation policies are explicit. |
| 17 | Fitness Functions | Architecture and quality rules are machine-checked in local hooks and CI. |
| 18 | Progressive Autonomy | AI actions start advisory and earn bounded capability only through evidence, trust, and review. |
| 19 | Reversibility | Changes have rollback, forward-fix, compensation, cache invalidation, and reprocess plans. |
| 20 | AVCI | Every artifact and output remains attributable, verifiable, classifiable, and improvable. |

### 4.1 SOLID Interpretation for MicroFunctions

| **SOLID Principle** | **Required MicroFunction Behavior** | **Reject If** |
| --- | --- | --- |
| Single Responsibility | One MicroFunction owns one capability such as validation, idempotency, audit, business decision, persistence intent, or notification shaping. | A function parses, authorizes, computes business state, writes DB, publishes Kafka, and builds response together. |
| Open / Closed | New behavior is added by registering a new function, rule, adapter, or configuration version instead of modifying stable standard functions for one transaction. | A reusable standard step is changed to satisfy only one business exception without catalog governance. |
| Liskov Substitution | All implementations of a MicroFunction contract honor the same preconditions, postconditions, error contract, and evidence expectations. | A replacement function silently changes status meanings, exception behavior, or audit expectations. |
| Interface Segregation | Function contracts expose only the needed context, typed parameters, and result envelope; no broad god-context is passed to business logic. | A business function receives unrestricted access to all services, repositories, secrets, or raw payloads. |
| Dependency Inversion | Business functions depend on domain ports and framework contracts; infrastructure adapters implement those ports. | A business function directly imports provider SDKs, database clients, Kafka producers, or OpenKM clients. |

## 5. Architectural Model

The framework is organized into planes. Each plane has a clear authority role and must not absorb responsibilities from another plane.

| **Plane** | **Responsibility** | **Authority / Knowledge Tier** |
| --- | --- | --- |
| Configuration Plane | PostgreSQL tables for transaction definitions, step catalog, bindings, parameters, policies, table bindings, activation state, and signatures. | Tier 0 authoritative for runtime configuration. |
| Assembly Plane | Runtime assembler validates, signs, versions, and caches RuntimeProcessDefinition objects. | Tier 2 derivative; rebuildable from Tier 0. |
| Execution Plane | Coordinator, execution envelope, registry, adapters, audit recorder, metrics emitter, outbox, DLQ, and safe response builder. | Runtime evidence is Tier 0 when persisted. |
| Domain Plane | STP-BUS-* functions, DMN/rules, domain services, and bounded-context state transitions. | Owned by bounded-context team. |
| Integration Plane | Adapters for REST, Kafka, OpenKM, Temporal, Flowable, model gateway, and external services. | Infrastructure implementation behind ports. |
| AI Governance Plane | Hermes Agent, LiteLLM, NeMo Guardrails, Harness, OPA, SBAC, LLM Wiki, Obsidian, LightRAG. | Mixed authority; governed by source metadata and classification. |
| Improvement Plane | Auto-Heal, Auto-Learn, Auto-Improve, controlled AutoResearch, human review, backlog, and approved promotion. | Draft until reviewed and promoted. |

### 5.1 High-Level Flow

A request, event, schedule, file, or workflow trigger enters through an approved channel.

The framework resolves actor, tenant, classification, correlation context, rate limit, and policy eligibility.

The coordinator resolves the active transaction definition and retrieves or assembles the signed runtime definition.

The execution envelope invokes each configured MicroFunction in order, applying retry, timeout, circuit breaker, idempotency, locking, audit, telemetry, and compensation rules.

Business logic executes only at configured STP-BUS-* or rule/DMN steps and never bypasses the envelope.

The framework persists business state, history, outbox events, audit evidence, and response artifacts according to configured policies.

Failures flow through configured error handling, compensation, DLQ, safe-response, and human-escalation steps.

## 6. Standard Function Catalog Baseline

Document 10D remains the authoritative catalog and must be revised after this v3.1 framework update. This section establishes the minimum function categories required before business feature delivery.

| **Prefix** | **Category** | **Purpose** |
| --- | --- | --- |
| STP-RCV | Reception | Receive REST, Kafka, webhook, scheduled, batch, or file triggers. |
| STP-COR | Correlation | Create and propagate trace_id, request_id, execution_id, span context. |
| STP-SES | Session / Actor | Resolve user, service, AI agent, tenant, branch/unit, and channel. |
| STP-SEC | Security | Authentication, authorization, RBAC/ABAC/SBAC, OPA, classification gate. |
| STP-RATE | Rate / Quota | Tenant, user, API, workflow, and model quota enforcement. |
| STP-PRS | Parsing | Parse JSON, XML, CSV, Avro, CloudEvents, multipart, and file metadata. |
| STP-NRM | Normalization | Canonicalize, sanitize, trim, encode, and pre-check prompt injection. |
| STP-VAL | Validation | Schema, field, business rule, DMN, policy, and data-quality validation. |
| STP-CLS | Classification | PII detection, redaction, masking, retention, and model routing rules. |
| STP-IDP | Idempotency | Check, reserve, replay, complete, expire, and dedupe mutation keys. |
| STP-CON | Concurrency | Optimistic/pessimistic locks, Redis/Redisson locks, version checks. |
| STP-CFG | Runtime Config | Resolve active versions, feature flags, parameters, and rule versions. |
| STP-CAC | Cache | Read-through, write-through, invalidate, bypass, and cache-miss handling. |
| STP-BUS | Business Logic | Reusable bounded-context business operation; only category that owns domain behavior. |
| STP-RUL | Rules / DMN | Configurable business decision tables, validation rules, or policy-derived decisions. |
| STP-DB | Persistence | Select, insert, update, upsert, append history, outbox intent, and state transition. |
| STP-AUD | Audit | Technical audit evidence for every step, decision, model call, and change. |
| STP-HIS | History | Business-visible transaction status and timeline. |
| STP-INT | Integration | Outbound API, file, vendor, OpenKM, or service adapter with resilience controls. |
| STP-EVT | Eventing | Build CloudEvent, schema validate, transactional outbox, Kafka publish. |
| STP-AIR | AI Retrieval | pgvector, LightRAG, LLM Wiki, Obsidian retrieval and evidence assembly. |
| STP-GRD | AI Guardrail | NeMo Input, Retrieval, Execution, and Output checkpoints. |
| STP-AIM | AI Model | Prompt assembly, LiteLLM call, fallback, token budget, response capture. |
| STP-ERR | Error Handling | Classify, map, retry, compensate, DLQ, safe response, human escalation. |
| STP-CMP | Compensation | Reverse or compensate mutating steps using saga-safe actions. |
| STP-GOV | Governance | Flowable approvals, waivers, exceptions, CAB, manual review. |
| STP-OBS | Observability | Metrics, spans, SLO events, dependency health, operational signals. |
| STP-RSP | Response | Build success response, async acknowledgement, or safe error response. |

### 6.1 Mandatory, Conditional, and Optional Step Rules

| **Step Type** | **Requirement** | **Rule** |
| --- | --- | --- |
| Receive, Correlate, Session, Security, Parse, Normalize, Validate, Audit, Response | Mandatory for synchronous user/API transactions | A transaction without these controls is not production-ready. |
| Idempotency, Concurrency, Error Handling, Observability | Mandatory for mutation | Required when state changes, external calls, workflow start, model action, or event publication occurs. |
| Timeout, Retry, Circuit Breaker, Fallback | Mandatory for outbound dependencies | Every external dependency must be protected by named policy. |
| Classification / Privacy | Mandatory when data may be sensitive | Required before logs, cache, events, prompts, embeddings, model calls, and outbound notifications. |
| AI Retrieval / Guardrail / Model | Conditional | Required for AI-assisted, RAG, extraction, recommendation, summary, or tool-action flows. |
| Human Approval / Governance | Conditional | Required for high-risk, low-confidence, Confidential/Restricted, destructive, or policy-exception actions. |

## 7. Configuration and Runtime Assembly Model

Runtime behavior is assembled from versioned, approved configuration. Configuration is powerful and therefore must be governed like code. A configuration change can introduce architecture, security, or operational risk equal to a code change.

| **Configuration Artifact** | **Governance Requirement** | **Activation Gate** |
| --- | --- | --- |
| txn_definition | Defines transaction code, profile, version, mode, owner, classification, status, active period, signature, and hash. | Must be DRAFT -> REVIEWED -> APPROVED -> ACTIVE; direct activation is prohibited. |
| txn_step_binding | Defines ordered MicroFunction steps, mandatory flags, branch behavior, timeout, retry, error policy, compensation, and classification ceiling. | Publish validator rejects missing mandatory controls or ungoverned failure paths. |
| step_parameter | Typed parameters; secret references must point to Vault or approved secret source and must not expose secret values. | Schema validation and secret-reference check required. |
| retry_policy / error_policy | Named policies for attempts, backoff, safe response, DLQ, escalation, and compensation. | Policy-as-code and tests required for material changes. |
| table_binding / adapter_binding | Defines approved data access or external adapter paths without free-form SQL or direct provider SDK usage. | Architecture and security review required. |
| guardrail / model route binding | Defines prompt, model alias, guardrail profile, retrieval eligibility, and token/budget constraints. | Golden dataset, guardrail, classification, and LiteLLM route tests required. |

### 7.1 Publish-Time Validation

Reject missing Receive, Correlate, Session, Security, Validation, Audit, Error, Observability, and Response controls where required.

Reject business function execution before identity, classification, authorization, idempotency, and validation controls.

Reject mutating steps without idempotency, transaction boundary, outbox/compensation plan, and safe error policy.

Reject cross-bounded-context direct writes, free-form SQL from configuration, direct model provider SDK calls, or direct external side effects from business logic.

Reject AI/RAG/model steps without LiteLLM route, NeMo guardrail profile, retrieval provenance, classification eligibility, audit, and human escalation rule.

Reject activation if architecture fitness functions, unit tests, contract tests, security tests, and configuration regression tests fail.

**Sample MicroFunction Activation Evidence**

| # Example activation evidence envelope - abbreviated<br>microfunction_activation:<br> txn_code: CUSTOMER_DOCUMENT_INTAKE<br> profile_code: DEFAULT<br> version: 7<br> owner: document-domain-lead<br> classification: CONFIDENTIAL<br> definition_hash: sha256:...<br> principle_impact:<br> solid: preserved<br> clean_architecture: preserved<br> bounded_context: document<br> idempotency: proven<br> reversibility: compensation_and_reprocess<br> security_posture: improved<br> gates:<br> publish_validator: pass<br> archunit_boundary_tests: pass<br> unit_tests: pass<br> contract_tests: pass<br> opa_policy_tests: pass<br> guardrail_tests: pass<br> rollback_plan: present<br> approval:<br> maker: developer<br> checker: tech-lead<br> approver: solution-architect |
| --- |

## 8. Execution Envelope, Error Handling, and Compensation

The execution envelope is the mandatory wrapper around every MicroFunction invocation. It applies enterprise controls consistently so business developers do not implement plumbing repeatedly or inconsistently.

| **Envelope Stage** | **Responsibility** | **Evidence Produced** |
| --- | --- | --- |
| Pre-step guard | Resolve context, classification, authorization, idempotency, concurrency, timeout, and policy eligibility. | trace_id, actor, tenant, policy decision, classification, idempotency key. |
| Step invocation | Invoke MicroFunction through registered interface with typed parameters and bounded context. | step_code, version, parameters hash, start time, runtime version. |
| Resilience control | Apply timeout, retry, circuit breaker, fallback, and bulkhead policy as configured. | attempt count, retry policy, dependency status, duration, fallback state. |
| Error classification | Map technical, validation, security, policy, business, dependency, and AI errors into stable taxonomy. | error_code, severity, safe response flag, escalation rule. |
| Compensation / DLQ | Execute compensating action or route to DLQ / Flowable review when configured. | compensation result, DLQ reference, human task ID. |
| Post-step audit | Persist immutable audit and observability signals before returning final response when required. | audit_id, evidence_ref, trace/span, metrics, status. |

### 8.1 Error-Handling Rules

No exception may be swallowed. Every failure is classified, audited, and routed according to the configured error policy.

Safe responses must not leak stack traces, secrets, raw PII, raw prompts, raw model outputs, internal table names, or provider details.

Retries are allowed only for retryable errors and must respect idempotency, backoff, jitter, timeout budget, and circuit-breaker state.

Compensation must be explicit. A mutating step without compensation or documented non-compensatable risk cannot be promoted without approval.

AI-generated remediation cannot patch the error path to pass tests by weakening validation, reducing logging, disabling guardrails, or bypassing policy.

## 9. Business Logic Extension Pattern

AIRA minimizes custom coding by making the standard enterprise path configurable. Code is required only when a genuinely new business capability, reusable standard function, or adapter is not already available.

| **Extension Type** | **Preferred Mechanism** | **Required Controls** |
| --- | --- | --- |
| New transaction using existing steps | No-code configuration of txn_definition, step bindings, parameters, policies, and templates. | Configuration MR, validation report, tests, AVCI summary. |
| New threshold or decision rule | Low-code DMN, rule table, or OPA policy change. | Rule owner approval, negative tests, policy tests, regression evidence. |
| New bounded-context business operation | Code-required STP-BUS-* MicroFunction. | DDD ownership, SOLID review, unit/contract/security tests, catalog registration. |
| New integration adapter | Port interface plus infrastructure adapter. | Contract-first API/event spec, resilience policy, secrets control, test doubles. |
| New framework concern | STP-STD-* or existing category extension. | Architecture approval, backward compatibility, regression suite, 10D catalog update. |
| New AI behavior | Prompt/guardrail/model-alias configuration first; code only if new tool/action is required. | Golden dataset, guardrail tests, Harness/SBAC/OPA validation, human review. |

### 9.1 STP-BUS-* Design Rules

Belongs to exactly one bounded context and has an explicitly named owner.

Consumes typed input and returns typed result through the MicroFunction contract; no raw map/god-context dependency unless explicitly approved.

Does not perform direct HTTP response construction, direct Kafka publishing, direct audit writes, direct model calls, direct cache manipulation, or direct cross-context writes.

Uses domain ports for persistence and external calls; adapters implement infrastructure details outside the domain function.

Includes success, invalid input, authorization failure, downstream failure, retry/idempotency, and boundary-condition tests as applicable.

Documents reversibility: no action needed, compensating step, forward fix, reprocess, manual review, or non-compensatable risk acceptance.

## 10. AI-Governed Auto-Heal, Auto-Learn, and Auto-Improve

| **Mandatory AI Improvement Constraint**<br>Auto-Heal, Auto-Learn, and Auto-Improve must not only fix, learn, or improve. They must preserve or improve SOLID compliance, Clean Architecture boundaries, DDD ownership, testability, security posture, observability, reversibility, and AVCI evidence. Any proposal that weakens these controls must be rejected or converted into a formally approved exception. |
| --- |

| **Capability** | **Allowed Role** | **Acceptance Gate** |
| --- | --- | --- |
| Auto-Heal | Detect failure, classify root cause, propose minimal remediation, create draft PR/config change, rerun safe checks. | Pass tests, architecture fitness functions, security/policy checks, rollback plan, human checker, and AVCI evidence. |
| Auto-Learn | Convert resolved incidents, tests, reviews, and post-mortems into candidate knowledge, prompts, guardrails, or examples. | Human review, source citation, classification check, conflict check, regression evidence, and approved promotion. |
| Auto-Improve | Identify recurring patterns and propose refactoring, resilience, test, security, observability, or configuration improvements. | Measurable benefit, no weakened boundaries, tests improved or preserved, reversibility plan, ADR/TDL when material. |
| AutoResearch | Investigate external patterns, current standards, dependencies, CVEs, and emerging best practices. | Non-authoritative until reviewed, cited, classified, and converted into approved AIRA artifact. |

### 10.1 Explicitly Prohibited AI Remediation Patterns

Disabling tests, reducing coverage, muting assertions, or changing expected results to make the pipeline pass.

Bypassing guardrails, LiteLLM, Harness, OPA, SBAC, Vault, audit, or classification checks.

Moving business logic into controllers, adapters, SQL strings, prompts, or infrastructure code to accelerate delivery.

Adding broad interfaces, global context access, direct provider SDKs, direct database writes, or god functions.

Auto-activating production configuration or runtime changes without human approval and evidence retention.

## 11. Architecture Fitness Functions and Quality Gates

Architecture fitness functions convert the framework's principles into executable checks. They must run locally where practical and in CI before merge or activation.

| **Fitness Function** | **Tooling / Method** | **Rejects** |
| --- | --- | --- |
| Package boundary check | ArchUnit / jQAssistant / custom static checks | Domain depending on adapters, controllers, provider SDKs, or another bounded context. |
| Direct provider call check | Import lint, Semgrep, dependency rules | OpenAI/Anthropic/vendor SDK imports or direct HTTP model calls outside LiteLLM route. |
| Direct infrastructure dependency check | Static rules and code review | Business functions using DB clients, Kafka producers, OpenKM clients, Redis clients, or HTTP clients directly. |
| Mandatory sequence check | Publish validator | Transaction config missing security, classification, validation, audit, error handling, idempotency, or observability. |
| Idempotency test | Unit/component tests | Mutation or consumer retry creates duplicate business effect. |
| Determinism test | Controlled clock, seed, fixtures, snapshot/evidence repeatability | Runtime assembly produces inconsistent output for same source config. |
| Policy-as-code test | OPA/Rego tests, Conftest | Unauthorized actor, missing skill, missing approval, or incorrect classification route is allowed. |
| Security and privacy test | SAST, Semgrep, test fixtures, log redaction tests | Secrets, PII, raw prompts, or stack traces leak into logs/responses/tests. |
| Reversibility test | Rollback, compensation, reprocess, cache invalidation, migration evidence | No safe forward-fix/compensation path for material state change. |

### 11.1 Minimum Test Gates

| **Gate** | **Minimum Evidence** |
| --- | --- |
| Unit tests | Business functions, validators, policies, mappers, adapters, and error paths covered with deterministic fixtures. |
| Component tests | Execution envelope, idempotency, retry, error policy, compensation, outbox, audit, and response shaping. |
| Contract tests | OpenAPI/AsyncAPI/schema compatibility for all external entry and event points. |
| Configuration tests | Publish validator, mandatory steps, classification ceiling, policy bindings, route eligibility, and rollback/activation checks. |
| AI evaluation tests | Retrieval grounding, guardrails, model route, token budget, tool proposal, Harness/SBAC/OPA decisions, and safe output. |
| Architecture tests | SOLID, Clean Architecture, DDD bounded contexts, ports-and-adapters, and no direct infrastructure dependencies. |

## 12. Evidence, PR/MR, and Release Requirements

A MicroFunction change is not complete when code compiles or configuration activates. It is complete only when the evidence proves that the change is correct, safe, secure, classifiable, reversible, and aligned with the 20 principles.

| **Evidence Item** | **Required Content** |
| --- | --- |
| MicroFunction Principle Impact Record | Impact on SOLID, Clean Architecture, DDD boundary, ports/adapters, idempotency, determinism, fail-safe behavior, security, observability, policy, resilience, reversibility, and AVCI. |
| Catalog Registration | step_code, category, owner, version, classification ceiling, input/output contract, error policy, retry policy, compensation, status. |
| Runtime Definition Evidence | definition_hash, signature, active version, source MR, validator result, test run, approver, activation time. |
| Test Evidence | Unit/component/contract/configuration/security/architecture/AI tests with CI run references and human checker. |
| Security Evidence | Policy result, classification decision, secrets check, PII/log redaction, SBAC/OPA decision, route eligibility. |
| Operational Evidence | Trace/log/metric/audit schema, SLO signal, alert, DLQ path, replay/reprocess path, runbook update. |
| Reversibility Evidence | Rollback or forward-fix plan, compensation step, cache invalidation, reprocess procedure, manual review trigger. |

### 12.1 PR/MR AVCI and SOLID Summary

**Required PR/MR Summary Block**

| ## MicroFunction AVCI + SOLID Compliance Summary<br>- Change type: code / config / rule / adapter / prompt / guardrail / catalog<br>- Affected txn_code / step_code:<br>- Bounded context owner:<br>- SOLID impact: preserved / improved / exception requested<br>- Clean Architecture / Ports-and-Adapters impact:<br>- Idempotency and determinism evidence:<br>- Security / SBAC / OPA / classification evidence:<br>- Observability and audit evidence:<br>- Error handling / retry / compensation evidence:<br>- Reversibility / rollback / reprocess plan:<br>- Tests executed:<br>- AI assistance used: tool/model/prompt intent/human checker<br>- AVCI evidence references: |
| --- |

## 13. RACI and Developer Handoff

| **Activity** | **Solutions Architect** | **Tech Lead** | **Developer** | **QA/SDET** | **Security** | **DBA** | **DevSecOps** | **Business SME** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Define standard function category | A | R | C | C | C | C | C | C |
| Create transaction configuration | A | R | C | C | C | C | C | C |
| Implement STP-BUS-* function | C | A | R | C | C | C | C | C |
| Approve catalog registration | A | R | C | C | C | C | C | I |
| Validate SOLID/architecture fitness | A | R | R | C | C | I | C | I |
| Validate test evidence | C | A | R | R | C | C | C | I |
| Validate security / SBAC / OPA | C | C | C | C | A/R | C | C | I |
| Activate runtime configuration | A | C | I | C | C | C | R | I |
| Approve high-risk exception | A | C | I | C | A/R | C | C | C |

R = Responsible, A = Accountable, C = Consulted, I = Informed.

### 13.1 Developer Handoff Rules

Use this framework to understand what is standard and what requires custom code.

Use 10A for design and development procedure, 10B for implementation detail, 10C for sequence diagrams, and 10D for catalog/template selection.

Never implement framework plumbing inside STP-BUS-* functions.

When unsure whether code is required, choose the order: existing standard step, configuration, rule/DMN, OPA policy, adapter, then new MicroFunction code by approval.

Every PR/MR must include the AVCI + SOLID summary and evidence references before review.

## 14. Implementation Roadmap

| **Phase** | **Action** | **Exit Criteria** |
| --- | --- | --- |
| R1 - Framework ratification | Approve this v3.1 framework and align it with 01A, 01 v3.1, 02 v5.0, 03 v4.0, 06 v3.1, 08 v3.1, and 12 v3.1. | Architecture Review Board acceptance and revision matrix updated. |
| R2 - Support document revision | Regenerate 10A, 10B, 10C, and 10D to match the new enforcement layer. | All support documents reference this v3.1 framework and include SOLID/fitness/evidence gates. |
| R3 - Tooling enablement | Implement publish validator, CLAUDE.md checks, pre-commit checks, ArchUnit/Semgrep/OPA tests, and CI gates. | Violations fail locally or in CI with actionable messages. |
| R4 - Pilot transaction | Apply the framework to a controlled sample transaction, such as document intake or customer update. | Transaction passes activation, tests, observability, audit, compensation, and rollback evidence. |
| R5 - Controlled rollout | Require all new transactions and material changes to use v3.1 framework rules. | No production-bound transaction bypasses configuration, evidence, or principle gates. |
| R6 - Continuous improvement | Use incidents, tests, and reviews to improve catalog, templates, fitness functions, and knowledge artifacts. | Improvements are human-reviewed and promoted through normal change control. |

## 15. AVCI Compliance Summary

| **AVCI Property** | **How This Document Satisfies It** |
| --- | --- |
| Attributable | Defines owner, audience, companion documents, authority hierarchy, RACI, accountable roles, and catalog ownership expectations. |
| Verifiable | Defines publish validators, architecture fitness functions, deterministic tests, security gates, configuration tests, and activation evidence. |
| Classifiable | Requires classification ceilings for functions, transactions, prompts, retrieved evidence, logs, cache, model routes, and runtime artifacts. |
| Improvable | Defines Auto-Heal, Auto-Learn, Auto-Improve constraints, feedback loops, support document revisions, roadmap, and controlled update path. |
| **Final Framework Position**<br>The AIRA MicroFunction Framework v3.1 is not only a reuse mechanism. It is the controlled execution fabric that keeps business delivery configurable while preserving enterprise architecture discipline. New features may move faster, but they must not bypass SOLID, Clean Architecture, DDD boundaries, security controls, observability, reversibility, or AVCI evidence. |  |
