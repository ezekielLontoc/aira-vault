---
document_id: "AIRA-DOC-023A"
title: "AIRA Login PoC1 Developer Source Code Generation Standard"
version: "v1.2"
status: "aligned"
source_file: "23A-AIRA_Login_PoC1_Developer_Source_Code_Generation_Standard_v1.2_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/MicroFunction-Framework/Design-Patterns/Login-PoC"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - login-poc
  - microfunction
  - source-code-generation
---

# AIRA Login PoC1 Developer Source Code Generation Standard

**AIRA
AI-Native Enterprise Platform**

**AIRA Login PoC 1 Developer Source Code Generation Prompt Standard**

**v1.2 - Supplemental Alignment Update | INTERNAL CONFIDENTIAL**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-023A** |
| **Document Title** | **AIRA Login PoC 1 Developer Source Code Generation Prompt Standard** |
| **Version** | **v1.2 - Supplemental Alignment Update** |
| **Supersedes** | **23-AIRA_Login_PoC1_Developer_Source_Code_Generation_Standard_v1.0.md** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **ALIGNED FOR OBSIDIAN UPLOAD / ARCHITECTURE REVIEW** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Alignment Baseline** | **AIRA Pack 01-05 v1.2 Individual Files; canonical 01A v1.1; Technology Stack v9.1; Java 25 LTS backend baseline** |
| **Target Pack / Register Placement** | **Pack 03 / Login PoC Developer Prompt Standard** |
| **Effective Date** | **2026-05-21** |

## Alignment Control Addendum

**Purpose. **This supplemental aligned version corrects missing-pack inclusion, document-numbering, classification, and cross-reference issues discovered after Pack 01-05 v1.2 generation. The original source content is preserved below, with updated references and added governance controls where necessary.

**Canonical interpretation. **Where the source text contains older references, the current aligned baseline governs: Java 25 LTS for backend services, Technology Stack v9.1, AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, MicroFunction Framework v3.1, Pack 05 Flyway governance, and canonical 01A v1.1.

### Improvement Summary

Renumbered as 23A to avoid conflict with Pack 04 Document 23B Architecture Fitness Function Catalog.

Converted Markdown prompt standard into formal DOCX while preserving the copy-ready developer prompts.

Updated backend baseline to Java 25 LTS, Spring Boot 4.x, and Spring Security; Java 21 only by waiver.

Aligned references to Technology Stack v9.1, MicroFunction Framework v3.1, 10A-D v2.1, Pack 05 Flyway v1.2, and canonical 01A v1.1.

Strengthened no-custom-login, no-token-leakage, Keycloak/OIDC/PKCE, OPA/SBAC, audit, outbox, and safe-response rules.

### AVCI Compliance Summary

| **AVCI Property** | **Evidence** |
| --- | --- |
| **Attributable** | **Identifies source document, owner, superseded version, target pack placement, and alignment baseline.** |
| **Verifiable** | **Preserves source content and records the specific alignment changes required for Obsidian and revision-control use.** |
| **Classifiable** | **Standardizes classification to INTERNAL CONFIDENTIAL and preserves any elevated handling controls in the body.** |
| **Improvable** | **Captures open numbering/pack-inclusion issues and creates a clean basis for future source-pack regeneration.** |

## Aligned Source Content

---

title: "AIRA Login PoC 1 Developer Source Code Generation Prompt Standard"

document_id: "23-AIRA-LOGIN-POC1-PROMPT-STD"

version: "1.0"

status: "Approved for Team Execution"

classification: "INTERNAL CONFIDENTIAL"

owner: "AIRA Architecture and DevSecOps Governance"

date: "2026-05-20"

framework: "AVCI — Attributable, Verifiable, Classifiable, Improvable"

bounded_context: "Identity and Access"

related_transaction: "AUTH_LOGIN_CONTEXT_ESTABLISH"

tags:

AIRA

MicroFunction

Login

PoC1

Prompt Standard

DevSecOps

AVCI

Keycloak

OPA

SBAC

Obsidian

---

## AIRA Login PoC 1 Developer Source Code Generation Prompt Standard

### Document Control

| **Field** | **Value** |
| --- | --- |
| **Document Title** | **AIRA Login PoC 1 Developer Source Code Generation Prompt Standard** |
| **Document ID** | **23-AIRA-LOGIN-POC1-PROMPT-STD** |
| **Version** | **1.0** |
| **Status** | **Approved for Team Execution** |
| **Classification** | **Internal** |
| **Owner** | **AIRA Architecture and DevSecOps Governance** |
| **Effective Date** | **2026-05-20** |
| **Review Cycle** | **Per PoC milestone or upon architecture/security standard update** |
| **Related Transaction** | **`AUTH_LOGIN_CONTEXT_ESTABLISH`** |
| **Primary Audience** | **AIRA Software Developers, Technical Leads, Security Reviewers, QA/SDET, DevSecOps Engineers** |

### Version History

| **Version** | **Date** | **Author / Owner** | **Summary of Change** |
| --- | --- | --- | --- |
| **1.0** | **2026-05-20** | **AIRA Architecture and DevSecOps Governance** | **Initial formal standard for PoC 1 Login source code generation prompts for greenfield developers and refactoring developer.** |

### 1. Executive Summary

This document defines the official AIRA standard prompts to be used by the software development team for **Proof of Concept 1 (PoC 1): Login Function using the AIRA MicroFunction design pattern and framework**.

The purpose of this standard is to ensure that all developers generate or refactor source code consistently under the AIRA governance model, including AVCI, SOLID, Clean Architecture, DDD/bounded contexts, ports and adapters, secure-by-design, observability-by-design, testability-by-design, policy-as-code, least privilege, SBAC, and fail-safe execution.

For PoC 1, the Login function must not be implemented as a conventional hardcoded login feature. It must be implemented as a governed, runtime-assembled, evidence-producing AIRA transaction using:

**Frontend:** React and TypeScript

**Backend:** Java 25 LTS + Spring Boot 4.x and Spring Security

**Identity Provider:** Keycloak using OIDC Authorization Code + PKCE

**Enterprise Identity Target Pattern:** Active Directory integration through Keycloak federation

**Authorization Decision:** OPA/Rego using RBAC/ABAC/SBAC policy inputs

**Runtime Assembly:** AIRA MicroFunction Coordinator and transaction definition

**Audit and Evidence:** append-only audit, step execution records, policy decision evidence, and transactional outbox event

**Observability:** OpenTelemetry-ready correlation across logs, traces, metrics, audit, and events

**Security Posture:** fail-closed, no token leakage, no custom password engine, no direct secret exposure

This document provides two official prompt variants:

**Prompt A — Greenfield Implementation Prompt** for Kiel, Krisha, and Christian.

**Prompt B — Refactor / Continuation Prompt** for Henry, who will start from his existing working Login implementation.

### 2. Purpose

The purpose of this document is to provide a controlled and repeatable prompt standard for generating source code for PoC 1.

This standard shall be uploaded to Obsidian and treated as part of the AIRA Information Nervous System. It shall be indexed and made available to AI assistants, developers, reviewers, and future automation agents as a governed source of truth for Login PoC execution.

### 3. Scope

This standard applies to:

Login PoC 1 source code generation

Login PoC 1 refactoring

Frontend implementation

Backend implementation

Local development environment setup

MicroFunction runtime implementation

Keycloak/OIDC integration

OPA/SBAC authorization

audit, event, observability, and evidence generation

unit, component, security, policy, and frontend tests

developer PR/MR evidence summaries

This standard does not replace the formal Login design pattern document. It operationalizes that design into execution-ready prompts for developers.

### 4. Source and Companion Documents

Developers must apply the latest approved AIRA documentation set, including but not limited to:

| **Document** | **Expected Use in PoC 1** |
| --- | --- |
| **`01-AIRA_AVCI_Engineering_Standard_v3.1`** | **AVCI compliance, evidence, traceability, classification, improvement loop** |
| **`02-AIRA_Engineering_Blueprint_v5.1`** | **architecture baseline and engineering principles** |
| **`03-AIRA_Developer_Guide_v4.1`** | **developer execution standard** |
| **`04-AIRA_Technology_Stack_v9.1` or latest approved version** | **approved tools, frameworks, and runtime choices** |
| **`08-AIRA_Unit_Testing_Standard_v3.1`** | **deterministic testing and evidence requirements** |
| **`10-AIRA_MicroFunction_Framework_v3.1`** | **MicroFunction framework rules** |
| **`10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.1`** | **MicroFunction design method** |
| **`10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.1`** | **runtime implementation rules** |
| **`10C-AIRA_MicroFunction_Sequence_Diagrams_and_Mermaid_Reference_v2.1`** | **sequence and design documentation support** |
| **`10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.1`** | **standard step catalog and assembly templates** |
| **`11-AIRA_AI_Native_DevSecOps_Standard_v3.1`** | **CI/CD, security gates, evidence pack** |
| **`12-AIRA_CLAUDE_MD_Rollout_Starter_Pack_v3.0`** | **AI assistant behavior and prompt governance** |
| **`15-AIRA_API_and_Integration_Contract_Standard_v2.1`** | **API contract, integration boundaries, safe response model** |
| **`16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.1`** | **Flyway, PostgreSQL, migration governance** |
| **`17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.1`** | **identity, secrets, access control, least privilege** |
| **`18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1`** | **repository structure and golden source discipline** |
| **`22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0`** | **controlling Login MicroFunction design** |
| **`Microfunction - Login Design Pattern`** | **supporting Login pattern reference** |
| **`ADR-AIRA-2026-001_Enterprise_Design_Principles_SOLID_Enforcement_Layer_v1.0`** | **SOLID and enterprise design enforcement** |

### 5. Governance Position

PoC 1 is not only a functional Login demonstration. It is the first executable proof that AIRA can deliver a working feature through governed AI-assisted engineering.

Therefore, developer outputs must demonstrate:

**Attributability** — source code, decisions, configuration, tests, and generated artifacts must be traceable to developer, prompt, branch, commit, transaction, and standard.

**Verifiability** — each output must have tests, audit records, policy decision evidence, local run instructions, and reproducibility evidence.

**Classifiability** — code, configuration, logs, prompts, policies, session context, and runtime data must carry appropriate classification handling.

**Improvability** — gaps, backlog items, refactoring opportunities, test coverage gaps, and future automation candidates must be documented.

### 6. Team Execution Model

| **Developer** | **Starting Point** | **Required Prompt** |
| --- | --- | --- |
| **Kiel** | **Greenfield / empty repository** | **Prompt A — Greenfield Implementation Prompt** |
| **Krisha** | **Greenfield / empty repository** | **Prompt A — Greenfield Implementation Prompt** |
| **Christian** | **Greenfield / empty repository** | **Prompt A — Greenfield Implementation Prompt** |
| **Henry** | **Existing working Login function** | **Prompt B — Refactor / Continuation Prompt** |

The team is expected to work independently. Outputs shall be compared using the evaluation rubric defined in this document.

### 7. Non-Negotiable PoC 1 Design Rules

The following rules apply to all developers:

Do not build a custom authentication engine.

Do not store, hash, compare, or validate passwords inside AIRA application code.

Authentication must be delegated to Keycloak and the enterprise AD target pattern.

AIRA application code must only establish the governed session context after identity, token, policy, classification, idempotency, audit, and observability controls pass.

Controllers must remain thin adapters.

Do not hardcode authorization logic in controllers, services, frontend code, or database scripts.

Authorization must use OPA/Rego policy with RBAC/ABAC/SBAC inputs.

Do not hardcode business roles or skills in application logic.

Do not expose raw JWT, refresh token, ID token, password, PII, or secrets in logs, UI, traces, tests, screenshots, or documentation.

Do not place secrets in source code, `.env`, screenshots, logs, tests, or documentation.

Use synthetic users and synthetic test data only.

Fail safe, not fail open.

If Keycloak, OPA, Vault, JWT validation, audit, runtime configuration, or required security dependency is unavailable, protected access must be denied safely.

MicroFunctions must be small, single-responsibility, testable, dependency-inverted, observable, reversible, and governed by runtime configuration.

Auto-heal, auto-learn, and auto-improve hooks must never weaken SOLID, Clean Architecture, testability, security, observability, reversibility, or AVCI evidence.

### 8. Target Runtime Transaction

All implementations must represent the Login PoC as the runtime-assembled transaction below:

transaction_code: AUTH_LOGIN_CONTEXT_ESTABLISH

version: 1.0.0

status: draft-for-review

classification: CONFIDENTIAL

owner: security-architecture

bounded_context: identity-and-access

idempotency_profile: login-callback-replay-guard-v1

error_policy: fail-closed-auth-v1

observability_profile: auth-login-otel-v1

audit_profile: auth-login-audit-v1

rollback_strategy: revert-runtime-definition-and-opa-policy-version

### 9. Mandatory Login MicroFunction Step Order

The following ordered steps must be implemented, configured, represented, or safely stubbed as appropriate:

| **Order** | **Step Code** | **Required Intent** |
| --- | --- | --- |
| **1** | **`STP-RCV-AUTH-REQUEST`** | **Receive authentication request through a thin adapter** |
| **2** | **`STP-COR-TRACE`** | **Establish correlation, trace, request, and execution IDs** |
| **3** | **`STP-RATE-LOGIN`** | **Apply login rate limiting / abuse protection** |
| **4** | **`STP-SEC-CSRF-CORS`** | **Apply CSRF/CORS controls** |
| **5** | **`STP-AUTH-REDIRECT`** | **Redirect to Keycloak/OIDC login path** |
| **6** | **`STP-IDP-AUTHN`** | **External identity provider authentication step; do not implement passwords in AIRA** |
| **7** | **`STP-IDP-CLAIMS`** | **Resolve identity claims from Keycloak/AD token/profile** |
| **8** | **`STP-JWT-ISSUE`** | **External token issuance by Keycloak** |
| **9** | **`STP-JWT-VALIDATE`** | **Validate issuer, audience, signature, expiry, and trust boundaries** |
| **10** | **`STP-SES-RESOLVE`** | **Resolve governed AIRA session context** |
| **11** | **`STP-SEC-OPA-AUTHZ`** | **Evaluate OPA/Rego RBAC/ABAC/SBAC authorization decision** |
| **12** | **`STP-CLS-CONTEXT`** | **Establish classification ceiling and runtime classification context** |
| **13** | **`STP-IDP-LOGIN-IDEMP`** | **Prevent callback replay / duplicate login event side effects** |
| **14** | **`STP-VAULT-SECRETS`** | **Resolve secrets through Vault abstraction; fail closed if unavailable** |
| **15** | **`STP-ENC-SESSION`** | **Protect and encode safe session context** |
| **16** | **`STP-AUD-LOGIN`** | **Write append-only login/access/step audit evidence** |
| **17** | **`STP-EVT-LOGIN`** | **Write transactional outbox security event** |
| **18** | **`STP-OBS-LOGIN`** | **Emit OpenTelemetry-ready logs, metrics, and trace fields** |
| **19** | **`STP-RSP-SAFE-LOGIN`** | **Return safe response without token, secret, PII, or stack trace leakage** |
| **20** | **`STP-ERR-AUTH`** | **Handle all failure paths through fail-closed safe error handling** |

For Keycloak/AD-owned steps, the application must capture safe evidence and status only. It must not duplicate identity provider responsibilities.

### 10. Standard Prompt A — Greenfield Implementation Prompt

**Assigned to:** Kiel, Krisha, and Christian

**Starting point:** Empty repository / start from scratch

You are an AI-Native Enterprise Architect, Senior Full-Stack Developer, DevSecOps Engineer, Security Architect, and QA/SDET working under the AIRA v4.1 governance framework.

Your task is to create a working Proof of Concept 1 (PoC 1) for the AIRA Login function using the MicroFunction design pattern and framework.

This is a greenfield implementation. Start from an empty repository.

## 1. Governing AIRA Documents

Before generating code, review and apply the following AIRA standards from the project knowledge/source files:

- 01-AIRA_AVCI_Engineering_Standard_v3.1

- 02-AIRA_Engineering_Blueprint_v5.1

- 03-AIRA_Developer_Guide_v4.1

- 04-AIRA_Technology_Stack_v9.1 or latest approved version

- 08-AIRA_Unit_Testing_Standard_v3.1

- 10-AIRA_MicroFunction_Framework_v3.1

- 10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.1

- 10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.1

- 10C-AIRA_MicroFunction_Sequence_Diagrams_and_Mermaid_Reference_v2.1

- 10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.1

- 11-AIRA_AI_Native_DevSecOps_Standard_v3.1

- 12-AIRA_CLAUDE_MD_Rollout_Starter_Pack_v3.0

- 15-AIRA_API_and_Integration_Contract_Standard_v2.1

- 16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.1

- 17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.1

- 18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1

- 22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0

- Microfunction - Login Design Pattern

- ADR-AIRA-2026-001_Enterprise_Design_Principles_SOLID_Enforcement_Layer_v1.0

If there is any conflict, follow the stricter AIRA governance rule and document the assumption.

## 2. Objective

Create a working full-stack Login PoC using:

- Frontend: React + TypeScript

- Backend: Java 25 LTS / Spring Boot 4.x / Spring Security

- Identity: Keycloak using OIDC Authorization Code + PKCE

- Enterprise identity pattern: Active Directory integration must be represented as the target design, but for local PoC use Keycloak local test users or a mock/federated placeholder only

- Token handling: JWT issued by Keycloak, validated by backend

- Secrets: HashiCorp Vault or Vault-compatible abstraction; for local PoC, use a safe dev-mode adapter with no real secrets

- Policy: OPA/Rego for RBAC/ABAC/SBAC authorization decision

- Runtime configuration: MicroFunction transaction definition for `AUTH_LOGIN_CONTEXT_ESTABLISH`

- Persistence: PostgreSQL with Flyway migrations

- Cache/idempotency: Redis or Valkey for replay/idempotency acceleration only; PostgreSQL remains authoritative where required

- Eventing: transactional outbox for login security event; Kafka can be optional or stubbed for PoC

- Observability: OpenTelemetry-ready trace/log/metric structure

- Audit: append-only login/access/step audit records

- Testing: backend unit/component/security tests, OPA policy tests, frontend tests, and at least one login flow smoke/E2E test where practical

Do not produce pseudo-code only. Produce a runnable source code baseline.

## 3. Non-Negotiable AIRA Rules

Follow these rules strictly:

1. Do not build a custom authentication engine.

2. Do not store, hash, compare, or validate user passwords in AIRA application code.

3. Authentication must be delegated to Keycloak and enterprise AD pattern.

4. AIRA application code establishes the governed session context only after identity, token, policy, classification, idempotency, audit, and observability controls pass.

5. Do not hardcode authorization using if/else logic in controllers.

6. Use OPA/Rego policy for AIRA access decision.

7. Do not hardcode roles inside application code; roles/claims must come from Keycloak/AD claims and policy input.

8. Do not place secrets in source code, `.env`, logs, tests, screenshots, or documentation.

9. Do not log raw JWT, refresh token, ID token, password, PII, or secret values.

10. Do not place business logic, audit logic, Kafka publishing, DB writes, or policy decisions directly inside controllers.

11. Controllers must be thin adapters only.

12. MicroFunctions must be small, single-responsibility, testable, dependency-inverted, and behind ports/adapters.

13. Fail safe, not fail open.

14. If Keycloak, Vault, OPA, audit, JWT validation, or required runtime configuration is unavailable, protected access must be denied safely.

15. Use synthetic users and synthetic data only.

## 4. Required Runtime Transaction

Implement the Login PoC as the runtime-assembled transaction:

transaction_code: AUTH_LOGIN_CONTEXT_ESTABLISH

version: 1.0.0

status: draft-for-review

classification: CONFIDENTIAL

owner: security-architecture

bounded_context: identity-and-access

idempotency_profile: login-callback-replay-guard-v1

error_policy: fail-closed-auth-v1

observability_profile: auth-login-otel-v1

audit_profile: auth-login-audit-v1

rollback_strategy: revert-runtime-definition-and-opa-policy-version

The ordered MicroFunction steps must include:

1. `STP-RCV-AUTH-REQUEST`

2. `STP-COR-TRACE`

3. `STP-RATE-LOGIN`

4. `STP-SEC-CSRF-CORS`

5. `STP-AUTH-REDIRECT`

6. `STP-IDP-AUTHN`

7. `STP-IDP-CLAIMS`

8. `STP-JWT-ISSUE`

9. `STP-JWT-VALIDATE`

10. `STP-SES-RESOLVE`

11. `STP-SEC-OPA-AUTHZ`

12. `STP-CLS-CONTEXT`

13. `STP-IDP-LOGIN-IDEMP`

14. `STP-VAULT-SECRETS`

15. `STP-ENC-SESSION`

16. `STP-AUD-LOGIN`

17. `STP-EVT-LOGIN`

18. `STP-OBS-LOGIN`

19. `STP-RSP-SAFE-LOGIN`

20. `STP-ERR-AUTH`

For steps owned by Keycloak/AD, represent them as external identity-provider steps and capture safe evidence; do not implement password validation.

## 5. Required Backend Capabilities

Create a backend that includes:

### 5.1 Project Structure

Use a clean structure similar to:

aira-login-poc/

├── backend/

│ ├── src/main/java/...

│ ├── src/main/resources/

│ ├── src/test/java/...

│ └── build.gradle or pom.xml

├── frontend/

├── contracts/

├── opa/

├── infra/

├── docs/

├── tests/

├── docker-compose.yml

├── README.md

├── SECURITY.md

├── CONTRIBUTING.md

├── CODEOWNERS

└── .github/workflows/aira-ci.yml

### 5.2 Backend Layers

Implement Clean Architecture / ports-and-adapters separation:

adapter-in-web

application

domain

microfunction-runtime

ports

adapter-out-keycloak

adapter-out-opa

adapter-out-vault

adapter-out-postgres

adapter-out-outbox

adapter-out-observability

config

### 5.3 Required Backend Components

Implement or stub safely:

- Spring Security OIDC login with Keycloak

- JWT validation

- `/api/session/context` endpoint returning safe session context

- `/api/auth/logout` endpoint or logout redirect path

- MicroFunction Coordinator

- RuntimeProcessDefinition loader from YAML or PostgreSQL seed

- Step registry

- Step executor / execution envelope

- Error handler for fail-closed login

- OPA authorization adapter

- Vault abstraction adapter

- Audit repository

- Outbox repository

- Idempotency/replay guard

- Safe response builder

- OpenTelemetry correlation fields

- JSON-safe structured logging

- Flyway migrations

- OPA policy skeleton and tests

### 5.4 Required Database Tables

Create Flyway migrations for at least:

- `aira_config.txn_definition`

- `aira_config.txn_step_binding`

- `aira_config.step_catalog`

- `aira_audit.step_execution_audit`

- `aira_audit.access_decision_audit`

- `aira_auth.login_idempotency`

- `aira_outbox.security_event_outbox`

Use append-only audit behavior where applicable.

## 6. Required Frontend Capabilities

Create a React + TypeScript frontend that includes:

- Login landing page

- “Login with AIRA” button

- Redirect to backend login/OIDC path

- Authenticated session context page

- Display safe user/session fields only:

- display name or username

- roles

- skills

- tenant

- branch/unit

- classification ceiling

- policy decision reference

- trace ID or request ID

- Logout button

- Safe error page for denied/failed login

- No token shown in browser UI

- No raw JWT stored in localStorage

- No business authorization logic in frontend

- Form/UI validation where applicable

- Basic accessibility and secure frontend behavior

## 7. OPA/SBAC Policy Requirement

Create an OPA/Rego policy similar to:

package aira.auth.login

default allow := false

default classification_ceiling := "Internal"

allow if {

input.actor.authenticated == true

input.actor.account_status == "active"

input.token.issuer_trusted == true

input.token.audience_valid == true

input.token.expired == false

input.session.replay_detected == false

input.actor.skills[_] == "AIRA_LOGIN"

input.actor.tenant_id == input.request.tenant_id

}

classification_ceiling := "Confidential" if {

allow

input.actor.roles[_] == "AIRA_STANDARD_USER"

}

classification_ceiling := "Restricted" if {

allow

input.actor.roles[_] == "AIRA_SECURITY_ADMIN"

input.actor.mfa_verified == true

}

deny_reason := "POLICY_DENY_SAFE" if not allow

Add OPA unit tests for:

- valid standard user allowed

- missing `AIRA_LOGIN` skill denied

- invalid tenant denied

- expired token denied

- admin without MFA denied for Restricted ceiling

- replay detected denied

- inactive/disabled account denied

## 8. Required Local Development Environment

Create local development support:

- `docker-compose.yml` for:

- Keycloak

- PostgreSQL

- Redis/Valkey

- OPA

- Vault dev-mode or safe stub

- Keycloak realm import for local PoC

- Synthetic test users only

- `.env.example` with placeholders only

- README setup instructions

- one-command local startup where practical

Do not include production secrets.

## 9. Required Tests

Generate tests for:

### Backend

- MicroFunction coordinator happy path

- Missing mandatory step rejected

- JWT validation failure

- OPA deny

- Vault unavailable fail-closed

- Keycloak/identity dependency unavailable fail-closed

- Idempotency replay behavior

- Audit record written on success/failure

- Outbox event created only once

- Safe response does not leak token/PII/stack trace

- Architecture boundary test if practical

- Controller remains thin

### Frontend

- login button renders

- unauthenticated user sees login page

- authenticated session context renders safe fields only

- denied login shows generic safe error

- no token displayed

### Security / Policy

- OPA tests

- secret scanning configuration

- dependency/security scan placeholders

- log redaction test where practical

## 10. Required Deliverables

Produce the following:

1. Architecture summary

2. Assumptions and constraints

3. Repository/file structure

4. Full backend source code

5. Full frontend source code

6. Flyway migrations

7. Runtime process definition YAML

8. OPA/Rego policy and tests

9. Docker Compose/local setup

10. README run instructions

11. Test plan and sample commands

12. Evidence checklist

13. PR/MR AVCI + SOLID compliance summary

14. Known limitations and improvement backlog

## 11. Definition of Done

The PoC is acceptable only if:

- The application starts locally.

- Login flow works with Keycloak local PoC realm.

- Backend validates token and resolves safe session context.

- `AUTH_LOGIN_CONTEXT_ESTABLISH` executes through MicroFunction Coordinator.

- OPA authorization decision is used.

- Audit record is written.

- Login security event is written to outbox.

- Safe response is returned to frontend.

- Denied/failure paths fail closed.

- Tests are included.

- No raw token, password, secret, or PII is logged or displayed.

- README explains how to run and validate the PoC.

- All generated code follows SOLID, Clean Architecture, DDD boundaries, ports/adapters, testability, security, observability, reversibility, and AVCI.

## 12. Execution Instruction

Generate the implementation in phases:

1. First, provide the proposed architecture and file structure.

2. Then generate the backend code.

3. Then generate the frontend code.

4. Then generate infra/config files.

5. Then generate tests.

6. Then provide run commands.

7. Then provide the PR/MR AVCI evidence summary.

Do not stop at high-level design. Produce runnable source code and implementation files.

### 11. Standard Prompt B — Refactor / Continuation Prompt

**Assigned to:** Henry

**Starting point:** Existing working Login implementation

You are an AI-Native Enterprise Architect, Senior Full-Stack Developer, DevSecOps Engineer, Security Architect, and QA/SDET working under the AIRA v4.1 governance framework.

You are assigned to PoC 1: AIRA Login function using the MicroFunction design pattern and framework.

Unlike the other developers, you are starting from an existing working Login implementation. Your task is not to rewrite blindly. Your task is to assess, preserve the working behavior, and refactor the implementation so it conforms to AIRA principles, the Login MicroFunction pattern, and the MicroFunction runtime assembly model.

## 1. Governing AIRA Documents

Before modifying code, review and apply the following AIRA standards from the project knowledge/source files:

- 01-AIRA_AVCI_Engineering_Standard_v3.1

- 02-AIRA_Engineering_Blueprint_v5.1

- 03-AIRA_Developer_Guide_v4.1

- 04-AIRA_Technology_Stack_v9.1 or latest approved version

- 08-AIRA_Unit_Testing_Standard_v3.1

- 10-AIRA_MicroFunction_Framework_v3.1

- 10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.1

- 10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.1

- 10C-AIRA_MicroFunction_Sequence_Diagrams_and_Mermaid_Reference_v2.1

- 10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.1

- 11-AIRA_AI_Native_DevSecOps_Standard_v3.1

- 12-AIRA_CLAUDE_MD_Rollout_Starter_Pack_v3.0

- 15-AIRA_API_and_Integration_Contract_Standard_v2.1

- 16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.1

- 17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.1

- 18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1

- 22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0

- Microfunction - Login Design Pattern

- ADR-AIRA-2026-001_Enterprise_Design_Principles_SOLID_Enforcement_Layer_v1.0

If the existing implementation conflicts with AIRA, preserve business intent but refactor the design.

## 2. Objective

Take the existing working Login implementation and convert it into an AIRA-compliant Login PoC with:

- Frontend and backend working end-to-end

- Spring Security + Keycloak OIDC Authorization Code + PKCE

- Keycloak/AD authentication boundary preserved

- JWT validation in backend

- No custom password validation or password storage in AIRA code

- OPA-based RBAC/ABAC/SBAC access decision

- Vault or Vault-compatible secret abstraction

- Runtime-assembled MicroFunction transaction definition

- Audit trail

- Transactional outbox login event

- OpenTelemetry-ready observability

- Safe response handling

- Fail-closed error handling

- Tests and evidence

## 3. First Task: Existing Code Assessment

Before making changes, inspect the current source code and produce an AIRA gap analysis table with:

| Area | Existing Behavior | AIRA Requirement | Gap | Severity | Recommended Refactor |

|---|---|---|---|---|---|

Assess at least:

1. Authentication boundary

2. Password handling

3. Keycloak/OIDC usage

4. AD/enterprise identity readiness

5. JWT validation

6. Token storage and leakage risk

7. Role/claim mapping

8. Authorization logic

9. OPA/SBAC integration

10. Session context establishment

11. Runtime MicroFunction assembly

12. Idempotency/replay guard

13. Vault/secrets handling

14. Audit trail

15. Event/outbox

16. Observability/logging

17. Error handling

18. Safe response

19. Frontend token exposure

20. Tests

21. Architecture boundaries

22. SOLID/Clean Architecture compliance

23. Reversibility/rollback

24. AVCI evidence

Do not skip this analysis.

## 4. Non-Negotiable Refactoring Rules

1. Do not break the working login flow unless replacing it with a tested AIRA-compliant flow.

2. Do not implement custom authentication logic.

3. Do not store, hash, compare, or validate user passwords in AIRA application code.

4. Do not hardcode roles, skills, or authorization decisions in controllers.

5. Do not expose JWT, refresh token, password, secrets, or PII in UI, logs, traces, tests, or documentation.

6. Do not move business logic into controllers.

7. Do not let frontend decide authorization.

8. Do not bypass Keycloak, OPA, Vault, audit, or runtime configuration.

9. Fail closed if required security dependency is unavailable.

10. Preserve or improve SOLID, Clean Architecture, DDD, ports/adapters, testability, security, observability, reversibility, and AVCI.

## 5. Required Target Runtime Transaction

Refactor the implementation so the Login context establishment is represented by:

transaction_code: AUTH_LOGIN_CONTEXT_ESTABLISH

version: 1.0.0

status: draft-for-review

classification: CONFIDENTIAL

owner: security-architecture

bounded_context: identity-and-access

idempotency_profile: login-callback-replay-guard-v1

error_policy: fail-closed-auth-v1

observability_profile: auth-login-otel-v1

audit_profile: auth-login-audit-v1

rollback_strategy: revert-runtime-definition-and-opa-policy-version

The runtime flow must include these ordered MicroFunction steps:

1. `STP-RCV-AUTH-REQUEST`

2. `STP-COR-TRACE`

3. `STP-RATE-LOGIN`

4. `STP-SEC-CSRF-CORS`

5. `STP-AUTH-REDIRECT`

6. `STP-IDP-AUTHN`

7. `STP-IDP-CLAIMS`

8. `STP-JWT-ISSUE`

9. `STP-JWT-VALIDATE`

10. `STP-SES-RESOLVE`

11. `STP-SEC-OPA-AUTHZ`

12. `STP-CLS-CONTEXT`

13. `STP-IDP-LOGIN-IDEMP`

14. `STP-VAULT-SECRETS`

15. `STP-ENC-SESSION`

16. `STP-AUD-LOGIN`

17. `STP-EVT-LOGIN`

18. `STP-OBS-LOGIN`

19. `STP-RSP-SAFE-LOGIN`

20. `STP-ERR-AUTH`

For Keycloak/AD-owned steps, capture safe evidence and status; do not duplicate Keycloak/AD functionality in application code.

## 6. Refactoring Strategy

Apply this order:

### Phase 1 — Stabilize

- Run or document existing build/test commands.

- Confirm current login behavior.

- Capture baseline screenshots or test evidence if possible.

- Create a baseline branch or rollback point.

### Phase 2 — Separate Architecture Boundaries

Refactor toward:

adapter-in-web

application

domain

microfunction-runtime

ports

adapter-out-keycloak

adapter-out-opa

adapter-out-vault

adapter-out-postgres

adapter-out-outbox

adapter-out-observability

config

Controllers must only adapt HTTP to application use case calls.

### Phase 3 — Introduce MicroFunction Runtime

Add:

- MicroFunction Coordinator

- RuntimeProcessDefinition

- RuntimeStep

- StepRegistry

- ExecutionEnvelope

- StepExecutionResult

- ErrorPolicy

- SafeResponseBuilder

- AuditRecorder

- OutboxWriter

- OpaAuthorizationPort

- VaultSecretPort

- IdempotencyPort

- ObservabilityPort

### Phase 4 — Externalize Configuration

Move the login sequence into YAML and/or PostgreSQL seed data.

Create Flyway migrations for:

- `aira_config.txn_definition`

- `aira_config.txn_step_binding`

- `aira_config.step_catalog`

- `aira_audit.step_execution_audit`

- `aira_audit.access_decision_audit`

- `aira_auth.login_idempotency`

- `aira_outbox.security_event_outbox`

### Phase 5 — Add OPA/SBAC

Add OPA/Rego policy for Login authorization using:

- authenticated status

- account status

- token trust

- audience validity

- expiry

- replay detection

- tenant scope

- role

- skill: `AIRA_LOGIN`

- MFA status for Restricted/admin context

### Phase 6 — Improve Frontend Safely

Ensure frontend:

- redirects to backend/OIDC login path

- calls `/api/session/context`

- displays safe session context only

- never displays or stores raw tokens

- shows generic safe error on denial/failure

- has logout

- has frontend tests

### Phase 7 — Add Evidence and Tests

Add or update tests for:

- existing successful login behavior

- OPA allow/deny

- missing skill denied

- invalid tenant denied

- expired token denied

- replay denied

- Vault unavailable fail-closed

- OPA unavailable fail-closed

- audit written on success/failure

- outbox event created once

- no token/PII/secret leakage

- controller thinness

- architecture boundaries

- frontend safe rendering

## 7. Required OPA/Rego Baseline

Use this as the starting point and improve only if AIRA-compliant:

package aira.auth.login

default allow := false

default classification_ceiling := "Internal"

allow if {

input.actor.authenticated == true

input.actor.account_status == "active"

input.token.issuer_trusted == true

input.token.audience_valid == true

input.token.expired == false

input.session.replay_detected == false

input.actor.skills[_] == "AIRA_LOGIN"

input.actor.tenant_id == input.request.tenant_id

}

classification_ceiling := "Confidential" if {

allow

input.actor.roles[_] == "AIRA_STANDARD_USER"

}

classification_ceiling := "Restricted" if {

allow

input.actor.roles[_] == "AIRA_SECURITY_ADMIN"

input.actor.mfa_verified == true

}

deny_reason := "POLICY_DENY_SAFE" if not allow

## 8. Required Output

Produce the following:

1. Existing-code AIRA gap analysis

2. Refactoring plan

3. Updated repository/file structure

4. Code changes with explanation

5. Backend source code changes

6. Frontend source code changes

7. Runtime process definition YAML

8. Flyway migrations

9. OPA policy and tests

10. Docker/local setup updates

11. Test commands

12. Evidence checklist

13. Risk and rollback plan

14. PR/MR AVCI + SOLID compliance summary

## 9. Definition of Done

The refactored Login PoC is acceptable only if:

- Existing working login behavior is preserved or improved.

- Login uses Keycloak/OIDC and does not implement custom password authentication.

- `AUTH_LOGIN_CONTEXT_ESTABLISH` is executed through the MicroFunction Coordinator.

- OPA decides AIRA entry authorization.

- JWT validation is performed safely.

- Session context is resolved safely.

- Classification ceiling is assigned.

- Idempotency/replay guard exists.

- Audit evidence is written.

- Login event is written to transactional outbox.

- Observability fields are emitted.

- Safe response is returned.

- Failure paths fail closed.

- Frontend does not expose tokens or secrets.

- Tests are included.

- README explains local run and validation.

- PR/MR evidence summary is complete.

## 10. Execution Instruction

Work in this sequence:

1. Inspect the existing implementation.

2. Produce the AIRA gap analysis.

3. Propose the target refactoring design.

4. Apply the minimum safe refactor to become AIRA-compliant.

5. Generate or update all required source files.

6. Generate or update tests.

7. Provide run commands.

8. Provide the final AVCI/SOLID compliance summary.

Do not provide only recommendations. Produce the actual implementation changes needed to make the current Login function AIRA-compliant.

### 12. Required Repository Branching and Submission Standard

Each developer must submit work using a distinct branch and PR/MR.

| **Developer** | **Suggested Branch** |
| --- | --- |
| **Kiel** | **`feature/poc1-login-kiel-greenfield`** |
| **Krisha** | **`feature/poc1-login-krisha-greenfield`** |
| **Christian** | **`feature/poc1-login-christian-greenfield`** |
| **Henry** | **`feature/poc1-login-henry-aira-refactor`** |

Each PR/MR must include:

Summary of implementation

Architecture decision notes

Runtime transaction evidence

MicroFunction step coverage

Security and identity evidence

OPA policy test result

Backend test result

Frontend test result

CI/CD evidence if available

Known limitations

Rollback plan

AVCI compliance summary

SOLID and Enterprise Design Principles compliance summary

### 13. Required PR/MR AVCI Compliance Summary Template

Developers must include the following in every PR/MR description:

## AIRA AVCI Compliance Summary

### Attributable

- Developer:

- Branch:

- Commit(s):

- Prompt Standard Used: 23-AIRA-LOGIN-POC1-PROMPT-STD v1.0

- Related Transaction: AUTH_LOGIN_CONTEXT_ESTABLISH

- Related Documents:

### Verifiable

- Backend tests executed:

- Frontend tests executed:

- OPA tests executed:

- Security scans executed:

- Local run evidence:

- Audit evidence generated:

- Outbox event evidence generated:

### Classifiable

- Data classification applied:

- Session classification ceiling behavior:

- Token/secret/PII leakage prevention:

- Log redaction controls:

- Safe response controls:

### Improvable

- Known limitations:

- Technical debt:

- Improvement backlog:

- Future automation candidates:

- Auto-heal / auto-learn / auto-improve candidates:

### 14. SOLID and Enterprise Design Principles Evidence Template

## SOLID and Enterprise Design Compliance Summary

- SOLID:

- Clean Architecture:

- DDD / Bounded Contexts:

- Ports and Adapters:

- DRY / KISS / YAGNI:

- Idempotency by Design:

- Determinism and Reproducibility:

- Fail-Safe, Not Fail-Open:

- Human-in-the-Loop:

- Least Privilege / SBAC:

- Separation of Duties:

- Observability by Design:

- Policy as Code:

- Testability by Design:

- Secure by Design:

- Resilience Patterns:

- Architectural Fitness Functions:

- Progressive Autonomy:

- Reversibility / Rollbackability:

- AVCI:

### 15. Evaluation Rubric

The team’s outputs shall be evaluated using the rubric below.

| **Evaluation Area** | **Weight** | **Key Evidence** |
| --- | --- | --- |
| **Working frontend + backend login flow** | **20%** | **Local run, screenshots, smoke test, reproducible setup** |
| **Correct Keycloak/OIDC/JWT handling, no custom password auth** | **15%** | **Security config, no password code, JWT validation tests** |
| **MicroFunction runtime assembly using `AUTH_LOGIN_CONTEXT_ESTABLISH`** | **20%** | **Runtime YAML/DB config, coordinator, step registry, execution audit** |
| **OPA/SBAC policy integration and fail-closed behavior** | **15%** | **Rego policy, policy tests, deny path evidence** |
| **Audit, outbox, observability, safe response** | **15%** | **Audit rows, outbox rows, trace/log fields, safe response tests** |
| **Tests, evidence, README, reproducibility** | **10%** | **Test reports, setup guide, deterministic commands** |
| **SOLID, Clean Architecture, ports/adapters, AIRA compliance** | **5%** | **Architecture boundaries, package structure, PR evidence** |

A visually attractive UI is not sufficient. The winning implementation should be the one that is working, secure, runtime-assembled, testable, observable, reversible, and evidence-producing by construction.

### 16. Reviewer Checklist

| **Checkpoint** | **Pass/Fail** | **Reviewer Notes** |
| --- | --- | --- |
| **Application starts locally without production secrets** |  |  |
| **Keycloak login flow works with synthetic user** |  |  |
| **Backend validates JWT safely** |  |  |
| **No custom password engine exists in AIRA code** |  |  |
| **`AUTH_LOGIN_CONTEXT_ESTABLISH` is represented as runtime transaction** |  |  |
| **All mandatory MicroFunction steps are implemented or safely represented** |  |  |
| **Controllers are thin adapters** |  |  |
| **OPA/SBAC policy is used for access decision** |  |  |
| **OPA deny path fails closed** |  |  |
| **Vault/secrets unavailable path fails closed** |  |  |
| **Audit evidence is generated** |  |  |
| **Outbox event is generated once** |  |  |
| **Safe response does not expose tokens, secrets, PII, or stack traces** |  |  |
| **Frontend does not store raw JWT in localStorage** |  |  |
| **Tests are included and runnable** |  |  |
| **README is complete** |  |  |
| **PR/MR AVCI summary is complete** |  |  |
| **SOLID/Enterprise Design compliance summary is complete** |  |  |

### 17. Required Evidence Artifacts

Each developer must produce or reference the following evidence artifacts:

| **Evidence Artifact** | **Minimum Requirement** |
| --- | --- |
| **`docs/architecture-summary.md`** | **Architecture, assumptions, boundaries, and key decisions** |
| **`docs/avci-evidence.md`** | **Attributable, Verifiable, Classifiable, Improvable evidence** |
| **`docs/solid-compliance.md`** | **SOLID and Enterprise Design Principles evidence** |
| **`docs/runbook-local.md`** | **Local setup and validation instructions** |
| **`docs/security-notes.md`** | **Security assumptions, fail-closed behavior, token/secret handling** |
| **`docs/known-limitations.md`** | **Known gaps and future backlog** |
| **`runtime/auth-login-context-establish.yaml`** | **Runtime transaction definition** |
| **`opa/aira-auth-login.rego`** | **Login authorization policy** |
| **`opa/aira-auth-login_test.rego`** | **Policy tests** |
| **`backend/src/main/resources/db/migration`** | **Flyway migrations** |
| **`backend/src/test`** | **Backend tests** |
| **`frontend/src` and `frontend/tests`** | **Frontend implementation and tests** |
| **`.github/workflows/aira-ci.yml`** | **CI pipeline or placeholder with security gates** |

### 18. Standard Reviewer Decision Categories

| **Decision** | **Meaning** |
| --- | --- |
| **Accept** | **Meets PoC 1 definition of done and can be used as baseline.** |
| **Accept with Minor Remediation** | **Core design is compliant; minor cleanup required.** |
| **Conditional Accept** | **Functional but has one or more governance gaps requiring remediation before baseline adoption.** |
| **Reject** | **Breaks AIRA non-negotiables, exposes security risk, or does not work.** |
| **Merge Candidate** | **May be partially merged into winning baseline due to strong component or design pattern.** |

### 19. Known Constraints and Assumptions

PoC 1 may use local Keycloak users for demonstration, provided the target enterprise AD federation pattern is documented.

Vault may use a safe dev-mode adapter or stub in local development, provided production secrets are not introduced.

Kafka may be represented by a transactional outbox table first. Event broker publishing may be added in a future iteration.

Redis or Valkey may be used for acceleration, but PostgreSQL remains authoritative where persistence and audit evidence are required.

The implementation must use synthetic users and test data only.

Any generated code is subject to human review and must not be promoted automatically.

### 20. Obsidian Usage Guidance

This document should be stored in Obsidian under an AIRA-governed location similar to:

AIRA Documentation/

23-AIRA_Login_PoC1_Developer_Source_Code_Generation_Standard_v1.0.md

Recommended backlinks:

Related:

- [[01-AIRA_AVCI_Engineering_Standard_v3.1]]

- [[02-AIRA_Engineering_Blueprint_v5.1]]

- [[03-AIRA_Developer_Guide_v4.1]]

- [[10-AIRA_MicroFunction_Framework_v3.1]]

- [[10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.1]]

- [[10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.1]]

- [[10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.1]]

- [[11-AIRA_AI_Native_DevSecOps_Standard_v3.1]]

- [[15-AIRA_API_and_Integration_Contract_Standard_v2.1]]

- [[17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.1]]

- [[22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0]]

- [[ADR-AIRA-2026-001_Enterprise_Design_Principles_SOLID_Enforcement_Layer_v1.0]]

Recommended tags:

#AIRA #MicroFunction #Login #PoC1 #AVCI #DevSecOps #Keycloak #OPA #SBAC #PromptStandard

### 21. Control Statement

This document is an official AIRA execution prompt standard for PoC 1 Login source code generation and refactoring. Any deviation from this document must be documented in the PR/MR AVCI evidence summary and reviewed by AIRA Architecture and DevSecOps Governance.

The objective is not merely to produce source code. The objective is to prove that AIRA can produce working, secure, governed, observable, testable, reversible, AI-assisted software while preserving the MicroFunction design pattern and all enterprise design principles.
