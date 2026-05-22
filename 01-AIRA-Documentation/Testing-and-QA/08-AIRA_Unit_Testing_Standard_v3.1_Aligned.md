---
document_id: "AIRA-DOC-008"
title: "AIRA Unit Testing Standard"
version: "v3.1"
status: "aligned"
source_file: "08-AIRA_Unit_Testing_Standard_v3.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Testing-and-QA"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - unit-testing
  - testing
---

# AIRA Unit Testing Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Unit Testing Engineering Standard**

_TDD | Maker-Checker AI | SOLID Enforcement | Architecture Fitness Functions | AVCI Evidence_

**v3.1 - Java 25 Testing Baseline and Cross-Pack Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-008** |
| **Document Title** | **AIRA Unit Testing Engineering Standard** |
| **Document Version** | **v3.1 - Java 25 Testing Baseline and Cross-Pack Alignment Update** |
| **Supersedes** | **08-AIRA_Unit_Testing_Standard_v3.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Software Development Lead; DevSecOps Lead; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material runtime, technology, security, AI-risk, or governance change** |
| **Pack Context** | **Pack 02 v1.2 individual aligned file generated from Pack 02 v1.1 aligned source pack and synchronized against Packs 01, 03, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development. Java 21 is waiver-only fallback, not the default.** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 02 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 02 source document so it can be uploaded to Obsidian as a standalone canonical Developer Execution artifact while remaining synchronized with the current AIRA source-pack baseline and Pack 01 v1.2 outputs.

**Document role. **Testing standard for deterministic developer proof, architecture fitness functions, AI-assisted test generation, and CI evidence.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active source baseline** | **AIRA Source Packs v3.1 / Aligned Pack Set v1.1 remains the input baseline; Pack 02 v1.2 is the new individual output set for Obsidian upload.** |
| **Backend runtime baseline** | **Java 25 LTS is the required backend baseline. Spring Boot 4.x and Spring Framework 7.x are the target backend framework baseline where compatible.** |
| **Java 21 handling** | **Java 21 is not the default. It may appear only as a documented compatibility fallback with Architecture Board/CAB waiver, risk acceptance, and exit plan.** |
| **Pack 01 governance references** | **References are aligned to AVCI v3.1, Engineering Blueprint v5.1, DevSecOps v3.1, 01A v1.1, and ADR-AIRA-2026-001 v1.1.** |
| **Technology baseline** | **Technology Stack v9.0 remains the canonical technology reference and explicitly includes Java 25 LTS as the primary backend runtime.** |
| **Information fabric baseline** | **Information Nervous System v4.0 governs source authority, retrieval eligibility, Obsidian / LLM Wiki, GitNexus indexing, and derivative knowledge handling.** |
| **AI execution boundary** | **All model access routes through LiteLLM. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Tool actions go through Harness/SBAC/OPA.** |
| **GitNexus** | **GitNexus is read-only, derivative, commit-bound code intelligence. It cannot commit, approve, merge, deploy, mutate production, or replace tests/scans/human review.** |
| **Dograh** | **Dograh is governed voice-agent orchestration only. It is not a hardcoded STT/TTS/LLM provider and remains subject to classification, consent, guardrail, and audit controls.** |
| **Flyway / Database** | **Flyway remains mandatory from initial database creation through all migrations, data fixes, RLS, extensions, seed data, and schema evolution.** |

### Material Changes in This Version

Standardized Java unit, component, contract, and architecture-test examples around Java 25 LTS and Spring Boot 4.x compatibility.

Clarified Java 21 test execution is allowed only for documented fallback compatibility tracks, not as the primary backend baseline.

Aligned evidence requirements with Developer Guide v4.1, GitNexus v1.2 evidence records, and CI/CD evidence-pack expectations.

Reinforced deterministic testing: fixed Clock, seeded IDs, no uncontrolled network/time/random/filesystem dependency, and synthetic data only.

Added stronger linkage between ArchUnit/Semgrep/GitNexus graph findings and SOLID/Clean Architecture/DDD fitness evidence.

### Mandatory Java 25 Backend Control

| **Control** | **Pack 02 v1.2 Requirement** |
| --- | --- |
| **Default backend runtime** | **Java 25 LTS. All backend service templates, coding examples, devcontainers, Gradle toolchains, CI runners, unit tests, architecture tests, and onboarding labs must assume Java 25 unless explicitly waived.** |
| **Fallback runtime** | **Java 21 is waiver-only for compatibility blockers. The waiver must include owner, reason, affected service, risk, compensating controls, and exit date.** |
| **Review gate** | **PR/MR reviewers must reject backend code, templates, devcontainers, or CI jobs that quietly downgrade the runtime baseline or introduce untracked dual-runtime behavior.** |
| **Evidence** | **CI evidence must expose java.version, toolchain version, Gradle/Maven version, build image digest, SBOM, and architecture fitness results.** |

### AVCI Compliance Summary for This Update

| **AVCI Property** | **Evidence in This Pack 02 v1.2 Update** |
| --- | --- |
| **Attributable** | **Each file has a document ID, owner, supersedes value, source pack context, and material-change list.** |
| **Verifiable** | **The Java 25 baseline is explicitly recorded, cross-pack references are updated, and original source content is preserved after the alignment notice.** |
| **Classifiable** | **All generated files are marked INTERNAL CONFIDENTIAL and inherit AIRA classification-handling rules.** |
| **Improvable** | **Remaining numbering issues such as duplicate 19/25 are retained for master-register cleanup rather than hidden.** |

## Updated Baseline Content

**AIRA**

**AI-Native Enterprise Platform**

**Unit Testing Engineering Standard**

**TDD | Maker-Checker AI | SOLID Enforcement | Architecture Fitness Functions | AVCI Evidence**

**Version 3.1 - May 2026**

| **Mandatory Testing Rule**<br>A change without trustworthy tests is not production-ready. In AIRA v3.1, tests must prove not only functional correctness, but also preservation or improvement of SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, security posture, observability, idempotency, determinism, reversibility, rollbackability, and AVCI evidence. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA Unit Testing Engineering Standard |
| Document Version | v3.1 - Enterprise Design Principles and SOLID Enforcement Release |
| Supersedes | 08-AIRA_Unit_Testing_Standard_v3.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ENGINEERING ADOPTION / ARCHITECTURE REVIEW BOARD APPROVAL |
| Owner | Quality Engineering - Solutions Architecture Office |
| Co-Owners | Software Development Lead; DevSecOps Lead; Security Architecture; AI Engineering |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | Quarterly; unscheduled on material stack, framework, model, risk, AI tooling, or regulatory change |
| Mandatory For | All developers, QA/SDET, DevSecOps, AI-assisted code generation, Task Agents, Auto-Heal, Auto-Learn, Auto-Improve, and production-bound changes |
| Primary Governing Decision | ADR-AIRA-2026-001 - Adoption of Enterprise Design Principles and SOLID Enforcement Layer |
| Canonical Principle Reference | 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Universal Quality Reference | 01-AIRA AVCI Engineering Standard v3.1 |
| Architecture Reference | 02-AIRA Engineering Blueprint v5.1 |
| Developer Reference | 03-AIRA Developer Guide v4.1 |
| Companion Documents | 04 Technology Stack; 05 Information Nervous System; 06 CLAUDE.md Reference; 07 Skills Framework; 09 Greenfield Environment; 10 MicroFunction Framework; 11 DevSecOps Standard; 12 Rollout Pack; 14 ADR/TDL; 15 API Contract; 16 Database; 17 Security |
| Compliance Alignment | AVCI; ISO/IEC 27001:2022; CIS Controls v8.1; NIST SSDF SP 800-218; NIST AI RMF; OWASP ASVS; SOC 2; SLSA Build Level 3 target; BSP IT Risk expectations |

## 1. Executive Summary and v3.1 Review Verdict

## 2. Scope, Authority, and Governance

## 3. Non-Negotiable Testing Principles

## 4. TDD, Red-Green-Refactor, and Maker-Checker Workflow

## 5. Test Taxonomy and Boundary Model

## 6. SOLID and Architecture Fitness Testing

## 7. Clean Architecture, DDD, and Ports-and-Adapters Tests

## 8. Determinism and Reproducibility Requirements

## 9. Idempotency, Resilience, Error Handling, and Compensation Tests

## 10. Security, Least Privilege, SBAC, and Policy-as-Code Tests

## 11. Observability, Audit, and Evidence Tests

## 12. AI-Native Testing Standard

## 13. MicroFunction Testing Standard

## 14. API, Event, and Database Contract Testing

## 15. Frontend Testing Standard

## 16. Test Data, Synthetic Fixtures, and Classification Handling

## 17. Coverage, Mutation, Quality, and Fitness Gates

## 18. CI/CD Evidence, PR/MR Rules, and Compliance Summary

## 19. Auto-Heal, Auto-Learn, and Auto-Improve Test Acceptance

## 20. RACI, Implementation Roadmap, and AVCI Summary

Appendices

This document upgrades the AIRA Unit Testing Engineering Standard from v2.0 to v3.1. The revision incorporates the Enterprise Design Principles and SOLID Enforcement Layer as a mandatory testing control. The test suite is no longer limited to proving functional behaviour; it must also prove that each change preserves or improves architecture discipline, security posture, observability, deterministic execution, reversibility, and AVCI evidence.

AIRA is a regulated, AI-native enterprise platform. Unit tests, component tests, architecture tests, contract tests, policy tests, prompt tests, retrieval tests, and AI evaluation tests are audit artifacts. They are the first executable evidence that a human or AI-assisted change is safe to move through the delivery pipeline.

| **v3.1 Testing Verdict**<br>This standard is a major revision. It should be adopted after approval as the working test baseline for all AIRA production-bound changes. It is aligned to 01A, 01 AVCI v3.1, 02 Engineering Blueprint v5.1, and 03 Developer Guide v4.1. |
| --- |

| **Area** | **v2.0 Baseline** | **v3.1 Enhancement** |
| --- | --- | --- |
| Testing discipline | TDD, Red-Green-Refactor, deterministic tests, AI Maker-Checker. | Adds SOLID, Clean Architecture, DDD, ports-and-adapters, rollbackability, and fitness-function enforcement. |
| Quality evidence | Coverage, mutation, CI evidence, security scans, AI evaluation. | Adds principle-impact evidence, architecture-boundary evidence, reversibility evidence, and policy-as-code test evidence. |
| AI-native testing | Prompt, retrieval, guardrail, model routing, and tool-execution tests. | Adds Auto-Heal/Auto-Learn/Auto-Improve acceptance tests proving no architectural or security weakening. |
| Architecture testing | Boundary testing implied through standards. | Makes ArchUnit/dependency checks, forbidden imports, context isolation, and package-boundary tests mandatory. |
| Operational safety | Error, retry, idempotency, and audit paths tested. | Adds compensation, rollback, forward-fix, replay, DLQ, observability, and evidence completeness gates. |

This standard defines how testing is practiced on AIRA. It establishes TDD, Red-Green-Refactor, deterministic testing, architecture fitness testing, AI-assisted Maker-Checker review, security-safe test data, and AVCI evidence as mandatory disciplines for all code and AI-native artifacts.

Unit tests and component-level tests for Java, TypeScript/React/Next.js, Python where approved, SQL migrations, Rego policies, prompt templates, and guardrail artifacts.

Tests for business logic, state transitions, monetary calculations, validations, authorization failures, error contracts, retries, idempotency, compensation, and tenant isolation.

Architecture fitness tests for SOLID, Clean Architecture, DDD bounded contexts, ports-and-adapters, forbidden imports, and service-boundary enforcement.

AI-native tests for prompts, retrieval grounding, citation quality, guardrail checkpoints, model routing, tool-action proposals, Harness/SBAC/OPA decisions, and trust-score rules.

CI/CD evidence: coverage, mutation score, SAST/SCA/secret scan outcomes, policy tests, AI evaluation results, and AVCI compliance summaries.

| **Authority Level** | **Document / Source** | **Testing Concern** |
| --- | --- | --- |
| L0 | AIRA Architecture Authority / Engineering Blueprint v5.0 | System boundaries, architectural invariants, service ownership, workflow partition. |
| L1 | This Unit Testing Engineering Standard v3.1 | TDD, unit/component tests, architecture tests, test evidence, AI Maker-Checker, CI quality gates. |
| L2 | 01A Enterprise Design Principles and 01 AVCI v3.1 | Universal principle gates and AVCI artifact quality requirements. |
| L2 | Developer Guide v4.1 and Technology Stack | Coding patterns and approved test tooling/version selection. |
| L3 | Repository CLAUDE.md, CODEOWNERS, CI rules | Directory-specific test enforcement and reviewer ownership. |

The following principles are reject gates. A change that violates any principle must not be merged unless an approved waiver exists with risk acceptance, expiry date, remediation plan, and compensating control.

| **ID** | **Principle** | **Enforcement Meaning** |
| --- | --- | --- |
| UT1 | TDD is mandatory | Tests are written before implementation where feasible. Code-first/test-later is rejected except documented non-merge spikes or emergency hotfixes with same-day remediation. |
| UT2 | Red-Green-Refactor is the cycle | Failing test proves intent; green code passes; refactor preserves behaviour and architecture boundaries. |
| UT3 | Behaviour over implementation | Tests verify observable behaviour, contracts, state transitions, side effects, errors, and evidence, not incidental private method order. |
| UT4 | Determinism is absolute | No real clock, random seed, real network, uncontrolled filesystem mutation, or environment dependency in unit tests. |
| UT5 | Happy and unhappy paths are both mandatory | Each material change tests success, invalid input, boundary input, authorization failure, downstream failure, and idempotency/retry where applicable. |
| UT6 | Synthetic data only | Tests must never contain real customer data, production data, secrets, tokens, document content, or PII. |
| UT7 | SOLID must be testable | Tests and fitness functions must detect god classes, hidden dependencies, interface bloat, and direct infrastructure coupling. |
| UT8 | Architecture boundaries are executable controls | Forbidden imports, package dependency direction, bounded context boundaries, and adapter rules are tested automatically. |
| UT9 | Security controls are tested | Authorization, SBAC, OPA, redaction, secrets hygiene, tenant isolation, and classification routing are testable controls. |
| UT10 | AI tests are real tests | AI-generated tests carry the same accountability as human-authored tests and require human reviewer validation. |
| UT11 | Maker-Checker is independent | High-risk changes use independent review, role diversity, or model/tool diversity before merge. |
| UT12 | Bounded AI remediation | AI remediation is capped at three attempts per failure before human escalation. |
| UT13 | Guardrails fail closed | If tests prove guardrails can be bypassed, disabled, skipped, or silently ignored, the change is rejected. |
| UT14 | Evidence is deliverable | Passing tests are not enough; evidence must be persisted and linked to ticket, commit, MR, pipeline, and AVCI summary. |
| UT15 | Reversibility is tested | Rollback, compensation, forward-fix, replay, and safe failure paths must be tested for production-impacting changes. |

| **Architecture Test Gate**<br>Functional success does not compensate for architecture failure. If a change passes business tests but violates SOLID, bounded context, ports-and-adapters, security, observability, or reversibility gates, it is not production-ready. |
| --- |

| **Phase** | **Required Action** | **Evidence** |
| --- | --- | --- |
| Red | Write a failing test that expresses the expected behaviour, boundary case, security rule, or architecture rule. | Failing test output linked to ticket or PR evidence. |
| Green | Implement the smallest safe change that passes the test without bypassing architecture or security controls. | Passing unit/component test and CI run. |
| Refactor | Improve code structure while preserving behaviour, tests, security, and fitness-function results. | Regression suite and architecture gate remain green. |
| Review | Human checker validates test meaning, negative paths, security, data handling, and AVCI evidence. | PR review record and compliance summary. |

AI may draft tests, generate fixtures, propose mocks, summarize failures, and suggest remediations. AI does not own test accountability. The human developer remains accountable for test intent, coverage sufficiency, data safety, security implications, and evidence accuracy.

| **Role** | **Permitted** | **Not Permitted** |
| --- | --- | --- |
| AI Maker | Draft failing tests, propose edge cases, generate synthetic fixtures, explain defects. | Approve tests, merge code, weaken assertions, use real PII, bypass guardrails. |
| Human Maker | Select test intent, write/accept tests, implement changes, run local checks. | Claim AI output as verified without reading and executing it. |
| Human Checker | Validate behaviour, architecture impact, security, test adequacy, and evidence. | Approve own high-risk change without independent review unless waiver exists. |
| AI Checker | Provide secondary review, identify missing negative paths, suggest mutation and boundary cases. | Override human reviewer or policy decision. |

AIRA uses a layered test model. Tests should be as low-level as possible and as high-level as necessary. Unit tests are the first gate, but architecture, contract, security, and AI evaluation tests are mandatory when the change affects those areas.

| **Test Type** | **Purpose** | **Typical Tooling / Pattern** | **Required For** |
| --- | --- | --- | --- |
| Unit | Pure behaviour and logic validation in isolation. | JUnit, AssertJ, Mockito, Vitest, pytest. | All production code. |
| Component | Spring slice, service component, adapter with test doubles. | Spring test slices, Testcontainers where justified. | Adapters, repositories, security, serialization. |
| Architecture Fitness | Verify package boundaries, forbidden dependencies, naming, layering, context isolation. | ArchUnit, dependency graph checks, Semgrep. | All services and shared libraries. |
| Contract | Ensure API/event/schema compatibility and generated client parity. | OpenAPI/AsyncAPI validators, Pact, schema compatibility tests. | REST APIs, Kafka events, external integrations. |
| Policy | Verify OPA/Rego, admission, CI policy, and authorization decisions. | OPA test, Conftest, Gatekeeper policy tests. | Security, deployment, access, model routing. |
| AI Evaluation | Verify prompt safety, retrieval grounding, citations, guardrail behaviour, model routing, tool actions. | Golden datasets, prompt tests, guardrail tests, evaluation harness. | AI, RAG, Auto-Heal, Auto-Learn, Auto-Improve. |
| End-to-End Smoke | Validate critical path wiring without becoming the main correctness proof. | Playwright, API smoke tests, synthetic data. | Release candidates and key user journeys. |

Architecture fitness functions turn design principles into executable tests. These checks must run locally where feasible and in CI strict mode before merge.

| **Principle** | **Fitness Function** | **Failure Example** |
| --- | --- | --- |
| Single Responsibility | Detect classes/functions exceeding approved complexity, excessive collaborators, or mixed responsibilities. | Controller performs validation, authorization, persistence, publishing, and response mapping. |
| Open/Closed | Detect hardcoded type switches or business-case chains where strategy/configuration/catalog is required. | New product type requires editing a central if/else chain. |
| Liskov | Contract tests run against all adapter implementations. | Mock adapter behaves differently from production adapter. |
| Interface Segregation | Detect overly broad service interfaces and unused dependency methods. | Client imports a giant service just to call one method. |
| Dependency Inversion | Block domain/application packages from importing infrastructure SDKs. | Domain imports Kafka, Redis, OpenKM, Vault, LiteLLM, HTTP client, or Spring Web. |

**Architecture Boundary Test Example**

| // Example ArchUnit-style intent, final syntax subject to tooling baseline<br>classes().that().resideInAPackage("..domain..")<br> .should().onlyDependOnClassesThat().resideInAnyPackage(<br> "..domain..", "java..", "jakarta.validation..")<br><br>noClasses().that().resideInAPackage("..domain..")<br> .should().dependOnClassesThat().resideInAnyPackage(<br> "org.springframework..", "org.apache.kafka..", "redis.clients..", "software.amazon..") |
| --- |

| **Boundary** | **Required Test** | **Acceptance Rule** |
| --- | --- | --- |
| Layer direction | Package dependency test. | Presentation may call application; application may call domain/ports; infrastructure implements ports; domain never calls infrastructure. |
| Bounded context | Dependency and schema ownership test. | No direct imports or database writes across contexts except approved contracts/projections. |
| Ports | Contract test for each outbound port. | Application code depends on a port interface; adapter implementations satisfy the same contract. |
| Adapters | Component test with synthetic external responses. | Timeout, error mapping, retry, safe response, telemetry, and audit are verified. |
| Domain invariants | Pure unit tests for aggregate/value-object rules. | Business invariants are enforced without Spring, database, Kafka, or AI provider dependencies. |
| MicroFunction boundaries | Catalog and envelope tests. | Business functions do not re-code standard framework concerns and remain isolated in STP-BUS-* or rules/DMN. |

Determinism is mandatory because tests are audit evidence. A passing result must mean the same thing today, tomorrow, locally, and in CI. Non-deterministic tests create false confidence and weaken AVCI verifiability.

| **Risk** | **Required Control** | **Rejected Pattern** |
| --- | --- | --- |
| Time | Use injected Clock or deterministic time provider. | LocalDateTime.now() directly in business logic or tests. |
| Randomness | Use seeded random or fixed synthetic fixtures. | Unseeded random values that change assertions. |
| Network | Use mocks, contract stubs, local containers, or approved simulators. | Unit test calling real external API. |
| Filesystem | Use isolated temp directory or in-memory abstraction. | Test mutates developer machine state. |
| Order | Assert stable sorting or order-insensitive collections. | Implicit database or map iteration order assumptions. |
| AI | Use golden datasets, fixed model alias, captured evidence packs, and evaluation thresholds. | Unbounded live model response as the only assertion. |

| **Concern** | **Required Tests** | **Evidence** |
| --- | --- | --- |
| Idempotency | Duplicate request, replay with same key, conflicting fingerprint, expiry, and partial failure recovery. | Idempotency registry assertions and response-hash checks. |
| Retry | Retryable vs non-retryable error classification, max attempts, backoff behaviour, jitter bounds. | Retry policy test output and audit of attempt count. |
| Timeout | Downstream timeout produces safe error and no silent partial success. | Problem details response and trace correlation. |
| Circuit breaker | Open, half-open, fallback, and recovery behaviour. | Metrics and state transition assertions. |
| Compensation | Saga step failure triggers configured compensation in correct order. | Compensation audit and final safe state. |
| DLQ | Poison event routes to DLQ with redacted payload and evidence reference. | DLQ record, error code, classification, and trace_id. |
| Safe response | No stack traces, secrets, PII, or internal topology in error output. | Problem Details contract and log redaction evidence. |

Security is not review-only. Every access control, classification gate, model route, agent action, and sensitive operation must be testable and must fail closed under missing or denied policy decisions.

| **Control** | **Required Test** | **Pass Condition** |
| --- | --- | --- |
| Authentication | Missing, expired, invalid audience, invalid issuer, and malformed tokens. | Request is denied and audited. |
| Authorization | Allowed, denied, insufficient scope, tenant mismatch, role mismatch. | OPA/Spring decision matches policy and is trace-correlated. |
| SBAC | Agent/human lacks required skill, inactive skill, expired skill, insufficient trust. | Action is denied or escalated to human approval. |
| Least privilege | Service account lacks non-required permissions. | Tests prove only declared actions are allowed. |
| Separation of duties | Maker cannot approve own high-risk change; checker and approver are distinct. | Workflow blocks or routes to separate approver. |
| Classification routing | Confidential/Restricted data cannot use unapproved cloud route. | Model route is blocked or private route selected. |
| Secrets hygiene | Secret patterns in logs, prompts, tests, errors, and fixtures. | Secret scan and redaction tests pass. |
| Fail closed | OPA, Vault, Keycloak, Harness, LiteLLM, NeMo, or audit pipeline unavailable. | Protected operation blocks with safe error. |

| **Evidence Area** | **Test Requirement** | **Required Fields** |
| --- | --- | --- |
| Trace | Every request, workflow, event, model call, and tool action has trace correlation. | trace_id, span_id, service.name, env, release. |
| Metrics | Business and technical counters/histograms are emitted without high-cardinality labels. | service, env, outcome, error_code, dependency. |
| Logs | Structured logs are redacted and correlate to trace/audit. | trace_id, request_id, tenant where allowed, classification. |
| Audit | Security, AI, workflow, and mutation decisions produce durable audit evidence. | actor, action, resource, decision, policy version, classification, evidence_ref. |
| AI Evidence | Prompt, retrieval, guardrail, model route, output, and human approval evidence are linked. | model_alias, prompt_version, guardrail_policy, retrieval_evidence, approval_state. |
| AVCI | Every test artifact is attributable, verifiable, classifiable, and improvable. | owner, source, CI run, evidence, classification, improvement path. |

AI-native testing verifies that AIRA can use AI aggressively without losing governance. Tests must cover not only model output quality but also routing, guardrails, retrieval grounding, policy decisions, tool execution boundaries, and human accountability.

| **AI Area** | **Required Tests** | **Reject If** |
| --- | --- | --- |
| Prompt templates | Prompt versioning, classification tags, no secret/PII leakage, injection resistance. | Prompt includes raw PII, bypass instruction, unversioned template, or missing owner. |
| Retrieval | ACL filtering, citation completeness, stale-source exclusion, conflict reporting. | Unauthorized or superseded knowledge is retrieved as authoritative. |
| Guardrails | Input, Retrieval, Execution, and Output checkpoints with fail-closed tests. | Any checkpoint can be skipped or silently fails open. |
| Model routing | LiteLLM alias, budget, classification route, fallback, and denial paths. | Direct provider SDK or unapproved OpenRouter route is used. |
| Tool action | Hermes proposes; Harness validates SBAC/trust/OPA; human approval when required. | Agent directly executes downstream tool or bypasses Harness. |
| Golden dataset | Expected outputs, unsafe prompts, adversarial examples, and regression cases. | Evaluation results are missing or below threshold. |
| AI remediation | Three-attempt cap, escalation, evidence link, and no architecture weakening. | AI loops indefinitely or weakens tests/security to pass. |

MicroFunction tests protect the configuration-driven runtime assembly model. Business logic is isolated in STP-BUS-* or rule/DMN steps; repeatable framework concerns remain in standard MicroFunctions and must not be duplicated by business functions.

| **MicroFunction Area** | **Required Tests** | **Acceptance Rule** |
| --- | --- | --- |
| Catalog registration | Step code, owner, version, classification ceiling, capability, error policy, retry policy. | Invalid or incomplete catalog entries cannot activate. |
| Assembly validation | Mandatory steps present, order valid, error path configured, signature/hash correct. | RuntimeProcessDefinition is rejected if unsafe. |
| Execution envelope | Correlation, session, security, idempotency, locking, telemetry, audit, error routing. | Envelope wraps every MicroFunction. |
| Business function | Narrow input/output contract, deterministic domain behaviour, no framework leakage. | No direct Redis, Kafka, audit, HTTP response, or model provider access. |
| Error path | Retry, compensation, DLQ, safe response, human escalation. | Failure always has configured path. |
| Cache behaviour | Caffeine/Redis cache hit/miss/invalidation with PostgreSQL as source of truth. | Cache loss never affects correctness. |

| **Contract Area** | **Required Tests** | **Reject If** |
| --- | --- | --- |
| REST API | OpenAPI schema validation, request/response examples, problem details, auth claims, idempotency header. | Endpoint or field exists in code but not contract. |
| Kafka/Event | AsyncAPI, CloudEvents attributes, schema compatibility, Avro/JSON schema validation. | Event is treated as free-form log or lacks classification/trace metadata. |
| Database migration | Flyway checksum, expand/contract safety, rollback/forward-fix plan, seed determinism. | Manual DDL, unreviewed migration, destructive change without approval. |
| RLS/Tenant | Tenant isolation and restricted data access tested at DB and service layer. | Cross-tenant read/write possible. |
| Outbox | Mutation and event intent commit atomically; publisher retry and duplicate handling. | Business change commits without outbox evidence. |
| Embedding/vector | Chunk lineage, model version, ACL metadata, re-embedding trigger, stale index handling. | Vector or graph index becomes sole source of truth. |

| **Frontend Area** | **Required Tests** | **Notes** |
| --- | --- | --- |
| Component behaviour | User-visible state, validation messages, disabled states, loading states, error display. | Use React Testing Library style tests; avoid brittle implementation checks. |
| Contract mocks | MSW or approved mock generated from OpenAPI contracts. | Mocks must not drift from backend contracts. |
| Security | CSP assumptions, token handling, no secrets in browser, authorization-driven UI hiding is not access control. | Backend remains source of authorization truth. |
| Accessibility | Keyboard navigation, labels, roles, focus order, color-independent state indication. | Include at least critical workflow a11y checks. |
| E2E smoke | Critical path with synthetic accounts and synthetic data. | Do not rely on E2E as replacement for unit/contract tests. |
| Observability | Frontend error capture, correlation ID propagation, safe redaction. | No PII or sensitive tokens in telemetry. |

All test data must be synthetic, deterministic, and classification-aware. Production customer data, production documents, real credentials, real access tokens, real prompts containing sensitive content, and real PII are prohibited in tests and fixtures.

| **Data Type** | **Allowed** | **Not Allowed** |
| --- | --- | --- |
| Customer/person data | Synthetic names, addresses, account numbers, passport-like examples with fake values. | Real customer/person data or copied production screenshots. |
| Financial data | Synthetic loan balances, fees, interest rates, amortization examples with deterministic expected values. | Real loan/account records. |
| Documents | Synthetic PDF/image fixtures, fake OCR text, fake MRZ, redacted samples. | Real IDs, passports, titles, contracts, or customer documents. |
| Secrets | Placeholders like vault://path/ref or dummy tokens that cannot authenticate. | Actual passwords, API keys, refresh tokens, certificates, private keys. |
| AI prompts | Sanitized prompt templates and adversarial test prompts without real sensitive data. | Raw confidential business prompts or restricted source content. |
| Evidence | Masked logs, synthetic traces, generated audit records. | Unredacted incident, security, or production telemetry. |

Coverage percentage alone is not sufficient. AIRA uses a balanced gate: changed-line coverage, branch coverage, mutation score for critical logic, architecture fitness checks, security tests, AI evaluation thresholds, and evidence completeness.

| **Gate** | **Minimum Expectation** | **Escalation** |
| --- | --- | --- |
| Changed-line coverage | All production-bound changed lines are covered unless justified by waiver. | Reviewer must approve uncovered lines with reason. |
| Branch coverage | Critical branching and error paths are covered. | Missing branch coverage blocks high-risk changes. |
| Mutation score | Required for monetary, authorization, workflow, and MicroFunction logic. | Surviving mutants require stronger tests or justified exception. |
| Architecture fitness | All boundary, dependency, forbidden import, and package rules pass. | No merge until corrected or formally waived. |
| Security scans | Secret scan, SAST, dependency scan, and policy tests pass. | Critical/high findings block merge unless risk accepted. |
| AI evaluation | Golden dataset and guardrail tests meet approved thresholds. | Prompt/model/guardrail changes cannot promote. |
| Flake SLO | Repeated flaky test failures are treated as defects. | Quarantine only with owner, expiry, and fix ticket. |
| AVCI evidence | PR includes owner, verification, classification, improvement path, and principle-impact summary. | Incomplete evidence blocks merge. |

Every non-trivial PR/MR must declare the test evidence and principle-impact evidence needed for review. CI must produce evidence automatically where possible; humans must fill the judgement fields that tools cannot infer.

**Required PR/MR Testing Evidence Block**

| ### Test and Architecture Evidence Summary<br>- Ticket / ADR / TDL:<br>- Change type: code \| config \| migration \| prompt \| guardrail \| policy \| MicroFunction \| infrastructure<br>- Tests added or updated:<br>- Red-Green-Refactor evidence:<br>- Architecture fitness checks:<br>- SOLID impact: preserved \| improved \| exception requested<br>- Clean Architecture / DDD / Ports-and-Adapters impact:<br>- Idempotency / determinism evidence:<br>- Security / SBAC / OPA evidence:<br>- Observability / audit evidence:<br>- Reversibility / rollback / compensation evidence:<br>- AI tool involvement: none \| ChatGPT \| Codex \| Claude Code \| other<br>- Human checker:<br>- AVCI summary: Attributable \| Verifiable \| Classifiable \| Improvable |
| --- |

| **CI Stage** | **Required Evidence** | **Block Condition** |
| --- | --- | --- |
| Pre-commit | Formatting, secret scan, lint, fast unit tests, local architecture checks where feasible. | Secret exposure or deterministic rule violation. |
| Build | Pinned dependencies, reproducible build, dependency lock validation. | Unpinned/unapproved dependency. |
| Test | Unit, component, architecture, policy, contract, and relevant AI tests. | Failing or skipped mandatory tests. |
| Security | SAST/SCA/secret/IaC/container scan results. | Critical/high unapproved risk. |
| Evidence pack | Test reports, coverage, mutation, SBOM, provenance, AVCI summary. | Evidence missing or not linked to PR. |

| **AI Improvement Test Rule**<br>Auto-Heal, Auto-Learn, and Auto-Improve must not only fix, learn, or optimize. They must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

| **Capability** | **Mandatory Tests** | **Reject If** |
| --- | --- | --- |
| Auto-Heal | Reproduce failure, prove root-cause hypothesis, run targeted and regression tests, verify no boundary/security weakening, verify rollback/compensation. | Fix deletes tests, bypasses policy, widens privilege, suppresses errors, or hides observability. |
| Auto-Learn | Validate source authority, citations, classification, conflict checks, human review, and regression impact. | Unreviewed AI output becomes authoritative knowledge. |
| Auto-Improve | Measure baseline vs target, prove reduced risk/complexity/defect rate/latency, run architecture and security gates. | Optimization increases coupling, reduces tests, hides evidence, or creates irreversible change. |
| AutoResearch | Source freshness, authority, licensing, classification, and human acceptance checks. | External claim is promoted without review and provenance. |

| **Activity** | **Solutions Architect** | **Dev Lead** | **QA/SDET** | **Security** | **DevSecOps** | **Developer** |
| --- | --- | --- | --- | --- | --- | --- |
| Approve v3.1 testing standard | A | R | C | C | C | I |
| Define architecture fitness rules | A | R | C | C | C | I |
| Maintain unit/component test suite | C | A | C | C | C | R |
| Maintain CI quality gates | C | C | C | C | A/R | I |
| Review security tests | C | C | C | A/R | C | I |
| Review AI evaluation tests | A | R | C | C | C | R |
| Approve waivers | A | R | C | C | C | I |

| **Wave** | **Implementation Scope** | **Exit Criteria** |
| --- | --- | --- |
| Wave 1 | Adopt PR/MR evidence block, update CLAUDE.md test rules, require architecture test placeholders in each service. | All repositories include testing evidence template and CI stub. |
| Wave 2 | Implement SOLID/Clean Architecture/DDD fitness tests for backend services and shared libraries. | Forbidden import and package boundary tests run in CI. |
| Wave 3 | Add security, SBAC, OPA, guardrail, and model-routing test suites. | Protected operations fail closed in tests. |
| Wave 4 | Add MicroFunction assembly, idempotency, compensation, and observability evidence tests. | Runtime assembly and error paths are test-proven. |
| Wave 5 | Add Auto-Heal/Auto-Learn/Auto-Improve evaluation gates and golden datasets. | AI improvement loops cannot promote without tests and human review. |

| **AVCI Property** | **v3.1 Compliance Statement** |
| --- | --- |
| Attributable | Every test, fixture, evaluation, policy test, and evidence record has an owner, source, ticket/ADR link, CI run, and reviewer. |
| Verifiable | Tests are deterministic, reproducible, executable in CI, and supported by coverage, mutation, architecture, policy, security, and AI evaluation evidence. |
| Classifiable | Tests, fixtures, prompts, logs, evidence packs, and reports carry classification and handling rules; real PII and secrets are prohibited. |
| Improvable | Failures, flakiness, surviving mutants, escaped defects, incidents, and AI evaluation gaps feed controlled improvement backlog and knowledge updates. |

| **ID** | **Fitness Function** | **Applies To** | **Tooling Pattern** |
| --- | --- | --- | --- |
| AFF-01 | Domain layer has no infrastructure imports. | Java services | ArchUnit / dependency check |
| AFF-02 | Controllers contain no business logic. | REST APIs | Code review + complexity/annotation checks |
| AFF-03 | No direct model provider SDK calls. | All services/scripts | Import lint / Semgrep |
| AFF-04 | No direct database writes across bounded contexts. | DB/services | Schema ownership tests / repository scan |
| AFF-05 | All mutating endpoints have idempotency tests. | REST/API services | Contract + unit tests |
| AFF-06 | All external calls have timeout/retry/circuit breaker policy. | Adapters | Resilience4j component tests |
| AFF-07 | All AI tool actions pass through Harness/SBAC/OPA. | AI orchestration | Policy + integration test |
| AFF-08 | All critical logs and audit events include trace correlation and redaction. | All services | Unit/component test |
| AFF-09 | All migrations are Flyway-managed and forward-fixable. | Database | Migration CI test |
| AFF-10 | All Auto-Heal PRs run architecture/security/regression tests. | AI remediation | CI policy gate |

I wrote or updated tests before or together with the implementation and preserved the Red-Green-Refactor evidence.

I tested success, invalid input, boundary cases, authorization failure, downstream failure, and retry/idempotency where applicable.

I ran architecture fitness tests and verified that SOLID, Clean Architecture, DDD, and ports-and-adapters boundaries are preserved.

I used only synthetic test data and confirmed no secrets, PII, or production data are present.

I verified logging, tracing, audit, and redaction for the changed path.

I verified reversibility, compensation, rollback, forward-fix, or safe failure path where applicable.

I declared any AI assistance and confirmed that the human checker reviewed the output.
