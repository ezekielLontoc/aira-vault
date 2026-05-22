---
document_id: "AIRA-DOC-041"
title: "AIRA PoC1 Login Execution Instruction and Evidence Governance Standard"
version: "v1.0"
status: "aligned"
source_file: "41-AIRA_PoC1_Login_Execution_Instruction_and_Evidence_Governance_Standard_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/MicroFunction-Framework/Design-Patterns/Login-PoC"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - evidence
  - login-poc
  - microfunction
  - execution-instructions
  - governance
---

# AIRA PoC1 Login Execution Instruction and Evidence Governance Standard

**AIRA
AI-Native Enterprise Platform**

**PoC 1 Login Execution Instruction and Evidence Governance Standard**

_Developer Team Execution Directive | Maker-Checker AI Review | Unit Testing | Security Testing | Evidence Production_

**Version 1.0 - May 2026**

| **Property** | **Value** |
| --- | --- |
| **Document Title** | **AIRA PoC 1 Login Execution Instruction and Evidence Governance Standard** |
| **Provisional Document ID** | **AIRA-DOC-041** |
| **Document Version** | **v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR TEAM EXECUTION AND GOVERNANCE BASELINE ADOPTION** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Primary Audience** | **Software Developers, QA/SDET, DevSecOps, Security, DBA, AI Engineering, Team Leads** |
| **Effective Date** | **Upon approval by Solutions Architecture Office** |
| **Review Cadence** | **After PoC 1 completion, after PoC 1A planning, and on material change to Login, MicroFunction, testing, security, GitNexus, or AI prompt standards** |
| **Supersedes** | **None - new execution directive** |
| **Primary Execution Reference** | **38-AIRA_Login_Function_Prompt_Standard_v1.1_Aligned** |
| **Primary Governance Reference** | **01-AIRA_AVCI_Engineering_Standard_v3.0 and ADR-AIRA-2026-001 Enterprise Design Principles / SOLID Enforcement Layer** |

**Mandatory Practice Statement**

**PoC 1 is not complete when code merely compiles or login appears to work. PoC 1 is complete only when the generated source code, configuration, database migrations, policies, tests, security scans, derived evidence, and PR/MR records prove AVCI, SOLID, Clean Architecture, DDD, ports-and-adapters, SBAC, fail-safe behavior, observability, testability, reversibility, and human accountability.**

_Word TOC Note: This document uses a static section structure for deterministic rendering. A dynamic Word TOC may be inserted before final publication if required._

## 1. Executive Summary

This standard formalizes the instruction to the AIRA software developer team for executing PoC 1 - Login Authentication, Session Context Establishment, and Basic Authorization. It converts a working team message into an auditable AIRA-controlled execution directive.

The directive requires a controlled one-step-at-a-time workflow: pre-execution confirmation, prompt execution, independent verification, improvement gate, two-loop AI-assisted unit testing, security and contract testing, Playwright testing, GitNexus analysis, derived artifact generation, GitLens attribution, documentation, tagging, and final PR/MR evidence packaging.

| **Strategic Outcome** | **Required Result** |
| --- | --- |
| **Controlled prompt execution** | **The team executes the approved Login Function Prompt Standard, verifies that the prompt was followed, and records any gaps before accepting generated code.** |
| **Governed development** | **Codex may generate or improve code, but Claude/Hermes/GitNexus and human reviewers must challenge, verify, and evidence the result.** |
| **Evidence by construction** | **Every generation, review, test, scan, and fix produces traceable AVCI evidence.** |
| **Security-first login** | **Authentication is delegated to Keycloak/AD pattern; authorization uses OPA/SBAC; protected flows fail closed.** |
| **Knowledge control** | **GitHub remains the Golden Source for code; Obsidian receives curated summaries, evidence, references, and approved derived artifacts only.** |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

The purpose of this standard is to define how the AIRA team shall execute PoC 1 Login in a repeatable, governed, testable, and auditable manner. It records the communication and instruction so that all PoC execution steps can be traced, reviewed, improved, and reused for subsequent PoCs.

### 2.2 Scope

PoC 1 Login Authentication, Session Context Establishment, and Basic Authorization.

Prompt execution using 38-AIRA_Login_Function_Prompt_Standard_v1.1_Aligned.

Frontend, backend, database, OPA/Rego, runtime configuration, tests, security scans, and evidence artifacts.

AI-assisted generation and review using approved tools such as Codex, Claude, Hermes, and GitNexus under AIRA governance.

PR/MR documentation, Obsidian evidence projection, and improvement backlog capture.

### 2.3 Authority and Precedence

| **Level** | **Authority** | **Application to PoC 1** |
| --- | --- | --- |
| **L0** | **Architecture Board / Solutions Architecture Office** | **Final authority for unresolved conflicts, waiver approval, and acceptance of material architecture exceptions.** |
| **L1** | **AVCI Engineering Standard and Enterprise Design Principles / SOLID Enforcement Layer** | **Universal production-readiness and evidence gate.** |
| **L1** | **Engineering Blueprint and Developer Guide** | **Build-ready architecture, service boundaries, developer rules, and PR discipline.** |
| **L2** | **Login Function Prompt Standard and Login/MicroFunction documents** | **Direct execution baseline for PoC 1 Login.** |
| **L2** | **Unit Testing, Security, API, Database/Flyway, GitNexus, CI/CD Evidence standards** | **Specialist controls for verification, security, schema, evidence, and code intelligence.** |
| **L3** | **Tickets, branches, commits, PR/MR records, evidence summaries** | **Implementation-level evidence and traceability.** |

## 3. Governing and Companion Documents

The team must use the latest approved AIRA v1.1 aligned source packs and the current Obsidian/LLM Wiki governed source baseline. The following documents are mandatory references for PoC 1 execution:

01-AIRA_AVCI_Engineering_Standard_v3.0

02-AIRA_Engineering_Blueprint_v5.0

03-AIRA_Developer_Guide_v4.0

04-AIRA_Technology_Stack_v9.0

08-AIRA_Unit_Testing_Standard_v3.1_Aligned

08A-AIRA_AI_Assisted_Unit_Testing_Maker_Checker_Prompt_Standard_v1.0

10-AIRA_MicroFunction_Framework_v3.0 and 10A/10B/10C/10D companion documents

11-AIRA_AI_Native_DevSecOps_Standard_v3.0

15-AIRA_API_and_Integration_Contract_Standard_v2.0

16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.0

16A-AIRA_Flyway_Initial_Database_Baseline_and_Migration_Governance_Guide_v1.0

17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.0

19-AIRA_GitNexus_Code_Intelligence_and_Impact_Analysis_Standard_v1.1

20-AIRA_CICD_Pipeline_and_Evidence_Pack_Implementation_Guide_v1.0

22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0

24-AIRA_Login_PoC1_MicroFunction_Runtime_Configuration_Database_Schema_Standard_v1.0

38-AIRA_Login_Function_Prompt_Standard_v1.1_Aligned

39-AIRA_Obsidian_Codex_GitHub_Workspace_Setup_Reference_v1.0

**Conflict Rule. **If two source documents appear inconsistent, follow the stricter AIRA governance rule, record the assumption in the PR/MR AVCI summary, and raise a revision-control item for resolution. Do not silently choose the easier interpretation.

## 4. Team Communication Directive

The following instruction is formalized as the official execution directive for PoC 1 Login.

| **Recipient** | **Role in PoC 1 Execution** |
| --- | --- |
| **Krisha Marie Yambao** | **Team owner/coordinator; execution tracking; documentation and evidence consolidation; maker/checker coordination.** |
| **Ezekiel E. Lontoc** | **Developer contributor; backend/frontend implementation; tests; code review participation.** |
| **Christian J. Obida** | **Developer/DBA contributor; database/Flyway, configuration, policy, tests, and evidence participation.** |

Instruction: Proceed with PoC 1 Login one step at a time. Execute the approved Login Function Prompt Standard, verify that the prompt was properly executed, independently review the generated code and artifacts, run the required testing and security evidence loops, generate derived artifacts, and document all changes and improvement recommendations before acceptance.

## 5. Execution Workflow Overview

| Phase 0 Read and confirm governing sources<br>Phase 1 Execute Login Function Prompt Standard<br>Phase 2 Verify prompt compliance and generated artifact completeness<br>Phase 3 Classify gaps and apply approved improvements<br>Phase 4 Unit testing loop 1 using Codex<br>Phase 5 Unit testing loop 2 using Claude as checker<br>Phase 6 Contract, mutation, SAST, DAST, and Playwright testing<br>Phase 7 GitNexus, Derived Artifact Generator, and GitLens evidence pass<br>Phase 8 Documentation, tagging, Obsidian evidence projection, and PR/MR packaging<br>Phase 9 Final acceptance review<br>Phase 10 Capture improvement backlog for AIRA prompts, standards, and PoC 1A |
| --- |

| **Phase** | **Stop / Go Rule** |
| --- | --- |
| **Phase 0** | **Do not generate or modify code until sources and target scope are confirmed.** |
| **Phase 1** | **Do not accept generated code until independent verification confirms prompt compliance.** |
| **Phase 2** | **Critical and High gaps must be fixed or formally waived before testing evidence is accepted.** |
| **Phase 4-5** | **Codex output must be challenged by Claude/checker review; tests must be deterministic.** |
| **Phase 6** | **Critical/High security findings block acceptance unless formally waived by the required authority.** |
| **Phase 7** | **Evidence is incomplete without GitNexus, derived artifact, and attribution summaries.** |
| **Phase 9** | **PoC 1 is not accepted without complete PR/MR AVCI and design-principle evidence.** |

## 6. Phase 0 - Pre-Execution Confirmation

Before code generation, the team must confirm the execution baseline and scope. This phase prevents uncontrolled AI generation, incomplete source reference, and inconsistent assumptions.

**1. **Confirm that 38-AIRA_Login_Function_Prompt_Standard_v1.1_Aligned is the primary execution prompt.

**2. **Confirm that all Login, MicroFunction, Security, Unit Testing, Database/Flyway, API Contract, Developer, CI/CD Evidence, and GitNexus standards were referenced.

**3. **Confirm the target transaction code: AUTH_LOGIN_CONTEXT_ESTABLISH.

**4. **Confirm that the implementation uses Java 25 / Spring Boot, React + TypeScript, Keycloak OIDC Authorization Code + PKCE, OPA/Rego RBAC/ABAC/SBAC, PostgreSQL/Flyway, audit, transactional outbox, observability, and deterministic tests.

**5. **Confirm that all sample users, tokens, policies, test data, and fixtures are synthetic and non-production.

| **Confirmation Item** | **Required Evidence** |
| --- | --- |
| **Prompt source confirmed** | **Screenshot or note in execution log identifying prompt filename and version.** |
| **Companion documents referenced** | **Checklist in PR/MR or execution record.** |
| **Transaction name confirmed** | **Runtime configuration or code reference to AUTH_LOGIN_CONTEXT_ESTABLISH.** |
| **PoC scope confirmed** | **PoC scope checklist with frontend/backend/database/policy/testing/evidence items.** |
| **Synthetic data confirmed** | **Statement that no production data, secrets, tokens, or PII were used.** |

## 7. Phase 1 - Initial Prompt Execution and Code Generation

Execute the approved Login prompt using the approved AI coding assistant or development workflow. The generated result must be runnable, not pseudo-code only.

### 7.1 Required Implementation Scope

React + TypeScript frontend login flow and safe session-context display.

Java 25 / Spring Boot backend with Spring Security and thin controller pattern.

Keycloak OIDC Authorization Code + PKCE login flow for local PoC users, with AD integration represented as target enterprise pattern.

JWT validation and safe session context establishment.

OPA/Rego policy decision for RBAC/ABAC/SBAC authorization.

Vault or Vault-compatible abstraction with safe local development adapter and no real secrets.

PostgreSQL schema with Flyway migrations for runtime configuration, session context, audit, idempotency/replay, and outbox as required.

MicroFunction runtime configuration for AUTH_LOGIN_CONTEXT_ESTABLISH.

Append-only audit records and transactional outbox event for login security event.

OpenTelemetry-ready trace/log/metric structure.

Backend unit/component/security tests, OPA policy tests, frontend tests, and login smoke/E2E test where practical.

### 7.2 Non-Negotiable Login Rules

**1. **Do not build a custom authentication engine.

**2. **Do not store, hash, compare, or validate user passwords in AIRA application code.

**3. **Do not hardcode authorization using if/else logic in controllers.

**4. **Do not hardcode roles inside application code; claims must come from Keycloak/AD and policy input.

**5. **Do not expose JWT, refresh token, ID token, passwords, secrets, or PII in UI, logs, traces, tests, screenshots, prompts, or documentation.

**6. **Do not place business logic, database writes, audit writes, Kafka/event publishing, or policy decisions directly in controllers.

**7. **Controllers must remain thin adapters.

**8. **Authorization decisions must use OPA/Rego and SBAC-aligned inputs.

**9. **MicroFunctions must be single-responsibility, testable, dependency-inverted, and behind ports/adapters.

**10. **If Keycloak, Vault, OPA, audit, JWT validation, or required runtime configuration is unavailable, protected access must be denied safely.

## 8. Phase 2 - Independent Prompt Execution Verification

After the first generated implementation, the team must not immediately accept the code. Ask Codex, Hermes, Claude, or another approved AI reviewer to generate and execute a verification prompt that checks whether the original Login Function Prompt Standard was properly followed.

| **Verification Area** | **Required Review** |
| --- | --- |
| **Prompt compliance** | **Confirm whether the original prompt was fully executed and identify missed requirements.** |
| **Artifact completeness** | **Check frontend, backend, database, OPA policy, runtime configuration, tests, README, and evidence files.** |
| **Architecture compliance** | **Check Clean Architecture, DDD, ports/adapters, MicroFunction boundaries, and thin controllers.** |
| **Security compliance** | **Check Keycloak, OPA/SBAC, Vault abstraction, safe token handling, fail-closed behavior, redaction, and no secrets.** |
| **Database compliance** | **Check Flyway migrations, runtime configuration schema, audit, outbox, idempotency, and deterministic seed data.** |
| **Testing compliance** | **Check backend, frontend, OPA, security, failure-mode, contract, mutation, and E2E coverage.** |
| **Evidence compliance** | **Check AVCI summary, GitNexus output, derived artifacts, code map, impact summary, test evidence, and security evidence.** |
| **Improvement candidates** | **List missing requirements, weak implementation areas, and recommended additions for PoC 1 or PoC 1A.** |

| **Area** | **Expected AIRA Requirement** | **Current Implementation** | **Gap** | **Severity** | **Recommended Fix** |
| --- | --- | --- | --- | --- | --- |
| **Example** | **OPA/SBAC authorization is externalized** | **TBD** | **TBD** | **Critical/High/Medium/Low** | **TBD** |
| **Example** | **No token leakage in logs/UI/tests** | **TBD** | **TBD** | **Critical/High/Medium/Low** | **TBD** |

## 9. Phase 3 - Improvement Decision Gate

Identified gaps must be classified before fixes are applied. This prevents uncontrolled scope expansion while ensuring material governance defects are not ignored.

| **Severity** | **Meaning** | **Required Action** |
| --- | --- | --- |
| **Critical** | **Security, architecture, data, authentication, authorization, evidence, or fail-closed violation that invalidates PoC acceptance.** | **Must fix before continuing, or obtain formal waiver from required authority.** |
| **High** | **Major weakness that undermines testability, maintainability, observability, compliance, or runtime correctness.** | **Must fix before testing evidence is accepted.** |
| **Medium** | **PoC-relevant issue that should be addressed if within scope and effort.** | **Fix if practical; otherwise record in backlog with owner.** |
| **Low** | **Minor enhancement, naming, documentation, or cleanup issue.** | **Record and fix if convenient.** |
| **Informational** | **Observation or future improvement.** | **Document only.** |

**Execution Rule. **Improvements may be executed only after severity classification, team review, and decision. All fixes must be small, traceable commits with tests and evidence updates.

## 10. Phases 4 and 5 - Two-Loop Unit Testing Maker-Checker Process

Unit testing must be conducted twice using a maker-checker AI-assisted process. The goal is not only test count or coverage; the goal is deterministic proof that behavior, security controls, failure paths, architecture boundaries, and evidence production work as intended.

| **Loop** | **Tool / Actor** | **Purpose** | **Required Output** |
| --- | --- | --- | --- |
| **Loop 1** | **Codex Extension** | **Generate, improve, and run frontend and backend tests.** | **Initial backend/frontend/OPA/security/failure-mode test suite and report.** |
| **Loop 2** | **Claude Extension / Checker** | **Independently review Codex output, identify missing tests, challenge weak assertions, and improve test quality.** | **Checker findings, improved tests, remaining gaps, and acceptance recommendation.** |

| **Minimum Test Area** | **Required Coverage** |
| --- | --- |
| **Backend happy path** | **AUTH_LOGIN_CONTEXT_ESTABLISH succeeds when Keycloak token, OPA decision, runtime configuration, audit, and outbox pass.** |
| **Controller thinness** | **Controller maps request to use case only; no business logic, DB write, policy decision, or event publication.** |
| **JWT failure** | **Invalid/missing/expired token is denied safely.** |
| **OPA deny** | **Policy denial returns safe response and audit evidence.** |
| **Fail-closed dependency** | **Keycloak, Vault, OPA, audit, or runtime configuration failure denies protected access safely.** |
| **Idempotency/replay** | **Repeated login context request does not duplicate business effects or outbox events.** |
| **Audit and outbox** | **Success and failure paths emit expected audit/outbox records without sensitive values.** |
| **Sensitive data safety** | **No raw token, password, secret, stack trace, or PII appears in logs, UI, tests, examples, or evidence.** |
| **Frontend safe UX** | **Unauthenticated, authenticated, denied, and error states render safely with no token exposure.** |
| **Policy tests** | **OPA/Rego allow, deny, step-up-ready, and malformed-input cases are tested where applicable.** |

## 11. Phase 6 - Contract, Mutation, SAST, DAST, and Playwright Testing

| **Testing / Scan Type** | **Required Evidence** | **Acceptance Rule** |
| --- | --- | --- |
| **Contract tests** | **API compatibility report, expected request/response behavior, breaking-change findings.** | **Breaking changes require versioning, fix, or explicit waiver.** |
| **Mutation tests** | **Mutation report, survived mutants, improvements applied or limitations recorded.** | **Critical domain/security logic must not rely on weak assertions.** |
| **SAST** | **SonarQube/Semgrep or approved report, severity summary, remediation notes.** | **Critical/High findings block acceptance unless formally waived.** |
| **DAST** | **OWASP ZAP or approved dynamic scan report against running app/environment.** | **OWASP-related high-risk findings must be fixed or waived.** |
| **Playwright** | **Login success, denied/failure, safe UI behavior, screenshots/traces where applicable.** | **E2E smoke must pass or be formally deferred with reason.** |

## 12. Phase 7 - GitNexus, Derived Artifact Generator, and GitLens Evidence Pass

For each major activity - code generation, review, testing, security scanning, and fixes - the team must update code intelligence and evidence artifacts. These artifacts support audit, impact analysis, and future AI-assisted review.

| **Tool** | **Required Output** |
| --- | --- |
| **GitNexus** | **Code intelligence graph, code map, function/class/module map, impact analysis, security-sensitive code map, architecture drift findings, affected tests/contracts/workflows, PR/MR evidence summary.** |
| **Derived Artifact Generator** | **Code map, impact summary, test evidence summary, security evidence summary, architecture compliance summary, known limitations, and improvement backlog.** |
| **GitLens** | **Change ownership, commit history, file-level attribution, reviewer traceability, and author/checker accountability.** |

**GitNexus Boundary Rule. **GitNexus is a read-only derivative code-intelligence layer. It must not commit, merge, approve, deploy, edit production configuration, or execute downstream actions. AI agents may use GitNexus output for impact analysis and recommendations only, under human review.

## 13. Phase 8 - Documentation, Tagging, and Obsidian Evidence Projection

All changes and evidence must be documented and tagged. GitHub remains the source of truth for code. Obsidian must contain curated, approved summaries and references, not full copied source code.

| **Required Record** | **Minimum Content** |
| --- | --- |
| **Branch and commits** | **Branch name, commit IDs, author, date/time, related ticket/task.** |
| **AI usage record** | **AI tool used, prompt standard, model/tool role, files affected, human checker.** |
| **Testing evidence** | **Backend/frontend/OPA/contract/mutation/Playwright test reports and summary.** |
| **Security evidence** | **SAST, DAST, secret scan, dependency/SCA, SBOM summary where applicable.** |
| **Code intelligence** | **GitNexus report, code map, impact analysis, architecture drift observations.** |
| **Derived artifacts** | **Code map, impact summary, test evidence summary, security evidence summary.** |
| **Knowledge projection** | **Obsidian summaries with source repo, branch, commit hash, artifact hash, approver, classification, and freshness status.** |
| **Improvement backlog** | **Prompt improvements, AIRA standard updates, PoC 1A candidates, unresolved risks.** |

| **Allowed in Obsidian** | **Not Allowed in Obsidian** |
| --- | --- |
| **Curated code maps and architecture summaries** | **Full copied source code as duplicate Golden Source.** |
| **GitNexus impact report summaries** | **Raw secrets, tokens, PII, raw JWTs, passwords, or production data.** |
| **Test and security evidence summaries** | **Unreviewed AI-generated knowledge promoted as authoritative.** |
| **Source references, branch, commit hash, path, artifact hash** | **Stale or superseded evidence without freshness status.** |

## 14. PR/MR AVCI and Design-Principle Compliance Summary Template

| ## AIRA PoC 1 AVCI and Design-Principle Compliance Summary<br><br>### Attributable<br>- Owner:<br>- Developer:<br>- Reviewer / Checker:<br>- Ticket / Task:<br>- Branch:<br>- Commit:<br>- AI tools used:<br>- Prompt standard used:<br><br>### Verifiable<br>- Backend unit tests:<br>- Frontend unit tests:<br>- OPA policy tests:<br>- Contract tests:<br>- Mutation tests:<br>- Playwright tests:<br>- SAST:<br>- DAST:<br>- GitNexus report:<br>- Derived artifact evidence:<br><br>### Classifiable<br>- Data classification:<br>- Secrets/PII handling:<br>- Token handling:<br>- Log redaction:<br>- Model/prompt eligibility:<br>- Evidence storage location:<br><br>### Improvable<br>- Known limitations:<br>- Recommended improvements:<br>- Backlog items:<br>- Prompt improvements:<br>- AIRA standards requiring update:<br><br>### Design Principle Impact<br>- SOLID:<br>- Clean Architecture:<br>- DDD / Bounded Context:<br>- Ports and Adapters:<br>- Idempotency:<br>- Fail-safe behavior:<br>- Testability:<br>- Security:<br>- Observability:<br>- Reversibility / rollbackability:<br>- AVCI: |
| --- |

## 15. Final Acceptance Criteria

**1. **The application starts locally using the approved PoC setup.

**2. **Login works using the Keycloak local PoC realm or approved synthetic/federated placeholder.

**3. **Backend validates JWT correctly and establishes safe session context only after required controls pass.

**4. **AUTH_LOGIN_CONTEXT_ESTABLISH executes through the MicroFunction Coordinator or approved PoC equivalent.

**5. **OPA/SBAC authorization decision is used; no hardcoded controller authorization exists.

**6. **Audit record is written on success and failure paths.

**7. **Login security event is written to transactional outbox without duplication.

**8. **Denied and dependency-failure paths fail closed.

**9. **No raw JWT, refresh token, password, secret, PII, or stack trace is logged, displayed, stored in tests, or included in evidence.

**10. **Frontend does not decide authorization and does not display tokens.

**11. **Controllers remain thin and business logic stays in application/domain/MicroFunction layers.

**12. **Backend and frontend unit tests pass.

**13. **OPA policy tests pass.

**14. **Contract and mutation tests are executed or formally deferred with reason.

**15. **SAST and DAST are executed, and Critical/High findings are fixed or formally waived.

**16. **Playwright login flow test is executed or formally deferred with reason.

**17. **GitNexus, Derived Artifact Generator, and GitLens evidence outputs are produced.

**18. **PR/MR contains complete AVCI and design-principle evidence.

**19. **Known limitations and improvement backlog items are listed.

**20. **PoC 1A login security-intelligence candidates are recorded separately and not mixed into PoC 1 unless approved.

## 16. RACI

| **Activity** | **Solutions Architect / IT Head** | **Krisha** | **Developers** | **QA/SDET** | **Security** | **DBA** | **DevSecOps** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Approve execution directive** | **A/R** | **C** | **I** | **I** | **C** | **C** | **C** |
| **Execute Login prompt** | **A** | **R** | **R** | **C** | **C** | **C** | **C** |
| **Verify prompt compliance** | **A** | **R** | **R** | **C** | **C** | **C** | **C** |
| **Implement code and configuration** | **A** | **C** | **R** | **C** | **C** | **C** | **C** |
| **Create database/Flyway migrations** | **A** | **C** | **C** | **C** | **C** | **R** | **C** |
| **Run unit testing loops** | **A** | **R** | **R** | **R** | **C** | **C** | **C** |
| **Run SAST/DAST/security review** | **A** | **C** | **C** | **C** | **R** | **C** | **R** |
| **Generate GitNexus and derived artifacts** | **A** | **R** | **R** | **C** | **C** | **C** | **R** |
| **Approve PR/MR evidence** | **A/R** | **R** | **C** | **C** | **C** | **C** | **C** |
| **Update Obsidian summaries** | **A** | **R** | **C** | **C** | **C** | **C** | **C** |

## 17. Team Acknowledgement

Before execution, each assigned developer must acknowledge this directive.

| I acknowledge the AIRA PoC 1 Login execution instruction.<br><br>I will follow the approved AIRA prompt standard, Login MicroFunction documents, Unit Testing Standard, Security Standard, Developer Guide, and AVCI/SOLID governance requirements.<br><br>I will not bypass Keycloak, OPA/SBAC, Vault abstraction, audit, observability, testing, or evidence requirements.<br><br>I will not commit or expose passwords, tokens, secrets, PII, or production data.<br><br>I will provide code, tests, configuration, evidence summaries, GitNexus outputs, and improvement recommendations through the approved PR/MR process. |
| --- |

## 18. Improvement Feedback Loop

The Solutions Architecture Office will observe the behavior and quality of generated code, database schema, runtime configuration, tests, security evidence, and derived artifacts. The result may be used to improve AIRA principles, prompt standards, MicroFunction patterns, unit testing prompts, CI/CD evidence requirements, security controls, and PoC 1A planning.

| **Observation Area** | **Improvement Destination** |
| --- | --- |
| **Prompt produced incomplete or weak code** | **Update 38-AIRA_Login_Function_Prompt_Standard and supporting prompt templates.** |
| **Repeated architecture violations** | **Update CLAUDE.md/AGENTS.md rules, ArchUnit checks, and Developer Guide examples.** |
| **Missing tests or weak assertions** | **Update Unit Testing Standard and maker-checker prompts.** |
| **Security gaps or token leakage risk** | **Update Security Standard, SAST/Semgrep rules, and safe logging patterns.** |
| **Database/Flyway gaps** | **Update Database/Flyway standards and migration templates.** |
| **Evidence gaps** | **Update Derived Artifact Generator templates and PR/MR AVCI summary.** |
| **Login risk/security intelligence needs** | **Promote to PoC 1A backlog: suspicious login review, failure triage, account lock/unlock approval, step-up authentication, AI-assisted login incident analysis.** |

## 19. AVCI Compliance Summary

| **AVCI Property** | **How This Document Satisfies It** |
| --- | --- |
| **Attributable** | **Identifies owner, audience, execution team, document ID, source prompt, companion standards, roles, RACI, and PR/MR ownership evidence.** |
| **Verifiable** | **Defines prompt-compliance verification, unit testing loops, contract/mutation/SAST/DAST/Playwright testing, GitNexus evidence, derived artifact summaries, and acceptance criteria.** |
| **Classifiable** | **Classifies the document as INTERNAL CONFIDENTIAL and requires classification handling for code, prompts, logs, tests, evidence, Obsidian summaries, and GitNexus artifacts.** |
| **Improvable** | **Creates feedback loops to improve AIRA prompts, standards, MicroFunction patterns, test prompts, security controls, evidence templates, and PoC 1A backlog items.** |

## Appendix A - Copy-Ready Developer Message

The following message may be sent to the software developer team as the controlled communication version of this standard.

| Krisha Marie Yambao, Ezekiel E. Lontoc, and Christian J. Obida,<br><br>We will now execute AIRA PoC 1 - Login Authentication, Session Context Establishment, and Basic Authorization. Execution must be done one step at a time and must follow the approved AIRA standards, especially 38-AIRA_Login_Function_Prompt_Standard_v1.1_Aligned, the Login/MicroFunction documents, Unit Testing Standard, Security Standard, Developer Guide, GitNexus Standard, CI/CD Evidence Standard, and AVCI/SOLID governance requirements.<br><br>Before generating or modifying code, confirm the correct prompt source, companion documents, target transaction AUTH_LOGIN_CONTEXT_ESTABLISH, implementation scope, and synthetic-data-only rule.<br><br>After generation, do not immediately accept the result. Ask Codex/Hermes/Claude or another approved reviewer to generate and execute a verification prompt to confirm whether the original Login prompt was properly followed. Produce a gap table with severity and recommended fixes.<br><br>Conduct unit testing twice: first using Codex as maker, then using Claude as checker. Run backend, frontend, OPA, security, failure-mode, contract, mutation, SAST, DAST, and Playwright testing where applicable.<br><br>For every code generation, review, test, scan, and fix, produce GitNexus outputs, Derived Artifact Generator outputs, and GitLens attribution evidence. Document all changes, tags, branch names, commit hashes, AI tools used, evidence summaries, known limitations, and recommendations.<br><br>Please confirm before execution. I need to observe the behavior and quality of the generated code, database schema, configuration, tests, and evidence. Based on the result, we may improve the AIRA prompt standards, MicroFunction pattern, unit testing prompts, security controls, or developer execution process. |
| --- |
