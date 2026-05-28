---
document_id: "AIRA-DOC-061"
title: "AIRA AI Assisted Dynamic Workspace and System Builder Standard"
version: "v1.1"
status: "current"
source_file: "61-AIRA_AI_Assisted_Dynamic_Workspace_and_System_Builder_Standard_v1.1.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/System-Builder"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - ui
  - system-builder
---

# AIRA AI Assisted Dynamic Workspace and System Builder Standard

AIRA AI-Assisted Dynamic Workspace and System Builder Standard

## AIRA AI-Assisted Dynamic Workspace and System Builder Standard

### Guided Requirements, Diagnostic Intake, Assumption Validation, AI-Assisted Remediation, Agent Invocation, and Governed Promotion Standard

**Mandatory Practice Statement**
The AIRA AI-Assisted Dynamic Workspace and System Builder must not operate as an uncontrolled low-code/no-code or autonomous code-generation platform. It is a governed requirements-to-artifacts capability. AI may analyze, recommend, draft, generate, test, propose, and call approved DevSecOps agents through governed orchestration, but it must not approve, merge, deploy, activate, override policy, or directly modify production. All generated outputs remain draft artifacts until validated through AVCI, human review, architecture/security checks, CI/CD, evidence generation, and rollback-ready activation.

### Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA AI-Assisted Dynamic Workspace and System Builder Standard |
| Document ID | AIRA-DOC-061 |
| Version | v1.1 - Auto-Heal Intake, Remediation Analysis, and DevSecOps Agent Invocation Update |
| Classification | INTERNAL CONFIDENTIAL |
| Status | DRAFT FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; AI Engineering; Platform Engineering |
| Primary Audience | Solutions Architects, Software Developers, Frontend Developers, Backend Developers, DevSecOps, QA/SDET, Security, Product Owners, Project Managers, Business Administrators, Internal Audit |
| Effective Date | Upon ARB / CAB approval |
| Review Cadence | Quarterly; unscheduled on material builder, AI, security, MicroFunction, workflow, database, or DevSecOps process change |
| Supersedes | 61-AIRA_AI_Assisted_Dynamic_Workspace_and_System_Builder_Standard_v1.0 |
| Companion Documents | AIRA-DOC-041 to AIRA-DOC-060 Dynamic Workspace and Composable Experience document set |
| Canonical Quality Reference | 01-AIRA AVCI Engineering Standard v3.0 |
| Architecture Reference | 02-AIRA Engineering Blueprint v5.0 |
| Developer Reference | 03-AIRA Developer Guide v4.0 |
| Technology Reference | 04-AIRA Technology Stack v9.0 |
| Information Reference | 05-AIRA AI-Native Information Nervous System v4.0 |
| MicroFunction Reference | 10-AIRA MicroFunction Framework v3.0 and companion guides |
| Decision Reference | 14-AIRA ADR and TDL Standard v2.0 |
| Security Reference | 17-AIRA Security, Identity, Secrets, and Access Control Standard v2.0 |

### 1. Executive Summary

AIRA is being developed as a reusable base system and foundation package. The Dynamic User Workspace Framework and Composable Experience Framework allow future business systems to be assembled from reusable building blocks such as workspace templates, screen templates, component catalog entries, rendering policies, capability bindings, MicroFunction transactions, workflow bindings, AI capability definitions, and evidence profiles.

This document defines the next foundation capability: the **AIRA AI-Assisted Dynamic Workspace and System Builder**.

The builder provides a governed admin/maintenance capability where authorized actors can capture requirements, upload reference materials, report errors, submit warnings and findings, upload logs/tables/screenshots/images/files, request new or enhanced screens, define backend capabilities, propose database changes, generate MicroFunction specifications, draft OpenAPI contracts, generate tests, propose remediations, and produce evidence packs using approved AI tools and approved DevSecOps agents. It must guide users with recommended defaults, identify missing requirements, detect conflicts, perform impact analysis, validate assumptions, and obtain human approval before generation and activation.

The builder is not an unrestricted low-code platform. It is a **controlled requirements-to-artifacts factory** aligned with AVCI, SOLID, Clean Architecture, DDD, ports-and-adapters, policy-as-code, testability, secure-by-design, observability, reversibility, and MicroFunction governance.

#### 1.1 v1.1 Change Summary

| Change Area | v1.1 Improvement |
| --- | --- |
| Diagnostic intake | Adds the ability for authorized users to submit errors, warnings, findings, logs, screenshots, images, tables, files, traces, and operational evidence for analysis and improvement. |
| Auto-Heal / Auto-Learn / Auto-Improve alignment | Clarifies that the builder is the human-facing intake and review surface for governed improvement loops, not an autonomous production mutation tool. |
| Pre-remediation analysis | Requires AI to provide analysis, assessment, assumptions, recommendations, impact, risk, and clarification questions before any fix or improvement takes effect. |
| DevSecOps agent invocation | Adds a governed mechanism for the builder to call approved agents defined in AIRA DevSecOps documents through Harness/SBAC/OPA/agent registry controls. |
| Remediation governance | Defines diagnostic evidence handling, root-cause analysis, remediation proposals, generated tests, PR/MR creation, CI/CD validation, rollback, and evidence packaging. |
| Human approval | Strengthens the rule that requester input, maker-checker review, and authorized approval are required before generated changes are activated. |

### 2. Recommended Official Name

Recommended name:

**AIRA AI-Assisted Dynamic Workspace and System Builder**

Short name:

**AIRA System Builder**

Rationale:

| Candidate Name | Assessment |
| --- | --- |
| Dynamic Workspace Builder | Too narrow; focuses only on UI. |
| AI-Assisted System Builder | Good, but does not explicitly tie to dynamic workspace. |
| Experience Builder | Good for UX, but weaker for backend/code/database generation. |
| Requirements-to-Artifact Builder | Accurate, but less intuitive for business stakeholders. |
| Composable System Factory | Strong enterprise term, but may overlap with broader DevSecOps factory. |
| AI-Native Application Factory | Too broad and may imply autonomous generation. |
| **AI-Assisted Dynamic Workspace and System Builder** | Best balance. Connects workspace, AI, system generation, and governance. |

### 3. Architecture Position

The builder belongs to the AIRA Foundation Package and sits above the Dynamic Workspace and Composable Experience layers. It accepts governed requirements and generates draft artifacts for review.

flowchart TD
 A[AIRA Foundation Package] --> B[AI-Assisted Dynamic Workspace and System Builder]
 B --> C[Requirement Intake]
 B --> D[Guided Defaulting Engine]
 B --> E[Pre-Generation Analysis Gate]
 B --> F[AI Artifact Generation]
 B --> G[Review and Approval Workflow]
 B --> H[PR/MR and CI/CD Evidence]

 F --> I[Screen Templates]
 F --> J[Components and Widgets]
 F --> K[OpenAPI Contracts]
 F --> L[Backend Use Cases]
 F --> M[MicroFunction Definitions]
 F --> N[Flyway Migration Drafts]
 F --> O[OPA Policies]
 F --> P[Tests and Evidence Packs]

 I --> Q[Dynamic User Workspace Framework]
 J --> Q
 M --> R[MicroFunction Framework]
 K --> S[API Contract Standard]
 N --> T[Database and Flyway Standard]
 O --> U[Security / OPA / SBAC]

### 4. Non-Negotiable Governance Rules

1. AI must analyze before it generates.

2. AI must list assumptions before generating artifacts.

3. Risk/security assumptions must never be silently assumed.

4. Missing mandatory requirements must block generation.

5. Conflicting requirements must block generation until resolved.

6. Generated outputs are draft artifacts until reviewed and approved.

7. AI must not directly approve, merge, deploy, activate, or change production.

8. Database changes must use Flyway.

9. Backend business capability must use approved use cases, APIs, workflows, and MicroFunctions.

10. Redis/Valkey may cache only derivative configuration and resolved views.

11. Every generated artifact must have AVCI evidence.

12. Every production-bound change must have rollback, deactivation, compensation, or forward-fix strategy.

### 5. Authorized Actors and Role Model

| Actor | Allowed Actions | Prohibited Actions | Required Evidence |
| --- | --- | --- | --- |
| Business User | Submit requirement, upload examples, review draft output. | Generate production code or approve technical artifacts. | Requirement record, attachments, review comments. |
| Power User | Create detailed screen/workflow requirements. | Override security, policy, or classification. | Requirement version, business approval. |
| Product Owner | Approve business intent and acceptance criteria. | Approve technical risk alone. | Product approval, UAT criteria. |
| Department Admin | Propose templates for department use. | Activate production templates without review. | Template proposal, approval record. |
| System Admin | Manage builder configuration and activation workflow. | Override business, security, or CAB approval. | Admin audit trail. |
| Software Developer | Review generated code, revise, test, submit PR. | Bypass MicroFunction, API, CI/CD, or security gates. | PR/MR evidence, tests. |
| Solutions Architect | Review architecture, bounded context, reuse, MicroFunction fit. | Approve security exceptions alone. | ADR/TDL, architecture review. |
| Security Admin | Review classification, OPA, SBAC, secrets, AI route. | Approve business scope alone. | Security review, policy test evidence. |
| DBA | Review schema, Flyway, indexes, rollback/forward-fix. | Accept direct production DDL. | Migration test evidence. |
| QA/SDET | Review tests, coverage, accessibility, failure paths. | Approve architecture decisions alone. | Test evidence. |
| DevSecOps | Validate pipeline, evidence pack, scans, PR gates. | Merge without required reviewers. | CI/CD run, SBOM, scans. |
| Internal Auditor | Review traceability and evidence. | Modify builder artifacts. | Audit findings. |
| AI Agent | Analyze, recommend, draft, generate proposals. | Approve, merge, deploy, activate, or override policy. | Prompt, model route, output, human checker. |

### 6. Requirement Capture Model

The builder must capture structured requirements, not only free-form prompts.

Required requirement dimensions:

| Dimension | Examples |
| --- | --- |
| Business Intent | Objective, outcome, success measure. |
| User Story | Actor, action, benefit. |
| Scope | In-scope and out-of-scope boundaries. |
| Target Users | Roles, skills, departments, tenants. |
| Screen Requirements | Screen purpose, route, layout, widgets, fields. |
| Data Requirements | Inputs, outputs, source systems, classification. |
| Business Rules | Validations, decisions, calculations, eligibility rules. |
| Workflow Requirements | Approval path, SLA, escalation, maker-checker. |
| API Requirements | Endpoints, request/response, errors, idempotency. |
| Database Requirements | Tables, indexes, constraints, retention. |
| MicroFunction Requirements | Transaction code, sequence, steps, policies. |
| AI Requirements | Prompt type, input/output modes, guardrails, references. |
| Security Requirements | RBAC/SBAC/ABAC/OPA, classification, secrets. |
| Testing Requirements | Unit, component, E2E, OPA, contract, fail-closed. |
| Observability Requirements | Logs, metrics, traces, audit events. |
| Reversibility | Rollback, deactivation, compensation, feature flag. |

### 7. Guided Requirement Intelligence and Defaulting Engine

The builder must guide users through recommended values and required dependencies. Users should not start from a blank form where they can miss key controls.

#### 7.1 Defaulting Examples

| Requirement Selected | Recommended Defaults |
| --- | --- |
| New screen | Screen type, rendering policy, layout template, mandatory audit, security policy. |
| New widget | Component type, schema template, allowed actions, evidence profile, test profile. |
| Data-entry form | Zod schema, backend validation, API contract, MicroFunction transaction. |
| Approval workflow | Flowable workflow, maker-checker, SLA, escalation, audit events. |
| Long-running process | Temporal workflow, retry, compensation, idempotency, DLQ. |
| File upload | Malware scan, classification, OpenKM/DMS storage, OCR, retention, audit. |
| Payment action | Idempotency, reconciliation, compensation, stronger approval, no ISR caching. |
| AI assistant | Guardrails, model route, prompt template, evidence, human approval for actions. |
| Confidential data | SSR/no-store, strict redaction, approved model route, no public cache. |
| Database table | Flyway migration, ownership, indexes, constraints, RLS/classification. |

#### 7.2 Requirement Dependency Rules

Example dependency rules:

if requirement_type = FILE_UPLOAD
then require:
 - file_type_policy
 - max_file_size
 - malware_scan_required
 - classification
 - storage_binding
 - audit_profile
 - retention_policy
 - access_policy

if action_type = PAYMENT
then require:
 - idempotency_key
 - payment_gateway_binding
 - reconciliation_rule
 - audit_profile
 - rollback_or_compensation_plan
 - approval_policy
 - no_store_cache_policy

if rendering_mode = ISR
then prohibit:
 - user_specific_data
 - confidential_data
 - restricted_data
 - payment_data
 - kyc_data
 - session_specific_output

#### 7.3 Conflict Detection

| Conflict | Required Response |
| --- | --- |
| ISR selected for payment screen | Reject or recommend SSR. |
| Public cache selected for KYC data | Reject. |
| Widget without capability binding | Block. |
| Action without OPA policy | Block. |
| Backend update without MicroFunction binding | Block or require waiver. |
| AI output for Confidential data without approved model route | Block. |
| Database change without Flyway | Block. |
| Admin template without rollback | Block. |
| Missing audit profile | Block. |
| Missing tests | Block PR/MR generation. |

#### 7.4 Completeness Scoring

| Score | Status | Action |
| --- | --- | --- |
| 0-59% | Incomplete | Block generation. |
| 60-79% | Draft-Only | Requirements draft only. |
| 80-94% | Proposal-Ready | Draft artifacts allowed. |
| 95-100% | Review-Ready | Full artifact package allowed for review. |

### 8. Pre-Generation Analysis and Assumption Validation Gate

Before generating any source code, screen template, API contract, database schema, MicroFunction, policy, test, or configuration, AI must produce a **Pre-Generation Assessment Report**.

#### 8.1 Required Report Sections

1. Requirement understanding.

2. Business objective.

3. Scope and exclusions.

4. Assumptions.

5. Missing information.

6. Recommended AIRA defaults.

7. Dependency requirements.

8. Conflict detection.

9. Risk assessment.

10. Reuse analysis.

11. Impact analysis.

12. Recommended implementation approach.

13. Clarification questions.

14. Generation readiness score.

15. Recommendation: Block, Draft-Only, Proposal-Ready, Review-Ready, or Implementation-Ready.

#### 8.2 Assumption Types

| Assumption Type | Meaning | Action |
| --- | --- | --- |
| Safe Default Assumption | AIRA standard default can be applied. | Proceed with notice. |
| Business Assumption | Business decision is needed. | Ask or mark pending. |
| Risk/Security Assumption | Could affect security, data, compliance, or financial integrity. | Block until clarified. |

#### 8.3 Approval Gate

Generation may proceed only when:

Pre-Generation Assessment: Completed
Assumptions: Accepted / Revised / Rejected
Mandatory Requirements: Complete
Conflict Checks: Passed
Security Classification: Confirmed
Reuse Analysis: Completed
Generation Scope: Approved
Human Approver: Recorded

### 9. AI-Assisted Artifact Generation Flow

sequenceDiagram
 autonumber
 actor User
 participant Builder as AIRA System Builder
 participant Defaulting as Defaulting Engine
 participant AI as Approved AI Tool / Hermes
 participant Reviewer as Human Reviewer
 participant Git as Git Repository
 participant CI as CI/CD Pipeline
 participant Evidence as Evidence Store

 User->>Builder: Submit requirement and attachments
 Builder->>Defaulting: Apply defaults, dependencies, conflict rules
 Defaulting-->>Builder: Missing items, defaults, readiness score
 Builder->>AI: Request pre-generation assessment
 AI-->>Builder: Assessment, assumptions, recommendations
 Builder->>Reviewer: Present assessment for confirmation
 Reviewer-->>Builder: Approve generation scope
 Builder->>AI: Generate draft artifacts
 AI-->>Builder: Code/config/test/docs proposals
 Builder->>Git: Create branch/PR with generated artifacts
 Git->>CI: Run tests, scans, policy checks, fitness functions
 CI->>Evidence: Store evidence pack
 CI-->>Builder: Pass/fail result
 Builder->>Reviewer: Human review and approval

Generated artifacts may include:

- screen templates,

- component/widget definitions,

- frontend React/Next.js code,

- Zod schemas,

- backend Java/Spring Boot use cases,

- MicroFunction definitions,

- MicroFunction sequence configuration,

- OpenAPI contracts,

- Flyway migration drafts,

- OPA policy proposals,

- unit/component/contract/E2E tests,

- architecture fitness checks,

- Redis cache key definitions,

- observability/audit events,

- evidence profiles,

- documentation,

- ADR/TDL drafts,

- DevSecOps evidence packs.

### 10. Upload and Reference Input Governance

The builder may accept controlled uploads and references.

| Input Type | Governance Requirement |
| --- | --- |
| Sample screens / wireframes | Classify, hash, store, cite as reference. |
| Screenshots / images | Malware scan, OCR/vision extraction, classification. |
| Process flows / sequence diagrams | Parse or attach, link to requirement. |
| Database structures | Review by DBA, convert only to Flyway draft. |
| Excel samples | Treat as reference; no uncontrolled formula execution. |
| Documents / policies | Store in OpenKM or controlled evidence store. |
| URLs / sample websites | Capture metadata and review; do not treat as authoritative by default. |
| Existing source files | Analyze through GitNexus/read-only tooling where applicable. |
| Existing OpenAPI contracts | Validate contract compatibility. |

Mandatory controls:

- file type allow-list,

- malware scan,

- classification label,

- source hash,

- owner,

- retention rule,

- AI usage eligibility,

- citation requirement,

- evidence reference.

### 11. Auto-Heal, Auto-Learn, Auto-Improve Diagnostic Intake and Remediation Flow

The builder must support not only new feature generation, but also governed system improvement. Authorized users, developers, QA/SDET, security, SRE, auditors, and support teams must be able to submit errors, warnings, findings, logs, screenshots, images, files, tables, traces, test reports, vulnerability findings, failed pipeline evidence, user complaints, performance issues, and operational observations.

This capability is the human-facing intake surface for AIRA Auto-Heal, Auto-Learn, and Auto-Improve. It must not automatically change production. It must collect evidence, analyze the issue, recommend remediation, generate draft artifacts where appropriate, and route the proposed change through human review, tests, CI/CD, and approval.

#### 11.1 Diagnostic Intake Categories

| Category | Examples | Required Handling |
| --- | --- | --- |
| Runtime error | Stack trace, exception screenshot, Sentry issue, failed transaction | Classify, correlate trace_id, identify affected service/component/MicroFunction, propose remediation. |
| Warning | Log warning, deprecated API, configuration warning, slow query warning | Assess risk, priority, affected component, improvement recommendation. |
| Security finding | SAST/DAST finding, dependency CVE, secret scan, Wazuh alert | Security review required; remediation proposal must not weaken controls. |
| Test failure | Unit, component, contract, Playwright, OPA, Flyway, architecture fitness failure | Root-cause analysis, test correction or code/config fix proposal. |
| User issue | UI bug, incorrect widget data, missing field, wrong workflow status | Reproduce, validate requirement, check policy/data/classification, propose fix. |
| Performance issue | Slow workspace load, Redis miss spike, API latency, large widget payload | Recommend caching, query, pagination, rendering, or schema optimization. |
| Configuration drift | PostgreSQL config mismatch, Redis stale key, obsolete policy, inactive component still visible | Invalidate cache, reconcile configuration, produce drift evidence. |
| Data issue | Incorrect table value, migration issue, missing index, bad seed data | DBA review, Flyway/forward-fix proposal, reconciliation evidence. |
| AI issue | Poor answer, hallucination, unsafe response, missing citation, wrong model route | Prompt/guardrail/retrieval/model-route analysis and improvement proposal. |
| Accessibility issue | Keyboard navigation, contrast, ARIA, screen reader, responsive layout defect | UX/accessibility remediation and test update. |

#### 11.2 Diagnostic Input Governance

All diagnostic inputs must be handled as evidence-bearing artifacts.

| Input Type | Required Control |
| --- | --- |
| Logs | Redact secrets and PII; preserve trace_id, service, environment, timestamp, severity. |
| Screenshots/images | Classify, redact sensitive values if needed, record source and submitter. |
| Tables/Excel/CSV | Scan, classify, validate schema, prohibit production PII unless approved. |
| Files/documents | Malware scan, classification, retention, OpenKM/DMS reference, AI-use eligibility. |
| URLs/sample websites | Capture source, timestamp, domain trust, retrieval eligibility, and copyright/usage risk. |
| Pipeline reports | Preserve run ID, commit SHA, branch, tool version, finding IDs, and evidence reference. |
| User narrative | Store as requirement/issue statement; AI may summarize but original remains evidence. |

#### 11.3 Required Pre-Remediation Analysis

Before any fix, generated code, configuration change, policy update, database migration, or workspace activation, the AI must produce a **Pre-Remediation Assessment Report**.

The report must include:

1. Issue understanding and reproduction summary.

2. Evidence received and evidence quality rating.

3. Affected workspace, screen, component, API, MicroFunction, workflow, policy, database object, test, or AI capability.

4. Assumptions and confidence level.

5. Missing information and clarification questions.

6. Root-cause hypothesis.

7. Risk and severity classification.

8. Recommended remediation options.

9. Recommended tests and evidence to prove the fix.

10. Impact analysis and blast-radius estimate.

11. Rollback, deactivation, compensation, or forward-fix plan.

12. Human approval requirement.

13. Agent invocation plan, if approved agents are needed.

14. Generation readiness status: Blocked, Diagnostic-Only, Proposal-Ready, Review-Ready, or Implementation-Ready.

#### 11.4 Remediation Readiness Status

| Status | Meaning | Allowed Action |
| --- | --- | --- |
| Blocked | Critical evidence is missing or risk is unacceptable. | No artifact generation. |
| Diagnostic-Only | AI can analyze and recommend, but cannot generate fix artifacts. | Produce analysis and clarification questions. |
| Proposal-Ready | Enough evidence exists for a remediation proposal. | Generate draft remediation plan, tests, and artifact diffs. |
| Review-Ready | Human-reviewed assumptions and scope are accepted. | Generate PR/MR-ready draft artifacts. |
| Implementation-Ready | Review, tests, CI plan, and rollback path are accepted. | Proceed through PR/MR and CI/CD gates. |

#### 11.5 Auto-Heal / Auto-Learn / Auto-Improve Boundary

| Capability | Builder Role | Prohibited Behavior |
| --- | --- | --- |
| Auto-Heal | Accept issue evidence, analyze root cause, propose safe remediation, generate draft fix and tests. | Direct production modification without approval. |
| Auto-Learn | Capture lesson learned, update knowledge proposal, recommend tests/guardrails/runbooks. | Promote unreviewed knowledge as authoritative. |
| Auto-Improve | Recommend refactoring, policy hardening, UX improvement, performance optimization, or experience block improvement. | Reduce architecture discipline, security posture, observability, testability, or rollbackability. |

### 12. DevSecOps Agent Invocation and Governance

The builder may invoke approved AIRA DevSecOps agents only through a governed orchestration path. Agents may analyze, generate, validate, scan, test, and recommend. They must not approve, merge, deploy, override policy, or directly mutate production.

#### 12.1 Agent Invocation Principle

**The builder requests. The agent performs bounded work. Harness/SBAC/OPA controls execution. Humans approve. CI/CD verifies. AVCI records evidence.**

#### 12.2 Approved Agent Categories

| Agent Category | Purpose | Example Outputs |
| --- | --- | --- |
| Requirements Analysis Agent | Analyze requirements, gaps, conflicts, assumptions, and completeness. | Pre-generation assessment, clarification questions, default recommendations. |
| UX / Workspace Agent | Propose screen layout, experience blocks, component usage, accessibility improvements. | Screen template proposal, wireframe, layout metadata. |
| Frontend Code Agent | Generate or refactor Next.js/React components under standards. | Component code, Zod schema, tests, Storybook/Ladle story. |
| Backend Code Agent | Generate Java/Spring use case, adapter, DTO, and service code. | Backend code draft, unit tests, integration tests. |
| MicroFunction Agent | Generate MicroFunction sequence/configuration and catalog registration. | STP sequence, config YAML, catalog record, tests. |
| API Contract Agent | Draft OpenAPI contracts and client usage patterns. | OpenAPI YAML, contract tests, compatibility notes. |
| Database/Flyway Agent | Propose schema, migration, seed data, indexes, rollback/forward-fix. | Flyway migration draft, test migration, DBA review packet. |
| OPA/Security Agent | Draft policy rules, deny cases, security checks, classification rules. | Rego draft, OPA tests, access matrix. |
| QA/SDET Agent | Generate tests, coverage expectations, E2E scenarios, failure-mode tests. | Test plan, Playwright tests, unit/component tests. |
| DevSecOps Pipeline Agent | Prepare CI/CD jobs, scan configuration, evidence pack generation. | Pipeline YAML draft, SBOM/SAST/DAST/secret scan plan. |
| Observability Agent | Propose logs, metrics, traces, dashboards, audit events. | OTel field list, Grafana/Loki/Tempo/Sentry evidence plan. |
| Documentation Agent | Draft ADR/TDL, user guide, runbook, release note, support note. | Markdown/DOCX draft, runbook, evidence summary. |
| Impact Analysis Agent | Use GitNexus/read-only code intelligence to identify blast radius. | Affected files, APIs, tests, components, dependencies. |

#### 12.3 Agent Registry Requirements

Every callable agent must be registered with:

| Field | Requirement |
| --- | --- |
| agent_code | Unique identifier. |
| agent_name | Human-readable name. |
| agent_category | Category from approved taxonomy. |
| allowed_tasks | Explicit allowed task list. |
| prohibited_tasks | Explicit prohibited task list. |
| required_skills | SBAC skills required to invoke. |
| required_roles | RBAC roles required to invoke. |
| classification_ceiling | Maximum data classification permitted. |
| tool_permissions | Read/write/test/generate limits. |
| execution_boundary | Harness, sandbox, non-production runner, or read-only mode. |
| model_route_policy | LiteLLM/model route if LLM-backed. |
| guardrail_policy | Input/retrieval/execution/output guardrails. |
| evidence_profile | Required audit/evidence output. |
| human_approval_required | Approval conditions. |

#### 12.4 Agent Invocation Flow

sequenceDiagram
 autonumber
 actor Requester
 participant Builder as AIRA Builder
 participant OPA as OPA/SBAC Policy
 participant Harness as Harness / Agent Runtime Boundary
 participant Agent as Approved Agent
 participant Evidence as Audit / Evidence Store
 participant PR as Git PR/MR

 Requester->>Builder: Submit requirement, issue, or remediation request
 Builder->>Builder: Pre-generation or pre-remediation analysis
 Builder->>OPA: Check role, skill, classification, task permission
 OPA-->>Builder: Permit / Deny / Require approval
 Builder->>Harness: Invoke approved agent with scoped task
 Harness->>Agent: Execute bounded task in approved context
 Agent-->>Harness: Return proposal / code draft / tests / analysis
 Harness->>Evidence: Record invocation and outputs
 Builder->>Requester: Present recommendation and artifacts for review
 Requester->>Builder: Accept / revise / reject
 Builder->>PR: Create PR/MR only after approval and required checks

#### 12.5 Prohibited Agent Actions

Agents must not:

- approve their own output,

- merge pull requests,

- deploy to production,

- bypass OPA/SBAC/RBAC/ABAC,

- directly modify production database,

- directly update Redis as authority,

- call model providers outside approved model route,

- execute tools outside Harness or approved sandbox,

- suppress tests or scans,

- remove evidence, logs, traces, audit, or rollback capability,

- weaken SOLID, Clean Architecture, DDD boundaries, security, observability, testability, reversibility, or AVCI.

### 13. Data Model

Recommended schema:

CREATE SCHEMA IF NOT EXISTS aira_builder;

Recommended tables:

| Table | Purpose |
| --- | --- |
| builder_requirement | Main requirement record. |
| builder_requirement_attachment | Uploaded/reference material metadata. |
| builder_requirement_version | Requirement version history. |
| builder_requirement_type_catalog | Requirement type definitions. |
| builder_requirement_field_catalog | Required/optional field definitions. |
| builder_defaulting_rule_catalog | Recommended default rules. |
| builder_dependency_rule_catalog | Required dependency rules. |
| builder_conflict_rule_catalog | Conflict and prohibition rules. |
| builder_recommendation_profile | Domain/pack recommendation sets. |
| builder_completeness_rule | Readiness scoring rules. |
| builder_generation_readiness_check | Pre-generation validation results. |
| builder_requirement_gap | Missing mandatory/optional items. |
| builder_artifact_proposal | Generated artifact proposal records. |
| builder_generated_code_record | Code generation metadata. |
| builder_ai_prompt_record | Prompt input record. |
| builder_ai_output_record | AI output record. |
| builder_review_task | Human review task. |
| builder_approval_record | Approval/rejection record. |
| builder_generation_job | Generation job tracking. |
| builder_traceability_matrix | Requirement-to-artifact/test/evidence traceability. |
| builder_impact_analysis | Existing system impact analysis. |
| builder_test_generation_record | Test generation output. |
| builder_deployment_readiness | Promotion readiness status. |
| builder_cache_invalidation_plan | Cache invalidation plan for generated changes. |
| builder_evidence_pack | Evidence package record. |

#### 11.1 Core Table Draft: builder_requirement

CREATE TABLE aira_builder.builder_requirement (
 id UUID PRIMARY KEY,
 requirement_code VARCHAR(128) NOT NULL,
 requirement_title VARCHAR(255) NOT NULL,
 requirement_type VARCHAR(64) NOT NULL,
 business_domain VARCHAR(128),
 bounded_context VARCHAR(128),
 requester VARCHAR(128) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 priority VARCHAR(32),
 mandatory_flag BOOLEAN NOT NULL DEFAULT TRUE,
 classification VARCHAR(32) NOT NULL,
 status VARCHAR(32) NOT NULL,
 requirement_json JSONB NOT NULL,
 acceptance_criteria_json JSONB,
 assumptions_json JSONB,
 missing_items_json JSONB,
 completeness_score INTEGER,
 readiness_status VARCHAR(64),
 version INTEGER NOT NULL DEFAULT 1,
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128),
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 updated_by VARCHAR(128),
 updated_at TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE(requirement_code, version)
);

#### 11.2 Core Table Draft: defaulting_rule_catalog

CREATE TABLE aira_builder.builder_defaulting_rule_catalog (
 id UUID PRIMARY KEY,
 rule_code VARCHAR(128) NOT NULL UNIQUE,
 rule_name VARCHAR(255) NOT NULL,
 applies_when JSONB NOT NULL,
 default_values JSONB NOT NULL,
 required_fields JSONB,
 prohibited_values JSONB,
 recommendation_text TEXT,
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 classification VARCHAR(32) NOT NULL DEFAULT 'INTERNAL',
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP
);

#### 13.2 Additional Diagnostic and Agent Governance Tables

| Table | Purpose |
| --- | --- |
| builder_diagnostic_intake | Stores submitted errors, warnings, findings, logs, screenshots, images, files, and diagnostic narratives. |
| builder_diagnostic_attachment | Stores attachment metadata, classification, scan result, OCR/extraction reference, and storage reference. |
| builder_pre_remediation_assessment | Stores AI analysis, assumptions, root-cause hypothesis, recommendations, risk, impact, and readiness status. |
| builder_remediation_option | Stores one or more remediation choices, trade-offs, risks, tests, rollback, and approval needs. |
| builder_agent_registry | Defines approved callable agents, permissions, skills, classification ceiling, and execution boundary. |
| builder_agent_invocation | Records each agent call, prompt/context, task, policy decision, result, and evidence reference. |
| builder_auto_learn_candidate | Stores proposed knowledge, runbook, prompt, guardrail, or test improvements for human review. |
| builder_auto_improve_candidate | Stores proposed refactoring, optimization, policy hardening, UX/accessibility improvement, or component improvement. |
| builder_root_cause_analysis | Stores RCA hypotheses, evidence references, affected artifacts, and final confirmed cause. |
| builder_fix_validation_record | Stores test/scans/fitness results proving remediation safety. |

#### 13.3 Representative Table: Diagnostic Intake

CREATE TABLE aira_builder.builder_diagnostic_intake (
 id UUID PRIMARY KEY,
 diagnostic_code VARCHAR(128) NOT NULL UNIQUE,
 diagnostic_type VARCHAR(64) NOT NULL,
 severity VARCHAR(32) NOT NULL,
 title VARCHAR(255) NOT NULL,
 description TEXT NOT NULL,
 reported_by VARCHAR(128) NOT NULL,
 reported_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 affected_workspace VARCHAR(128),
 affected_screen VARCHAR(128),
 affected_component VARCHAR(128),
 affected_api VARCHAR(255),
 affected_microfunction VARCHAR(128),
 affected_workflow VARCHAR(128),
 affected_database_object VARCHAR(255),
 trace_id VARCHAR(128),
 correlation_id VARCHAR(128),
 classification VARCHAR(32) NOT NULL,
 status VARCHAR(32) NOT NULL,
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128)
);

#### 13.4 Representative Table: Agent Registry

CREATE TABLE aira_builder.builder_agent_registry (
 id UUID PRIMARY KEY,
 agent_code VARCHAR(128) NOT NULL UNIQUE,
 agent_name VARCHAR(255) NOT NULL,
 agent_category VARCHAR(64) NOT NULL,
 allowed_tasks JSONB NOT NULL,
 prohibited_tasks JSONB NOT NULL,
 required_roles JSONB,
 required_skills JSONB,
 classification_ceiling VARCHAR(32) NOT NULL,
 execution_boundary VARCHAR(128) NOT NULL,
 model_route_policy VARCHAR(255),
 guardrail_policy VARCHAR(255),
 evidence_profile_code VARCHAR(128) NOT NULL,
 human_approval_required BOOLEAN NOT NULL DEFAULT TRUE,
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP
);

#### 13.5 Representative Table: Agent Invocation

CREATE TABLE aira_builder.builder_agent_invocation (
 id UUID PRIMARY KEY,
 invocation_code VARCHAR(128) NOT NULL UNIQUE,
 agent_code VARCHAR(128) NOT NULL,
 invoked_by VARCHAR(128) NOT NULL,
 invocation_type VARCHAR(64) NOT NULL,
 linked_requirement_code VARCHAR(128),
 linked_diagnostic_code VARCHAR(128),
 policy_decision_ref VARCHAR(255) NOT NULL,
 input_context_ref VARCHAR(255),
 output_artifact_ref VARCHAR(255),
 classification VARCHAR(32) NOT NULL,
 status VARCHAR(32) NOT NULL,
 started_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 completed_at TIMESTAMP,
 evidence_ref VARCHAR(255),
 trace_id VARCHAR(128)
);

### 14. API Contract Draft

Required APIs:

| API | Purpose |
| --- | --- |
| POST /api/builder/v1/requirements | Create requirement. |
| PUT /api/builder/v1/requirements/{id} | Update requirement. |
| POST /api/builder/v1/requirements/{id}/attachments | Upload reference material. |
| POST /api/builder/v1/requirements/{id}/classify | Classify requirement and attachments. |
| POST /api/builder/v1/requirements/{id}/analyze | Run pre-generation assessment. |
| POST /api/builder/v1/requirements/{id}/defaults | Apply recommended defaults. |
| POST /api/builder/v1/requirements/{id}/check-readiness | Run completeness/conflict checks. |
| POST /api/builder/v1/requirements/{id}/generate/proposal | Generate draft artifact proposal. |
| POST /api/builder/v1/requirements/{id}/generate/screen | Generate screen template proposal. |
| POST /api/builder/v1/requirements/{id}/generate/component | Generate component proposal. |
| POST /api/builder/v1/requirements/{id}/generate/api-contract | Generate OpenAPI draft. |
| POST /api/builder/v1/requirements/{id}/generate/microfunction | Generate MicroFunction draft. |
| POST /api/builder/v1/requirements/{id}/generate/flyway | Generate Flyway draft. |
| POST /api/builder/v1/requirements/{id}/generate/opa | Generate OPA policy draft. |
| POST /api/builder/v1/requirements/{id}/generate/tests | Generate test cases. |
| POST /api/builder/v1/proposals/{id}/submit-review | Submit proposal for human review. |
| POST /api/builder/v1/proposals/{id}/approve | Approve proposal. |
| POST /api/builder/v1/proposals/{id}/reject | Reject proposal. |
| POST /api/builder/v1/proposals/{id}/create-pr | Create branch/PR/MR. |
| GET /api/builder/v1/proposals/{id}/ci-status | Get CI/CD status. |
| POST /api/builder/v1/proposals/{id}/activate | Activate approved template/config. |
| POST /api/builder/v1/proposals/{id}/rollback | Rollback. |
| GET /api/builder/v1/requirements/{id}/evidence-pack | Retrieve evidence pack. |
| GET /api/builder/v1/requirements/{id}/traceability | Retrieve traceability matrix. |

#### 14.2 Additional Diagnostic and Agent APIs

| API | Purpose |
| --- | --- |
| POST /api/builder/v1/diagnostics | Submit error, warning, finding, or improvement issue. |
| POST /api/builder/v1/diagnostics/{id}/attachments | Upload logs, screenshots, images, files, tables, or reports. |
| POST /api/builder/v1/diagnostics/{id}/analyze | Generate pre-remediation assessment. |
| GET /api/builder/v1/diagnostics/{id}/recommendations | Retrieve remediation options and improvement recommendations. |
| POST /api/builder/v1/diagnostics/{id}/approve-analysis | Human accepts/revises assumptions before generation. |
| POST /api/builder/v1/agents/{agentCode}/invoke | Invoke approved agent under SBAC/OPA/Harness control. |
| GET /api/builder/v1/agents | Retrieve approved agent registry visible to caller. |
| GET /api/builder/v1/agent-invocations/{id} | Retrieve agent invocation evidence and output record. |
| POST /api/builder/v1/remediations/{id}/generate | Generate draft remediation artifacts after approval. |
| POST /api/builder/v1/remediations/{id}/create-pr | Create PR/MR after readiness gates pass. |
| POST /api/builder/v1/auto-learn-candidates | Submit learning candidate for human review. |
| POST /api/builder/v1/auto-improve-candidates | Submit improvement candidate for review and prioritization. |

### 15. Admin/Maintenance Screen Design

| Screen | Purpose | Primary Users |
| --- | --- | --- |
| Requirement Intake | Capture structured requirement. | Business User, Product Owner, Architect |
| Upload and Reference Material | Attach sample screens, flows, diagrams, URLs, tables. | Product Owner, Developer, Architect |
| Guided Defaults and Gap Review | Show defaults, missing items, conflicts, readiness score. | Product Owner, Architect, Developer |
| Pre-Generation Assessment | AI analysis, assumptions, risks, recommendations. | Architect, Product Owner, Security |
| Screen Template Builder | Draft workspace/screen templates. | Admin, Frontend Dev, Architect |
| Component/Widget Catalog Manager | Propose component definitions. | Frontend Dev, Architect |
| Experience Block Manager | Create reusable blocks. | Architect, Product Owner |
| Experience Pack Manager | Compose domain packs. | Architect, Product Owner |
| API Contract Generator/Reviewer | Draft/review OpenAPI. | Backend Dev, Architect |
| MicroFunction Generator/Reviewer | Draft/review MicroFunction sequences. | Backend Dev, Architect |
| Database/Flyway Proposal | Draft schema/migration proposals. | DBA, Backend Dev |
| OPA Policy Proposal | Draft/review policies. | Security, Architect |
| AI Prompt and Artifact Review | Review AI prompts/outputs. | AI Engineer, Security, Architect |
| Generated Code Review Queue | Review generated artifacts. | Developer, Reviewer |
| Test Generation | Generate/review tests. | QA/SDET, Developer |
| Evidence Pack | View evidence readiness. | DevSecOps, Auditor |
| Approval Workflow | Route approvals. | Approvers |
| Version History and Change Log | Track requirement/artifact history. | All governed roles |
| Deployment Readiness | Check CI/CD and activation readiness. | DevSecOps, Architect |
| Rollback/Deactivation | Manage rollback plans. | Admin, DevSecOps |
| Audit Dashboard | Inspect traceability and audit evidence. | Auditor, Security |

#### 15.1 Additional Diagnostic and Agent Screens

| Screen | Purpose |
| --- | --- |
| Diagnostic Intake Screen | Accept errors, warnings, findings, logs, screenshots, images, files, traces, and user narratives. |
| Pre-Remediation Assessment Screen | Present AI analysis, assumptions, root-cause hypothesis, recommendations, risks, missing information, and readiness status. |
| Agent Invocation Console | Show approved agents, allowed tasks, required skills, policy decision, and execution boundary. |
| Remediation Option Review Screen | Compare alternative fixes, risks, test coverage, rollback path, and implementation impact. |
| Auto-Learn Candidate Review Screen | Review proposed lessons learned, prompt improvements, guardrail updates, runbooks, and knowledge updates. |
| Auto-Improve Candidate Review Screen | Review proposed refactoring, UX improvements, performance optimization, and policy hardening. |
| Fix Validation Evidence Screen | Display tests, scans, policy checks, architecture fitness, CI/CD results, and proof of remediation. |

### 16. Approval and Governance Workflow

Lifecycle states:

DRAFT
SUBMITTED
AI_ANALYZED
ASSUMPTIONS_PENDING
READY_FOR_GENERATION
GENERATED_DRAFT
ARCHITECT_REVIEW
SECURITY_REVIEW
DBA_REVIEW
QA_REVIEW
PRODUCT_REVIEW
DEVSECOPS_VALIDATION
CI_PASSED
CAB_ARB_REVIEW
APPROVED_FOR_ACTIVATION
ACTIVE
SUPERSEDED
ROLLED_BACK
RETIRED
REJECTED

Mandatory separation of duties:

- requester cannot be sole approver,

- AI cannot approve,

- developer cannot self-approve high-risk generated code,

- DBA review required for schema/migration changes,

- security review required for policy/classification/AI route changes,

- CAB/ARB required for cross-cutting or production-impacting foundation changes.

### 17. Source Code Generation Governance

Generated code must follow this path:

Requirement -> Pre-Generation Assessment -> Approved Generation Scope -> Branch -> Generated Draft -> Human Review -> CI/CD -> Evidence -> Approval -> Activation

Rules:

1. Generate only into a controlled branch.

2. Declare AI assistance in PR/MR.

3. Apply CODEOWNERS.

4. Generate or update tests.

5. Do not create direct model-provider calls.

6. Do not put business logic in frontend components.

7. Do not bypass MicroFunction framework.

8. Do not create direct DB writes from UI.

9. Do not invent API fields outside OpenAPI contracts.

10. Do not merge without CI/CD, scans, tests, and evidence.

### 18. Database and Configuration Generation Governance

The builder may generate drafts for:

- PostgreSQL tables,

- indexes,

- constraints,

- JSONB structures,

- seed data,

- Flyway migrations,

- YAML configuration,

- workspace parameters,

- component catalog entries,

- rendering policies,

- capability bindings,

- AI capability definitions,

- workflow bindings,

- evidence profiles,

- Redis cache metadata.

Controls:

| Area | Rule |
| --- | --- |
| Database schema | Flyway mandatory. |
| Production DDL | Direct manual DDL prohibited. |
| Redis | Derivative cache only. |
| Seed data | Must be versioned and classified. |
| Migration rollback | Use forward-fix, compensation, or rollback strategy. |
| Config activation | Requires validation and evidence. |
| Cache invalidation | Required for active config changes. |

### 19. Dynamic Enhancement Flow

For modifying existing screens or backend programs:

1. User submits enhancement request.

2. Builder retrieves existing screen/component/API/MicroFunction references.

3. GitNexus or equivalent performs read-only impact analysis.

4. AI produces pre-generation assessment.

5. Human confirms assumptions and scope.

6. AI proposes change set.

7. Tests are generated/updated.

8. PR/MR is created.

9. CI/CD validates.

10. Admin template/config version is updated.

11. Cache invalidation is triggered.

12. New version is activated.

13. Old version remains rollbackable.

14. Evidence is recorded.

### 20. Observability and Evidence Requirements

Audit events:

| Event | Evidence Required |
| --- | --- |
| Requirement created | owner, requester, classification, source. |
| Attachment uploaded | file hash, scan result, classification, storage ref. |
| Defaults applied | rule codes, old/new values. |
| Gap detected | missing fields, severity. |
| Conflict detected | conflict rule, blocked action. |
| AI prompt sent | prompt version, model route, classification. |
| AI response generated | output hash, guardrail result, reviewer. |
| Assessment completed | assumptions, score, recommendation. |
| Artifact proposal created | artifact type, source requirement, evidence ref. |
| Code generated | branch, files, AI declaration. |
| Human review completed | reviewer, decision, comments. |
| PR/MR created | repository, branch, commit, reviewers. |
| CI/CD completed | tests, scans, SBOM, policy checks. |
| Activation completed | approver, version, rollback ref. |
| Rollback completed | source version, target version, reason. |

### 21. Testing Requirements

Generated artifacts must include or trigger:

- unit tests,

- component tests,

- API contract tests,

- Playwright E2E tests,

- OPA policy tests,

- Flyway migration tests,

- accessibility tests,

- security tests,

- architecture fitness tests,

- cache invalidation tests,

- fail-closed tests,

- rollback tests,

- AI output evaluation tests.

Generation must be blocked if required tests are not proposed for production-bound work.

### 22. Risk Register

| Risk | Severity | Mitigation |
| --- | --- | --- |
| AI generates insecure code | Critical | Human review, SAST, security tests, architecture checks. |
| AI hallucinates APIs or fields | High | OpenAPI contract validation, schema registry. |
| Unauthorized user generates sensitive function | Critical | RBAC/SBAC/ABAC/OPA builder controls. |
| Over-generation of unnecessary code | Medium | Reuse analysis and YAGNI review. |
| Bypassing MicroFunction standards | Critical | Capability/MicroFunction binding validation. |
| Direct production change | Critical | Git/PR/CI/CD-only path. |
| Prompt leakage | High | Classification, guardrails, redaction, approved model routes. |
| Confidential uploads to unauthorized AI | Critical | AI usage eligibility and model-route policy. |
| Generated code without tests | High | Generation readiness and CI gates. |
| Schema drift | High | Flyway and migration tests. |
| Policy drift | High | OPA versioning and policy tests. |
| Cache inconsistency | High | Config change events and invalidation plan. |
| UI privilege escalation | Critical | Backend policy filtering and deny tests. |
| Unclear ownership | High | Owner and approver mandatory. |
| Unapproved deployment | Critical | CAB/ARB and DevSecOps gates. |

#### 22.1 Additional Risks for Diagnostic Intake and Agent Invocation

| Risk | Severity | Control |
| --- | --- | --- |
| Uploaded logs contain secrets or PII | High | Redaction, classification, DLP scan, access control, retention rules. |
| AI fixes symptom but not root cause | High | RCA requirement, human review, regression tests, production evidence. |
| Agent exceeds allowed authority | Critical | Agent registry, SBAC, OPA, Harness execution boundary, audit. |
| Diagnostic artifact sent to unauthorized model | Critical | LiteLLM route policy, classification gate, guardrails, model eligibility. |
| Auto-Heal disables controls to pass tests | Critical | Prohibit weakening tests, guardrails, audit, observability, and policy. |
| Auto-Learn promotes bad knowledge | High | Human review, source citation, conflict check, supersedence control. |
| Auto-Improve increases coupling | High | SOLID/Clean Architecture/DDD fitness checks and architecture review. |
| Remediation lacks rollback | High | Block implementation readiness until rollback/deactivation/forward-fix exists. |

### 23. Implementation Roadmap

| Phase | Target Outcome | Exit Criteria |
| --- | --- | --- |
| Phase 0 - ADR/TDL | Governance approval. | ADR accepted, initial TDLs created. |
| Phase 1 - Requirement Intake | Capture structured requirements and uploads. | Intake, attachment, classification, audit working. |
| Phase 2 - Defaults and Gap Engine | Guided defaults, dependencies, conflicts, score. | Rules active and tested. |
| Phase 3 - Pre-Generation Gate | AI assessment before generation. | Assessment report and approval workflow active. |
| Phase 4 - Screen/Template Proposal | Generate screen/layout/template drafts. | Draft proposals and validation working. |
| Phase 5 - Component/API/MicroFunction Proposal | Generate component, API, MicroFunction drafts. | Contract and catalog checks active. |
| Phase 6 - Database/OPA/Test Proposal | Generate Flyway, OPA, tests. | DBA/security/QA review path active. |
| Phase 7 - PR/MR and CI/CD Integration | Create branch/PR, run evidence gates. | CI evidence pack generated. |
| Phase 8 - Activation/Rollback | Activate approved templates/configs. | Rollback/deactivation proven. |
| Phase 9 - Experience Pack Generation | Generate reusable domain packs. | Pack authoring and evidence complete. |
| Phase 10 - Continuous Improvement | Auto-Learn and Auto-Improve suggestions. | Human-reviewed improvement backlog. |

### 24. Definition of Done

The builder is production-ready only when:

1. ADR and TDLs are approved.

2. Requirement intake supports structured fields and attachments.

3. Uploads are scanned, classified, hashed, and stored.

4. Defaulting, dependency, conflict, and completeness rules are active.

5. AI produces pre-generation assessment before generation.

6. Generation is blocked for missing mandatory requirements or conflicts.

7. AI-generated artifacts are draft-only until human approved.

8. Code generation creates branch/PR/MR, not direct production changes.

9. Database changes use Flyway drafts and DBA review.

10. OPA policies are generated as proposals and tested.

11. Generated artifacts include tests and evidence.

12. CI/CD gates run successfully.

13. Activation is versioned and rollback-ready.

14. Redis cache invalidation plan exists for config changes.

15. All artifacts have AVCI evidence.

### 25. AVCI Compliance Summary

| AVCI Property | Evidence |
| --- | --- |
| Attributable | Every requirement, attachment, prompt, AI output, generated artifact, review, approval, PR/MR, and activation has owner, source, version, and human accountability. |
| Verifiable | Readiness checks, conflict rules, generated tests, CI/CD evidence, scans, OPA tests, Flyway tests, architecture fitness functions, and review records prove correctness. |
| Classifiable | Requirements, attachments, prompts, generated artifacts, model routes, source materials, and outputs are classified with handling and AI usage rules. |
| Improvable | Gaps, rejected assumptions, review comments, CI failures, incidents, user feedback, and audit findings feed controlled improvement through backlog, ADR/TDL, and governed Auto-Learn. |

### 26. Final Recommendation

The **AIRA AI-Assisted Dynamic Workspace and System Builder** should become part of the AIRA Foundation Package.

It should be implemented only as a governed, policy-aware, evidence-producing requirements-to-artifacts capability. It must include the Guided Requirement Intelligence and Defaulting Engine, Pre-Generation Analysis and Assumption Validation Gate, human approval workflow, PR/MR-based code generation, CI/CD evidence gates, and rollback-ready activation.

**Final Control Statement**
The builder must not simply ask users what they want and generate code. It must guide users toward complete AIRA-compliant requirements, recommend safe defaults, detect conflicts, validate assumptions, assess risk, identify reusable building blocks, obtain human approval, and only then generate draft artifacts for review, testing, evidence, and controlled activation.

### Appendix A - v1.1 Mandatory Addendum Summary

The v1.1 update makes the Builder not only a requirements-to-artifacts capability but also the governed intake and improvement surface for AIRA diagnostic evidence and continuous improvement loops. It can accept errors, warnings, findings, logs, screenshots, images, files, and structured evidence; produce analysis and recommendations; invoke approved DevSecOps agents; and generate remediation proposals. However, all changes remain subject to human review, CI/CD validation, security checks, architecture fitness functions, rollback planning, and AVCI evidence.

**v1.1 Final Control Rule**
The Builder may help AIRA heal, learn, and improve, but it must not silently change AIRA. It must analyze first, recommend second, generate only after approval, invoke only approved agents, validate through evidence, and activate only through governed promotion.
