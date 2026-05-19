---
title: "01-AIRA AVCI Engineering Standard v3.0"
source_file: "01-AIRA-Documentation/Engineering-Standards/01-AIRA_AVCI_Engineering_Standard_v3.0.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:36Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "01-AIRA-Documentation"
  - "Engineering-Standards"
aliases:
  - "01-AIRA_AVCI_Engineering_Standard_v3.0"
creator: "Solutions Architecture Office"
created: "2013-12-23T23:15:00Z"
modified: "2013-12-23T23:15:00Z"
description: "Confidential internal standard generated for architecture review."
---

AIRA

AI-Native Enterprise Platform

# AVCI Engineering Standard

Attributable · Verifiable · Classifiable · Improvable

Universal Quality Standard with Enterprise Design Principles & SOLID Enforcement Layer

| Mandatory Practice Statement<br>Nothing that influences AIRA system behaviour, customer outcomes, business decisions, security posture, or AI outputs may be treated as production-ready unless it satisfies AVCI and the Enterprise Design Principles & SOLID Enforcement Layer. AVCI is not documentation style; it is the engineering control plane for trust, architecture discipline, safety, and continuous improvement. |

| --- |

| Property | Value |

| --- | --- |

| Document Version | v3.0 - Enterprise Design Principles and SOLID Enforcement Update |

| Supersedes | 01-AIRA_AVCI_Engineering_Standard_v2.0 |

| New Canonical Companion | 01A-AIRA_Enterprise_Design_Principles_and_SOLID_Enforcement_Layer_v1.0 |

| Decision Record | ADR-AIRA-2026-001 - Adoption of Enterprise Design Principles and SOLID Enforcement Layer |

| Classification | INTERNAL CONFIDENTIAL |

| Status | FOR ARCHITECTURE REVIEW AND DEVELOPMENT BASELINE ADOPTION |

| Owner | Solutions Architecture Office · Senior Solutions Architect / IT Head |

| Effective Date | Upon CAB / Architecture Review Board approval |

| Review Cadence | Quarterly; unscheduled on material technology, security, regulatory, AI-risk, or architecture-principle change |

Version 3.0 · April 2026

Prepared for Architecture, Development, DevSecOps, Security, QA, Infrastructure, Database, AI Engineering, Compliance, and Internal Audit teams

# Document Control

| Property | Value |

| --- | --- |

| Document Title | AIRA AVCI Engineering Standard |

| Document ID | AIRA-DOC-001 |

| Document Version | v3.0 |

| Classification | INTERNAL CONFIDENTIAL |

| Status | FOR ARCHITECTURE REVIEW AND DEVELOPMENT BASELINE ADOPTION |

| Owner | Solutions Architecture Office · Senior Solutions Architect / IT Head |

| Primary Audience | Enterprise Architects, Development Leads, Developers, DevSecOps, QA, Security, Infrastructure, Database, AI Engineering, SRE, Compliance, Internal Audit |

| Supersedes | AIRA AVCI Engineering Standard v2.0 |

| Primary Companion | 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.0 |

| Control Matrix | AIRA Cross-Document Revision Control Matrix v1.0 |

| Compliance Scope | ISO/IEC 27001:2022; ISO 9001 QMS; CIS Controls v8.1; NIST AI RMF 1.0; NIST AI 600-1; NIST SSDF SP 800-218; OWASP ASVS; OWASP SAMM; SOC 2; BSP IT Risk; SLSA Build Level 3 target |

# v3.0 Change Summary

| Change Area | v3.0 Improvement |

| --- | --- |

| Enterprise design layer | Adds the Enterprise Design Principles & SOLID Enforcement Layer as a mandatory AVCI extension. |

| Canonical reference | Establishes 01A as the authoritative companion for definitions, enforcement criteria, and evidence expectations. |

| SOLID enforcement | Introduces explicit SRP, OCP, LSP, ISP, and DIP evidence gates for code, MicroFunctions, services, and AI-generated changes. |

| Architecture boundaries | Strengthens Clean Architecture, DDD / Bounded Context, and Ports-and-Adapters as production-readiness controls. |

| Auto loops | Requires Auto-Heal, Auto-Learn, and Auto-Improve to preserve or improve architecture, security, observability, testability, reversibility, and AVCI evidence. |

| Fitness functions | Adds architecture fitness functions as a standard verification mechanism for design principles. |

| Evidence schema | Extends the AVCI Evidence Record with design-principle impact, architecture-boundary impact, testability impact, reversibility impact, and fitness-function result. |

| PR/MR gate | Adds a Design Principles Impact Assessment to non-trivial pull requests and merge requests. |

# Table of Contents

1. Executive Summary

2. Scope, Authority, and Document Hierarchy

3. The AVCI Standard

4. Universal AVCI Application Model

5. Enterprise Design Principles & SOLID Enforcement Layer

6. SOLID Enforcement Model

7. Clean Architecture, DDD, and Ports-and-Adapters Enforcement

8. Auto-Heal, Auto-Learn, and Auto-Improve Governance

9. AVCI Evidence Record Schema v3.0

10. Classification and Handling Model

11. Lifecycle Enforcement Model

12. AI-Native Governance Requirements

13. Engineering Quality Gates and Architecture Fitness Functions

14. Retrieval, Knowledge, and AI Quality Gates

15. Roles, Responsibilities, and RACI

16. Pull Request / Merge Request Compliance Summary

17. Waivers, Exceptions, and Non-Conformance

18. Compliance and Control Mapping

19. Implementation Roadmap and Acceptance Criteria

20. Appendices

# 1. Executive Summary

AIRA is a mission-critical, AI-native enterprise platform initiative. Its engineering environment must be reproducible, secure, explainable, auditable, maintainable, and capable of safe AI augmentation. In such an environment, quality cannot depend on individual memory, informal review, or optimistic assumptions. Quality must be designed into the artifact lifecycle itself.

This standard defines AVCI - Attributable, Verifiable, Classifiable, and Improvable - as the universal discipline for every AIRA artifact. Version 3.0 extends AVCI with the Enterprise Design Principles & SOLID Enforcement Layer so that every artifact is not only traceable and evidenced, but also architecturally sound, testable, secure, observable, reversible, and fit for governed improvement.

| Operating Philosophy<br>Discipline first, automation second, intelligence third - and AVCI always. Discipline establishes the rules. Automation makes the rules repeatable. Intelligence accelerates analysis and recommendation. AVCI and the Enterprise Design Principles keep all three trustworthy. |

| --- |

## 1.1 Non-Negotiable Outcome

Who owns the artifact, why does it exist, and which intent authorized it?

What evidence proves it is correct, safe, secure, current, and architecturally compliant?

What classification, domain, tier, and handling rules apply?

Which Enterprise Design Principles are affected and how were they preserved or improved?

How will the artifact be improved without uncontrolled self-modification, architecture drift, or audit gaps?

## 1.2 Relationship to 01A

01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.0 is the canonical companion standard for the 20 design principles, SOLID enforcement criteria, architecture boundary rules, fitness-function expectations, and Auto-Heal / Auto-Learn / Auto-Improve constraints. This AVCI standard incorporates 01A by reference and makes its controls part of production readiness.

# 2. Scope, Authority, and Document Hierarchy

## 2.1 In Scope

All source code, configuration, infrastructure-as-code, database migrations, build scripts, container images, Helm charts, GitOps manifests, policy-as-code, secrets metadata, runtime parameters, and deployment artifacts.

All tests and quality evidence: unit, component, integration, contract, E2E, performance, chaos, security, AI evaluation, golden datasets, adversarial tests, and architecture fitness functions.

All AI artifacts: prompts, system instructions, model aliases, guardrail policies, agent definitions, skills, tool registries, retrieval configurations, embeddings, indexes, curated knowledge, model evaluation datasets, and agent action records.

All process and operational artifacts: runbooks, incident records, change records, approval workflows, audit trails, DR procedures, onboarding records, decommissioning evidence, and improvement backlog entries.

## 2.2 Authority and Precedence

| Level | Document / Control | Authority Scope |

| --- | --- | --- |

| L0 | AIRA Consolidated Architecture Blueprint / Architecture Board | End-to-end canonical architecture and major platform boundaries. |

| L1 | AIRA Engineering Blueprint | Build-ready architecture, service boundaries, flows, contracts, controls, and evidence model. |

| L1 | AIRA AI-Native DevSecOps Engineering Standard | Day-to-day engineering lifecycle, CI/CD gates, AI operating model, evidence regime, and promotion discipline. |

| L2 | This AVCI Engineering Standard | Universal quality gate and evidence discipline for every input, process, artifact, and output. |

| L2 | 01A Enterprise Design Principles & SOLID Enforcement Layer | Canonical principles and enforcement model that extends AVCI production readiness. |

| L3 | Specialist Standards | Developer Guide, Technology Stack, Unit Testing, CLAUDE.md, MicroFunction, API, Database, Security, Knowledge Governance, Skills, and Greenfield Environment standards. |

| L4 | Tickets, ADRs, TDLs, PRs/MRs, runbooks | Implementation-specific evidence and local procedures. |

| Interpretation Rule<br>Where two documents appear inconsistent, the reviewer must not silently choose the convenient interpretation. The issue must be logged as an AVCI reconciliation item, assigned an owner, classified by severity, and resolved through the governed change-control process. |

| --- |

# 3. The AVCI Standard

AVCI is the minimum trust profile for every AIRA artifact. It ensures that artifacts can be traced, proven, handled correctly, and improved safely. AVCI applies equally to human work, automated work, and AI-assisted work.

| Property | Definition | Minimum Evidence |

| --- | --- | --- |

| Attributable | Known owner, origin, version, source, approval, and reason for existence. | Owner, source reference, ticket/ADR, version, commit, approver, timestamp. |

| Verifiable | Evidence proves the artifact works, is current, and meets its specification and design constraints. | Tests, scans, reviews, policy checks, fitness functions, evidence refs, confidence score. |

| Classifiable | Labelled by sensitivity, domain, tier, risk, and handling rules. | Classification label, domain D1-D12, tier, ACL, retention, model-route rule. |

| Improvable | Governed feedback path and measurable improvement mechanism exist. | Feedback channel, owner review, metrics, regression checks, approval gate. |

| Production-Readiness Rule<br>If any AVCI property is absent, stale, unverifiable, or contradicted by the Enterprise Design Principles & SOLID Enforcement Layer, the artifact is not production-ready. Delivery pressure does not lower the gate; it only changes escalation priority. |

| --- |

## 3.1 AVCI and AI Accountability

AI may generate drafts, suggestions, code, analyses, summaries, tests, remediation options, and improvement proposals. AI does not own accountability. The accountable owner is always a named human role or approved service owner. All AI-assisted outputs must record model route, prompt version, guardrail policy, retrieval evidence, design-principle impact, and human approval state where applicable.

# 4. Universal AVCI Application Model

| Category | Examples | AVCI + Design Control Requirement |

| --- | --- | --- |

| Source Code | Java, TypeScript, Python, infrastructure scripts, adapters, MicroFunctions | Trace to ticket/ADR; reviewed; tested; scanned; architecture-boundary checked; fitness functions pass. |

| Configuration | Helm values, feature flags, runtime parameters, model aliases, guardrails | Git-tracked; policy-validated; no secrets; drift-detected; reversible activation path. |

| Infrastructure | Kubernetes manifests, network policies, storage, VMs, DR procedures | Provisioned from approved source; signed; scanned; reproducible; monitored; change-controlled. |

| Data and Schemas | PostgreSQL migrations, RLS, JSON/Avro schemas, embeddings | Versioned; migration-tested; classified; lineage-preserving; contract-compatible. |

| Tests and Evidence | Unit, contract, scan, SBOM, RAG evaluation, fitness-function reports | Deterministic; linked to requirements; retained; improved through defects and coverage gaps. |

| AI Artifacts | Prompts, model aliases, guardrails, agent skills, retrieval configs | No anonymous prompts; no bypass routes; evaluation-gated; classification-aware; human-reviewed for high impact. |

| Knowledge | LLM Wiki, Obsidian notes, OpenKM source packs, ADRs | Cited; versioned; current; conflict-resolved; stale items quarantined. |

| Operations | Runbooks, incident records, change tickets, Auto-Heal proposals | Evidence-based; reversible; human-approved for high impact; lessons promoted through governed Auto-Learn. |

# 5. Enterprise Design Principles & SOLID Enforcement Layer

The following 20 principles are mandatory production-readiness controls. They extend AVCI from artifact trust into architecture discipline, maintainability, secure operation, and safe continuous improvement.

| ID | Principle | Mandatory Meaning |

| --- | --- | --- |

| EDP-01 | SOLID | Components must preserve single responsibility, extensibility, substitutability, interface focus, and dependency inversion. |

| EDP-02 | Clean Architecture | Domain and use-case logic must not depend on frameworks, UI, database, or provider implementation details. |

| EDP-03 | DDD / Bounded Contexts | Business domains must own clear language, invariants, schema boundaries, and integration contracts. |

| EDP-04 | Ports and Adapters | External systems, databases, models, queues, and tools are accessed through explicit ports and adapters. |

| EDP-05 | DRY, KISS, YAGNI | Avoid duplicated logic, accidental complexity, speculative abstractions, and over-engineering. |

| EDP-06 | Idempotency by Design | Retries must not duplicate business effects; mutation paths require keys, hashes, or deduplication. |

| EDP-07 | Determinism and Reproducibility | Builds, tests, migrations, prompts, workflows, and evidence must be repeatable from approved sources. |

| EDP-08 | Fail-Safe, Not Fail-Open | If identity, policy, guardrail, audit, model gateway, or evidence dependencies fail, protected actions stop. |

| EDP-09 | Human-in-the-Loop | High-impact, low-confidence, policy-exception, or production-impacting actions require named human approval. |

| EDP-10 | Least Privilege / SBAC | Humans, services, and agents receive only the skills, permissions, data, and tools required for their role. |

| EDP-11 | Separation of Duties | Maker, checker, approver, deployer, and auditor roles must not collapse in high-risk workflows. |

| EDP-12 | Observability by Design | Logs, metrics, traces, audit events, and evidence references are designed into each capability. |

| EDP-13 | Policy as Code | Authorization, admission, routing, guardrail, deployment, and data-handling rules are versioned policy artifacts. |

| EDP-14 | Testability by Design | Code, workflows, prompts, adapters, and policies must be independently testable with deterministic fixtures. |

| EDP-15 | Secure by Design | Threat controls, secrets hygiene, classification handling, tenant isolation, and secure defaults are built in. |

| EDP-16 | Resilience Patterns | Timeouts, retries, circuit breakers, bulkheads, fallback, DLQ, compensation, and recovery are explicit. |

| EDP-17 | Architectural Fitness Functions | Automated checks continuously verify boundaries, dependencies, contracts, security, and evidence rules. |

| EDP-18 | Progressive Autonomy | Automation advances only when evidence, trust, skill, risk tier, and rollback controls support it. |

| EDP-19 | Reversibility / Rollbackability | Changes must support rollback, forward-fix, compensation, feature disablement, or safe deactivation. |

| EDP-20 | AVCI | All artifacts remain attributable, verifiable, classifiable, and improvable across their lifecycle. |

| Master Enforcement Rule<br>Auto-Heal, Auto-Learn, and Auto-Improve must not merely fix, learn, or optimize. Every automated or AI-assisted change must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. Any proposal that weakens these principles is rejected, escalated, or converted into an approved exception with risk acceptance, expiry, and remediation plan. |

| --- |

# 6. SOLID Enforcement Model

| Code | Principle | AIRA Interpretation | Evidence / Enforcement |

| --- | --- | --- | --- |

| SRP | Single Responsibility Principle | One module, class, MicroFunction, prompt, or adapter has one reason to change. | Reject mixed controller/domain/persistence logic; require focused MicroFunctions and cohesive packages. |

| OCP | Open/Closed Principle | Extend behaviour through configuration, polymorphism, catalog registration, adapters, or rules without modifying stable core code. | Prefer MicroFunction registration, DMN/rule updates, and ports over repeated core edits. |

| LSP | Liskov Substitution Principle | Implementations must preserve the contract of their port, interface, base type, or capability. | Contract tests for adapters, model routes, repositories, and external integrations. |

| ISP | Interface Segregation Principle | Consumers should not depend on methods, data, prompts, permissions, or tools they do not use. | Role- and capability-specific ports, DTOs, agent skills, and API contracts. |

| DIP | Dependency Inversion Principle | High-level domain and use-case logic depend on abstractions, not concrete frameworks or providers. | Ports for database, messaging, model gateway, document store, workflow, and policy decisions. |

## 6.1 SOLID Rejection Patterns

Controllers containing business decisions, database writes, model calls, or workflow orchestration.

Domain classes importing Spring, Kafka, OpenKM, LiteLLM provider SDKs, Redis clients, or database infrastructure details.

MicroFunctions that combine security, validation, business logic, persistence, event publication, and response shaping in one unit.

AI-generated code that passes tests but introduces hidden coupling, duplicated logic, or boundary violations.

Adapters that change business semantics instead of translating technical protocols.

# 7. Clean Architecture, DDD, and Ports-and-Adapters Enforcement

| Architecture Element | Owns | Must Not Do |

| --- | --- | --- |

| Domain Layer | Entities, value objects, domain services, invariants, business rules | No framework dependencies; no direct database, Kafka, OpenKM, LiteLLM, HTTP, or UI code. |

| Application / Use Case Layer | Use cases, orchestration of domain operations, transactions, command/query handlers | Depends on ports; does not depend on concrete adapters. |

| Interface Adapters | REST controllers, DTO mappers, persistence adapters, event adapters, model-gateway adapters | Translate protocols; do not own domain policy. |

| Infrastructure | Spring Boot, PostgreSQL, Kafka, Temporal, Flowable, OpenKM, LiteLLM, Vault, OPA | Implementation detail behind ports and governed configuration. |

| Bounded Context | A domain ownership boundary with language, schema, contracts, and events | Cross-context changes require API/event contracts or ADR/TDL; no shared mutable database ownership. |

| Boundary Rule<br>AIRA must prefer explicit boundaries over convenience coupling. Any shortcut that makes the system faster to code but harder to test, secure, observe, replace, or govern is an architecture defect unless formally waived. |

| --- |

# 8. Auto-Heal, Auto-Learn, and Auto-Improve Governance

AIRA supports governed continuous improvement loops. These loops are powerful only when they remain bounded by architecture, security, evidence, human accountability, and rollback controls.

| Capability | Purpose | Acceptance Gate |

| --- | --- | --- |

| Auto-Heal | Detect, classify, and propose or execute bounded remediation for failures. | Fix is evidence-based, minimal, idempotent, tested, secure, observable, reversible, and does not bypass architecture boundaries. |

| Auto-Learn | Convert reviewed outcomes into knowledge, tests, prompts, guardrails, and runbooks. | Learning is attributable, cited, human-reviewed, classification-safe, non-conflicting, and not promoted as authoritative until approved. |

| Auto-Improve | Propose measurable improvements to quality, reliability, security, maintainability, or performance. | Improvement reduces risk or debt without weakening SOLID, architecture boundaries, tests, security, observability, rollbackability, or AVCI. |

## 8.1 Prohibited Auto-Loop Outcomes

Autonomous production self-modification without human approval and full audit evidence.

Fixes that disable tests, guardrails, policy checks, audit logging, or observability to make a pipeline pass.

Learning updates that promote stale, conflicting, unclassified, or uncited knowledge into LLM Wiki or Obsidian.

Improvements that reduce immediate toil but increase coupling, hidden state, privilege scope, or rollback risk.

# 9. AVCI Evidence Record Schema v3.0

Every material artifact must have evidence sufficient for humans, auditors, and AI agents to reconstruct ownership, correctness, handling rules, and improvement history. Version 3.0 extends the evidence schema to include design-principle impact and architecture-fitness evidence.

| Field | Description |

| --- | --- |

| artifact_id | Unique identifier for the artifact, change, run, or output. |

| artifact_type | Code, configuration, migration, prompt, guardrail, model route, test, runbook, knowledge note, incident, ADR, or MicroFunction. |

| owner | Named accountable human or approved service owner. |

| source_ref | Git commit, document ID, OpenKM reference, ticket, ADR/TDL, or workflow ID. |

| version | Semantic version, build version, migration version, prompt version, model alias version, or rule version. |

| classification | Public, Internal, Confidential, or Restricted plus domain and handling rules. |

| verification_evidence | Tests, scans, reviews, policy decisions, evaluations, signed artifacts, trace/audit records. |

| principle_impact | List of affected EDP IDs and statement of preserved/improved/weakened status. |

| architecture_boundary_impact | Affected bounded context, layer, port, adapter, workflow boundary, or service contract. |

| testability_impact | New or changed tests, deterministic fixtures, coverage, mutation score, and failure/recovery paths. |

| security_posture_impact | Access, secrets, classification, threat controls, policy, and data-handling impact. |

| observability_impact | New or changed logs, metrics, traces, audit events, SLOs, or evidence references. |

| reversibility_impact | Rollback, forward-fix, compensation, feature flag, or safe deactivation approach. |

| fitness_function_result | Pass/fail/waived architecture fitness checks with evidence references. |

| improvement_path | How feedback, incidents, defects, or metrics will improve the artifact. |

# 10. Classification and Handling Model

| Classification | Meaning | AI / Evidence Handling |

| --- | --- | --- |

| Public | Approved for external release | Public model routes permitted after approval; no secrets or customer-specific data. |

| Internal | Internal operational and engineering information | Approved workspace and model routes; protect from uncontrolled sharing. |

| Confidential | Sensitive business, architecture, security, customer, or regulated data | Private or approved protected routes; strong redaction; human review for AI use. |

| Restricted | Highest sensitivity: secrets, credentials, production PII, regulated records, critical security details | No cloud prompts unless explicitly waived; private/on-prem route; strict access and audit. |

Classification is not a label applied at the end. It is a routing, storage, logging, testing, retention, and model-eligibility control. If classification is unknown, AIRA treats the artifact as Confidential until verified.

# 11. Lifecycle Enforcement Model

| Lifecycle Phase | Mandatory AVCI + Principle Gate |

| --- | --- |

| Plan | Ticket, intent, owner, classification, ADR/TDL need, principle impact, acceptance criteria. |

| Code | CLAUDE.md rules, SOLID checks, boundary checks, no direct provider calls, no secrets, TDD. |

| Build | Pinned dependencies, reproducible builds, SBOM, provenance, signed artifacts, policy checks. |

| Test | Unit, component, contract, security, AI eval, architecture fitness, regression, mutation where required. |

| Release | Evidence pack, risk review, change approval, rollback/forward-fix plan, classification validation. |

| Deploy | GitOps, admission policy, OPA, signed images, secrets from Vault, no manual production mutation. |

| Operate | Telemetry, audit, SLOs, incident records, access reviews, drift detection, backup/restore evidence. |

| Improve | Auto-Learn/Auto-Improve proposals, human review, regression evidence, knowledge update, supersedence. |

# 12. AI-Native Governance Requirements

| Requirement | Control Rule |

| --- | --- |

| LiteLLM-only model routing | No direct provider SDK or hardcoded model-provider invocation in services, scripts, notebooks, or agents. |

| Four NeMo checkpoints | Input, Retrieval, Execution, and Output guardrails are mandatory where AI or tools are involved. |

| Harness-mediated execution | AI agents may reason and draft, but tool execution passes through Harness, SBAC, OPA, trust scoring, and audit. |

| Classification-aware routing | Data classification determines model route, prompt eligibility, retrieval inclusion, logging, and retention. |

| Human accountability | Named humans approve high-impact actions; AI cannot approve, merge, deploy, or override policy. |

| Evidence before response | Critical AI outputs require durable audit intent, retrieval evidence, guardrail result, and model route metadata. |

# 13. Engineering Quality Gates and Architecture Fitness Functions

Architecture fitness functions are automated or semi-automated tests that continuously check whether implementation remains aligned with the approved architecture and principles. They are not optional decoration; they are evidence for EDP-17 and AVCI Verifiability.

| Fitness Function | Purpose | Example Enforcement |

| --- | --- | --- |

| Layer dependency check | Domain must not depend on infrastructure, UI, database, Kafka, or model providers. | ArchUnit, build rules, dependency graph checks |

| Direct model call check | Provider SDK imports and direct model endpoint calls are prohibited. | Semgrep, grep rules, CI policy |

| Contract compatibility | OpenAPI, AsyncAPI, Avro/JSON schemas remain backward compatible unless versioned. | Contract tests, schema registry checks |

| Idempotency coverage | Mutating endpoints, consumers, workflows, and external calls have idempotency evidence. | Unit/component tests, DB constraints, workflow tests |

| Security regression | Authorization, tenant isolation, secret hygiene, redaction, and policy decisions remain enforced. | Unit/security tests, SAST, OPA tests |

| Observability coverage | Critical paths emit trace_id, metrics, logs, audit evidence, and error taxonomy. | OTel checks, log schema tests, audit assertions |

| Rollback/compensation | Risky changes define rollback, forward-fix, compensation, or feature disablement. | Release gate, migration test, Temporal/Flowable evidence |

| AI safety gate | Prompt, retrieval, guardrail, tool-action, and output flows are evaluated and cited. | Golden datasets, guardrail tests, eval reports |

# 14. Retrieval, Knowledge, and AI Quality Gates

| Gate | Requirement |

| --- | --- |

| Approved sources only | LLM Wiki indexes approved or explicitly reviewable sources only; drafts and superseded content are quarantined. |

| Citations by default | AI answers from the knowledge base cite source document, version, section, evidence ID, and confidence. |

| Staleness is a defect | Expired or superseded knowledge must not silently influence development or architecture decisions. |

| Conflict reporting | If documents conflict, AI must report the conflict and follow authority hierarchy; it must not hide inconsistencies. |

| Auto-Learn review | AI-generated lessons, summaries, and remediation guidance do not become authoritative until human-reviewed. |

# 15. Roles, Responsibilities, and RACI

| Role | RACI | Responsibility |

| --- | --- | --- |

| Solutions Architect / IT Head | A/R | Owns AVCI standard, 01A alignment, architecture principle interpretation, and final escalation. |

| Enterprise Architect | R | Reviews architecture boundaries, DDD contexts, ports/adapters, and fitness functions. |

| Development Lead | R | Ensures developer adoption, PR evidence, coding discipline, and remediation of principle violations. |

| DevSecOps Lead | R | Implements CI/CD evidence, policy-as-code, hooks, scan gates, and provenance controls. |

| Security Administrator | R/C | Reviews least privilege, SBAC, secrets, classification, and fail-closed behaviour. |

| QA / SDET | R | Owns deterministic testing, mutation/coverage where required, regression suites, and AI evaluation evidence. |

| DBA / Data Governance | R/C | Reviews schema ownership, migrations, RLS, classification, lineage, and data reversibility. |

| Software Developer | R | Implements changes following AVCI, 01A, CLAUDE.md, Developer Guide, and test evidence requirements. |

| Internal Audit / Compliance | C/I | Reviews evidence completeness, traceability, waiver controls, and compliance mapping. |

# 16. Pull Request / Merge Request Compliance Summary

Every non-trivial PR/MR must include the following AVCI v3.0 compliance summary. The summary is evidence, not formality. Missing or superficial responses block merge.

| Checklist Area | Required Response |

| --- | --- |

| Attributable | Ticket/ADR/TDL/source; accountable owner; AI tool/model involvement; reviewer. |

| Verifiable | Tests run, scans, policy checks, architecture fitness functions, contract checks, screenshots/evidence. |

| Classifiable | Data classification, affected domains, model routing eligibility, log/test/retention handling. |

| Improvable | Metric or feedback path; regression tracking; documentation/knowledge update; future refactoring item if needed. |

| Design Principles Impact | Affected EDP IDs; preserved/improved/weakened status; explanation and mitigation. |

| Architecture Boundary Impact | Affected bounded context, layer, port, adapter, schema, API/event contract, workflow, or AI route. |

| Security and SBAC Impact | Access, least privilege, separation of duties, secrets, policy, guardrail, and audit impact. |

| Testability and Determinism | New or changed deterministic tests; fixtures; mutation/coverage impact; non-determinism removed. |

| Observability and Evidence | Trace/log/metric/audit changes; evidence references; error taxonomy; SLO impact. |

| Reversibility / Rollbackability | Rollback, forward-fix, compensation, feature flag, cache invalidation, or safe disablement path. |

# 17. Waivers, Exceptions, and Non-Conformance

Waivers are temporary controlled exceptions, not permission to weaken AIRA. Any waiver must identify the violated control, reason, risk owner, expiry date, compensating controls, evidence, and remediation path.

| Severity | Example | Required Treatment |

| --- | --- | --- |

| Low | Documentation or non-production evidence gap | Owner approval; remediation ticket; short expiry. |

| Medium | Test, observability, or maintainability gap | Development Lead and QA approval; compensating control; target fix date. |

| High | Architecture boundary, security, classification, or rollback gap | Architecture + Security + CAB approval; risk acceptance; active monitoring. |

| Critical | Fail-open, guardrail bypass, direct production mutation, secret exposure, AI override, or AVCI absence | Rejected unless emergency break-glass; executive risk acceptance; post-action reconciliation. |

# 18. Compliance and Control Mapping

| Framework | AIRA Control Relationship |

| --- | --- |

| ISO/IEC 27001:2022 | Security governance, access control, change control, logging, supplier/tool governance, evidence and continual improvement. |

| ISO 9001 QMS | Process discipline, documented procedures, quality evidence, corrective actions, and continuous improvement. |

| CIS Controls v8.1 | Inventory, secure configuration, access control, audit logging, vulnerability management, and application security. |

| NIST SSDF SP 800-218 | Secure software development practices, design review, dependency control, vulnerability response, and evidence. |

| NIST AI RMF / AI 600-1 | AI governance, mapping, measurement, management, safety, transparency, and accountability. |

| OWASP ASVS / SAMM | Application security verification, secure architecture, testing, and maturity governance. |

| SOC 2 | Security, availability, processing integrity, confidentiality, and audit evidence. |

| SLSA Build Level 3 Target | Build provenance, controlled source, isolated builds, artifact integrity, and supply-chain evidence. |

# 19. Implementation Roadmap and Acceptance Criteria

| Wave | Scope | Acceptance Criteria |

| --- | --- | --- |

| Wave 0 | Approve ADR and 01A | ADR accepted; 01A approved as canonical companion; matrix baselined. |

| Wave 1 | Revise 01 AVCI and 02 Engineering Blueprint | Universal quality gate and architecture principles updated to v3/v5 baseline. |

| Wave 2 | Revise Developer Guide, Unit Testing, CLAUDE.md, Rollout Pack | Daily coding, TDD, AI repository rules, and CI hooks enforce 01A. |

| Wave 3 | Revise MicroFunction family and DevSecOps Standard | Runtime assembly, standard functions, error paths, AI loops, and pipelines include principle gates. |

| Wave 4 | Revise specialist standards | Technology, API, Database, Security, Knowledge, Skills, Greenfield, and Handoff documents aligned. |

| Wave 5 | Operationalize enforcement | CI/CD gates, pre-commit hooks, fitness functions, PR templates, dashboards, and audit evidence in use. |

# 20. Appendices

## Appendix A - Universal AVCI Prompt v3.0

| Copy-Ready Prompt<br>For any AIRA artifact, analyze it using AVCI and the Enterprise Design Principles & SOLID Enforcement Layer. Identify owner/source/version, verification evidence, classification and handling rules, improvement path, affected EDP IDs, architecture boundary impact, security impact, testability impact, observability impact, reversibility impact, and required fitness-function evidence. If any control is missing, stale, conflicting, or unverifiable, mark the artifact as not production-ready and recommend a governed remediation path. |

| --- |

## Appendix B - Explicitly Rejected Patterns

Direct model provider SDK usage from application services, scripts, notebooks, or agents.

Guardrail bypass flags, policy bypass flags, fail-open defaults, or hidden emergency switches.

Direct database edits, manual production kubectl writes, click-ops configuration, or unmanaged runtime mutation.

Personal AI subscriptions for AIRA code, data, prompts, architecture, or Confidential/Restricted content.

Raw PII, credentials, secrets, production data, or customer document content in logs, prompts, tests, fixtures, screenshots, or evidence packs.

AI-generated code accepted only because it compiles while weakening SOLID, Clean Architecture, DDD boundaries, tests, observability, security, or rollbackability.

## Appendix C - AVCI Compliance Summary

This v3.0 standard is Attributable to the Solutions Architecture Office and is linked to ADR-AIRA-2026-001 and the Cross-Document Revision Control Matrix. It is Verifiable through document review, architecture-board approval, and subsequent CI/PR enforcement implementation. It is Classifiable as INTERNAL CONFIDENTIAL and applies to all AIRA artifacts. It is Improvable through quarterly review, incident feedback, architecture reconciliation items, and Auto-Learn / Auto-Improve governance loops.
