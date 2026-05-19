---
title: "AIRA MicroFunction Framework Implementation Standard v2.0"
source_file: "01-AIRA-Documentation/MicroFunction-Framework/10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.0.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:36Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "01-AIRA-Documentation"
  - "MicroFunction-Framework"
aliases:
  - "10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.0"
creator: "Solutions Architecture Office"
created: "2013-12-23T23:15:00Z"
modified: "2013-12-23T23:15:00Z"
description: "Generated as part of AIRA cross-document revision package."
---

AIRA

AI-Native Enterprise Platform

MicroFunction Framework Implementation Standard

SQL Baseline | Java 25 / Spring Boot 4 Reference Contracts | Enterprise Error Handling | SOLID-Enforced

Version 2.0 - Enterprise Design Principles and SOLID Enforcement Update

| Implementation Principle<br>The framework owns all repeatable enterprise concerns: reception, correlation, session, security, parsing, normalization, validation, idempotency, concurrency, configuration, caching, audit, error handling, retry, compensation, eventing, observability, and safe responses. Developers add only business-specific logic through registered STP-BUS-* MicroFunctions, rules, DMN, OPA policies, or approved adapters. Every implementation must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. |

| --- |

# Document Control

| Property | Value |

| --- | --- |

| Document ID | AIRA-DOC-10B |

| Document Title | AIRA MicroFunction Framework Implementation Standard |

| Version | v2.0 - Enterprise Design Principles and SOLID Enforcement Update |

| Supersedes | 10B-AIRA_MicroFunction_Framework_Implementation_Standard_v1.2 |

| Classification | INTERNAL CONFIDENTIAL - Internal Use Only |

| Status | Development Baseline / Architecture Review Ready |

| Owner | Solutions Architecture Office / AI-Native Platform Engineering |

| Audience | Solutions Architects, Software Developers, DevSecOps, DBA, QA/SDET, Security Administrator, System Administrator, AI Engineers |

| Companion Documents | 01A Enterprise Design Principles and SOLID Enforcement Layer v1.0; 01 AVCI Engineering Standard v3.0; 02 Engineering Blueprint v5.0; 03 Developer Guide v4.0; 06 CLAUDE.md Reference v3.0; 08 Unit Testing Standard v3.0; 10 MicroFunction Framework v3.0; 10A Design Guide v2.0; 10C Sequence Diagrams; 10D Catalog; 11 DevSecOps Standard; 12 Rollout Starter Pack v3.0; 15 API Contract Standard; 16 Database Standard; 17 Security Standard |

| Purpose | Provide implementation-ready SQL, Java contracts, runtime assembly patterns, error handling, cache rules, evidence schema, and automated enforcement controls for AIRA MicroFunction developers. |

| Review Cadence | Quarterly; unscheduled review on material architecture, security, database, AI-governance, framework, or technology-stack change |

# v2.0 Change Summary

| Change Area | v2.0 Improvement |

| --- | --- |

| Enterprise Design Principles | Adds 01A as a mandatory implementation companion for all MicroFunction runtime, SQL, Java, and CI artifacts. |

| SOLID enforcement | Adds coding contracts, package boundaries, dependency inversion, and architecture tests for MicroFunction implementations. |

| Clean Architecture / DDD | Clarifies framework-owned, application-owned, domain-owned, adapter-owned, and governance-owned implementation boundaries. |

| SQL governance | Adds columns and tables for design-principle profiles, fitness functions, rollback plans, activation evidence, and validation outcomes. |

| Java contracts | Updates reference interfaces to encode typed inputs/outputs, policy context, error handling, idempotency, audit, and execution evidence. |

| Error handling | Strengthens retry, timeout, circuit breaker, compensation, DLQ, human escalation, and safe response behavior. |

| Architecture fitness | Adds ArchUnit, contract tests, mutation tests, OPA tests, deterministic tests, and CI evidence gates. |

| Auto-Heal / Auto-Learn / Auto-Improve | Requires automated changes to preserve or improve SOLID, boundaries, tests, security, observability, reversibility, and AVCI evidence. |

# Table of Contents

1. Executive Summary

2. Implementation Scope and Developer Boundary

3. Standard Package and Repository Layout

4. Authoritative PostgreSQL Table Definitions

5. Java 25 / Spring Boot 4 Reference Contracts

6. Runtime Assembly, Cache, and Signature Model

7. Execution Envelope and Standard Step Implementation

8. Enterprise Error Handling, Retry, Compensation, and DLQ

9. Security, Policy, AI, and Classification Enforcement

10. Architecture Fitness Functions and CI Enforcement

11. Testing Baseline and Evidence Requirements

12. Auto-Heal, Auto-Learn, Auto-Improve Implementation Controls

13. Developer Workflow, PR/MR Evidence, and RACI

14. Appendices: Reference SQL, Java, and CI Templates

15. AVCI Compliance Summary

# 1. Executive Summary

This implementation standard turns the AIRA MicroFunction architecture into concrete artifacts that software developers and DBAs can implement immediately: PostgreSQL tables, Flyway-ready DDL patterns, Java contracts, runtime assembly code patterns, enterprise error handling, outbox/DLQ support, policy validation, and testing expectations.

Version 2.0 adds the Enterprise Design Principles and SOLID Enforcement Layer. This means the implementation is no longer judged only by whether a transaction executes. It must also prove that it preserves SOLID compliance, Clean Architecture boundaries, bounded-context ownership, ports-and-adapters separation, deterministic behavior, idempotency, fail-safe controls, observability, testability, secure-by-design posture, resilience, reversibility, and AVCI evidence.

| Coding Rule<br>Code is required only when a genuinely new business or framework capability is needed. After it is registered as a MicroFunction, it becomes reusable and configurable like any other standard function. The implementation must not weaken the platform envelope or bypass mandatory standard concerns. |

| --- |

## 1.1 Strategic Implementation Outcomes

| Outcome | Implementation Requirement |

| --- | --- |

| Reusable transaction fabric | Common enterprise concerns are implemented once as standard functions and reused through configuration. |

| Safe business extension | Business developers implement isolated STP-BUS-* functions only when no standard function or rule can satisfy the requirement. |

| Evidence by construction | Every runtime definition, step execution, error path, policy decision, and improvement proposal emits AVCI-compatible evidence. |

| Boundary protection | Domain logic cannot directly depend on HTTP, Kafka, Redis, PostgreSQL, OpenKM, LiteLLM, provider SDKs, or CI/CD tools. |

| Automated enforcement | Architecture fitness functions, contract tests, policy tests, and CI gates prevent drift before merge. |

# 2. Implementation Scope and Developer Boundary

| Boundary | Responsibility |

| --- | --- |

| Framework-owned | Receive requests, correlate trace context, resolve session, enforce security, parse/normalize/validate, apply idempotency and locks, resolve runtime configuration, manage caches, record audit, publish outbox events, classify errors, retry/compensate, DLQ, and build safe responses. |

| Business-owned | Domain calculation, domain state transition, domain decision, business-specific validation, business-specific persistence intent, and domain-specific event payload construction. |

| Configuration-owned | Step order, parameters, retry policy, error policy, compensation step, timeout, classification ceiling, feature flag, cache behavior, active version, and rollback strategy. |

| Governance-owned | Publish/activation approvals, exception waivers, human escalation, model/guardrail policy, production promotion, controlled Auto-Learn/Auto-Improve updates, and risk acceptance. |

| Security-owned | OPA policies, SBAC rules, classification handling, secrets access, token claims, identity propagation, workload identity, and audit review. |

## 2.1 Non-Negotiable Implementation Rules

No business MicroFunction may directly construct HTTP responses, publish Kafka events, query Redis, call OpenKM, write audit records, call model providers, or control retry loops outside the execution envelope.

Every mutating function must declare idempotency, retry, timeout, compensation, safe-response, and rollback/forward-fix behavior.

Every model, RAG, or tool-action step must pass through LiteLLM, NeMo Guardrails, Harness, SBAC, OPA, trust scoring, and audit controls as applicable.

Runtime definitions are signed, versioned, classifiable artifacts. Redis and Caffeine are acceleration layers only; PostgreSQL and workflow histories remain authoritative.

Any code or configuration that weakens SOLID, Clean Architecture, DDD boundaries, security, testability, observability, reversibility, or AVCI evidence is rejected or escalated as a waiver.

# 3. Standard Package and Repository Layout

Repository Layout Baseline

| services/workflow-service/  
+- src/main/java/com/aira/microfunction/  
\|  +- api/                  # MicroFunction contracts, records, enums  
\|  +- catalog/              # Step catalog loading and bean registration  
\|  +- config/               # Spring configuration, Caffeine, Redis, policy clients  
\|  +- runtime/              # Assembler, resolver, coordinator, execution envelope  
\|  +- error/                # Error taxonomy, classifier, problem responses, DLQ  
\|  +- audit/                # Audit recorder and evidence writer  
\|  +- idempotency/          # Idempotency manager and repository  
\|  +- concurrency/          # Redis/Redisson and database locking helpers  
\|  +- outbox/               # Transactional outbox and Kafka publisher  
\|  +- standard/             # STP-RCV, STP-SEC, STP-VAL, STP-AUD, etc.  
\|  +- policy/               # OPA/SBAC/classification validators  
\|  +- fitness/              # Architecture fitness and publish-time validators  
\|  +- adapter/              # Temporal, Flowable, Kafka, REST, OpenKM adapters  
\|  +- ai/                   # LiteLLM, guardrail, retrieval, Harness tool-action ports  
+- src/test/java/...        # Unit, contract, architecture, policy, mutation tests  
+- src/main/resources/db/migration/  # Flyway DDL and seed data  
  
domains/loans-service/  
+- src/main/java/com/aira/loans/domain/              # Domain model, rules, ports  
+- src/main/java/com/aira/loans/application/         # Use cases and app services  
+- src/main/java/com/aira/loans/adapter/             # DB/API/event adapters  
+- src/main/java/com/aira/loans/microfunctions/      # STP-BUS-* only |

| --- |

## 3.1 Package Boundary Rules

| Package | Allowed Dependencies | Prohibited Dependencies |

| --- | --- | --- |

| domain | Pure Java, domain value objects, domain ports, domain errors. | Spring Web, JPA repositories, Kafka, Redis, OpenKM, LiteLLM, provider SDKs, framework envelope. |

| application | Domain model, domain ports, MicroFunction API contracts, transaction context abstractions. | Provider SDKs, raw SQL strings, direct HTTP response construction, direct audit writes. |

| adapter | Spring components, repositories, REST clients, Kafka, OpenKM, Vault, external APIs. | Business rule ownership and domain state decisions. |

| microfunction | MicroFunction API, domain/application services, typed parameters, domain ports. | Direct DB/Kafka/Redis/model provider access, manual retry loops, custom response shaping. |

| runtime | Framework orchestration, envelope, policy, cache, idempotency, audit, error path. | Business-specific domain decisions. |

| fitness | ArchUnit, validators, CI evidence checks, publish-time controls. | Production transaction behavior or runtime side effects. |

# 4. Authoritative PostgreSQL Table Definitions

The following schema is the implementation baseline. Developers may add domain tables, but they must not bypass these framework tables for process configuration, audit, idempotency, outbox, DLQ, publish validation, or fitness-function evidence.

## 4.1 Core Configuration and Catalog Tables

Flyway DDL Baseline - Core Configuration

| CREATE SCHEMA IF NOT EXISTS aira_mf;  
CREATE EXTENSION IF NOT EXISTS pgcrypto;  
CREATE EXTENSION IF NOT EXISTS vector;  
  
CREATE TABLE aira_mf.step_catalog (  
    step_code                 varchar(80) PRIMARY KEY,  
    step_name                 varchar(160) NOT NULL,  
    step_category             varchar(40) NOT NULL,  
    capability                varchar(30) NOT NULL,  
    bean_name                 varchar(160) NOT NULL,  
    bounded_context           varchar(80),  
    classification_ceiling    varchar(30) NOT NULL DEFAULT 'INTERNAL',  
    default_error_policy      varchar(60) NOT NULL DEFAULT 'FAIL_FAST',  
    default_retry_policy      varchar(60) NOT NULL DEFAULT 'NO_RETRY',  
    default_compensation_step_code varchar(80),  
    design_principle_profile  varchar(80) NOT NULL DEFAULT 'AIRA_STANDARD',  
    fitness_profile_code      varchar(80) NOT NULL DEFAULT 'MF_STANDARD_FITNESS',  
    rollback_strategy         varchar(40) NOT NULL DEFAULT 'FORWARD_FIX',  
    is_standard               boolean NOT NULL DEFAULT true,  
    owner                     varchar(120) NOT NULL,  
    version                   integer NOT NULL DEFAULT 1,  
    status                    varchar(30) NOT NULL DEFAULT 'ACTIVE',  
    created_at                timestamptz NOT NULL DEFAULT now(),  
    updated_at                timestamptz NOT NULL DEFAULT now()  
);  
  
CREATE TABLE aira_mf.txn_definition (  
    txn_code        varchar(80) NOT NULL,  
    txn_name        varchar(160) NOT NULL,  
    profile_code    varchar(80) NOT NULL DEFAULT 'DEFAULT',  
    version         integer NOT NULL,  
    execution_mode  varchar(30) NOT NULL,  
    status          varchar(30) NOT NULL DEFAULT 'DRAFT',  
    classification  varchar(30) NOT NULL DEFAULT 'INTERNAL',  
    bounded_context varchar(80) NOT NULL,  
    owner           varchar(120) NOT NULL,  
    design_principle_profile varchar(80) NOT NULL DEFAULT 'AIRA_STANDARD',  
    rollback_strategy varchar(40) NOT NULL DEFAULT 'FORWARD_FIX',  
    definition_hash varchar(128),  
    signature       text,  
    active_from     timestamptz,  
    active_to       timestamptz,  
    created_at      timestamptz NOT NULL DEFAULT now(),  
    updated_at      timestamptz NOT NULL DEFAULT now(),  
    PRIMARY KEY (txn_code, profile_code, version)  
); |

| --- |

## 4.2 Policies, Step Binding, and Parameters

Flyway DDL Baseline - Policies and Step Binding

| CREATE TABLE aira_mf.retry_policy (  
    retry_policy_code varchar(60) PRIMARY KEY,  
    max_attempts      integer NOT NULL DEFAULT 1 CHECK (max_attempts >= 1),  
    initial_delay_ms  integer NOT NULL DEFAULT 0,  
    max_delay_ms      integer NOT NULL DEFAULT 0,  
    backoff_type      varchar(30) NOT NULL DEFAULT 'NONE',  
    jitter_enabled    boolean NOT NULL DEFAULT false,  
    retryable_errors  text[] NOT NULL DEFAULT '{}',  
    created_at        timestamptz NOT NULL DEFAULT now()  
);  
  
CREATE TABLE aira_mf.error_policy (  
    error_policy_code   varchar(60) PRIMARY KEY,  
    behavior            varchar(40) NOT NULL,  
    safe_response       boolean NOT NULL DEFAULT true,  
    publish_error_event boolean NOT NULL DEFAULT true,  
    dlq_enabled         boolean NOT NULL DEFAULT false,  
    human_escalation    boolean NOT NULL DEFAULT false,  
    fail_closed         boolean NOT NULL DEFAULT true,  
    created_at          timestamptz NOT NULL DEFAULT now()  
);  
  
CREATE TABLE aira_mf.txn_step_binding (  
    txn_code               varchar(80) NOT NULL,  
    profile_code           varchar(80) NOT NULL DEFAULT 'DEFAULT',  
    version                integer NOT NULL,  
    step_order             integer NOT NULL,  
    step_code              varchar(80) NOT NULL REFERENCES aira_mf.step_catalog(step_code),  
    is_mandatory           boolean NOT NULL DEFAULT true,  
    on_success_next_order  integer,  
    on_failure_step_code   varchar(80) NOT NULL DEFAULT 'STP-ERR-001',  
    error_policy_code      varchar(60) NOT NULL REFERENCES aira_mf.error_policy(error_policy_code),  
    retry_policy_code      varchar(60) NOT NULL REFERENCES aira_mf.retry_policy(retry_policy_code),  
    compensation_step_code varchar(80),  
    timeout_ms             integer NOT NULL DEFAULT 30000,  
    classification_ceiling varchar(30) NOT NULL DEFAULT 'INTERNAL',  
    requires_human_approval boolean NOT NULL DEFAULT false,  
    requires_fitness_pass   boolean NOT NULL DEFAULT true,  
    created_at             timestamptz NOT NULL DEFAULT now(),  
    PRIMARY KEY (txn_code, profile_code, version, step_order),  
    FOREIGN KEY (txn_code, profile_code, version)  
        REFERENCES aira_mf.txn_definition(txn_code, profile_code, version)  
); |

| --- |

## 4.3 Runtime Evidence, Idempotency, Outbox, and DLQ

Flyway DDL Baseline - Runtime Evidence and Reliability

| CREATE TABLE aira_mf.step_execution_audit (  
    audit_id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),  
    trace_id          varchar(128) NOT NULL,  
    request_id        varchar(128) NOT NULL,  
    tenant_id         uuid NOT NULL,  
    actor_hash        varchar(128) NOT NULL,  
    txn_code          varchar(80) NOT NULL,  
    runtime_version   integer NOT NULL,  
    step_code         varchar(80) NOT NULL,  
    step_order        integer NOT NULL,  
    status            varchar(30) NOT NULL,  
    error_code        varchar(80),  
    error_policy_code varchar(60),  
    retry_attempt     integer NOT NULL DEFAULT 0,  
    duration_ms       integer,  
    principle_impact  jsonb NOT NULL DEFAULT '{}'::jsonb,  
    evidence_ref      varchar(256),  
    created_at        timestamptz NOT NULL DEFAULT now()  
);  
  
CREATE TABLE aira_mf.idempotency_registry (  
    idempotency_key varchar(160) PRIMARY KEY,  
    tenant_id       uuid NOT NULL,  
    txn_code        varchar(80) NOT NULL,  
    request_hash    varchar(128) NOT NULL,  
    response_hash   varchar(128),  
    status          varchar(30) NOT NULL,  
    expires_at      timestamptz NOT NULL,  
    created_at      timestamptz NOT NULL DEFAULT now(),  
    completed_at    timestamptz  
);  
  
CREATE TABLE aira_mf.outbox_event (  
    outbox_id       uuid PRIMARY KEY DEFAULT gen_random_uuid(),  
    aggregate_type  varchar(80) NOT NULL,  
    aggregate_id    varchar(120) NOT NULL,  
    event_type      varchar(120) NOT NULL,  
    schema_version  varchar(30) NOT NULL,  
    payload         jsonb NOT NULL,  
    classification  varchar(30) NOT NULL,  
    trace_id        varchar(128) NOT NULL,  
    status          varchar(30) NOT NULL DEFAULT 'PENDING',  
    created_at      timestamptz NOT NULL DEFAULT now(),  
    published_at    timestamptz  
);  
  
CREATE TABLE aira_mf.dead_letter_message (  
    dlq_id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),  
    source_channel  varchar(160) NOT NULL,  
    txn_code        varchar(80),  
    payload_hash    varchar(128) NOT NULL,  
    error_code      varchar(80) NOT NULL,  
    safe_error      text NOT NULL,  
    classification  varchar(30) NOT NULL,  
    retry_count     integer NOT NULL DEFAULT 0,  
    status          varchar(30) NOT NULL DEFAULT 'OPEN',  
    evidence_ref    varchar(256),  
    created_at      timestamptz NOT NULL DEFAULT now()  
); |

| --- |

## 4.4 Fitness Function and Publish Validation Tables

Flyway DDL Baseline - Fitness and Publish Validation

| CREATE TABLE aira_mf.fitness_profile (  
    fitness_profile_code varchar(80) PRIMARY KEY,  
    profile_name         varchar(160) NOT NULL,  
    required_checks      text[] NOT NULL,  
    minimum_result       varchar(30) NOT NULL DEFAULT 'PASS',  
    owner                varchar(120) NOT NULL,  
    status               varchar(30) NOT NULL DEFAULT 'ACTIVE',  
    created_at           timestamptz NOT NULL DEFAULT now()  
);  
  
CREATE TABLE aira_mf.publish_validation_result (  
    validation_id     uuid PRIMARY KEY DEFAULT gen_random_uuid(),  
    txn_code          varchar(80) NOT NULL,  
    profile_code      varchar(80) NOT NULL,  
    version           integer NOT NULL,  
    validator_name    varchar(120) NOT NULL,  
    result            varchar(30) NOT NULL,  
    finding_count     integer NOT NULL DEFAULT 0,  
    findings          jsonb NOT NULL DEFAULT '[]'::jsonb,  
    evidence_ref      varchar(256),  
    validated_at      timestamptz NOT NULL DEFAULT now(),  
    validated_by      varchar(120) NOT NULL  
); |

| --- |

# 5. Java 25 / Spring Boot 4 Reference Contracts

The Java contracts below are implementation guidance. Exact package names and framework details may evolve, but the boundary semantics are mandatory: typed inputs and outputs, explicit context, framework-managed evidence, and no direct infrastructure dependency from business functions.

Core MicroFunction Contract

| public interface MicroFunction<I extends MicroFunctionInput, O extends MicroFunctionOutput> {  
    StepCode stepCode();  
    Capability capability();  
    ClassificationCeiling classificationCeiling();  
    IdempotencyMode idempotencyMode();  
  
    O execute(I input, MicroFunctionContext context) throws MicroFunctionException;  
}  
  
public sealed interface MicroFunctionInput permits JsonInput, DomainInput, FileInput, AiInput {  
    String requestHash();  
    Classification classification();  
}  
  
public sealed interface MicroFunctionOutput permits DomainDecision, StateChangeIntent,  
        EventIntent, SafeResponse, NoOpResult {  
    String outputHash();  
    EvidenceFragment evidenceFragment();  
}  
  
public record MicroFunctionContext(  
        TraceContext trace,  
        ActorContext actor,  
        TenantContext tenant,  
        Classification classification,  
        RuntimeParameters parameters,  
        PolicyDecision policyDecision,  
        EvidenceRecorder evidence,  
        Clock clock) {  
} |

| --- |

Execution Envelope Reference Pattern

| public final class ExecutionEnvelope {  
    private final PolicyEvaluator policyEvaluator;  
    private final IdempotencyManager idempotencyManager;  
    private final ErrorClassifier errorClassifier;  
    private final RetryExecutor retryExecutor;  
    private final CompensationCoordinator compensationCoordinator;  
    private final AuditRecorder auditRecorder;  
    private final ObservationEmitter observationEmitter;  
  
    public StepExecutionResult invoke(RuntimeStep step, MicroFunctionInput input,  
                                      MicroFunctionContext context) {  
        var timer = observationEmitter.start(step, context.trace());  
        try {  
            policyEvaluator.assertAllowed(step, context);  
            idempotencyManager.reserveIfRequired(step, input, context);  
            var result = retryExecutor.execute(step.retryPolicy(),  
                    () -> step.function().execute(input, context));  
            auditRecorder.recordSuccess(step, result, context);  
            idempotencyManager.completeIfRequired(step, input, result, context);  
            return StepExecutionResult.success(result);  
        } catch (Exception ex) {  
            var classified = errorClassifier.classify(ex, step, context);  
            auditRecorder.recordFailure(step, classified, context);  
            return compensationCoordinator.apply(step, classified, context);  
        } finally {  
            timer.stop();  
        }  
    }  
} |

| --- |

## 5.1 Dependency Inversion and Ports

| Implementation Area | Required Pattern | Rejected Pattern |

| --- | --- | --- |

| Domain logic | Depends on domain ports and value objects. | Imports Spring repositories, Redis templates, Kafka producers, WebClient, or provider SDKs. |

| Business MicroFunction | Depends on application/domain ports and framework context only. | Builds HTTP response, writes audit, publishes event, or starts Temporal workflow directly. |

| Adapters | Implement ports and translate infrastructure responses into domain-safe results. | Own business rule decisions or bypass framework validation. |

| AI model calls | Use Spring AI abstraction through LiteLLM-governed model aliases and guardrails. | Direct OpenAI/Anthropic/provider SDK import or hardcoded model name. |

| Persistence | Repository interfaces, jOOQ/Spring Data/JPA as approved by context. | Free-form SQL string assembly from user/config input. |

# 6. Runtime Assembly, Cache, and Signature Model

RuntimeProcessDefinition objects are derivative artifacts assembled from authoritative PostgreSQL configuration rows. They are signed, versioned, cached, and invalidated through governed events. Cache loss must degrade latency, not correctness.

| Layer | Store | Behavior | Authority |

| --- | --- | --- | --- |

| L1 | Caffeine JVM-local | Per-process cache with bounded size and short TTL. Invalidated by config.changed event. | Derivative |

| L2 | Redis / Valkey | Shared cluster cache keyed by txn_code/profile/version. TTL is safety net only. | Derivative |

| L3 | PostgreSQL | Authoritative configuration source for active transaction definitions and policies. | Tier 0 |

| L4 | Git / Flyway | Source of schema and seed-data migration history. | Tier 0 |

RuntimeProcessDefinition Contract

| public record RuntimeProcessDefinition(  
        String txnCode,  
        String profileCode,  
        int version,  
        ExecutionMode executionMode,  
        Classification classification,  
        List<RuntimeStep> steps,  
        String definitionHash,  
        String signature,  
        String designPrincipleProfile,  
        String fitnessProfileCode,  
        RollbackStrategy rollbackStrategy) {  
  
    public void assertExecutable() {  
        requireNonNull(txnCode);  
        requireNonNull(steps);  
        if (steps.isEmpty()) throw new InvalidRuntimeDefinitionException("No steps configured");  
        if (signature == null \|\| signature.isBlank())  
            throw new InvalidRuntimeDefinitionException("Unsigned runtime definition");  
    }  
} |

| --- |

## 6.1 Publish-Time Validation Rules

| Validation | Reject When |

| --- | --- |

| Mandatory step order | Receive, correlate, actor/session, security, parse, normalize, validate, audit, response, or error path is missing for applicable transaction type. |

| Classification ceiling | A step handles data above its classification ceiling or routes Confidential/Restricted data to disallowed model path. |

| Idempotency | A mutating transaction lacks idempotency, natural-key constraint, workflow dedupe, or replay behavior. |

| Error policy | A step lacks timeout, retry policy, safe response, DLQ/escalation rule, or compensation behavior where required. |

| Architecture boundary | A STP-BUS-* function depends directly on infrastructure adapter, model provider SDK, or framework internals. |

| Fitness profile | Required architecture, policy, contract, or mutation tests fail or are missing evidence. |

| Rollbackability | No forward-fix, compensation, disable flag, or rollback strategy exists for a material change. |

# 7. Execution Envelope and Standard Step Implementation

Every MicroFunction runs inside the execution envelope. The envelope supplies policy, idempotency, retries, timeouts, error classification, compensation, audit, metrics, traces, and safe response behavior. Business code must not duplicate or bypass the envelope.

| Envelope Concern | Implementation Requirement |

| --- | --- |

| Correlation | trace_id, span_id, request_id, execution_id, tenant_id, actor hash, and causation_id are created or propagated before step execution. |

| Policy | OPA/SBAC/classification decision is evaluated before protected action. Deny means fail closed. |

| Idempotency | Reserve before mutation, complete after successful outcome, replay safe response when duplicate request is valid. |

| Concurrency | Apply optimistic/pessimistic/Redis lock only through framework-managed helper and release safely. |

| Retry | Retry only when declared retry policy says error is retryable. No hidden loops inside business code. |

| Compensation | Compensating action is configured, tested, audited, and bounded by classification and approval rules. |

| Observability | Emit metrics, spans, logs, and audit without secrets/PII in labels or messages. |

| Response | Map errors to safe machine-readable response contract. No stack traces or internals. |

# 8. Enterprise Error Handling, Retry, Compensation, and DLQ

| Fail-Safe Rule<br>AIRA fails safe, not open. If identity, policy, guardrails, model routing, audit, or validation controls are unavailable, the protected operation is blocked, retried only if safe, escalated if required, and recorded with evidence. |

| --- |

| Error Class | Examples | Default Behavior | Evidence |

| --- | --- | --- | --- |

| VALIDATION | Schema error, missing field, invalid business input. | No retry. Safe response. Audit validation failure. | Request hash, validation code, field path, trace_id. |

| AUTHORIZATION | RBAC/ABAC/SBAC/OPA deny, classification mismatch. | Fail closed. No retry. Human review only by policy. | Policy version, decision, actor hash, resource, action. |

| CONFLICT | Idempotency conflict, version conflict, duplicate natural key. | Replay safe response or return conflict. No double mutation. | Idempotency key, request hash, existing state reference. |

| DEPENDENCY_TRANSIENT | Timeout, 503, broker unavailable. | Retry with bounded backoff and jitter; circuit breaker if repeated. | Dependency, attempts, duration, circuit state. |

| DEPENDENCY_PERMANENT | Unsupported response, bad credentials, schema mismatch. | No repeated retry. DLQ or human escalation. | Error code, payload hash, adapter version. |

| AI_GUARDRAIL | Input/retrieval/execution/output rail fail. | Block model/action. Safe response or human review. | Guardrail result, model alias, route, evidence pack hash. |

| SYSTEM_DEFECT | Null pointer, invariant failure, unexpected code path. | Safe response, incident event, no sensitive details. | Stack reference in restricted log, release, commit, trace_id. |

Error Taxonomy Reference

| public enum ErrorClass {  
    VALIDATION,  
    AUTHORIZATION,  
    CONFLICT,  
    DEPENDENCY_TRANSIENT,  
    DEPENDENCY_PERMANENT,  
    AI_GUARDRAIL,  
    SYSTEM_DEFECT,  
    SECURITY_EVENT  
}  
  
public record ClassifiedError(  
        ErrorClass errorClass,  
        String errorCode,  
        boolean retryable,  
        boolean compensatable,  
        boolean safeToExpose,  
        boolean requiresHumanEscalation,  
        String evidenceRef) {  
} |

| --- |

## 8.1 Compensation Rules

Compensation must be explicit. A mutating step either has a configured compensation step or a documented reason why compensation is not possible and must use forward-fix governance.

Compensation must be idempotent. Re-running compensation must not create a second reverse effect.

Compensation cannot bypass authorization, classification, audit, or separation-of-duties controls.

Irreversible operations require human approval, evidence pre-recording, and business-risk acceptance before execution.

# 9. Security, Policy, AI, and Classification Enforcement

| Control | Implementation Requirement |

| --- | --- |

| Authentication | Actor identity must be resolved before business execution. Service identity uses workload identity where available. |

| Authorization | RBAC/ABAC/SBAC/OPA decisions are evaluated at framework envelope and protected action levels. |

| Classification | Data classification determines logs, cache eligibility, event eligibility, model route, retention, and evidence visibility. |

| Secrets | Secrets are retrieved only through approved secrets manager and never stored in config rows, logs, prompts, traces, or test fixtures. |

| AI model routing | All model calls go through LiteLLM aliases and guardrails. Direct provider SDKs are not allowed in application or business code. |

| Tool action | Hermes may propose; Harness validates skill, trust, OPA, scope, and approval before execution. |

| Audit | Every policy decision, model call, tool action, step execution, and error outcome emits trace-correlated evidence. |

## 9.1 AI Step Implementation Pattern

| AI Step | Mandatory Implementation Gate |

| --- | --- |

| STP-AIR-* Retrieval | ACL-filtered evidence retrieval, classification check, citation pack hash, retrieval guardrail. |

| STP-GRD-* Guardrail | Input, Retrieval, Execution, Output checkpoints as applicable; fail closed on unavailable rail. |

| STP-AIM-* Model | LiteLLM alias only; no hardcoded provider; budget, route, prompt version, response hash, audit. |

| STP-TOOL-* Action | Harness action vocabulary, SBAC skill, trust threshold, OPA decision, human approval if high risk. |

| STP-HITL-* Review | Flowable human task for low-confidence, high-risk, Confidential/Restricted, irreversible, or policy-exception actions. |

# 10. Architecture Fitness Functions and CI Enforcement

Architecture fitness functions convert the Enterprise Design Principles and SOLID Enforcement Layer into executable checks. They are required locally where practical and in CI for all mergeable changes.

| Fitness Function | Tool / Method | Blocks Merge When |

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

Architecture Test Example

| // ArchUnit example - package boundary rule  
classes()  
    .that().resideInAPackage("..domain..")  
    .should().onlyDependOnClassesThat()  
    .resideInAnyPackage("java..", "com.aira..domain..", "com.aira..api..");  
  
// STP-BUS functions must not depend on infrastructure adapters  
noClasses()  
    .that().resideInAPackage("..microfunctions..")  
    .and().haveSimpleNameEndingWith("MicroFunction")  
    .should().dependOnClassesThat()  
    .resideInAnyPackage("..adapter..", "org.springframework.kafka..", "org.springframework.data.redis..",  
                         "dev.langchain4j..", "com.openai..", "com.anthropic.."); |

| --- |

## 10.1 CI Gate Baseline

| Gate | Minimum Required Evidence |

| --- | --- |

| Compile and unit tests | Successful build, deterministic test results, changed-line coverage, branch coverage, mutation score where applicable. |

| Architecture tests | ArchUnit/dependency rules pass; no forbidden imports; no boundary drift. |

| Contract tests | OpenAPI/AsyncAPI/schema compatibility results and generated stubs/mocks where applicable. |

| Security tests | SAST, SCA, secret scan, container scan, policy tests, log redaction tests. |

| MicroFunction publish validation | Mandatory step validation, error path validation, classification routing, idempotency, rollback strategy. |

| AVCI summary | Owner, evidence, classification, principle impact, tests run, AI involvement, human checker. |

# 11. Testing Baseline and Evidence Requirements

| Test Type | Required Coverage |

| --- | --- |

| Unit | Business rules, state transitions, validation, boundary values, errors, idempotency, compensation decision logic. |

| Component | Execution envelope, policy evaluation, idempotency manager, retry executor, cache resolver, outbox publisher. |

| Contract | REST/event/schema/error contracts, safe response behavior, version compatibility. |

| Database | Flyway migration, constraints, RLS, outbox, idempotency registry, rollback/forward-fix scripts. |

| Policy | OPA, SBAC, classification routing, fail-closed behavior. |

| AI-native | Guardrails, retrieval citations, model alias routing, prompt versioning, tool-action approvals. |

| Operational | DLQ replay, reprocess, cache rebuild, index rebuild, audit evidence query. |

## 11.1 Evidence Record Minimum Schema

AVCI Evidence Record Example

| {  
  "artifact_id": "STP-BUS-LOAN-CHECK-ELIGIBILITY-001",  
  "artifact_type": "MICROFUNCTION",  
  "owner": "Loans Bounded Context Owner",  
  "version": "1.0.0",  
  "classification": "INTERNAL",  
  "design_principle_profile": "AIRA_STANDARD",  
  "solid_result": "PASS",  
  "architecture_boundary_result": "PASS",  
  "test_result_ref": "ci://pipeline/12345/tests",  
  "security_result_ref": "ci://pipeline/12345/security",  
  "fitness_result_ref": "ci://pipeline/12345/fitness",  
  "rollback_strategy": "FORWARD_FIX",  
  "ai_involvement": "Codex drafted unit tests; human reviewed",  
  "human_checker": "Tech Lead",  
  "approval_status": "APPROVED_FOR_MERGE"  
} |

| --- |

# 12. Auto-Heal, Auto-Learn, Auto-Improve Implementation Controls

| Capability | Implementation Control |

| --- | --- |

| Auto-Heal | May detect failure, classify cause, draft patch/config change, run non-production tests, and prepare PR. It must not directly mutate production or bypass policy, tests, architecture gates, or human approval. |

| Auto-Learn | May propose knowledge updates from resolved incidents, test failures, PR reviews, and operational evidence. Promotion requires human review, classification check, source citation, and conflict check. |

| Auto-Improve | May propose refactoring, configuration simplification, test hardening, prompt/guardrail improvement, or architecture drift correction. Acceptance requires measurable improvement and no weakening of SOLID, boundaries, security, tests, observability, reversibility, or AVCI. |

| Auto-Improvement Rejection Rule<br>An automated proposal that fixes one symptom while weakening architecture boundaries, testability, least privilege, observability, rollbackability, or AVCI evidence is not an improvement. It is a non-conformance and must be rejected or redesigned. |

| --- |

# 13. Developer Workflow, PR/MR Evidence, and RACI

| Workflow Step | Developer Action | Evidence |

| --- | --- | --- |

| 1. Design | Confirm standard steps or code-required gap; link ticket and bounded context. | Design note, sequence/template reference, classification. |

| 2. Implement | Use approved package layout, contracts, ports, adapters, and framework envelope. | Commit, code review, forbidden-import check. |

| 3. Test | Write unit, component, architecture, policy, and contract tests. | Test report, coverage, mutation where applicable. |

| 4. Validate | Run publish validator and architecture fitness functions. | Validation report, fitness result. |

| 5. Review | Submit PR/MR with AVCI and design-principle impact summary. | PR/MR template, CODEOWNERS, approvals. |

| 6. Promote | Merge only after CI and human review pass. | Pipeline evidence, release evidence, signed artifact. |

## 13.1 RACI Matrix

| Activity | Solutions Architect | Tech Lead | Developer | DBA | Security | QA/SDET | DevSecOps |

| --- | --- | --- | --- | --- | --- | --- | --- |

| Define implementation standard | A | C | C | C | C | C | C |

| Create STP-BUS function | C | A | R | C | C | C | I |

| Create framework STP-* function | A | R | R | C | C | C | C |

| Approve schema/migration | C | C | R | A | C | C | I |

| Approve security/policy behavior | C | C | R | C | A | C | I |

| Validate tests and fitness gates | C | A | R | C | C | R | C |

| Operate CI enforcement | I | C | I | C | C | C | A/R |

# 14. Appendices: Reference Templates

## 14.1 MicroFunction Registration Checklist

Step code, name, category, capability, owner, version, status, bounded context, and classification ceiling defined.

Default retry policy, error policy, compensation step, timeout, and rollback strategy defined.

Design principle profile and fitness profile selected.

Input/output contract, typed parameters, and safe error behavior documented.

Unit, component, architecture, policy, security, idempotency, and error tests pass.

No forbidden imports or boundary violations detected.

AVCI summary and human checker approval attached to PR/MR.

## 14.2 PR/MR AVCI and Design-Principle Summary

PR/MR Template Snippet

| ## AVCI and Enterprise Design Principles Summary  
- Owner / accountable human:  
- Ticket / ADR / TDL:  
- Affected MicroFunction(s):  
- Bounded context:  
- Classification:  
- SOLID impact: Preserved / Improved / N/A  
- Clean Architecture / DDD boundary impact:  
- Idempotency and retry impact:  
- Security / SBAC / OPA impact:  
- Observability and audit impact:  
- Reversibility / rollbackability:  
- Tests run:  
- Architecture fitness results:  
- AI involvement:  
- Human checker:  
- Residual risk / waiver reference: |

| --- |

# 15. AVCI Compliance Summary

| AVCI Property | How This Document Satisfies It |

| --- | --- |

| Attributable | Defines owners, roles, package boundaries, step ownership, schema ownership, and human accountability for AI-assisted implementation. |

| Verifiable | Defines SQL baselines, Java contracts, tests, architecture fitness functions, CI gates, publish validators, and evidence records. |

| Classifiable | Requires classification ceiling, routing rules, safe logging, model eligibility, cache handling, and evidence visibility controls. |

| Improvable | Defines governed Auto-Heal, Auto-Learn, Auto-Improve controls, measurable fitness checks, and change-review evidence. |

| Final Implementation Position<br>The AIRA MicroFunction implementation is production-ready only when runtime behavior, SQL schema, Java code, configuration, tests, policies, AI actions, and evidence all preserve or improve the Enterprise Design Principles and SOLID Enforcement Layer. |

| --- |
