---
document_id: "AIRA-DOC-024"
title: "AIRA Login PoC1 MicroFunction Runtime Configuration Database Schema Standard"
version: "v1.1"
status: "aligned"
source_file: "24-AIRA_Login_PoC1_MicroFunction_Runtime_Configuration_Database_Schema_Standard_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/MicroFunction-Framework/Design-Patterns/Login-PoC/Database-Schema"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - login-poc
  - microfunction
  - database-schema
  - runtime-configuration
---

# AIRA Login PoC1 MicroFunction Runtime Configuration Database Schema Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Login PoC 1 MicroFunction Runtime Configuration Database Schema Standard**

_Runtime Configuration Schema | Flyway Governance | Login Assembly Data | Evidence and Control Tables_

**v1.1 - Pack 04 v1.2 Flyway, Java 25, and Schema Governance Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-024** |
| **Document Title** | **AIRA Login PoC 1 MicroFunction Runtime Configuration Database Schema Standard** |
| **Document Version** | **v1.1 - Pack 04 v1.2 Flyway, Java 25, and Schema Governance Update** |
| **Supersedes** | **24-AIRA_Login_PoC1_MicroFunction_Runtime_Configuration_Database_Schema_Standard_v1.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **DRAFT FOR ARCHITECTURE / DBA REVIEW** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Database Administration; Platform Engineering; AI Engineering; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material MicroFunction, security, database, workflow, AI, Java/runtime, or architecture-governance change** |
| **Pack Context** | **Pack 04 v1.2 individual aligned file generated from Pack 04 v1.1 aligned source pack and synchronized against Packs 01, 02, 03, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend services, MicroFunction engine code, service templates, test fixtures, and CI evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Canonical Login PoC runtime-configuration schema standard; remains Document 24.** |

**Configure First · Code Only the Business Gap · Govern Every Step · AVCI Always**

## Pack 04 v1.2 Cross-Pack Alignment and Improvement Notice

**Purpose. **This aligned version updates the individual Pack 04 source document so it can be uploaded to Obsidian as a standalone MicroFunction Framework artifact while remaining synchronized with the current AIRA source baseline, the completed Pack 01 through Pack 03 v1.2 individual outputs, and Pack 05 data/API/security/decision controls.

**Document role. **Defines the Login PoC 1 MicroFunction runtime configuration schema, catalog tables, control data, evidence fields, and database-governed activation rules.

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

Aligned all database creation and configuration setup with Pack 05 Flyway initial-baseline and migration governance; no manual production DDL or direct DB edits are permitted.

Added Java 25 runtime/build metadata expectations for services that consume the runtime configuration schema.

Improved schema-control language for classification ceiling, versioning, activation status, maker/checker approval, audit references, rollback/deactivation, and evidence retention.

Clarified that runtime configuration rows are engineering artifacts and must pass validation, tests, CI, DBA review, and AVCI evidence before activation.

Aligned Login PoC schema references with 22B login pattern, 10D catalog, Pack 05 database/security standards, and Pack 03 23A source-code generation rules.

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

**AIRA v3.0**

**Login PoC 1 MicroFunction Runtime Configuration****
Database Schema Standard**

**Version 1.1**

Formal database design baseline for AIRA MicroFunction dynamic runtime assembly, Login session context establishment, OPA/SBAC policy decisioning, audit evidence, idempotency, observability linkage, and transactional security event outbox.

| **Field** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-024 |
| Document Title | AIRA Login PoC 1 MicroFunction Runtime Configuration Database Schema Standard |
| Version | v1.1 |
| Status | DRAFT FOR ARCHITECTURE / DBA REVIEW |
| Classification | INTERNAL CONFIDENTIAL |
| Primary Audience | Software Developers, DBA, DevSecOps, Security Architecture, QA/SDET |
| Owner | AIRA Security Architecture / Platform Engineering |
| Applies To | PoC 1 - Login Function using MicroFunction Design Pattern and Framework |
| Canonical Storage Target | Obsidian / AIRA Information Nervous System |

_Discipline first, automation second, intelligence third — and AVCI always._

## 1. Document Control

| **Attribute** | **Value** |
| --- | --- |
| Document Name | AIRA Login PoC 1 MicroFunction Runtime Configuration Database Schema Standard |
| Document ID | AIRA-DOC-024 |
| Version | v1.1 |
| Status | DRAFT FOR ARCHITECTURE / DBA REVIEW |
| Prepared For | AIRA Development Team and DBA |
| Prepared By | AIRA Architecture Governance |
| Date | 20 May 2026 |
| Review Cycle | PoC 1 baseline, then update after developer implementation review |
| Change Control | All changes must be handled through ADR/TDL and Git-based revision control. |

### 1.1 Revision History

| **Version** | **Date** | **Author / Role** | **Summary of Change** |
| --- | --- | --- | --- |
| 1.0 | 20 May 2026 | AIRA Architecture Governance | Initial formal database schema standard for Login PoC 1 MicroFunction runtime configuration. |

### 1.2 Companion AIRA Documents

| **Document** | **Relevance** |
| --- | --- |
| 01-AIRA_AVCI_Engineering_Standard_v3.0 | Defines Attributable, Verifiable, Classifiable, and Improvable controls for all artifacts. |
| 02-AIRA_Engineering_Blueprint_v5.0 | Defines platform-level architecture boundaries and runtime governance expectations. |
| 03-AIRA_Developer_Guide_v4.0 | Defines developer implementation discipline and repository practices. |
| 08-AIRA_Unit_Testing_Standard_v3.0 | Defines testability, deterministic testing, and evidence expectations. |
| 10-AIRA_MicroFunction_Framework_v3.0 | Defines the MicroFunction framework and dynamic runtime assembly model. |
| 10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.0 | Defines MicroFunction design, step separation, and reusable behavior. |
| 10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.0 | Defines implementation controls for coordinator, step registry, execution envelope, and runtime configuration. |
| 15-AIRA_API_and_Integration_Contract_Standard_v2.0 | Defines contract-driven integration expectations and API governance. |
| 16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.0 | Defines database migration, versioning, and data engineering rules. |
| 17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.0 | Defines identity, secrets, access control, SBAC, and security requirements. |
| 22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.1 | Defines the Login PoC runtime transaction and ordered MicroFunction steps. |

## 2. Purpose

This document defines the formal PostgreSQL schema baseline for AIRA Proof of Concept 1 (PoC 1), which implements the Login function using the AIRA MicroFunction design pattern and framework. It is intended to guide software developers and the DBA in creating the required tables, schemas, indexes, JSONB structures, Flyway migrations, seed data, and runtime governance controls.

The primary goal is to ensure that Login behavior is not hardcoded inside controllers or business logic. Instead, the Login session establishment process must be dynamically assembled from approved, versioned, classified, and evidence-producing configuration stored in the database.

## 3. Scope

| **In Scope** | **Out of Scope** |
| --- | --- |
| Database schemas for runtime configuration, MicroFunction catalog, authentication/session context, policy registry, audit, evidence, and transactional outbox. | Full production IAM design beyond PoC 1. |
| DDL baseline, indexes, JSONB usage, seed data, and Flyway sequencing. | Production-grade partitioning, HA tuning, full archival strategy, and data retention automation. |
| Login runtime transaction: AUTH_LOGIN_CONTEXT_ESTABLISH. | All future business transactions and non-login MicroFunctions. |
| Keycloak/OPA/Vault/Kafka adapter binding metadata. | Actual production secrets, certificates, or endpoint values. |
| Audit, idempotency, safe session context, and security event outbox structures. | Storage of raw JWT, refresh tokens, passwords, or sensitive PII. |

## 4. Governing Design Principles

| **Principle** | **Database Design Implication** |
| --- | --- |
| AVCI | Every runtime configuration, execution, policy decision, activation, and event must be attributable, verifiable, classifiable, and improvable. |
| Configuration-Driven Runtime | Transaction definitions, step order, parameters, policies, bindings, and activation status are stored as governed configuration. |
| PostgreSQL as Authoritative Source | PostgreSQL stores the authoritative runtime configuration. Redis/Valkey and Caffeine are derivative caches only. |
| Fail-Safe, Not Fail-Open | Missing active configuration, OPA, Vault, Keycloak, audit, or required dependency must result in safe denial. |
| Least Privilege / SBAC | Database access must be separated by role and schema; authorization must use policy and skill-based decisioning. |
| Clean Architecture | Tables support ports/adapters and runtime coordination. Controllers must not own business logic or runtime sequence. |
| Secure by Design | No passwords, raw tokens, refresh tokens, real secrets, or sensitive PII are stored in application tables. |
| Observability by Design | Trace, correlation, causation, request, and evidence fields are first-class database attributes. |
| Reversibility | Runtime versions can be activated, deactivated, rolled back, and compared by hash/signature. |

## 5. Runtime Authority Model

| **Layer** | **Role** |
| --- | --- |
| Git / Flyway | Defines schema, repeatable migrations, seed data, and reviewable changes. |
| PostgreSQL | Authoritative source for runtime configuration, transaction versions, step bindings, parameters, audit evidence, policy registry, and outbox. |
| Runtime Definition Artifact | Compiled and signed representation of an executable MicroFunction transaction definition. |
| Redis / Valkey | Shared cache for active runtime definition and idempotency acceleration only. |
| Caffeine | JVM-local cache to reduce configuration lookup latency. |
| MicroFunction Coordinator | Executes the resolved runtime definition through registered steps and execution envelope. |
| OPA | External policy decision point for RBAC/ABAC/SBAC decisions. |
| Vault | Authoritative source for secrets. Database stores only references. |
| Audit / Outbox | Records evidence and publishes login/security events after commit. |

## 6. Recommended PostgreSQL Schemas

**Schema creation**

| CREATE SCHEMA IF NOT EXISTS aira_cfg;<br>CREATE SCHEMA IF NOT EXISTS aira_mf;<br>CREATE SCHEMA IF NOT EXISTS aira_auth;<br>CREATE SCHEMA IF NOT EXISTS aira_audit;<br>CREATE SCHEMA IF NOT EXISTS aira_policy;<br>CREATE SCHEMA IF NOT EXISTS aira_outbox; |
| --- |

| **Schema** | **Purpose** |
| --- | --- |
| aira_cfg | Runtime configuration, transaction definitions, parameters, policies, bindings, activation. |
| aira_mf | MicroFunction catalog and reusable step metadata. |
| aira_auth | Login/session runtime state, idempotency, and replay guard. |
| aira_audit | Immutable execution, step, access decision, security control, and evidence records. |
| aira_policy | OPA/SBAC policy registry and policy artifact metadata. |
| aira_outbox | Transactional outbox and publish attempt tracking for login/security events. |

## 7. Table Inventory

| **No.** | **Schema.Table** | **Purpose** |
| --- | --- | --- |
| 1 | aira_mf.step_catalog | Master catalog of reusable MicroFunction steps. |
| 2 | aira_cfg.txn_definition | Defines transaction code, profile, version, status, owner, classification. |
| 3 | aira_cfg.txn_step_binding | Defines ordered MicroFunction steps for a transaction. |
| 4 | aira_cfg.step_parameter | Stores dynamic typed parameters per transaction or step. |
| 5 | aira_cfg.retry_policy | Defines retry/backoff behavior. |
| 6 | aira_cfg.error_policy | Defines fail-closed, safe response, DLQ, escalation behavior. |
| 7 | aira_cfg.adapter_binding | Defines approved external adapters such as Keycloak, Vault, OPA, Kafka. |
| 8 | aira_cfg.table_binding | Defines approved database access paths and masking policies. |
| 9 | aira_cfg.runtime_definition_artifact | Stores compiled/signed runtime definition artifact. |
| 10 | aira_cfg.publish_validation_result | Stores publish-time validation and fitness gate result. |
| 11 | aira_cfg.config_activation_audit | Records activation, rollback, deactivation, and approval evidence. |
| 12 | aira_auth.login_idempotency | Prevents replay or duplicate login callback processing. |
| 13 | aira_auth.session_context | Stores safe resolved session context, not raw tokens. |
| 14 | aira_audit.runtime_execution | One row per runtime transaction execution. |
| 15 | aira_audit.step_execution_audit | One row per executed MicroFunction step. |
| 16 | aira_audit.access_decision_audit | Records OPA/SBAC access decisions. |
| 17 | aira_audit.security_control_audit | Records security control results and dependency failures. |
| 18 | aira_policy.policy_registry | Registers OPA/Rego/SBAC policy artifacts. |
| 19 | aira_outbox.security_event_outbox | Transactional outbox for login/security events. |
| 20 | aira_outbox.outbox_publish_attempt | Tracks publish attempts, failures, and retries. |

## 8. PostgreSQL Extensions

**Required extensions**

| CREATE EXTENSION IF NOT EXISTS pgcrypto;<br>CREATE EXTENSION IF NOT EXISTS btree_gin; |
| --- |

## 9. Authoritative Configuration and Runtime Assembly Tables

### 9.1 aira_mf.step_catalog

| CREATE TABLE IF NOT EXISTS aira_mf.step_catalog (<br>step_code varchar(80) PRIMARY KEY,<br>step_name varchar(160) NOT NULL,<br>step_category varchar(40) NOT NULL,<br>capability_type varchar(40) NOT NULL DEFAULT 'STANDARD',<br>bean_name varchar(160) NOT NULL,<br>bounded_context varchar(80),<br>owner varchar(120) NOT NULL,<br>classification_ceiling varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>default_retry_policy_code varchar(60),<br>default_error_policy_code varchar(60),<br>input_schema jsonb NOT NULL DEFAULT '{}'::jsonb,<br>output_schema jsonb NOT NULL DEFAULT '{}'::jsonb,<br>default_parameters jsonb NOT NULL DEFAULT '{}'::jsonb,<br>evidence_requirements jsonb NOT NULL DEFAULT '{}'::jsonb,<br>design_principle_profile jsonb NOT NULL DEFAULT '{}'::jsonb,<br>version integer NOT NULL DEFAULT 1,<br>status varchar(30) NOT NULL DEFAULT 'ACTIVE',<br>is_standard boolean NOT NULL DEFAULT true,<br>created_by varchar(120) NOT NULL DEFAULT 'system',<br>created_at timestamptz NOT NULL DEFAULT now(),<br>updated_by varchar(120),<br>updated_at timestamptz<br>);<br>CREATE INDEX IF NOT EXISTS ix_step_catalog_category<br>ON aira_mf.step_catalog (step_category);<br>CREATE INDEX IF NOT EXISTS ix_step_catalog_status<br>ON aira_mf.step_catalog (status);<br>CREATE INDEX IF NOT EXISTS ix_step_catalog_context<br>ON aira_mf.step_catalog (bounded_context);<br>CREATE INDEX IF NOT EXISTS ix_step_catalog_default_parameters_gin<br>ON aira_mf.step_catalog USING gin (default_parameters jsonb_path_ops); |
| --- |

### 9.2 aira_cfg.txn_definition

| CREATE TABLE IF NOT EXISTS aira_cfg.txn_definition (<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>version integer NOT NULL,<br>txn_name varchar(160) NOT NULL,<br>description text,<br>execution_mode varchar(40) NOT NULL DEFAULT 'SYNC',<br>status varchar(30) NOT NULL DEFAULT 'DRAFT',<br>classification varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>bounded_context varchar(80) NOT NULL,<br>owner varchar(120) NOT NULL,<br>runtime_properties jsonb NOT NULL DEFAULT '{}'::jsonb,<br>activation_controls jsonb NOT NULL DEFAULT '{}'::jsonb,<br>rollback_strategy jsonb NOT NULL DEFAULT '{}'::jsonb,<br>design_principle_profile jsonb NOT NULL DEFAULT '{}'::jsonb,<br>definition_hash varchar(128),<br>signature text,<br>active_from timestamptz,<br>active_to timestamptz,<br>created_by varchar(120) NOT NULL,<br>created_at timestamptz NOT NULL DEFAULT now(),<br>updated_by varchar(120),<br>updated_at timestamptz,<br>PRIMARY KEY (txn_code, profile_code, version)<br>);<br>CREATE UNIQUE INDEX IF NOT EXISTS ux_txn_definition_one_active<br>ON aira_cfg.txn_definition (txn_code, profile_code)<br>WHERE status = 'ACTIVE';<br>CREATE INDEX IF NOT EXISTS ix_txn_definition_status<br>ON aira_cfg.txn_definition (status);<br>CREATE INDEX IF NOT EXISTS ix_txn_definition_context<br>ON aira_cfg.txn_definition (bounded_context);<br>CREATE INDEX IF NOT EXISTS ix_txn_definition_runtime_properties_gin<br>ON aira_cfg.txn_definition USING gin (runtime_properties jsonb_path_ops); |
| --- |

### 9.3 aira_cfg.txn_step_binding

| CREATE TABLE IF NOT EXISTS aira_cfg.txn_step_binding (<br>binding_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>version integer NOT NULL,<br>step_order integer NOT NULL,<br>step_code varchar(80) NOT NULL,<br>is_mandatory boolean NOT NULL DEFAULT true,<br>is_enabled boolean NOT NULL DEFAULT true,<br>branch_condition jsonb NOT NULL DEFAULT '{}'::jsonb,<br>input_mapping jsonb NOT NULL DEFAULT '{}'::jsonb,<br>output_mapping jsonb NOT NULL DEFAULT '{}'::jsonb,<br>step_runtime_config jsonb NOT NULL DEFAULT '{}'::jsonb,<br>timeout_ms integer NOT NULL DEFAULT 3000,<br>retry_policy_code varchar(60),<br>error_policy_code varchar(60),<br>compensation_step_code varchar(80),<br>classification_ceiling varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>created_by varchar(120) NOT NULL,<br>created_at timestamptz NOT NULL DEFAULT now(),<br>CONSTRAINT fk_txn_step_binding_txn<br>FOREIGN KEY (txn_code, profile_code, version)<br>REFERENCES aira_cfg.txn_definition (txn_code, profile_code, version),<br>CONSTRAINT fk_txn_step_binding_step<br>FOREIGN KEY (step_code)<br>REFERENCES aira_mf.step_catalog (step_code)<br>);<br>CREATE UNIQUE INDEX IF NOT EXISTS ux_txn_step_order<br>ON aira_cfg.txn_step_binding (txn_code, profile_code, version, step_order);<br>CREATE INDEX IF NOT EXISTS ix_txn_step_code<br>ON aira_cfg.txn_step_binding (step_code);<br>CREATE INDEX IF NOT EXISTS ix_txn_step_enabled<br>ON aira_cfg.txn_step_binding (txn_code, profile_code, version, is_enabled);<br>CREATE INDEX IF NOT EXISTS ix_txn_step_runtime_config_gin<br>ON aira_cfg.txn_step_binding USING gin (step_runtime_config jsonb_path_ops); |
| --- |

### 9.4 aira_cfg.step_parameter

| CREATE TABLE IF NOT EXISTS aira_cfg.step_parameter (<br>parameter_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>version integer NOT NULL,<br>step_code varchar(80),<br>parameter_key varchar(120) NOT NULL,<br>parameter_type varchar(40) NOT NULL,<br>parameter_value jsonb NOT NULL DEFAULT '{}'::jsonb,<br>validation_schema jsonb NOT NULL DEFAULT '{}'::jsonb,<br>is_secret_reference boolean NOT NULL DEFAULT false,<br>secret_ref varchar(300),<br>is_required boolean NOT NULL DEFAULT false,<br>classification varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>created_by varchar(120) NOT NULL,<br>created_at timestamptz NOT NULL DEFAULT now(),<br>CONSTRAINT fk_step_parameter_txn<br>FOREIGN KEY (txn_code, profile_code, version)<br>REFERENCES aira_cfg.txn_definition (txn_code, profile_code, version),<br>CONSTRAINT fk_step_parameter_step<br>FOREIGN KEY (step_code)<br>REFERENCES aira_mf.step_catalog (step_code)<br>);<br>CREATE UNIQUE INDEX IF NOT EXISTS ux_step_parameter_key<br>ON aira_cfg.step_parameter (<br>txn_code, profile_code, version, COALESCE(step_code, 'TXN'), parameter_key<br>);<br>CREATE INDEX IF NOT EXISTS ix_step_parameter_step<br>ON aira_cfg.step_parameter (step_code);<br>CREATE INDEX IF NOT EXISTS ix_step_parameter_value_gin<br>ON aira_cfg.step_parameter USING gin (parameter_value jsonb_path_ops);<br>CREATE INDEX IF NOT EXISTS ix_step_parameter_secret_ref<br>ON aira_cfg.step_parameter (is_secret_reference, secret_ref); |
| --- |

### 9.5 aira_cfg.retry_policy and aira_cfg.error_policy

| CREATE TABLE IF NOT EXISTS aira_cfg.retry_policy (<br>retry_policy_code varchar(60) PRIMARY KEY,<br>description text,<br>max_attempts integer NOT NULL DEFAULT 1,<br>initial_delay_ms integer NOT NULL DEFAULT 0,<br>max_delay_ms integer NOT NULL DEFAULT 0,<br>backoff_type varchar(30) NOT NULL DEFAULT 'NONE',<br>jitter_enabled boolean NOT NULL DEFAULT false,<br>retryable_error_codes text[] NOT NULL DEFAULT '{}',<br>policy_config jsonb NOT NULL DEFAULT '{}'::jsonb,<br>created_by varchar(120) NOT NULL,<br>created_at timestamptz NOT NULL DEFAULT now()<br>);<br>CREATE INDEX IF NOT EXISTS ix_retry_policy_config_gin<br>ON aira_cfg.retry_policy USING gin (policy_config jsonb_path_ops);<br>CREATE TABLE IF NOT EXISTS aira_cfg.error_policy (<br>error_policy_code varchar(60) PRIMARY KEY,<br>description text,<br>behavior varchar(40) NOT NULL,<br>fail_closed boolean NOT NULL DEFAULT true,<br>safe_response_enabled boolean NOT NULL DEFAULT true,<br>publish_error_event boolean NOT NULL DEFAULT true,<br>dlq_enabled boolean NOT NULL DEFAULT false,<br>human_escalation_enabled boolean NOT NULL DEFAULT false,<br>safe_response_template jsonb NOT NULL DEFAULT '{}'::jsonb,<br>escalation_rules jsonb NOT NULL DEFAULT '{}'::jsonb,<br>policy_config jsonb NOT NULL DEFAULT '{}'::jsonb,<br>created_by varchar(120) NOT NULL,<br>created_at timestamptz NOT NULL DEFAULT now()<br>);<br>CREATE INDEX IF NOT EXISTS ix_error_policy_fail_closed<br>ON aira_cfg.error_policy (fail_closed);<br>CREATE INDEX IF NOT EXISTS ix_error_policy_config_gin<br>ON aira_cfg.error_policy USING gin (policy_config jsonb_path_ops); |
| --- |

### 9.6 aira_cfg.adapter_binding and aira_cfg.table_binding

| CREATE TABLE IF NOT EXISTS aira_cfg.adapter_binding (<br>adapter_binding_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>adapter_code varchar(80) NOT NULL,<br>adapter_type varchar(50) NOT NULL,<br>bounded_context varchar(80),<br>endpoint_ref varchar(300),<br>secret_ref varchar(300),<br>workload_identity_ref varchar(300),<br>adapter_config jsonb NOT NULL DEFAULT '{}'::jsonb,<br>resilience_policy jsonb NOT NULL DEFAULT '{}'::jsonb,<br>classification varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>status varchar(30) NOT NULL DEFAULT 'ACTIVE',<br>created_by varchar(120) NOT NULL,<br>created_at timestamptz NOT NULL DEFAULT now(),<br>updated_by varchar(120),<br>updated_at timestamptz<br>);<br>CREATE UNIQUE INDEX IF NOT EXISTS ux_adapter_binding_code<br>ON aira_cfg.adapter_binding (adapter_code);<br>CREATE INDEX IF NOT EXISTS ix_adapter_binding_type<br>ON aira_cfg.adapter_binding (adapter_type);<br>CREATE INDEX IF NOT EXISTS ix_adapter_binding_config_gin<br>ON aira_cfg.adapter_binding USING gin (adapter_config jsonb_path_ops);<br>CREATE TABLE IF NOT EXISTS aira_cfg.table_binding (<br>table_binding_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>dataset_code varchar(100) NOT NULL,<br>schema_name varchar(80) NOT NULL,<br>table_name varchar(120) NOT NULL,<br>bounded_context varchar(80) NOT NULL,<br>allowed_operations text[] NOT NULL DEFAULT '{}',<br>access_policy_code varchar(100),<br>classification varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>column_policy jsonb NOT NULL DEFAULT '{}'::jsonb,<br>row_filter_policy jsonb NOT NULL DEFAULT '{}'::jsonb,<br>masking_policy jsonb NOT NULL DEFAULT '{}'::jsonb,<br>status varchar(30) NOT NULL DEFAULT 'ACTIVE',<br>created_by varchar(120) NOT NULL,<br>created_at timestamptz NOT NULL DEFAULT now()<br>);<br>CREATE UNIQUE INDEX IF NOT EXISTS ux_table_binding_dataset<br>ON aira_cfg.table_binding (dataset_code);<br>CREATE INDEX IF NOT EXISTS ix_table_binding_schema_table<br>ON aira_cfg.table_binding (schema_name, table_name);<br>CREATE INDEX IF NOT EXISTS ix_table_binding_column_policy_gin<br>ON aira_cfg.table_binding USING gin (column_policy jsonb_path_ops); |
| --- |

### 9.7 aira_cfg.runtime_definition_artifact and aira_cfg.publish_validation_result

| CREATE TABLE IF NOT EXISTS aira_cfg.runtime_definition_artifact (<br>artifact_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>version integer NOT NULL,<br>runtime_definition jsonb NOT NULL,<br>definition_hash varchar(128) NOT NULL,<br>signature text NOT NULL,<br>compiled_by varchar(120) NOT NULL,<br>compiled_at timestamptz NOT NULL DEFAULT now(),<br>is_current boolean NOT NULL DEFAULT false,<br>CONSTRAINT fk_runtime_artifact_txn<br>FOREIGN KEY (txn_code, profile_code, version)<br>REFERENCES aira_cfg.txn_definition (txn_code, profile_code, version)<br>);<br>CREATE UNIQUE INDEX IF NOT EXISTS ux_runtime_artifact_hash<br>ON aira_cfg.runtime_definition_artifact (definition_hash);<br>CREATE INDEX IF NOT EXISTS ix_runtime_artifact_current<br>ON aira_cfg.runtime_definition_artifact (txn_code, profile_code, is_current);<br>CREATE INDEX IF NOT EXISTS ix_runtime_artifact_json_gin<br>ON aira_cfg.runtime_definition_artifact USING gin (runtime_definition jsonb_path_ops);<br>CREATE TABLE IF NOT EXISTS aira_cfg.publish_validation_result (<br>validation_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>version integer NOT NULL,<br>gate_code varchar(100) NOT NULL,<br>gate_name varchar(160) NOT NULL,<br>gate_status varchar(30) NOT NULL,<br>severity varchar(30) NOT NULL DEFAULT 'INFO',<br>validation_result jsonb NOT NULL DEFAULT '{}'::jsonb,<br>remediation_guidance text,<br>validated_by varchar(120) NOT NULL DEFAULT 'system',<br>validated_at timestamptz NOT NULL DEFAULT now()<br>);<br>CREATE INDEX IF NOT EXISTS ix_publish_validation_txn<br>ON aira_cfg.publish_validation_result (txn_code, profile_code, version);<br>CREATE INDEX IF NOT EXISTS ix_publish_validation_status<br>ON aira_cfg.publish_validation_result (gate_status, severity);<br>CREATE INDEX IF NOT EXISTS ix_publish_validation_result_gin<br>ON aira_cfg.publish_validation_result USING gin (validation_result jsonb_path_ops); |
| --- |

### 9.8 aira_cfg.config_activation_audit

| CREATE TABLE IF NOT EXISTS aira_cfg.config_activation_audit (<br>activation_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>version integer NOT NULL,<br>previous_status varchar(30),<br>new_status varchar(30) NOT NULL,<br>action varchar(60) NOT NULL,<br>reason text,<br>definition_hash varchar(128),<br>approval_evidence jsonb NOT NULL DEFAULT '{}'::jsonb,<br>avci_evidence jsonb NOT NULL DEFAULT '{}'::jsonb,<br>performed_by varchar(120) NOT NULL,<br>performed_at timestamptz NOT NULL DEFAULT now()<br>);<br>CREATE INDEX IF NOT EXISTS ix_config_activation_txn<br>ON aira_cfg.config_activation_audit (txn_code, profile_code, version);<br>CREATE INDEX IF NOT EXISTS ix_config_activation_action<br>ON aira_cfg.config_activation_audit (action, performed_at DESC);<br>CREATE INDEX IF NOT EXISTS ix_config_activation_evidence_gin<br>ON aira_cfg.config_activation_audit USING gin (avci_evidence jsonb_path_ops); |
| --- |

## 10. Login Runtime Tables

### 10.1 aira_auth.login_idempotency

| CREATE TABLE IF NOT EXISTS aira_auth.login_idempotency (<br>idempotency_key varchar(128) PRIMARY KEY,<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>txn_version integer NOT NULL,<br>request_hash varchar(128) NOT NULL,<br>actor_id_hash varchar(128),<br>subject_hash varchar(128),<br>tenant_code varchar(80),<br>state varchar(30) NOT NULL DEFAULT 'RESERVED',<br>first_seen_at timestamptz NOT NULL DEFAULT now(),<br>completed_at timestamptz,<br>expires_at timestamptz NOT NULL,<br>response_hash varchar(128),<br>trace_id varchar(128),<br>evidence jsonb NOT NULL DEFAULT '{}'::jsonb<br>);<br>CREATE INDEX IF NOT EXISTS ix_login_idempotency_actor<br>ON aira_auth.login_idempotency (actor_id_hash);<br>CREATE INDEX IF NOT EXISTS ix_login_idempotency_tenant<br>ON aira_auth.login_idempotency (tenant_code);<br>CREATE INDEX IF NOT EXISTS ix_login_idempotency_expiry<br>ON aira_auth.login_idempotency (expires_at);<br>CREATE INDEX IF NOT EXISTS ix_login_idempotency_trace<br>ON aira_auth.login_idempotency (trace_id);<br>CREATE INDEX IF NOT EXISTS ix_login_idempotency_evidence_gin<br>ON aira_auth.login_idempotency USING gin (evidence jsonb_path_ops); |
| --- |

### 10.2 aira_auth.session_context

| CREATE TABLE IF NOT EXISTS aira_auth.session_context (<br>session_context_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>keycloak_session_id_hash varchar(128),<br>actor_id_hash varchar(128) NOT NULL,<br>subject_hash varchar(128) NOT NULL,<br>tenant_code varchar(80) NOT NULL,<br>branch_code varchar(80),<br>unit_code varchar(80),<br>display_name_safe varchar(160),<br>username_hash varchar(128),<br>roles jsonb NOT NULL DEFAULT '[]'::jsonb,<br>skills jsonb NOT NULL DEFAULT '[]'::jsonb,<br>claims_safe jsonb NOT NULL DEFAULT '{}'::jsonb,<br>classification_ceiling varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>policy_decision_id uuid,<br>status varchar(30) NOT NULL DEFAULT 'ACTIVE',<br>created_at timestamptz NOT NULL DEFAULT now(),<br>expires_at timestamptz NOT NULL,<br>revoked_at timestamptz,<br>trace_id varchar(128),<br>evidence jsonb NOT NULL DEFAULT '{}'::jsonb<br>);<br>CREATE INDEX IF NOT EXISTS ix_session_context_actor<br>ON aira_auth.session_context (actor_id_hash);<br>CREATE INDEX IF NOT EXISTS ix_session_context_subject<br>ON aira_auth.session_context (subject_hash);<br>CREATE INDEX IF NOT EXISTS ix_session_context_tenant<br>ON aira_auth.session_context (tenant_code);<br>CREATE INDEX IF NOT EXISTS ix_session_context_status_expiry<br>ON aira_auth.session_context (status, expires_at);<br>CREATE INDEX IF NOT EXISTS ix_session_context_roles_gin<br>ON aira_auth.session_context USING gin (roles jsonb_path_ops);<br>CREATE INDEX IF NOT EXISTS ix_session_context_skills_gin<br>ON aira_auth.session_context USING gin (skills jsonb_path_ops);<br>CREATE INDEX IF NOT EXISTS ix_session_context_evidence_gin<br>ON aira_auth.session_context USING gin (evidence jsonb_path_ops); |
| --- |

## 11. Audit and Evidence Tables

### 11.1 aira_audit.runtime_execution

| CREATE TABLE IF NOT EXISTS aira_audit.runtime_execution (<br>execution_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>txn_version integer NOT NULL,<br>execution_status varchar(30) NOT NULL,<br>actor_id_hash varchar(128),<br>tenant_code varchar(80),<br>classification varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>trace_id varchar(128) NOT NULL,<br>request_id varchar(128),<br>correlation_id varchar(128),<br>causation_id varchar(128),<br>input_hash varchar(128),<br>output_hash varchar(128),<br>started_at timestamptz NOT NULL DEFAULT now(),<br>ended_at timestamptz,<br>duration_ms integer,<br>error_code varchar(100),<br>error_category varchar(80),<br>runtime_definition_hash varchar(128),<br>evidence jsonb NOT NULL DEFAULT '{}'::jsonb<br>);<br>CREATE INDEX IF NOT EXISTS ix_runtime_execution_txn<br>ON aira_audit.runtime_execution (txn_code, profile_code, txn_version);<br>CREATE INDEX IF NOT EXISTS ix_runtime_execution_status<br>ON aira_audit.runtime_execution (execution_status, started_at DESC);<br>CREATE INDEX IF NOT EXISTS ix_runtime_execution_trace<br>ON aira_audit.runtime_execution (trace_id);<br>CREATE INDEX IF NOT EXISTS ix_runtime_execution_actor<br>ON aira_audit.runtime_execution (actor_id_hash);<br>CREATE INDEX IF NOT EXISTS ix_runtime_execution_evidence_gin<br>ON aira_audit.runtime_execution USING gin (evidence jsonb_path_ops); |
| --- |

### 11.2 aira_audit.step_execution_audit

| CREATE TABLE IF NOT EXISTS aira_audit.step_execution_audit (<br>step_execution_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>execution_id uuid NOT NULL,<br>txn_code varchar(80) NOT NULL,<br>profile_code varchar(80) NOT NULL DEFAULT 'DEFAULT',<br>txn_version integer NOT NULL,<br>step_code varchar(80) NOT NULL,<br>step_order integer NOT NULL,<br>step_status varchar(30) NOT NULL,<br>attempt_no integer NOT NULL DEFAULT 1,<br>parameters_hash varchar(128),<br>input_hash varchar(128),<br>output_hash varchar(128),<br>started_at timestamptz NOT NULL DEFAULT now(),<br>ended_at timestamptz,<br>duration_ms integer,<br>retry_policy_code varchar(60),<br>error_policy_code varchar(60),<br>error_code varchar(100),<br>error_category varchar(80),<br>safe_response_code varchar(100),<br>dependency_status jsonb NOT NULL DEFAULT '{}'::jsonb,<br>evidence jsonb NOT NULL DEFAULT '{}'::jsonb,<br>CONSTRAINT fk_step_execution_runtime<br>FOREIGN KEY (execution_id)<br>REFERENCES aira_audit.runtime_execution (execution_id)<br>);<br>CREATE INDEX IF NOT EXISTS ix_step_execution_execution<br>ON aira_audit.step_execution_audit (execution_id);<br>CREATE INDEX IF NOT EXISTS ix_step_execution_step<br>ON aira_audit.step_execution_audit (step_code);<br>CREATE INDEX IF NOT EXISTS ix_step_execution_status<br>ON aira_audit.step_execution_audit (step_status, started_at DESC);<br>CREATE INDEX IF NOT EXISTS ix_step_execution_error<br>ON aira_audit.step_execution_audit (error_code, error_category);<br>CREATE INDEX IF NOT EXISTS ix_step_execution_dependency_gin<br>ON aira_audit.step_execution_audit USING gin (dependency_status jsonb_path_ops);<br>CREATE INDEX IF NOT EXISTS ix_step_execution_evidence_gin<br>ON aira_audit.step_execution_audit USING gin (evidence jsonb_path_ops); |
| --- |

### 11.3 aira_audit.access_decision_audit

| CREATE TABLE IF NOT EXISTS aira_audit.access_decision_audit (<br>decision_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>execution_id uuid,<br>session_context_id uuid,<br>policy_code varchar(100) NOT NULL,<br>policy_version varchar(80) NOT NULL,<br>actor_id_hash varchar(128),<br>tenant_code varchar(80),<br>decision varchar(30) NOT NULL,<br>deny_reason varchar(160),<br>classification_ceiling varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>input_hash varchar(128) NOT NULL,<br>policy_input_safe jsonb NOT NULL DEFAULT '{}'::jsonb,<br>policy_output jsonb NOT NULL DEFAULT '{}'::jsonb,<br>decided_at timestamptz NOT NULL DEFAULT now(),<br>trace_id varchar(128),<br>evidence jsonb NOT NULL DEFAULT '{}'::jsonb<br>);<br>CREATE INDEX IF NOT EXISTS ix_access_decision_execution<br>ON aira_audit.access_decision_audit (execution_id);<br>CREATE INDEX IF NOT EXISTS ix_access_decision_policy<br>ON aira_audit.access_decision_audit (policy_code, policy_version);<br>CREATE INDEX IF NOT EXISTS ix_access_decision_actor<br>ON aira_audit.access_decision_audit (actor_id_hash);<br>CREATE INDEX IF NOT EXISTS ix_access_decision_decision<br>ON aira_audit.access_decision_audit (decision, decided_at DESC);<br>CREATE INDEX IF NOT EXISTS ix_access_decision_trace<br>ON aira_audit.access_decision_audit (trace_id);<br>CREATE INDEX IF NOT EXISTS ix_access_decision_input_gin<br>ON aira_audit.access_decision_audit USING gin (policy_input_safe jsonb_path_ops);<br>CREATE INDEX IF NOT EXISTS ix_access_decision_output_gin<br>ON aira_audit.access_decision_audit USING gin (policy_output jsonb_path_ops); |
| --- |

### 11.4 aira_audit.security_control_audit

| CREATE TABLE IF NOT EXISTS aira_audit.security_control_audit (<br>control_audit_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>execution_id uuid,<br>step_code varchar(80),<br>control_code varchar(100) NOT NULL,<br>control_name varchar(160) NOT NULL,<br>control_status varchar(30) NOT NULL,<br>dependency_name varchar(120),<br>dependency_status varchar(30),<br>actor_id_hash varchar(128),<br>tenant_code varchar(80),<br>trace_id varchar(128),<br>evidence jsonb NOT NULL DEFAULT '{}'::jsonb,<br>checked_at timestamptz NOT NULL DEFAULT now()<br>);<br>CREATE INDEX IF NOT EXISTS ix_security_control_execution<br>ON aira_audit.security_control_audit (execution_id);<br>CREATE INDEX IF NOT EXISTS ix_security_control_code_status<br>ON aira_audit.security_control_audit (control_code, control_status);<br>CREATE INDEX IF NOT EXISTS ix_security_control_dependency<br>ON aira_audit.security_control_audit (dependency_name, dependency_status);<br>CREATE INDEX IF NOT EXISTS ix_security_control_trace<br>ON aira_audit.security_control_audit (trace_id);<br>CREATE INDEX IF NOT EXISTS ix_security_control_evidence_gin<br>ON aira_audit.security_control_audit USING gin (evidence jsonb_path_ops); |
| --- |

## 12. Policy Registry and Outbox Tables

### 12.1 aira_policy.policy_registry

| CREATE TABLE IF NOT EXISTS aira_policy.policy_registry (<br>policy_code varchar(100) NOT NULL,<br>policy_version varchar(80) NOT NULL,<br>policy_type varchar(40) NOT NULL,<br>policy_path varchar(300) NOT NULL,<br>owner varchar(120) NOT NULL,<br>classification varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>status varchar(30) NOT NULL DEFAULT 'DRAFT',<br>policy_hash varchar(128),<br>policy_metadata jsonb NOT NULL DEFAULT '{}'::jsonb,<br>test_evidence jsonb NOT NULL DEFAULT '{}'::jsonb,<br>created_by varchar(120) NOT NULL,<br>created_at timestamptz NOT NULL DEFAULT now(),<br>PRIMARY KEY (policy_code, policy_version)<br>);<br>CREATE UNIQUE INDEX IF NOT EXISTS ux_policy_registry_one_active<br>ON aira_policy.policy_registry (policy_code)<br>WHERE status = 'ACTIVE';<br>CREATE INDEX IF NOT EXISTS ix_policy_registry_type<br>ON aira_policy.policy_registry (policy_type);<br>CREATE INDEX IF NOT EXISTS ix_policy_registry_metadata_gin<br>ON aira_policy.policy_registry USING gin (policy_metadata jsonb_path_ops); |
| --- |

### 12.2 aira_outbox security event outbox

| CREATE TABLE IF NOT EXISTS aira_outbox.security_event_outbox (<br>event_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>event_type varchar(120) NOT NULL,<br>event_version varchar(30) NOT NULL DEFAULT '1.0',<br>aggregate_type varchar(80) NOT NULL,<br>aggregate_id varchar(128) NOT NULL,<br>source_service varchar(120) NOT NULL DEFAULT 'aira-auth-service',<br>subject_hash varchar(128),<br>actor_id_hash varchar(128),<br>tenant_code varchar(80),<br>classification varchar(30) NOT NULL DEFAULT 'INTERNAL',<br>trace_id varchar(128),<br>correlation_id varchar(128),<br>idempotency_key varchar(128),<br>cloud_event jsonb NOT NULL DEFAULT '{}'::jsonb,<br>payload_safe jsonb NOT NULL DEFAULT '{}'::jsonb,<br>status varchar(30) NOT NULL DEFAULT 'PENDING',<br>publish_attempts integer NOT NULL DEFAULT 0,<br>next_attempt_at timestamptz,<br>published_at timestamptz,<br>created_at timestamptz NOT NULL DEFAULT now()<br>);<br>CREATE UNIQUE INDEX IF NOT EXISTS ux_security_event_idempotency<br>ON aira_outbox.security_event_outbox (idempotency_key)<br>WHERE idempotency_key IS NOT NULL;<br>CREATE INDEX IF NOT EXISTS ix_security_event_status<br>ON aira_outbox.security_event_outbox (status, next_attempt_at);<br>CREATE INDEX IF NOT EXISTS ix_security_event_type<br>ON aira_outbox.security_event_outbox (event_type, created_at DESC);<br>CREATE INDEX IF NOT EXISTS ix_security_event_trace<br>ON aira_outbox.security_event_outbox (trace_id);<br>CREATE INDEX IF NOT EXISTS ix_security_event_payload_gin<br>ON aira_outbox.security_event_outbox USING gin (payload_safe jsonb_path_ops);<br>CREATE INDEX IF NOT EXISTS ix_security_event_cloudevent_gin<br>ON aira_outbox.security_event_outbox USING gin (cloud_event jsonb_path_ops);<br>CREATE TABLE IF NOT EXISTS aira_outbox.outbox_publish_attempt (<br>publish_attempt_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),<br>event_id uuid NOT NULL,<br>attempt_no integer NOT NULL,<br>publish_status varchar(30) NOT NULL,<br>target_topic varchar(160),<br>broker_ref varchar(160),<br>error_code varchar(100),<br>error_message_safe text,<br>attempted_at timestamptz NOT NULL DEFAULT now(),<br>evidence jsonb NOT NULL DEFAULT '{}'::jsonb,<br>CONSTRAINT fk_outbox_attempt_event<br>FOREIGN KEY (event_id)<br>REFERENCES aira_outbox.security_event_outbox (event_id)<br>);<br>CREATE INDEX IF NOT EXISTS ix_outbox_attempt_event<br>ON aira_outbox.outbox_publish_attempt (event_id);<br>CREATE INDEX IF NOT EXISTS ix_outbox_attempt_status<br>ON aira_outbox.outbox_publish_attempt (publish_status, attempted_at DESC); |
| --- |

## 13. JSONB Usage Standard

| **Use JSONB For** | **Example** |
| --- | --- |
| Runtime parameters | OIDC client behavior, timeout profile, safe response rules. |
| Input/output mappings | Mapping JWT claims to session context. |
| Policy input/output | OPA decision input/output. |
| Evidence | AVCI evidence, validation result, trace metadata. |
| Dependency status | Keycloak available, Vault available, OPA decision latency. |
| Safe event payload | Login success/failure event metadata. |
| Validation schema | Per-step parameter validation rules. |
| Claims safe copy | Redacted, non-token identity claims. |

| **Do Not Use JSONB For** | **Reason** |
| --- | --- |
| Primary identifiers | Must remain strongly indexed and join-friendly. |
| Status fields | Must be queryable using B-tree indexes. |
| Tenant, actor hash, trace ID | Must be searchable and join-friendly. |
| Secrets | Must be stored only in Vault. |
| Raw JWT / refresh token | Must never be stored. |
| Passwords | Must never be stored or handled by AIRA application code. |
| Free-form SQL | Violates AIRA control model and creates injection risk. |

## 14. Minimum Seed Data for Login PoC 1

### **14.1 Seed transaction definition**

| INSERT INTO aira_cfg.txn_definition (<br>txn_code, profile_code, version, txn_name, description, execution_mode,<br>status, classification, bounded_context, owner, runtime_properties,<br>activation_controls, rollback_strategy, created_by<br>)<br>VALUES (<br>'AUTH_LOGIN_CONTEXT_ESTABLISH', 'DEFAULT', 1,<br>'AIRA Login Session Context Establishment',<br>'Establishes governed AIRA session context after Keycloak / AD authentication.',<br>'SYNC', 'DRAFT', 'CONFIDENTIAL', 'identity-and-access', 'security-architecture',<br>'{"requires_keycloak":true,"requires_opa":true,"requires_vault":true,"requires_audit":true,"requires_outbox":true,"fail_closed":true}',<br>'{"activation_path":"DRAFT_REVIEWED_APPROVED_ACTIVE","direct_activation_allowed":false,"requires_publish_validation":true,"requires_security_review":true}',<br>'{"strategy":"deactivate_new_version_or_promote_previous_active","cache_invalidation_required":true}',<br>'system'<br>); |
| --- |

### **14.2 Seed Login MicroFunction step bindings**

| INSERT INTO aira_cfg.txn_step_binding (<br>txn_code, profile_code, version, step_order, step_code,<br>is_mandatory, is_enabled, timeout_ms, classification_ceiling, created_by<br>)<br>VALUES<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 1,'STP-RCV-AUTH-REQUEST',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 2,'STP-COR-TRACE',true,true,1000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 3,'STP-RATE-LOGIN',true,true,2000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 4,'STP-SEC-CSRF-CORS',true,true,2000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 5,'STP-AUTH-REDIRECT',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 6,'STP-IDP-AUTHN',true,true,5000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 7,'STP-IDP-CLAIMS',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 8,'STP-JWT-ISSUE',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 9,'STP-JWT-VALIDATE',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,10,'STP-SES-RESOLVE',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,11,'STP-SEC-OPA-AUTHZ',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,12,'STP-CLS-CONTEXT',true,true,2000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,13,'STP-IDP-LOGIN-IDEMP',true,true,2000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,14,'STP-VAULT-SECRETS',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,15,'STP-ENC-SESSION',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,16,'STP-AUD-LOGIN',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,17,'STP-EVT-LOGIN',true,true,3000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,18,'STP-OBS-LOGIN',true,true,2000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,19,'STP-RSP-SAFE-LOGIN',true,true,2000,'CONFIDENTIAL','system'),<br>('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,20,'STP-ERR-AUTH',true,true,2000,'CONFIDENTIAL','system'); |
| --- |

## 15. Recommended Flyway Migration Sequence

**Flyway baseline**

| backend/src/main/resources/db/migration/<br>V1__create_aira_schemas_and_extensions.sql<br>V2__create_microfunction_catalog_tables.sql<br>V3__create_runtime_configuration_tables.sql<br>V4__create_policy_and_adapter_binding_tables.sql<br>V5__create_auth_login_runtime_tables.sql<br>V6__create_audit_and_evidence_tables.sql<br>V7__create_outbox_tables.sql<br>V8__seed_login_microfunction_catalog.sql<br>V9__seed_auth_login_context_establish_transaction.sql<br>V10__seed_login_retry_error_policy.sql<br>V11__seed_login_opa_policy_registry.sql |
| --- |

## 16. DBA and Developer Implementation Notes

| **Control** | **Requirement** |
| --- | --- |
| Flyway | All schema and seed data changes must be created through Flyway migrations. |
| Append-only audit | Application role should not update/delete audit rows; corrections require compensating records. |
| Least privilege | Runtime app role receives minimum permissions per schema and table. |
| JSONB indexing | Use GIN only on JSONB fields that are actually queried. |
| Hashing | Store actor_id_hash, subject_hash, request_hash, input_hash, and output_hash; do not store raw sensitive values. |
| Secrets | Store only Vault paths or references, never secret values. |
| Tokens | Do not persist raw JWT, refresh token, ID token, password, or authorization code. |
| Outbox | Publish events asynchronously from outbox after database commit. |
| Cache | Redis/Valkey may cache runtime definition, but PostgreSQL remains authoritative. |
| Activation | Only one ACTIVE transaction version per txn_code + profile_code. |
| Fail-closed | Missing OPA, Vault, Keycloak, audit, or active runtime config must deny protected access. |

## 17. Minimum Implementation Order

| **Order** | **Object** |
| --- | --- |
| 1 | aira_mf.step_catalog |
| 2 | aira_cfg.txn_definition |
| 3 | aira_cfg.txn_step_binding |
| 4 | aira_cfg.step_parameter |
| 5 | aira_cfg.retry_policy |
| 6 | aira_cfg.error_policy |
| 7 | aira_cfg.adapter_binding |
| 8 | aira_policy.policy_registry |
| 9 | aira_auth.login_idempotency |
| 10 | aira_auth.session_context |
| 11 | aira_audit.runtime_execution |
| 12 | aira_audit.step_execution_audit |
| 13 | aira_audit.access_decision_audit |
| 14 | aira_audit.security_control_audit |
| 15 | aira_outbox.security_event_outbox |
| 16 | aira_outbox.outbox_publish_attempt |

## 18. Review and Acceptance Checklist

| **Area** | **Acceptance Criteria** |
| --- | --- |
| Runtime Configuration | Transaction definition, step sequence, parameters, retry/error policies, adapter bindings, and activation controls are stored in governed tables. |
| MicroFunction Assembly | AUTH_LOGIN_CONTEXT_ESTABLISH can be assembled from PostgreSQL without hardcoded step order in controller code. |
| Security Boundary | Keycloak performs authentication; AIRA does not store or validate passwords. |
| OPA/SBAC | Authorization decision is externalized and recorded in access_decision_audit. |
| Vault | Only secret references are stored; no secret values are stored in the database. |
| Idempotency | Replay and duplicate login callback behavior are controlled by login_idempotency. |
| Audit Evidence | Runtime and step execution evidence are recorded with trace/correlation IDs. |
| Outbox | Login/security events are written transactionally and publish attempts are tracked. |
| Safe Session Context | session_context contains only safe claims and hashed identifiers. |
| Indexes | B-tree and GIN indexes support expected lookups without over-indexing. |
| Reversibility | Active transaction versions can be rolled back by version and definition hash. |
| AVCI | Attribution, verification, classification, and improvement evidence are recorded. |

## 19. AVCI Evidence Mapping

| **AVCI Attribute** | **Database Evidence** |
| --- | --- |
| Attributable | created_by, updated_by, performed_by, owner, actor_id_hash, service source, policy owner, approval evidence. |
| Verifiable | definition_hash, signature, input_hash, output_hash, policy_hash, runtime_definition_hash, validation result. |
| Classifiable | classification, classification_ceiling, tenant_code, bounded_context, masking_policy, policy decision. |
| Improvable | versioning, activation audit, publish validation, retry/error policies, evidence JSONB, test evidence. |

## 20. Non-Negotiable Restrictions

| **Not Allowed** | **Reason** |
| --- | --- |
| Raw JWT, refresh token, ID token, authorization code, or password stored in database. | Violates secure-by-design and data minimization. |
| Secret values stored in parameter_value or adapter_config. | Secrets must be retrieved from Vault using references only. |
| Free-form SQL stored as dynamic configuration. | Creates injection and governance bypass risk. |
| Arbitrary class names loaded from database. | Allows unsafe dynamic execution. |
| Step order changed directly in production without publish validation and approval. | Can bypass security, audit, or classification controls. |
| Controllers determining authorization or constructing runtime step sequence. | Violates Clean Architecture and MicroFunction runtime assembly. |
| Audit or OPA controls disabled by configuration. | Violates AVCI and fail-safe principles. |

## 21. Conclusion

This schema baseline enables AIRA PoC 1 to implement a dynamic, governed, evidence-producing Login function using the MicroFunction framework. The design allows the runtime behavior to be assembled from approved PostgreSQL configuration while preserving strict security boundaries, auditability, reproducibility, classification awareness, and rollbackability.

For PoC 1, the development team and DBA should treat this document as the minimum implementation baseline. Future iterations may add partitioning, archival policy, richer policy versioning, formal approval workflow integration, and production-hardening controls after the working Login PoC is validated.
