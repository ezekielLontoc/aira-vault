---
document_id: "AIRA-DOC-001A"
title: "AIRA Enterprise Design Principles and SOLID Enforcement Layer"
version: "v1.1"
status: "aligned"
source_file: "01A-AIRA_Enterprise_Design_Principles_and_SOLID_Enforcement_Layer_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Engineering-Standards"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - engineering-standard
  - solid
---

# AIRA Enterprise Design Principles and SOLID Enforcement Layer

**AIRA**

AI-Native Enterprise Platform

**AIRA Enterprise Design Principles and SOLID Enforcement Layer**

_Canonical 01A Reference · SOLID · Clean Architecture · DDD · AVCI_

**v1.1 - Canonical 01A Cross-Pack Alignment Release**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-001A** |
| **Document Title** | **AIRA Enterprise Design Principles and SOLID Enforcement Layer** |
| **Document Version** | **v1.1 - Canonical 01A Cross-Pack Alignment Release** |
| **Supersedes** | **01A-AIRA_Enterprise_Design_Principles_and_SOLID_Enforcement_Layer_v1.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material architecture, technology, security, AI-risk, or governance change** |
| **Pack Context** | **Pack 01 v1.2 individual aligned file generated from Pack 01 v1.1 aligned source pack and synchronized against Packs 02-05.** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 01 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 01 source document so it can be uploaded to Obsidian as a standalone canonical artifact while remaining synchronized with the current AIRA v1.1 source-pack baseline.

**Document role. **Canonical 01A principle reference for the 20 Enterprise Design Principles and SOLID enforcement layer.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active source baseline** | **The current aligned project-source baseline is AIRA Source Packs v3.0 / Aligned Pack Set v1.1.** |
| **Classification** | **All Pack 01 outputs use INTERNAL CONFIDENTIAL.** |
| **Canonical principle reference** | **01A is now delivered as a standalone canonical file: 01A-AIRA_Enterprise_Design_Principles_and_SOLID_Enforcement_Layer_v1.1_Aligned.docx.** |
| **Technology baseline** | **Technology Stack v9.0 is the current canonical technology reference.** |
| **Information fabric baseline** | **AI-Native Information Nervous System v4.0 is the current canonical information and retrieval-governance reference.** |
| **AI execution boundary** | **LiteLLM is the model gateway. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Harness/SBAC/OPA govern tool actions.** |
| **Workflow partition** | **Temporal owns durable machine workflows, retries, sagas, and compensation. Flowable owns human approvals, BPMN/DMN, CAB, exception review, and SLA timers.** |
| **Data and migration baseline** | **Flyway is mandatory from initial database creation; no production DDL or data-fix activity bypasses migration governance.** |
| **Dograh and GitNexus** | **Dograh and GitNexus are recognized as controlled v9.0 capabilities: Dograh for voice-agent orchestration, GitNexus for read-only derivative code intelligence.** |
| **Obsidian / LLM Wiki** | **Only approved, current, classification-eligible, source-cited artifacts may become authoritative curated knowledge.** |

### Material Changes in This Version

Promoted the former Document 28 reference library into the canonical 01A companion document used across Packs 01-05.

Preserved traceability to AIRA-DOC-001A (former AIRA-DOC-028) as former source while assigning AIRA-DOC-001A as the canonical document ID.

Aligned wording with AVCI v3.1, Engineering Blueprint v5.1, and DevSecOps Standard v3.1.

Added explicit guardrails for Dograh, GitNexus, LiteLLM, NeMo Guardrails, Harness, SBAC, OPA, Temporal, Flowable, and Flyway where they affect principle enforcement.

Reinforced that AI-generated remediation and improvement proposals must pass principle-impact, testability, security, observability, and reversibility gates.

### AVCI Compliance Summary for This Update

| **AVCI Property** | **Evidence in This v1.2 Pack 01 Update** |
| --- | --- |
| **Attributable** | **Each file has a document ID, owner, supersedes value, source pack context, and explicit material-change list.** |
| **Verifiable** | **The update records cross-pack references, resolves the 01A naming gap, and preserves original source content for traceability.** |
| **Classifiable** | **All generated files are marked INTERNAL CONFIDENTIAL and inherit AIRA classification-handling rules.** |
| **Improvable** | **The update leaves remaining master-register numbering issues visible for later revision-control cleanup rather than hiding them.** |

## Updated Baseline Content

**AIRA**

**AI-Native Enterprise Platform**

**Enterprise Design Principles &****
SOLID Enforcement Layer****
Canonical Reference Library**

Principle Guidance · Reference Websites · AIRA Enforcement Notes

| Document ID | AIRA-DOC-001A (former AIRA-DOC-028) |
| --- | --- |
| Version | v1.0 - Regenerated Improved Format |
| Classification | INTERNAL CONFIDENTIAL |
| Owner | Solutions Architecture Office / IT Head |
| Evidence Path | OpenKM Tier-0 / AIRA / References / Enterprise-Design-Principles / v1.0 |

| **Mandatory Use Statement**<br>This reference library is part of the AIRA engineering reference set. It consolidates the 20 principles used to govern design, code review, AI-assisted development, architecture fitness functions, Auto-Heal, Auto-Learn, Auto-Improve, and controlled Progressive Autonomy. Any design or remediation that weakens SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, or AVCI evidence must be rejected, reworked, or escalated as a formal waiver. |
| --- |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Table of Contents

_Update in Microsoft Word: References > Table of Contents > Update Table._

## 1. Document Control

## 2. Executive Summary

## 3. Principle Reference Map

## 4. Detailed Principle Guidelines

## 5. AIRA Enforcement Rules

## 6. Recommended Reference Maintenance Procedure

## 7. Appendix A. Quick Checklist

## 8. Appendix B. Website Reference Register

## 9. Appendix C. AVCI Compliance Summary

## 1. Document Control

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-001A (former AIRA-DOC-028) |
| Document Title | AIRA Enterprise Design Principles & SOLID Enforcement Layer Canonical Reference Library |
| Version | v1.0 - Regenerated Improved Format |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / DEVELOPMENT ADOPTION |
| Owner | Solutions Architecture Office / IT Head |
| Primary Audience | Solutions Architect, Software Developers, QA/SDET, DevSecOps, Security Administrator, DBA, AI Engineers, Internal Audit |
| Purpose | Consolidate reference links, principle guidance, and AIRA enforcement expectations for the 20 Enterprise Design Principles and SOLID Enforcement Layer. |
| Review Cadence | Quarterly; unscheduled on material architecture, security, AI governance, compliance, or technology-stack change. |
| Companion Documents | AIRA AVCI Engineering Standard; Enterprise Design Principles & SOLID Enforcement Layer; Engineering Blueprint; Developer Guide; Unit Testing Standard; DevSecOps Standard; MicroFunction Framework; Security Standard; Architecture Fitness Function Catalog. |
| Evidence Path | OpenKM Tier-0 / AIRA / References / Enterprise-Design-Principles / v1.0 |

### 1.1 Mandatory Practice Statement

| **Enterprise Enforcement Rule**<br>Auto-Heal, Auto-Learn, and Auto-Improve must not only fix, learn, or improve. They must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. Any candidate that weakens these controls must be rejected, reworked, or escalated as a formally approved waiver. |
| --- |

## 2. Executive Summary

This reference library consolidates the core enterprise engineering principles that AIRA will use as design constraints, review criteria, CI/CD gates, AI-agent boundaries, and continuous-improvement controls.

It is designed as a companion reference to the AIRA AVCI Engineering Standard, Engineering Blueprint, Developer Guide, Unit Testing Standard, DevSecOps Standard, MicroFunction Framework, Security Standard, and Architecture Fitness Function Catalog.

Each principle includes intent, implementation guidelines, AIRA enforcement notes, and website links that developers and reviewers can use during design, code review, onboarding, architecture review, and controlled Auto-Heal / Auto-Learn / Auto-Improve activities.

### 2.1 Strategic Outcomes

| **Outcome** | **Required Result** |
| --- | --- |
| Consistent design vocabulary | All teams use the same principle definitions, guidelines, and references during architecture and implementation. |
| Reviewable engineering evidence | PR/MR and architecture reviews cite principle IDs and linked references rather than relying on preference or opinion. |
| AI-safe improvement loops | Auto-Heal, Auto-Learn, and Auto-Improve are constrained by SOLID, boundaries, tests, security, observability, rollback, and AVCI. |
| Developer onboarding support | New team members receive a concise, curated, source-linked reference pack for daily use. |
| Audit and compliance readiness | Principle compliance is mapped to evidence, policy-as-code, testability, secure-by-design, and governance expectations. |

## 3. Principle Reference Map

The reference map below is the quick navigation table for design reviews, code reviews, architecture fitness checks, and AI-assisted development guardrails.

| **ID** | **Principle** | **Category** | **Core Use in AIRA** | **Primary References** |
| --- | --- | --- | --- | --- |
| P01 | SOLID | Code design | Keep object-oriented and service code cohesive, replaceable, extensible, and dependency-managed. | Robert C. Martin - Design Principles and Design Patterns; SOLID overview - DigitalOcean |
| P02 | Clean Architecture | Architecture | Protect business rules from UI, frameworks, databases, model providers, and operational tools. | Clean Architecture - Clean Coder Blog |
| P03 | DDD / Bounded Contexts | Domain architecture | Model the business by explicit contexts with their own language, rules, data ownership, APIs, and events. | Domain-Driven Design - Martin Fowler; Bounded Context - Martin Fowler |
| P04 | Ports and Adapters | Architecture pattern | Keep the application core independent from delivery channels and external dependencies. | Hexagonal Architecture - Alistair Cockburn |
| P05 | DRY, KISS, YAGNI | Simplicity | Reduce duplicate logic, unnecessary complexity, and speculative features. | DRY - The Pragmatic Programmer; YAGNI - Martin Fowler |
| P06 | Idempotency by Design | Reliability | Ensure retries, replay, and duplicate requests do not create duplicate business effects. | RFC 9110 - HTTP Semantics; Stripe Idempotent Requests |
| P07 | Determinism and Reproducibility | Engineering discipline | Make builds, tests, environments, and AI evaluations repeatable and evidence-producing. | Reproducible Builds; SLSA Framework |
| P08 | Fail-Safe, Not Fail-Open | Security/resilience | Block protected actions when critical controls are unavailable or uncertain. | OWASP Authentication Cheat Sheet; NIST SP 800-53 Security Controls |
| P09 | Human-in-the-Loop | AI governance | Keep named human accountability for high-impact, low-confidence, risky, or regulated actions. | NIST AI Risk Management Framework; EU AI Act - European Commission |
| P10 | Least Privilege / SBAC | Access control | Grant only the access, skill, scope, and duration required for the task. | NIST SP 800-53 AC-6 Least Privilege; OWASP ASVS |
| P11 | Separation of Duties | Governance | Prevent one person, role, service, or AI agent from initiating, approving, and executing high-risk change alone. | NIST SP 800-53 AC-5 Separation of Duties; CIS Controls |
| P12 | Observability by Design | Operations | Design traceability, metrics, logs, audit, and AI telemetry before production use. | OpenTelemetry; Google SRE Book - Monitoring Distributed Systems |
| P13 | Policy as Code | Governance automation | Express security, compliance, architecture, and deployment rules as reviewable code. | Open Policy Agent; Conftest |
| P14 | Testability by Design | Quality | Make code, configuration, workflows, and AI behavior easy to test deterministically. | Martin Fowler - Test Pyramid; JUnit 5 User Guide |
| P15 | Secure by Design | Security | Build security into architecture, code, identity, data, AI, and operations from the start. | CISA Secure by Design; NIST SSDF SP 800-218 |
| P16 | Resilience Patterns | Reliability | Protect user experience and data correctness despite dependency failure, latency, retries, and partial outage. | Microsoft Cloud Design Patterns; Resilience4j Documentation |
| P17 | Architectural Fitness Functions | Architecture governance | Continuously test whether the architecture still satisfies its required qualities. | Thoughtworks - Evolutionary Architecture; Neal Ford - Evolutionary Architecture |
| P18 | Progressive Autonomy | AI governance | Increase automation authority gradually based on evidence, bounded scope, trust, and risk. | NIST AI RMF; NIST AI 600-1 Generative AI Profile |
| P19 | Reversibility / Rollbackability | Operational safety | Make changes recoverable through rollback, forward-fix, compensation, or reprocessing. | Kubernetes Deployments; Argo CD Documentation |
| P20 | AVCI | Universal quality | Make every input, component, process, output, and improvement attributable, verifiable, classifiable, and improvable. | NIST AI RMF; NIST SSDF SP 800-218 |

## 4. Detailed Principle Guidelines

Each principle below should be used as both a learning reference and a review checklist. Reviewers may cite the principle ID in PR/MR comments, ADRs, TDLs, architecture reviews, waiver decisions, and AI-agent governance records.

### P01 - SOLID

| Intent | Keep object-oriented and service code cohesive, replaceable, extensible, and dependency-managed. |
| --- | --- |
| Implementation Guidelines | • Use single responsibility for MicroFunctions, controllers, services, policies, and adapters.<br>• Prefer extension through new implementations or configuration over changing stable paths.<br>• Depend on domain ports and abstractions rather than infrastructure adapters. |
| AIRA Enforcement Notes | • Each STP-* MicroFunction has one reason to change.<br>• Architecture tests reject forbidden dependency direction.<br>• PR/MR summary identifies SOLID impact for non-trivial code changes. |
| Reference Websites | Robert C. Martin - Design Principles and Design Patterns (https://staff.cs.utu.fi/~jounsmed/doos_06/material/DesignPrinciplesAndPatterns.pdf)<br>SOLID overview - DigitalOcean (https://www.digitalocean.com/community/conceptual-articles/s-o-l-i-d-the-first-five-principles-of-object-oriented-design) |

### P02 - Clean Architecture

| Intent | Protect business rules from UI, frameworks, databases, model providers, and operational tools. |
| --- | --- |
| Implementation Guidelines | • Place enterprise rules and use cases at the center.<br>• Let dependencies point inward toward stable business abstractions.<br>• Keep frameworks, UI, database, messaging, AI gateways, and external systems at the edges. |
| AIRA Enforcement Notes | • Presentation has no domain logic.<br>• Spring, Kafka, OpenKM, LiteLLM, Vault, and PostgreSQL sit behind adapters.<br>• Architecture fitness functions verify dependency direction. |
| Reference Websites | Clean Architecture - Clean Coder Blog (https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) |

### P03 - DDD / Bounded Contexts

| Intent | Model the business by explicit contexts with their own language, rules, data ownership, APIs, and events. |
| --- | --- |
| Implementation Guidelines | • Define ubiquitous language per bounded context.<br>• Do not share mutable database ownership across contexts.<br>• Integrate through contracts, events, adapters, and anti-corruption layers. |
| AIRA Enforcement Notes | • AIRA modules map to bounded contexts and service ownership.<br>• PostgreSQL schemas and Flyway migrations have explicit owners.<br>• Cross-context interactions use OpenAPI, AsyncAPI, CloudEvents, or projections. |
| Reference Websites | Domain-Driven Design - Martin Fowler (https://martinfowler.com/bliki/DomainDrivenDesign.html)<br>Bounded Context - Martin Fowler (https://martinfowler.com/bliki/BoundedContext.html) |

### P04 - Ports and Adapters

| Intent | Keep the application core independent from delivery channels and external dependencies. |
| --- | --- |
| Implementation Guidelines | • Define inbound ports for use cases and outbound ports for dependencies.<br>• Implement adapters for REST, Kafka, database, OpenKM, LiteLLM, Temporal, Flowable, and external APIs.<br>• Use contract tests to prove adapters obey ports. |
| AIRA Enforcement Notes | • OpenKM, Kafka, Vault, LiteLLM, Keycloak, and PostgreSQL are adapters, not domain dependencies.<br>• Business logic uses framework context and ports only. |
| Reference Websites | Hexagonal Architecture - Alistair Cockburn (https://alistair.cockburn.us/hexagonal-architecture) |

### P05 - DRY, KISS, YAGNI

| Intent | Reduce duplicate logic, unnecessary complexity, and speculative features. |
| --- | --- |
| Implementation Guidelines | • Standardize repeated enterprise concerns as platform functions.<br>• Prefer simple deterministic designs over clever abstractions.<br>• Avoid building features until a real requirement, test, or risk justifies them. |
| AIRA Enforcement Notes | • MicroFunction framework owns reusable plumbing.<br>• Developers add STP-BUS-* logic only for genuine business gaps.<br>• Review rejects duplicate validation, audit, logging, retry, and security plumbing. |
| Reference Websites | DRY - The Pragmatic Programmer (https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/)<br>YAGNI - Martin Fowler (https://martinfowler.com/bliki/Yagni.html) |

### P06 - Idempotency by Design

| Intent | Ensure retries, replay, and duplicate requests do not create duplicate business effects. |
| --- | --- |
| Implementation Guidelines | • Use idempotency keys, request hashes, processed-event registries, and natural-key constraints.<br>• Make mutation paths retry-safe before enabling automatic retry.<br>• Record original safe response for legitimate duplicate submissions. |
| AIRA Enforcement Notes | • Mutating MicroFunction transactions declare idempotency and error policy.<br>• Kafka consumers, Temporal workflows, and REST commands are deduplicated.<br>• Idempotency evidence appears in audit and tests. |
| Reference Websites | RFC 9110 - HTTP Semantics (https://www.rfc-editor.org/rfc/rfc9110)<br>Stripe Idempotent Requests (https://docs.stripe.com/api/idempotent_requests) |

### P07 - Determinism and Reproducibility

| Intent | Make builds, tests, environments, and AI evaluations repeatable and evidence-producing. |
| --- | --- |
| Implementation Guidelines | • Pin dependencies and tool versions.<br>• Use deterministic tests with controlled clocks, random seeds, fixtures, and network mocks.<br>• Build from Golden Source and produce signed provenance. |
| AIRA Enforcement Notes | • Greenfield environments are rebuilt from clean baselines.<br>• CI evidence includes dependency lock, SBOM, artifact digest, and test reports.<br>• AI evaluations use versioned golden datasets. |
| Reference Websites | Reproducible Builds (https://reproducible-builds.org/)<br>SLSA Framework (https://slsa.dev/) |

### P08 - Fail-Safe, Not Fail-Open

| Intent | Block protected actions when critical controls are unavailable or uncertain. |
| --- | --- |
| Implementation Guidelines | • Default deny when identity, policy, guardrail, routing, or audit status is unknown.<br>• Return safe errors without leaking internals.<br>• Avoid bypass flags for guardrails, OPA, Harness, Vault, or audit. |
| AIRA Enforcement Notes | • If OPA, Vault, Keycloak, LiteLLM, NeMo Guardrails, Harness, or audit is unavailable, protected operations are blocked.<br>• Failure paths are tested and evidenced. |
| Reference Websites | OWASP Authentication Cheat Sheet (https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)<br>NIST SP 800-53 Security Controls (https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final) |

### P09 - Human-in-the-Loop

| Intent | Keep named human accountability for high-impact, low-confidence, risky, or regulated actions. |
| --- | --- |
| Implementation Guidelines | • Require human review for high-risk AI outputs and production-impacting changes.<br>• Route approvals through Flowable or equivalent workflow evidence.<br>• Keep AI recommendation separate from execution authority. |
| AIRA Enforcement Notes | • Hermes may reason; Harness executes after SBAC, OPA, trust, classification, and approval.<br>• Auto-Heal and Auto-Improve produce candidates, not unreviewed production changes. |
| Reference Websites | NIST AI Risk Management Framework (https://www.nist.gov/itl/ai-risk-management-framework)<br>EU AI Act - European Commission (https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai) |

### P10 - Least Privilege / SBAC

| Intent | Grant only the access, skill, scope, and duration required for the task. |
| --- | --- |
| Implementation Guidelines | • Use named identities, MFA, least privilege, short-lived access, and periodic access review.<br>• Apply RBAC/ABAC for people and SBAC for AI/human skills.<br>• Validate privileged actions through policy-as-code. |
| AIRA Enforcement Notes | • Developers, services, and AI agents use named accounts and bounded scopes.<br>• SBAC gates agent actions by approved skill, trust score, classification, and risk tier. |
| Reference Websites | NIST SP 800-53 AC-6 Least Privilege (https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)<br>OWASP ASVS (https://owasp.org/www-project-application-security-verification-standard/) |

### P11 - Separation of Duties

| Intent | Prevent one person, role, service, or AI agent from initiating, approving, and executing high-risk change alone. |
| --- | --- |
| Implementation Guidelines | • Separate maker, checker, approver, deployer, and auditor responsibilities.<br>• Require CODEOWNERS and reviewer independence for high-risk areas.<br>• Use workflow evidence for exceptions and approvals. |
| AIRA Enforcement Notes | • AI cannot approve its own PR or execute production changes.<br>• Architecture, security, data, and operations approvals are separated where required. |
| Reference Websites | NIST SP 800-53 AC-5 Separation of Duties (https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)<br>CIS Controls (https://www.cisecurity.org/controls) |

### P12 - Observability by Design

| Intent | Design traceability, metrics, logs, audit, and AI telemetry before production use. |
| --- | --- |
| Implementation Guidelines | • Emit traces, metrics, logs, and audit events with correlation IDs.<br>• Redact secrets and PII from telemetry.<br>• Define SLOs, dashboards, alerts, and evidence paths. |
| AIRA Enforcement Notes | • OpenTelemetry, Prometheus, Loki, Tempo, Grafana, Sentry, SigNoz, and audit stores are part of the design.<br>• Every critical flow can be reconstructed through trace_id and evidence references. |
| Reference Websites | OpenTelemetry (https://opentelemetry.io/)<br>Google SRE Book - Monitoring Distributed Systems (https://sre.google/sre-book/monitoring-distributed-systems/)<br>SigNoz Documentation (https://signoz.io/docs/) |

### P13 - Policy as Code

| Intent | Express security, compliance, architecture, and deployment rules as reviewable code. |
| --- | --- |
| Implementation Guidelines | • Write policies in OPA/Rego or approved policy engines.<br>• Test policies with positive and negative cases.<br>• Run policy checks locally and in CI/CD. |
| AIRA Enforcement Notes | • OPA/Conftest gates repository, model routing, Kubernetes, CI/CD, secrets, and Harness actions.<br>• Policy changes are reviewed like source code. |
| Reference Websites | Open Policy Agent (https://www.openpolicyagent.org/)<br>Conftest (https://www.conftest.dev/) |

### P14 - Testability by Design

| Intent | Make code, configuration, workflows, and AI behavior easy to test deterministically. |
| --- | --- |
| Implementation Guidelines | • Use dependency injection, ports, deterministic fixtures, and isolated units.<br>• Write tests before or with implementation.<br>• Test success, error, security, idempotency, and rollback paths. |
| AIRA Enforcement Notes | • TDD and red-green-refactor are mandatory where feasible.<br>• Architecture fitness, contract, security, unit, component, E2E, and AI evaluations produce evidence. |
| Reference Websites | Martin Fowler - Test Pyramid (https://martinfowler.com/bliki/TestPyramid.html)<br>JUnit 5 User Guide (https://junit.org/junit5/docs/current/user-guide/) |

### P15 - Secure by Design

| Intent | Build security into architecture, code, identity, data, AI, and operations from the start. |
| --- | --- |
| Implementation Guidelines | • Threat-model high-risk capabilities.<br>• Use secure defaults, input validation, output encoding, secrets management, mTLS, and least privilege.<br>• Scan code, dependencies, containers, IaC, and secrets in CI/CD. |
| AIRA Enforcement Notes | • AIRA uses Keycloak/AD, Vault/OpenBao, SPIFFE/SVID, OPA, SBAC, Guardrails, and audit evidence.<br>• Security is part of Definition of Done. |
| Reference Websites | CISA Secure by Design (https://www.cisa.gov/securebydesign)<br>NIST SSDF SP 800-218 (https://csrc.nist.gov/publications/detail/sp/800-218/final)<br>OWASP ASVS (https://owasp.org/www-project-application-security-verification-standard/) |

### P16 - Resilience Patterns

| Intent | Protect user experience and data correctness despite dependency failure, latency, retries, and partial outage. |
| --- | --- |
| Implementation Guidelines | • Use timeouts, retries with backoff, circuit breakers, bulkheads, rate limits, fallback, outbox, saga, and DLQ.<br>• Avoid retry storms and uncontrolled cascading failure.<br>• Test degradation and recovery paths. |
| AIRA Enforcement Notes | • Resilience4j, Temporal, Kafka DLQ, transactional outbox, and compensation are standard patterns.<br>• Resilience behavior is declared in MicroFunction policies. |
| Reference Websites | Microsoft Cloud Design Patterns (https://learn.microsoft.com/azure/architecture/patterns/)<br>Resilience4j Documentation (https://resilience4j.readme.io/) |

### P17 - Architectural Fitness Functions

| Intent | Continuously test whether the architecture still satisfies its required qualities. |
| --- | --- |
| Implementation Guidelines | • Define executable checks for dependency direction, layering, security, migration rules, and model-routing constraints.<br>• Run fitness functions in CI/CD.<br>• Treat failing architecture checks as defects. |
| AIRA Enforcement Notes | • AIRA uses fitness functions to enforce Clean Architecture, DDD boundaries, no direct model calls, no forbidden dependencies, and evidence completeness. |
| Reference Websites | Thoughtworks - Evolutionary Architecture (https://www.thoughtworks.com/insights/books/building-evolutionary-architectures)<br>Neal Ford - Evolutionary Architecture (https://nealford.com/books/building-evolutionary-architectures/) |

### P18 - Progressive Autonomy

| Intent | Increase automation authority gradually based on evidence, bounded scope, trust, and risk. |
| --- | --- |
| Implementation Guidelines | • Start with recommend-only AI behavior.<br>• Promote to draft, test, propose PR, and limited execution only after evidence thresholds are met.<br>• Decay trust after incidents or stale skills. |
| AIRA Enforcement Notes | • Agent trust is skill-based, scoped, decaying, and mediated by Harness.<br>• Autonomy never bypasses human accountability for high-impact actions. |
| Reference Websites | NIST AI RMF (https://www.nist.gov/itl/ai-risk-management-framework)<br>NIST AI 600-1 Generative AI Profile (https://www.nist.gov/itl/ai-risk-management-framework/generative-artificial-intelligence) |

### P19 - Reversibility / Rollbackability

| Intent | Make changes recoverable through rollback, forward-fix, compensation, or reprocessing. |
| --- | --- |
| Implementation Guidelines | • Define rollback, forward-fix, or compensation before release.<br>• Use GitOps, versioned migrations, feature flags, and outbox/replay where appropriate.<br>• Practice recovery in non-production. |
| AIRA Enforcement Notes | • Argo CD, Kubernetes, Flyway, Temporal compensation, DLQ replay, and cache rebuild are governed recovery mechanisms.<br>• No change is complete without a rework or rollback path. |
| Reference Websites | Kubernetes Deployments (https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)<br>Argo CD Documentation (https://argo-cd.readthedocs.io/) |

### P20 - AVCI

| Intent | Make every input, component, process, output, and improvement attributable, verifiable, classifiable, and improvable. |
| --- | --- |
| Implementation Guidelines | • Record owner, source, reason, version, evidence, classification, and improvement path.<br>• Block production readiness when any AVCI property is missing.<br>• Apply AVCI to human work, automation, and AI outputs. |
| AIRA Enforcement Notes | • AVCI is the universal AIRA quality gate for code, prompts, models, configs, data, tests, evidence, and decisions.<br>• PR/MR templates, evidence packs, and review gates enforce AVCI by construction. |
| Reference Websites | NIST AI RMF (https://www.nist.gov/itl/ai-risk-management-framework)<br>NIST SSDF SP 800-218 (https://csrc.nist.gov/publications/detail/sp/800-218/final)<br>ISO/IEC 27001 overview (https://www.iso.org/isoiec-27001-information-security.html) |

## 5. AIRA Enforcement Rules

| **Rule ID** | **Rule** | **Minimum Enforcement** |
| --- | --- | --- |
| ER-01 | PR/MR Principle Declaration | Non-trivial changes must declare relevant principle impacts, especially SOLID, security, testability, observability, rollback, and AVCI. |
| ER-02 | Architecture Fitness Functions | Executable checks must enforce boundary rules such as no direct model provider calls, no forbidden dependencies, no cross-context database writes, and evidence completeness. |
| ER-03 | AI-Assisted Work Control | AI-generated code, tests, prompts, summaries, and remediation proposals are advisory until verified by a named human and passed through required gates. |
| ER-04 | Auto-Heal / Auto-Learn / Auto-Improve Constraint | Automated improvement loops must preserve or improve all 20 principles. They cannot trade security, evidence, or reversibility for speed. |
| ER-05 | Waiver Discipline | Any intentional deviation requires owner, reason, risk, expiry, compensating control, approver, and improvement path. |
| ER-06 | Reference Currency | Website references must be reviewed quarterly and whenever a cited standard is materially updated or deprecated. |

## 6. Recommended Reference Maintenance Procedure

Quarterly, confirm each reference URL is still reachable and still represents the intended principle.

When a reference changes materially, create a TDL or documentation update and update this reference library.

When a principle is used as an architecture fitness function, record the CI check, rule ID, and failure action.

Retire weak or stale references through supersedence; do not silently overwrite the historical reason for the prior reference.

Keep a plain-language explanation for developers, not only academic or standards-based wording.

## Appendix A. Quick Checklist

| **Review Area** | **Question** | **Relevant Principles** | **Evidence Expected** |
| --- | --- | --- | --- |
| Design | Are responsibilities small, bounded, and aligned to domain ownership? | P01, P02, P03, P04 | ADR/TDL, diagram, package/dependency checks. |
| Implementation | Is logic simple, testable, deterministic, and not duplicated? | P01, P05, P07, P14 | Unit tests, mutation/coverage, architecture checks. |
| Mutation and workflow | Can duplicate requests, retries, and failures be handled safely? | P06, P16, P19 | Idempotency tests, workflow history, compensation evidence. |
| Security | Does access fail closed and follow least privilege and separation of duties? | P08, P10, P11, P15 | OPA/SBAC results, security scans, reviewer approval. |
| Operations | Can the action be observed, traced, reverted, and improved? | P12, P16, P19, P20 | Trace IDs, dashboards, runbooks, rollback/replay evidence. |
| AI governance | Is autonomy progressive, human-accountable, and classification-aware? | P09, P10, P18, P20 | Guardrail result, model route, Harness decision, human approval. |

## Appendix B. Website Reference Register

The following websites are consolidated for developer reference. The links should be validated during each quarterly review.

| **Principle ID** | **Reference Name** | **Website** | **Use** |
| --- | --- | --- | --- |
| P01 | Robert C. Martin - Design Principles and Design Patterns | https://staff.cs.utu.fi/~jounsmed/doos_06/material/DesignPrinciplesAndPatterns.pdf | Reference for SOLID |
| P01 | SOLID overview - DigitalOcean | https://www.digitalocean.com/community/conceptual-articles/s-o-l-i-d-the-first-five-principles-of-object-oriented-design | Reference for SOLID |
| P02 | Clean Architecture - Clean Coder Blog | https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html | Reference for Clean Architecture |
| P03 | Domain-Driven Design - Martin Fowler | https://martinfowler.com/bliki/DomainDrivenDesign.html | Reference for DDD / Bounded Contexts |
| P03 | Bounded Context - Martin Fowler | https://martinfowler.com/bliki/BoundedContext.html | Reference for DDD / Bounded Contexts |
| P04 | Hexagonal Architecture - Alistair Cockburn | https://alistair.cockburn.us/hexagonal-architecture | Reference for Ports and Adapters |
| P05 | DRY - The Pragmatic Programmer | https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/ | Reference for DRY, KISS, YAGNI |
| P05 | YAGNI - Martin Fowler | https://martinfowler.com/bliki/Yagni.html | Reference for DRY, KISS, YAGNI |
| P06 | RFC 9110 - HTTP Semantics | https://www.rfc-editor.org/rfc/rfc9110 | Reference for Idempotency by Design |
| P06 | Stripe Idempotent Requests | https://docs.stripe.com/api/idempotent_requests | Reference for Idempotency by Design |
| P07 | Reproducible Builds | https://reproducible-builds.org/ | Reference for Determinism and Reproducibility |
| P07 | SLSA Framework | https://slsa.dev/ | Reference for Determinism and Reproducibility |
| P08 | OWASP Authentication Cheat Sheet | https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html | Reference for Fail-Safe, Not Fail-Open |
| P08 | NIST SP 800-53 Security Controls | https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final | Reference for Fail-Safe, Not Fail-Open |
| P09 | NIST AI Risk Management Framework | https://www.nist.gov/itl/ai-risk-management-framework | Reference for Human-in-the-Loop |
| P09 | EU AI Act - European Commission | https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai | Reference for Human-in-the-Loop |
| P10 | NIST SP 800-53 AC-6 Least Privilege | https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final | Reference for Least Privilege / SBAC |
| P10 | OWASP ASVS | https://owasp.org/www-project-application-security-verification-standard/ | Reference for Least Privilege / SBAC |
| P11 | NIST SP 800-53 AC-5 Separation of Duties | https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final | Reference for Separation of Duties |
| P11 | CIS Controls | https://www.cisecurity.org/controls | Reference for Separation of Duties |
| P12 | OpenTelemetry | https://opentelemetry.io/ | Reference for Observability by Design |
| P12 | Google SRE Book - Monitoring Distributed Systems | https://sre.google/sre-book/monitoring-distributed-systems/ | Reference for Observability by Design |
| P12 | SigNoz Documentation | https://signoz.io/docs/ | Reference for Observability by Design |
| P13 | Open Policy Agent | https://www.openpolicyagent.org/ | Reference for Policy as Code |
| P13 | Conftest | https://www.conftest.dev/ | Reference for Policy as Code |
| P14 | Martin Fowler - Test Pyramid | https://martinfowler.com/bliki/TestPyramid.html | Reference for Testability by Design |
| P14 | JUnit 5 User Guide | https://junit.org/junit5/docs/current/user-guide/ | Reference for Testability by Design |
| P15 | CISA Secure by Design | https://www.cisa.gov/securebydesign | Reference for Secure by Design |
| P15 | NIST SSDF SP 800-218 | https://csrc.nist.gov/publications/detail/sp/800-218/final | Reference for Secure by Design |
| P15 | OWASP ASVS | https://owasp.org/www-project-application-security-verification-standard/ | Reference for Secure by Design |
| P16 | Microsoft Cloud Design Patterns | https://learn.microsoft.com/azure/architecture/patterns/ | Reference for Resilience Patterns |
| P16 | Resilience4j Documentation | https://resilience4j.readme.io/ | Reference for Resilience Patterns |
| P17 | Thoughtworks - Evolutionary Architecture | https://www.thoughtworks.com/insights/books/building-evolutionary-architectures | Reference for Architectural Fitness Functions |
| P17 | Neal Ford - Evolutionary Architecture | https://nealford.com/books/building-evolutionary-architectures/ | Reference for Architectural Fitness Functions |
| P18 | NIST AI RMF | https://www.nist.gov/itl/ai-risk-management-framework | Reference for Progressive Autonomy |
| P18 | NIST AI 600-1 Generative AI Profile | https://www.nist.gov/itl/ai-risk-management-framework/generative-artificial-intelligence | Reference for Progressive Autonomy |
| P19 | Kubernetes Deployments | https://kubernetes.io/docs/concepts/workloads/controllers/deployment/ | Reference for Reversibility / Rollbackability |
| P19 | Argo CD Documentation | https://argo-cd.readthedocs.io/ | Reference for Reversibility / Rollbackability |
| P20 | NIST AI RMF | https://www.nist.gov/itl/ai-risk-management-framework | Reference for AVCI |
| P20 | NIST SSDF SP 800-218 | https://csrc.nist.gov/publications/detail/sp/800-218/final | Reference for AVCI |
| P20 | ISO/IEC 27001 overview | https://www.iso.org/isoiec-27001-information-security.html | Reference for AVCI |

## Appendix C. AVCI Compliance Summary

| **AVCI Property** | **Compliance Statement** |
| --- | --- |
| Attributable | This reference library is owned by the Solutions Architecture Office / IT Head and links each principle to source references and AIRA enforcement expectations. |
| Verifiable | Principle use is verifiable through PR/MR summaries, ADR/TDL references, CI/CD gates, architecture fitness functions, tests, and review records. |
| Classifiable | The document is classified as INTERNAL CONFIDENTIAL. Individual references are public, but AIRA-specific enforcement notes and governance mapping are internal. |
| Improvable | The library has a quarterly review cadence and should be updated when principles, source references, AIRA standards, or architecture fitness functions change. |

**End of Document**
