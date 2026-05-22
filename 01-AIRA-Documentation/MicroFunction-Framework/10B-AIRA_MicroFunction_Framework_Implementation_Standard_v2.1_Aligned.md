---
document_id: "AIRA-DOC-010B"
title: "AIRA MicroFunction Framework Implementation Standard"
version: "v2.1"
status: "aligned"
source_file: "10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/MicroFunction-Framework"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - microfunction
---

# AIRA MicroFunction Framework Implementation Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA MicroFunction Framework Implementation Standard**

_Runtime Engine | Catalog Schema | Execution Envelope | Java 25 Implementation Controls_

**v2.1 - Pack 04 v1.2 Implementation and Java 25 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-010B** |
| **Document Title** | **AIRA MicroFunction Framework Implementation Standard** |
| **Document Version** | **v2.1 - Pack 04 v1.2 Implementation and Java 25 Alignment Update** |
| **Supersedes** | **10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Database Administration; Platform Engineering; AI Engineering; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material MicroFunction, security, database, workflow, AI, Java/runtime, or architecture-governance change** |
| **Pack Context** | **Pack 04 v1.2 individual aligned file generated from Pack 04 v1.1 aligned source pack and synchronized against Packs 01, 02, 03, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend services, MicroFunction engine code, service templates, test fixtures, and CI evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Canonical implementation companion to Document 10.** |

**Configure First · Code Only the Business Gap · Govern Every Step · AVCI Always**

## Pack 04 v1.2 Cross-Pack Alignment and Improvement Notice

**Purpose. **This aligned version updates the individual Pack 04 source document so it can be uploaded to Obsidian as a standalone MicroFunction Framework artifact while remaining synchronized with the current AIRA source baseline, the completed Pack 01 through Pack 03 v1.2 individual outputs, and Pack 05 data/API/security/decision controls.

**Document role. **Defines implementation rules for the MicroFunction runtime engine, interfaces, catalogs, configuration validation, execution envelope, adapters, and evidence hooks.

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

Pinned backend implementation assumptions to Java 25 LTS and Java 25-compatible Spring Boot/Spring Framework generation where feasible.

Added implementation hardening for runtime envelope boundaries, forbidden imports, dependency inversion, and adapter-only external access.

Aligned database/catalog schema changes with Pack 05 Flyway-only governance and explicit expand/contract migration discipline.

Clarified that MicroFunction runtime configuration is authoritative only through governed database/Flyway/configuration publishing, not unmanaged direct SQL or manual edits.

Improved operational evidence requirements for trace_id, request_id, catalog version, configuration version, policy decision, guardrail result, and rollback/compensation path.

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

**MicroFunction Framework Implementation Standard**

**SQL Baseline | Java 25 / Spring Boot 4 Reference Contracts | Enterprise Error Handling | SOLID-Enforced**

**Version 2.1 - Enterprise Design Principles and SOLID Enforcement Update**

| **Implementation Principle**<br>The framework owns all repeatable enterprise concerns: reception, correlation, session, security, parsing, normalization, validation, idempotency, concurrency, configuration, caching, audit, error handling, retry, compensation, eventing, observability, and safe responses. Developers add only business-specific logic through registered STP-BUS-* MicroFunctions, rules, DMN, OPA policies, or approved adapters. Every implementation must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-010B |
| Document Title | AIRA MicroFunction Framework Implementation Standard |
| Version | v2.1 - Enterprise Design Principles and SOLID Enforcement Update |
| Supersedes | 10B-AIRA_MicroFunction_Framework_Implementation_Standard_v1.2 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | Development Baseline / Architecture Review Ready |
| Owner | Solutions Architecture Office / AI-Native Platform Engineering |
| Audience | Solutions Architects, Software Developers, DevSecOps, DBA, QA/SDET, Security Administrator, System Administrator, AI Engineers |
| Companion Documents | 01A Enterprise Design Principles and SOLID Enforcement Layer v1.1; 01 AVCI Engineering Standard v3.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 06 CLAUDE.md Reference v3.1; 08 Unit Testing Standard v3.1; 10 MicroFunction Framework v3.1; 10A Design Guide v2.1; 10C Sequence Diagrams; 10D Catalog; 11 DevSecOps Standard; 12 Rollout Starter Pack v3.0; 15 API Contract Standard; 16 Database Standard; 17 Security Standard |
| Purpose | Provide implementation-ready SQL, Java contracts, runtime assembly patterns, error handling, cache rules, evidence schema, and automated enforcement controls for AIRA MicroFunction developers. |
| Review Cadence | Quarterly; unscheduled review on material architecture, security, database, AI-governance, framework, or technology-stack change |

## v2.1 Change Summary

| **Change Area** | **v2.1 Improvement** |
| --- | --- |
| Enterprise Design Principles | Adds 01A as a mandatory implementation companion for all MicroFunction runtime, SQL, Java, and CI artifacts. |
| SOLID enforcement | Adds coding contracts, package boundaries, dependency inversion, and architecture tests for MicroFunction implementations. |
| Clean Architecture / DDD | Clarifies framework-owned, application-owned, domain-owned, adapter-owned, and governance-owned implementation boundaries. |
| SQL governance | Adds columns and tables for design-principle profiles, fitness functions, rollback plans, activation evidence, and validation outcomes. |
| Java contracts | Updates reference interfaces to encode typed inputs/outputs, policy context, error handling, idempotency, audit, and execution evidence. |
| Error handling | Strengthens retry, timeout, circuit breaker, compensation, DLQ, human escalation, and safe response behavior. |
| Architecture fitness | Adds ArchUnit, contract tests, mutation tests, OPA tests, deterministic tests, and CI evidence gates. |
| Auto-Heal / Auto-Learn / Auto-Improve | Requires automated changes to preserve or improve SOLID, boundaries, tests, security, observability, reversibility, and AVCI evidence. |

## Table of Contents

## 1. Executive Summary

## 2. Implementation Scope and Developer Boundary

## 3. Standard Package and Repository Layout

## 4. Authoritative PostgreSQL Table Definitions

## 5. Java 25 / Spring Boot 4 Reference Contracts

## 6. Runtime Assembly, Cache, and Signature Model

## 7. Execution Envelope and Standard Step Implementation

## 8. Enterprise Error Handling, Retry, Compensation, and DLQ

## 9. Security, Policy, AI, and Classification Enforcement

## 10. Architecture Fitness Functions and CI Enforcement

## 11. Testing Baseline and Evidence Requirements

## 12. Auto-Heal, Auto-Learn, Auto-Improve Implementation Controls

## 13. Developer Workflow, PR/MR Evidence, and RACI

## 14. Appendices: Reference SQL, Java, and CI Templates

## 15. AVCI Compliance Summary

## 1. Executive Summary

This implementation standard turns the AIRA MicroFunction architecture into concrete artifacts that software developers and DBAs can implement immediately: PostgreSQL tables, Flyway-ready DDL patterns, Java contracts, runtime assembly code patterns, enterprise error handling, outbox/DLQ support, policy validation, and testing expectations.

Version 2.1 adds the Enterprise Design Principles and SOLID Enforcement Layer. This means the implementation is no longer judged only by whether a transaction executes. It must also prove that it preserves SOLID compliance, Clean Architecture boundaries, bounded-context ownership, ports-and-adapters separation, deterministic behavior, idempotency, fail-safe controls, observability, testability, secure-by-design posture, resilience, reversibility, and AVCI evidence.

| **Coding Rule**<br>Code is required only when a genuinely new business or framework capability is needed. After it is registered as a MicroFunction, it becomes reusable and configurable like any other standard function. The implementation must not weaken the platform envelope or bypass mandatory standard concerns. |
| --- |

### 1.1 Strategic Implementation Outcomes

| **Outcome** | **Implementation Requirement** |
| --- | --- |
| Reusable transaction fabric | Common enterprise concerns are implemented once as standard functions and reused through configuration. |
| Safe business extension | Business developers implement isolated STP-BUS-* functions only when no standard function or rule can satisfy the requirement. |
| Evidence by construction | Every runtime definition, step execution, error path, policy decision, and improvement proposal emits AVCI-compatible evidence. |
| Boundary protection | Domain logic cannot directly depend on HTTP, Kafka, Redis, PostgreSQL, OpenKM, LiteLLM, provider SDKs, or CI/CD tools. |
| Automated enforcement | Architecture fitness functions, contract tests, policy tests, and CI gates prevent drift before merge. |

## 2. Implementation Scope and Developer Boundary

| **Boundary** | **Responsibility** |
| --- | --- |
| Framework-owned | Receive requests, correlate trace context, resolve session, enforce security, parse/normalize/validate, apply idempotency and locks, resolve runtime configuration, manage caches, record audit, publish outbox events, classify errors, retry/compensate, DLQ, and build safe responses. |
| Business-owned | Domain calculation, domain state transition, domain decision, business-specific validation, business-specific persistence intent, and domain-specific event payload construction. |
| Configuration-owned | Step order, parameters, retry policy, error policy, compensation step, timeout, classification ceiling, feature flag, cache behavior, active version, and rollback strategy. |
| Governance-owned | Publish/activation approvals, exception waivers, human escalation, model/guardrail policy, production promotion, controlled Auto-Learn/Auto-Improve updates, and risk acceptance. |
| Security-owned | OPA policies, SBAC rules, classification handling, secrets access, token claims, identity propagation, workload identity, and audit review. |

### 2.1 Non-Negotiable Implementation Rules

No business MicroFunction may directly construct HTTP responses, publish Kafka events, query Redis, call OpenKM, write audit records, call model providers, or control retry loops outside the execution envelope.

Every mutating function must declare idempotency, retry, timeout, compensation, safe-response, and rollback/forward-fix behavior.

Every model, RAG, or tool-action step must pass through LiteLLM, NeMo Guardrails, Harness, SBAC, OPA, trust scoring, and audit controls as applicable.

Runtime definitions are signed, versioned, classifiable artifacts. Redis and Caffeine are acceleration layers only; PostgreSQL and workflow histories remain authoritative.

Any code or configuration that weakens SOLID, Clean Architecture, DDD boundaries, security, testability, observability, reversibility, or AVCI evidence is rejected or escalated as a waiver.

## 3. Standard Package and Repository Layout

**Repository Layout Baseline**

| services/workflow-service/<br>+- src/main/java/com/aira/microfunction/<br>\| +- api/ # MicroFunction contracts, records, enums<br>\| +- catalog/ # Step catalog loading and bean registration<br>\| +- config/ # Spring configuration, Caffeine, Redis, policy clients<br>\| +- runtime/ # Assembler, resolver, coordinator, execution envelope<br>\| +- error/ # Error taxonomy, classifier, problem responses, DLQ<br>\| +- audit/ # Audit recorder and evidence writer<br>\| +- idempotency/ # Idempotency manager and repository<br>\| +- concurrency/ # Redis/Redisson and database locking helpers<br>\| +- outbox/ # Transactional outbox and Kafka publisher<br>\| +- standard/ # STP-RCV, STP-SEC, STP-VAL, STP-AUD, etc.<br>\| +- policy/ # OPA/SBAC/classification validators<br>\| +- fitness/ # Architecture fitness and publish-time validators<br>\| +- adapter/ # Temporal, Flowable, Kafka, REST, OpenKM adapters<br>\| +- ai/ # LiteLLM, guardrail, retrieval, Harness tool-action ports<br>+- src/test/java/... # Unit, contract, architecture, policy, mutation tests<br>+- src/main/resources/db/migration/ # Flyway DDL and seed data<br><br>domains/loans-service/<br>+- src/main/java/com/aira/loans/domain/ # Domain model, rules, ports<br>+- src/main/java/com/aira/loans/application/ # Use cases and app services<br>+- src/main/java/com/aira/loans/adapter/ # DB/API/event adapters<br>+- src/main/java/com/aira/loans/microfunctions/ # STP-BUS-* only |
| --- |

### 3.1 Package Boundary Rules

| **Package** | **Allowed Dependencies** | **Prohibited Dependencies** |
| --- | --- | --- |
| domain | Pure Java, domain value objects, domain ports, domain errors. | Spring Web, JPA repositories, Kafka, Redis, OpenKM, LiteLLM, provider SDKs, framework envelope. |
| application | Domain model, domain ports, MicroFunction API contracts, transaction context abstractions. | Provider SDKs, raw SQL strings, direct HTTP response construction, direct audit writes. |
| adapter | Spring components, repositories, REST clients, Kafka, OpenKM, Vault, external APIs. | Business rule ownership and domain state decisions. |
| microfunction | MicroFunction API, domain/application services, typed parameters, domain ports. | Direct DB/Kafka/Redis/model provider access, manual retry loops, custom response shaping. |
| runtime | Framework orchestration, envelope, policy, cache, idempotency, audit, error path. | Business-specific domain decisions. |
| fitness | ArchUnit, validators, CI evidence checks, publish-time controls. | Production transaction behavior or runtime side effects. |

## 4. Authoritative PostgreSQL Table Definitions

The following schema is the implementation baseline. Developers may add domain tables, but they must not bypass these framework tables for process configuration, audit, idempotency, outbox, DLQ, publish validation, or fitness-function evidence.

### 4.1 Core Configuration and Catalog Tables

**Flyway DDL Baseline - Core Configuration**

| CREATE SCHEMA IF NOT EXISTS aira_mf;<br>CREATE EXTENSION IF NOT EXISTS pgcrypto;<br>CREATE EXTENSION IF NOT EXISTS vector;<br><br>CREATE TABLE aira_mf.step_catalog (<br> step_code varchar(80) PRIMARY KEY,<br> step_name varchar(160) NOT NULL,<br> step_category varchar(40) NOT NULL,<br> capability varchar(30) NOT NULL,<br> bean_name varchar(160) NOT NULL,<br> bounded_context varchar(80),<br> classification_ceiling varchar(30) NOT NULL DEFAULT 'INTERNAL',<br> default_error_policy varchar(60) NOT NULL DEFAULT 'FAIL_FAST',<br> default_retry_policy varchar(60) NOT NULL DEFAULT 'NO_RETRY',<br> default_compensation_step_code varchar(80),<br> design_principle_profile varchar(80) NOT NULL DEFAULT 'AIRA_STANDARD',<br> fitness_profile_code varchar(80) NOT NULL DEFAULT 'MF_STANDARD_FITNESS',<br> rollback_strategy varchar(40) NOT NULL DEFAULT 'FORWARD_FIX',<br> is_standard boolean NOT NULL DEFAULT true,<br> owner varchar(120) NOT NULL,<br> version integer NOT NULL DEFAULT 1,<br> status varchar(30) NOT NULL DEFAULT 'ACTIVE',<br> created_at timestamptz NOT NULL DEFAULT now(),<br> updated_at timestamptz NOT NULL DEFAULT now()<br>);<br><br>CREATE TABLE aira_mf.txn_definition (<br> txn_code varchar(80) NOT NULL,<br> txn_name varchar(160) NOT NULL,<br> profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br> version integer NOT NULL,<br> execution_mode varchar(30) NOT NULL,<br> status varchar(30) NOT NULL DEFAULT 'DRAFT',<br> classification varchar(30) NOT NULL DEFAULT 'INTERNAL',<br> bounded_context varchar(80) NOT NULL,<br> owner varchar(120) NOT NULL,<br> design_principle_profile varchar(80) NOT NULL DEFAULT 'AIRA_STANDARD',<br> rollback_strategy varchar(40) NOT NULL DEFAULT 'FORWARD_FIX',<br> definition_hash varchar(128),<br> signature text,<br> active_from timestamptz,<br> active_to timestamptz,<br> created_at timestamptz NOT NULL DEFAULT now(),<br> updated_at timestamptz NOT NULL DEFAULT now(),<br> PRIMARY KEY (txn_code, profile_code, version)<br>); |
| --- |

### 4.2 Policies, Step Binding, and Parameters

**Flyway DDL Baseline - Policies and Step Binding**

| CREATE TABLE aira_mf.retry_policy (<br> retry_policy_code varchar(60) PRIMARY KEY,<br> max_attempts integer NOT NULL DEFAULT 1 CHECK (max_attempts >= 1),<br> initial_delay_ms integer NOT NULL DEFAULT 0,<br> max_delay_ms integer NOT NULL DEFAULT 0,<br> backoff_type varchar(30) NOT NULL DEFAULT 'NONE',<br> jitter_enabled boolean NOT NULL DEFAULT false,<br> retryable_errors text[] NOT NULL DEFAULT '{}',<br> created_at timestamptz NOT NULL DEFAULT now()<br>);<br><br>CREATE TABLE aira_mf.error_policy (<br> error_policy_code varchar(60) PRIMARY KEY,<br> behavior varchar(40) NOT NULL,<br> safe_response boolean NOT NULL DEFAULT true,<br> publish_error_event boolean NOT NULL DEFAULT true,<br> dlq_enabled boolean NOT NULL DEFAULT false,<br> human_escalation boolean NOT NULL DEFAULT false,<br> fail_closed boolean NOT NULL DEFAULT true,<br> created_at timestamptz NOT NULL DEFAULT now()<br>);<br><br>CREATE TABLE aira_mf.txn_step_binding (<br> txn_code varchar(80) NOT NULL,<br> profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br> version integer NOT NULL,<br> step_order integer NOT NULL,<br> step_code varchar(80) NOT NULL REFERENCES aira_mf.step_catalog(step_code),<br> is_mandatory boolean NOT NULL DEFAULT true,<br> on_success_next_order integer,<br> on_failure_step_code varchar(80) NOT NULL DEFAULT 'STP-ERR-001',<br> error_policy_code varchar(60) NOT NULL REFERENCES aira_mf.error_policy(error_policy_code),<br> retry_policy_code varchar(60) NOT NULL REFERENCES aira_mf.retry_policy(retry_policy_code),<br> compensation_step_code varchar(80),<br> timeout_ms integer NOT NULL DEFAULT 30000,<br> classification_ceiling varchar(30) NOT NULL DEFAULT 'INTERNAL',<br> requires_human_approval boolean NOT NULL DEFAULT false,<br> requires_fitness_pass boolean NOT NULL DEFAULT true,<br> created_at timestamptz NOT NULL DEFAULT now(),<br> PRIMARY KEY (txn_code, profile_code, version, step_order),<br> FOREIGN KEY (txn_code, profile_code, version)<br> REFERENCES aira_mf.txn_definition(txn_code, profile_code, version)<br>); |
| --- |

### 4.3 Runtime Evidence, Idempotency, Outbox, and DLQ

**Flyway DDL Baseline - Runtime Evidence and Reliability**

| CREATE TABLE aira_mf.step_execution_audit (<br> audit_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br> trace_id varchar(128) NOT NULL,<br> request_id varchar(128) NOT NULL,<br> tenant_id uuid NOT NULL,<br> actor_hash varchar(128) NOT NULL,<br> txn_code varchar(80) NOT NULL,<br> runtime_version integer NOT NULL,<br> step_code varchar(80) NOT NULL,<br> step_order integer NOT NULL,<br> status varchar(30) NOT NULL,<br> error_code varchar(80),<br> error_policy_code varchar(60),<br> retry_attempt integer NOT NULL DEFAULT 0,<br> duration_ms integer,<br> principle_impact jsonb NOT NULL DEFAULT '{}'::jsonb,<br> evidence_ref varchar(256),<br> created_at timestamptz NOT NULL DEFAULT now()<br>);<br><br>CREATE TABLE aira_mf.idempotency_registry (<br> idempotency_key varchar(160) PRIMARY KEY,<br> tenant_id uuid NOT NULL,<br> txn_code varchar(80) NOT NULL,<br> request_hash varchar(128) NOT NULL,<br> response_hash varchar(128),<br> status varchar(30) NOT NULL,<br> expires_at timestamptz NOT NULL,<br> created_at timestamptz NOT NULL DEFAULT now(),<br> completed_at timestamptz<br>);<br><br>CREATE TABLE aira_mf.outbox_event (<br> outbox_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br> aggregate_type varchar(80) NOT NULL,<br> aggregate_id varchar(120) NOT NULL,<br> event_type varchar(120) NOT NULL,<br> schema_version varchar(30) NOT NULL,<br> payload jsonb NOT NULL,<br> classification varchar(30) NOT NULL,<br> trace_id varchar(128) NOT NULL,<br> status varchar(30) NOT NULL DEFAULT 'PENDING',<br> created_at timestamptz NOT NULL DEFAULT now(),<br> published_at timestamptz<br>);<br><br>CREATE TABLE aira_mf.dead_letter_message (<br> dlq_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br> source_channel varchar(160) NOT NULL,<br> txn_code varchar(80),<br> payload_hash varchar(128) NOT NULL,<br> error_code varchar(80) NOT NULL,<br> safe_error text NOT NULL,<br> classification varchar(30) NOT NULL,<br> retry_count integer NOT NULL DEFAULT 0,<br> status varchar(30) NOT NULL DEFAULT 'OPEN',<br> evidence_ref varchar(256),<br> created_at timestamptz NOT NULL DEFAULT now()<br>); |
| --- |

### 4.4 Fitness Function and Publish Validation Tables

**Flyway DDL Baseline - Fitness and Publish Validation**

| CREATE TABLE aira_mf.fitness_profile (<br> fitness_profile_code varchar(80) PRIMARY KEY,<br> profile_name varchar(160) NOT NULL,<br> required_checks text[] NOT NULL,<br> minimum_result varchar(30) NOT NULL DEFAULT 'PASS',<br> owner varchar(120) NOT NULL,<br> status varchar(30) NOT NULL DEFAULT 'ACTIVE',<br> created_at timestamptz NOT NULL DEFAULT now()<br>);<br><br>CREATE TABLE aira_mf.publish_validation_result (<br> validation_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br> txn_code varchar(80) NOT NULL,<br> profile_code varchar(80) NOT NULL,<br> version integer NOT NULL,<br> validator_name varchar(120) NOT NULL,<br> result varchar(30) NOT NULL,<br> finding_count integer NOT NULL DEFAULT 0,<br> findings jsonb NOT NULL DEFAULT '[]'::jsonb,<br> evidence_ref varchar(256),<br> validated_at timestamptz NOT NULL DEFAULT now(),<br> validated_by varchar(120) NOT NULL<br>); |
| --- |

## 5. Java 25 / Spring Boot 4 Reference Contracts

The Java contracts below are implementation guidance. Exact package names and framework details may evolve, but the boundary semantics are mandatory: typed inputs and outputs, explicit context, framework-managed evidence, and no direct infrastructure dependency from business functions.

**Core MicroFunction Contract**

| public interface MicroFunction<I extends MicroFunctionInput, O extends MicroFunctionOutput> {<br> StepCode stepCode();<br> Capability capability();<br> ClassificationCeiling classificationCeiling();<br> IdempotencyMode idempotencyMode();<br><br> O execute(I input, MicroFunctionContext context) throws MicroFunctionException;<br>}<br><br>public sealed interface MicroFunctionInput permits JsonInput, DomainInput, FileInput, AiInput {<br> String requestHash();<br> Classification classification();<br>}<br><br>public sealed interface MicroFunctionOutput permits DomainDecision, StateChangeIntent,<br> EventIntent, SafeResponse, NoOpResult {<br> String outputHash();<br> EvidenceFragment evidenceFragment();<br>}<br><br>public record MicroFunctionContext(<br> TraceContext trace,<br> ActorContext actor,<br> TenantContext tenant,<br> Classification classification,<br> RuntimeParameters parameters,<br> PolicyDecision policyDecision,<br> EvidenceRecorder evidence,<br> Clock clock) {<br>} |
| --- |

**Execution Envelope Reference Pattern**

| public final class ExecutionEnvelope {<br> private final PolicyEvaluator policyEvaluator;<br> private final IdempotencyManager idempotencyManager;<br> private final ErrorClassifier errorClassifier;<br> private final RetryExecutor retryExecutor;<br> private final CompensationCoordinator compensationCoordinator;<br> private final AuditRecorder auditRecorder;<br> private final ObservationEmitter observationEmitter;<br><br> public StepExecutionResult invoke(RuntimeStep step, MicroFunctionInput input,<br> MicroFunctionContext context) {<br> var timer = observationEmitter.start(step, context.trace());<br> try {<br> policyEvaluator.assertAllowed(step, context);<br> idempotencyManager.reserveIfRequired(step, input, context);<br> var result = retryExecutor.execute(step.retryPolicy(),<br> () -> step.function().execute(input, context));<br> auditRecorder.recordSuccess(step, result, context);<br> idempotencyManager.completeIfRequired(step, input, result, context);<br> return StepExecutionResult.success(result);<br> } catch (Exception ex) {<br> var classified = errorClassifier.classify(ex, step, context);<br> auditRecorder.recordFailure(step, classified, context);<br> return compensationCoordinator.apply(step, classified, context);<br> } finally {<br> timer.stop();<br> }<br> }<br>} |
| --- |

### 5.1 Dependency Inversion and Ports

| **Implementation Area** | **Required Pattern** | **Rejected Pattern** |
| --- | --- | --- |
| Domain logic | Depends on domain ports and value objects. | Imports Spring repositories, Redis templates, Kafka producers, WebClient, or provider SDKs. |
| Business MicroFunction | Depends on application/domain ports and framework context only. | Builds HTTP response, writes audit, publishes event, or starts Temporal workflow directly. |
| Adapters | Implement ports and translate infrastructure responses into domain-safe results. | Own business rule decisions or bypass framework validation. |
| AI model calls | Use Spring AI abstraction through LiteLLM-governed model aliases and guardrails. | Direct OpenAI/Anthropic/provider SDK import or hardcoded model name. |
| Persistence | Repository interfaces, jOOQ/Spring Data/JPA as approved by context. | Free-form SQL string assembly from user/config input. |

## 6. Runtime Assembly, Cache, and Signature Model

RuntimeProcessDefinition objects are derivative artifacts assembled from authoritative PostgreSQL configuration rows. They are signed, versioned, cached, and invalidated through governed events. Cache loss must degrade latency, not correctness.

| **Layer** | **Store** | **Behavior** | **Authority** |
| --- | --- | --- | --- |
| L1 | Caffeine JVM-local | Per-process cache with bounded size and short TTL. Invalidated by config.changed event. | Derivative |
| L2 | Redis / Valkey | Shared cluster cache keyed by txn_code/profile/version. TTL is safety net only. | Derivative |
| L3 | PostgreSQL | Authoritative configuration source for active transaction definitions and policies. | Tier 0 |
| L4 | Git / Flyway | Source of schema and seed-data migration history. | Tier 0 |

**RuntimeProcessDefinition Contract**

| public record RuntimeProcessDefinition(<br> String txnCode,<br> String profileCode,<br> int version,<br> ExecutionMode executionMode,<br> Classification classification,<br> List<RuntimeStep> steps,<br> String definitionHash,<br> String signature,<br> String designPrincipleProfile,<br> String fitnessProfileCode,<br> RollbackStrategy rollbackStrategy) {<br><br> public void assertExecutable() {<br> requireNonNull(txnCode);<br> requireNonNull(steps);<br> if (steps.isEmpty()) throw new InvalidRuntimeDefinitionException("No steps configured");<br> if (signature == null \|\| signature.isBlank())<br> throw new InvalidRuntimeDefinitionException("Unsigned runtime definition");<br> }<br>} |
| --- |

### 6.1 Publish-Time Validation Rules

| **Validation** | **Reject When** |
| --- | --- |
| Mandatory step order | Receive, correlate, actor/session, security, parse, normalize, validate, audit, response, or error path is missing for applicable transaction type. |
| Classification ceiling | A step handles data above its classification ceiling or routes Confidential/Restricted data to disallowed model path. |
| Idempotency | A mutating transaction lacks idempotency, natural-key constraint, workflow dedupe, or replay behavior. |
| Error policy | A step lacks timeout, retry policy, safe response, DLQ/escalation rule, or compensation behavior where required. |
| Architecture boundary | A STP-BUS-* function depends directly on infrastructure adapter, model provider SDK, or framework internals. |
| Fitness profile | Required architecture, policy, contract, or mutation tests fail or are missing evidence. |
| Rollbackability | No forward-fix, compensation, disable flag, or rollback strategy exists for a material change. |

## 7. Execution Envelope and Standard Step Implementation

Every MicroFunction runs inside the execution envelope. The envelope supplies policy, idempotency, retries, timeouts, error classification, compensation, audit, metrics, traces, and safe response behavior. Business code must not duplicate or bypass the envelope.

| **Envelope Concern** | **Implementation Requirement** |
| --- | --- |
| Correlation | trace_id, span_id, request_id, execution_id, tenant_id, actor hash, and causation_id are created or propagated before step execution. |
| Policy | OPA/SBAC/classification decision is evaluated before protected action. Deny means fail closed. |
| Idempotency | Reserve before mutation, complete after successful outcome, replay safe response when duplicate request is valid. |
| Concurrency | Apply optimistic/pessimistic/Redis lock only through framework-managed helper and release safely. |
| Retry | Retry only when declared retry policy says error is retryable. No hidden loops inside business code. |
| Compensation | Compensating action is configured, tested, audited, and bounded by classification and approval rules. |
| Observability | Emit metrics, spans, logs, and audit without secrets/PII in labels or messages. |
| Response | Map errors to safe machine-readable response contract. No stack traces or internals. |

## 8. Enterprise Error Handling, Retry, Compensation, and DLQ

| **Fail-Safe Rule**<br>AIRA fails safe, not open. If identity, policy, guardrails, model routing, audit, or validation controls are unavailable, the protected operation is blocked, retried only if safe, escalated if required, and recorded with evidence. |
| --- |

| **Error Class** | **Examples** | **Default Behavior** | **Evidence** |
| --- | --- | --- | --- |
| VALIDATION | Schema error, missing field, invalid business input. | No retry. Safe response. Audit validation failure. | Request hash, validation code, field path, trace_id. |
| AUTHORIZATION | RBAC/ABAC/SBAC/OPA deny, classification mismatch. | Fail closed. No retry. Human review only by policy. | Policy version, decision, actor hash, resource, action. |
| CONFLICT | Idempotency conflict, version conflict, duplicate natural key. | Replay safe response or return conflict. No double mutation. | Idempotency key, request hash, existing state reference. |
| DEPENDENCY_TRANSIENT | Timeout, 503, broker unavailable. | Retry with bounded backoff and jitter; circuit breaker if repeated. | Dependency, attempts, duration, circuit state. |
| DEPENDENCY_PERMANENT | Unsupported response, bad credentials, schema mismatch. | No repeated retry. DLQ or human escalation. | Error code, payload hash, adapter version. |
| AI_GUARDRAIL | Input/retrieval/execution/output rail fail. | Block model/action. Safe response or human review. | Guardrail result, model alias, route, evidence pack hash. |
| SYSTEM_DEFECT | Null pointer, invariant failure, unexpected code path. | Safe response, incident event, no sensitive details. | Stack reference in restricted log, release, commit, trace_id. |

**Error Taxonomy Reference**

| public enum ErrorClass {<br> VALIDATION,<br> AUTHORIZATION,<br> CONFLICT,<br> DEPENDENCY_TRANSIENT,<br> DEPENDENCY_PERMANENT,<br> AI_GUARDRAIL,<br> SYSTEM_DEFECT,<br> SECURITY_EVENT<br>}<br><br>public record ClassifiedError(<br> ErrorClass errorClass,<br> String errorCode,<br> boolean retryable,<br> boolean compensatable,<br> boolean safeToExpose,<br> boolean requiresHumanEscalation,<br> String evidenceRef) {<br>} |
| --- |

### 8.1 Compensation Rules

Compensation must be explicit. A mutating step either has a configured compensation step or a documented reason why compensation is not possible and must use forward-fix governance.

Compensation must be idempotent. Re-running compensation must not create a second reverse effect.

Compensation cannot bypass authorization, classification, audit, or separation-of-duties controls.

Irreversible operations require human approval, evidence pre-recording, and business-risk acceptance before execution.

## 9. Security, Policy, AI, and Classification Enforcement

| **Control** | **Implementation Requirement** |
| --- | --- |
| Authentication | Actor identity must be resolved before business execution. Service identity uses workload identity where available. |
| Authorization | RBAC/ABAC/SBAC/OPA decisions are evaluated at framework envelope and protected action levels. |
| Classification | Data classification determines logs, cache eligibility, event eligibility, model route, retention, and evidence visibility. |
| Secrets | Secrets are retrieved only through approved secrets manager and never stored in config rows, logs, prompts, traces, or test fixtures. |
| AI model routing | All model calls go through LiteLLM aliases and guardrails. Direct provider SDKs are not allowed in application or business code. |
| Tool action | Hermes may propose; Harness validates skill, trust, OPA, scope, and approval before execution. |
| Audit | Every policy decision, model call, tool action, step execution, and error outcome emits trace-correlated evidence. |

### 9.1 AI Step Implementation Pattern

| **AI Step** | **Mandatory Implementation Gate** |
| --- | --- |
| STP-AIR-* Retrieval | ACL-filtered evidence retrieval, classification check, citation pack hash, retrieval guardrail. |
| STP-GRD-* Guardrail | Input, Retrieval, Execution, Output checkpoints as applicable; fail closed on unavailable rail. |
| STP-AIM-* Model | LiteLLM alias only; no hardcoded provider; budget, route, prompt version, response hash, audit. |
| STP-TOOL-* Action | Harness action vocabulary, SBAC skill, trust threshold, OPA decision, human approval if high risk. |
| STP-HITL-* Review | Flowable human task for low-confidence, high-risk, Confidential/Restricted, irreversible, or policy-exception actions. |

## 10. Architecture Fitness Functions and CI Enforcement

Architecture fitness functions convert the Enterprise Design Principles and SOLID Enforcement Layer into executable checks. They are required locally where practical and in CI for all mergeable changes.

| **Fitness Function** | **Tool / Method** | **Blocks Merge When** |
| --- | --- | --- |
| SOLID and package boundaries | ArchUnit, jQAssistant, dependency analysis | Domain depends on adapters, business code imports infrastructure, cyclic dependencies exist. |
| No direct model/provider calls | Semgrep/import lint, dependency rules | Provider SDK imported outside approved gateway/adapter package. |
| No direct DB/Kafka/Redis from STP-BUS | ArchUnit/Semgrep | Business MicroFunction bypasses ports or framework envelope. |
| Contract integrity | OpenAPI/AsyncAPI/Avro compatibility tests | Endpoint/event/error contract drifts without versioning. |
| OPA/SBAC policy | Rego unit tests and integration policy tests | Protected action can execute without allowed policy decision. |
| Idempotency and retry safety | Unit/component tests, mutation tests | Mutation path can double-post, retry unsafe action, or miss dedupe. |
| Determinism | Unit tests with fake clock/seed/environment | Tests rely on real time, random, filesystem, network, or uncontrolled state. |
| Reversibility | Migration tests, compensation tests, feature-flag disable test | No rollback/forward-fix/disable path exists for material change. |
| Observability | OTel instrumentation tests, log redaction tests | Trace context missing or sensitive data appears in logs/traces. |

**Architecture Test Example**

| // ArchUnit example - package boundary rule<br>classes()<br> .that().resideInAPackage("..domain..")<br> .should().onlyDependOnClassesThat()<br> .resideInAnyPackage("java..", "com.aira..domain..", "com.aira..api..");<br><br>// STP-BUS functions must not depend on infrastructure adapters<br>noClasses()<br> .that().resideInAPackage("..microfunctions..")<br> .and().haveSimpleNameEndingWith("MicroFunction")<br> .should().dependOnClassesThat()<br> .resideInAnyPackage("..adapter..", "org.springframework.kafka..", "org.springframework.data.redis..",<br> "dev.langchain4j..", "com.openai..", "com.anthropic.."); |
| --- |

### 10.1 CI Gate Baseline

| **Gate** | **Minimum Required Evidence** |
| --- | --- |
| Compile and unit tests | Successful build, deterministic test results, changed-line coverage, branch coverage, mutation score where applicable. |
| Architecture tests | ArchUnit/dependency rules pass; no forbidden imports; no boundary drift. |
| Contract tests | OpenAPI/AsyncAPI/schema compatibility results and generated stubs/mocks where applicable. |
| Security tests | SAST, SCA, secret scan, container scan, policy tests, log redaction tests. |
| MicroFunction publish validation | Mandatory step validation, error path validation, classification routing, idempotency, rollback strategy. |
| AVCI summary | Owner, evidence, classification, principle impact, tests run, AI involvement, human checker. |

## 11. Testing Baseline and Evidence Requirements

| **Test Type** | **Required Coverage** |
| --- | --- |
| Unit | Business rules, state transitions, validation, boundary values, errors, idempotency, compensation decision logic. |
| Component | Execution envelope, policy evaluation, idempotency manager, retry executor, cache resolver, outbox publisher. |
| Contract | REST/event/schema/error contracts, safe response behavior, version compatibility. |
| Database | Flyway migration, constraints, RLS, outbox, idempotency registry, rollback/forward-fix scripts. |
| Policy | OPA, SBAC, classification routing, fail-closed behavior. |
| AI-native | Guardrails, retrieval citations, model alias routing, prompt versioning, tool-action approvals. |
| Operational | DLQ replay, reprocess, cache rebuild, index rebuild, audit evidence query. |

### 11.1 Evidence Record Minimum Schema

**AVCI Evidence Record Example**

| {<br> "artifact_id": "STP-BUS-LOAN-CHECK-ELIGIBILITY-001",<br> "artifact_type": "MICROFUNCTION",<br> "owner": "Loans Bounded Context Owner",<br> "version": "1.0.0",<br> "classification": "INTERNAL",<br> "design_principle_profile": "AIRA_STANDARD",<br> "solid_result": "PASS",<br> "architecture_boundary_result": "PASS",<br> "test_result_ref": "ci://pipeline/12345/tests",<br> "security_result_ref": "ci://pipeline/12345/security",<br> "fitness_result_ref": "ci://pipeline/12345/fitness",<br> "rollback_strategy": "FORWARD_FIX",<br> "ai_involvement": "Codex drafted unit tests; human reviewed",<br> "human_checker": "Tech Lead",<br> "approval_status": "APPROVED_FOR_MERGE"<br>} |
| --- |

## 12. Auto-Heal, Auto-Learn, Auto-Improve Implementation Controls

| **Capability** | **Implementation Control** |
| --- | --- |
| Auto-Heal | May detect failure, classify cause, draft patch/config change, run non-production tests, and prepare PR. It must not directly mutate production or bypass policy, tests, architecture gates, or human approval. |
| Auto-Learn | May propose knowledge updates from resolved incidents, test failures, PR reviews, and operational evidence. Promotion requires human review, classification check, source citation, and conflict check. |
| Auto-Improve | May propose refactoring, configuration simplification, test hardening, prompt/guardrail improvement, or architecture drift correction. Acceptance requires measurable improvement and no weakening of SOLID, boundaries, security, tests, observability, reversibility, or AVCI. |

| **Auto-Improvement Rejection Rule**<br>An automated proposal that fixes one symptom while weakening architecture boundaries, testability, least privilege, observability, rollbackability, or AVCI evidence is not an improvement. It is a non-conformance and must be rejected or redesigned. |
| --- |

## 13. Developer Workflow, PR/MR Evidence, and RACI

| **Workflow Step** | **Developer Action** | **Evidence** |
| --- | --- | --- |
| 1. Design | Confirm standard steps or code-required gap; link ticket and bounded context. | Design note, sequence/template reference, classification. |
| 2. Implement | Use approved package layout, contracts, ports, adapters, and framework envelope. | Commit, code review, forbidden-import check. |
| 3. Test | Write unit, component, architecture, policy, and contract tests. | Test report, coverage, mutation where applicable. |
| 4. Validate | Run publish validator and architecture fitness functions. | Validation report, fitness result. |
| 5. Review | Submit PR/MR with AVCI and design-principle impact summary. | PR/MR template, CODEOWNERS, approvals. |
| 6. Promote | Merge only after CI and human review pass. | Pipeline evidence, release evidence, signed artifact. |

### 13.1 RACI Matrix

| **Activity** | **Solutions Architect** | **Tech Lead** | **Developer** | **DBA** | **Security** | **QA/SDET** | **DevSecOps** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Define implementation standard | A | C | C | C | C | C | C |
| Create STP-BUS function | C | A | R | C | C | C | I |
| Create framework STP-* function | A | R | R | C | C | C | C |
| Approve schema/migration | C | C | R | A | C | C | I |
| Approve security/policy behavior | C | C | R | C | A | C | I |
| Validate tests and fitness gates | C | A | R | C | C | R | C |
| Operate CI enforcement | I | C | I | C | C | C | A/R |

## 14. Appendices: Reference Templates

### 14.1 MicroFunction Registration Checklist

Step code, name, category, capability, owner, version, status, bounded context, and classification ceiling defined.

Default retry policy, error policy, compensation step, timeout, and rollback strategy defined.

Design principle profile and fitness profile selected.

Input/output contract, typed parameters, and safe error behavior documented.

Unit, component, architecture, policy, security, idempotency, and error tests pass.

No forbidden imports or boundary violations detected.

AVCI summary and human checker approval attached to PR/MR.

### 14.2 PR/MR AVCI and Design-Principle Summary

**PR/MR Template Snippet**

| ## AVCI and Enterprise Design Principles Summary<br>- Owner / accountable human:<br>- Ticket / ADR / TDL:<br>- Affected MicroFunction(s):<br>- Bounded context:<br>- Classification:<br>- SOLID impact: Preserved / Improved / N/A<br>- Clean Architecture / DDD boundary impact:<br>- Idempotency and retry impact:<br>- Security / SBAC / OPA impact:<br>- Observability and audit impact:<br>- Reversibility / rollbackability:<br>- Tests run:<br>- Architecture fitness results:<br>- AI involvement:<br>- Human checker:<br>- Residual risk / waiver reference: |
| --- |

## 15. AVCI Compliance Summary

| **AVCI Property** | **How This Document Satisfies It** |
| --- | --- |
| Attributable | Defines owners, roles, package boundaries, step ownership, schema ownership, and human accountability for AI-assisted implementation. |
| Verifiable | Defines SQL baselines, Java contracts, tests, architecture fitness functions, CI gates, publish validators, and evidence records. |
| Classifiable | Requires classification ceiling, routing rules, safe logging, model eligibility, cache handling, and evidence visibility controls. |
| Improvable | Defines governed Auto-Heal, Auto-Learn, Auto-Improve controls, measurable fitness checks, and change-review evidence. |

| **Final Implementation Position**<br>The AIRA MicroFunction implementation is production-ready only when runtime behavior, SQL schema, Java code, configuration, tests, policies, AI actions, and evidence all preserve or improve the Enterprise Design Principles and SOLID Enforcement Layer. |
| --- |
