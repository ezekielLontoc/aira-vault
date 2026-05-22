---
document_id: "AIRA-DOC-040"
title: "AIRA Login MicroFunction Design Pattern Working Reference"
version: "v1.1"
status: "aligned"
source_file: "40-AIRA_Login_MicroFunction_Design_Pattern_Working_Reference_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/MicroFunction-Framework/Design-Patterns/Login-PoC"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - login-poc
  - microfunction
---

# AIRA Login MicroFunction Design Pattern Working Reference

**AIRA**

AI-Native Enterprise Platform

**AIRA Login MicroFunction Design Pattern Working Reference**

_Working Reference | Login Pattern Notes | Traceability Companion | Pending Master Register Disposition_

**v1.1 - Pack 04 v1.2 Working Reference Alignment and Disposition Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-040** |
| **Document Title** | **AIRA Login MicroFunction Design Pattern Working Reference** |
| **Document Version** | **v1.1 - Pack 04 v1.2 Working Reference Alignment and Disposition Update** |
| **Supersedes** | **40-AIRA_Login_MicroFunction_Design_Pattern_Working_Reference_v1.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **PROVISIONAL / FOR MASTER REGISTER DISPOSITION** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Database Administration; Platform Engineering; AI Engineering; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material MicroFunction, security, database, workflow, AI, Java/runtime, or architecture-governance change** |
| **Pack Context** | **Pack 04 v1.2 individual aligned file generated from Pack 04 v1.1 aligned source pack and synchronized against Packs 01, 02, 03, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend services, MicroFunction engine code, service templates, test fixtures, and CI evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Provisional working reference retained as Document 40 pending master-register decision to merge, archive, or keep as supplemental material.** |

**Configure First · Code Only the Business Gap · Govern Every Step · AVCI Always**

## Pack 04 v1.2 Cross-Pack Alignment and Improvement Notice

**Purpose. **This aligned version updates the individual Pack 04 source document so it can be uploaded to Obsidian as a standalone MicroFunction Framework artifact while remaining synchronized with the current AIRA source baseline, the completed Pack 01 through Pack 03 v1.2 individual outputs, and Pack 05 data/API/security/decision controls.

**Document role. **Preserves working-reference material for the Login MicroFunction pattern while marking authoritative content boundaries and future disposition requirements.

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

Promoted the informal working reference into a controlled v1.1 aligned provisional artifact so it can be safely uploaded to Obsidian without becoming silently authoritative.

Clarified that 22B is the authoritative reusable Login and Session Establishment MicroFunction Design Pattern when conflicts exist.

Updated references to Java 25, Pack 03 23A, Pack 04 22B, Pack 04 24, Pack 05 Flyway/security standards, and canonical 01A.

Added disposition guidance: merge into 22B, archive as historical, or retain as a supplemental implementation note after SME review.

Reinforced the login principle: assemble approved identity/session/security components; do not implement an unmanaged custom login shortcut.

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

My Prompt:

with the login, we are using Spring Security, JWT, Hashicorp Vault, Keycloak, Active Directory, encryption. We will utilize all available functionalities in Active Directory so we do not need to code from scratch.

Please include what I may have missed.

This is working but now, it should follow the strict rules of AIRA principles and we want to start from scratch.

This is for me to have an idea of the output.

Please provide the list of modular functions that we will connect together on the fly. Provide the sequence diagram. It should have below but not limited to the following since i may have missed some important functions. Session handling Security and authorization Parsing Input validation Idempotency Audit logging Error handling Eventing Observability Safe response handling:

Yes, Jun. For **Login**, the correct AIRA approach is **not to code authentication from scratch**. The team should use **Spring Security + Keycloak + Active Directory + JWT + Vault + encryption** as reusable platform/security capabilities, then assemble the login flow using standard MicroFunctions and configuration.

Under AIRA, security must be embedded from the first implementation, with Keycloak federated to AD, OIDC/OAuth patterns, MFA, short-lived tokens, audience validation, Vault-managed secrets, SPIFFE/SVID/mTLS where applicable, audit evidence, and fail-closed behavior. The MicroFunction framework also states that common concerns like session handling, authorization, parsing, validation, idempotency, audit, observability, error handling, event publishing, and response shaping must be standard framework functions, not repeatedly coded per transaction.

**Recommended Login Design Position**

For the team, define Login as:

**A governed identity and session-establishment transaction assembled from reusable security, session, audit, observability, policy, and response MicroFunctions. Credential validation is delegated to Keycloak and Active Directory. The application must not implement its own password validation, password storage, account lockout, password policy, or custom authentication engine.**

**What You May Have Missed**

Aside from Spring Security, JWT, Vault, Keycloak, Active Directory, and encryption, I recommend including:

| **Area** | **Include in Login Design** |
| --- | --- |
| OIDC / OAuth2 | Use Authorization Code + PKCE for browser login; client credentials for service-to-service where applicable. |
| MFA | Enforce via Keycloak / enterprise IdP policy, especially for privileged users, developers, admins, and sensitive roles. |
| AD group mapping | Reuse AD groups, nested groups, OUs, disabled account status, lockout status, password expiry, and account expiry. |
| Keycloak realm/client governance | Realm, client, redirect URI, token lifetime, refresh token policy, audience, issuer, scopes, claims, and mappers. |
| Token validation | Validate issuer, audience, signature, expiry, nonce/state, required claims, and token revocation behavior. |
| RBAC / ABAC / SBAC | Use AD/Keycloak groups for RBAC, contextual attributes for ABAC, and skill-based access for sensitive actions. |
| OPA policy decision | Do not hardcode authorization logic in business code. Use policy-as-code for critical access decisions. |
| Rate limiting / brute-force protection | Gateway and Keycloak should enforce throttling, lockout, suspicious login detection, and failed-login policy. |
| Session lifecycle | Short-lived access token, refresh token rotation, inactivity timeout, logout, back-channel logout, and revocation. |
| Device/context checks | Where available: device posture, IP range, branch/location, time-based rules, risk score. |
| Vault integration | Store client secrets, signing-related references, DB credentials, encryption keys, TLS/mTLS certs, and secret leases in Vault. |
| Encryption | TLS externally, mTLS internally where applicable, encryption at rest, Vault Transit for sensitive values if needed. |
| Workload identity | SPIFFE/SVID for service identity to avoid static service credentials. |
| CSRF/CORS/security headers | Required for browser-based login and frontend integration. |
| Audit trail | Login success, failure, logout, token refresh, revocation, role mapping, policy decision, and suspicious attempts. |
| Observability | OpenTelemetry trace, logs, metrics, Sentry error correlation, dashboard alerts. |
| Safe error response | No stack trace, no “user exists” leakage, no token/PII leakage. |
| Eventing | Publish login security events through Kafka/CloudEvents using safe metadata only. |
| Break-glass | Controlled admin/break-glass process with dual approval and post-use review. |
| Test evidence | Unit, integration, security, OPA policy, token validation, negative tests, Playwright E2E, SAST/DAST. |

**Modular Login MicroFunctions**

The Login flow should be a **runtime-assembled process definition**, not a hardcoded Java method. The catalog requires every function to have a unique step code, owner, classification ceiling, error policy, test profile, and evidence requirement; new transactions should be configured using step bindings, retry/error policies, and AVCI evidence.

**Proposed Runtime Transaction**

**Transaction Code:** AUTH_LOGIN_CONTEXT_ESTABLISH
**Purpose:** Establish authenticated AIRA session context after Keycloak / AD authentication.
**Important rule:** Password verification happens in **Keycloak + AD**, not in AIRA business code.

| **Order** | **Step Code** | **Modular Function** | **Main Technology** | **Purpose** |
| --- | --- | --- | --- | --- |
| 1 | STP-RCV-AUTH-REQUEST | Receive Login Request | Spring Cloud Gateway / UI | Accept login start or callback request. |
| 2 | STP-COR-TRACE | Correlation | Gateway / OpenTelemetry | Create trace_id, request_id, correlation_id. |
| 3 | STP-RATE-LOGIN | Rate Limit / Brute Force Guard | Gateway / Keycloak | Throttle repeated attempts and suspicious login patterns. |
| 4 | STP-SEC-CSRF-CORS | Browser Security Guard | Spring Security | Validate CSRF/state/nonce, CORS, redirect URI, secure headers. |
| 5 | STP-AUTH-REDIRECT | Redirect to IdP | Spring Security OAuth2 Client | Redirect user to Keycloak using OIDC Authorization Code + PKCE. |
| 6 | STP-IDP-AUTHN | Authenticate User | Keycloak + AD | Validate credential, AD status, group membership, MFA policy. |
| 7 | STP-IDP-CLAIMS | Map Identity Claims | Keycloak | Map AD groups, user attributes, roles, branch, department, classification ceiling. |
| 8 | STP-JWT-ISSUE | Issue Token | Keycloak | Issue signed access token / ID token / refresh token based on policy. |
| 9 | STP-JWT-VALIDATE | Validate JWT | Gateway + Spring Security Resource Server | Validate issuer, audience, signature, expiry, required claims. |
| 10 | STP-SES-RESOLVE | Resolve Session / Actor / Tenant | MicroFunction Envelope | Resolve actor, tenant, roles, skills, branch/unit, channel. |
| 11 | STP-SEC-OPA-AUTHZ | Authorization Decision | OPA + RBAC/ABAC/SBAC | Evaluate whether actor can enter AIRA and access landing context. |
| 12 | STP-CLS-CONTEXT | Classification Context | Policy / Data Classification | Set allowed classification ceiling and data-handling scope. |
| 13 | STP-IDP-LOGIN-IDEMP | Login Idempotency / Replay Guard | Redis/PostgreSQL | Prevent duplicate login callback processing and replay abuse. |
| 14 | STP-VAULT-SECRETS | Resolve Runtime Secrets | Vault | Retrieve only required client/DB/session/encryption references through approved paths. |
| 15 | STP-ENC-SESSION | Session Data Protection | Vault Transit / App Crypto | Encrypt/sign sensitive session metadata where required. |
| 16 | STP-AUD-LOGIN | Audit Evidence | PostgreSQL Audit / OpenKM Evidence Path | Record login success/failure, actor, policy, trace, decision, classification. |
| 17 | STP-EVT-LOGIN | Publish Login Event | Kafka / CloudEvents | Publish safe login event metadata for SIEM, monitoring, and behavior analytics. |
| 18 | STP-OBS-LOGIN | Observability | OTel / Prometheus / Loki / Tempo / Sentry | Emit metrics, trace spans, safe logs, alert signals. |
| 19 | STP-RSP-SAFE-LOGIN | Safe Response | API / UI | Return safe response, session context, landing route, no secrets/PII leakage. |
| 20 | STP-ERR-AUTH | Error Handling | Error Policy / Safe Response Builder | Handle invalid token, locked account, MFA failure, OPA deny, Vault failure, timeout. |

**Which Parts Should Not Be Coded From Scratch**

| **Do Not Code From Scratch** | **Use Instead** |
| --- | --- |
| Password validation | Active Directory via Keycloak federation |
| Password policy | AD Group Policy / domain password policy |
| Account lockout | AD / Keycloak brute-force policy |
| MFA logic | Keycloak / enterprise IdP MFA integration |
| JWT creation | Keycloak |
| JWT validation logic from scratch | Spring Security OAuth2 Resource Server |
| Role storage inside app | AD groups + Keycloak mappers + policy registry |
| Authorization if/else in code | OPA policy + RBAC/ABAC/SBAC |
| Secret loading from files | Vault / approved secret injection |
| Manual audit logging per controller | Standard STP-AUD-* MicroFunction |
| Custom error messages | Standard safe response/error catalog |
| Custom session telemetry | Standard observability envelope |

**Login Sequence Diagram**

sequenceDiagram

autonumber

actor USER as User

participant UI as React UI

participant GW as Spring Cloud Gateway

participant SEC as Spring Security

participant KC as Keycloak

participant AD as Active Directory

participant VAULT as HashiCorp Vault

participant API as Auth / Session API

participant COORD as MicroFunction Coordinator

participant ENV as Execution Envelope

participant OPA as OPA Policy Engine

participant IDP as Idempotency Manager

participant AUD as Audit Trail

participant OUT as Kafka / CloudEvents Outbox

participant OBS as OTel / Logs / Metrics / Sentry

participant RSP as Safe Response Builder

USER->>UI: Open AIRA login

UI->>GW: Request /login

GW->>OBS: Create trace_id and request_id

GW->>GW: TLS, rate limit, security headers

GW->>SEC: Start OIDC Authorization Code + PKCE flow

SEC->>KC: Redirect to Keycloak authorization endpoint

KC->>AD: Validate user credential and account status

AD-->>KC: User valid / invalid, groups, account flags

KC->>KC: Enforce MFA, lockout, password expiry, login policy

KC->>KC: Map AD groups and attributes to claims

KC-->>SEC: Return authorization code

SEC->>KC: Exchange code for signed JWT / ID token / refresh token

KC-->>SEC: Tokens with issuer, audience, expiry, roles, claims

SEC->>GW: Authenticated callback

GW->>API: Forward authenticated request with JWT and trace_id

API->>SEC: Validate JWT issuer, audience, signature, expiry, required claims

API->>COORD: execute AUTH_LOGIN_CONTEXT_ESTABLISH

COORD->>ENV: Load signed runtime process definition

ENV->>IDP: Check login callback idempotency / replay state

ENV->>OPA: Evaluate RBAC / ABAC / SBAC access policy

OPA-->>ENV: allow / deny with policy version

alt Policy allows access

ENV->>VAULT: Resolve required secret references / encryption keys

VAULT-->>ENV: Lease or key reference, no secret leakage

ENV->>ENV: Resolve actor, tenant, role, skill, classification ceiling

ENV->>AUD: Record login success, actor, policy decision, trace_id

ENV->>OUT: Write safe login event to transactional outbox

OUT-->>OBS: Publish security event metadata

ENV->>OBS: Emit metrics, trace span, safe structured logs

ENV->>RSP: Build safe login/session response

RSP-->>UI: Return landing context / session state

else Policy denies or control fails

ENV->>AUD: Record deny/failure with safe reason and trace_id

ENV->>OBS: Emit security failure metric and trace

ENV->>RSP: Build safe error response without PII or stack trace

RSP-->>UI: Show generic login/access error

end

**Error and Fail-Closed Handling**

sequenceDiagram

autonumber

participant STEP as Login MicroFunction Step

participant ERR as STP-ERR-AUTH

participant POL as Error / Retry Policy

participant VAULT as Vault

participant KC as Keycloak

participant OPA as OPA

participant AUD as Audit Trail

participant OBS as Observability

participant RSP as Safe Response Builder

participant FLOW as Flowable Human Review

STEP->>ERR: Authentication, token, policy, Vault, or session failure

ERR->>POL: Resolve error category and retry policy

alt Keycloak / AD unavailable

POL->>AUD: Record identity dependency failure

POL->>OBS: Emit critical auth dependency alert

POL->>RSP: Fail closed with generic service unavailable message

else Vault unavailable

POL->>AUD: Record secret/control failure

POL->>OBS: Emit Vault failure alert

POL->>RSP: Fail closed; do not continue with cached unsafe secret

else OPA unavailable

POL->>AUD: Record policy engine unavailable

POL->>OBS: Emit policy failure alert

POL->>RSP: Fail closed; deny protected access

else Suspicious login or repeated failure

POL->>AUD: Record suspicious login evidence

POL->>FLOW: Create security review task if threshold reached

POL->>RSP: Return safe generic login failure

else Invalid credential / invalid token

POL->>AUD: Record safe failed-login evidence

POL->>RSP: Return generic login failure

end

**Output Expected from the Team**

For Login, I would ask the team to produce these deliverables:

| **Deliverable** | **Expected Output** |
| --- | --- |
| Runtime process definition | AUTH_LOGIN_CONTEXT_ESTABLISH with ordered MicroFunction steps. |
| Step catalog entries | STP-RCV, STP-COR, STP-RATE, STP-SES, STP-SEC, STP-JWT, STP-OPA, STP-AUD, STP-EVT, STP-OBS, STP-RSP, STP-ERR. |
| Keycloak configuration | Realm, client, redirect URI, token policy, mappers, AD federation, MFA policy. |
| AD mapping | Groups, roles, account status, lockout, password expiry, department/branch attributes where applicable. |
| Vault configuration | Client secrets, encryption keys, PKI/certificates, DB credentials, secret lease/rotation policy. |
| OPA policies | Login eligibility, role/skill mapping, classification ceiling, privileged access rules. |
| JWT validation tests | Issuer, audience, expiry, signature, tampered token, missing claim, wrong realm. |
| Security tests | Failed login, locked AD account, disabled AD account, expired password, missing MFA, policy deny. |
| Observability evidence | Trace, metric, structured log, Sentry correlation, dashboard sample. |
| Audit evidence | Login success, failure, deny, logout, token refresh/revocation, policy decision. |
| Playwright E2E | Successful login, failed login, unauthorized role, session timeout, logout. |
| SAST/DAST evidence | No token leakage, no secrets in logs, no insecure headers, no unsafe redirects. |
| AVCI summary | Owner, evidence, classification, improvement path. |

**Key Instruction to the Team**

For Login, the team should prove this principle:

**We are not building a custom login system. We are assembling a governed identity, session, policy, audit, event, and observability flow using approved enterprise components and reusable MicroFunctions.**

This will become the first reusable security pattern for the next transactions.

![[attachments/40-AIRA_Login_MicroFunction_Design_Pattern_Working_Reference_v1.1_Aligned/image28.png]]

## **Pack 04 v1.1 Alignment Control Addendum**

This addendum records the alignment controls applied to Pack 04 so the MicroFunction Framework source pack remains consistent with the current AIRA documentation baseline. The update preserves the original packed source content while normalizing pack-level naming, classification, document IDs, and Login PoC schema governance references. Physical source-pack reordering should be handled in the next packing-script run so source blocks follow the displayed canonical order.

| Area | v1.1 Issue | v1.1 Alignment Applied | Status |
| --- | --- | --- | --- |
| Pack title and source ordering | Pack title was displayed as MicroFunction and the source list placed 10A before the parent 10 framework document. | Updated displayed pack title to MicroFunction Framework and corrected the source-list order to 10, 10A, 10B, 10C, 10D, 22, 23, 24, and the working reference. | Closed / physical repack recommended |
| Classification | Mixed labels appeared across the pack, including INTERNAL CONFIDENTIAL, INTERNAL INTERNAL CONFIDENTIAL, INTERNAL CONFIDENTIAL, and INTERNAL CONFIDENTIAL. | Standardized displayed classification language to INTERNAL CONFIDENTIAL. | Closed |
| Document IDs | Support documents used mixed IDs such as AIRA-DOC-10A, 10D-AIRA-MF-CATALOG-002, and 24-AIRA-LOGIN-POC1-DBSCHEMA-STD. | Normalized displayed IDs to AIRA-DOC-010A, AIRA-DOC-010B, AIRA-DOC-010C, AIRA-DOC-010D, AIRA-DOC-022, AIRA-DOC-023, and AIRA-DOC-024. | Closed |
| Login PoC schema control | The Login PoC 1 database schema standard used Version 1.1, Draft for Review, INTERNAL CONFIDENTIAL, and ADR/TDL terminology. | Updated displayed values to v1.1, DRAFT FOR ARCHITECTURE / DBA REVIEW, INTERNAL CONFIDENTIAL, and ADR/TDL. | Closed |
| 10D catalog status | The parent framework described 10D as still to be revised to v2.0/v3.0, while Pack 04 already includes 10D v2.1. | Updated the displayed authoritative catalog reference to 10D v2.1. | Closed |
| Informal source filename | Microfunction - Login Design Pattern.docx was included as an informal working reference. | Standardized displayed name to 40-AIRA_Login_MicroFunction_Design_Pattern_Working_Reference_v1.1_Aligned.docx and flagged for master-index classification. | Open - master index |
| Cross-pack numbering | Pack 04 uses 22 and 23 while Pack 03 also contains documents numbered 22 and 23. | Preserved the current source documents and recorded this as a master revision-control issue for final renumbering or grouping. | Open - master index |

### **Recommended Canonical Pack 04 Source Order**

| Canonical Order | Displayed Source Document | Purpose | Disposition |
| --- | --- | --- | --- |
| 1 | 10-AIRA_MicroFunction_Framework_v3.1_Aligned.docx | Parent framework standard defining runtime assembly, governance, function categories, evidence, and quality gates. | Canonical |
| 2 | 10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.1_Aligned.docx | Solutions Architect and Developer guide for configuration-first design and business-function extension. | Canonical |
| 3 | 10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.1_Aligned.docx | Implementation standard for SQL, Java contracts, runtime configuration, error handling, and evidence. | Canonical |
| 4 | 10C-AIRA_MicroFunction_Sequence_Diagrams_and_Mermaid_Reference_v2.1_Aligned.docx | Rendered sequence diagrams and copy-ready Mermaid reference for implementation and onboarding. | Canonical |
| 5 | 10D-AIRA_MicroFunction_Standard_Function_Catalog_and_Assembly_Templates_v2.1_Aligned.docx | Authoritative standard function catalog and assembly-template reference. | Canonical |
| 6 | 22B-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.1_Aligned.docx | Formal Login and Session Establishment MicroFunction design pattern. | Canonical, subject to cross-pack number review |
| 7 | 23B-AIRA_Architecture_Fitness_Function_Catalog_v1.1_Aligned.docx | Executable architecture fitness-function catalog for SOLID, Clean Architecture, DDD, policy, security, and evidence gates. | Canonical, subject to cross-pack number review |
| 8 | 24-AIRA_Login_PoC1_MicroFunction_Runtime_Configuration_Database_Schema_Standard_v1.1_Aligned.docx | Database schema standard for Login PoC 1 MicroFunction runtime configuration. | Canonical |
| 9 | 40-AIRA_Login_MicroFunction_Design_Pattern_Working_Reference_v1.1_Aligned.docx | Legacy or working reference for Login MicroFunction design pattern. | Review for merge, supersedence, or archive |

### **AVCI Alignment Confirmation**

| AVCI Property | Pack 04 v1.1 Evidence |
| --- | --- |
| Attributable | Alignment changes are recorded in this addendum and in the separate Pack 04 alignment review/change log. |
| Verifiable | Source-order, classification, document-ID, Login PoC schema-control, and informal-filename corrections were searched and applied. |
| Classifiable | The pack-level and document-control classification labels are normalized to INTERNAL CONFIDENTIAL; the working-reference file remains flagged for master classification review. |
| Improvable | Open issues are retained as master source-index items: physical repack ordering, duplicate/cross-pack numbering, and disposition of the informal Login MicroFunction working reference. |
