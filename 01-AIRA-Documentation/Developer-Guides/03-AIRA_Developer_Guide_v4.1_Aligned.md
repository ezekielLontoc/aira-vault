---
document_id: "AIRA-DOC-003"
title: "AIRA Developer Guide"
version: "v4.1"
status: "aligned"
source_file: "03-AIRA_Developer_Guide_v4.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Developer-Guides"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - developer-guide
---

# AIRA Developer Guide

**AIRA**

AI-Native Enterprise Platform

**AIRA Developer Guide**

_Implementation Patterns | Coding Standards | SOLID Enforcement | AI-Native Guardrails | Operational Procedures_

**v4.1 - Java 25 Backend Baseline and Cross-Pack Synchronization Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-003** |
| **Document Title** | **AIRA Developer Guide** |
| **Document Version** | **v4.1 - Java 25 Backend Baseline and Cross-Pack Synchronization Update** |
| **Supersedes** | **03-AIRA_Developer_Guide_v4.0** |
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

**Document role. **Developer operating standard for backend, frontend, MicroFunction, AI, testing, PR, and runbook implementation discipline.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active source baseline** | **AIRA Source Packs v3.0 / Aligned Pack Set v1.1 remains the input baseline; Pack 02 v1.2 is the new individual output set for Obsidian upload.** |
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

Standardized the backend runtime baseline to Java 25 LTS with Spring Boot 4.x and Spring Framework 7.x where compatible.

Clarified that Java 21 is not the default backend runtime and may be used only as a documented compatibility fallback with Architecture Board/CAB waiver and exit plan.

Aligned companion references to Pack 01 v1.2 outputs: AVCI v3.1, Engineering Blueprint v5.1, DevSecOps Standard v3.1, 01A v1.1, and ADR v1.1.

Reinforced LiteLLM-only model routing, NeMo Guardrails Input/Retrieval/Execution/Output checkpoints, and Harness/SBAC/OPA-mediated tool execution.

Aligned developer obligations with GitNexus as read-only derivative code intelligence and Dograh as governed voice-agent orchestration, not authority or execution shortcuts.

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

**Developer Guide**

**Implementation Patterns | Coding Standards | SOLID Enforcement | AI-Native Guardrails | Operational Procedures**

**Version 4.1 - May 2026**

| **Mandatory Developer Rule**<br>Developers and AI coding assistants must not only make the code work. They must preserve or improve SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, testability, security posture, observability, reversibility, rollbackability, and AVCI evidence. Any change that weakens these controls is not production-ready. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA Developer Guide |
| Document Version | v4.1 - Java 25 Backend Baseline and Cross-Pack Synchronization Update |
| Supersedes | 03-AIRA_Developer_Guide_v4.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | Software Development Lead; DevSecOps Lead; Security Architecture; Quality Engineering |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | Quarterly; unscheduled on material framework, security, technology-stack, AI-risk, or operating-model change |
| Primary Audience | Software Developers, Team Leads, DevSecOps Engineers, QA/SDET, AI Engineers, Platform Administrators |
| Primary Governing Decision | ADR-AIRA-2026-001 - Adoption of Enterprise Design Principles and SOLID Enforcement Layer |
| Canonical Principle Reference | 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Universal Quality Reference | 01-AIRA AVCI Engineering Standard v3.1 |
| Architecture Reference | 02-AIRA Engineering Blueprint v5.1 |
| Companion Documents | 04 Technology Stack; 05 Information Nervous System; 06 CLAUDE.md Reference; 07 Skills Framework; 08 Unit Testing; 09 Greenfield Environment; 10 MicroFunction Framework; 11 DevSecOps Standard; 12 CLAUDE.md Rollout; 14 ADR/TDL; 15 API Contract; 16 Database; 17 Security |
| Compliance Alignment | AVCI; ISO/IEC 27001:2022; CIS Controls v8.1; NIST SSDF SP 800-218; NIST AI RMF; OWASP ASVS; SOC 2; SLSA Build Level 3 target; BSP IT Risk expectations |

## 1. Executive Summary and v4.0 Review Verdict

## 2. Authority, Scope, and Developer Governance

## 3. Enterprise Design Principles for Developers

## 4. SOLID, Clean Architecture, DDD, and Ports-and-Adapters Enforcement

## 5. Repository Structure, Packages, and Boundary Rules

## 6. Technology Baseline and Coding Standards

## 7. Local Development Environment

## 8. Developer Workflow, Branching, and PR Discipline

## 9. Backend Implementation Patterns

## 10. MicroFunction and Configuration-Driven Development Rules

## 11. AI-Native Implementation Patterns

## 12. Data, Messaging, Caching, and Workflow Patterns

## 13. Frontend Implementation Patterns

## 14. Security, IAM, Secrets, and Classification

## 15. Logging, Observability, Audit, and Evidence

## 16. Testing, Quality Gates, and Architecture Fitness Functions

## 17. Auto-Heal, Auto-Learn, and Auto-Improve Developer Rules

## 18. CI/CD, Policy-as-Code, and Promotion Gates

## 19. Operational Runbooks and Reversibility

## 20. Developer Checklists, RACI, and AVCI Compliance Summary

Appendices

This document upgrades the AIRA Developer Guide from v4.0 to v4.1. The revision makes the Enterprise Design Principles and SOLID Enforcement Layer a mandatory developer operating rule. The guide remains a practical engineering manual, but v4.0 strengthens the daily coding, testing, review, AI-assisted development, and operational procedures required to keep AIRA maintainable, secure, observable, reversible, and audit-ready.

The developer goal is no longer limited to producing working code. AIRA developers must produce code, configuration, prompts, tests, migrations, and runbooks that preserve architectural intent. AI assistants may help draft and refactor, but the human developer remains accountable for correctness, security, maintainability, and AVCI evidence.

| **v4.1 Developer Verdict**<br>This v4.1 guide is a major revision. It is suitable as the working developer baseline after approval and after the Technology Stack pins the final patch versions for Java, Spring Boot, Node.js, React, Next.js, PostgreSQL, Kafka, Kubernetes, and the approved AI toolchain. |
| --- |

| **Area** | **v3.0 Baseline** | **v4.1 Enhancement** |
| --- | --- | --- |
| Developer governance | AVCI, no direct model calls, guardrails, Harness boundary | Adds 20-principle enforcement, SOLID gates, boundary fitness checks, and reversibility requirements. |
| Architecture rules | Service ownership and component boundaries | Adds Clean Architecture, DDD bounded context, ports-and-adapters, dependency direction, and anti-coupling gates. |
| AI coding | AI can assist under governance | AI-generated changes must prove SOLID preservation, testability, security, observability, and rollbackability. |
| Testing | TDD, CI evidence, AI evaluation | Adds architecture tests, dependency rules, mutation gates, idempotency tests, deterministic tests, and fitness functions. |
| Operations | Runbooks and evidence | Adds rollback, forward-fix, compensation, replay, and human escalation checks as developer obligations. |

This guide defines how AIRA developers implement backend services, frontend components, MicroFunctions, AI orchestration, database migrations, event contracts, tests, observability, and operational evidence. The Engineering Blueprint defines the architecture to build. This Developer Guide defines how to implement it safely and consistently.

All production-bound Java, TypeScript, Python, SQL, YAML, Rego, prompt, guardrail, configuration, infrastructure, and documentation changes.

All human-authored and AI-assisted code produced through ChatGPT, Codex, Claude Code, Windsurf, Copilot, or other approved tooling.

All service patterns, MicroFunction implementations, contracts, events, tests, runbooks, and evidence records.

All local development, devcontainer, CI runner, non-production, and production-promotion activities that influence AIRA system behavior.

| **Level** | **Source** | **Developer Meaning** |
| --- | --- | --- |
| L0 | Architecture Board / Consolidated Architecture Decisions | Final authority for platform boundaries and major design conflicts. |
| L1 | 02-AIRA Engineering Blueprint v5.1 | Defines service boundaries, layers, workflows, data design, AI boundary, and target architecture. |
| L1 | 01-AIRA AVCI Engineering Standard v3.1 | Defines production-readiness evidence for every artifact and AI output. |
| L1 | 01A Enterprise Design Principles and SOLID Enforcement Layer | Defines mandatory design-principle gates and evidence expectations. |
| L2 | This Developer Guide | Defines developer behavior, coding patterns, package rules, tests, local workflow, and runbooks. |
| L3 | CLAUDE.md, CODEOWNERS, CI gates, OPA policies | Machine-enforced local rules. Directory-specific rules may tighten, never weaken. |

| **Rule** | **Mandatory Practice** |
| --- | --- |
| AVCI Summary | Every non-trivial pull request includes Attributable, Verifiable, Classifiable, and Improvable evidence. |
| Principle Impact | Every change declares whether SOLID, boundaries, security, observability, and reversibility are preserved, improved, or affected. |
| No direct model calls | No service, script, notebook, or agent imports or calls model providers directly. Model traffic goes through LiteLLM. |
| Guardrails always | Input, Retrieval, Execution, and Output checkpoints are mandatory for AI-involved flows. Failure blocks, not bypasses. |
| Harness boundary | AI agents never directly execute Git, CI/CD, DB, Kubernetes, Kafka, Temporal, Flowable, OpenKM, or production APIs. |
| No secrets or PII leakage | No secrets, raw customer data, raw prompts/responses, or embeddings in logs, traces, tests, examples, tickets, or documentation. |
| TDD and deterministic evidence | Tests are written first where feasible and must run deterministically in CI without uncontrolled time, network, random, or environment dependencies. |
| No manual production mutation | No manual kubectl writes, direct database edits, click-ops, or unmanaged configuration changes. |

The following 20 principles are developer acceptance gates. Developers do not need to restate the full theory in every commit, but each material change must preserve these principles and must provide evidence when the change touches architecture, security, data, AI, workflow, or production behavior.

| **No.** | **Principle** | **Developer Enforcement** |
| --- | --- | --- |
| 1 | SOLID | Small cohesive units; dependency inversion; no god services; no framework leakage into domain code. |
| 2 | Clean Architecture | Dependencies point inward; domain and application logic do not depend on infrastructure details. |
| 3 | DDD / Bounded Contexts | Domain ownership is explicit; no cross-context writes or shared domain model leakage. |
| 4 | Ports and Adapters | External dependencies are behind interfaces; adapters are replaceable and testable. |
| 5 | DRY, KISS, YAGNI | Avoid duplication and speculative complexity; prefer simple explicit code. |
| 6 | Idempotency by Design | Mutations, event consumers, workflows, and external calls are retry-safe. |
| 7 | Determinism and Reproducibility | Builds, tests, migrations, and AI evaluations are reproducible with pinned inputs. |
| 8 | Fail-Safe, Not Fail-Open | Unavailable security, policy, guardrail, audit, or identity dependencies block protected actions. |
| 9 | Human-in-the-Loop | High-impact, low-confidence, restricted, or production-impacting actions require named human review. |
| 10 | Least Privilege / SBAC | Humans, services, and agents receive only approved role, skill, and scope. |
| 11 | Separation of Duties | Maker, checker, approver, deployer, and auditor responsibilities remain separated. |
| 12 | Observability by Design | Every important path emits trace, metric, log, audit, and evidence references. |
| 13 | Policy as Code | Rules are encoded in OPA/Rego, admission policies, CI gates, or equivalent executable controls. |
| 14 | Testability by Design | Code is small, injectable, deterministic, and testable without real external dependencies. |
| 15 | Secure by Design | Security is built into code, configuration, data handling, identity, and error responses. |
| 16 | Resilience Patterns | Timeouts, retries, circuit breakers, bulkheads, fallbacks, DLQ, and compensation are explicit. |
| 17 | Architectural Fitness Functions | Automated checks protect boundaries, dependencies, policies, test gates, and forbidden imports. |
| 18 | Progressive Autonomy | Automation earns scope gradually through evidence, trust score, risk limit, and human approval. |
| 19 | Reversibility / Rollbackability | Changes are forward-fixable, compensatable, rollback-aware, and operationally recoverable. |
| 20 | AVCI | Every artifact is attributable, verifiable, classifiable, and improvable. |

| **Design Principle Acceptance Gate**<br>A pull request that breaks architecture boundaries, weakens tests, bypasses security controls, hides observability, removes rollback paths, or loses AVCI evidence must be rejected even if the application functionally works. |
| --- |

| **SOLID Rule** | **Developer Rule** | **Rejected Pattern** |
| --- | --- | --- |
| Single Responsibility | Classes, functions, prompts, MicroFunctions, and adapters have one reason to change. | Controller that validates, authorizes, persists, publishes, and formats response. |
| Open/Closed | Add behavior through interfaces, strategy, configuration, policy, or catalog registration without modifying unrelated code. | Editing a central if/else chain for every new business case. |
| Liskov Substitution | Implementations satisfy the contract and can replace each other without surprising behavior. | Adapter returns partial objects or throws undocumented exceptions. |
| Interface Segregation | Use narrow ports; do not force clients to depend on unused methods. | Large service interface used by unrelated contexts. |
| Dependency Inversion | Domain/application logic depends on abstractions; infrastructure implements them. | Domain service imports Kafka, Redis, OpenKM, LiteLLM, Vault, or HTTP clients directly. |

| **Layer** | **Allowed Responsibility** | **Must Not Do** |
| --- | --- | --- |
| Presentation | UI rendering, form state, user interaction, client-side validation and UX hints. | Own domain rules, direct DB access, direct model invocation, or secret handling. |
| Gateway | Ingress routing, JWT validation, coarse policy, correlation, rate limits. | Own business decisions, prompt assembly, or domain persistence. |
| Application | Use-case orchestration, transaction boundary, policy calls, workflow start, port invocation. | Contain infrastructure-specific SDK logic or direct model provider calls. |
| Domain | Business invariants, value objects, aggregates, domain decisions, pure rules. | Depend on Spring, database, Kafka, Redis, HTTP, filesystem, or AI providers. |
| Infrastructure / Adapters | External implementation of ports: DB, Kafka, OpenKM, LiteLLM, Vault, Temporal, Flowable. | Hide business logic that belongs to domain/application layer. |

A bounded context owns its domain model, schema, service APIs, events, migrations, tests, and runbooks. Other contexts communicate through contracts, events, projections, or approved adapters. Developers must not share mutable domain models across contexts or write into another context's schema.

**Dependency Direction Rule**

| // Correct dependency direction<br>presentation -> application -> domain<br>application -> ports<br>infrastructure -> ports implementation<br><br>// Rejected direction<br>domain -> infrastructure<br>domain -> Spring Web / Kafka / Redis / LiteLLM / OpenKM<br>bounded-context-A -> direct table write in bounded-context-B |
| --- |

AIRA may use a monorepo or controlled multi-repo strategy depending on governance tooling and team capacity. Regardless of repository style, every service must have clear ownership, CODEOWNERS, CLAUDE.md rules, contracts, tests, migration folders, and evidence generation.

**Standard Repository Layout**

| aira-platform/<br> services/<br> gateway-service/<br> orchestrator-service/<br> harness-service/<br> retrieval-service/<br> workflow-service/<br> ingestion-service/<br> notification-service/<br> libs/<br> aira-common/<br> aira-security/<br> aira-observability/<br> aira-contracts/<br> microfunctions/<br> catalog/<br> runtime/<br> business/<br> contracts/<br> openapi/<br> asyncapi/<br> schemas/<br> infra/<br> kubernetes/<br> helm/<br> terraform/<br> flyway/<br> ai/<br> prompts/<br> guardrails/<br> evaluations/<br> model-routing/<br> docs/<br> adr/<br> runbooks/<br> standards/ |
| --- |

**Java Package Boundary Pattern**

| com.aira.<boundedcontext>/<br> api/ // controllers, DTOs, mappers; no business rules<br> application/ // use cases, commands, handlers, orchestration<br> domain/ // entities, value objects, domain services, policies<br> port/inbound/ // use-case interfaces<br> port/outbound/ // DB, event, document, model, workflow, notification ports<br> adapter/inbound/ // REST, Kafka consumer, scheduler, workflow trigger<br> adapter/outbound/ // Postgres, Kafka producer, OpenKM, LiteLLM, Vault, Flowable<br> config/ // Spring configuration, beans, properties binding<br> observability/ // metrics, spans, audit enrichment helpers<br> error/ // domain and API error mapping |
| --- |

| **Library Type** | **Allowed** | **Not Allowed** |
| --- | --- | --- |
| aira-common | Primitive utilities, correlation IDs, error base types, value helpers. | Business rules, domain objects, service-specific DTOs. |
| aira-security | Token validation helpers, policy client, claims mapping, security annotations. | Hardcoded roles, business approval logic, secrets. |
| aira-observability | OTel helpers, metric names, audit envelope, log redaction. | PII, high-cardinality labels, domain-specific logs. |
| aira-contracts | Generated clients and schema types from approved contracts. | Handwritten or invented API/event fields. |

The AIRA Technology Stack is the authority for exact version pins. This guide defines coding behavior and implementation discipline. If a version in this guide conflicts with the Technology Stack, the Technology Stack governs.

| **Area** | **Strategic Baseline** | **Developer Rule** |
| --- | --- | --- |
| Backend | Java 25 LTS; Spring Boot 4.x; Spring Framework 7.x where compatible | Use sealed types, records, virtual-thread-aware practices, and explicit configuration. Java 21 may be used only as a documented compatibility fallback with Architecture Board/CAB waiver and exit plan. The default backend baseline remains Java 25 LTS. |
| Frontend | React 19; Next.js 16; TypeScript 5.x; Node.js 24 LTS | Use typed props, schema validation, secure rendering, and generated API clients. |
| Database | PostgreSQL 18.x; Flyway; pgvector | No production DDL outside Flyway. No free-form SQL assembled from user/config input. |
| Messaging | Kafka 4.x KRaft; Avro/JSON Schema; CloudEvents | Events are contracts. Use outbox and idempotent consumers. |
| AI | Spring AI; Hermes; LiteLLM; NeMo Guardrails; Harness; OPA; SBAC | No direct provider SDK use and direct OpenRouter use. All tool execution mediated. |
| Testing | JUnit, Vitest, Playwright, ArchUnit, mutation testing, contract testing | Tests must be deterministic and produce AVCI evidence. |

Prefer immutable value objects, records, final fields, and constructor injection.

Use BigDecimal for money, interest, fees, penalties, and any financial calculation. Never use float or double for money.

Use explicit time sources such as Clock injection; do not call now() directly inside domain logic.

Do not hide errors. Map exceptions through the standard error taxonomy and safe problem response pattern.

Do not use reflection, dynamic classloading, or runtime code generation unless an ADR approves the pattern.

No business logic in controllers, repositories, adapters, DTOs, mappers, or configuration classes.

Use strict TypeScript, generated API clients, Zod or approved schema validation, and typed form models.

Keep UI state separate from domain state. Do not embed server-side business rules in components except presentation validation hints.

Never store tokens, secrets, raw PII, or sensitive documents in localStorage, sessionStorage, client logs, or replay tools.

Use secure defaults: CSP-compliant rendering, no unsafe HTML, no unreviewed third-party scripts, and privacy-safe analytics.

Prompts, guardrails, model routes, evaluation datasets, and tool descriptions are engineering artifacts. They must be versioned, reviewed, classified, tested, and traceable like code.

Local development follows the Greenfield Environment Standard. Workstations and devcontainers must be pristine, centrally sourced, reproducible, and tied to named accountability. Developers must not install unmanaged tools, plugins, models, packages, binaries, or AI extensions for AIRA work.

| **Control** | **Developer Obligation** | **Evidence** |
| --- | --- | --- |
| Devcontainer | Use the approved signed devcontainer image for the service or repository. | Image digest, scan result, SBOM, owner. |
| Toolchain | Use only pinned versions from Golden Source repositories. | Version lock file, checksum, CI validation. |
| Secrets | Retrieve secrets through approved local dev paths. Never store secrets in files, shell history, or prompts. | Vault/OpenBao path reference, no-secret scan. |
| AI tools | Use approved ChatGPT/Codex/Claude/Windsurf settings and classification handling. | Onboarding acknowledgement, PR AI-use declaration. |
| Local data | Use synthetic data only. No production data, customer PII, credentials, or restricted documents. | Fixture source, data classification label. |

Start from a ticket, ADR/TDL where required, approved contract, and classification label.

Write or update failing tests first where feasible.

Implement the smallest safe change that satisfies the acceptance criteria.

Run local formatting, linting, unit tests, security checks, architecture checks, and contract checks.

Create a pull request with AVCI summary, design-principle impact, test evidence, security evidence, and rollback plan.

Obtain CODEOWNERS, maker-checker, security, DBA, or architecture review when triggered by the change scope.

| **Evidence Area** | **Minimum Required Content** |
| --- | --- |
| Attributable | Ticket, owner, branch, commit, AI tools used, model route if applicable, reviewer. |
| Verifiable | Tests run, scans, contract checks, architecture checks, screenshots where useful, CI run. |
| Classifiable | Data classification, model route eligibility, log redaction, secret scan, retention impact. |
| Improvable | Known limitations, follow-up backlog, refactor candidate, monitoring signal, learning feedback. |
| Principle impact | SOLID, Clean Architecture, DDD, testability, security, observability, rollbackability impact. |
| Reversibility | Rollback, forward-fix, compensation, cache invalidation, migration handling, feature flag path. |

**Pull Request Template Addition**

| ### AVCI and Design-Principle Compliance Summary<br>- Owner / ticket / ADR:<br>- AI assistance used: none \| ChatGPT \| Codex \| Claude Code \| other approved tool<br>- Attributable evidence:<br>- Verifiable evidence:<br>- Classifiable evidence:<br>- Improvable evidence:<br>- SOLID impact: preserved \| improved \| affected - explain<br>- Clean Architecture / DDD boundary impact: none \| explain<br>- Security / SBAC / policy impact: none \| explain<br>- Observability impact: trace \| metric \| log \| audit evidence added/updated<br>- Testability impact: tests added/updated; deterministic proof<br>- Reversibility / rollbackability: rollback, forward-fix, compensation, or feature flag path<br>- Auto-Heal / Auto-Learn / Auto-Improve impact: none \| explain |
| --- |

Controllers are transport adapters. They validate request shape, map to a command, pass to an application use case, and return a standardized response. They do not contain business logic, authorization decisions beyond coarse annotations, database access, Kafka publication, or model calls.

**Example: Thin Controller**

| @RestController<br>@RequestMapping("/api/loans/v1/applications")<br>class LoanApplicationController {<br> private final SubmitLoanApplicationUseCase submitLoanApplication;<br><br> @PostMapping<br> ResponseEntity<SubmitLoanApplicationResponse> submit(<br> @Valid @RequestBody SubmitLoanApplicationRequest request,<br> @RequestHeader("X-Request-Id") String requestId) {<br> var command = request.toCommand(requestId);<br> var result = submitLoanApplication.execute(command);<br> return ResponseEntity.accepted().body(SubmitLoanApplicationResponse.from(result));<br> }<br>} |
| --- |

Application services orchestrate use cases. They invoke domain logic, ports, transactions, audit, and workflow starts. They do not implement infrastructure details directly.

**Example: Application Service**

| @Service<br>class SubmitLoanApplicationService implements SubmitLoanApplicationUseCase {<br> private final LoanApplicationRepository repository;<br> private final PolicyDecisionPort policyDecisionPort;<br> private final WorkflowPort workflowPort;<br> private final AuditPort auditPort;<br><br> @Transactional<br> public SubmitLoanApplicationResult execute(SubmitLoanApplicationCommand command) {<br> policyDecisionPort.requireAllowed(command.actor(), "loan.submit", command.classification());<br> var application = LoanApplication.submit(command.toDomainInput());<br> repository.save(application);<br> workflowPort.startLoanSubmission(application.id(), command.traceId());<br> auditPort.recordSubmission(application.id(), command.traceId(), command.actor());<br> return SubmitLoanApplicationResult.accepted(application.id());<br> }<br>} |
| --- |

| **Error Type** | **Developer Rule** | **Response Rule** |
| --- | --- | --- |
| Validation | Throw typed validation error or return field error structure. | RFC 9457-style problem response, no stack trace. |
| Authorization | Policy decision denies action. Do not convert to generic server error. | 403/401 with safe error code and trace reference. |
| Business conflict | Use explicit domain conflict error with stable code. | 409 with safe business error details. |
| Dependency failure | Use timeout, retry, circuit breaker, fallback, DLQ, or compensation policy. | Safe error response; no internal endpoint or credential leakage. |
| AI safety failure | Block, audit, and escalate per guardrail/policy outcome. | Safe refusal or escalation state; no raw prompt leakage. |

The MicroFunction framework is the default model for configurable business transaction assembly. Developers should not re-code standard enterprise concerns. Business feature teams add only STP-BUS-* MicroFunctions, DMN/rules, policy changes, or adapters when the existing catalog cannot satisfy the requirement.

| **Concern** | **Framework-Owned** | **Business-Owned** |
| --- | --- | --- |
| Reception / Correlation | STP-RCV, STP-COR | None unless new channel adapter is approved. |
| Identity / Security / Classification | STP-SES, STP-SEC, STP-CLS, OPA, SBAC | Business role meaning supplied by domain owner. |
| Parsing / Normalization / Validation | STP-PRS, STP-NRM, STP-VAL | Domain-specific validation rules or DMN. |
| Idempotency / Concurrency / Cache | STP-IDP, STP-CON, STP-CAC | Business natural key or conflict rule definition. |
| Business logic | Execution envelope and catalog registry | STP-BUS-* function, rule table, or DMN decision. |
| Persistence / Audit / Events / Response | STP-DB, STP-AUD, STP-EVT, STP-RSP | Domain payload and state transition definition. |
| Error / Compensation | STP-ERR, STP-CMP | Business compensation semantics and escalation route. |

| **MicroFunction Coding Rule**<br>Code is required only when a genuinely new business capability or reusable framework capability is needed. Once implemented and approved, the function becomes catalog-managed, testable, observable, idempotency-aware, and reusable. |
| --- |

AIRA services do not call cloud or local model providers directly. Application services use Spring AI or an approved orchestration abstraction. Model aliases, routes, budgets, classification eligibility, and fallback rules are owned by LiteLLM and the model registry.

**Model Access Rule**

| // Allowed<br>ApplicationService -> OrchestratorPort -> orchestrator-service -> LiteLLM alias -> approved model<br><br>// Rejected<br>ApplicationService -> OpenAI/Anthropic/Gemini provider SDK<br>Script/notebook -> direct provider API key<br>Agent -> direct tool credentials or production API |
| --- |

| **Checkpoint** | **Purpose** | **Developer Obligation** |
| --- | --- | --- |
| Input | Validate intent, prompt safety, injection risk, classification eligibility. | Never bypass; provide structured prompt metadata. |
| Retrieval | Validate evidence pack, source eligibility, citations, and classification. | Ensure retrieved content has provenance and ACL filtering. |
| Execution | Validate tool-action proposal, skill, trust, OPA policy, and human approval need. | Route tool actions through Harness only. |
| Output | Validate response safety, grounding, citations, leakage, and completeness. | Persist audit evidence before release for critical responses. |

Prompts are versioned artifacts with owner, classification, purpose, inputs, output schema, evaluation dataset, and rollback path.

Retrieval must be source-cited, classification-aware, and ACL-filtered before prompt assembly.

AI outputs used for business or engineering decisions must declare confidence and evidence references.

Unreviewed AI output must not be promoted to LLM Wiki, Obsidian canonical notes, code, configuration, or guardrails.

| **Rule** | **Developer Requirement** |
| --- | --- |
| Schema ownership | Each bounded context owns its schema and migrations. No cross-context writes. |
| Flyway only | All DDL, seed data, RLS, extensions, views, and functions are delivered through Flyway. |
| Safe migration | Use expand/contract, compatibility checks, forward-fix plan, and rollback/compensation notes. |
| RLS and classification | Restricted or tenant-scoped data must have database-layer protection where applicable. |
| No free-form SQL config | Do not allow business users or configuration rows to inject raw SQL into application execution. |

Every cross-boundary event is a contract. Mutating transactions that publish events must use the transactional outbox pattern. Event consumers must be idempotent and must record processed-event evidence.

| **Engine** | **Owns** | **Must Not Own** |
| --- | --- | --- |
| Temporal | Machine-durable workflows, retries, sagas, compensation, deterministic execution history. | Human task inboxes, CAB approvals, business user task assignment. |
| Flowable | Human approvals, BPMN, DMN, SLA timers, exception review, CAB and governance workflows. | Machine retry orchestration, long-running technical compensation ownership. |

Redis, Valkey, and Caffeine are acceleration layers only. Correctness must survive cache loss. Cache keys must not include PII, secrets, trace IDs as labels, or unrestricted business payloads. Authoritative state remains in Tier-0 systems.

| **Area** | **Developer Rule** |
| --- | --- |
| Presentation-only | Frontend components render state and capture user intent. Domain decisions remain server-side or in approved shared validation schemas. |
| Generated clients | Use OpenAPI-generated clients where available. Do not invent endpoint paths, fields, or error codes. |
| Security | No unsafe HTML, no token exposure, no raw PII in browser logs, and no unapproved third-party scripts. |
| Accessibility | Components must support keyboard flow, labels, contrast, and screen-reader semantics. |
| Observability | Client telemetry must be privacy-safe, classification-aware, and correlated with backend trace IDs where approved. |
| Testing | Use unit, component, visual, and Playwright E2E tests for critical flows. |

Security is not a separate review stage. Developers must implement security controls in identity propagation, authorization, input validation, data access, logging, error handling, secrets handling, and AI/model routing from the first implementation.

| **Security Topic** | **Developer Rule** | **Evidence** |
| --- | --- | --- |
| Authentication | Use Keycloak/OIDC and approved Spring Security patterns. No local application passwords except approved break-glass. | Security config tests; token validation tests. |
| Authorization | RBAC/ABAC/SBAC and OPA are policy controls. Do not hardcode production role logic in business code. | OPA policy test; decision audit. |
| Secrets | Use Vault/OpenBao/approved manager. Never store secrets in Git, prompts, logs, traces, screenshots, or tests. | Secret scan; Vault path reference. |
| Classification | Public, Internal, Confidential, Restricted labels govern storage, prompt eligibility, logs, retention, and route. | Classification field; model route evidence. |
| Data protection | Mask/redact sensitive values before logs, prompts, events, caches, analytics, and error responses. | Redaction tests; log sampling evidence. |
| Fail closed | If identity, policy, guardrails, Vault, Harness, or audit is unavailable, protected actions block. | Failure-mode tests. |

Observability is a design requirement. Every service must emit enough telemetry to understand behavior, detect failure, support Auto-Heal candidates, prove compliance, and reconstruct decisions without exposing secrets or PII.

| **Signal** | **Required Fields** | **Forbidden Fields** |
| --- | --- | --- |
| Logs | service.name, env, version, trace_id, span_id, event_name, safe error_code | passwords, tokens, raw PII, documents, prompts, embeddings, large payloads. |
| Metrics | bounded labels: service, env, route, dependency, status, error_class | user_id, account_no, email, document_id, trace_id as metric labels. |
| Traces | correlation across gateway, service, DB, Kafka, workflow, AI calls | secrets or raw content in span attributes. |
| Audit | actor, action, resource, decision, policy version, classification, evidence_ref | unmasked sensitive data or raw model prompt unless classified and required. |
| AI telemetry | model alias, route, prompt version, guardrail result, token usage, confidence | raw Confidential/Restricted content in external telemetry. |

Testing is the developer proof that architecture, security, behavior, and AI governance have not been weakened. Coverage alone is insufficient. Tests must prove correctness, boundaries, failure behavior, security controls, and reversibility.

| **Test / Gate** | **Purpose** | **Required For** |
| --- | --- | --- |
| Unit tests | Verify domain/application behavior in isolation. | All code changes. |
| Component tests | Verify adapters with test containers/mocks. | DB, Kafka, cache, workflow adapters. |
| Contract tests | Prevent API/event/schema drift. | REST, Kafka, external integrations. |
| Architecture tests | Protect dependency direction, forbidden imports, layer boundaries. | All backend services and shared libs. |
| Security tests | Validate authorization, redaction, secrets, tenant isolation, fail-closed behavior. | Security-affecting changes. |
| Idempotency tests | Prove retry-safe mutation and event consumption. | POST/PATCH, workflows, Kafka consumers. |
| Determinism tests | Control time, randomness, network, filesystem, and environment assumptions. | All unit and CI tests. |
| Mutation testing | Prove tests detect real logic changes. | Critical domain and financial logic. |
| AI evaluation | Validate prompts, retrieval, guardrails, tool proposals, and outputs. | AI/RAG/model changes. |

**Example: Boundary Fitness Checks**

| // ArchUnit intent example<br>noClasses().that().resideInAPackage("..domain..")<br> .should().dependOnClassesThat().resideInAnyPackage(<br> "org.springframework..", "..adapter..", "..infrastructure..", "org.apache.kafka..", "redis.clients..")<br><br>classes().that().resideInAPackage("..api..")<br> .should().onlyDependOnClassesThat().resideInAnyPackage(<br> "..application..", "..api..", "java..", "jakarta.validation..", "org.springframework.web..") |
| --- |

| **Gate** | **Reject If** |
| --- | --- |
| Compilation and formatting | Build fails, generated sources stale, formatting not applied. |
| Unit/component tests | Tests fail, are flaky beyond SLO, or require uncontrolled external dependencies. |
| Coverage / mutation | Coverage or mutation score below approved threshold for risk tier. |
| Architecture fitness | Forbidden dependency, cross-context write, direct provider SDK, direct DB mutation path. |
| SAST/SCA/secrets | Critical/high finding without waiver, vulnerable dependency, or secret exposure. |
| Contract compatibility | Breaking API/event/schema change without versioning and deprecation path. |
| AI governance | Missing guardrail/evaluation evidence for prompt, model, retrieval, or agent action changes. |
| AVCI evidence | Missing owner, verification, classification, improvement path, or rollback plan. |

Auto-Heal, Auto-Learn, and Auto-Improve must not merely fix, learn, or optimize. They must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. Developers are responsible for implementing these controls in remediation flows, knowledge promotion workflows, and improvement PRs.

| **Capability** | **Developer Acceptance Rule** | **Reject If** |
| --- | --- | --- |
| Auto-Heal | Fix is evidence-based, minimal, tested, secure, observable, idempotent where needed, reversible, and human-approved when risk triggers. | Fix bypasses policy, weakens tests, hides failures, modifies production directly, or violates boundaries. |
| Auto-Learn | Learning is sourced, cited, classified, human-reviewed, non-conflicting, regression-validated, and versioned. | Unreviewed AI summary becomes authoritative knowledge or contradicts current standard. |
| Auto-Improve | Improvement measurably reduces risk, defect rate, complexity, latency, or security exposure while preserving principles. | Optimization reduces auditability, security, testability, clarity, or rollbackability. |

Automation progresses from recommend-only to draft-PR, safe non-production execution, supervised execution, and limited autonomous action only after evidence proves quality, safety, and reversibility. Production-impacting autonomy is not granted by default and requires explicit architecture, security, and CAB approval.

| **Stage** | **Developer Responsibility** | **Gate Evidence** |
| --- | --- | --- |
| Plan | Ticket, ADR/TDL if required, contract, classification, acceptance criteria. | Approved issue/ADR, design notes. |
| Code | Small focused changes, TDD, SOLID and boundary preservation. | Commit history, local checks. |
| Build | Reproducible build with pinned dependencies. | Build log, SBOM, provenance. |
| Test | Unit, component, contract, security, architecture, AI evaluation as applicable. | CI reports, coverage, mutation, evaluations. |
| Release | Versioned artifact, signed image, changelog, rollback notes. | Signature, registry digest, release evidence. |
| Deploy | GitOps-only desired state, policy checks, no manual mutation. | Argo CD sync, OPA/admission result. |
| Operate | Telemetry, audit, SLOs, runbook readiness. | Dashboard links, alert rules, audit entries. |
| Improve | Learning and remediation under change control. | Post-incident review, PR, approval evidence. |

A developer change is incomplete if operations cannot safely observe, diagnose, rollback, forward-fix, replay, compensate, or retire it. Runbook quality is part of developer delivery.

| **Runbook Area** | **Required Content** |
| --- | --- |
| Startup / shutdown | Expected dependencies, health checks, readiness, safe shutdown, restart order. |
| Rollback / forward-fix | Artifact version, config rollback, migration handling, feature flag, and approval path. |
| Compensation | Business compensation action, retry limit, human approval route, audit evidence. |
| Replay / reprocess | Idempotency safeguards, event offsets, DLQ handling, duplicate prevention. |
| Cache rebuild | Authoritative source, invalidation trigger, rebuild command, correctness validation. |
| Index rebuild | Source tier, chunk/embedding lineage, model version, quality validation. |
| Incident triage | Symptoms, dashboards, logs, traces, metrics, escalation contacts, safe containment. |

Ticket has clear acceptance criteria, owner, priority, and classification.

API/event/database/prompt/guardrail contract exists or ADR/TDL/spike is approved.

Bounded context and service ownership are clear.

Expected tests and architecture fitness gates are identified.

Security, secrets, data classification, and model route impact are understood.

Rollback, compensation, or forward-fix path is feasible.

Code follows SOLID, Clean Architecture, DDD, ports-and-adapters, and package boundary rules.

Tests prove happy path, unhappy path, authorization failure, idempotency/retry where applicable, and edge cases.

Architecture fitness, contract, security, secret, dependency, and AI governance gates pass.

Logs, metrics, traces, and audit evidence are implemented and redacted correctly.

PR includes AVCI summary, principle-impact summary, AI-use declaration, evidence links, and rollback plan.

CODEOWNERS and required maker-checker/security/architecture/DBA reviews are completed.

| **Activity** | **Responsible** | **Accountable** | **Consulted** | **Informed** |
| --- | --- | --- | --- | --- |
| Business feature implementation | Software Developer | Development Lead | Business SME, QA, Security | Solutions Architect |
| Architecture boundary change | Developer / Architect | Solutions Architect / Architecture Board | Security, DBA, DevSecOps | Development Team |
| MicroFunction catalog extension | Developer | Solutions Architect / Platform Lead | QA, DBA, Security | Developers |
| Prompt / guardrail change | AI Engineer / Developer | AI Governance Lead | Security, QA, Knowledge Steward | Development Team |
| Database migration | Developer / DBA | DBA / Data Owner | Security, QA, Architect | DevSecOps |
| Auto-Heal remediation PR | Agent + Human Developer | Human Owner / Development Lead | SRE, Security, QA | Operations |
| Production promotion | DevSecOps | CAB / Release Owner | Security, QA, Architect | Stakeholders |

| **AVCI Property** | **v4.0 Evidence Requirement** |
| --- | --- |
| Attributable | Every change has owner, ticket/ADR, commit, reviewer, AI tool/model declaration where applicable. |
| Verifiable | Every change has deterministic tests, CI evidence, scans, architecture checks, and review evidence. |
| Classifiable | Every artifact has data sensitivity, domain, risk, model-route eligibility, retention and handling rule. |
| Improvable | Every artifact has feedback path, metrics, defect learning, refactor path, and governed improvement route. |

| **Anti-Pattern** | **Why It Is Rejected** | **Correct Pattern** |
| --- | --- | --- |
| God service | Violates SRP and hides ownership. | Use case service plus domain service plus ports. |
| Direct model SDK | Bypasses LiteLLM, budgets, guardrails, routing, audit. | Spring AI/orchestrator service through LiteLLM alias. |
| Business logic in controller | Couples transport and domain behavior. | Thin controller mapped to use case command. |
| Cross-context table writes | Breaks bounded context and data ownership. | API/event/projection/approved adapter. |
| Swallowed exception | Hides failure and breaks observability. | Typed error taxonomy, audit, safe response. |
| No rollback path | Creates operational risk. | Feature flag, forward-fix, compensation, or rollback runbook. |
| Unreviewed AI knowledge | Creates stale or unsafe guidance. | Human-reviewed LLM Wiki/Obsidian promotion. |
| Prompt with raw PII | Breaks classification and privacy rules. | Redacted, synthetic, or approved private route. |

**Example: Port and Adapter**

| public interface DocumentStoragePort {<br> StoredDocumentReference store(DocumentUploadRequest request);<br> Optional<StoredDocumentMetadata> findMetadata(DocumentId documentId);<br>}<br><br>@Component<br>class OpenKmDocumentStorageAdapter implements DocumentStoragePort {<br> public StoredDocumentReference store(DocumentUploadRequest request) {<br> // Adapter owns OpenKM client specifics. Application/domain code does not.<br> }<br>} |
| --- |

**Example: Financial Value Object**

| public record Money(BigDecimal amount, Currency currency) {<br> public Money {<br> Objects.requireNonNull(amount);<br> Objects.requireNonNull(currency);<br> amount = amount.setScale(4, RoundingMode.HALF_EVEN);<br> }<br><br> public Money plus(Money other) {<br> requireSameCurrency(other);<br> return new Money(amount.add(other.amount), currency);<br> }<br>} |
| --- |

**Example: Deterministic Test**

| // Test rule: no real clock in domain tests<br>@Test<br>void computesPenaltyUsingInjectedClock() {<br> Clock fixedClock = Clock.fixed(Instant.parse("2026-04-27T00:00:00Z"), ZoneOffset.UTC);<br> var policy = new PenaltyPolicy(fixedClock);<br> assertThat(policy.compute(...)).isEqualTo(expectedAmount);<br>} |
| --- |

| **Term** | **Definition** |
| --- | --- |
| AVCI | Attributable, Verifiable, Classifiable, Improvable - the universal production-readiness quality gate. |
| SBAC | Skill-Based Access Control - authorization model for human and AI-agent actions based on verified skills. |
| Harness | The controlled execution boundary for AI-proposed tool actions. |
| Fitness Function | Automated check that continuously validates an architecture, security, quality, or governance rule. |
| Bounded Context | A domain boundary with its own language, model, data ownership, contracts, and responsibilities. |
| Port | An interface expressing an external capability needed by application/domain logic. |
| Adapter | Infrastructure implementation of a port, such as PostgreSQL, Kafka, OpenKM, Vault, LiteLLM, or Flowable. |
