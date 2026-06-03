---
document_id: AIRA-DOC-008A
title: AIRA AI-Assisted Unit Testing Maker-Checker Prompt Standard
version: v1.0
classification: INTERNAL CONFIDENTIAL
status: "for-review"
source_file: "08A-AIRA_AI_Assisted_Unit_Testing_Maker_Checker_Prompt_Standard_v1.0.md"
source_format: "md"
vault_folder: "01-AIRA-Documentation/Testing-and-QA"
generated_at: "2026-06-03"
owner: Solutions Architecture Office / IT Head
effective_date: 2026-05-22
review_cadence: Quarterly; unscheduled on material runtime, technology, security, AI-risk, or governance change
tags:
  - aira
  - unit-testing
  - maker-checker
  - codex
  - claude
  - avci
  - architecture-fitness
  - devsecops
---
# AIRA AI-Assisted Unit Testing Maker-Checker Prompt Standard
**Document ID:** AIRA-DOC-008A  
**Version:** v1.0  
**Classification:** INTERNAL CONFIDENTIAL  
**Status:** For Review  Engineering Adoption / Architecture Review Board / CAB Approval  
**Effective Date:** 2026-05-22  
**Owner:** Solutions Architecture Office / IT Head
> Discipline First · Automation Second · Intelligence Third · AVCI Always
## Document Control
| Property | Value |
|---|---|
| Document ID | AIRA-DOC-008A |
| Document Title | AIRA AI-Assisted Unit Testing Maker-Checker Prompt Standard |
| Version | v1.0 |
| Supersedes | New companion execution standard |
| Classification | INTERNAL CONFIDENTIAL |
| Status | For Review  Engineering Adoption / Architecture Review Board / CAB Approval |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | Software Development Lead; QA/SDET Lead; DevSecOps Lead; Security Architecture; AI Engineering; Internal Audit |
| Effective Date | 2026-05-22 |
| Review Cadence | Quarterly; unscheduled on material runtime, technology, security, AI-risk, testing-policy, or governance change |
| Primary Parent Standard | 08-AIRA Unit Testing Engineering Standard v3.1 |
| Companion Sources | AIRA Developer Guide; Technology Stack; AVCI Engineering Standard; Enterprise Design Principles / SOLID Enforcement Layer; DevSecOps Standard; Security Standard; MicroFunction Framework |

## 1. Executive Summary

This document formalizes the two-iteration AI-assisted unit testing workflow for AIRA. The workflow uses Codex as the first-loop Test Maker and Claude as the second-loop independent Test Checker. It is intended for use by software developers, QA/SDET, DevSecOps, security reviewers, architecture reviewers, and team leads when initiating or reviewing backend and frontend unit testing work.

The purpose is not only to generate more tests. The purpose is to produce trustworthy, deterministic, security-safe, architecture-aligned, and evidence-backed tests that can support production-readiness review. The two-loop process enforces maker-checker separation, prevents superficial AI-generated test coverage, and provides a repeatable prompt standard for repository-level execution.

## 2. Authority, Scope, and Document Hierarchy

This standard is a companion execution document to the AIRA Unit Testing Engineering Standard v3.1. It does not replace the parent unit testing standard, Developer Guide, Technology Stack, AVCI Engineering Standard, DevSecOps Standard, Security Standard, API Contract Standard, Database Standard, or MicroFunction Framework.

Where this document conflicts with a higher-authority AIRA source, the higher-authority source governs. Conflicts must be logged as AVCI reconciliation items and resolved through the AIRA revision-control process.

In scope:
- Backend unit, component, architecture-fitness, contract-adjacent, policy, security, observability, idempotency, and failure-path tests.
- Frontend unit, component, form validation, API mocking, security/privacy, accessibility-related, and error-state tests.
- AI-assisted test generation and review using Codex and Claude under maker-checker separation.
- Required evidence summaries for PR/MR, CI/CD, and human review.

Out of scope:
- Fully autonomous merge, approval, deployment, or production remediation by AI.
- Replacement of human accountability, CODEOWNERS review, QA approval, security review, architecture approval, or CAB governance.
- Use of production data, real customer data, secrets, credentials, raw Restricted content, or uncontrolled external services in tests.

## 3. Governing Principles

The two-loop testing workflow is governed by the following principles:

1. Discipline first, automation second, intelligence third, and AVCI always.
2. Tests are executable evidence, not optional documentation.
3. AI may draft, inspect, challenge, and recommend, but named humans remain accountable.
4. Maker and checker roles must remain separated for high-risk or production-bound work.
5. Functional success does not compensate for architecture failure.
6. Tests must preserve or improve SOLID, Clean Architecture, DDD, ports/adapters, security, observability, determinism, idempotency, reversibility, and AVCI evidence.
7. Test data must be synthetic and classification-safe.
8. CI evidence must be reproducible and linked to the ticket, branch, commit, PR/MR, and reviewer.

## 4. Two-Iteration Unit Testing Workflow

The AIRA unit testing workflow uses two AI-assisted iterations.

Iteration 1 - Codex Maker:
- Inspects the repository.
- Identifies backend and frontend test gaps.
- Adds or improves unit/component tests.
- Adds or improves architecture-fitness tests where feasible.
- Produces a maker report with commands, results, evidence, and known gaps.
- Does not approve its own work.

Iteration 2 - Claude Checker:
- Independently reviews Codex output.
- Validates test meaning, determinism, data safety, architecture alignment, security, and evidence completeness.
- Adds targeted missing tests if needed.
- Produces a checker verdict and final handoff statement.
- Escalates gaps requiring human architecture, security, QA, DBA, or CAB decision.

Human PR Review:
- Reviews both AI reports.
- Verifies CI evidence.
- Confirms no policy or architecture bypass occurred.
- Approves, requests remediation, or escalates to ADR/TDL/waiver.

## 5. Backend Testing Coverage Rules

Backend testing must cover, where applicable:

- Domain logic: invariants, value objects, domain services, BigDecimal monetary calculations, state transitions, validation, boundary conditions, and rejection paths.
- Application/use-case logic: commands, policy checks, port invocation, transaction orchestration, workflow ports, audit ports, and safe failure handling.
- Ports and adapters: mapping correctness, contract behavior, error translation, timeout/retry classification, and avoidance of business semantics inside adapters.
- Security and authorization: unauthorized access, missing skill/scope/role, SBAC/OPA failure, fail-closed behavior, safe error responses, and no sensitive data leakage.
- Idempotency and retry: duplicate command/event handling, replay safety, outbox/event intent deduplication, retry behavior, and no double-posting.
- Error and compensation: validation failure, conflict, dependency failure, policy failure, safe problem response, compensation, rollback, forward-fix, DLQ, or escalation where applicable.
- Observability and audit: trace/correlation propagation, audit events, evidence references, safe log fields, and redaction.
- Architecture fitness: ArchUnit/Semgrep/dependency rules proving clean package boundaries, no direct infrastructure dependency in domain/application logic, no direct model-provider calls, and no business logic inside controllers.

## 6. Frontend Testing Coverage Rules

Frontend testing must cover, where applicable:

- Component behavior: loading, empty, success, error, disabled/enabled, required-field, user interaction, and accessibility-relevant behavior.
- Form/schema validation: valid input, invalid input, boundary input, Zod or approved schema validation, sanitized display, and no unsafe HTML rendering.
- API interaction: generated client usage, correct request shape, success handling, validation error, authorization error, conflict/error, and mocked network only.
- Security and privacy: no tokens/secrets/raw PII in storage, logs, telemetry, or fixtures; no unsafe localStorage/sessionStorage use; no unapproved third-party script assumptions.
- Frontend architecture: components must not own server-side business rules, call model providers, access databases, or invent API contracts.

## 7. Determinism, Synthetic Data, and Classification Controls

All tests must be deterministic and classification-safe.

Required controls:
- Use fixed Clock or equivalent time abstraction.
- Use seeded UUIDs or deterministic IDs where needed.
- Mock real network calls.
- Control filesystem dependency or avoid it in unit tests.
- Avoid local machine, environment, timezone, or external service assumptions.
- Use only synthetic data.
- Do not include secrets, tokens, credentials, production data, real customer data, raw logs, raw documents, or real PII.
- Test classification, authorization, redaction, and fail-closed behavior when the change touches security or sensitive handling.

A test suite that passes only in one developer workstation, or requires uncontrolled service availability, is not AIRA-compliant.

## 8. Architecture Fitness and SOLID Enforcement

Architecture fitness is required when the change affects architecture boundaries, service ownership, MicroFunctions, APIs, adapters, policies, security, persistence, events, model routing, AI artifacts, or production behavior.

Minimum architecture-fitness expectations:
- Domain code does not import Spring Web, Kafka, Redis, database clients, OpenKM clients, LiteLLM provider SDKs, direct HTTP clients, or UI code.
- Application code depends on ports, not concrete adapters.
- Infrastructure implements ports and does not own business policy.
- Controllers remain thin transport adapters.
- Frontend components do not own domain/business rules.
- MicroFunction STP-BUS-* logic does not bypass the framework envelope or ports/adapters.
- Direct model-provider SDK calls are blocked outside approved gateway/adapter boundaries.
- Package cycles, god classes, hidden coupling, and interface bloat are detected or flagged.

## 9. Evidence and PR/MR Requirements

Every execution of this prompt standard must produce a report that can be attached to the PR/MR or copied into the PR/MR body.

Required evidence:
- Scope reviewed.
- Tests added or improved.
- Commands discovered and executed.
- Test result summary.
- Determinism confirmation.
- Synthetic data confirmation.
- Security/classification confirmation.
- Architecture/SOLID confirmation.
- AI tool usage declaration.
- Remaining gaps and checker focus areas.
- AVCI summary.

The evidence must be linked to the ticket, branch, commit, PR/MR, CI run, and human reviewer before merge.

## 10. Rejection and Escalation Gates

The test output must be rejected or escalated when any of the following occur:

- Tests pass but do not prove meaningful behavior.
- Existing meaningful tests are deleted, weakened, skipped, or bypassed.
- Coverage is inflated by shallow assertions.
- Tests rely on real time, real network, uncontrolled randomness, or local environment state.
- Test fixtures contain secrets, credentials, real PII, production data, or Restricted content.
- Architecture boundaries are weakened.
- Business logic is added to controllers, UI components, adapters, DTOs, repositories, or tests.
- Security, policy, audit, authorization, guardrail, or classification failure does not fail closed.
- Direct model-provider calls are introduced.
- No evidence summary is produced.
- A required ADR/TDL/waiver trigger is discovered but not documented.

Escalation paths:
- Architecture boundary issue: Solutions Architect / Enterprise Architect.
- Security/classification issue: Security Architecture / Data Governance.
- Database/migration issue: DBA / Data Engineering.
- CI/CD evidence issue: DevSecOps Lead.
- Test adequacy issue: QA/SDET Lead.
- Waiver or production-risk issue: Architecture Board / CAB.

## 11. RACI

| Activity | Developer | Codex Maker | Claude Checker | QA/SDET | DevSecOps | Security | Solutions Architect / IT Head |
|---|---:|---:|---:|---:|---:|---:|---:|
| Initiate test prompt | A/R | C | I | C | I | I | A |
| Add first-loop tests | A/R | R | I | C | I | I | C |
| Produce maker report | A | R | I | C | I | I | C |
| Independent checker review | C | I | R | A/R | C | C | C |
| Add corrective checker tests | C | I | R | A/R | C | C | C |
| Review security-sensitive tests | C | I | C | C | I | A/R | C |
| Review architecture fitness | C | I | C | C | C | C | A/R |
| Approve PR/MR | R | Not permitted | Not permitted | C | C | C | A/R as required |
| Merge / promote | R | Not permitted | Not permitted | C | A/R | C | A as required |

## 12. Implementation Procedure

Recommended rollout:

Wave 1 - Repository preparation:
- Add this document to Obsidian under AIRA Documentation / Developer Execution / Testing.
- Add prompt references to repository CLAUDE.md / AGENTS.md / project instructions.
- Add PR/MR evidence block to repository templates.

Wave 2 - Pilot execution:
- Run the Codex Maker prompt on one backend module and one frontend module.
- Run the Claude Checker prompt against the Codex output.
- Capture gaps, missing test scripts, deterministic fixture needs, and architecture-test requirements.

Wave 3 - CI alignment:
- Ensure test commands are represented in CI.
- Add architecture fitness jobs where missing.
- Add coverage, mutation, secret scan, SAST/SCA, policy, and evidence-pack outputs as appropriate.

Wave 4 - Team adoption:
- Require the two-loop workflow for production-bound features, high-risk fixes, MicroFunction changes, security-sensitive flows, and AI-assisted code generation.
- Review results in sprint retrospectives and improve the prompts when repeated gaps are found.

## 13. Obsidian Upload Guidance

Recommended Obsidian location:

AIRA Documentation/02-Developer-Execution/08A-AIRA_AI_Assisted_Unit_Testing_Maker_Checker_Prompt_Standard_v1.0.md

Recommended tags:
- #aira
- #unit-testing
- #maker-checker
- #codex
- #claude
- #avci
- #architecture-fitness
- #devsecops

Recommended links:
- [[08-AIRA_Unit_Testing_Standard_v3.1]]
- [[03-AIRA_Developer_Guide_v4.1]]
- [[04-AIRA_Technology_Stack_v9.0]]
- [[01-AIRA_AVCI_Engineering_Standard_v3.1]]
- [[01A-AIRA_Enterprise_Design_Principles_and_SOLID_Enforcement_Layer_v1.1]]
- [[20-AIRA_CICD_Pipeline_and_Evidence_Pack_Implementation_Guide]]

## 14. AVCI Compliance Summary

Attributable:
- This document has an owner, document ID, version, classification, source basis, intended audience, and accountable governance path.

Verifiable:
- The workflow requires explicit test commands, results, deterministic evidence, security/classification confirmation, architecture-fitness evidence, and PR/MR linkage.

Classifiable:
- The document is classified INTERNAL CONFIDENTIAL. The prompts prohibit production data, real PII, secrets, credentials, and Restricted content in tests or prompts.

Improvable:
- The second-loop checker report captures gaps, risks, follow-up backlog, refactoring opportunities, CI improvements, and prompt improvement candidates.

## Appendix A. Copy-Ready Prompt: Codex First-Loop Test Maker

```text
You are Codex acting as the FIRST-LOOP TEST MAKER for the AIRA AI-Native Enterprise Platform.

Your task is to review the current repository and create or improve unit tests for BOTH backend and frontend code in accordance with AIRA Unit Testing Engineering Standard v3.1, the AIRA Developer Guide, the AIRA Technology Stack v9.0, the AIRA AVCI Engineering Standard, and the Enterprise Design Principles / SOLID Enforcement Layer.

This is the MAKER loop only. The next loop will be performed by Claude as the independent CHECKER. Therefore, produce clean, reviewable test changes and a complete evidence summary that Claude can verify.

## 1. Mandatory AIRA Rules

Apply these rules strictly:

1. A change without trustworthy tests is not production-ready.
2. Tests must prove functional correctness and preservation of:
   - SOLID
   - Clean Architecture
   - DDD bounded contexts
   - Ports and Adapters
   - DRY, KISS, YAGNI
   - Idempotency
   - Determinism and reproducibility
   - Fail-safe behavior
   - Least privilege / SBAC
   - Separation of duties
   - Observability by design
   - Policy as code
   - Testability by design
   - Secure by design
   - Resilience
   - Architecture fitness functions
   - Reversibility / rollbackability
   - AVCI
3. Use synthetic test data only.
4. Do not use production data, customer data, real PII, secrets, tokens, credentials, raw logs, or restricted documents.
5. Tests must be deterministic:
   - No real system time inside unit tests.
   - Use fixed Clock or equivalent.
   - No uncontrolled randomness.
   - Use seeded UUIDs or deterministic IDs.
   - No real network calls.
   - No uncontrolled filesystem dependency.
   - No dependency on local machine state.
6. Do not weaken existing tests, CI gates, security checks, architecture checks, or coverage thresholds.
7. Do not bypass AIRA architecture to make tests pass.
8. Do not introduce business logic into controllers, UI components, adapters, DTOs, repositories, configuration classes, or tests.
9. Do not introduce direct model-provider SDK calls.
10. Do not introduce hardcoded credentials, URLs, model names, routes, or role logic.
11. Do not modify production behavior unless a minimal testability seam is required, and clearly explain the seam.

## 2. Repository Review Scope

Start by inspecting the repository structure and identify:

1. Backend services and modules.
2. Frontend apps and packages.
3. Existing test frameworks and test folders.
4. Current package boundaries and architecture rules.
5. Existing CI scripts or package/build commands.
6. Missing or weak test areas.
7. Any code that is difficult to test because it violates AIRA design principles.

Do not assume the structure. Infer it from the repository.

## 3. Backend Unit Testing Requirements

For backend code, assume the AIRA baseline unless the repository explicitly shows otherwise:

- Java 25 is the mandatory backend baseline.
- Spring Boot 4.x / Spring Framework 7.x where applicable.
- Java 21 may only appear as a documented compatibility fallback and must not be introduced silently.
- Use JUnit 5, Mockito or equivalent, AssertJ or equivalent, and ArchUnit where applicable.
- Use Testcontainers only for component/integration-style tests when required, not for pure unit tests.
- Use Spring test slices only when a Spring boundary must be tested.
- Prefer plain unit tests for domain and application logic.

Create or improve tests for the following backend areas where applicable:

1. Domain logic:
   - Business invariants
   - Value objects
   - Domain services
   - Monetary calculations using BigDecimal
   - State transitions
   - Validation and rejection rules

2. Application/use-case layer:
   - Command handling
   - Port invocation
   - Transactional orchestration behavior
   - Policy-decision handling
   - Workflow start behavior through ports
   - Audit call behavior through ports

3. Ports and adapters:
   - Adapter contract behavior
   - Mapping correctness
   - Error translation
   - Timeout/retry classification where applicable
   - No business semantics hidden inside adapters

4. Security and authorization:
   - Unauthorized action is denied
   - Wrong role/skill/scope is denied
   - Missing policy decision fails closed
   - Sensitive data is not leaked in error responses or logs
   - Classification handling is enforced

5. Idempotency and retry:
   - Duplicate command/event does not duplicate business effect
   - Retry path is safe
   - Idempotency key behavior is deterministic
   - Outbox/event intent is not duplicated

6. Error handling and compensation:
   - Validation failures
   - Business conflicts
   - Dependency failures
   - Policy failures
   - Safe problem response mapping
   - Compensation or forward-fix trigger where applicable

7. Observability and audit:
   - Trace/correlation ID propagation where testable
   - Audit event creation
   - Safe log/audit fields
   - No PII, secret, token, or restricted content leakage

8. Architecture fitness:
   - Domain must not depend on infrastructure, Spring Web, Kafka, Redis, OpenKM, LiteLLM provider SDKs, HTTP clients, or UI code.
   - Application layer must depend on ports, not concrete adapters.
   - Controllers must not contain business logic.
   - Business MicroFunctions must not directly access DB, Kafka, Redis, model providers, or external APIs.
   - Add or improve ArchUnit tests where feasible.

## 4. Frontend Unit Testing Requirements

For frontend code, assume the AIRA baseline unless the repository explicitly shows otherwise:

- React 19
- Next.js 16
- TypeScript 5.x
- Node.js 24 LTS
- Vitest or repository-approved equivalent
- React Testing Library for component behavior
- MSW or equivalent for API mocking where applicable
- Playwright only for E2E or critical flow tests, not as a replacement for unit/component tests

Create or improve tests for the following frontend areas where applicable:

1. Component behavior:
   - Rendering by state
   - Required fields
   - Validation messages
   - Disabled/enabled actions
   - Loading, empty, success, and error states
   - Accessibility-relevant labels and keyboard behavior where feasible

2. Form and validation logic:
   - Zod or schema validation where used
   - Boundary input
   - Invalid input
   - Sanitized display behavior
   - No unsafe HTML behavior

3. API interaction:
   - Generated client usage where applicable
   - Correct request shape
   - Correct handling of success, validation error, authorization error, conflict, and dependency failure
   - No invented endpoint paths, fields, or error codes
   - Mock network calls only; no real network calls

4. Security and privacy:
   - No token, secret, raw PII, or restricted data in browser storage tests
   - No unsafe localStorage/sessionStorage use for sensitive data
   - No raw sensitive data in logs or telemetry
   - Safe rendering of user-provided content

5. Frontend architecture:
   - UI components must not own server-side business rules.
   - UI components must not call databases, model providers, or backend infrastructure directly.
   - Domain-like validation should be in approved shared schemas or server-side logic.
   - Components should remain small, cohesive, and testable.

## 5. Test Design Method

Follow this sequence:

1. Inventory existing tests.
2. Identify high-risk untested behavior.
3. Add failing or missing tests first where feasible.
4. Implement minimal test support only if needed.
5. Keep tests behavior-focused, not implementation-private.
6. Prefer explicit Arrange-Act-Assert structure.
7. Use deterministic fixtures.
8. Use builders/factories only when they improve clarity.
9. Avoid over-mocking domain logic.
10. Mock external ports, adapters, API calls, policy clients, time, random IDs, and environment dependencies.
11. Run the relevant test commands.
12. Fix test failures without weakening AIRA controls.
13. Produce evidence.

## 6. Do Not Do

Do not:

1. Delete tests to make the suite pass.
2. Lower coverage, mutation, lint, security, or architecture thresholds.
3. Skip tests without justification.
4. Add brittle tests tied to private method order.
5. Use snapshots as the primary proof for critical behavior.
6. Use real network calls.
7. Use real credentials.
8. Use real customer or production data.
9. Hardcode time-sensitive expectations using the real clock.
10. Modify production code broadly just to fit tests.
11. Collapse architecture boundaries.
12. Add direct infrastructure dependencies into domain or application logic.
13. Add business logic to frontend components or controllers.
14. Add direct LLM/model-provider calls.
15. Mark unverified assumptions as facts.

## 7. Expected Deliverables

Produce the following repository changes where applicable:

1. Backend unit tests.
2. Backend architecture fitness tests.
3. Frontend unit/component tests.
4. Frontend API mocking tests.
5. Test fixtures/builders using synthetic data only.
6. Minimal testability seams only where justified.
7. Updated test scripts or documentation only if needed.
8. Evidence summary for checker review.

## 8. Required Output Format

After completing the work, provide a final report in this exact structure:

# AIRA Unit Testing Loop 1 - Codex Maker Report

## 1. Scope Reviewed
- Backend modules reviewed:
- Frontend modules reviewed:
- Test frameworks detected:
- Commands discovered:
- Commands executed:

## 2. Tests Added or Improved
| Area | File | Purpose | AIRA Control Proven |
|---|---|---|---|

## 3. Backend Coverage Summary
- Domain tests:
- Application/use-case tests:
- Port/adapter tests:
- Security/SBAC/policy tests:
- Idempotency/retry tests:
- Error/compensation tests:
- Observability/audit tests:
- ArchUnit/fitness tests:

## 4. Frontend Coverage Summary
- Component tests:
- Form/schema validation tests:
- API mocking tests:
- Error-state tests:
- Security/privacy tests:
- Accessibility-related tests:

## 5. Determinism Evidence
Confirm:
- Fixed Clock or equivalent used where needed:
- Seeded IDs/randomness used where needed:
- No real network dependency:
- No real filesystem dependency unless controlled:
- No environment-specific dependency:
- Synthetic data only:

## 6. Architecture and SOLID Evidence
Confirm:
- SOLID preserved or improved:
- Clean Architecture boundaries preserved:
- DDD bounded contexts preserved:
- Ports/adapters preserved:
- No business logic added to controllers/UI/adapters:
- No direct infrastructure dependency added to domain/application:
- No direct model-provider calls:

## 7. Security and Classification Evidence
Confirm:
- No secrets:
- No tokens:
- No real PII:
- No production/customer data:
- Classification-sensitive behavior tested where applicable:
- Unauthorized/fail-closed paths tested where applicable:

## 8. Commands and Results
List each command and result:

```bash
<command>
# result: pass/fail
```

## 9. Remaining Gaps for Claude Checker
List any unresolved gaps, weak areas, assumptions, flaky-test risks, missing fixtures, missing architecture tests, or areas requiring human decision.

## 10. AVCI Compliance Summary
- Attributable:
  - Owner / ticket / branch / files changed:
  - AI tool used: Codex
- Verifiable:
  - Tests added:
  - Tests executed:
  - CI/local evidence:
- Classifiable:
  - Data classification:
  - Test data classification:
  - Secrets/PII statement:
- Improvable:
  - Follow-up backlog:
  - Recommended next tests:
  - Refactoring opportunities:
  - Claude checker focus areas:

## 11. Checker Handoff Statement
State clearly whether this change is ready for the second-loop Claude maker-checker review.

Begin now by inspecting the repository and creating the first-loop AIRA-compliant unit testing changes.
```

## Appendix B. Copy-Ready Prompt: Claude Second-Loop Independent Test Checker

```text
You are Claude acting as the SECOND-LOOP INDEPENDENT TEST CHECKER for the AIRA AI-Native Enterprise Platform.

Codex has already performed the first-loop MAKER unit testing iteration. Your role is to independently review, verify, challenge, and improve the Codex test output for both backend and frontend.

This is a maker-checker control. Do not merely approve Codex output. Validate it against AIRA Unit Testing Engineering Standard v3.1, AIRA Developer Guide, AIRA Technology Stack v9.0, AVCI, SOLID, Clean Architecture, DDD, Ports and Adapters, secure-by-design, observability-by-design, reversibility, and architecture fitness expectations.

## 1. Inputs to Review

Review the following:

1. The current repository after Codex changes.
2. The Codex Maker Report.
3. Backend source code and tests.
4. Frontend source code and tests.
5. Test commands, package scripts, CI scripts, and build configuration.
6. Architecture fitness tests, if present.
7. Any Codex-stated gaps, assumptions, skipped tests, or weak areas.

## 2. Primary Checker Objective

Your objective is to determine whether the Codex-generated or Codex-improved tests are trustworthy, deterministic, architecture-aligned, secure, and sufficient for the current change scope.

You must verify that the tests prove not only functional correctness, but also preservation or improvement of:

- SOLID
- Clean Architecture
- DDD bounded contexts
- Ports and Adapters
- Determinism and reproducibility
- Idempotency
- Fail-safe behavior
- Least privilege / SBAC
- Separation of duties
- Observability
- Policy as code
- Testability
- Security posture
- Resilience
- Architecture fitness functions
- Reversibility / rollbackability
- AVCI evidence

## 3. Checker Responsibilities

Perform the following:

1. Inspect Codex test changes.
2. Validate whether the tests actually test behavior, not implementation accidents.
3. Identify missing happy paths, unhappy paths, boundary conditions, authorization failures, error paths, retry/idempotency paths, and observability/audit paths.
4. Confirm that tests are deterministic:
   - No real clock dependency.
   - No uncontrolled random values.
   - No real network calls.
   - No real production data.
   - No secrets.
   - No environment-specific assumptions.
5. Confirm that frontend tests use mocked APIs and do not call real services.
6. Confirm that backend unit tests mock ports/adapters instead of using real infrastructure.
7. Confirm that architecture boundaries are not weakened.
8. Confirm that Codex did not lower test quality gates, skip tests, delete important tests, or add superficial tests.
9. Add or improve tests where Codex missed material coverage.
10. Do not rewrite everything unnecessarily. Apply targeted improvements.
11. Run the relevant test commands.
12. Produce a checker verdict.

## 4. Backend Verification Requirements

For backend code, verify:

1. Domain tests cover:
   - Business rules
   - Value objects
   - Monetary calculations using BigDecimal where applicable
   - State transitions
   - Invalid and boundary inputs

2. Application/use-case tests cover:
   - Command handling
   - Policy checks
   - Port invocation
   - Workflow or audit port behavior
   - Safe failure behavior

3. Security tests cover:
   - Unauthorized access
   - Missing skill/role/scope
   - Policy failure
   - Fail-closed behavior
   - Sensitive data non-leakage

4. Idempotency and retry tests cover:
   - Duplicate commands/events
   - Replay safety
   - Downstream failure behavior
   - No duplicate business effects

5. Error handling tests cover:
   - Validation errors
   - Business conflicts
   - Dependency failures
   - Safe error response mapping
   - Compensation or forward-fix trigger where applicable

6. Architecture fitness tests verify:
   - Domain does not depend on infrastructure.
   - Application depends on ports, not concrete adapters.
   - Controllers do not contain business logic.
   - Adapters do not own domain decisions.
   - No direct model-provider SDK calls.
   - No direct database, Kafka, Redis, OpenKM, LiteLLM provider, or HTTP client dependencies in domain logic.

## 5. Frontend Verification Requirements

For frontend code, verify:

1. Component tests cover:
   - Loading state
   - Empty state
   - Success state
   - Error state
   - Disabled/enabled actions
   - Required field behavior
   - User interaction behavior

2. Form and validation tests cover:
   - Valid input
   - Invalid input
   - Boundary input
   - Schema validation
   - Safe display behavior

3. API interaction tests cover:
   - Mocked success response
   - Mocked validation error
   - Mocked authorization error
   - Mocked conflict/error response
   - No real network calls
   - No invented API paths or response fields

4. Security/privacy tests cover:
   - No unsafe HTML rendering
   - No token or secret exposure
   - No raw PII in logs, storage, telemetry, or test fixtures
   - No sensitive data stored in localStorage/sessionStorage unless explicitly approved and safe

5. Frontend architecture checks confirm:
   - UI components do not own server-side business rules.
   - UI does not call database, model provider, or infrastructure directly.
   - API access uses approved clients or repository patterns.
   - Components remain small, cohesive, and testable.

## 6. AIRA Rejection Conditions

Reject or flag the Codex output if any of the following are found:

1. Tests pass but do not prove meaningful behavior.
2. Tests rely on real time, real network, uncontrolled randomness, or local environment state.
3. Test data contains production data, real PII, secrets, tokens, credentials, or restricted content.
4. Coverage was inflated through shallow tests.
5. Existing meaningful tests were deleted or weakened.
6. Architecture boundaries were bypassed.
7. Business logic was added to controllers, frontend components, adapters, DTOs, or repositories.
8. Security failures are treated as generic success or ignored.
9. Policy, guardrail, authorization, audit, or classification failure does not fail closed.
10. Direct model-provider calls were introduced.
11. Frontend tests call real backend services.
12. Backend unit tests require real infrastructure without justification.
13. No evidence summary was provided.
14. AVCI compliance cannot be verified.

## 7. Corrective Action Rules

If you find gaps:

1. Add or improve the minimum necessary tests.
2. Prefer targeted test improvements over broad rewrites.
3. Preserve existing valid Codex tests.
4. Do not lower standards to make tests pass.
5. Do not hide uncertainty.
6. If production code requires a testability seam, make it minimal and explain why.
7. If a gap requires human architecture decision, document it clearly instead of silently choosing.
8. If a gap requires ADR/TDL/waiver, identify the trigger.

## 8. Commands to Run

Discover the correct repository commands before running tests.

Where applicable, run:

Backend:
```bash
./gradlew test
./gradlew check
./gradlew archTest
./gradlew jacocoTestReport
```

or Maven equivalents if the repository uses Maven.

Frontend:
```bash
npm test
npm run test
npm run test:unit
npm run test:coverage
npm run lint
npm run typecheck
```

or pnpm/yarn equivalents if used.

Run only commands that exist or are clearly supported by the repository.

## 9. Required Final Output

After completing the checker review, provide the report in this exact structure:

# AIRA Unit Testing Loop 2 - Claude Checker Report

## 1. Checker Scope
- Codex report reviewed: yes/no
- Backend modules reviewed:
- Frontend modules reviewed:
- Test frameworks detected:
- Commands executed:

## 2. Checker Verdict
Choose one:

- APPROVED FOR PR REVIEW
- APPROVED WITH MINOR FOLLOW-UP
- REQUIRES CODING REMEDIATION
- REJECTED - TESTING NOT TRUSTWORTHY

Explain the reason briefly.

## 3. Codex Output Assessment
| Area | Checker Finding | Status |
|---|---|---|
| Backend unit tests |  | Pass/Gap/Fail |
| Frontend unit tests |  | Pass/Gap/Fail |
| Determinism |  | Pass/Gap/Fail |
| Security/classification |  | Pass/Gap/Fail |
| Architecture fitness |  | Pass/Gap/Fail |
| AVCI evidence |  | Pass/Gap/Fail |

## 4. Tests Added or Corrected by Claude
| File | Change Made | Reason | AIRA Control Proven |
|---|---|---|---|

## 5. Backend Checker Findings
- Domain logic:
- Application/use-case logic:
- Ports/adapters:
- Security/SBAC/policy:
- Idempotency/retry:
- Error/compensation:
- Observability/audit:
- Architecture fitness:

## 6. Frontend Checker Findings
- Component behavior:
- Form/schema validation:
- API mocking:
- Error handling:
- Security/privacy:
- Accessibility:
- Frontend architecture:

## 7. Determinism and Synthetic Data Confirmation
Confirm:
- Fixed time used where needed:
- Randomness controlled:
- Network calls mocked:
- Filesystem dependency controlled:
- Environment dependency controlled:
- Synthetic data only:
- No secrets/PII/customer data:

## 8. Architecture and SOLID Confirmation
Confirm:
- SOLID preserved:
- Clean Architecture preserved:
- DDD boundaries preserved:
- Ports/adapters preserved:
- No controller business logic:
- No frontend business-rule ownership:
- No direct model-provider calls:
- No infrastructure dependency added to domain/application:

## 9. Commands and Results
List each command and result:

```bash
<command>
# result: pass/fail
```

## 10. Remaining Risks and Required Follow-Up
List unresolved issues, missing tests, flaky risks, architecture questions, ADR/TDL needs, waiver needs, or human-review triggers.

## 11. AVCI Compliance Summary
- Attributable:
  - Maker: Codex
  - Checker: Claude
  - Files reviewed:
  - Files changed by checker:
- Verifiable:
  - Tests reviewed:
  - Tests added/updated:
  - Commands executed:
  - Evidence result:
- Classifiable:
  - Test data classification:
  - Secrets/PII/customer-data statement:
  - Model/tool route statement:
- Improvable:
  - Follow-up backlog:
  - Additional fitness tests recommended:
  - Refactoring opportunities:
  - CI improvements recommended:

## 12. Final Checker Statement
State clearly whether the repository is ready for human PR review, requires further Codex remediation, or requires architecture/security decision before continuing.

Begin now by reviewing the Codex maker output and the repository.
```

## Appendix C. PR/MR Testing Evidence Block

```markdown
### AIRA Test and Architecture Evidence Summary
- Ticket / ADR / TDL:
- Change type: code | config | migration | prompt | guardrail | policy | MicroFunction | infrastructure
- Codex Maker report attached: yes/no
- Claude Checker report attached: yes/no
- Tests added or updated:
- Backend commands executed:
- Frontend commands executed:
- Architecture fitness checks:
- SOLID impact: preserved | improved | exception requested
- Clean Architecture / DDD / Ports-and-Adapters impact:
- Idempotency / determinism evidence:
- Security / SBAC / OPA evidence:
- Observability / audit evidence:
- Reversibility / rollback / compensation evidence:
- AI tool involvement: Codex | Claude | other approved tool
- Human checker:
- AVCI summary: Attributable | Verifiable | Classifiable | Improvable
```


