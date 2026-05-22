---
document_id: "AIRA-DOC-016A"
title: "AIRA Flyway Initial Database Baseline and Migration Governance Guide"
version: "v1.2"
status: "aligned"
source_file: "16A-AIRA_Flyway_Initial_Database_Baseline_and_Migration_Governance_Guide_v1.2_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Database-and-Data/Flyway-Migration-Governance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - database
  - migration
  - flyway
---

# AIRA Flyway Initial Database Baseline and Migration Governance Guide

**AIRA
AI-Native Enterprise Platform**

**AIRA Flyway Initial Database Baseline and Migration Governance Guide**

**v1.2 - Supplemental Alignment Update | INTERNAL CONFIDENTIAL**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-016A** |
| **Document Title** | **AIRA Flyway Initial Database Baseline and Migration Governance Guide** |
| **Version** | **v1.2 - Supplemental Alignment Update** |
| **Supersedes** | **16A-AIRA_Flyway_Initial_Database_Baseline_and_Migration_Governance_Guide_v1.1_Aligned** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **ALIGNED FOR OBSIDIAN UPLOAD / ARCHITECTURE REVIEW** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Alignment Baseline** | **AIRA Pack 01-05 v1.2 Individual Files; canonical 01A v1.1; Technology Stack v9.1; Java 25 LTS backend baseline** |
| **Target Pack / Register Placement** | **Pack 05 / Database and Flyway Governance** |
| **Effective Date** | **2026-05-21** |

## Alignment Control Addendum

**Purpose. **This supplemental aligned version corrects missing-pack inclusion, document-numbering, classification, and cross-reference issues discovered after Pack 01-05 v1.2 generation. The original source content is preserved below, with updated references and added governance controls where necessary.

**Canonical interpretation. **Where the source text contains older references, the current aligned baseline governs: Java 25 LTS for backend services, Technology Stack v9.1, AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, MicroFunction Framework v3.1, Pack 05 Flyway governance, and canonical 01A v1.1.

### Improvement Summary

Reconfirmed Flyway from Day 0 as mandatory for greenfield database creation and not only future migrations.

Aligned with Java 25 LTS/Spring Boot 4.x application baseline, PostgreSQL 18, and Pack 05 v1.2 governance decisions.

Strengthened anti-patterns: no manual application DDL, no production Flyway clean, no baselineOnMigrate for greenfield, no secrets in migrations.

Added stronger evidence expectations for clean-migrate, RLS tests, idempotency/outbox verification, and forward-fix planning.

### AVCI Compliance Summary

| **AVCI Property** | **Evidence** |
| --- | --- |
| **Attributable** | **Identifies source document, owner, superseded version, target pack placement, and alignment baseline.** |
| **Verifiable** | **Preserves source content and records the specific alignment changes required for Obsidian and revision-control use.** |
| **Classifiable** | **Standardizes classification to INTERNAL CONFIDENTIAL and preserves any elevated handling controls in the body.** |
| **Improvable** | **Captures open numbering/pack-inclusion issues and creates a clean basis for future source-pack regeneration.** |

## Aligned Source Content

AIRA

AI-Native Enterprise Platform

Flyway Initial Database Baseline and Migration Governance Guide

Greenfield Database Creation · Migration-as-Code · PostgreSQL · AVCI Evidence

Version 1.0 · May 2026

| **Mandatory Position<br>Even when the database is created from scratch, AIRA uses Flyway from Day 0. The initial schema is not a manual setup activity. It is the first governed migration chain and the first evidence-producing database baseline.** |
| --- |

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-016A** |
| **Document Title** | **AIRA Flyway Initial Database Baseline and Migration Governance Guide** |
| **Version** | **v1.0 - Initial Greenfield Execution Baseline** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION** |
| **Owner** | **Solutions Architecture Office / Database Architecture / Data Governance** |
| **Co-Owners** | **Database Administrator; Software Development Lead; DevSecOps Lead; QA Lead; Security Architecture** |
| **Audience** | **Solutions Architects, Software Developers, DBA, DevSecOps, QA/SDET, Security, Internal Audit** |
| **Effective Date** | **Upon Architecture Review Board / CAB approval** |
| **Review Cadence** | **Quarterly; unscheduled on material database, migration, security, toolchain, or platform change** |
| **Primary Companion** | **16-AIRA Database, Migration, and Data Engineering Standard v2.0** |
| **Related Standards** | **01 AVCI v3.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 08 Unit Testing v3.1; 09 Greenfield Environment v3.1; 11 DevSecOps v3.1; 14 ADR/TDL v2.2; 17 Security v2.1** |

## Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Decision Position: Flyway from Day 0

4. What Flyway Owns and What It Does Not Own

5. Greenfield Database Creation Model

6. Repository Structure and Migration Naming

7. Initial Baseline Migration Chain

8. Flyway Configuration Baseline

9. CI/CD and Environment Promotion Workflow

10. Migration Design Rules

11. Security, Classification, and Secrets Handling

12. Testing, Verification, and Evidence

13. Reversibility, Rollbackability, and Forward-Fix Rules

14. RACI and Separation of Duties

15. Acceptance Criteria and Ready-to-Use Gate

16. Anti-Patterns and Rejected Practices

17. Implementation Roadmap

18. AVCI Compliance Summary

## Appendix A. Migration Header Template

## Appendix B. Sample Initial DDL Migration

## Appendix C. Pull Request / Merge Request Data Change Summary

## Appendix D. Flyway Command Reference

| **Word TOC Note<br>This document uses a static table of contents for deterministic rendering. In Microsoft Word, a dynamic TOC may be inserted before final publication if required.** |
| --- |

## 1. Executive Summary

This guide formalizes how Flyway is used in AIRA for initial database creation and ongoing database change governance. It answers a common greenfield question: whether Flyway is still needed when the activity is only to create the database and tables from scratch.

The AIRA position is clear: Flyway is required from the first schema object. The first database scripts are not treated as temporary setup scripts. They are the initial governed migration chain and therefore become part of the official system history, evidence baseline, reproducibility path, and audit trail.

The DBA or infrastructure automation may provision the PostgreSQL cluster, empty database, network access, migration user, and approved secret references. However, application schemas, tables, constraints, indexes, seed/reference data, RLS policies, views, functions, audit structures, outbox tables, idempotency registries, and governed data artifacts must be delivered through Flyway or the approved migration workflow.

| **Core Rule<br>The database may be empty at the start, but the schema must be born through Flyway.** |
| --- |

| **Decision Area** | **AIRA Position** | **Required Evidence** |
| --- | --- | --- |
| **Greenfield schema creation** | **Use Flyway from Day 0. Initial DDL is the first versioned migration chain.** | **Flyway migrate report, schema review, checksum evidence.** |
| **Manual table creation** | **Prohibited for application schema objects except approved emergency path.** | **Exception ticket, CAB approval, follow-up reconciled migration.** |
| **Seed/reference data** | **Versioned and deterministic. No ad-hoc spreadsheet loading into controlled tables.** | **Data owner approval, effective dates, classification, repeatability proof.** |
| **Production rollback** | **Forward-only by default using forward-fix or compensating migration.** | **Forward-fix script, approval, validation evidence.** |
| **Environment rebuild** | **DEV/TEST/UAT/STAGING/PROD-compatible schema must be reproducible from Git and Flyway history.** | **Clean migrate test, integration test, drift check.** |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

Define how Flyway is used to create the initial AIRA database schema from a clean PostgreSQL database.

Prevent database drift by making all schema-affecting activity traceable to versioned migration files.

Establish the separation between infrastructure/database provisioning and application schema creation.

Provide developers, DBAs, DevSecOps, and reviewers with a common migration workflow, naming standard, evidence checklist, and acceptance gate.

Ensure that AIRA database changes satisfy AVCI, SOLID, Clean Architecture, DDD bounded-context ownership, testability, security, observability, and reversibility requirements.

### 2.2 In Scope and Out of Scope

| **In Scope** | **Out of Scope** |
| --- | --- |
| **Initial schema creation using Flyway migrations.** | **Unmanaged manual table creation outside migration governance.** |
| **DDL for schemas, tables, indexes, constraints, views, functions, RLS policies, grants, and extension activation where permitted.** | **Physical server procurement, storage layout, network routing, and operating-system hardening.** |
| **Seed/reference data and deterministic baseline data required for runtime behavior.** | **Bulk migration of legacy production data unless separately governed by a data migration plan.** |
| **Migration evidence, CI validation, schema drift checks, and release promotion evidence.** | **Click-ops, private DBA scripts, or developer-local SQL not committed to source control.** |
| **Database structures for idempotency, outbox, audit/evidence, configuration, lineage, and retrieval metadata.** | **Business requirements that have not yet been converted into approved backlog items, contracts, or data models.** |
| **Forward-fix and compensating migration rules.** | **Emergency operational recovery procedures outside approved incident/change process.** |
| **Repository and Spring Boot/Flyway configuration patterns.** | **Secret values, production credentials, and unmanaged connection strings.** |

### 2.3 Authority and Precedence

| **Level** | **Document / Control** | **Migration Governance Role** |
| --- | --- | --- |
| **L0** | **AIRA Architecture Board / Consolidated Architecture Decisions** | **Final authority for major data-platform decisions and bounded-context exceptions.** |
| **L1** | **02-AIRA Engineering Blueprint v5.0** | **Defines service boundaries, bounded contexts, workflow partition, and data ownership.** |
| **L2** | **01-AIRA AVCI v3.0 and 01A Enterprise Design Principles** | **Universal quality, evidence, classification, SOLID, testability, and reversibility gates.** |
| **L3** | **16-AIRA Database, Migration, and Data Engineering Standard v2.0** | **Primary standard for database design, Flyway governance, RLS, outbox, pgvector, backup, and evidence.** |
| **L4** | **This Guide and Repository Flyway Scripts** | **Execution-level guide and implementation evidence for initial schema creation and migration operations.** |

## 3. Decision Position: Flyway from Day 0

AIRA shall use Flyway immediately for the initial database baseline. This applies even if there is no existing production data and no previous database version to migrate from. In a greenfield build, Flyway is used to create the first known-good database state and to make that state reproducible across all environments.

### 3.1 Why Greenfield Still Requires Migration Governance

| **Concern** | **Without Flyway from Day 0** | **With Flyway from Day 0** |
| --- | --- | --- |
| **Reproducibility** | **Manual SQL can differ between DEV, TEST, UAT, STAGING, and PROD.** | **Every environment can be rebuilt from the same ordered migration chain.** |
| **Auditability** | **No authoritative record of how the schema was created.** | **Migration versions, checksums, owners, tickets, and approvals become evidence.** |
| **Drift prevention** | **DBA fixes or developer scripts can silently diverge from Git.** | **Drift is visible through validation, checksums, and clean-migrate tests.** |
| **Future changes** | **Later migrations start from an undocumented state.** | **Future changes continue from a known baseline history.** |
| **CI/CD** | **Pipeline cannot prove the schema can be built from source.** | **Pipeline starts empty PostgreSQL and applies all migrations.** |
| **Security** | **RLS, grants, and classification can be inconsistent.** | **Security controls are code-reviewed and verified like application code.** |
| **AVCI** | **Attribution and verification are incomplete.** | **Every data artifact has owner, source, classification, verification, and improvement path.** |

### 3.2 Decision Rule

| **AIRA Flyway Decision Rule<br>All production-bound AIRA database objects must be created, changed, validated, and promoted through Flyway or an approved migration workflow. Manual creation of application tables before Flyway adoption is prohibited because it creates an undocumented state and undermines deterministic rebuild.** |
| --- |

## 4. What Flyway Owns and What It Does Not Own

AIRA separates physical database provisioning from application schema governance. This prevents Flyway from becoming a substitute for infrastructure management while ensuring that schema behavior remains governed as code.

| **Area** | **Owner** | **Flyway?** | **Rule** |
| --- | --- | --- | --- |
| **PostgreSQL cluster / VM / container** | **Infrastructure / DBA** | **No** | **Provision through approved infrastructure automation or DBA procedure.** |
| **Empty database creation** | **DBA / Platform** | **Usually No** | **Create database shell, owner, network access, and migration role before Flyway runs.** |
| **Migration role and permissions** | **DBA / Security** | **No / Partial** | **Created through access-control workflow; grants for application schemas may be versioned if approved.** |
| **Application schemas** | **DBA / Dev Team** | **Yes** | **Created by versioned Flyway DDL per bounded context.** |
| **Tables, indexes, constraints** | **Dev Team / DBA** | **Yes** | **Created and changed only through versioned migrations.** |
| **RLS policies and database grants** | **Security / DBA** | **Yes** | **Versioned and tested where tied to application data behavior.** |
| **Views and functions** | **Dev Team / DBA** | **Yes** | **Use versioned or repeatable migrations with dependency and test evidence.** |
| **Seed/reference data** | **Data Owner / Dev Team** | **Yes** | **Versioned and deterministic with owner and classification.** |
| **Secrets and passwords** | **Security / Vault Owner** | **No** | **Never stored in Flyway scripts, Git, logs, prompts, or documentation.** |
| **Emergency data repair** | **DBA / CAB** | **Controlled** | **Use versioned migration or approved operational script with reconciliation evidence.** |

## 5. Greenfield Database Creation Model

The greenfield creation model starts with an empty PostgreSQL database and produces a governed schema through Flyway. The output is not only a working database; it is an evidence-producing database baseline.

AIRA Greenfield Database Creation Flow

Architecture / Data Design Approved

↓

Database shell provisioned by DBA / platform automation

↓

Flyway migration chain committed to Git

↓

Pull Request with AVCI Data Change Summary

↓

CI starts empty PostgreSQL and applies full migration chain

↓

Schema, RLS, idempotency, outbox, audit, and repository tests pass

↓

CODEOWNERS / DBA / Security / QA review completed

↓

Approved pipeline applies migrations to target environment

↓

Flyway checksums, logs, approver, trace_id, and smoke results retained as evidence

### 5.1 Minimum Greenfield Entry Criteria

Approved repository baseline, branch protection, CODEOWNERS, PR/MR template, and CI skeleton are active.

PostgreSQL local/DEV database endpoint is available through approved secret references.

Bounded-context ownership is defined for every planned schema.

Initial data classification is assigned for schemas, tables, and key columns.

Migration naming and evidence header convention is agreed before first commit.

No manual application tables exist in the target database before first Flyway run.

## 6. Repository Structure and Migration Naming

### 6.1 Recommended Repository Layout

services/<service-name>/

src/main/resources/db/migration/

V202605200900__create_extensions_and_base_schemas.sql

V202605200910__create_audit_evidence_tables.sql

V202605200920__create_idempotency_registry.sql

V202605200930__create_transactional_outbox.sql

V202605200940__create_<bounded_context>_tables.sql

V202605200950__create_rls_policies.sql

V202605201000__seed_reference_data.sql

R__active_configuration_view.sql

src/test/java/...

migration/

repository/

rls/

idempotency/

outbox/

### 6.2 Naming Standard

| **Migration Type** | **Naming Rule** | **Usage** |
| --- | --- | --- |
| **Versioned DDL** | **VYYYYMMDDHHMM__short_description.sql** | **Schemas, tables, indexes, constraints, RLS, grants, extension activation, irreversible object changes.** |
| **Reference / seed data** | **VYYYYMMDDHHMM__seed_<domain>_reference_data.sql** | **Deterministic reference data with owner, effective dates, status, classification, and approval.** |
| **Repeatable object** | **R__view_or_function_name.sql** | **Derived views/functions that can use CREATE OR REPLACE and are safe to reapply.** |
| **Data repair** | **VYYYYMMDDHHMM__repair_<controlled_scope>.sql** | **Approved repair with affected count, reconciliation, and CAB/DBA approval.** |
| **Forward fix** | **VYYYYMMDDHHMM__forward_fix_<issue>.sql** | **Production correction when rollback is not safe or not permitted.** |
| **Prohibited** | **adhoc.sql / setup.sql / final.sql** | **Unversioned or ambiguous scripts are not allowed for governed schema creation.** |

## 7. Initial Baseline Migration Chain

The initial baseline should be decomposed into logical migration files. Overly large all-in-one scripts reduce review quality, but excessive fragmentation also creates noise. The recommended chain below provides a balanced starting point.

| **Order** | **Migration** | **Purpose** | **Primary Reviewer** |
| --- | --- | --- | --- |
| **1** | **create_extensions_and_base_schemas** | **Activate approved extensions and create common/bounded-context schemas.** | **DBA** |
| **2** | **create_audit_evidence_tables** | **Create append-only technical/business audit and evidence tables.** | **DBA / Security** |
| **3** | **create_idempotency_registry** | **Create retry-safe mutation and replay tracking structures.** | **Backend / QA** |
| **4** | **create_transactional_outbox** | **Create outbox table and supporting indexes for event publication intent.** | **Integration Lead** |
| **5** | **create_runtime_configuration_tables** | **Create immutable configuration and active-version control tables.** | **Architect / DBA** |
| **6** | **create_business_context_tables** | **Create bounded-context business tables and constraints.** | **Domain Owner** |
| **7** | **create_rls_policies** | **Create tenant/classification policies and negative-test expectations.** | **Security / DBA** |
| **8** | **seed_reference_data** | **Load deterministic baseline reference codes and policy metadata.** | **Data Owner** |
| **9** | **create_indexes** | **Add performance and uniqueness indexes aligned to query patterns.** | **DBA** |
| **10** | **create_repeatable_views_functions** | **Create derived views/functions through repeatable migrations where appropriate.** | **DBA / Dev Lead** |

### 7.1 Minimum Common Tables for AIRA Foundation

schema_migration is managed by Flyway and must not be manually edited.

audit_event or equivalent evidence table for action, decision, trace_id, actor, resource, classification, and evidence_ref.

idempotency_record for mutation deduplication and replay safety.

outbox_event for atomic event publication intent.

configuration or runtime_definition tables for governed MicroFunction/process configuration where applicable.

classification metadata tables or controlled values for data handling and model-routing eligibility.

lineage or source metadata tables where retrieval, document, vector, or evidence artifacts are involved.

## 8. Flyway Configuration Baseline

### 8.1 Spring Boot Configuration Example

# application.yml baseline

spring:

flyway:

enabled: true

locations: classpath:db/migration

validate-on-migrate: true

baseline-on-migrate: false

clean-disabled: true

connect-retries: 10

table: flyway_schema_history

# Rules:

# - baseline-on-migrate remains false for greenfield databases.

# - clean-disabled remains true except for disposable local/CI databases.

# - secrets are injected by approved secret manager, not committed to Git.

### 8.2 Environment-Specific Rule

| **Environment** | **Migrate** | **Clean** | **Rule** |
| --- | --- | --- | --- |
| **Local disposable** | **Allowed** | **Allowed only by developer intent** | **May clean/rebuild only local throwaway database.** |
| **CI ephemeral** | **Required** | **Allowed before test run** | **CI may start empty PostgreSQL and apply full migration chain.** |
| **DEV / INT** | **Required** | **Disabled** | **Apply migrations through pipeline; no manual reset except approved rebuild.** |
| **UAT / STAGING** | **Required** | **Disabled** | **Apply with release evidence and compatibility checks.** |
| **PROD** | **Required** | **Disabled** | **Apply through approved deployment pipeline only; no clean, no manual DDL.** |

## 9. CI/CD and Environment Promotion Workflow

### 9.1 Pre-Merge Gates

Migration file name matches AIRA naming standard.

Migration header contains ticket, owner, bounded context, classification, principle impact, verification, and forward-fix reference.

SQL lint and formatting checks pass.

CI starts an empty PostgreSQL database and applies the full Flyway chain successfully.

Repeat migration validation proves no unexpected drift or checksum conflict.

Repository/component tests pass against migrated schema.

RLS, tenant isolation, idempotency, outbox, and seed determinism tests pass where applicable.

PR/MR includes AVCI Data Change Summary and reviewer approvals.

### 9.2 Deployment Gates

| **Gate** | **Control** | **Evidence** |
| --- | --- | --- |
| **Pre-release** | **Run expand/contract compatibility tests against current and target application versions.** | **Compatibility test report.** |
| **Approval** | **DBA, service owner, security owner, and change approver approve as required by risk.** | **Approval record / CAB reference.** |
| **Migration** | **Apply through approved pipeline only.** | **Flyway output, checksum, migration version, trace_id.** |
| **Post-deploy** | **Run smoke queries, constraint checks, row-count checks, RLS tests, and outbox health checks.** | **Post-deploy validation report.** |
| **Evidence retention** | **Store logs, checksums, test results, and approver record in evidence path.** | **OpenKM/Git/evidence pack reference.** |

## 10. Migration Design Rules

One migration file must have one clear purpose and one accountable owner.

A migration must not perform unrelated schema changes across multiple bounded contexts unless approved by ADR/TDL.

Business invariants must be enforced with database constraints where appropriate, not only in application code.

Tables must include audit and classification columns where they influence business behavior, evidence, or regulated data handling.

All mutating runtime paths must have idempotency protection through keys, constraints, workflow deduplication, or processed-event records.

Cross-boundary effects must use transactional outbox, events, APIs, projections, or workflows. Direct cross-context writes are prohibited.

Free-form SQL assembled from user input or uncontrolled configuration is prohibited.

Repeatable migrations must be deterministic and safe to re-run.

Large table changes must use expand/contract patterns and avoid long production locks.

Migration scripts must be reviewable by humans and executable by CI without private workstation assumptions.

## 11. Security, Classification, and Secrets Handling

Database migration scripts are security-relevant artifacts. They can create access paths, expose data, weaken tenant isolation, or alter model-routing eligibility. Therefore, all migration scripts must be classification-aware and must not contain secrets or raw production data.

| **Security Area** | **Rule** | **Evidence** |
| --- | --- | --- |
| **Secrets** | **No passwords, tokens, API keys, connection strings, or secret material in migrations.** | **Secret scan report.** |
| **PII / Production Data** | **No real customer data in seed scripts, tests, examples, prompts, or documentation.** | **Synthetic data review.** |
| **Classification** | **Tables and relevant columns must declare classification metadata where applicable.** | **Schema review and data catalog entry.** |
| **RLS** | **Tenant-scoped or restricted tables require RLS or approved equivalent defense-in-depth pattern.** | **RLS positive/negative tests.** |
| **Least Privilege** | **Application accounts receive only required privileges.** | **Grant review / OPA/access evidence.** |
| **Auditability** | **Access-impacting migrations must record owner, purpose, reviewer, and approval.** | **PR/MR and change record.** |
| **Fail Closed** | **If migration validation, policy, secret scan, or evidence publishing fails, promotion is blocked.** | **Pipeline result.** |

## 12. Testing, Verification, and Evidence

### 12.1 Minimum Test Evidence

clean_migrate: apply the full migration chain to an empty database.

validate_migration: verify Flyway checksums and migration history.

repository_component_test: prove application repository behavior against the migrated schema.

constraint_negative_test: prove constraints reject invalid state.

idempotency_test: prove duplicate mutation/retry does not create duplicate business effects.

outbox_test: prove business mutation and outbox intent commit atomically.

rls_positive_negative_test: prove allowed tenant access succeeds and cross-tenant or restricted access fails.

seed_determinism_test: prove reference data is deterministic and does not create uncontrolled duplicates.

restore_smoke_test: for higher environments, verify backup/restore compatibility with migration history.

### 12.2 AVCI Evidence Record Fields

| **Field** | **Minimum Content** |
| --- | --- |
| **artifact_id** | **Migration version or script name.** |
| **artifact_type** | **Database migration, seed data, RLS policy, function, view, extension, data repair.** |
| **owner** | **Named human owner or approved service owner.** |
| **source_ref** | **Git commit, PR/MR, ticket, ADR/TDL, or CAB reference.** |
| **classification** | **Public, Internal, Confidential, or Restricted plus bounded context/domain.** |
| **verification_evidence** | **Clean migrate, tests, reviews, scan, policy decision, checksum, post-deploy smoke result.** |
| **principle_impact** | **Affected Enterprise Design Principles and preserved/improved/weakened status.** |
| **architecture_boundary_impact** | **Affected bounded context, schema, service contract, port, adapter, or workflow boundary.** |
| **security_posture_impact** | **RLS, grants, secrets, retention, tenant, classification, and access-control impact.** |
| **reversibility_impact** | **Forward-fix, compensation, restore, safe deactivation, or rollback approach.** |

## 13. Reversibility, Rollbackability, and Forward-Fix Rules

AIRA treats production database rollback as a high-risk action. The default production pattern is forward-only: correct the database by applying a reviewed forward-fix or compensating migration, not by attempting unsafe reverse execution.

Every migration must include a forward-fix or reversibility statement in the migration header.

Production Flyway clean is prohibited.

Undo migrations must not be relied on as the normal production rollback mechanism.

Breaking changes require expand/contract migration and compatibility testing.

Destructive changes require data owner approval, backup/restore validation, affected-row evidence, and CAB approval.

Feature flags or dual-read/dual-write strategies should be used where application compatibility must be preserved during transition.

Any failed production migration requires incident/change evidence, database state capture, and controlled remediation.

## 14. RACI and Separation of Duties

| **Activity** | **Solutions Architect** | **DBA** | **Developer** | **DevSecOps** | **Security / Data Owner** |
| --- | --- | --- | --- | --- | --- |
| **Define bounded-context schema ownership** | **A/R** | **C** | **C** | **I** | **C** |
| **Create migration scripts** | **C** | **C** | **R** | **I** | **C** |
| **Review DDL and performance impact** | **C** | **A/R** | **C** | **I** | **C** |
| **Review RLS/classification/security impact** | **C** | **C** | **I** | **I** | **A/R** |
| **Run CI migration tests** | **I** | **C** | **R** | **A/R** | **I** |
| **Approve migration promotion** | **A** | **R** | **C** | **R** | **C** |
| **Apply migration through pipeline** | **I** | **C** | **I** | **A/R** | **I** |
| **Retain evidence pack** | **A** | **C** | **C** | **R** | **C** |

Legend: R = Responsible; A = Accountable; C = Consulted; I = Informed.

## 15. Acceptance Criteria and Ready-to-Use Gate

The Flyway baseline is ready for use only after the following acceptance criteria are satisfied.

AC-01: The initial migration chain creates the required schemas, audit/evidence tables, idempotency registry, outbox skeleton, classification metadata, and bounded-context tables without manual SQL execution.

AC-02: CI starts an empty PostgreSQL database and applies the full migration chain successfully.

AC-03: Flyway validation passes with no checksum mismatch and no unresolved migration.

AC-04: Repository/component tests pass against the migrated database.

AC-05: RLS and tenant isolation tests pass where applicable.

AC-06: Seed/reference data is deterministic, owner-approved, classified, and effective-dated where required.

AC-07: PR/MR contains AVCI Data Change Summary, migration evidence header, test results, and reviewer approvals.

AC-08: Deployment pipeline can apply the migration to DEV/INT without manual database mutation.

AC-09: Evidence pack captures Flyway logs, checksums, migration versions, approver, trace_id, and smoke test results.

AC-10: Forward-fix or reversibility plan exists for every migration that changes behavior, constraints, access, or data shape.

## 16. Anti-Patterns and Rejected Practices

| **Rejected Practice** | **Why It Is Bad** | **Required Correction** |
| --- | --- | --- |
| **Create tables manually, then adopt Flyway later** | **Creates undocumented baseline and future checksum/drift problems.** | **Create schema through Flyway from an empty database.** |
| **Use setup.sql outside source control** | **Cannot be audited or reproduced.** | **Commit versioned migration with evidence header.** |
| **Use baselineOnMigrate=true for greenfield** | **Hides pre-existing objects and normalizes drift.** | **Keep false for greenfield; use only controlled legacy adoption.** |
| **Edit applied migration file after merge** | **Breaks checksum trust and auditability.** | **Create a new corrective migration.** |
| **Place secrets in migration or config** | **Exposes credentials in Git/logs/prompts.** | **Use Vault/approved secret manager.** |
| **Load real production data as seed data** | **Violates classification and privacy controls.** | **Use synthetic or owner-approved controlled reference data.** |
| **Cross-context table update** | **Violates DDD ownership and least privilege.** | **Use API, event, projection, or governed integration.** |
| **Production Flyway clean** | **Destroys controlled data and evidence.** | **Use forward-fix, restore, or CAB-approved recovery.** |

## 17. Implementation Roadmap

| **Phase** | **Activity** | **Owner** | **Exit Evidence** |
| --- | --- | --- | --- |
| **F0** | **Confirm bounded-context schema ownership and initial data classification.** | **Solutions Architect / DBA** | **Schema ownership matrix.** |
| **F1** | **Create Flyway repository baseline and migration naming convention.** | **DevSecOps / Dev Lead** | **Repository path and sample migration.** |
| **F2** | **Create initial migration chain for schemas, audit, idempotency, outbox, and reference data.** | **DBA / Developers** | **Migration PR and schema diff.** |
| **F3** | **Implement CI clean-migrate, validation, repository, RLS, idempotency, and outbox tests.** | **QA / DevSecOps** | **CI evidence report.** |
| **F4** | **Apply to DEV/INT through approved pipeline.** | **DevSecOps / DBA** | **Flyway logs, checksums, smoke tests.** |
| **F5** | **Review adoption and promote as mandatory baseline for all future database changes.** | **Architecture Board** | **Approval record and onboarding note.** |

## 18. AVCI Compliance Summary

| **AVCI Element** | **How This Guide Satisfies It** | **Evidence** |
| --- | --- | --- |
| **Attributable** | **Each migration has owner, ticket/ADR, bounded context, reviewer, and approver.** | **Migration header, PR/MR, CODEOWNERS approval.** |
| **Verifiable** | **CI applies migrations to empty PostgreSQL and runs schema, repository, RLS, idempotency, outbox, and seed tests.** | **CI report, Flyway logs, test evidence.** |
| **Classifiable** | **Schemas, tables, seed data, RLS policies, and evidence records include classification and handling expectations.** | **Data catalog, migration header, security review.** |
| **Improvable** | **Future changes proceed by new migrations, forward-fix plans, evidence review, and controlled backlog/ADR updates.** | **Forward-fix migration, improvement tickets, audit evidence.** |

## Appendix A. Migration Header Template

-- AIRA Migration Evidence

-- ticket: AIRA-DB-0001

-- owner: database-architecture

-- bounded_context: <context-name>

-- classification: INTERNAL | CONFIDENTIAL | RESTRICTED

-- purpose: <why this migration exists>

-- source_ref: <PR/MR, ADR/TDL, backlog item>

-- principle_impact: EDP-03 bounded_context, EDP-06 idempotency, EDP-12 observability, EDP-20 AVCI

-- architecture_boundary_impact: <schema/service/port/adapter affected>

-- security_posture_impact: <RLS/grants/classification/secrets/access impact>

-- verification: clean_migrate, repository_component_test, rls_negative_test, seed_determinism_test

-- reversibility: forward_fix=<planned migration or approach>

-- reviewer: <DBA/security/data owner>

-- notes: <constraints, deployment considerations, lock risk, data impact>

## Appendix B. Sample Initial DDL Migration

-- AIRA Migration Evidence

-- ticket: AIRA-DB-0001

-- owner: database-architecture

-- bounded_context: document

-- classification: INTERNAL

-- purpose: Create initial document bounded-context schema and document table

-- verification: clean_migrate, repository_component_test, constraint_negative_test

-- reversibility: forward_fix=V202605201030__adjust_document_schema_forward_fix.sql

CREATE SCHEMA IF NOT EXISTS aira_document;

CREATE TABLE aira_document.document (

document_id UUID PRIMARY KEY,

tenant_id UUID NOT NULL,

reference_id VARCHAR(100) NOT NULL,

status VARCHAR(30) NOT NULL,

classification VARCHAR(30) NOT NULL,

created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

created_by VARCHAR(100) NOT NULL,

updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),

updated_by VARCHAR(100) NOT NULL,

row_version INTEGER NOT NULL DEFAULT 0,

trace_id VARCHAR(100) NOT NULL,

CONSTRAINT uq_document_tenant_reference UNIQUE (tenant_id, reference_id),

CONSTRAINT ck_document_status CHECK (status IN ('DRAFT', 'ACTIVE', 'ARCHIVED')),

CONSTRAINT ck_document_classification CHECK (classification IN ('PUBLIC', 'INTERNAL', 'CONFIDENTIAL', 'RESTRICTED'))

);

CREATE INDEX idx_document_tenant_status

ON aira_document.document (tenant_id, status);

COMMENT ON TABLE aira_document.document IS

'AIRA governed document registry table. Created through Flyway baseline migration.';

## Appendix C. Pull Request / Merge Request Data Change Summary

## AIRA Data Change Summary

Migration Version(s):

Bounded Context / Schema:

Data Classification:

Ticket / ADR / TDL Reference:

Owner:

### Attributable

Who requested and owns this database change?

Which backlog item, ADR, TDL, or defect authorizes it?

### Verifiable

clean_migrate result:

Flyway validate result:

Repository/component tests:

RLS / tenant tests:

Idempotency / outbox tests:

Seed determinism tests:

### Classifiable

Tables / columns / seed rows affected:

Classification impact:

Retention / logging / prompt eligibility impact:

### Improvable

Forward-fix or reversibility plan:

Monitoring / smoke query:

Future improvement or cleanup item:

### Design Principle Impact

SOLID / Clean Architecture / DDD / Ports and Adapters:

Idempotency / Determinism:

Security / Observability:

Reversibility / Rollbackability:

## Appendix D. Flyway Command Reference

# Local or CI validation examples only. Secrets must come from approved secret manager.

flyway info

flyway validate

flyway migrate

# Disposable local/CI database only; never production.

flyway clean

flyway migrate

# Maven plugin example

./mvnw -DskipTests=false flyway:migrate test

# Spring Boot application startup should validate migration history before serving protected traffic.
