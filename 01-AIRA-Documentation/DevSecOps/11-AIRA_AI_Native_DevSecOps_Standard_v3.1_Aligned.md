---
document_id: "AIRA-DOC-011"
title: "AIRA AI Native DevSecOps Standard"
version: "v3.1"
status: "aligned"
source_file: "11-AIRA_AI_Native_DevSecOps_Standard_v3.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/DevSecOps"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - devsecops
---

# AIRA AI Native DevSecOps Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA AI-Native DevSecOps Engineering Standard**

_Operating Model · Lifecycle Discipline · Governed AI Augmentation_

**v3.1 - Cross-Pack DevSecOps Synchronization Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-011** |
| **Document Title** | **AIRA AI-Native DevSecOps Engineering Standard** |
| **Document Version** | **v3.1 - Cross-Pack DevSecOps Synchronization Update** |
| **Supersedes** | **11-AIRA_AI_Native_DevSecOps_Standard_v3.0** |
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

**Document role. **Engineering lifecycle and evidence discipline for AI-native DevSecOps, promotion gates, supply chain, and controlled automation.

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

Updated DevSecOps references to the Technology Stack v9.0 and the Pack 03 GitNexus and Dograh governance model.

Aligned AI operating controls with LiteLLM-only model access, NeMo guardrails, Harness action mediation, SBAC, OPA, and human-in-the-loop approval.

Added explicit GitNexus treatment as read-only, derivative evidence/context that cannot approve, merge, deploy, or mutate production.

Strengthened supply-chain language around Golden Source, SBOM, signed artifacts, SLSA Level 3 target evidence, policy-as-code, and reversible promotion.

Normalized classification and revision-control references to INTERNAL CONFIDENTIAL and Revision Control Matrix v1.1.

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

**AI-Native DevSecOps Engineering Standard**

**Operating Model · Lifecycle Discipline · Governed AI Augmentation**

**AVCI by Construction · SOLID-Enforced · Harness-Mediated · Evidence-First**

| **Mandatory v3.1 Enforcement Position**<br>AIRA DevSecOps work is not production-ready unless every lifecycle phase preserves or improves AVCI, SOLID, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, testability, security posture, observability, resilience, reversibility, rollbackability, and policy-as-code compliance. Auto-Heal, Auto-Learn, and Auto-Improve may propose, draft, test, and recommend; they must not silently weaken architecture, evidence, security, or human accountability. |
| --- |

**Version 3.1 · May 2026**

Prepared for the Solutions Architect / IT Head, Software Development, DevSecOps, Infrastructure, Security, QA, Compliance, and Internal Audit teams

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA AI-Native DevSecOps Engineering Standard |
| Document Version | v3.0 - Enterprise Design Principles and SOLID Enforcement Release |
| Supersedes | 11-AIRA_AI_Native_DevSecOps_Standard_v3.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / AI DevSecOps Lead |
| Effective Date | Upon CAB / Architecture Review Board approval |
| Review Cadence | Quarterly; unscheduled on material stack, security, regulatory, AI-risk, architecture, or operating-model change |
| Audience | Solutions Architect / IT Head, Enterprise Architects, Software Development Leads, DevSecOps Leads, QA, SRE, System Administrator, Security Administrator, DBA, AI Engineers, Compliance, Internal Audit |
| Primary Companion Documents | 01-AIRA_AVCI_Engineering_Standard_v3.0; 01A-AIRA_Enterprise_Design_Principles_and_SOLID_Enforcement_Layer_v1.1; 02-AIRA_Engineering_Blueprint_v5.0; 03-AIRA_Developer_Guide_v4.0; 06-AIRA_CLAUDE_MD_Reference_v3.0; 08-AIRA_Unit_Testing_Standard_v3.0; 10/10A/10B/10C/10D MicroFunction standards; 12-AIRA_CLAUDE_MD_Rollout_Starter_Pack_v3.0 |
| Compliance Scope | AVCI; SOLID; ISO/IEC 27001:2022; CIS Controls v8.1; NIST SSDF SP 800-218; NIST AI RMF; OWASP ASVS; OWASP SAMM; SOC 2; BSP IT Risk; SLSA Build Level 3 target |
| Evidence Path | OpenKM Tier-0 / AIRA / Engineering Standards / DevSecOps / v3.0/ |

## Version 3.1 Change Summary

| **Change Area** | **v3.0 Improvement** |
| --- | --- |
| Enterprise design layer | Adopts 01A as the canonical Enterprise Design Principles and SOLID Enforcement Layer for all DevSecOps lifecycle activities. |
| AVCI expansion | Adds principle-impact evidence, architecture-boundary evidence, reversibility evidence, and fitness-function evidence to the DevSecOps gate model. |
| Auto-Heal / Auto-Learn / Auto-Improve | Requires every automated or AI-assisted change to preserve or improve SOLID, architecture boundaries, testability, security posture, observability, rollbackability, and AVCI evidence. |
| Pipeline governance | Adds CI/CD gates for ArchUnit, dependency rules, contract tests, Semgrep/SAST, OPA/Conftest, mutation tests, SBOM/provenance, and AI evaluation. |
| Human accountability | Strengthens Maker-Checker, separation of duties, SBAC, and human-in-the-loop controls for high-impact changes. |
| Repository enforcement | Aligns with CLAUDE.md Reference v3.0 and Rollout Starter Pack v3.0 for pre-commit, CI strict mode, CODEOWNERS, PR/MR templates, and AI tool adapter governance. |
| MicroFunction alignment | Treats MicroFunction publish, activation, execution, error handling, compensation, and catalog updates as governed DevSecOps changes. |

## Table of Contents

## 1. Executive Summary

## 2. Scope, Authority, and Document Hierarchy

## 3. Non-Negotiable Operating Principles

## 4. Enterprise Design Principles and SOLID Enforcement Layer

## 5. AIRA DevSecOps Operating Model

## 6. End-to-End DevSecOps Lifecycle

## 7. Repository, Branching, and PR/MR Discipline

## 8. CI/CD, Quality Gates, and Evidence Pipeline

## 9. AI-Assisted Engineering Governance

## 10. Auto-Heal, Auto-Learn, Auto-Improve, and AutoResearch

## 11. Security, Policy, Secrets, and Access Control

## 12. Observability, Audit, and Evidence Model

## 13. Release, Deployment, Change, and Rollback Governance

## 14. RACI and Separation of Duties

## 15. Waivers, Exceptions, and Non-Conformance

## 16. Implementation Roadmap and Acceptance Criteria

## 17. AVCI Compliance Summary

## 1. Executive Summary

AIRA is a regulated, mission-critical, AI-native enterprise platform. This standard defines how engineering work is planned, coded, built, tested, released, deployed, operated, improved, and evidenced. Version 3.0 upgrades the DevSecOps operating model by embedding the Enterprise Design Principles and SOLID Enforcement Layer as a mandatory control across every human, automated, and AI-assisted activity.

The Technology Stack defines approved tools. The Engineering Blueprint defines architecture. The Developer Guide defines implementation behavior. The AVCI Standard defines the universal quality gate. This document binds those standards into the daily operating discipline of the delivery organization: every change flows through governed source control, every AI action is mediated, every release produces evidence, and every improvement is reviewed before promotion.

| **v3.0 Operating Philosophy**<br>Discipline first, automation second, intelligence third - and AVCI always. Automation and AI may accelerate delivery only when they preserve architecture, evidence, security, testability, observability, reversibility, and human accountability. |
| --- |

### 1.1 Strategic Outcomes

| **Outcome** | **How This Standard Delivers It** |
| --- | --- |
| Regulatory defensibility | Every material action produces AVCI evidence: owner, intent, classification, verification, approval, model/tool involvement, policy result, and improvement path. |
| AI-safe acceleration | ChatGPT, Codex, Claude Code, Hermes, and other approved assistants may draft and analyze, but Harness, SBAC, OPA, guardrails, CI gates, and human approval control action. |
| Architecture-preserving delivery | SOLID, Clean Architecture, DDD, ports-and-adapters, and fitness functions are not guidelines; they are acceptance gates. |
| Secure and reliable operations | Fail-safe behavior, least privilege, separation of duties, secret hygiene, resilience patterns, and rollbackability are embedded in pipelines and runbooks. |
| Continuous improvement without uncontrolled self-modification | Auto-Heal, Auto-Learn, and Auto-Improve generate candidates, PRs, knowledge artifacts, and test updates under review; they do not self-promote to production. |

### 1.2 What This Standard Is Not

It is not a license for autonomous production modification by AI agents.

It is not a substitute for the Engineering Blueprint, Developer Guide, Unit Testing Standard, Security Standard, or MicroFunction standards.

It is not optional under schedule pressure; bypassing it creates audit exposure and architecture debt.

It does not allow direct model-provider calls, guardrail bypass, direct production kubectl, direct database edits, or ungoverned click-ops.

## 2. Scope, Authority, and Document Hierarchy

### 2.1 In Scope

All application development, testing, infrastructure-as-code, GitOps, Helm, database migration, prompt, guardrail, model route, and configuration work.

All AI-assisted engineering work using ChatGPT, Codex, Claude Code, Windsurf, Copilot, Hermes Agent, task agents, or future approved assistants.

All MicroFunction catalog entries, runtime configuration, process definitions, standard step extensions, business MicroFunctions, and assembly templates.

All CI/CD pipelines, policy-as-code checks, build artifacts, SBOMs, signatures, attestations, release evidence, and environment promotions.

All Auto-Heal, Auto-Learn, Auto-Improve, and controlled AutoResearch loops.

### 2.2 Authority and Precedence

| **Authority Level** | **Document / Control** | **DevSecOps Concern** |
| --- | --- | --- |
| L0 | Executive Architecture Authority / Consolidated Architecture Decisions | Final authority for system boundaries, major technology decisions, and unresolved architecture conflicts. |
| L1 | 02-AIRA Engineering Blueprint v5.1 | Build-ready architecture, service boundaries, data flow, security model, workflow partition, and AI execution boundary. |
| L1 | This DevSecOps Standard v3.1 | Day-to-day engineering operating discipline, lifecycle gates, evidence pipeline, AI-assisted engineering controls, and promotion model. |
| L2 | 01 AVCI v3.1 and 01A Enterprise Design Principles | Universal artifact quality, 20-principle enforcement, SOLID compliance, fitness evidence, and improvement discipline. |
| L2 | Developer Guide, Unit Testing, CLAUDE.md, MicroFunction, Security, API, Database, Knowledge standards | Specialist rules that implement the operating discipline in each engineering domain. |
| L3 | Tickets, ADRs, TDLs, PR/MR evidence, runbooks, and local SOPs | Implementation-specific evidence and operational procedures. |

| **Conflict Resolution Rule**<br>If a DevSecOps procedure appears to conflict with architecture, AVCI, security, or 01A design-principle obligations, the issue must be logged as an AVCI reconciliation item. The team must not silently choose the faster or more convenient interpretation. |
| --- |

## 3. Non-Negotiable Operating Principles

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| DSO-1 | AVCI by Construction | Every artifact is attributable, verifiable, classifiable, and improvable from creation. Work without AVCI evidence is not production-ready. |
| DSO-2 | Enterprise Design Principles by Construction | SOLID, Clean Architecture, DDD, ports-and-adapters, testability, security, observability, reversibility, and rollbackability are delivery gates. |
| DSO-3 | Harness-Mediated AI Execution | AI agents do not execute tools, repositories, pipelines, infrastructure, databases, or production APIs directly. |
| DSO-4 | All Model Traffic Through LiteLLM | Application services, scripts, notebooks, and agents must not call provider SDKs directly. Model aliases and routes are governed. |
| DSO-5 | Guardrails Always; Bypass Never | Input, Retrieval, Execution, and Output checkpoints are mandatory for AI or tool-action flows. Failure blocks the operation. |
| DSO-6 | Policy is Final Authority | OPA and approved policy-as-code decide permission. AI recommends; policy permits or denies; humans approve high-impact changes. |
| DSO-7 | Human Accountability | Named humans remain accountable for production promotion, regulatory obligations, customer impact, and architecture decisions. |
| DSO-8 | Fail Safe, Not Open | If OPA, Harness, LiteLLM, guardrails, Vault, identity, audit, or critical evidence services are unavailable, protected actions are blocked. |
| DSO-9 | Trust is Earned and Bounded | Agent trust scores are evidence-based, scoped, decaying, and reduced after incidents. Vendor brand does not confer authority. |
| DSO-10 | Single Contribution Path | Code, config, prompts, guardrails, policies, migrations, and infrastructure enter through protected Git workflows and CI evidence. |

## 4. Enterprise Design Principles and SOLID Enforcement Layer

This standard adopts 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 as the canonical design-control reference. In DevSecOps, the principles are enforced through planning criteria, repository rules, pipeline checks, PR/MR evidence, architecture fitness functions, release gates, operational runbooks, and improvement-loop approvals.

### 4.1 Canonical 20 Principles

| **No.** | **Principle** | **DevSecOps Enforcement Meaning** |
| --- | --- | --- |
| 1 | SOLID | No change may introduce hidden responsibilities, unstable dependencies, interface pollution, or dependency inversion violations. |
| 2 | Clean Architecture | Domain and application policies remain independent of UI, database, framework, infrastructure, and model-provider details. |
| 3 | DDD / Bounded Contexts | Teams preserve schema, service, API, event, and language boundaries for each bounded context. |
| 4 | Ports and Adapters | External systems, AI providers, databases, queues, and document stores are accessed through explicit ports and adapters. |
| 5 | DRY, KISS, YAGNI | Shared concerns are centralized, solutions remain simple, and speculative abstractions require architecture approval. |
| 6 | Idempotency by Design | Mutations, consumers, workflows, retries, compensation, and external calls are deduplicated and replay-safe. |
| 7 | Determinism and Reproducibility | Builds, tests, migrations, model routes, prompt versions, and deployments must be repeatable from approved source. |
| 8 | Fail-Safe, Not Fail-Open | Unavailable controls block protected actions rather than allowing silent bypass. |
| 9 | Human-in-the-Loop | High-risk, low-confidence, production-impacting, Confidential/Restricted, or policy-exception actions require human approval. |
| 10 | Least Privilege / SBAC | Humans, services, agents, and tools receive only the skill, role, policy, and scope required for the task. |
| 11 | Separation of Duties | Maker, checker, approver, deployer, and auditor roles are separated according to risk. |
| 12 | Observability by Design | Logs, metrics, traces, audit, and business evidence are designed before release, not added after incidents. |
| 13 | Policy as Code | Authorization, admission, pipeline, routing, classification, and release controls are versioned and tested as policy artifacts. |
| 14 | Testability by Design | Changes must be unit-testable, contract-testable, integration-testable, and architecture-testable. |
| 15 | Secure by Design | Security controls are part of design, code, configuration, tests, pipelines, and runtime operation. |
| 16 | Resilience Patterns | Timeout, retry, circuit breaker, bulkhead, rate limit, fallback, saga, outbox, and DLQ patterns are applied by risk. |
| 17 | Architectural Fitness Functions | Architecture rules are continuously verified using automated tests and policy checks. |
| 18 | Progressive Autonomy | AI autonomy increases only after evidence, trust, risk, and human-review thresholds are met. |
| 19 | Reversibility / Rollbackability | Every release has rollback, forward-fix, compensation, or feature-flag kill-switch evidence. |
| 20 | AVCI | Every input, component, process, and output remains attributable, verifiable, classifiable, and improvable. |

### 4.2 SOLID Enforcement in DevSecOps

| **SOLID Principle** | **Pipeline / Review Enforcement** |
| --- | --- |
| Single Responsibility | Reject changes where a service, MicroFunction, class, pipeline job, prompt, or policy owns unrelated concerns. Detect using code review, package rules, complexity metrics, and component ownership checks. |
| Open/Closed | Prefer extension through configuration, catalog registration, adapters, policies, or strategy implementations. Reject core rewrites for simple variants unless approved by ADR/TDL. |
| Liskov Substitution | Contract and component tests must prove that implementation replacements preserve behavior, errors, invariants, and security expectations. |
| Interface Segregation | Ports, service interfaces, APIs, and agent action vocabularies must be narrow, role-specific, and classification-aware. |
| Dependency Inversion | Domain/application logic depends on abstractions, not framework, database, provider SDK, model route, or infrastructure details. |

### 4.3 Mandatory Architecture Fitness Function Categories

| **Category** | **Minimum Fitness Function** |
| --- | --- |
| Boundary fitness | ArchUnit or equivalent rules verify package, module, bounded-context, and dependency direction constraints. |
| Security fitness | Semgrep/SAST, dependency scans, secret scans, OPA policy tests, and redaction tests run in CI. |
| Contract fitness | OpenAPI, AsyncAPI, Avro/JSON schema compatibility, Problem Details, idempotency, and CloudEvents rules are tested. |
| Data fitness | Flyway validation, migration ordering, RLS checks, schema ownership, and outbox/idempotency table coverage are tested. |
| AI safety fitness | LiteLLM route checks, NeMo guardrail tests, prompt classification tests, retrieval grounding tests, and Harness authorization tests run before release. |
| Operational fitness | Readiness/liveness, observability, SLO signals, rollback plan, feature flag behavior, and incident runbook evidence are verified. |

## 5. AIRA DevSecOps Operating Model

The AIRA operating model separates human work, AI reasoning, policy decision, tool execution, platform operation, and evidence production. This separation allows the organization to use AI aggressively while preserving auditability, security, and architectural control.

| **Plane** | **Primary Components** | **Responsibility** | **Key Controls** |
| --- | --- | --- | --- |
| Human Workstation Plane | Hardened workstation, VS Code, devcontainer, Git, pre-commit, approved AI clients | Humans plan, code, test, review AI output, and push through the protected contribution path. | Named user, MFA, local hooks, synthetic data, no secrets, no direct prod access |
| Golden Source Plane | Git, registry, template registry, contract registry, OpenKM evidence store | Stores approved source, policies, prompts, guardrails, configs, artifacts, and evidence. | Signed commits, CODEOWNERS, branch protection, versioning, retention |
| AI Reasoning Plane | ChatGPT, Codex, Claude Code, Hermes Agent, task agents | Drafts, analyzes, summarizes, proposes, and explains. Does not directly execute protected actions. | LiteLLM routing, guardrails, classification, prompt version, human accountability |
| Harness Control Plane | Harness service, SBAC, OPA, trust score, delegation, audit outbox | Mediates AI tool actions and validates identity, skill, trust, scope, risk, and approval. | Fail-closed policy, immutable audit, action vocabulary, approval gates |
| Runtime / Platform Plane | Kubernetes, Argo CD, Vault, PostgreSQL, Kafka, Temporal, Flowable, OpenKM, observability stack | Runs controlled workloads and accepts changes only from approved paths. | GitOps, policy-as-code, workload identity, traceability, RLS, secrets governance |
| Evidence and Knowledge Plane | OpenKM, audit store, CI reports, LLM Wiki, Obsidian, telemetry, ADRs | Stores evidence, lessons, approved knowledge, remediation history, and compliance material. | AVCI schema, classification, citations, retention, human review |

### 5.1 One-Directional Flow Invariant

| **One Contribution Path**<br>Source change -> pull/merge request -> review -> CI evidence -> signed artifacts -> registry -> GitOps reconciliation -> admission policy -> runtime -> telemetry/audit -> governed improvement. Workstations and AI agents do not push directly to clusters, databases, model backends, production tools, or operational consoles. |
| --- |

## 6. End-to-End DevSecOps Lifecycle

| **Phase** | **Mandatory DevSecOps Controls** | **Minimum Evidence** |
| --- | --- | --- |
| Plan | Ticket, requirement, classification, ADR/TDL trigger, design principle impact, threat model | Owner, intent, classification, bounded context, risk, acceptance criteria, initial tests |
| Code | TDD, CLAUDE.md rules, SOLID, Clean Architecture, DDD boundaries, secure coding | Red/green/refactor evidence, local hook output, AI involvement declaration |
| Build | Reproducible build, pinned dependencies, SBOM, SCA, secrets scan, provenance | Build logs, dependency lock, SBOM, SLSA provenance, scan reports |
| Test | Unit, component, contract, architecture, mutation, AI evaluation, security tests | Coverage, mutation score, ArchUnit, Semgrep, contract reports, guardrail results |
| Release | Versioning, release notes, approval, evidence pack, deployment plan, rollback plan | Signed artifact, change record, risk acceptance, rollback/forward-fix evidence |
| Deploy | GitOps, policy-as-code admission, secret retrieval, workload identity, environment promotion | Argo CD status, OPA admission, Vault lease, deployment trace, release approval |
| Operate | Observability, incident handling, SLOs, audit, drift detection, backup/restore | Trace/log/metric correlation, incident records, restore tests, drift reports |
| Improve | Auto-Heal candidates, Auto-Learn knowledge, Auto-Improve proposals, post-incident reviews | Human-reviewed PRs, approved knowledge artifacts, regression tests, updated standards |

### 6.1 Phase Exit Gates

| **Gate** | **Reject If** |
| --- | --- |
| Plan-to-Code | No ticket, unclear owner, missing classification, missing acceptance criteria, missing architecture boundary assessment, missing ADR/TDL when material. |
| Code-to-Build | CLAUDE.md violations, hidden direct provider calls, direct DB mutation patterns, missing tests, unclear AI involvement, architecture boundary violations. |
| Build-to-Test | Build not reproducible, dependency not pinned, SBOM missing, secret scan failed, source provenance missing. |
| Test-to-Release | Architecture fitness failed, contract compatibility failed, security gate failed, mutation/coverage below threshold, AI guardrail tests missing. |
| Release-to-Deploy | No rollback/forward-fix plan, no CAB/approval where required, no classification or policy evidence, no deployment readiness evidence. |
| Operate-to-Improve | Incident or telemetry evidence is not linked to a ticket, PR, knowledge artifact, test update, or risk acceptance. |

## 7. Repository, Branching, and PR/MR Discipline

AIRA repositories are controlled engineering workspaces. Repository rules apply to humans and AI tools equally. CLAUDE.md is the human-readable rule source; compiled lock files, pre-commit hooks, CI strict mode, CODEOWNERS, branch protection, and PR/MR templates are the executable enforcement layer.

| **Control** | **Mandatory Rule** |
| --- | --- |
| Protected branches | main, release, prod, and environment branches require signed commits, reviews, status checks, and CODEOWNERS approval. |
| Branch naming | Branches reference ticket/ADR and change type: feature/, fix/, chore/, docs/, ai-eval/, mf-config/, security/, hotfix/. |
| PR/MR template | Includes AVCI summary, 01A principle impact, tests, scans, AI tool use, risk, rollback, data classification, and reviewer checklist. |
| CODEOWNERS | Architecture, security, database, API, AI, MicroFunction, and infra paths require specialist reviewers. |
| AI involvement | Every PR/MR declares AI tools used, prompt intent, files affected, tests run, human checker, and limitations. |
| No direct-to-main | No human, AI agent, automation, or administrator bypasses protected branches except a documented break-glass procedure with post-action reconciliation. |

### 7.1 Required PR/MR AVCI + Principle Evidence

| **Evidence Field** | **Required Content** |
| --- | --- |
| Attributable | Ticket/ADR/TDL, author, reviewers, AI tool/model, prompt intent, commit, owner, approver. |
| Verifiable | Unit/component/contract/security/architecture/AI evaluation results, scan links, CI run ID, evidence path. |
| Classifiable | Data classification, bounded context, risk tier, model route eligibility, logging/caching restrictions. |
| Improvable | Metrics affected, feedback path, post-release monitoring, known limitations, future improvement ticket. |
| Principle Impact | SOLID/Clean Architecture/DDD/ports/idempotency/determinism/security/testability/observability/rollback impact summary. |
| Reversibility | Rollback, forward fix, compensation, feature flag, migration strategy, or explicit approved exception. |

## 8. CI/CD, Quality Gates, and Evidence Pipeline

The CI/CD pipeline is the primary automated enforcement layer for DevSecOps discipline. AIRA does not rely only on human review. Deterministic checks run locally, then in CI strict mode, then again at release/promotion where appropriate.

| **Gate Category** | **Representative Checks** | **Blocker Condition** |
| --- | --- | --- |
| Source hygiene | Format, lint, CLAUDE.md rules, forbidden imports, provider SDK ban, secret scan, file classification | Any deterministic violation in changed scope. |
| Build reproducibility | Pinned dependencies, lockfile, build cache control, container scan, SBOM, provenance | Missing SBOM/provenance or non-reproducible build. |
| Unit/component quality | TDD evidence, coverage, mutation testing, deterministic tests, synthetic data | Coverage/mutation below threshold or flaky tests above SLO. |
| Architecture fitness | ArchUnit/module boundaries, dependency direction, DDD context isolation, ports/adapters, no controller/domain leakage | Any critical architecture boundary violation. |
| Security | SAST, SCA, Semgrep, secret scan, IaC scan, OPA/Conftest, OWASP checks | Critical/high findings without waiver and remediation plan. |
| API/event contracts | OpenAPI, AsyncAPI, CloudEvents, schema compatibility, Problem Details, idempotency profile | Breaking change without approved versioning/deprecation plan. |
| Database | Flyway validate, migration test, rollback/forward-fix evidence, RLS tests, schema ownership | Manual DDL, unsafe destructive migration, missing migration evidence. |
| AI governance | LiteLLM route check, prompt/guardrail tests, retrieval grounding, model alias approval, Harness/SBAC/OPA tests | Direct model call, guardrail bypass, unapproved model route, missing AI evidence. |
| Release readiness | Evidence pack, signed artifacts, deployment plan, rollback plan, CAB approval, SLO monitors | Missing approval, missing rollback, failed policy, or evidence gap. |

### 8.1 Evidence Pack Contents

Commit and PR/MR metadata, reviewers, approvals, AI involvement declaration, and AVCI compliance summary.

SBOM, container scan, dependency scan, SAST/SCA/secret scan, IaC scan, OPA policy results, and SLSA provenance.

Unit, component, contract, architecture, mutation, security, AI evaluation, guardrail, and model-routing test results.

OpenAPI/AsyncAPI/schema compatibility reports, Flyway migration evidence, and MicroFunction publish validation reports.

Release note, deployment manifest, GitOps sync result, rollback/forward-fix plan, operational monitors, and post-deploy verification.

## 9. AI-Assisted Engineering Governance

AI assistance is approved for productivity, analysis, documentation, testing, refactoring, and remediation support, but it is never a substitute for architecture, security, compliance, or human accountability. All AI-assisted changes are treated as human-owned engineering outputs with additional evidence obligations.

| **Control Area** | **AIRA Requirement** |
| --- | --- |
| Approved accounts | Use named approved accounts/workspaces only. No shared accounts, personal shadow-AI paths, or uncontrolled project data uploads. |
| Model routing | Application and agent model calls route through LiteLLM model aliases. OpenRouter is governed fallback only; no direct provider SDK calls. |
| Guardrails | Input, Retrieval, Execution, and Output checkpoints apply to AI and tool-action flows. Failure blocks the operation. |
| Harness execution | AI agents may propose tool actions; Harness validates skill, trust, policy, scope, classification, approval, and audit before execution. |
| Data handling | No secrets, raw production PII, confidential content, raw customer data, credentials, or restricted artifacts in prompts unless approved private/on-prem route and controls are used. |
| Human checker | AI-authored code, tests, docs, policies, prompts, and guardrails must be reviewed by a named human who accepts accountability. |
| AI evidence | PR/MR records tool/model used, prompt intent, files affected, checks run, guardrail result, retrieval citations where applicable, and reviewer validation. |

### 9.1 AI Tool Permissions

| **AI Activity** | **Allowed** | **Not Allowed** |
| --- | --- | --- |
| Draft code/tests/docs | Allowed in approved repositories and workspaces with human review. | Direct merge, protected branch write, or bypass of tests/review. |
| Run local/dev checks | Allowed in sandbox/dev scope where tied to named user and evidence. | Production-impacting commands or state-changing actions outside Harness. |
| Analyze incidents | Allowed using redacted evidence or approved classified route. | Uploading secrets, raw customer data, or Restricted artifacts to cloud routes. |
| Propose remediation | Allowed as PR/MR or change candidate with tests and evidence. | Autonomous production repair without approval and rollback evidence. |
| Update knowledge | Allowed as draft LLM Wiki/Obsidian artifact for review. | Auto-promoting unreviewed learning as authoritative knowledge. |

## 10. Auto-Heal, Auto-Learn, Auto-Improve, and AutoResearch

| **Mandatory Auto-* Constraint**<br>Auto-Heal, Auto-Learn, and Auto-Improve must not only fix, learn, or improve. They must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, rollbackability, and AVCI evidence. Any candidate that weakens these properties is rejected or escalated as an exception. |
| --- |

| **Capability** | **Allowed Output** | **Acceptance Gates** |
| --- | --- | --- |
| Auto-Heal | Incident analysis, root-cause hypothesis, remediation branch/PR, config candidate, runbook update, test update. | Evidence-based, minimal, idempotent, secure, observable, reversible, tested, policy-approved, human-reviewed. |
| Auto-Learn | Reviewed lesson, pattern, runbook, guardrail test, prompt improvement, knowledge artifact, evaluation case. | Attributable source, citations, classification, human review, conflict check, freshness, regression evidence. |
| Auto-Improve | Refactoring proposal, architecture drift alert, performance/security improvement, technology refresh candidate. | Measurable benefit, no boundary weakening, tests updated, rollback plan, ADR/TDL where material. |
| AutoResearch | Research note, comparison, technology watch, standards update recommendation. | Marked non-authoritative until reviewed; sources cited; licensing/security/regulatory impact assessed. |

### 10.1 Auto-Heal Candidate Flow

Signal is detected through telemetry, CI, security tooling, incident record, user report, or audit finding.

Evidence is assembled from logs, traces, metrics, code, configuration, tests, contracts, runbooks, and recent changes.

AI proposes root cause and remediation; NeMo rails validate context and output; Harness controls any tool action.

Candidate is converted into a PR/MR or change record with tests, risk classification, rollback plan, and AVCI summary.

Human maker-checker review approves, rejects, or returns the candidate for rework before promotion.

### 10.2 Progressive Autonomy Levels

| **Level** | **Description** | **Required Control** |
| --- | --- | --- |
| L0 - Advisory | AI explains, summarizes, or suggests with no tool action. | Human review before use. |
| L1 - Drafting | AI drafts code, tests, docs, policies, prompts, or configs. | PR/MR review, tests, evidence. |
| L2 - Sandbox Action | AI runs local or non-production checks through approved paths. | Harness/SBAC/OPA where action is state-changing. |
| L3 - Controlled Non-Prod Remediation | AI prepares and may execute approved non-prod remediation steps. | Trust score, policy, audit, human approval by risk. |
| L4 - Production Recommendation | AI recommends production action but does not execute directly. | CAB/approver gate, rollback plan, evidence pack. |
| L5 - Autonomous Production Change | Not approved for AIRA baseline. | Explicitly prohibited unless a future board-approved standard supersedes this rule. |

## 11. Security, Policy, Secrets, and Access Control

| **Domain** | **Mandatory DevSecOps Control** |
| --- | --- |
| Identity | Named users, MFA, SSO, no shared accounts, quarterly access review, break-glass with dual approval and post-use review. |
| Secrets | Vault or approved secrets manager; no secrets in Git, CI logs, prompts, tests, traces, docs, screenshots, or examples. |
| SBAC | Human and agent actions require active skill, proficiency, trust score, scope, classification, and approval alignment. |
| OPA / Policy as Code | Authorization, admission, CI policy, AI action policy, model routing, data handling, and release gates are versioned and tested. |
| Separation of Duties | Maker cannot be sole checker; high-risk changes require security/architecture/CAB participation as applicable. |
| Classification | Public, Internal, Confidential, and Restricted labels drive storage, prompt eligibility, routing, logs, cache, retention, and approval. |
| Fail-Closed | Unavailable identity, policy, secrets, guardrails, Harness, LiteLLM, or audit controls block sensitive or production-impacting actions. |

## 12. Observability, Audit, and Evidence Model

Observability and audit are not operational afterthoughts. They are delivery acceptance criteria. Every service, workflow, MicroFunction, AI call, policy decision, release, and operational action must emit sufficient evidence to reconstruct what happened, who or what acted, why it was allowed, what data classification applied, what result occurred, and how it can be improved.

| **Signal** | **Required Content** | **Prohibited Content** |
| --- | --- | --- |
| Logs | service, env, trace_id, request_id, action, result, error_code, policy reference, classification | Secrets, raw PII, full prompts, full model responses, tokens, credentials |
| Metrics | SLIs/SLOs, latency, errors, saturation, retry, circuit state, AI token/budget, queue depth | User-identifying high-cardinality labels |
| Traces | service path, span context, dependency calls, policy checks, model route alias, workflow IDs | Sensitive payloads, secrets, raw document content |
| Audit | actor, subject, resource, action, decision, approver, policy version, classification, evidence ref | Unmasked secrets or data beyond audit necessity |
| Evidence Pack | CI results, scans, tests, approvals, release manifest, rollback plan, post-deploy check | Unreviewed AI output as authoritative evidence |

### 12.1 DevSecOps Evidence Record Schema

**YAML evidence schema baseline**

| evidence_id: AIRA-EVID-YYYY-NNNNN<br>artifact_id: <repo/path/version/commit><br>change_ref: <ticket \| ADR \| TDL \| PR/MR><br>owner: <named human or service owner><br>classification: <Public \| Internal \| Confidential \| Restricted><br>bounded_context: <context><br>phase: <Plan \| Code \| Build \| Test \| Release \| Deploy \| Operate \| Improve><br>principle_impact:<br> solid: <preserved \| improved \| not_applicable \| exception><br> clean_architecture: <preserved \| improved \| not_applicable \| exception><br> ddd_boundary: <preserved \| improved \| not_applicable \| exception><br> security_posture: <preserved \| improved \| exception><br> testability: <preserved \| improved \| exception><br> observability: <preserved \| improved \| exception><br> reversibility: <rollback \| forward_fix \| compensation \| feature_flag \| exception><br>verification:<br> ci_run: <link/ref><br> tests: [unit, contract, architecture, security, ai_eval]<br> scans: [sast, sca, secrets, sbom, container, policy]<br>ai_involvement:<br> tool: <none \| ChatGPT \| Codex \| Claude Code \| Hermes \| other><br> model_alias: <if applicable><br> human_checker: <name/role><br>approval:<br> reviewers: []<br> status: <draft \| approved \| rejected \| superseded><br>improvement_path: <backlog/ref/metric> |
| --- |

## 13. Release, Deployment, Change, and Rollback Governance

| **Release Class** | **Examples** | **Approval** | **Rollback / Reversibility** |
| --- | --- | --- | --- |
| Standard | Routine feature/config release with normal risk | Tech lead + required CODEOWNERS + CI gates | Rollback plan or forward-fix plan required |
| High-Risk | Security, data, AI route, guardrail, identity, DB migration, workflow, external integration | Architecture + Security + CAB as applicable | Tested rollback, compensation, or feature flag required |
| Emergency | Critical incident or urgent security fix | Emergency CAB or delegated authority with post-review | Time-boxed, evidence-preserving, post-action reconciliation mandatory |
| Experimental / PoC | Sandbox, research, spike | Scope owner approval | No production path; must be isolated and labelled non-authoritative |

### 13.1 Deployment Controls

Argo CD / GitOps is the normal deployment path; runtime desired state must be traceable to Git.

Admission policies validate images, signatures, labels, network policies, resource limits, secrets references, and environment classification.

No manual production kubectl writes, manual DDL, click-ops configuration, direct secret edits, or direct model route changes outside approved procedure.

Post-deployment verification confirms health, SLO signals, audit ingestion, trace correlation, rollback readiness, and no drift from approved state.

## 14. RACI and Separation of Duties

| **Activity** | **Responsible** | **Accountable** | **Consulted** | **Informed** |
| --- | --- | --- | --- | --- |
| Architecture principle enforcement | Enterprise Architect / Tech Lead | Solutions Architect / IT Head | Security, QA, DevSecOps | Development Team |
| PR/MR implementation | Developer / AI-assisted maker | Tech Lead | Security/DB/API/AI owners by path | QA, Product/Business owner |
| CI/CD gate maintenance | DevSecOps Lead | Solutions Architect / IT Head | Security, QA, Platform | Development Team |
| Security and policy gates | Security Administrator / DevSecOps | Security Owner | Architecture, Compliance | Developers, Audit |
| AI agent skill/trust approval | AI DevSecOps Lead | Solutions Architect / IT Head | Security, Compliance | Team Leads |
| Release approval | Release Manager / DevSecOps | CAB / Architecture Board by risk | Security, QA, Business Owner | Operations, Audit |
| Auto-Heal candidate review | SRE / Developer / AI Agent | Service Owner | Security, Architecture, QA | Incident stakeholders |
| Auto-Learn knowledge approval | Knowledge Steward | Domain Owner | Architecture, Security | Development Team |

## 15. Waivers, Exceptions, and Non-Conformance

A waiver is not a shortcut. It is a temporary, attributable, risk-accepted exception with expiry and remediation. Waivers cannot authorize direct model-provider use, guardrail bypass, secret exposure, production self-modification, or silent weakening of AVCI evidence.

| **Waiver Field** | **Required Content** |
| --- | --- |
| Waiver ID | Unique identifier linked to ticket/ADR/TDL/change record. |
| Principle affected | Which of the 20 principles, AVCI property, security control, or DevSecOps gate is affected. |
| Business justification | Why the exception is necessary and why alternatives are not sufficient. |
| Risk assessment | Security, architecture, compliance, data, operational, and customer-impact risks. |
| Compensating controls | Temporary controls that reduce risk during the waiver period. |
| Expiry | Date/time or release version when waiver expires. |
| Owner and approver | Named risk owner plus required architecture/security/CAB approval. |
| Remediation plan | Concrete steps to remove the exception and restore compliance. |

## 16. Implementation Roadmap and Acceptance Criteria

| **Phase** | **Target Outcome** | **Acceptance Criteria** |
| --- | --- | --- |
| R0 - Approval | Standard approved as DevSecOps v3.0 baseline | CAB/ARB approval, document registered in OpenKM, old v2.0 marked superseded. |
| R1 - Repository Controls | CLAUDE.md v3.0 and rollout controls active | Root/subdirectory CLAUDE.md, lock files, hooks, CI strict mode, CODEOWNERS, PR templates installed. |
| R2 - Pipeline Gates | CI/CD checks enforce AVCI + 01A | SAST/SCA/secrets/SBOM/ArchUnit/contract/OPA/AI evaluation gates operational. |
| R3 - Evidence Pack | Evidence generated automatically | Evidence schema populated for pilot PRs, release candidate, MicroFunction config change, and AI-assisted change. |
| R4 - Auto-* Governance | Auto-Heal/Learn/Improve candidates controlled | Candidate flow produces PRs/knowledge artifacts only after human review and required tests. |
| R5 - Quarterly Review | Continuous improvement loop active | Metrics reviewed: defects, gate failures, waiver trends, AI adoption, incident recurrence, architecture drift. |

### 16.1 Minimum Ready-for-Development Checklist

Developers have read and acknowledged AVCI v3.0, 01A, Engineering Blueprint v5.0, Developer Guide v4.0, Unit Testing v3.0, CLAUDE.md v3.0, and this DevSecOps Standard.

Repository templates, CODEOWNERS, PR/MR template, CI skeleton, devcontainer, and local pre-commit hooks are available.

Architecture fitness tests, security scans, contract validation, AI route validation, and evidence schema are working in a pilot repository.

At least one sample MicroFunction transaction demonstrates configuration publish, runtime execution, audit evidence, error handling, compensation, and rollback/forward-fix plan.

Auto-Heal, Auto-Learn, and Auto-Improve are limited to candidate generation until formal promotion criteria are met.

## 17. AVCI Compliance Summary

| **AVCI Property** | **How This Document Satisfies It** |
| --- | --- |
| Attributable | Owned by the Solutions Architecture Office / AI DevSecOps Lead; versioned as v3.0; tied to ADR-AIRA-2026-001 and the cross-document revision matrix. |
| Verifiable | Defines lifecycle gates, CI/CD checks, evidence schema, review workflow, fitness functions, and acceptance criteria that can be audited. |
| Classifiable | Classified as INTERNAL CONFIDENTIAL; applies classification-aware routing and data-handling rules across the lifecycle. |
| Improvable | Quarterly review, waiver analysis, incident learning, pipeline metrics, architecture drift results, and Auto-Learn outputs feed future revisions. |

| **Final Production-Readiness Rule**<br>AIRA work is not production-ready when it merely passes functional tests. It must also satisfy AVCI, the 20 Enterprise Design Principles, SOLID, architecture boundaries, security, observability, reversibility, and evidence requirements. A change that accelerates delivery while weakening these controls is not an improvement. |
| --- |

## Appendix A. Standard PR/MR Checklist

Ticket / ADR / TDL linked and current.

Classification and bounded context declared.

SOLID and architecture boundary impact assessed.

TDD evidence and changed-line tests included.

Security, secret, SAST/SCA, policy, and dependency gates passed.

Contract, database, and MicroFunction impacts assessed where applicable.

AI tool/model involvement declared and human checker named.

Rollback, forward-fix, compensation, or feature flag strategy documented.

Observability and audit evidence added or confirmed.

AVCI summary completed and evidence path provided.
