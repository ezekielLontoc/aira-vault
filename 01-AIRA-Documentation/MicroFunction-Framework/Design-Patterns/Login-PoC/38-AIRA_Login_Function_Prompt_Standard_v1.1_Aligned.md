---
document_id: "AIRA-DOC-038"
title: "AIRA Login Function Prompt Standard"
version: "v1.1"
status: "aligned"
source_file: "38-AIRA_Login_Function_Prompt_Standard_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/MicroFunction-Framework/Design-Patterns/Login-PoC"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - login-poc
  - prompt-standard
  - microfunction
---

# AIRA Login Function Prompt Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Login Function Prompt Standard**

_Prompt Governance | Login PoC | Java 25 Code Generation | Security and MicroFunction Alignment_

**v1.1 - Promoted Provisional Prompt Standard and Java 25 Login Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-038** |
| **Document Title** | **AIRA Login Function Prompt Standard** |
| **Document Version** | **v1.1 - Promoted Provisional Prompt Standard and Java 25 Login Alignment Update** |
| **Supersedes** | **38-AIRA_Login_Function_Prompt_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Prompt execution companion** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines controlled prompts for generating, reviewing, testing, and documenting the Login function under AIRA governance.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active input baseline** | **AIRA Source Packs v3.0 / Aligned Pack Set v1.1 remains the input baseline; Pack 03 v1.2 is the new individual output set for Obsidian upload.** |
| **Backend runtime baseline** | **Java 25 LTS is the required AIRA backend runtime. Spring Boot 4.x and Spring Framework 7.x remain the target backend framework generation where compatible.** |
| **Java 21 handling** | **Java 21 is not the default. It may appear only as a documented compatibility fallback with Architecture Board/CAB waiver, risk acceptance, and exit plan.** |
| **Pack 01 governance references** | **References are aligned to AVCI v3.1, Engineering Blueprint v5.1, DevSecOps v3.1, 01A v1.1, and ADR-AIRA-2026-001 v1.1.** |
| **Pack 02 execution references** | **References are aligned to Developer Guide v4.1, CLAUDE.md v3.1, Skills Framework v3.1, Unit Testing v3.1, GitNexus v1.2, and Developer Onboarding v1.1.** |
| **Pack 03 numbering cleanup** | **Duplicate-number documents are promoted to suffix hierarchy: 19A/19B, 21A/21B, 22A, 23A, 25A, and 26A/26B.** |
| **Technology baseline** | **This Pack 03 v1.2 set produces Technology Stack v9.1 as an aligned successor to v9.0 while retaining v9.0 lineage and Golden Source patch-pinning discipline.** |
| **AI execution boundary** | **All model access routes through LiteLLM. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Tool actions go through Harness/SBAC/OPA.** |
| **GitNexus** | **GitNexus is read-only, derivative, commit-bound code intelligence. It cannot commit, approve, merge, deploy, mutate production, or replace tests/scans/human review.** |
| **Dograh** | **Dograh is governed voice-agent orchestration only. It is not a hardcoded STT/TTS/LLM provider and remains subject to classification, consent, guardrail, and audit controls.** |
| **Obsidian / LLM Wiki** | **Obsidian and LLM Wiki are curated/derivative knowledge layers. Tier 0 sources remain approved DOCX/PDF, Git, OpenKM, databases, workflow histories, security/evidence stores, and audit records.** |

### Material Changes in This Version

Promoted provisional document 38 to an aligned Pack 03 v1.2 prompt-governance artifact pending master-register approval.

Updated login code-generation assumptions to Java 25 LTS, Spring Boot 4.x compatibility, Flyway, Keycloak, OPA/SBAC, Vault/OpenBao, and MicroFunction controls.

Aligned prompt instructions with 22A AI registry, 23A Login PoC code-generation standard, and Pack 04 login MicroFunction design pattern.

Reinforced no direct model calls, no unmanaged secrets, no custom login shortcut, and no bypass of guardrails or human review.

Added output evidence requirements for PR AVCI summary, tests, architecture fitness, security scan, and rollback/forward-fix path.

### Mandatory Java 25 Backend Control

| **Control** | **Pack 03 v1.2 Requirement** |
| --- | --- |
| **Default backend runtime** | **Java 25 LTS. All backend service templates, code-generation prompts, devcontainers, CI runners, unit/contract/architecture tests, GitNexus indexes, evidence records, and operational inventory must assume Java 25 unless explicitly waived.** |
| **Fallback runtime** | **Java 21 is waiver-only for compatibility blockers. The waiver must include owner, reason, affected service, risk, compensating controls, target migration path, and exit date.** |
| **Golden Source** | **Exact Java distribution, image digest, Gradle/Maven version, Spring Boot/Spring Framework compatibility, and patch versions are pinned in Golden Source repositories and validated through CI evidence.** |
| **Review gate** | **PR/MR reviewers must reject backend code, templates, devcontainers, prompts, or CI jobs that quietly downgrade the runtime baseline or introduce untracked dual-runtime behavior.** |
| **Evidence** | **Evidence packs must expose java.version, toolchain version, build image digest, SBOM, SAST/SCA results, architecture fitness results, and runtime health proof.** |

### AVCI Compliance Summary for This Update

| **AVCI Property** | **Evidence in This Pack 03 v1.2 Update** |
| --- | --- |
| **Attributable** | **Each file has a document ID, owner, supersedes value, source pack context, numbering treatment, and material-change list.** |
| **Verifiable** | **The Java 25 baseline is explicitly recorded, cross-pack references are updated, duplicate numbering is resolved by suffix hierarchy, and original source content is preserved after this alignment notice.** |
| **Classifiable** | **All generated files are marked INTERNAL CONFIDENTIAL and inherit AIRA classification-handling, routing, logging, index, and retention rules.** |
| **Improvable** | **Open provisional-document treatment remains visible for master-register review; numbering cleanup is reversible and auditable through suffix hierarchy.** |

## Updated Baseline Content

Below are **copy-ready standard prompts** for PoC 1. I structured them so the developers generate **working frontend + backend source code**, while preserving AIRA rules: Login must not become a custom authentication engine; Keycloak/AD handle authentication, while AIRA establishes the governed session context through AUTH_LOGIN_CONTEXT_ESTABLISH. The Login pattern also requires fail-closed handling, audit/event/observability evidence, safe responses, and the ordered Login MicroFunction catalog.

AIRA MicroFunction rules also state that developers must not re-code standard concerns such as session handling, security, validation, idempotency, audit, telemetry, error handling, event publishing, or response shaping inside business code; these are standard reusable MicroFunctions.

**Prompt 1 — For Kiel, Krisha, and Christian**

**Greenfield / Start from Scratch**

You are an AI-Native Enterprise Architect, Senior Full-Stack Developer, DevSecOps Engineer, Security Architect, and QA/SDET working under the AIRA v3.0 governance framework.

Your task is to create a working Proof of Concept 1 (PoC 1) for the AIRA Login function using the MicroFunction design pattern and framework.

This is a greenfield implementation. Start from an empty repository.

## 1. Governing AIRA Documents

Before generating code, review and apply the following AIRA standards from the project knowledge/source files:

- 01-AIRA_AVCI_Engineering_Standard_v3.0

- 02-AIRA_Engineering_Blueprint_v5.0

- 03-AIRA_Developer_Guide_v4.0

- 04-AIRA_Technology_Stack_v9.1

- 08-AIRA_Unit_Testing_Standard_v3.0

- 10-AIRA_MicroFunction_Framework_v3.0

- 10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.0

- 10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.0

- 10C-AIRA_MicroFunction_Sequence_Diagrams_and_Mermaid_Reference_v2.0

- 10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.0

- 11-AIRA_AI_Native_DevSecOps_Standard_v3.0

- 12-AIRA_CLAUDE_MD_Rollout_Starter_Pack_v3.0

- 15-AIRA_API_and_Integration_Contract_Standard_v2.0

- 16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.0

- 17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.0

- 18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.0

- 22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0

- Microfunction - Login Design Pattern

If there is any conflict, follow the stricter AIRA governance rule and document the assumption.

## 2. Objective

Create a working full-stack Login PoC using:

- Frontend: React + TypeScript

- Backend: Java Spring Boot / Spring Security

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

## 1. Do not build a custom authentication engine.

## 2. Do not store, hash, compare, or validate user passwords in AIRA application code.

## 3. Authentication must be delegated to Keycloak and enterprise AD pattern.

## 4. AIRA application code establishes the governed session context only after identity, token, policy, classification, idempotency, audit, and observability controls pass.

## 5. Do not hardcode authorization using if/else logic in controllers.

## 6. Use OPA/Rego policy for AIRA access decision.

## 7. Do not hardcode roles inside application code; roles/claims must come from Keycloak/AD claims and policy input.

## 8. Do not place secrets in source code, `.env`, logs, tests, screenshots, or documentation.

## 9. Do not log raw JWT, refresh token, ID token, password, PII, or secret values.

## 10. Do not place business logic, audit logic, Kafka publishing, DB writes, or policy decisions directly inside controllers.

## 11. Controllers must be thin adapters only.

## 12. MicroFunctions must be small, single-responsibility, testable, dependency-inverted, and behind ports/adapters.

## 13. Fail safe, not fail open.

## 14. If Keycloak, Vault, OPA, audit, JWT validation, or required runtime configuration is unavailable, protected access must be denied safely.

## 15. Use synthetic users and synthetic data only.

## 4. Required Runtime Transaction

Implement the Login PoC as the runtime-assembled transaction:

```yaml

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

1. STP-RCV-AUTH-REQUEST

2. STP-COR-TRACE

3. STP-RATE-LOGIN

4. STP-SEC-CSRF-CORS

5. STP-AUTH-REDIRECT

6. STP-IDP-AUTHN

7. STP-IDP-CLAIMS

8. STP-JWT-ISSUE

9. STP-JWT-VALIDATE

10. STP-SES-RESOLVE

11. STP-SEC-OPA-AUTHZ

12. STP-CLS-CONTEXT

13. STP-IDP-LOGIN-IDEMP

14. STP-VAULT-SECRETS

15. STP-ENC-SESSION

16. STP-AUD-LOGIN

17. STP-EVT-LOGIN

18. STP-OBS-LOGIN

19. STP-RSP-SAFE-LOGIN

20. STP-ERR-AUTH

For steps owned by Keycloak/AD, represent them as external identity-provider steps and capture safe evidence; do not implement password validation.

## **5. Required Backend Capabilities**

Create a backend that includes:

### **5.1 Project Structure**

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

### **5.2 Backend Layers**

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

### **5.3 Required Backend Components**

Implement or stub safely:

- Spring Security OIDC login with Keycloak

- JWT validation

- /api/session/context endpoint returning safe session context

- /api/auth/logout endpoint or logout redirect path

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

### **5.4 Required Database Tables**

Create Flyway migrations for at least:

- aira_config.txn_definition

- aira_config.txn_step_binding

- aira_config.step_catalog

- aira_audit.step_execution_audit

- aira_audit.access_decision_audit

- aira_auth.login_idempotency

- aira_outbox.security_event_outbox

Use append-only audit behavior where applicable.

## **6. Required Frontend Capabilities**

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

## **7. OPA/SBAC Policy Requirement**

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

- missing AIRA_LOGIN skill denied

- invalid tenant denied

- expired token denied

- admin without MFA denied for Restricted ceiling

- replay detected denied

- inactive/disabled account denied

## **8. Required Local Development Environment**

Create local development support:

- docker-compose.yml for:

  - Keycloak

  - PostgreSQL

  - Redis/Valkey

  - OPA

  - Vault dev-mode or safe stub

- Keycloak realm import for local PoC

- Synthetic test users only

- .env.example with placeholders only

- README setup instructions

- one-command local startup where practical

Do not include production secrets.

## **9. Required Tests**

Generate tests for:

**Backend**

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

**Frontend**

- login button renders

- unauthenticated user sees login page

- authenticated session context renders safe fields only

- denied login shows generic safe error

- no token displayed

**Security / Policy**

- OPA tests

- secret scanning configuration

- dependency/security scan placeholders

- log redaction test where practical

## **10. Required Deliverables**

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

## **11. Definition of Done**

The PoC is acceptable only if:

- The application starts locally.

- Login flow works with Keycloak local PoC realm.

- Backend validates token and resolves safe session context.

- AUTH_LOGIN_CONTEXT_ESTABLISH executes through MicroFunction Coordinator.

- OPA authorization decision is used.

- Audit record is written.

- Login security event is written to outbox.

- Safe response is returned to frontend.

- Denied/failure paths fail closed.

- Tests are included.

- No raw token, password, secret, or PII is logged or displayed.

- README explains how to run and validate the PoC.

- All generated code follows SOLID, Clean Architecture, DDD boundaries, ports/adapters, testability, security, observability, reversibility, and AVCI.

## **12. Execution Instruction**

Generate the implementation in phases:

1. First, provide the proposed architecture and file structure.

2. Then generate the backend code.

3. Then generate the frontend code.

4. Then generate infra/config files.

5. Then generate tests.

6. Then provide run commands.

7. Then provide the PR/MR AVCI evidence summary.

Do not stop at high-level design. Produce runnable source code and implementation files.

---

# Prompt 2 — For Henry

## Refactor / Continue from Existing Working Login

```markdown

You are an AI-Native Enterprise Architect, Senior Full-Stack Developer, DevSecOps Engineer, Security Architect, and QA/SDET working under the AIRA v3.0 governance framework.

You are assigned to PoC 1: AIRA Login function using the MicroFunction design pattern and framework.

Unlike the other developers, you are starting from an existing working Login implementation. Your task is not to rewrite blindly. Your task is to assess, preserve the working behavior, and refactor the implementation so it conforms to AIRA principles, the Login MicroFunction pattern, and the MicroFunction runtime assembly model.

## 1. Governing AIRA Documents

Before modifying code, review and apply the following AIRA standards from the project knowledge/source files:

- 01-AIRA_AVCI_Engineering_Standard_v3.0

- 02-AIRA_Engineering_Blueprint_v5.0

- 03-AIRA_Developer_Guide_v4.0

- 04-AIRA_Technology_Stack_v9.1

- 08-AIRA_Unit_Testing_Standard_v3.0

- 10-AIRA_MicroFunction_Framework_v3.0

- 10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.0

- 10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.0

- 10C-AIRA_MicroFunction_Sequence_Diagrams_and_Mermaid_Reference_v2.0

- 10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.0

- 11-AIRA_AI_Native_DevSecOps_Standard_v3.0

- 12-AIRA_CLAUDE_MD_Rollout_Starter_Pack_v3.0

- 15-AIRA_API_and_Integration_Contract_Standard_v2.0

- 16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.0

- 17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.0

- 18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.0

- 22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0

- Microfunction - Login Design Pattern

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

## 1. Authentication boundary

## 2. Password handling

## 3. Keycloak/OIDC usage

## 4. AD/enterprise identity readiness

## 5. JWT validation

## 6. Token storage and leakage risk

## 7. Role/claim mapping

## 8. Authorization logic

## 9. OPA/SBAC integration

## 10. Session context establishment

## 11. Runtime MicroFunction assembly

## 12. Idempotency/replay guard

## 13. Vault/secrets handling

## 14. Audit trail

## 15. Event/outbox

## 16. Observability/logging

## 17. Error handling

## 18. Safe response

## 19. Frontend token exposure

## 20. Tests

## 21. Architecture boundaries

## 22. SOLID/Clean Architecture compliance

## 23. Reversibility/rollback

## 24. AVCI evidence

Do not skip this analysis.

## 4. Non-Negotiable Refactoring Rules

## 1. Do not break the working login flow unless replacing it with a tested AIRA-compliant flow.

## 2. Do not implement custom authentication logic.

## 3. Do not store, hash, compare, or validate user passwords in AIRA application code.

## 4. Do not hardcode roles, skills, or authorization decisions in controllers.

## 5. Do not expose JWT, refresh token, password, secrets, or PII in UI, logs, traces, tests, or documentation.

## 6. Do not move business logic into controllers.

## 7. Do not let frontend decide authorization.

## 8. Do not bypass Keycloak, OPA, Vault, audit, or runtime configuration.

## 9. Fail closed if required security dependency is unavailable.

## 10. Preserve or improve SOLID, Clean Architecture, DDD, ports/adapters, testability, security, observability, reversibility, and AVCI.

## 5. Required Target Runtime Transaction

Refactor the implementation so the Login context establishment is represented by:

```yaml

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

1. STP-RCV-AUTH-REQUEST

2. STP-COR-TRACE

3. STP-RATE-LOGIN

4. STP-SEC-CSRF-CORS

5. STP-AUTH-REDIRECT

6. STP-IDP-AUTHN

7. STP-IDP-CLAIMS

8. STP-JWT-ISSUE

9. STP-JWT-VALIDATE

10. STP-SES-RESOLVE

11. STP-SEC-OPA-AUTHZ

12. STP-CLS-CONTEXT

13. STP-IDP-LOGIN-IDEMP

14. STP-VAULT-SECRETS

15. STP-ENC-SESSION

16. STP-AUD-LOGIN

17. STP-EVT-LOGIN

18. STP-OBS-LOGIN

19. STP-RSP-SAFE-LOGIN

20. STP-ERR-AUTH

For Keycloak/AD-owned steps, capture safe evidence and status; do not duplicate Keycloak/AD functionality in application code.

## **6. Refactoring Strategy**

Apply this order:

**Phase 1 — Stabilize**

- Run or document existing build/test commands.

- Confirm current login behavior.

- Capture baseline screenshots or test evidence if possible.

- Create a baseline branch or rollback point.

**Phase 2 — Separate Architecture Boundaries**

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

**Phase 3 — Introduce MicroFunction Runtime**

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

**Phase 4 — Externalize Configuration**

Move the login sequence into YAML and/or PostgreSQL seed data.

Create Flyway migrations for:

- aira_config.txn_definition

- aira_config.txn_step_binding

- aira_config.step_catalog

- aira_audit.step_execution_audit

- aira_audit.access_decision_audit

- aira_auth.login_idempotency

- aira_outbox.security_event_outbox

**Phase 5 — Add OPA/SBAC**

Add OPA/Rego policy for Login authorization using:

- authenticated status

- account status

- token trust

- audience validity

- expiry

- replay detection

- tenant scope

- role

- skill: AIRA_LOGIN

- MFA status for Restricted/admin context

**Phase 6 — Improve Frontend Safely**

Ensure frontend:

- redirects to backend/OIDC login path

- calls /api/session/context

- displays safe session context only

- never displays or stores raw tokens

- shows generic safe error on denial/failure

- has logout

- has frontend tests

**Phase 7 — Add Evidence and Tests**

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

## **7. Required OPA/Rego Baseline**

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

## **8. Required Output**

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

## **9. Definition of Done**

The refactored Login PoC is acceptable only if:

- Existing working login behavior is preserved or improved.

- Login uses Keycloak/OIDC and does not implement custom password authentication.

- AUTH_LOGIN_CONTEXT_ESTABLISH is executed through the MicroFunction Coordinator.

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

## **10. Execution Instruction**

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

---

# Recommended Scoring Rubric for Comparing Their Outputs

Use this to evaluate the four independent outputs:

| Area | Weight |

|---|---:|

| Working frontend + backend login flow | 20% |

| Correct Keycloak/OIDC/JWT handling, no custom password auth | 15% |

| MicroFunction runtime assembly using `AUTH_LOGIN_CONTEXT_ESTABLISH` | 20% |

| OPA/SBAC policy integration and fail-closed behavior | 15% |

| Audit, outbox, observability, safe response | 15% |

| Tests, evidence, README, reproducibility | 10% |

| SOLID, Clean Architecture, ports/adapters, AIRA compliance | 5% |

For PoC 1, the winning implementation should not be the most visually impressive. It should be the one that is **working, secure, runtime-assembled, testable, observable, reversible, and evidence-producing by construction**.
