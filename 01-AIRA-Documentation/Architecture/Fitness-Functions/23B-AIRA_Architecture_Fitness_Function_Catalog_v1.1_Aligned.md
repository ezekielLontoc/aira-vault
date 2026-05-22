---
document_id: "AIRA-DOC-023B"
title: "AIRA Architecture Fitness Function Catalog"
version: "v1.1"
status: "aligned"
source_file: "23B-AIRA_Architecture_Fitness_Function_Catalog_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Architecture/Fitness-Functions"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - fitness-functions
  - architecture
---

# AIRA Architecture Fitness Function Catalog

**AIRA**

AI-Native Enterprise Platform

**AIRA Architecture Fitness Function Catalog**

_Automated Architecture Checks | SOLID Gates | Boundary Verification | CI Evidence_

**v1.1 - Canonical 23B Numbering and Java 25 Fitness Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-023BB** |
| **Document Title** | **AIRA Architecture Fitness Function Catalog** |
| **Document Version** | **v1.1 - Canonical 23B Numbering and Java 25 Fitness Alignment Update** |
| **Supersedes** | **23-AIRA_Architecture_Fitness_Function_Catalog_v1.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Database Administration; Platform Engineering; AI Engineering; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material MicroFunction, security, database, workflow, AI, Java/runtime, or architecture-governance change** |
| **Pack Context** | **Pack 04 v1.2 individual aligned file generated from Pack 04 v1.1 aligned source pack and synchronized against Packs 01, 02, 03, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend services, MicroFunction engine code, service templates, test fixtures, and CI evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Renumbered from duplicate Document 23 to 23B to avoid collision with Pack 03 23A Login PoC source-code generation standard.** |

**Configure First · Code Only the Business Gap · Govern Every Step · AVCI Always**

## Pack 04 v1.2 Cross-Pack Alignment and Improvement Notice

**Purpose. **This aligned version updates the individual Pack 04 source document so it can be uploaded to Obsidian as a standalone MicroFunction Framework artifact while remaining synchronized with the current AIRA source baseline, the completed Pack 01 through Pack 03 v1.2 individual outputs, and Pack 05 data/API/security/decision controls.

**Document role. **Defines architecture fitness functions that continuously verify SOLID, Clean Architecture, DDD, ports/adapters, security, testability, observability, and rollback controls.

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

Renumbered from Document 23 to 23B to complete cross-pack numbering cleanup after Pack 03 assigned 23A to Login PoC source generation.

Added Java 25-specific architecture fitness expectations for backend services, packages, records/sealed types, forbidden imports, and dependency direction.

Improved fitness coverage for MicroFunction boundaries, direct provider SDK prevention, direct DB/Kafka/Redis/OpenKM access prevention, and cross-context write detection.

Aligned fitness-function output with CI/CD evidence packs, GitNexus read-only impact analysis, SonarQube/Semgrep, ArchUnit, OPA/Conftest, Flyway validation, and contract tests.

Clarified waiver handling: failed fitness functions cannot be ignored; waivers require owner, risk, expiry, compensating control, and remediation plan.

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

**Architecture Fitness Function Catalog**

**Executable Architecture Controls | SOLID Enforcement | AVCI Evidence**

**Version 1.1 | April 2026 | INTERNAL CONFIDENTIAL**

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-023B |
| Document Title | AIRA Architecture Fitness Function Catalog |
| Version | v1.1 - Initial Implementation Baseline |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION |
| Owner | Solutions Architecture Office / AI-Native Platform Architecture |
| Effective Date | On CAB / Architecture Review Board approval |
| Review Cadence | Quarterly; unscheduled on material architecture, tooling, security, AI, or regulatory change |
| Audience | Solutions Architect / IT Head, Enterprise Architects, Software Development Leads, Developers, DevSecOps, QA/SDET, Security, DBA, SRE, Internal Audit |
| Companion Documents | 01A Enterprise Design Principles and SOLID Enforcement Layer; 01 AVCI v3.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 08 Unit Testing v3.1; 20 CI/CD Pipeline and Evidence Pack; 22 Prompt/Guardrail/Model Registry |
| Purpose | Define the executable architecture fitness functions used to continuously validate SOLID, Clean Architecture, DDD boundaries, security, testability, reversibility, observability, and AVCI evidence across AIRA. |

**Mandatory Practice Statement**

No AIRA code, configuration, prompt, guardrail, model route, database migration, MicroFunction, contract, infrastructure change, or AI-assisted remediation is production-ready unless the mandatory architecture fitness functions pass or a formal, time-bound waiver is approved. Fitness functions are executable governance controls, not optional review suggestions.

## **Table of Contents**

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Fitness Function Operating Model

## 4. Enforcement Levels and Toolchain

## 5. Architecture Fitness Function Catalog

## 6. SOLID and Clean Architecture Fitness Functions

## 7. DDD, Ports-and-Adapters, and Boundary Fitness Functions

## 8. Security, AI, and Policy Fitness Functions

## 9. Data, API, Workflow, and MicroFunction Fitness Functions

## 10. Testing, Determinism, Idempotency, and Resilience Fitness Functions

## 11. Observability, Reversibility, and AVCI Evidence Fitness Functions

## 12. Auto-Heal, Auto-Learn, and Auto-Improve Fitness Gates

## 13. CI/CD Integration and Evidence Manifest

## 14. Waivers, Exceptions, and Non-Conformance

## 15. RACI and Operating Responsibilities

## 16. Implementation Roadmap and Acceptance Criteria

Appendix A. Copy-Ready ArchUnit Examples

Appendix B. Copy-Ready Semgrep Rules

Appendix C. Copy-Ready OPA/Rego Policies

Appendix D. Mermaid Diagram References

Appendix E. AVCI Compliance Summary

## **1. Executive Summary**

AIRA is a regulated AI-native platform where architecture quality must be measurable, repeatable, and enforceable. This catalog defines the architecture fitness functions that transform the Enterprise Design Principles and SOLID Enforcement Layer into automated and reviewable controls.

Fitness functions are tests, policies, scans, inspections, and evidence gates that continuously verify whether a system remains aligned with its intended architecture. They protect AIRA from silent erosion: misplaced business logic, cross-context data access, direct model provider calls, missing idempotency, unobservable changes, insecure shortcuts, unreviewed AI improvements, and unrecoverable production changes.

The catalog is designed for daily engineering use. Developers run a subset locally through pre-commit and IDE checks. CI/CD runs the full mandatory set. Architecture, Security, QA, and DevSecOps review evidence before protected merges, promotions, and production-impacting changes.

| **Strategic Outcome** | **How This Catalog Delivers It** |
| --- | --- |
| Architecture drift prevention | Detects boundary violations, dependency direction errors, cross-context writes, direct provider SDK use, and unsupported shortcuts before merge. |
| Executable SOLID enforcement | Converts SOLID, Clean Architecture, DDD, and ports-and-adapters into checks that can be tested, reviewed, and evidenced. |
| AI-safe remediation | Prevents Auto-Heal, Auto-Learn, and Auto-Improve from weakening architecture boundaries, security posture, tests, observability, rollbackability, or AVCI. |
| Audit-ready evidence | Produces a fitness evidence pack linked to ticket, commit, PR/MR, pipeline, policy version, reviewer, and waiver status. |
| Continuous improvement | Turns repeated fitness failures into backlog items, ADR/TDL updates, training needs, and updated repository rules. |

## **2. Purpose, Scope, and Authority**

### **2.1 Purpose**

This catalog defines the mandatory and recommended architecture fitness functions for AIRA. It identifies what each function checks, when it runs, who owns it, which tools enforce it, what causes rejection, and what evidence must be retained.

### **2.2 In Scope**

Java, TypeScript, Python, SQL, YAML, Dockerfile, Helm, Kubernetes, GitHub/GitLab workflow, prompt, guardrail, model-alias, MicroFunction, and documentation changes that influence AIRA system behaviour.

Fitness functions executed locally, in CI/CD, during architecture review, in pre-release validation, and during Auto-Heal / Auto-Improve review.

Architecture, security, testability, resilience, observability, data, API, workflow, AI, and AVCI evidence controls.

### **2.3 Out of Scope**

Business feature prioritization, except where a feature attempts to bypass architecture rules.

Manual UAT sign-off, except where UAT evidence feeds release readiness.

Physical data center controls, except where infrastructure fitness evidence is required for platform readiness.

### **2.4 Authority and Conflict Resolution**

| **Level** | **Authority** | **Role** |
| --- | --- | --- |
| L0 | Architecture Board / approved Blueprint | Defines intended architecture and boundary decisions. |
| L1 | 01A Enterprise Design Principles and SOLID Enforcement Layer | Defines the mandatory principles this catalog enforces. |
| L2 | This Fitness Function Catalog | Defines executable checks and acceptance criteria. |
| L3 | Repository CLAUDE.md, CI pipelines, OPA policies, ArchUnit/Semgrep rules | Implements the functions in code and automation. |
| L4 | Waiver / exception records | May temporarily accept risk but cannot silently weaken the standard. |

## **3. Fitness Function Operating Model**

A fitness function is an executable or reviewable assertion about the architecture. AIRA uses six control layers: repository rules, static analysis, policy-as-code, test evidence, runtime evidence, and knowledge feedback.

![[attachments/23B-AIRA_Architecture_Fitness_Function_Catalog_v1.1_Aligned/image25.png]]

Figure 1. AIRA Fitness Function Control Layers

### **3.1 Fitness Function Types**

| **Type** | **Purpose** | **Example Tools** |
| --- | --- | --- |
| Static structure | Checks dependencies, packages, imports, annotations, direct SDK usage, folder boundaries, naming, and forbidden APIs. | ArchUnit, Semgrep, SonarQube, dependency graph |
| Policy-as-code | Checks authorization, admission, IaC, environment, model routing, and action permission rules. | OPA/Rego, Conftest, Gatekeeper, Harness policy |
| Behavioral tests | Checks idempotency, determinism, error paths, compensation, retry, fallback, and rollback behaviour. | JUnit, Vitest, Playwright, Testcontainers, mutation testing |
| Contract tests | Checks APIs, events, schemas, error contracts, backward compatibility, and consumer expectations. | OpenAPI/AsyncAPI linters, Pact, Spring Cloud Contract |
| Evidence checks | Checks that evidence exists, is linked, complete, classified, retained, and reviewable. | CI evidence manifest, PR template validation, audit store |
| Runtime fitness | Checks production signals, SLOs, policy decisions, logs, traces, audit, and drift indicators. | OpenTelemetry, Prometheus, Loki, Tempo, Sentry, Grafana |

### **3.2 Mandatory Rejection Rule**

A critical or high-severity fitness failure blocks merge or promotion. The only exception is a formal waiver that states owner, reason, risk, expiry date, compensating control, remediation ticket, and approval authority. Waivers must be visible in the PR/MR evidence pack and must not permit direct production bypass of identity, guardrail, audit, or policy controls.

## **4. Enforcement Levels and Toolchain**

| **Level** | **Meaning** | **Required Action** |
| --- | --- | --- |
| Advisory | Reports issue but does not block. Used for early adoption and low-risk maintainability signals. | Backlog item or refactor recommendation. |
| Warning | Allows merge only with reviewer acknowledgement. Used for medium-risk drift where compensating evidence exists. | Reviewer records disposition in PR/MR. |
| Blocking | Fails pre-commit or CI. Used for architecture, security, data, AI, tests, and evidence violations. | Fix required before merge or formal waiver. |
| Quarantine | Stops deployment or disables artifact from promotion. Used for secrets, direct provider calls, Restricted data leaks, policy bypass, or broken guardrails. | Security/Architecture escalation required. |

### **4.1 Recommended Toolchain**

| **Tool / Control** | **Primary Fitness Role** |
| --- | --- |
| ArchUnit | Java architecture boundaries, dependency direction, annotation rules, package rules. |
| SonarQube / SonarCloud | Maintainability, duplication, complexity, security hotspots, quality gate. |
| Semgrep | Forbidden imports, direct SDK calls, unsafe patterns, logging leaks, framework bypass. |
| OPA / Conftest | Policy-as-code checks for IaC, model routing, SBAC, waivers, deployment rules. |
| OpenAPI / AsyncAPI Linters | Contract completeness, versioning, error shape, security schemes, compatibility. |
| JUnit / Vitest / Playwright | Unit, component, frontend, workflow, idempotency, rollback, and regression tests. |
| Mutation Testing | Verifies that tests actually detect behavioural changes. |
| OpenTelemetry / Observability Checks | Verifies trace, metric, log, audit, and correlation requirements. |
| Trivy / Gitleaks / Syft / Cosign | Container, secret, dependency, SBOM, and provenance fitness. |
| Custom AIRA Evidence Validator | Validates PR/MR AVCI summary, evidence manifest, fitness function results, and waiver records. |

![[attachments/23B-AIRA_Architecture_Fitness_Function_Catalog_v1.1_Aligned/image26.png]]

Figure 2. Architecture Fitness Function Enforcement Pipeline

## **5. Architecture Fitness Function Catalog**

The catalog below defines the initial AIRA baseline. Project teams may add stricter service-specific fitness functions, but they may not remove or weaken mandatory functions without formal approval.

| **ID** | **Fitness Function** | **Primary Principle** | **Tool / Evidence** | **Trigger** | **Reject Condition** |
| --- | --- | --- | --- | --- | --- |
| AFF-001 | Single Responsibility enforcement for services, MicroFunctions, adapters, policies, and prompts. | SOLID / SRP | ArchUnit, code review, Sonar complexity | Every PR/MR | Class mixes controller, domain, persistence, workflow, or AI routing concerns. |
| AFF-002 | Open/Closed and extension-by-configuration for MicroFunctions and policies. | SOLID / OCP | Catalog validator, tests | MicroFunction/config change | Change hardcodes process sequence instead of approved config/rule extension. |
| AFF-003 | Liskov-safe contracts and DTO compatibility. | SOLID / LSP | Contract tests, schema compatibility | API/event change | Subtype/implementation breaks declared contract or consumer expectations. |
| AFF-004 | Interface segregation for ports, adapters, and clients. | SOLID / ISP | ArchUnit, code review | Service/client change | Large generic interface forces unrelated dependencies or permissions. |
| AFF-005 | Dependency inversion: domain cannot depend on infrastructure frameworks. | SOLID / DIP | ArchUnit | Every backend PR | Domain package imports Spring Web, JPA repository, Kafka, Vault, LiteLLM, OpenKM, or provider SDK. |
| AFF-006 | Clean Architecture ring direction enforcement. | Clean Architecture | ArchUnit, dependency graph | Every backend PR | Outer layer is referenced by inner layer or business logic leaks to controller/adapters. |
| AFF-007 | Bounded context ownership and no cross-context writes. | DDD / Bounded Contexts | DB policy, API contract, ArchUnit | DB/API PR | Service writes another context schema or bypasses API/event boundary. |
| AFF-008 | Ports-and-adapters boundary for external systems. | Ports and Adapters | ArchUnit, Semgrep | Integration change | External HTTP, DB, OpenKM, model, Kafka, Vault call appears inside domain logic. |
| AFF-009 | DRY/KISS/YAGNI complexity and duplication gate. | DRY/KISS/YAGNI | SonarQube, review | Every PR/MR | Duplicate standard concern, speculative abstraction, or unnecessary framework added. |
| AFF-010 | Idempotency for mutations, workflows, consumers, and external calls. | Idempotency by Design | Tests, DB constraints, outbox evidence | Mutation path | No idempotency key, processed-event registry, natural key, or compensation path. |
| AFF-011 | Deterministic build, test, migration, and AI evaluation. | Determinism/Reproducibility | CI logs, pinned versions, test controls | Every pipeline | Unpinned dependency, real clock/random/network in unit tests, non-repeatable eval. |
| AFF-012 | Fail-safe not fail-open for critical dependencies. | Fail-Safe | Resilience tests, OPA checks | Security/AI path | OPA, Vault, LiteLLM, Guardrails, Harness, identity, or audit failure allows protected action. |
| AFF-013 | Human-in-the-loop for high-risk or low-confidence actions. | Human-in-the-Loop | Flowable evidence, Harness log | AI/tool action | High-risk change proceeds without named human approval. |
| AFF-014 | Least privilege and SBAC action eligibility. | Least Privilege / SBAC | OPA, SBAC registry, audit | Tool/action PR | Role, service, or agent can perform action beyond approved skill/scope. |
| AFF-015 | Separation of duties through CODEOWNERS and review gates. | Separation of Duties | CODEOWNERS, branch protection | Protected path change | Maker self-approves or required owner/security/DBA/QA review missing. |
| AFF-016 | Observability by design for every controlled path. | Observability | OTel checks, log schema tests | Service/workflow change | No trace_id, span, metric, audit event, error code, or SLO signal. |
| AFF-017 | Policy-as-code over hidden decision logic. | Policy as Code | OPA/Rego tests, review | Authorization/policy change | Business/security policy hardcoded where OPA/DMN/rule table is required. |
| AFF-018 | Testability by design and changed-line coverage. | Testability | Unit/contract/mutation coverage | Every PR/MR | Untestable design, no tests for changed behavior, or missing negative/error paths. |
| AFF-019 | Secure-by-design and no sensitive leakage. | Secure by Design | Semgrep, Gitleaks, SAST | Every PR/MR | Secret/PII in code, logs, tests, prompts, examples, cache keys, or telemetry. |
| AFF-020 | Resilience pattern coverage for external dependencies. | Resilience Patterns | Resilience4j tests, chaos subset | External call change | No timeout, retry, circuit breaker, fallback, bulkhead, or DLQ policy. |
| AFF-021 | Architecture fitness function evidence exists. | Architectural Fitness Functions | Evidence manifest validator | Every PR/MR | Required AFF results absent, stale, not linked, or unauditable. |
| AFF-022 | Progressive autonomy gate for agents. | Progressive Autonomy | Trust score, Harness audit | AI action change | Agent authority exceeds trust, skill, risk tier, or human-approval threshold. |
| AFF-023 | Rollbackability or forward-fix plan. | Reversibility/Rollbackability | Deployment plan, migration test | Release/promotion | No rollback, compensation, forward-fix, or recovery evidence. |
| AFF-024 | AVCI completeness for every material artifact. | AVCI | PR template, evidence schema | Every PR/MR | Owner, evidence, classification, or improvement path missing. |
| AFF-025 | No direct LLM provider SDK or uncontrolled model call. | AI governance | Semgrep, dependency scan | AI/code PR | Application imports provider SDK or bypasses LiteLLM/guardrails. |
| AFF-026 | Guardrails four-checkpoint enforcement. | AI safety | Guardrail tests, config validator | AI prompt/model change | Input, Retrieval, Execution, or Output checkpoint missing or bypassable. |
| AFF-027 | Contract-first API and event governance. | API discipline | OpenAPI/AsyncAPI linters | API/event PR | Endpoint/topic/schema added without approved contract and tests. |
| AFF-028 | Database migration governance and expand/contract safety. | Database discipline | Flyway validation, migration tests | DB PR | Manual DDL, destructive migration, no rollback/forward-fix, no owner/classification. |
| AFF-029 | MicroFunction mandatory standard-step validation. | MicroFunction | Publish validator, tests | Process config change | Sequence omits receive, correlate, session, security, validation, audit, error path, or response. |
| AFF-030 | Knowledge and retrieval provenance validation. | Knowledge governance | LLM Wiki metadata, retrieval tests | Knowledge/AI change | Output or curated knowledge lacks source, version, classification, citation, or review state. |

## **6. SOLID and Clean Architecture Fitness Functions**

SOLID enforcement in AIRA is not a style preference. It is a maintainability and safety gate. Business logic must remain small, cohesive, testable, and isolated from infrastructure concerns. Clean Architecture dependency direction must be enforced automatically wherever possible.

| **Control Area** | **Requirement** |
| --- | --- |
| Mandatory Checks | Run blocking checks for critical architecture, security, data, AI, and evidence violations. |
| Recommended Checks | Run warning/advisory checks for maintainability, duplication, complexity, and drift trends. |
| Evidence Required | Store result status, tool version, ruleset version, commit, PR/MR, owner, reviewer, timestamp, and waiver reference if any. |

## **7. DDD, Ports-and-Adapters, and Boundary Fitness Functions**

A bounded context owns its language, data model, schema, APIs, events, and invariants. Cross-context access happens through approved contracts and events. Ports-and-adapters isolates external systems so domain rules are not coupled to transport, persistence, AI providers, or vendor APIs.

| **Control Area** | **Requirement** |
| --- | --- |
| Mandatory Checks | Run blocking checks for critical architecture, security, data, AI, and evidence violations. |
| Recommended Checks | Run warning/advisory checks for maintainability, duplication, complexity, and drift trends. |
| Evidence Required | Store result status, tool version, ruleset version, commit, PR/MR, owner, reviewer, timestamp, and waiver reference if any. |

## **8. Security, AI, and Policy Fitness Functions**

AI-native capability increases the need for strict boundaries. Fitness functions must detect direct provider SDK usage, guardrail bypass, missing SBAC, excessive agent authority, secrets leakage, direct production tooling, and policy-as-code gaps.

| **Control Area** | **Requirement** |
| --- | --- |
| Mandatory Checks | Run blocking checks for critical architecture, security, data, AI, and evidence violations. |
| Recommended Checks | Run warning/advisory checks for maintainability, duplication, complexity, and drift trends. |
| Evidence Required | Store result status, tool version, ruleset version, commit, PR/MR, owner, reviewer, timestamp, and waiver reference if any. |

## **9. Data, API, Workflow, and MicroFunction Fitness Functions**

Data, contract, workflow, and MicroFunction checks protect enterprise consistency. Mutations require idempotency, events require contracts, database changes require Flyway evidence, Temporal handles machine durability, Flowable handles human approvals, and MicroFunctions must use the standard execution envelope.

| **Control Area** | **Requirement** |
| --- | --- |
| Mandatory Checks | Run blocking checks for critical architecture, security, data, AI, and evidence violations. |
| Recommended Checks | Run warning/advisory checks for maintainability, duplication, complexity, and drift trends. |
| Evidence Required | Store result status, tool version, ruleset version, commit, PR/MR, owner, reviewer, timestamp, and waiver reference if any. |

## **10. Testing, Determinism, Idempotency, and Resilience Fitness Functions**

AIRA tests must be deterministic and evidence-producing. Fitness functions reject uncontrolled clocks, random values, real network calls in unit tests, incomplete error paths, missing retry/fallback tests, and insufficient changed-line coverage for high-risk changes.

| **Control Area** | **Requirement** |
| --- | --- |
| Mandatory Checks | Run blocking checks for critical architecture, security, data, AI, and evidence violations. |
| Recommended Checks | Run warning/advisory checks for maintainability, duplication, complexity, and drift trends. |
| Evidence Required | Store result status, tool version, ruleset version, commit, PR/MR, owner, reviewer, timestamp, and waiver reference if any. |

## **11. Observability, Reversibility, and AVCI Evidence Fitness Functions**

Every material change must be observable, recoverable, and evidentiary. The absence of trace IDs, audit records, error codes, rollback plans, compensation paths, or AVCI evidence is a production-readiness defect.

| **Control Area** | **Requirement** |
| --- | --- |
| Mandatory Checks | Run blocking checks for critical architecture, security, data, AI, and evidence violations. |
| Recommended Checks | Run warning/advisory checks for maintainability, duplication, complexity, and drift trends. |
| Evidence Required | Store result status, tool version, ruleset version, commit, PR/MR, owner, reviewer, timestamp, and waiver reference if any. |

## **12. Auto-Heal, Auto-Learn, and Auto-Improve Fitness Gates**

Auto-Heal, Auto-Learn, and Auto-Improve must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. AIRA rejects improvements that make the system harder to understand, test, audit, secure, or roll back.

![[attachments/23B-AIRA_Architecture_Fitness_Function_Catalog_v1.1_Aligned/image27.png]]

Figure 3. Auto-Heal / Auto-Improve Fitness Gate

| **Capability** | **Required Fitness Proof** | **Reject If** |
| --- | --- | --- |
| Auto-Heal | Fix must be minimal, evidence-based, tested, idempotent, secure, observable, reversible, and reviewed. | Block if it hides root cause, bypasses policy, weakens tests, or changes production without approved path. |
| Auto-Learn | Learning output must be sourced, cited, classified, reviewed, non-conflicting, and linked to an approved knowledge artifact. | Block if it promotes stale, unverified, unclassified, or contradictory knowledge. |
| Auto-Improve | Improvement must reduce measurable risk, defect rate, complexity, latency, cost, or maintainability debt without weakening controls. | Block if it adds speculative abstraction, expands privilege, reduces observability, or lacks rollback evidence. |

## **13. CI/CD Integration and Evidence Manifest**

The CI/CD pipeline must publish a fitness evidence manifest for every protected merge and promotion. The manifest is stored with the build evidence pack and referenced by the PR/MR AVCI Compliance Summary.

fitness_evidence:

artifact_id: AFF-EVID-2026-0001

repository: aira-platform

commit_sha: <sha>

pull_request: <url-or-id>

pipeline_run: <run-id>

ruleset_version: aira-aff-v1.1

classification: INTERNAL

required_functions:

- id: AFF-001

status: PASS

tool: archunit

evidence_ref: evidence/archunit-results.xml

- id: AFF-025

status: PASS

tool: semgrep

evidence_ref: evidence/semgrep.json

waivers: []

reviewer:

architecture: <name>

security: <name-if-required>

qa: <name>

decision: APPROVED_FOR_MERGE

| **Pipeline Stage** | **Fitness Evidence Requirement** |
| --- | --- |
| Pre-commit | Run fast checks: formatting, forbidden patterns, secrets, direct provider SDK imports, basic evidence template. |
| Pull Request | Run full static, policy, test, contract, and architecture fitness set. Require CODEOWNERS approval. |
| Merge to main | Generate signed evidence manifest, SBOM, provenance, and immutable audit reference. |
| Release candidate | Run promotion checks, rollback readiness, environment policy, migration compatibility, and smoke tests. |
| Production promotion | Require CAB/approval evidence, deployment plan, observability readiness, and post-deploy verification. |

## **14. Waivers, Exceptions, and Non-Conformance**

Waivers are controlled exceptions, not informal permissions. A waiver must never permit direct production bypass of identity, guardrails, audit, secrets, policy, or classification controls. Waivers expire and must carry remediation evidence.

| **Required Field** | **Meaning** |
| --- | --- |
| Waiver ID | Unique ID linked to ticket/ADR/TDL and PR/MR. |
| Affected Fitness Function | AFF ID, description, severity, and reason for temporary exception. |
| Risk Acceptance | Named risk owner, business justification, compensating controls, and expiry date. |
| Approvals | Architecture plus Security/QA/DBA/CAB depending on domain. |
| Remediation Plan | Concrete task, owner, target date, and evidence required to close waiver. |

## **15. RACI and Operating Responsibilities**

| **Role** | **RACI** | **Responsibility** |
| --- | --- | --- |
| Solutions Architect / IT Head | A | Owns architecture fitness baseline, exception decisions, and cross-document alignment. |
| Enterprise Architect | R/A | Defines and reviews architecture fitness functions, boundary rules, and ADR linkage. |
| Software Development Lead | R | Ensures developers follow gates and remediate fitness failures. |
| Software Developer | R | Runs local checks, writes tests, fixes violations, and records AVCI evidence. |
| DevSecOps Lead | R/A | Implements CI/CD checks, evidence manifest, pre-commit hooks, and policy integration. |
| Security Administrator | R/A | Owns security, SBAC, OPA, secrets, classification, and AI action gates. |
| QA/SDET | R | Owns test fitness, deterministic tests, mutation gates, contract tests, and evidence review. |
| DBA / Data Architect | R | Owns DB migration, bounded-context schema, RLS, outbox, pgvector, and data lineage checks. |
| Internal Audit / Compliance | C | Reviews evidence completeness, control mapping, and non-conformance handling. |
| CAB / Architecture Review Board | A | Approves major changes, waivers, production promotions, and standard updates. |

## **16. Implementation Roadmap and Acceptance Criteria**

| **Phase** | **Name** | **Activity** | **Acceptance Criteria** |
| --- | --- | --- | --- |
| R1 | Define baseline ruleset | Approve AFF-001 to AFF-030 and publish in repository templates. | Ruleset reviewed and versioned. |
| R2 | Local enforcement | Install pre-commit hooks, Semgrep rules, Gitleaks, formatting, and fast evidence checks. | Developers can run checks before commit. |
| R3 | CI enforcement | Implement ArchUnit, SonarQube, OPA, contract tests, unit tests, mutation subset, and evidence manifest. | Protected branches block critical violations. |
| R4 | Service-specific hardening | Add stricter rules for orchestrator, harness, retrieval, workflow, database, AI, and MicroFunction paths. | Directory CLAUDE.md and CODEOWNERS enforce ownership. |
| R5 | Auto-Heal integration | Require AI-generated remediation PRs to include fitness evidence and human approval. | Auto-Heal cannot bypass fitness gates. |
| R6 | Continuous improvement | Track repeated failures, tune rules, add ADR/TDL updates, and train developers. | Quarterly review shows reduced drift and stable gates. |

## **Appendix A. Copy-Ready ArchUnit Examples**

@AnalyzeClasses(packages = "com.aira")

class AiraArchitectureFitnessTest {

@ArchTest

static final ArchRule domain_must_not_depend_on_infrastructure =

noClasses().that().resideInAPackage("..domain..")

.should().dependOnClassesThat().resideInAnyPackage(

"..adapter..", "..infrastructure..", "org.springframework.web..",

"org.springframework.data..", "org.apache.kafka..");

@ArchTest

static final ArchRule controllers_must_not_call_repositories =

noClasses().that().resideInAPackage("..controller..")

.should().dependOnClassesThat().resideInAPackage("..repository..");

@ArchTest

static final ArchRule provider_sdks_are_not_allowed =

noClasses().should().dependOnClassesThat().resideInAnyPackage(

"com.openai..", "com.anthropic..", "com.google.genai..", "software.amazon.awssdk.bedrockruntime..");

}

## **Appendix B. Copy-Ready Semgrep Rules**

rules:

- id: aira-no-direct-llm-provider-sdk

message: "Direct LLM provider SDK use is prohibited. Route through LiteLLM and governed orchestration."

severity: ERROR

languages: [java, typescript, python]

patterns:

- pattern-either:

- pattern: import com.openai.$X

- pattern: import com.anthropic.$X

- pattern: import google.generativeai

- pattern: from openai import $X

- id: aira-no-secrets-in-source

message: "Potential secret or token in source. Use Vault or approved secret reference."

severity: ERROR

languages: [generic]

regex: '(api[_-]?key|secret|password|token)\s*[:=]\s*["'][A-Za-z0-9_\-]{16,}'

## **Appendix C. Copy-Ready OPA/Rego Policies**

package aira.fitness

default allow = false

critical_failures := {f | f := input.fitness_results[_]; f.severity == "CRITICAL"; f.status != "PASS"}

high_failures := {f | f := input.fitness_results[_]; f.severity == "HIGH"; f.status != "PASS"}

allow {

count(critical_failures) == 0

count(high_failures) == 0

input.avci.owner != ""

input.avci.classification != ""

input.evidence_manifest.present == true

}

deny[msg] {

f := critical_failures[_]

msg := sprintf("Critical architecture fitness failure: %s", [f.id])

}

## **Appendix D. Mermaid Diagram References**

### **D.1 Fitness Function Enforcement Pipeline**

flowchart LR

DEV[Developer or AI Draft Change] --> PRE[Local Pre-Commit Checks]

PRE --> CI[CI Quality and Security Gates]

CI --> AFF[Architecture Fitness Functions]

AFF --> EVID[Evidence Pack and Approval]

AFF --> SOLID[SOLID / Clean Architecture / DDD]

AFF --> SEC[Security / SBAC / OPA / Secrets]

AFF --> TEST[Testing / Determinism / Idempotency]

AFF --> AVCI[Observability / Rollback / AVCI]

AFF -->|Critical failure| BLOCK[Reject or Waiver Required]

### **D.2 Auto-Heal Fitness Gate**

flowchart TD

SIGNAL[Runtime Signal or CI Failure] --> RETRIEVE[Retrieve Evidence]

RETRIEVE --> DRAFT[AI Drafts Candidate Fix]

DRAFT --> FITNESS[Run Fitness Functions]

FITNESS --> DECISION{All Mandatory Gates Pass?}

DECISION -->|No| BLOCK[Block / Escalate / Create Remediation Ticket]

DECISION -->|Yes| HUMAN[Human Review and Approval]

HUMAN --> MERGE[Merge / Deploy Through Governed Pipeline]

## **Appendix E. AVCI Compliance Summary**

| **AVCI Property** | **Compliance Evidence** |
| --- | --- |
| Attributable | Document owned by Solutions Architecture Office; updates require Architecture Board or delegated approval. |
| Verifiable | Fitness functions are mapped to tools, triggers, rejection criteria, evidence manifests, and review gates. |
| Classifiable | Document classification is INTERNAL CONFIDENTIAL; fitness evidence inherits repository and artifact classification. |
| Improvable | Quarterly review, repeated-failure analysis, ADR/TDL updates, new rules, waiver closure, and lessons learned feed continuous improvement. |
