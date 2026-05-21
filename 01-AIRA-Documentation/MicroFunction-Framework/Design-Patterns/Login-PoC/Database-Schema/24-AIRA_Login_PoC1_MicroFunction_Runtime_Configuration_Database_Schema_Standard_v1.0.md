---
title: "AIRA Login PoC 1 MicroFunction Runtime Configuration Database Schema Standard"
document_id: "24-AIRA-LOGIN-POC1-DBSCHEMA-STD"
version: "1.0"
status: "Draft for Review"
classification: "Internal / Confidential Architecture"
owner: "AIRA Security Architecture / Platform Engineering"
date: "2026-05-20"
artifact_type: "database-schema-standard"
bounded_context: "Identity and Access"
related_transaction: "AUTH_LOGIN_CONTEXT_ESTABLISH"
source_system: "Desktop DOCX Import"
source_path: "C:\Users\krisha.yambao\Desktop\AIRA_AI Native v2.0\24-AIRA_Login_PoC1_MicroFunction_Runtime_Configuration_Database_Schema_Standard_v1.0.docx"
source_hash: "588B356B7A9F9171725E388D036662415F04657CC9D8525B23D95E2D506706EA"
authority_tier: "Tier 1"
related_standard:
  - 10-AIRA_MicroFunction_Framework_v3.0
  - 16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.0
  - 17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.0
  - 22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0
related_module:
  - identity-access
  - login-poc
  - microfunction-runtime-configuration
  - database-schema
retrieval_eligible: false
approval_status: "not-approved"
tags:
  - AIRA
  - MicroFunction
  - Login
  - PoC1
  - Database Schema
  - Runtime Configuration
  - Flyway
  - PostgreSQL
  - OPA
  - SBAC
  - AVCI
---

AIRA v3.0
Login PoC 1 MicroFunction Runtime ConfigurationDatabase Schema Standard
Version 1.0
Formal database design baseline for AIRA MicroFunction dynamic runtime assembly, Login session context establishment, OPA/SBAC policy decisioning, audit evidence, idempotency, observability linkage, and transactional security event outbox.
Field
Value
Document ID
24-AIRA-LOGIN-POC1-DBSCHEMA-STD
Document Title
AIRA Login PoC 1 MicroFunction Runtime Configuration Database Schema Standard
Version
1.0
Status
Draft for Review
Classification
Internal / Confidential Architecture
Primary Audience
Software Developers, DBA, DevSecOps, Security Architecture, QA/SDET
Owner
AIRA Security Architecture / Platform Engineering
Applies To
PoC 1 - Login Function using MicroFunction Design Pattern and Framework
Canonical Storage Target
Obsidian / AIRA Information Nervous System
Discipline first, automation second, intelligence third — and AVCI always.
## 1. Document Control
Attribute
Value
Document Name
AIRA Login PoC 1 MicroFunction Runtime Configuration Database Schema Standard
Document Number
24
Version
1.0
Status
Draft for Review
Prepared For
AIRA Development Team and DBA
Prepared By
AIRA Architecture Governance
Date
20 May 2026
Review Cycle
PoC 1 baseline, then update after developer implementation review
Change Control
All changes must be handled through ADR/TDR and Git-based revision control.
### 1.1 Revision History
Version
Date
Author / Role
Summary of Change
1.0
20 May 2026
AIRA Architecture Governance
Initial formal database schema standard for Login PoC 1 MicroFunction runtime configuration.
### 1.2 Companion AIRA Documents
Document
Relevance
01-AIRA_AVCI_Engineering_Standard_v3.0
Defines Attributable, Verifiable, Classifiable, and Improvable controls for all artifacts.
02-AIRA_Engineering_Blueprint_v5.0
Defines platform-level architecture boundaries and runtime governance expectations.
03-AIRA_Developer_Guide_v4.0
Defines developer implementation discipline and repository practices.
08-AIRA_Unit_Testing_Standard_v3.0
Defines testability, deterministic testing, and evidence expectations.
10-AIRA_MicroFunction_Framework_v3.0
Defines the MicroFunction framework and dynamic runtime assembly model.
10A-AIRA_MicroFunction_Design_and_Development_Guide_v2.0
Defines MicroFunction design, step separation, and reusable behavior.
10B-AIRA_MicroFunction_Framework_Implementation_Standard_v2.0
Defines implementation controls for coordinator, step registry, execution envelope, and runtime configuration.
15-AIRA_API_and_Integration_Contract_Standard_v2.0
Defines contract-driven integration expectations and API governance.
16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.0
Defines database migration, versioning, and data engineering rules.
17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.0
Defines identity, secrets, access control, SBAC, and security requirements.
22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.0
Defines the Login PoC runtime transaction and ordered MicroFunction steps.
## 2. Purpose
This document defines the formal PostgreSQL schema baseline for AIRA Proof of Concept 1 (PoC 1), which implements the Login function using the AIRA MicroFunction design pattern and framework. It is intended to guide software developers and the DBA in creating the required tables, schemas, indexes, JSONB structures, Flyway migrations, seed data, and runtime governance controls.
The primary goal is to ensure that Login behavior is not hardcoded inside controllers or business logic. Instead, the Login session establishment process must be dynamically assembled from approved, versioned, classified, and evidence-producing configuration stored in the database.
## 3. Scope
In Scope
Out of Scope
Database schemas for runtime configuration, MicroFunction catalog, authentication/session context, policy registry, audit, evidence, and transactional outbox.
Full production IAM design beyond PoC 1.
DDL baseline, indexes, JSONB usage, seed data, and Flyway sequencing.
Production-grade partitioning, HA tuning, full archival strategy, and data retention automation.
Login runtime transaction: AUTH_LOGIN_CONTEXT_ESTABLISH.
All future business transactions and non-login MicroFunctions.
Keycloak/OPA/Vault/Kafka adapter binding metadata.
Actual production secrets, certificates, or endpoint values.
Audit, idempotency, safe session context, and security event outbox structures.
Storage of raw JWT, refresh tokens, passwords, or sensitive PII.
## 4. Governing Design Principles
Principle
Database Design Implication
AVCI
Every runtime configuration, execution, policy decision, activation, and event must be attributable, verifiable, classifiable, and improvable.
Configuration-Driven Runtime
Transaction definitions, step order, parameters, policies, bindings, and activation status are stored as governed configuration.
PostgreSQL as Authoritative Source
PostgreSQL stores the authoritative runtime configuration. Redis/Valkey and Caffeine are derivative caches only.
Fail-Safe, Not Fail-Open
Missing active configuration, OPA, Vault, Keycloak, audit, or required dependency must result in safe denial.
Least Privilege / SBAC
Database access must be separated by role and schema; authorization must use policy and skill-based decisioning.
Clean Architecture
Tables support ports/adapters and runtime coordination. Controllers must not own business logic or runtime sequence.
Secure by Design
No passwords, raw tokens, refresh tokens, real secrets, or sensitive PII are stored in application tables.
Observability by Design
Trace, correlation, causation, request, and evidence fields are first-class database attributes.
Reversibility
Runtime versions can be activated, deactivated, rolled back, and compared by hash/signature.
## 5. Runtime Authority Model
Layer
Role
Git / Flyway
Defines schema, repeatable migrations, seed data, and reviewable changes.
PostgreSQL
Authoritative source for runtime configuration, transaction versions, step bindings, parameters, audit evidence, policy registry, and outbox.
Runtime Definition Artifact
Compiled and signed representation of an executable MicroFunction transaction definition.
Redis / Valkey
Shared cache for active runtime definition and idempotency acceleration only.
Caffeine
JVM-local cache to reduce configuration lookup latency.
MicroFunction Coordinator
Executes the resolved runtime definition through registered steps and execution envelope.
OPA
External policy decision point for RBAC/ABAC/SBAC decisions.
Vault
Authoritative source for secrets. Database stores only references.
Audit / Outbox
Records evidence and publishes login/security events after commit.
## 6. Recommended PostgreSQL Schemas
Schema creation
CREATE SCHEMA IF NOT EXISTS aira_cfg;
CREATE SCHEMA IF NOT EXISTS aira_mf;
CREATE SCHEMA IF NOT EXISTS aira_auth;
CREATE SCHEMA IF NOT EXISTS aira_audit;
CREATE SCHEMA IF NOT EXISTS aira_policy;
CREATE SCHEMA IF NOT EXISTS aira_outbox;
Schema
Purpose
aira_cfg
Runtime configuration, transaction definitions, parameters, policies, bindings, activation.
aira_mf
MicroFunction catalog and reusable step metadata.
aira_auth
Login/session runtime state, idempotency, and replay guard.
aira_audit
Immutable execution, step, access decision, security control, and evidence records.
aira_policy
OPA/SBAC policy registry and policy artifact metadata.
aira_outbox
Transactional outbox and publish attempt tracking for login/security events.
## 7. Table Inventory
No.
Schema.Table
Purpose
1
aira_mf.step_catalog
Master catalog of reusable MicroFunction steps.
2
aira_cfg.txn_definition
Defines transaction code, profile, version, status, owner, classification.
3
aira_cfg.txn_step_binding
Defines ordered MicroFunction steps for a transaction.
4
aira_cfg.step_parameter
Stores dynamic typed parameters per transaction or step.
5
aira_cfg.retry_policy
Defines retry/backoff behavior.
6
aira_cfg.error_policy
Defines fail-closed, safe response, DLQ, escalation behavior.
7
aira_cfg.adapter_binding
Defines approved external adapters such as Keycloak, Vault, OPA, Kafka.
8
aira_cfg.table_binding
Defines approved database access paths and masking policies.
9
aira_cfg.runtime_definition_artifact
Stores compiled/signed runtime definition artifact.
10
aira_cfg.publish_validation_result
Stores publish-time validation and fitness gate result.
11
aira_cfg.config_activation_audit
Records activation, rollback, deactivation, and approval evidence.
12
aira_auth.login_idempotency
Prevents replay or duplicate login callback processing.
13
aira_auth.session_context
Stores safe resolved session context, not raw tokens.
14
aira_audit.runtime_execution
One row per runtime transaction execution.
15
aira_audit.step_execution_audit
One row per executed MicroFunction step.
16
aira_audit.access_decision_audit
Records OPA/SBAC access decisions.
17
aira_audit.security_control_audit
Records security control results and dependency failures.
18
aira_policy.policy_registry
Registers OPA/Rego/SBAC policy artifacts.
19
aira_outbox.security_event_outbox
Transactional outbox for login/security events.
20
aira_outbox.outbox_publish_attempt
Tracks publish attempts, failures, and retries.
## 8. PostgreSQL Extensions
Required extensions
CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS btree_gin;
## 9. Authoritative Configuration and Runtime Assembly Tables
### 9.1 aira_mf.step_catalog
CREATE TABLE IF NOT EXISTS aira_mf.step_catalog (
step_code                  varchar(80) PRIMARY KEY,
step_name                  varchar(160) NOT NULL,
step_category              varchar(40) NOT NULL,
capability_type            varchar(40) NOT NULL DEFAULT 'STANDARD',
bean_name                  varchar(160) NOT NULL,
bounded_context            varchar(80),
owner                      varchar(120) NOT NULL,
classification_ceiling     varchar(30) NOT NULL DEFAULT 'INTERNAL',
default_retry_policy_code  varchar(60),
default_error_policy_code  varchar(60),
input_schema               jsonb NOT NULL DEFAULT '{}'::jsonb,
output_schema              jsonb NOT NULL DEFAULT '{}'::jsonb,
default_parameters         jsonb NOT NULL DEFAULT '{}'::jsonb,
evidence_requirements      jsonb NOT NULL DEFAULT '{}'::jsonb,
design_principle_profile   jsonb NOT NULL DEFAULT '{}'::jsonb,
version                    integer NOT NULL DEFAULT 1,
status                     varchar(30) NOT NULL DEFAULT 'ACTIVE',
is_standard                boolean NOT NULL DEFAULT true,
created_by                 varchar(120) NOT NULL DEFAULT 'system',
created_at                 timestamptz NOT NULL DEFAULT now(),
updated_by                 varchar(120),
updated_at                 timestamptz
);
CREATE INDEX IF NOT EXISTS ix_step_catalog_category
ON aira_mf.step_catalog (step_category);
CREATE INDEX IF NOT EXISTS ix_step_catalog_status
ON aira_mf.step_catalog (status);
CREATE INDEX IF NOT EXISTS ix_step_catalog_context
ON aira_mf.step_catalog (bounded_context);
CREATE INDEX IF NOT EXISTS ix_step_catalog_default_parameters_gin
ON aira_mf.step_catalog USING gin (default_parameters jsonb_path_ops);
### 9.2 aira_cfg.txn_definition
CREATE TABLE IF NOT EXISTS aira_cfg.txn_definition (
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
version                    integer NOT NULL,
txn_name                   varchar(160) NOT NULL,
description                text,
execution_mode             varchar(40) NOT NULL DEFAULT 'SYNC',
status                     varchar(30) NOT NULL DEFAULT 'DRAFT',
classification             varchar(30) NOT NULL DEFAULT 'INTERNAL',
bounded_context            varchar(80) NOT NULL,
owner                      varchar(120) NOT NULL,
runtime_properties         jsonb NOT NULL DEFAULT '{}'::jsonb,
activation_controls        jsonb NOT NULL DEFAULT '{}'::jsonb,
rollback_strategy          jsonb NOT NULL DEFAULT '{}'::jsonb,
design_principle_profile   jsonb NOT NULL DEFAULT '{}'::jsonb,
definition_hash            varchar(128),
signature                  text,
active_from                timestamptz,
active_to                  timestamptz,
created_by                 varchar(120) NOT NULL,
created_at                 timestamptz NOT NULL DEFAULT now(),
updated_by                 varchar(120),
updated_at                 timestamptz,
PRIMARY KEY (txn_code, profile_code, version)
);
CREATE UNIQUE INDEX IF NOT EXISTS ux_txn_definition_one_active
ON aira_cfg.txn_definition (txn_code, profile_code)
WHERE status = 'ACTIVE';
CREATE INDEX IF NOT EXISTS ix_txn_definition_status
ON aira_cfg.txn_definition (status);
CREATE INDEX IF NOT EXISTS ix_txn_definition_context
ON aira_cfg.txn_definition (bounded_context);
CREATE INDEX IF NOT EXISTS ix_txn_definition_runtime_properties_gin
ON aira_cfg.txn_definition USING gin (runtime_properties jsonb_path_ops);
### 9.3 aira_cfg.txn_step_binding
CREATE TABLE IF NOT EXISTS aira_cfg.txn_step_binding (
binding_id                 uuid PRIMARY KEY DEFAULT gen_random_uuid(),
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
version                    integer NOT NULL,
step_order                 integer NOT NULL,
step_code                  varchar(80) NOT NULL,
is_mandatory               boolean NOT NULL DEFAULT true,
is_enabled                 boolean NOT NULL DEFAULT true,
branch_condition           jsonb NOT NULL DEFAULT '{}'::jsonb,
input_mapping              jsonb NOT NULL DEFAULT '{}'::jsonb,
output_mapping             jsonb NOT NULL DEFAULT '{}'::jsonb,
step_runtime_config        jsonb NOT NULL DEFAULT '{}'::jsonb,
timeout_ms                 integer NOT NULL DEFAULT 3000,
retry_policy_code          varchar(60),
error_policy_code          varchar(60),
compensation_step_code     varchar(80),
classification_ceiling     varchar(30) NOT NULL DEFAULT 'INTERNAL',
created_by                 varchar(120) NOT NULL,
created_at                 timestamptz NOT NULL DEFAULT now(),
CONSTRAINT fk_txn_step_binding_txn
FOREIGN KEY (txn_code, profile_code, version)
REFERENCES aira_cfg.txn_definition (txn_code, profile_code, version),
CONSTRAINT fk_txn_step_binding_step
FOREIGN KEY (step_code)
REFERENCES aira_mf.step_catalog (step_code)
);
CREATE UNIQUE INDEX IF NOT EXISTS ux_txn_step_order
ON aira_cfg.txn_step_binding (txn_code, profile_code, version, step_order);
CREATE INDEX IF NOT EXISTS ix_txn_step_code
ON aira_cfg.txn_step_binding (step_code);
CREATE INDEX IF NOT EXISTS ix_txn_step_enabled
ON aira_cfg.txn_step_binding (txn_code, profile_code, version, is_enabled);
CREATE INDEX IF NOT EXISTS ix_txn_step_runtime_config_gin
ON aira_cfg.txn_step_binding USING gin (step_runtime_config jsonb_path_ops);
### 9.4 aira_cfg.step_parameter
CREATE TABLE IF NOT EXISTS aira_cfg.step_parameter (
parameter_id               uuid PRIMARY KEY DEFAULT gen_random_uuid(),
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
version                    integer NOT NULL,
step_code                  varchar(80),
parameter_key              varchar(120) NOT NULL,
parameter_type             varchar(40) NOT NULL,
parameter_value            jsonb NOT NULL DEFAULT '{}'::jsonb,
validation_schema          jsonb NOT NULL DEFAULT '{}'::jsonb,
is_secret_reference        boolean NOT NULL DEFAULT false,
secret_ref                 varchar(300),
is_required                boolean NOT NULL DEFAULT false,
classification             varchar(30) NOT NULL DEFAULT 'INTERNAL',
created_by                 varchar(120) NOT NULL,
created_at                 timestamptz NOT NULL DEFAULT now(),
CONSTRAINT fk_step_parameter_txn
FOREIGN KEY (txn_code, profile_code, version)
REFERENCES aira_cfg.txn_definition (txn_code, profile_code, version),
CONSTRAINT fk_step_parameter_step
FOREIGN KEY (step_code)
REFERENCES aira_mf.step_catalog (step_code)
);
CREATE UNIQUE INDEX IF NOT EXISTS ux_step_parameter_key
ON aira_cfg.step_parameter (
txn_code, profile_code, version, COALESCE(step_code, 'TXN'), parameter_key
);
CREATE INDEX IF NOT EXISTS ix_step_parameter_step
ON aira_cfg.step_parameter (step_code);
CREATE INDEX IF NOT EXISTS ix_step_parameter_value_gin
ON aira_cfg.step_parameter USING gin (parameter_value jsonb_path_ops);
CREATE INDEX IF NOT EXISTS ix_step_parameter_secret_ref
ON aira_cfg.step_parameter (is_secret_reference, secret_ref);
### 9.5 aira_cfg.retry_policy and aira_cfg.error_policy
CREATE TABLE IF NOT EXISTS aira_cfg.retry_policy (
retry_policy_code          varchar(60) PRIMARY KEY,
description                text,
max_attempts               integer NOT NULL DEFAULT 1,
initial_delay_ms           integer NOT NULL DEFAULT 0,
max_delay_ms               integer NOT NULL DEFAULT 0,
backoff_type               varchar(30) NOT NULL DEFAULT 'NONE',
jitter_enabled             boolean NOT NULL DEFAULT false,
retryable_error_codes      text[] NOT NULL DEFAULT '{}',
policy_config              jsonb NOT NULL DEFAULT '{}'::jsonb,
created_by                 varchar(120) NOT NULL,
created_at                 timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS ix_retry_policy_config_gin
ON aira_cfg.retry_policy USING gin (policy_config jsonb_path_ops);
CREATE TABLE IF NOT EXISTS aira_cfg.error_policy (
error_policy_code          varchar(60) PRIMARY KEY,
description                text,
behavior                   varchar(40) NOT NULL,
fail_closed                boolean NOT NULL DEFAULT true,
safe_response_enabled      boolean NOT NULL DEFAULT true,
publish_error_event        boolean NOT NULL DEFAULT true,
dlq_enabled                boolean NOT NULL DEFAULT false,
human_escalation_enabled   boolean NOT NULL DEFAULT false,
safe_response_template     jsonb NOT NULL DEFAULT '{}'::jsonb,
escalation_rules           jsonb NOT NULL DEFAULT '{}'::jsonb,
policy_config              jsonb NOT NULL DEFAULT '{}'::jsonb,
created_by                 varchar(120) NOT NULL,
created_at                 timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS ix_error_policy_fail_closed
ON aira_cfg.error_policy (fail_closed);
CREATE INDEX IF NOT EXISTS ix_error_policy_config_gin
ON aira_cfg.error_policy USING gin (policy_config jsonb_path_ops);
### 9.6 aira_cfg.adapter_binding and aira_cfg.table_binding
CREATE TABLE IF NOT EXISTS aira_cfg.adapter_binding (
adapter_binding_id         uuid PRIMARY KEY DEFAULT gen_random_uuid(),
adapter_code               varchar(80) NOT NULL,
adapter_type               varchar(50) NOT NULL,
bounded_context            varchar(80),
endpoint_ref               varchar(300),
secret_ref                 varchar(300),
workload_identity_ref      varchar(300),
adapter_config             jsonb NOT NULL DEFAULT '{}'::jsonb,
resilience_policy          jsonb NOT NULL DEFAULT '{}'::jsonb,
classification             varchar(30) NOT NULL DEFAULT 'INTERNAL',
status                     varchar(30) NOT NULL DEFAULT 'ACTIVE',
created_by                 varchar(120) NOT NULL,
created_at                 timestamptz NOT NULL DEFAULT now(),
updated_by                 varchar(120),
updated_at                 timestamptz
);
CREATE UNIQUE INDEX IF NOT EXISTS ux_adapter_binding_code
ON aira_cfg.adapter_binding (adapter_code);
CREATE INDEX IF NOT EXISTS ix_adapter_binding_type
ON aira_cfg.adapter_binding (adapter_type);
CREATE INDEX IF NOT EXISTS ix_adapter_binding_config_gin
ON aira_cfg.adapter_binding USING gin (adapter_config jsonb_path_ops);
CREATE TABLE IF NOT EXISTS aira_cfg.table_binding (
table_binding_id           uuid PRIMARY KEY DEFAULT gen_random_uuid(),
dataset_code               varchar(100) NOT NULL,
schema_name                varchar(80) NOT NULL,
table_name                 varchar(120) NOT NULL,
bounded_context            varchar(80) NOT NULL,
allowed_operations         text[] NOT NULL DEFAULT '{}',
access_policy_code         varchar(100),
classification             varchar(30) NOT NULL DEFAULT 'INTERNAL',
column_policy              jsonb NOT NULL DEFAULT '{}'::jsonb,
row_filter_policy          jsonb NOT NULL DEFAULT '{}'::jsonb,
masking_policy             jsonb NOT NULL DEFAULT '{}'::jsonb,
status                     varchar(30) NOT NULL DEFAULT 'ACTIVE',
created_by                 varchar(120) NOT NULL,
created_at                 timestamptz NOT NULL DEFAULT now()
);
CREATE UNIQUE INDEX IF NOT EXISTS ux_table_binding_dataset
ON aira_cfg.table_binding (dataset_code);
CREATE INDEX IF NOT EXISTS ix_table_binding_schema_table
ON aira_cfg.table_binding (schema_name, table_name);
CREATE INDEX IF NOT EXISTS ix_table_binding_column_policy_gin
ON aira_cfg.table_binding USING gin (column_policy jsonb_path_ops);
### 9.7 aira_cfg.runtime_definition_artifact and aira_cfg.publish_validation_result
CREATE TABLE IF NOT EXISTS aira_cfg.runtime_definition_artifact (
artifact_id                uuid PRIMARY KEY DEFAULT gen_random_uuid(),
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
version                    integer NOT NULL,
runtime_definition         jsonb NOT NULL,
definition_hash            varchar(128) NOT NULL,
signature                  text NOT NULL,
compiled_by                varchar(120) NOT NULL,
compiled_at                timestamptz NOT NULL DEFAULT now(),
is_current                 boolean NOT NULL DEFAULT false,
CONSTRAINT fk_runtime_artifact_txn
FOREIGN KEY (txn_code, profile_code, version)
REFERENCES aira_cfg.txn_definition (txn_code, profile_code, version)
);
CREATE UNIQUE INDEX IF NOT EXISTS ux_runtime_artifact_hash
ON aira_cfg.runtime_definition_artifact (definition_hash);
CREATE INDEX IF NOT EXISTS ix_runtime_artifact_current
ON aira_cfg.runtime_definition_artifact (txn_code, profile_code, is_current);
CREATE INDEX IF NOT EXISTS ix_runtime_artifact_json_gin
ON aira_cfg.runtime_definition_artifact USING gin (runtime_definition jsonb_path_ops);
CREATE TABLE IF NOT EXISTS aira_cfg.publish_validation_result (
validation_id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
version                    integer NOT NULL,
gate_code                  varchar(100) NOT NULL,
gate_name                  varchar(160) NOT NULL,
gate_status                varchar(30) NOT NULL,
severity                   varchar(30) NOT NULL DEFAULT 'INFO',
validation_result          jsonb NOT NULL DEFAULT '{}'::jsonb,
remediation_guidance       text,
validated_by               varchar(120) NOT NULL DEFAULT 'system',
validated_at               timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS ix_publish_validation_txn
ON aira_cfg.publish_validation_result (txn_code, profile_code, version);
CREATE INDEX IF NOT EXISTS ix_publish_validation_status
ON aira_cfg.publish_validation_result (gate_status, severity);
CREATE INDEX IF NOT EXISTS ix_publish_validation_result_gin
ON aira_cfg.publish_validation_result USING gin (validation_result jsonb_path_ops);
### 9.8 aira_cfg.config_activation_audit
CREATE TABLE IF NOT EXISTS aira_cfg.config_activation_audit (
activation_id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
version                    integer NOT NULL,
previous_status            varchar(30),
new_status                 varchar(30) NOT NULL,
action                     varchar(60) NOT NULL,
reason                     text,
definition_hash            varchar(128),
approval_evidence          jsonb NOT NULL DEFAULT '{}'::jsonb,
avci_evidence              jsonb NOT NULL DEFAULT '{}'::jsonb,
performed_by               varchar(120) NOT NULL,
performed_at               timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS ix_config_activation_txn
ON aira_cfg.config_activation_audit (txn_code, profile_code, version);
CREATE INDEX IF NOT EXISTS ix_config_activation_action
ON aira_cfg.config_activation_audit (action, performed_at DESC);
CREATE INDEX IF NOT EXISTS ix_config_activation_evidence_gin
ON aira_cfg.config_activation_audit USING gin (avci_evidence jsonb_path_ops);
## 10. Login Runtime Tables
### 10.1 aira_auth.login_idempotency
CREATE TABLE IF NOT EXISTS aira_auth.login_idempotency (
idempotency_key            varchar(128) PRIMARY KEY,
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
txn_version                integer NOT NULL,
request_hash               varchar(128) NOT NULL,
actor_id_hash              varchar(128),
subject_hash               varchar(128),
tenant_code                varchar(80),
state                      varchar(30) NOT NULL DEFAULT 'RESERVED',
first_seen_at              timestamptz NOT NULL DEFAULT now(),
completed_at               timestamptz,
expires_at                 timestamptz NOT NULL,
response_hash              varchar(128),
trace_id                   varchar(128),
evidence                   jsonb NOT NULL DEFAULT '{}'::jsonb
);
CREATE INDEX IF NOT EXISTS ix_login_idempotency_actor
ON aira_auth.login_idempotency (actor_id_hash);
CREATE INDEX IF NOT EXISTS ix_login_idempotency_tenant
ON aira_auth.login_idempotency (tenant_code);
CREATE INDEX IF NOT EXISTS ix_login_idempotency_expiry
ON aira_auth.login_idempotency (expires_at);
CREATE INDEX IF NOT EXISTS ix_login_idempotency_trace
ON aira_auth.login_idempotency (trace_id);
CREATE INDEX IF NOT EXISTS ix_login_idempotency_evidence_gin
ON aira_auth.login_idempotency USING gin (evidence jsonb_path_ops);
### 10.2 aira_auth.session_context
CREATE TABLE IF NOT EXISTS aira_auth.session_context (
session_context_id         uuid PRIMARY KEY DEFAULT gen_random_uuid(),
keycloak_session_id_hash   varchar(128),
actor_id_hash              varchar(128) NOT NULL,
subject_hash               varchar(128) NOT NULL,
tenant_code                varchar(80) NOT NULL,
branch_code                varchar(80),
unit_code                  varchar(80),
display_name_safe          varchar(160),
username_hash              varchar(128),
roles                      jsonb NOT NULL DEFAULT '[]'::jsonb,
skills                     jsonb NOT NULL DEFAULT '[]'::jsonb,
claims_safe                jsonb NOT NULL DEFAULT '{}'::jsonb,
classification_ceiling     varchar(30) NOT NULL DEFAULT 'INTERNAL',
policy_decision_id         uuid,
status                     varchar(30) NOT NULL DEFAULT 'ACTIVE',
created_at                 timestamptz NOT NULL DEFAULT now(),
expires_at                 timestamptz NOT NULL,
revoked_at                 timestamptz,
trace_id                   varchar(128),
evidence                   jsonb NOT NULL DEFAULT '{}'::jsonb
);
CREATE INDEX IF NOT EXISTS ix_session_context_actor
ON aira_auth.session_context (actor_id_hash);
CREATE INDEX IF NOT EXISTS ix_session_context_subject
ON aira_auth.session_context (subject_hash);
CREATE INDEX IF NOT EXISTS ix_session_context_tenant
ON aira_auth.session_context (tenant_code);
CREATE INDEX IF NOT EXISTS ix_session_context_status_expiry
ON aira_auth.session_context (status, expires_at);
CREATE INDEX IF NOT EXISTS ix_session_context_roles_gin
ON aira_auth.session_context USING gin (roles jsonb_path_ops);
CREATE INDEX IF NOT EXISTS ix_session_context_skills_gin
ON aira_auth.session_context USING gin (skills jsonb_path_ops);
CREATE INDEX IF NOT EXISTS ix_session_context_evidence_gin
ON aira_auth.session_context USING gin (evidence jsonb_path_ops);
## 11. Audit and Evidence Tables
### 11.1 aira_audit.runtime_execution
CREATE TABLE IF NOT EXISTS aira_audit.runtime_execution (
execution_id               uuid PRIMARY KEY DEFAULT gen_random_uuid(),
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
txn_version                integer NOT NULL,
execution_status           varchar(30) NOT NULL,
actor_id_hash              varchar(128),
tenant_code                varchar(80),
classification             varchar(30) NOT NULL DEFAULT 'INTERNAL',
trace_id                   varchar(128) NOT NULL,
request_id                 varchar(128),
correlation_id             varchar(128),
causation_id               varchar(128),
input_hash                 varchar(128),
output_hash                varchar(128),
started_at                 timestamptz NOT NULL DEFAULT now(),
ended_at                   timestamptz,
duration_ms                integer,
error_code                 varchar(100),
error_category             varchar(80),
runtime_definition_hash    varchar(128),
evidence                   jsonb NOT NULL DEFAULT '{}'::jsonb
);
CREATE INDEX IF NOT EXISTS ix_runtime_execution_txn
ON aira_audit.runtime_execution (txn_code, profile_code, txn_version);
CREATE INDEX IF NOT EXISTS ix_runtime_execution_status
ON aira_audit.runtime_execution (execution_status, started_at DESC);
CREATE INDEX IF NOT EXISTS ix_runtime_execution_trace
ON aira_audit.runtime_execution (trace_id);
CREATE INDEX IF NOT EXISTS ix_runtime_execution_actor
ON aira_audit.runtime_execution (actor_id_hash);
CREATE INDEX IF NOT EXISTS ix_runtime_execution_evidence_gin
ON aira_audit.runtime_execution USING gin (evidence jsonb_path_ops);
### 11.2 aira_audit.step_execution_audit
CREATE TABLE IF NOT EXISTS aira_audit.step_execution_audit (
step_execution_id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
execution_id               uuid NOT NULL,
txn_code                   varchar(80) NOT NULL,
profile_code               varchar(80) NOT NULL DEFAULT 'DEFAULT',
txn_version                integer NOT NULL,
step_code                  varchar(80) NOT NULL,
step_order                 integer NOT NULL,
step_status                varchar(30) NOT NULL,
attempt_no                 integer NOT NULL DEFAULT 1,
parameters_hash            varchar(128),
input_hash                 varchar(128),
output_hash                varchar(128),
started_at                 timestamptz NOT NULL DEFAULT now(),
ended_at                   timestamptz,
duration_ms                integer,
retry_policy_code          varchar(60),
error_policy_code          varchar(60),
error_code                 varchar(100),
error_category             varchar(80),
safe_response_code         varchar(100),
dependency_status          jsonb NOT NULL DEFAULT '{}'::jsonb,
evidence                   jsonb NOT NULL DEFAULT '{}'::jsonb,
CONSTRAINT fk_step_execution_runtime
FOREIGN KEY (execution_id)
REFERENCES aira_audit.runtime_execution (execution_id)
);
CREATE INDEX IF NOT EXISTS ix_step_execution_execution
ON aira_audit.step_execution_audit (execution_id);
CREATE INDEX IF NOT EXISTS ix_step_execution_step
ON aira_audit.step_execution_audit (step_code);
CREATE INDEX IF NOT EXISTS ix_step_execution_status
ON aira_audit.step_execution_audit (step_status, started_at DESC);
CREATE INDEX IF NOT EXISTS ix_step_execution_error
ON aira_audit.step_execution_audit (error_code, error_category);
CREATE INDEX IF NOT EXISTS ix_step_execution_dependency_gin
ON aira_audit.step_execution_audit USING gin (dependency_status jsonb_path_ops);
CREATE INDEX IF NOT EXISTS ix_step_execution_evidence_gin
ON aira_audit.step_execution_audit USING gin (evidence jsonb_path_ops);
### 11.3 aira_audit.access_decision_audit
CREATE TABLE IF NOT EXISTS aira_audit.access_decision_audit (
decision_id                uuid PRIMARY KEY DEFAULT gen_random_uuid(),
execution_id               uuid,
session_context_id         uuid,
policy_code                varchar(100) NOT NULL,
policy_version             varchar(80) NOT NULL,
actor_id_hash              varchar(128),
tenant_code                varchar(80),
decision                   varchar(30) NOT NULL,
deny_reason                varchar(160),
classification_ceiling     varchar(30) NOT NULL DEFAULT 'INTERNAL',
input_hash                 varchar(128) NOT NULL,
policy_input_safe          jsonb NOT NULL DEFAULT '{}'::jsonb,
policy_output              jsonb NOT NULL DEFAULT '{}'::jsonb,
decided_at                 timestamptz NOT NULL DEFAULT now(),
trace_id                   varchar(128),
evidence                   jsonb NOT NULL DEFAULT '{}'::jsonb
);
CREATE INDEX IF NOT EXISTS ix_access_decision_execution
ON aira_audit.access_decision_audit (execution_id);
CREATE INDEX IF NOT EXISTS ix_access_decision_policy
ON aira_audit.access_decision_audit (policy_code, policy_version);
CREATE INDEX IF NOT EXISTS ix_access_decision_actor
ON aira_audit.access_decision_audit (actor_id_hash);
CREATE INDEX IF NOT EXISTS ix_access_decision_decision
ON aira_audit.access_decision_audit (decision, decided_at DESC);
CREATE INDEX IF NOT EXISTS ix_access_decision_trace
ON aira_audit.access_decision_audit (trace_id);
CREATE INDEX IF NOT EXISTS ix_access_decision_input_gin
ON aira_audit.access_decision_audit USING gin (policy_input_safe jsonb_path_ops);
CREATE INDEX IF NOT EXISTS ix_access_decision_output_gin
ON aira_audit.access_decision_audit USING gin (policy_output jsonb_path_ops);
### 11.4 aira_audit.security_control_audit
CREATE TABLE IF NOT EXISTS aira_audit.security_control_audit (
control_audit_id           uuid PRIMARY KEY DEFAULT gen_random_uuid(),
execution_id               uuid,
step_code                  varchar(80),
control_code               varchar(100) NOT NULL,
control_name               varchar(160) NOT NULL,
control_status             varchar(30) NOT NULL,
dependency_name            varchar(120),
dependency_status          varchar(30),
actor_id_hash              varchar(128),
tenant_code                varchar(80),
trace_id                   varchar(128),
evidence                   jsonb NOT NULL DEFAULT '{}'::jsonb,
checked_at                 timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS ix_security_control_execution
ON aira_audit.security_control_audit (execution_id);
CREATE INDEX IF NOT EXISTS ix_security_control_code_status
ON aira_audit.security_control_audit (control_code, control_status);
CREATE INDEX IF NOT EXISTS ix_security_control_dependency
ON aira_audit.security_control_audit (dependency_name, dependency_status);
CREATE INDEX IF NOT EXISTS ix_security_control_trace
ON aira_audit.security_control_audit (trace_id);
CREATE INDEX IF NOT EXISTS ix_security_control_evidence_gin
ON aira_audit.security_control_audit USING gin (evidence jsonb_path_ops);
## 12. Policy Registry and Outbox Tables
### 12.1 aira_policy.policy_registry
CREATE TABLE IF NOT EXISTS aira_policy.policy_registry (
policy_code                varchar(100) NOT NULL,
policy_version             varchar(80) NOT NULL,
policy_type                varchar(40) NOT NULL,
policy_path                varchar(300) NOT NULL,
owner                      varchar(120) NOT NULL,
classification             varchar(30) NOT NULL DEFAULT 'INTERNAL',
status                     varchar(30) NOT NULL DEFAULT 'DRAFT',
policy_hash                varchar(128),
policy_metadata            jsonb NOT NULL DEFAULT '{}'::jsonb,
test_evidence              jsonb NOT NULL DEFAULT '{}'::jsonb,
created_by                 varchar(120) NOT NULL,
created_at                 timestamptz NOT NULL DEFAULT now(),
PRIMARY KEY (policy_code, policy_version)
);
CREATE UNIQUE INDEX IF NOT EXISTS ux_policy_registry_one_active
ON aira_policy.policy_registry (policy_code)
WHERE status = 'ACTIVE';
CREATE INDEX IF NOT EXISTS ix_policy_registry_type
ON aira_policy.policy_registry (policy_type);
CREATE INDEX IF NOT EXISTS ix_policy_registry_metadata_gin
ON aira_policy.policy_registry USING gin (policy_metadata jsonb_path_ops);
### 12.2 aira_outbox security event outbox
CREATE TABLE IF NOT EXISTS aira_outbox.security_event_outbox (
event_id                   uuid PRIMARY KEY DEFAULT gen_random_uuid(),
event_type                 varchar(120) NOT NULL,
event_version              varchar(30) NOT NULL DEFAULT '1.0',
aggregate_type             varchar(80) NOT NULL,
aggregate_id               varchar(128) NOT NULL,
source_service             varchar(120) NOT NULL DEFAULT 'aira-auth-service',
subject_hash               varchar(128),
actor_id_hash              varchar(128),
tenant_code                varchar(80),
classification             varchar(30) NOT NULL DEFAULT 'INTERNAL',
trace_id                   varchar(128),
correlation_id             varchar(128),
idempotency_key            varchar(128),
cloud_event                jsonb NOT NULL DEFAULT '{}'::jsonb,
payload_safe               jsonb NOT NULL DEFAULT '{}'::jsonb,
status                     varchar(30) NOT NULL DEFAULT 'PENDING',
publish_attempts           integer NOT NULL DEFAULT 0,
next_attempt_at            timestamptz,
published_at               timestamptz,
created_at                 timestamptz NOT NULL DEFAULT now()
);
CREATE UNIQUE INDEX IF NOT EXISTS ux_security_event_idempotency
ON aira_outbox.security_event_outbox (idempotency_key)
WHERE idempotency_key IS NOT NULL;
CREATE INDEX IF NOT EXISTS ix_security_event_status
ON aira_outbox.security_event_outbox (status, next_attempt_at);
CREATE INDEX IF NOT EXISTS ix_security_event_type
ON aira_outbox.security_event_outbox (event_type, created_at DESC);
CREATE INDEX IF NOT EXISTS ix_security_event_trace
ON aira_outbox.security_event_outbox (trace_id);
CREATE INDEX IF NOT EXISTS ix_security_event_payload_gin
ON aira_outbox.security_event_outbox USING gin (payload_safe jsonb_path_ops);
CREATE INDEX IF NOT EXISTS ix_security_event_cloudevent_gin
ON aira_outbox.security_event_outbox USING gin (cloud_event jsonb_path_ops);
CREATE TABLE IF NOT EXISTS aira_outbox.outbox_publish_attempt (
publish_attempt_id         uuid PRIMARY KEY DEFAULT gen_random_uuid(),
event_id                   uuid NOT NULL,
attempt_no                 integer NOT NULL,
publish_status             varchar(30) NOT NULL,
target_topic               varchar(160),
broker_ref                 varchar(160),
error_code                 varchar(100),
error_message_safe         text,
attempted_at               timestamptz NOT NULL DEFAULT now(),
evidence                   jsonb NOT NULL DEFAULT '{}'::jsonb,
CONSTRAINT fk_outbox_attempt_event
FOREIGN KEY (event_id)
REFERENCES aira_outbox.security_event_outbox (event_id)
);
CREATE INDEX IF NOT EXISTS ix_outbox_attempt_event
ON aira_outbox.outbox_publish_attempt (event_id);
CREATE INDEX IF NOT EXISTS ix_outbox_attempt_status
ON aira_outbox.outbox_publish_attempt (publish_status, attempted_at DESC);
## 13. JSONB Usage Standard
Use JSONB For
Example
Runtime parameters
OIDC client behavior, timeout profile, safe response rules.
Input/output mappings
Mapping JWT claims to session context.
Policy input/output
OPA decision input/output.
Evidence
AVCI evidence, validation result, trace metadata.
Dependency status
Keycloak available, Vault available, OPA decision latency.
Safe event payload
Login success/failure event metadata.
Validation schema
Per-step parameter validation rules.
Claims safe copy
Redacted, non-token identity claims.
Do Not Use JSONB For
Reason
Primary identifiers
Must remain strongly indexed and join-friendly.
Status fields
Must be queryable using B-tree indexes.
Tenant, actor hash, trace ID
Must be searchable and join-friendly.
Secrets
Must be stored only in Vault.
Raw JWT / refresh token
Must never be stored.
Passwords
Must never be stored or handled by AIRA application code.
Free-form SQL
Violates AIRA control model and creates injection risk.
## 14. Minimum Seed Data for Login PoC 1
### 14.1 Seed transaction definition
INSERT INTO aira_cfg.txn_definition (
txn_code, profile_code, version, txn_name, description, execution_mode,
status, classification, bounded_context, owner, runtime_properties,
activation_controls, rollback_strategy, created_by
)
VALUES (
'AUTH_LOGIN_CONTEXT_ESTABLISH', 'DEFAULT', 1,
'AIRA Login Session Context Establishment',
'Establishes governed AIRA session context after Keycloak / AD authentication.',
'SYNC', 'DRAFT', 'CONFIDENTIAL', 'identity-and-access', 'security-architecture',
'{"requires_keycloak":true,"requires_opa":true,"requires_vault":true,"requires_audit":true,"requires_outbox":true,"fail_closed":true}',
'{"activation_path":"DRAFT_REVIEWED_APPROVED_ACTIVE","direct_activation_allowed":false,"requires_publish_validation":true,"requires_security_review":true}',
'{"strategy":"deactivate_new_version_or_promote_previous_active","cache_invalidation_required":true}',
'system'
);
### 14.2 Seed Login MicroFunction step bindings
INSERT INTO aira_cfg.txn_step_binding (
txn_code, profile_code, version, step_order, step_code,
is_mandatory, is_enabled, timeout_ms, classification_ceiling, created_by
)
VALUES
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 1,'STP-RCV-AUTH-REQUEST',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 2,'STP-COR-TRACE',true,true,1000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 3,'STP-RATE-LOGIN',true,true,2000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 4,'STP-SEC-CSRF-CORS',true,true,2000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 5,'STP-AUTH-REDIRECT',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 6,'STP-IDP-AUTHN',true,true,5000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 7,'STP-IDP-CLAIMS',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 8,'STP-JWT-ISSUE',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1, 9,'STP-JWT-VALIDATE',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,10,'STP-SES-RESOLVE',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,11,'STP-SEC-OPA-AUTHZ',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,12,'STP-CLS-CONTEXT',true,true,2000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,13,'STP-IDP-LOGIN-IDEMP',true,true,2000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,14,'STP-VAULT-SECRETS',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,15,'STP-ENC-SESSION',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,16,'STP-AUD-LOGIN',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,17,'STP-EVT-LOGIN',true,true,3000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,18,'STP-OBS-LOGIN',true,true,2000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,19,'STP-RSP-SAFE-LOGIN',true,true,2000,'CONFIDENTIAL','system'),
('AUTH_LOGIN_CONTEXT_ESTABLISH','DEFAULT',1,20,'STP-ERR-AUTH',true,true,2000,'CONFIDENTIAL','system');
## 15. Recommended Flyway Migration Sequence
Flyway baseline
backend/src/main/resources/db/migration/
V1__create_aira_schemas_and_extensions.sql
V2__create_microfunction_catalog_tables.sql
V3__create_runtime_configuration_tables.sql
V4__create_policy_and_adapter_binding_tables.sql
V5__create_auth_login_runtime_tables.sql
V6__create_audit_and_evidence_tables.sql
V7__create_outbox_tables.sql
V8__seed_login_microfunction_catalog.sql
V9__seed_auth_login_context_establish_transaction.sql
V10__seed_login_retry_error_policy.sql
V11__seed_login_opa_policy_registry.sql
## 16. DBA and Developer Implementation Notes
Control
Requirement
Flyway
All schema and seed data changes must be created through Flyway migrations.
Append-only audit
Application role should not update/delete audit rows; corrections require compensating records.
Least privilege
Runtime app role receives minimum permissions per schema and table.
JSONB indexing
Use GIN only on JSONB fields that are actually queried.
Hashing
Store actor_id_hash, subject_hash, request_hash, input_hash, and output_hash; do not store raw sensitive values.
Secrets
Store only Vault paths or references, never secret values.
Tokens
Do not persist raw JWT, refresh token, ID token, password, or authorization code.
Outbox
Publish events asynchronously from outbox after database commit.
Cache
Redis/Valkey may cache runtime definition, but PostgreSQL remains authoritative.
Activation
Only one ACTIVE transaction version per txn_code + profile_code.
Fail-closed
Missing OPA, Vault, Keycloak, audit, or active runtime config must deny protected access.
## 17. Minimum Implementation Order
Order
Object
1
aira_mf.step_catalog
2
aira_cfg.txn_definition
3
aira_cfg.txn_step_binding
4
aira_cfg.step_parameter
5
aira_cfg.retry_policy
6
aira_cfg.error_policy
7
aira_cfg.adapter_binding
8
aira_policy.policy_registry
9
aira_auth.login_idempotency
10
aira_auth.session_context
11
aira_audit.runtime_execution
12
aira_audit.step_execution_audit
13
aira_audit.access_decision_audit
14
aira_audit.security_control_audit
15
aira_outbox.security_event_outbox
16
aira_outbox.outbox_publish_attempt
## 18. Review and Acceptance Checklist
Area
Acceptance Criteria
Runtime Configuration
Transaction definition, step sequence, parameters, retry/error policies, adapter bindings, and activation controls are stored in governed tables.
MicroFunction Assembly
AUTH_LOGIN_CONTEXT_ESTABLISH can be assembled from PostgreSQL without hardcoded step order in controller code.
Security Boundary
Keycloak performs authentication; AIRA does not store or validate passwords.
OPA/SBAC
Authorization decision is externalized and recorded in access_decision_audit.
Vault
Only secret references are stored; no secret values are stored in the database.
Idempotency
Replay and duplicate login callback behavior are controlled by login_idempotency.
Audit Evidence
Runtime and step execution evidence are recorded with trace/correlation IDs.
Outbox
Login/security events are written transactionally and publish attempts are tracked.
Safe Session Context
session_context contains only safe claims and hashed identifiers.
Indexes
B-tree and GIN indexes support expected lookups without over-indexing.
Reversibility
Active transaction versions can be rolled back by version and definition hash.
AVCI
Attribution, verification, classification, and improvement evidence are recorded.
## 19. AVCI Evidence Mapping
AVCI Attribute
Database Evidence
Attributable
created_by, updated_by, performed_by, owner, actor_id_hash, service source, policy owner, approval evidence.
Verifiable
definition_hash, signature, input_hash, output_hash, policy_hash, runtime_definition_hash, validation result.
Classifiable
classification, classification_ceiling, tenant_code, bounded_context, masking_policy, policy decision.
Improvable
versioning, activation audit, publish validation, retry/error policies, evidence JSONB, test evidence.
## 20. Non-Negotiable Restrictions
Not Allowed
Reason
Raw JWT, refresh token, ID token, authorization code, or password stored in database.
Violates secure-by-design and data minimization.
Secret values stored in parameter_value or adapter_config.
Secrets must be retrieved from Vault using references only.
Free-form SQL stored as dynamic configuration.
Creates injection and governance bypass risk.
Arbitrary class names loaded from database.
Allows unsafe dynamic execution.
Step order changed directly in production without publish validation and approval.
Can bypass security, audit, or classification controls.
Controllers determining authorization or constructing runtime step sequence.
Violates Clean Architecture and MicroFunction runtime assembly.
Audit or OPA controls disabled by configuration.
Violates AVCI and fail-safe principles.
## 21. Conclusion
This schema baseline enables AIRA PoC 1 to implement a dynamic, governed, evidence-producing Login function using the MicroFunction framework. The design allows the runtime behavior to be assembled from approved PostgreSQL configuration while preserving strict security boundaries, auditability, reproducibility, classification awareness, and rollbackability.
For PoC 1, the development team and DBA should treat this document as the minimum implementation baseline. Future iterations may add partitioning, archival policy, richer policy versioning, formal approval workflow integration, and production-hardening controls after the working Login PoC is validated.
