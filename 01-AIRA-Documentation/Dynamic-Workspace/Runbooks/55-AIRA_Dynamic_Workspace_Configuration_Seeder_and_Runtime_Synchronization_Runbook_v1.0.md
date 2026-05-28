---
document_id: "AIRA-DOC-055"
title: "AIRA Dynamic Workspace Configuration Seeder and Runtime Synchronization Runbook"
version: "v1.0"
status: "current"
source_file: "55-AIRA_Dynamic_Workspace_Configuration_Seeder_and_Runtime_Synchronization_Runbook_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Runbooks"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - configuration
  - runbook
---

# AIRA Dynamic Workspace Configuration Seeder and Runtime Synchronization Runbook

**AIRA
AI-Native Enterprise Platform**

**AIRA Dynamic Workspace Configuration Seeder and Runtime Synchronization Runbook**

_Operational Runbook for Git-Managed Configuration, PostgreSQL Loading, Redis Synchronization, and Cache Invalidation_

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-055** |
| **Version** | **v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **DRAFT FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Platform Engineering; AI Engineering** |
| **Primary Audience** | **Solutions Architects, Software Developers, Frontend Developers, Backend Developers, DevSecOps, QA/SDET, Security, Product Owners, Internal Audit** |
| **Effective Date** | **Upon ARB / CAB approval** |
| **Review Cadence** | **Quarterly; unscheduled on material Dynamic Workspace, MicroFunction, security, AI, workflow, rendering, database, or DevSecOps change** |
| **Companion Documents** | **41 Dynamic User Workspace Framework; 42 Composable Experience Framework; 43 Multimodal AI Assistant Panel Standard; 44 Next.js Rendering Strategy; 45 Mortgage Experience Pack; 46 Configuration and Runtime Cache; 47-52 Developer Implementation companion standards** |

## 1. Executive Summary

This runbook defines how AIRA workspace configuration moves from Git-managed YAML/JSON files into PostgreSQL authoritative tables and Redis/Valkey derivative runtime cache. It supports on-the-fly updates while preserving governance, validation, rollback, and AVCI evidence.

The core rule is: Git and PostgreSQL define truth. Redis accelerates resolved views. No direct Redis mutation is allowed for authoritative changes.

## 2. Configuration Sources

| **Source** | **Purpose** | **Authority** |
| --- | --- | --- |
| **Git config repository** | **Bootstrap and approved configuration files.** | **Authoritative after CI/CD promotion.** |
| **PostgreSQL** | **Runtime authoritative state for active versions.** | **Authoritative.** |
| **Redis/Valkey** | **Resolved workspace and metadata cache.** | **Derivative only.** |
| **OPA bundle** | **Policy-as-code.** | **Authoritative for policy decisions.** |
| **Feature flag provider** | **Rollout and kill-switch control.** | **Authoritative for feature state.** |

## 3. Recommended Repository Structure

config/workspace/workspaces/
config/workspace/screens/
config/workspace/layouts/
config/experience/blocks/
config/experience/packs/
config/rendering/rendering-policies.yaml
config/components/component-catalog.yaml
config/capability/capability-bindings.yaml
config/ai/ai-capabilities.yaml
config/policy/opa/
config/evidence/evidence-profiles.yaml
config/environments/dev.yaml
config/environments/uat.yaml
config/environments/prod.yaml

## 4. Seeder Pipeline

| **Step** | **Action** | **Evidence** |
| --- | --- | --- |
| **S1** | **Validate YAML/JSON schema.** | **Schema validation report.** |
| **S2** | **Run security and classification checks.** | **Security scan and classification result.** |
| **S3** | **Run OPA policy tests.** | **Policy test report.** |
| **S4** | **Calculate config hash and signature.** | **Hash/signature record.** |
| **S5** | **Load DRAFT or APPROVED records into PostgreSQL.** | **Seeder run ID.** |
| **S6** | **Activate through approved workflow.** | **Approval and activation event.** |
| **S7** | **Publish config.changed event.** | **Event ID and trace ID.** |
| **S8** | **Invalidate Redis keys.** | **Cache invalidation evidence.** |
| **S9** | **Verify runtime resolution.** | **Smoke test result.** |

## 5. Runtime Synchronization Flow

sequenceDiagram
 autonumber
 participant Git as Git Config
 participant CI as CI/CD Validator
 participant Seeder as Config Seeder
 participant PG as PostgreSQL
 participant Bus as Event Bus
 participant Cache as Redis/Valkey
 participant Resolver as Workspace Resolver
 Git->>CI: Merge approved config
 CI->>Seeder: Run validated import
 Seeder->>PG: Upsert versioned records
 Seeder->>Bus: Publish config.changed
 Bus->>Cache: Invalidate affected keys
 Resolver->>PG: Reload authoritative data
 Resolver->>Cache: Store derivative resolved view

## 6. Cache Key Strategy

Use versioned and hash-aware keys such as: `aira:ui:workspace:{tenant}:{workspaceCode}:v{version}`, `aira:ui:resolved-workspace:{tenant}:{userHash}:{workspaceCode}:{policyHash}:{layoutHash}`, `aira:ui:component:{componentKey}:v{version}`, and `aira:ui:ai-capability:{code}`.

## 7. Invalidation Rules

Invalidate cache when workspace template, screen template, layout, component catalog, component schema, capability binding, rendering policy, AI capability, OPA policy, feature flag, role assignment, user preference, or evidence profile changes.

## 8. Rollback Procedure

Identify failed active version.

Confirm previous approved rollback target.

Mark failed version ROLLED_BACK or SUPERSEDED.

Reactivate previous approved version.

Publish config.changed rollback event.

Invalidate Redis keys.

Run smoke tests.

Record evidence and root-cause backlog item.

## 9. Operational Controls

No direct Redis writes from admin UI; no manual SQL changes in production; all seed changes through Flyway/config importer; all production config changes require approval; cache loss must not break correctness.

## 10. Acceptance Criteria

Seeder is deterministic and idempotent.

Config hash matches database record.

Redis keys refresh after activation.

Rollback is tested.

Runtime resolver works with Redis unavailable.

All changes produce audit and evidence.

## 11. AVCI Compliance Summary

| **AVCI** | **Evidence** |
| --- | --- |
| **Attributable** | **Git commit, owner, approver, seeder run, and config hash identify source.** |
| **Verifiable** | **Schema, policy, smoke, cache, and rollback tests prove correctness.** |
| **Classifiable** | **Config records carry classification and handling rules.** |
| **Improvable** | **Sync failures, stale cache, and incidents feed runbook improvement.** |
