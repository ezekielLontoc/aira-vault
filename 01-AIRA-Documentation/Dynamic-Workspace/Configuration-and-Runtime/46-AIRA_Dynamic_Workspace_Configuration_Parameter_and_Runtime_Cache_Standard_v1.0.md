---
document_id: "AIRA-DOC-046"
title: "AIRA Dynamic Workspace Configuration Parameter and Runtime Cache Standard"
version: "v1.0"
status: "current"
source_file: "46-AIRA_Dynamic_Workspace_Configuration_Parameter_and_Runtime_Cache_Standard_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Configuration-and-Runtime"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - configuration
  - runtime-cache
---

# AIRA Dynamic Workspace Configuration Parameter and Runtime Cache Standard

**AIRA**

AI-Native Enterprise Platform

**Dynamic Workspace Configuration, Parameter, and Runtime Cache Standard**

Database Schema | External Configuration | Redis Runtime Cache | On-the-Fly Update Governance | AVCI Evidence

**Mandatory Rule: PostgreSQL and Git-managed configuration define truth. Redis/Valkey accelerates truth. Redis must never become the truth.**

## Document Control

| **Property** | **Value** |
| --- | --- |
| **Document Title** | **AIRA Dynamic Workspace Configuration, Parameter, and Runtime Cache Standard** |
| **Document ID** | **AIRA-DOC-046** |
| **Version** | **v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **DRAFT FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Platform Engineering; AI Engineering; Database Administration** |
| **Primary Audience** | **Enterprise Architects, Developers, Frontend Developers, Backend Developers, DBAs, DevSecOps, Security, QA/SDET, Product Owners, Business Administrators, Internal Audit** |
| **Effective Date** | **Upon ARB / CAB approval** |
| **Review Cadence** | **Quarterly; unscheduled on material workspace, configuration, MicroFunction, security, AI, rendering, or cache change** |
| **Supersedes** | **New document** |
| **Companion Documents** | **41 Dynamic User Workspace Framework v1.1; 42 Composable Experience Framework v1.0; 43 Multimodal AI Assistant Panel Standard v1.0; 44 Next.js Rendering Strategy and Composable UI Standard v1.0; 45 Mortgage Experience Pack Reference Implementation v1.0** |
| **Primary References** | **01 AVCI v3.0; 02 Engineering Blueprint v5.0; 03 Developer Guide v4.0; 04 Technology Stack v9.0; 05 Information Nervous System v4.0; 10 MicroFunction Framework v3.0; 14 ADR/TDL v2.0; 16 Database/Flyway Standard; 17 Security Standard** |

## Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Configuration Architecture Overview

4. Authoritative Database Schema

5. External Configuration Outside the Database

6. Redis / Valkey Runtime Cache Design

7. On-the-Fly Update Governance

8. Parameter Categories and Runtime Resolution

9. Validation, Security, and Fail-Closed Controls

10. Operational Procedures

11. Testing and Architecture Fitness Functions

12. Implementation Roadmap

13. RACI Matrix

14. AVCI Compliance Summary

15. Appendices

## 1. Executive Summary

Version 1.0 of this standard defines the authoritative configuration, parameter, database, external configuration, and runtime cache model required to support the AIRA Dynamic User Workspace Framework and the broader AIRA Composable Experience Framework. It converts the concept of dynamic workspaces into implementable engineering controls: tables, parameters, configuration files, cache keys, validation rules, and change-management procedures.

The framework is designed so AIRA can support bigger future systems without rebuilding the frontend or backend foundation. New business systems should be assembled from approved building blocks: workspace templates, screen templates, component catalog entries, rendering policies, capability bindings, MicroFunction transactions, AI capability definitions, workflow bindings, and evidence profiles.

The database stores authoritative configuration. Git-managed YAML/JSON files provide controlled bootstrap and environment-specific configuration. Redis/Valkey stores only resolved derivative runtime views for fast lookup and must not be used as a source of truth.

| **Configuration Layer** | **Purpose** | **Authority** |
| --- | --- | --- |
| **PostgreSQL tables** | **Authoritative source for templates, components, rendering policies, experience blocks, capability bindings, AI capabilities, workflow bindings, evidence profiles, and user layout preferences.** | **Authoritative** |
| **Git-managed external configuration** | **Bootstrap/default configuration, seed data, OPA policies, feature flags, prompt templates, environment overlays, and controlled config imports.** | **Authoritative when promoted through Git/CI/CD** |
| **Redis/Valkey runtime cache** | **Fast resolved runtime lookup of policy-filtered workspace, component metadata, AI capability metadata, and capability binding metadata.** | **Derivative cache only** |

**Final Position: **Update dynamically, but never bypass governance. Redis accelerates. PostgreSQL authorizes truth. Git preserves source. OPA enforces policy. MicroFunctions execute business capability. AVCI proves trust.

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

This standard defines how AIRA stores, validates, loads, caches, invalidates, and governs dynamic workspace configuration and runtime parameters. It provides implementation-ready database tables, external configuration patterns, Redis/Valkey cache design, on-the-fly update flows, and AVCI evidence requirements.

### 2.2 In Scope

workspace templates and screen templates

component catalog and component schemas

experience blocks and experience packs

rendering policies for SSR, CSR, ISR, PPR, and streaming

capability bindings to APIs and MicroFunction transactions

AI capabilities and multimodal assistant panel configuration

workflow bindings to Temporal and Flowable

layout definitions and user personalization overlays

policy bindings, feature flags, evidence profiles, and cache invalidation

Redis/Valkey cache keys, TTLs, payload rules, and derivative runtime views

### 2.3 Out of Scope

using Redis/Valkey as source of truth

storing raw secrets, raw PII, payment credentials, raw KYC files, or unrestricted AI prompts in Redis

arbitrary frontend code execution from database configuration

arbitrary backend API invocation from user-defined configuration

direct SQL authored by business users or stored as executable layout configuration

bypassing RBAC, SBAC, ABAC, OPA, workflow, MicroFunction, audit, or evidence controls

## 3. Configuration Architecture Overview

The AIRA configuration architecture follows a controlled source-to-runtime pipeline. Git-managed configuration is validated through CI/CD, loaded into PostgreSQL through Flyway or a governed configuration importer, resolved by backend services, filtered through policy, then cached as derivative runtime views.

Git-managed configuration
 -> CI/CD validation
 -> Flyway / Config Seeder / Config Importer
 -> PostgreSQL authoritative tables
 -> Workspace Resolver / Capability Resolver / AI Resolver
 -> OPA / RBAC / SBAC / ABAC policy filtering
 -> Redis/Valkey derivative cache
 -> Next.js Runtime Workspace Renderer

| **Component** | **Responsibility** | **Governance Rule** |
| --- | --- | --- |
| **Git / external config** | **Stores controlled YAML/JSON source configuration.** | **Changes require PR/MR, review, CI validation, and AVCI summary.** |
| **Flyway / config importer** | **Creates schema and imports controlled seed/config data.** | **No manual production DDL or unmanaged direct table editing.** |
| **PostgreSQL** | **Authoritative configuration and preference store.** | **All active runtime configuration must be reconstructable from PostgreSQL and Git.** |
| **Workspace Resolver** | **Builds effective user workspace based on templates, preferences, policies, features, and classification.** | **Must fail closed on missing policy, invalid schema, or unknown classification.** |
| **Redis/Valkey** | **Stores derivative resolved runtime views.** | **Cache loss must degrade latency only, not correctness.** |
| **Next.js Renderer** | **Renders the resolved workspace and interactive CSR islands.** | **May render only approved backend-filtered components and actions.** |

## 4. Authoritative Database Schema

All objects in this section are recommended under schema aira_ui. Exact physical naming and constraints may be adapted by the DBA, but the semantic fields, evidence fields, versioning, and fail-closed behavior must be preserved.

CREATE SCHEMA IF NOT EXISTS aira_ui;

| **Table** | **Purpose** |
| --- | --- |
| **aira_ui.workspace_template** | **Defines workspace containers such as Mortgage Workspace, Collections Workspace, Admin Workspace.** |
| **aira_ui.screen_template** | **Defines screens/pages within a workspace.** |
| **aira_ui.component_catalog** | **Registry of allowed frontend components/widgets.** |
| **aira_ui.component_schema** | **Versioned schema for component props/config.** |
| **aira_ui.experience_block** | **Reusable business/UI building block.** |
| **aira_ui.experience_pack** | **Domain pack such as Mortgage, KYC, Payment, Title Release.** |
| **aira_ui.rendering_policy** | **SSR/CSR/ISR/PPR/streaming/cache policy.** |
| **aira_ui.capability_binding** | **Maps UI components/actions to backend APIs and MicroFunctions.** |
| **aira_ui.ai_capability** | **Defines approved AI prompt capabilities and multimodal behavior.** |
| **aira_ui.ai_assistant_panel_config** | **Defines toggleable AI assistant panel behavior per workspace/screen.** |
| **aira_ui.workflow_binding** | **Maps UI actions to Temporal/Flowable workflows.** |
| **aira_ui.layout_definition** | **Defines screen layout and widget placement.** |
| **aira_ui.user_layout_preference** | **Stores user-specific personalization overlay.** |
| **aira_ui.role_layout_assignment** | **Assigns workspace/screen/layout to roles, skills, departments, tenants.** |
| **aira_ui.policy_binding** | **Links screens/components/actions to OPA/RBAC/SBAC/ABAC rules.** |
| **aira_ui.feature_flag_binding** | **Controls rollout, activation, deactivation, and pilot scope.** |
| **aira_ui.evidence_profile** | **Defines required audit/evidence for each component/action.** |
| **aira_ui.multimodal_artifact_registry** | **Tracks AI-generated text, image, voice, video, document, and references.** |
| **aira_ui.config_change_event** | **Tracks configuration changes and cache invalidation events.** |

### 4.1 Common Mandatory Columns

Most configuration tables must include the following fields or their equivalent. These fields support ownership, versioning, classification, activation, rollback, and AVCI evidence.

id UUID PRIMARY KEY,
tenant_id VARCHAR(64),
code VARCHAR(128) NOT NULL,
name VARCHAR(255) NOT NULL,
description TEXT,
version INTEGER NOT NULL DEFAULT 1,
status VARCHAR(32) NOT NULL,
classification VARCHAR(32) NOT NULL,
classification_ceiling VARCHAR(32),
owner VARCHAR(128) NOT NULL,
created_by VARCHAR(128) NOT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_by VARCHAR(128),
updated_at TIMESTAMP,
approved_by VARCHAR(128),
approved_at TIMESTAMP,
effective_from TIMESTAMP,
effective_to TIMESTAMP,
policy_ref VARCHAR(255),
evidence_ref VARCHAR(255),
source_ref VARCHAR(255),
config_hash VARCHAR(128),
signature_ref VARCHAR(255),
rollback_ref UUID,
is_active BOOLEAN NOT NULL DEFAULT FALSE

| **Status** | **Meaning** |
| --- | --- |
| **DRAFT** | **Initial editable state; not runtime-authoritative.** |
| **FOR_REVIEW** | **Submitted for maker-checker / architecture / security review.** |
| **APPROVED** | **Accepted but not yet active.** |
| **ACTIVE** | **Runtime eligible.** |
| **INACTIVE** | **Disabled from runtime.** |
| **SUPERSEDED** | **Replaced by newer version.** |
| **REJECTED** | **Failed review.** |
| **DEPRECATED** | **Existing use only; no new assignment.** |
| **ROLLED_BACK** | **Reverted to previous approved version.** |

### 4.2 Core Table DDL Drafts

#### Workspace Template

CREATE TABLE aira_ui.workspace_template (
 id UUID PRIMARY KEY,
 tenant_id VARCHAR(64),
 workspace_code VARCHAR(128) NOT NULL,
 workspace_name VARCHAR(255) NOT NULL,
 workspace_type VARCHAR(64) NOT NULL,
 description TEXT,
 default_route VARCHAR(255),
 default_screen_code VARCHAR(128),
 allowed_rendering_policy_code VARCHAR(128),
 version INTEGER NOT NULL DEFAULT 1,
 status VARCHAR(32) NOT NULL,
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32),
 owner VARCHAR(128) NOT NULL,
 policy_ref VARCHAR(255),
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 rollback_ref UUID,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 updated_by VARCHAR(128),
 updated_at TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 is_active BOOLEAN NOT NULL DEFAULT FALSE,
 UNIQUE (tenant_id, workspace_code, version)
);

#### Screen Template

CREATE TABLE aira_ui.screen_template (
 id UUID PRIMARY KEY,
 workspace_template_id UUID NOT NULL REFERENCES aira_ui.workspace_template(id),
 screen_code VARCHAR(128) NOT NULL,
 screen_name VARCHAR(255) NOT NULL,
 route_path VARCHAR(255) NOT NULL,
 screen_type VARCHAR(64) NOT NULL,
 rendering_policy_code VARCHAR(128) NOT NULL,
 default_layout_code VARCHAR(128),
 ai_panel_enabled BOOLEAN NOT NULL DEFAULT FALSE,
 personalization_allowed BOOLEAN NOT NULL DEFAULT TRUE,
 version INTEGER NOT NULL DEFAULT 1,
 status VARCHAR(32) NOT NULL,
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32),
 policy_ref VARCHAR(255),
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 is_active BOOLEAN NOT NULL DEFAULT FALSE,
 UNIQUE (workspace_template_id, screen_code, version)
);

#### Component Catalog

CREATE TABLE aira_ui.component_catalog (
 id UUID PRIMARY KEY,
 component_key VARCHAR(128) NOT NULL,
 component_name VARCHAR(255) NOT NULL,
 component_version VARCHAR(64) NOT NULL,
 component_type VARCHAR(64) NOT NULL,
 runtime_allowed BOOLEAN NOT NULL DEFAULT TRUE,
 admin_builder_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 personalization_allowed BOOLEAN NOT NULL DEFAULT TRUE,
 frontend_package_ref VARCHAR(255),
 schema_code VARCHAR(128) NOT NULL,
 default_rendering_policy_code VARCHAR(128),
 default_evidence_profile_code VARCHAR(128),
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32) NOT NULL,
 required_capabilities JSONB,
 required_roles JSONB,
 required_skills JSONB,
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 policy_ref VARCHAR(255),
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (component_key, component_version)
);

#### Experience Block

CREATE TABLE aira_ui.experience_block (
 id UUID PRIMARY KEY,
 block_code VARCHAR(128) NOT NULL,
 block_name VARCHAR(255) NOT NULL,
 block_type VARCHAR(64) NOT NULL,
 bounded_context VARCHAR(128) NOT NULL,
 component_key VARCHAR(128) NOT NULL,
 component_version VARCHAR(64) NOT NULL,
 default_rendering_policy_code VARCHAR(128),
 default_capability_code VARCHAR(128),
 default_evidence_profile_code VARCHAR(128),
 required_roles JSONB,
 required_skills JSONB,
 required_attributes JSONB,
 input_modes JSONB,
 output_modes JSONB,
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32) NOT NULL,
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 policy_ref VARCHAR(255),
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (block_code, component_version)
);

#### Experience Pack

CREATE TABLE aira_ui.experience_pack (
 id UUID PRIMARY KEY,
 pack_code VARCHAR(128) NOT NULL,
 pack_name VARCHAR(255) NOT NULL,
 pack_domain VARCHAR(128) NOT NULL,
 pack_version VARCHAR(64) NOT NULL,
 description TEXT,
 blocks JSONB NOT NULL,
 screens JSONB,
 workflows JSONB,
 microfunctions JSONB,
 ai_capabilities JSONB,
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32),
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 policy_ref VARCHAR(255),
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (pack_code, pack_version)
);

#### Rendering Policy

CREATE TABLE aira_ui.rendering_policy (
 id UUID PRIMARY KEY,
 rendering_policy_code VARCHAR(128) NOT NULL,
 rendering_policy_name VARCHAR(255) NOT NULL,
 default_mode VARCHAR(32) NOT NULL,
 allowed_modes JSONB NOT NULL,
 prohibited_modes JSONB,
 cache_policy VARCHAR(64) NOT NULL,
 revalidate_seconds INTEGER,
 streaming_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 ppr_ready BOOLEAN NOT NULL DEFAULT FALSE,
 csr_island_allowed BOOLEAN NOT NULL DEFAULT TRUE,
 sensitive_data_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 user_specific BOOLEAN NOT NULL DEFAULT TRUE,
 classification_ceiling VARCHAR(32),
 fail_closed BOOLEAN NOT NULL DEFAULT TRUE,
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (rendering_policy_code)
);

#### Capability Binding

CREATE TABLE aira_ui.capability_binding (
 id UUID PRIMARY KEY,
 capability_code VARCHAR(128) NOT NULL,
 capability_name VARCHAR(255) NOT NULL,
 component_key VARCHAR(128),
 action_code VARCHAR(128),
 api_method VARCHAR(16),
 api_path VARCHAR(512),
 openapi_contract_ref VARCHAR(255),
 microfunction_transaction_code VARCHAR(128),
 workflow_binding_code VARCHAR(128),
 idempotency_required BOOLEAN NOT NULL DEFAULT FALSE,
 safe_retry_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 required_roles JSONB,
 required_skills JSONB,
 required_attributes JSONB,
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32),
 policy_ref VARCHAR(255),
 evidence_profile_code VARCHAR(128),
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (capability_code)
);

#### AI Capability

CREATE TABLE aira_ui.ai_capability (
 id UUID PRIMARY KEY,
 ai_capability_code VARCHAR(128) NOT NULL,
 ai_capability_name VARCHAR(255) NOT NULL,
 ai_capability_type VARCHAR(64) NOT NULL,
 input_modes JSONB NOT NULL,
 output_modes JSONB NOT NULL,
 model_route_policy_ref VARCHAR(255) NOT NULL,
 prompt_template_ref VARCHAR(255),
 guardrail_policy_ref VARCHAR(255) NOT NULL,
 retrieval_policy_ref VARCHAR(255),
 allowed_tools JSONB,
 prohibited_tools JSONB,
 human_approval_required_for JSONB,
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32),
 evidence_profile_code VARCHAR(128),
 retention_policy_ref VARCHAR(255),
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (ai_capability_code)
);

#### AI Assistant Panel Config

CREATE TABLE aira_ui.ai_assistant_panel_config (
 id UUID PRIMARY KEY,
 panel_code VARCHAR(128) NOT NULL,
 panel_name VARCHAR(255) NOT NULL,
 workspace_template_id UUID REFERENCES aira_ui.workspace_template(id),
 screen_template_id UUID REFERENCES aira_ui.screen_template(id),
 toggle_enabled BOOLEAN NOT NULL DEFAULT TRUE,
 default_open BOOLEAN NOT NULL DEFAULT FALSE,
 dock_position VARCHAR(32) NOT NULL DEFAULT 'RIGHT',
 allowed_input_modes JSONB NOT NULL,
 allowed_output_modes JSONB NOT NULL,
 ai_capabilities JSONB NOT NULL,
 context_injection_allowed BOOLEAN NOT NULL DEFAULT TRUE,
 selected_record_context_allowed BOOLEAN NOT NULL DEFAULT TRUE,
 file_upload_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 voice_input_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 voice_output_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 image_generation_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 video_generation_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32),
 policy_ref VARCHAR(255),
 evidence_profile_code VARCHAR(128),
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 config_hash VARCHAR(128) NOT NULL,
 evidence_ref VARCHAR(255),
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (panel_code)
);

#### Workflow Binding

CREATE TABLE aira_ui.workflow_binding (
 id UUID PRIMARY KEY,
 workflow_binding_code VARCHAR(128) NOT NULL,
 workflow_engine VARCHAR(64) NOT NULL,
 workflow_key VARCHAR(255) NOT NULL,
 workflow_version VARCHAR(64),
 action_code VARCHAR(128),
 capability_code VARCHAR(128),
 human_approval_required BOOLEAN NOT NULL DEFAULT FALSE,
 maker_checker_required BOOLEAN NOT NULL DEFAULT FALSE,
 sla_policy_ref VARCHAR(255),
 classification VARCHAR(32) NOT NULL,
 policy_ref VARCHAR(255),
 evidence_profile_code VARCHAR(128),
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (workflow_binding_code)
);

#### Layout Definition

CREATE TABLE aira_ui.layout_definition (
 id UUID PRIMARY KEY,
 layout_code VARCHAR(128) NOT NULL,
 workspace_template_id UUID NOT NULL REFERENCES aira_ui.workspace_template(id),
 screen_template_id UUID NOT NULL REFERENCES aira_ui.screen_template(id),
 layout_version INTEGER NOT NULL,
 layout_json JSONB NOT NULL,
 responsive_rules_json JSONB,
 mandatory_components_json JSONB,
 optional_components_json JSONB,
 personalization_allowed BOOLEAN NOT NULL DEFAULT TRUE,
 admin_only BOOLEAN NOT NULL DEFAULT FALSE,
 classification VARCHAR(32) NOT NULL,
 classification_ceiling VARCHAR(32),
 policy_ref VARCHAR(255),
 evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 rollback_ref UUID,
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 is_active BOOLEAN NOT NULL DEFAULT FALSE,
 UNIQUE (layout_code, layout_version)
);

#### User Layout Preference

CREATE TABLE aira_ui.user_layout_preference (
 id UUID PRIMARY KEY,
 user_id_hash VARCHAR(128) NOT NULL,
 tenant_id VARCHAR(64) NOT NULL,
 workspace_template_id UUID NOT NULL REFERENCES aira_ui.workspace_template(id),
 screen_template_id UUID NOT NULL REFERENCES aira_ui.screen_template(id),
 base_layout_code VARCHAR(128) NOT NULL,
 base_layout_version INTEGER NOT NULL,
 preference_version INTEGER NOT NULL,
 preference_json JSONB NOT NULL,
 classification VARCHAR(32) NOT NULL,
 config_hash VARCHAR(128) NOT NULL,
 evidence_ref VARCHAR(255),
 status VARCHAR(32) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 updated_by VARCHAR(128),
 updated_at TIMESTAMP,
 UNIQUE (user_id_hash, tenant_id, workspace_template_id, screen_template_id, preference_version)
);

#### Policy Binding

CREATE TABLE aira_ui.policy_binding (
 id UUID PRIMARY KEY,
 policy_binding_code VARCHAR(128) NOT NULL,
 policy_name VARCHAR(255) NOT NULL,
 opa_package VARCHAR(255) NOT NULL,
 opa_rule VARCHAR(255) NOT NULL,
 policy_version VARCHAR(64) NOT NULL,
 applies_to_type VARCHAR(64) NOT NULL,
 applies_to_code VARCHAR(128) NOT NULL,
 required_roles JSONB,
 required_skills JSONB,
 required_attributes JSONB,
 classification_ceiling VARCHAR(32),
 fail_closed BOOLEAN NOT NULL DEFAULT TRUE,
 status VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 test_evidence_ref VARCHAR(255),
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (policy_binding_code)
);

#### Evidence Profile

CREATE TABLE aira_ui.evidence_profile (
 id UUID PRIMARY KEY,
 evidence_profile_code VARCHAR(128) NOT NULL,
 evidence_profile_name VARCHAR(255) NOT NULL,
 required_audit_events JSONB NOT NULL,
 required_trace_fields JSONB,
 required_metric_fields JSONB,
 retention_policy_ref VARCHAR(255),
 pii_redaction_required BOOLEAN NOT NULL DEFAULT TRUE,
 prompt_capture_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 raw_file_capture_allowed BOOLEAN NOT NULL DEFAULT FALSE,
 classification VARCHAR(32) NOT NULL,
 owner VARCHAR(128) NOT NULL,
 status VARCHAR(32) NOT NULL,
 config_hash VARCHAR(128) NOT NULL,
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 UNIQUE (evidence_profile_code)
);

#### Multimodal Artifact Registry

CREATE TABLE aira_ui.multimodal_artifact_registry (
 id UUID PRIMARY KEY,
 artifact_code VARCHAR(128) NOT NULL,
 artifact_type VARCHAR(64) NOT NULL,
 source_prompt_id VARCHAR(128),
 ai_capability_code VARCHAR(128),
 model_route_ref VARCHAR(255),
 guardrail_result_ref VARCHAR(255),
 input_modes JSONB,
 output_mode VARCHAR(64) NOT NULL,
 storage_ref VARCHAR(512),
 reference_refs JSONB,
 content_hash VARCHAR(128),
 classification VARCHAR(32) NOT NULL,
 retention_policy_ref VARCHAR(255),
 approval_status VARCHAR(32),
 created_by VARCHAR(128) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 approved_by VARCHAR(128),
 approved_at TIMESTAMP,
 evidence_ref VARCHAR(255),
 trace_id VARCHAR(128),
 UNIQUE (artifact_code)
);

#### Config Change Event

CREATE TABLE aira_ui.config_change_event (
 id UUID PRIMARY KEY,
 event_code VARCHAR(128) NOT NULL,
 event_type VARCHAR(64) NOT NULL,
 affected_table VARCHAR(128) NOT NULL,
 affected_code VARCHAR(128) NOT NULL,
 affected_version VARCHAR(64),
 change_action VARCHAR(64) NOT NULL,
 old_config_hash VARCHAR(128),
 new_config_hash VARCHAR(128),
 cache_invalidation_required BOOLEAN NOT NULL DEFAULT TRUE,
 cache_keys JSONB,
 published_to_event_bus BOOLEAN NOT NULL DEFAULT FALSE,
 actor VARCHAR(128) NOT NULL,
 change_reason TEXT,
 approval_ref VARCHAR(255),
 evidence_ref VARCHAR(255),
 trace_id VARCHAR(128),
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

## 5. External Configuration Outside the Database

External configuration should be Git-managed, reviewed, validated, and promoted through CI/CD. It may be loaded into PostgreSQL through Flyway seed scripts, a governed configuration importer, or controlled bootstrap jobs. Direct runtime edits to Redis or production tables are prohibited.

aira-config/
 workspace/
 workspaces/
 mortgage-workspace.yaml
 screens/
 mortgage-dashboard.yaml
 kyc-upload-screen.yaml
 layouts/
 mortgage-dashboard-layout-v1.yaml
 experience/
 blocks/
 mortgage-application-block.yaml
 kyc-document-upload-block.yaml
 packs/
 mortgage-experience-pack-v1.yaml
 rendering/
 rendering-policies.yaml
 components/
 component-catalog.yaml
 component-schemas/
 mortgage-pipeline-widget.schema.json
 ai-assistant-panel.schema.json
 capability/
 capability-bindings.yaml
 ai/
 ai-capabilities.yaml
 ai-assistant-panel-config.yaml
 prompt-templates/
 mortgage-guide-prompt.yaml
 policy/
 opa/
 workspace.rego
 mortgage.rego
 kyc.rego
 policy-bindings.yaml
 feature-flags/
 workspace-feature-flags.yaml
 evidence/
 evidence-profiles.yaml
 environments/
 dev.yaml
 sit.yaml
 uat.yaml
 prod.yaml

### 5.1 Example Workspace Configuration

workspace:
 workspace_code: REAL_PROPERTY_MORTGAGE_WORKSPACE
 workspace_name: Real Property Mortgage Workspace
 workspace_type: BUSINESS_OPERATIONS
 default_route: /workspace/mortgage
 default_screen_code: MORTGAGE_DASHBOARD
 allowed_rendering_policy_code: RP_SECURE_WORKSPACE_SSR
 classification: CONFIDENTIAL
 classification_ceiling: CONFIDENTIAL
 owner: mortgage-product-owner
 status: ACTIVE
 screens:
 - MORTGAGE_DASHBOARD
 - MORTGAGE_APPLICATION
 - KYC_DOCUMENT_UPLOAD
 - PAYMENT_SCHEDULE
 - TITLE_RELEASE_STATUS
 - AI_MORTGAGE_GUIDE

### 5.2 Example Rendering Policy Configuration

rendering_policies:
 - rendering_policy_code: RP_SECURE_WORKSPACE_SSR
 rendering_policy_name: Secure Workspace SSR
 default_mode: SSR
 allowed_modes: [SSR, CSR_ISLAND, STREAMING]
 prohibited_modes: [ISR]
 cache_policy: NO_STORE_FOR_USER_DATA
 revalidate_seconds: null
 streaming_allowed: true
 ppr_ready: true
 csr_island_allowed: true
 sensitive_data_allowed: true
 user_specific: true
 classification_ceiling: CONFIDENTIAL
 fail_closed: true

 - rendering_policy_code: RP_PUBLIC_GUIDE_ISR
 rendering_policy_name: Public Guide ISR
 default_mode: ISR
 allowed_modes: [ISR, STATIC]
 prohibited_modes: [USER_SPECIFIC_SSR]
 cache_policy: REVALIDATE
 revalidate_seconds: 3600
 sensitive_data_allowed: false
 user_specific: false
 classification_ceiling: PUBLIC
 fail_closed: true

### 5.3 Example AI Assistant Panel Configuration

ai_assistant_panel:
 panel_code: AI_MORTGAGE_ASSISTANT_PANEL
 panel_name: AIRA Mortgage AI Assistant
 toggle_enabled: true
 default_open: false
 dock_position: RIGHT
 allowed_input_modes: [TEXT, VOICE, FILE, IMAGE, SCREEN_CONTEXT]
 allowed_output_modes: [TEXT, REFERENCE, CHECKLIST, IMAGE, VOICE, VIDEO, DOCUMENT, WORKFLOW_PROPOSAL]
 ai_capabilities:
 - AI_MORTGAGE_GUIDANCE
 - AI_KYC_DOCUMENT_HELP
 - AI_PAYMENT_GUIDANCE
 - AI_TITLE_RELEASE_GUIDANCE
 context_injection_allowed: true
 selected_record_context_allowed: true
 file_upload_allowed: true
 voice_input_allowed: true
 voice_output_allowed: true
 image_generation_allowed: true
 video_generation_allowed: true
 classification: CONFIDENTIAL
 classification_ceiling: CONFIDENTIAL
 policy_ref: opa.workspace.ai_mortgage_assistant
 evidence_profile_code: AI_ASSISTANT_EVIDENCE

## 6. Redis / Valkey Runtime Cache Design

Redis/Valkey stores only derivative resolved runtime views. The cache is used for speed and must be reconstructable from PostgreSQL and Git-managed configuration. Cache loss must degrade latency only, never correctness.

### 6.1 Prohibited Redis Payloads

secrets, raw credentials, access tokens, refresh tokens, or private keys

raw KYC documents or customer files

payment card data or payment credentials

raw PII or unrestricted customer payloads

authoritative business state or approval decisions

unmasked prompts or Restricted AI outputs

direct SQL or executable scripts

### 6.2 Recommended Cache Keys

| **Cache Key Pattern** | **Purpose** | **TTL** |
| --- | --- | --- |
| **aira:ui:workspace:{tenant}:{workspaceCode}:v{version}** | **Workspace template metadata.** | **1 hour** |
| **aira:ui:screen:{tenant}:{screenCode}:v{version}** | **Screen template metadata.** | **1 hour** |
| **aira:ui:component:{componentKey}:v{version}** | **Component catalog metadata.** | **1 hour** |
| **aira:ui:rendering-policy:{policyCode}** | **Rendering policy metadata.** | **1 hour** |
| **aira:ui:capability:{capabilityCode}** | **Capability binding metadata.** | **30 min** |
| **aira:ui:experience-block:{blockCode}:v{version}** | **Experience block metadata.** | **1 hour** |
| **aira:ui:experience-pack:{packCode}:v{version}** | **Experience pack metadata.** | **1 hour** |
| **aira:ui:ai-capability:{aiCapabilityCode}** | **AI capability metadata.** | **30 min** |
| **aira:ui:ai-panel:{panelCode}** | **AI assistant panel config.** | **30 min** |
| **aira:ui:resolved-workspace:{tenant}:{userHash}:{workspaceCode}:{policyHash}:{layoutHash}** | **Effective policy-filtered workspace for a user.** | **5-15 min** |
| **aira:ui:user-layout:{tenant}:{userHash}:{screenCode}** | **User layout preference overlay.** | **5-15 min** |
| **aira:ui:policy-hash:{tenant}:{workspaceCode}** | **Policy hash used for invalidation.** | **30 min** |

### 6.3 Example Redis Resolved Workspace Payload

{
 "workspaceCode": "REAL_PROPERTY_MORTGAGE_WORKSPACE",
 "screenCode": "MORTGAGE_DASHBOARD",
 "userHash": "usr_hash",
 "tenantId": "BFS",
 "policyHash": "pol_abc123",
 "layoutHash": "lay_def456",
 "resolvedAt": "2026-05-27T10:00:00Z",
 "expiresAt": "2026-05-27T10:10:00Z",
 "classification": "CONFIDENTIAL",
 "components": [
 {
 "instanceId": "wid-001",
 "componentKey": "mortgagePipelineWidget",
 "componentVersion": "1.0.0",
 "allowedActions": ["VIEW", "OPEN_APPLICATION"],
 "position": { "x": 0, "y": 0, "w": 8, "h": 4 }
 },
 {
 "instanceId": "wid-002",
 "componentKey": "aiAssistantPanel",
 "componentVersion": "1.0.0",
 "allowedActions": ["PROMPT_TEXT", "PROMPT_FILE", "PROMPT_VOICE"]
 }
 ],
 "evidenceRef": "evd-123"
}

## 7. On-the-Fly Update Governance

AIRA may support on-the-fly changes, but changes must follow controlled versioning, validation, approval, activation, audit, event publication, and cache invalidation. Direct mutation of active runtime configuration without evidence is prohibited.

1. Admin or authorized configuration owner submits a change through the Admin Builder or Git PR/MR.

2. Configuration Service validates schema, classification, policy, and authorization.

3. Change is saved as DRAFT or FOR_REVIEW in PostgreSQL.

4. Maker-checker, security, architecture, product owner, or CAB approval is obtained depending on risk.

5. New version is activated and old version is marked SUPERSEDED or INACTIVE.

6. Audit and evidence records are written.

7. A config.changed event is published.

8. Redis/Valkey affected keys are invalidated or refreshed.

9. Next runtime request reloads authoritative configuration and stores a new derivative cache view.

### 7.1 Config Change Event Payload

{
 "eventType": "WORKSPACE_CONFIG_CHANGED",
 "tenantId": "BFS",
 "affectedType": "SCREEN_TEMPLATE",
 "affectedCode": "MORTGAGE_DASHBOARD",
 "oldVersion": 3,
 "newVersion": 4,
 "oldConfigHash": "abc123",
 "newConfigHash": "def456",
 "cacheKeys": [
 "aira:ui:screen:BFS:MORTGAGE_DASHBOARD:v3",
 "aira:ui:resolved-workspace:BFS:*:REAL_PROPERTY_MORTGAGE_WORKSPACE:*"
 ],
 "activatedBy": "admin_hash",
 "approvedBy": "approver_hash",
 "evidenceRef": "evd-789",
 "traceId": "trc-456"
}

## 8. Parameter Categories and Runtime Resolution

| **Category** | **Sample Parameters** |
| --- | --- |
| **Workspace Parameters** | **workspace_code, default_screen_code, allowed_roles, allowed_skills, classification_ceiling, personalization_allowed, ai_panel_enabled** |
| **Screen Parameters** | **screen_code, route_path, rendering_policy_code, layout_code, mandatory_components, optional_components** |
| **Component Parameters** | **component_key, component_type, schema_code, runtime_allowed, admin_builder_allowed, classification_ceiling** |
| **Rendering Parameters** | **default_mode, allowed_modes, prohibited_modes, cache_policy, ppr_ready, streaming_allowed** |
| **Capability Parameters** | **capability_code, action_code, api_path, MicroFunction transaction, workflow_binding, idempotency_required** |
| **AI Parameters** | **input_modes, output_modes, guardrail_policy_ref, model_route_policy_ref, human_approval_required_for** |
| **Evidence Parameters** | **required_audit_events, trace_fields, retention_policy, redaction_required, prompt_capture_allowed** |
| **Cache Parameters** | **cache_key_pattern, TTL, invalidation_rule, hash fields, refresh strategy** |

### 8.1 Runtime Resolution Sequence

1. User opens workspace route in Next.js.
2. Server requests current workspace from AIRA Workspace Resolver.
3. Resolver validates identity, tenant, roles, skills, attributes, and classification.
4. Resolver checks Redis for valid resolved workspace using userHash + workspaceCode + policyHash + layoutHash.
5. If cache is valid, derivative resolved view is returned.
6. If cache is missing or invalid, resolver loads PostgreSQL templates, preferences, policies, feature flags, AI panel config, and capability bindings.
7. OPA evaluates workspace, screen, component, field, and action eligibility.
8. Resolver builds policy-filtered response and records audit/evidence.
9. Resolver writes derivative resolved view to Redis.
10. Next.js renders approved components and CSR islands only.

## 9. Validation, Security, and Fail-Closed Controls

| **Control Area** | **Mandatory Rule** |
| --- | --- |
| **Schema validation** | **All YAML/JSON configuration and JSONB payloads must validate before activation.** |
| **Policy validation** | **OPA policies and policy bindings must pass tests before activation.** |
| **Classification** | **Workspace, component, AI capability, and artifact classification must be known before use.** |
| **Hash/signature** | **Active configuration must have config_hash and, where required, signature_ref.** |
| **Rollback** | **Activations must define rollback_ref or safe deactivation path.** |
| **Cache safety** | **Redis entries must include version/hash and expire or invalidate on change.** |
| **AI safety** | **AI capabilities require model route, guardrail policy, evidence profile, and approval rules.** |
| **MicroFunction safety** | **Capability binding must map to approved API and MicroFunction transaction.** |
| **Admin safety** | **High-risk changes require maker-checker and CAB/ARB where applicable.** |

### 9.1 Fail-Closed Conditions

identity cannot be resolved

roles, skills, attributes, or tenant context are missing

OPA is unavailable or policy version is unknown

classification or classification ceiling is missing

component schema is invalid

capability binding is missing

MicroFunction transaction is unknown or inactive

AI capability is missing guardrail or model route policy

cache hash/version does not match authoritative configuration

audit/evidence cannot be written for protected action

## 10. Operational Procedures

### 10.1 Bootstrap Procedure

1. Create aira_ui schema using Flyway.

2. Create tables and indexes using versioned Flyway migration scripts.

3. Load baseline component catalog, rendering policies, evidence profiles, and policy bindings from Git-managed configuration.

4. Load initial workspace templates and layouts for approved foundation workspaces.

5. Validate configuration using schema, policy, and security checks.

6. Activate only approved versions.

7. Prime Redis cache only from active PostgreSQL configuration.

8. Record bootstrap evidence in CI/CD evidence pack.

### 10.2 Runtime Update Procedure

1. Submit configuration change through Admin Builder or Git PR/MR.

2. Run validation checks.

3. Route for approval according to risk and classification.

4. Activate new version and supersede old version.

5. Publish config.changed event.

6. Invalidate Redis keys by affected table/code/version or wildcard pattern.

7. Monitor runtime errors, policy denials, cache misses, and user feedback.

8. Rollback immediately if security, rendering, policy, or MicroFunction defects appear.

## 11. Testing and Architecture Fitness Functions

| **Test / Fitness Function** | **What It Proves** |
| --- | --- |
| **DDL/Flyway migration test** | **Schema can be created from scratch and migrated deterministically.** |
| **Configuration schema validation** | **YAML/JSON/JSONB configuration is structurally valid.** |
| **OPA policy tests** | **Visibility, action, field, and classification controls work as intended.** |
| **Cache-loss test** | **PostgreSQL fallback works when Redis is unavailable.** |
| **Cache-staleness test** | **Hash/version mismatch forces reload from PostgreSQL.** |
| **Fail-closed tests** | **Missing identity, policy, classification, schema, audit, or binding blocks protected actions.** |
| **Capability binding test** | **Every UI action maps to approved API and MicroFunction transaction.** |
| **AI capability test** | **Every AI feature has allowed input/output modes, model route, guardrails, and evidence profile.** |
| **Rendering policy test** | **SSR/CSR/ISR/PPR rules do not violate classification or cache policies.** |
| **On-the-fly update test** | **Activation publishes event and invalidates correct cache keys.** |
| **Rollback test** | **Previous approved version can be restored.** |
| **Audit/evidence test** | **All material changes and runtime decisions produce evidence records.** |

## 12. Implementation Roadmap

| **Phase** | **Target Outcome** | **Exit Criteria** |
| --- | --- | --- |
| **Phase 0 - ADR/TDL Approval** | **Approve this configuration and runtime cache standard.** | **ADR/TDL accepted, owners assigned, implementation backlog created.** |
| **Phase 1 - Database Foundation** | **Create aira_ui schema and core tables.** | **Flyway migrations pass from scratch.** |
| **Phase 2 - External Config Pipeline** | **Establish Git-managed configuration folder and importer.** | **Config validation and import tests pass.** |
| **Phase 3 - Resolver Services** | **Implement Workspace, Rendering, Capability, AI, and Policy resolvers.** | **Resolvers produce safe filtered workspace definitions.** |
| **Phase 4 - Redis Cache** | **Implement cache keys, TTLs, invalidation, and fallback.** | **Cache-loss and stale-cache tests pass.** |
| **Phase 5 - Admin Update Flow** | **Implement versioned admin changes and approvals.** | **Maker-checker, audit, activation, rollback work.** |
| **Phase 6 - AI Panel Configuration** | **Enable AI assistant panel configuration and AI capability registry.** | **Text/file/voice/image modes follow guardrails and policy.** |
| **Phase 7 - Experience Packs** | **Package reusable domain blocks and workspace templates.** | **Mortgage Experience Pack can be assembled from approved blocks.** |

## 13. RACI Matrix

| **Activity** | **Solutions Architect** | **Enterprise Architect** | **Dev Lead** | **DBA** | **DevSecOps** | **Security** | **QA/SDET** | **Product Owner** | **Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Approve standard** | **A/R** | **R** | **C** | **C** | **C** | **C** | **C** | **C** | **I** |
| **Design schema** | **A** | **C** | **R** | **R** | **C** | **C** | **C** | **I** | **I** |
| **Implement Flyway** | **C** | **I** | **A/R** | **R** | **C** | **C** | **C** | **I** | **I** |
| **Define config repository** | **A** | **C** | **R** | **C** | **R** | **C** | **C** | **I** | **I** |
| **Define OPA policies** | **A** | **C** | **C** | **I** | **C** | **R** | **C** | **C** | **I** |
| **Implement cache** | **C** | **I** | **A/R** | **C** | **R** | **C** | **C** | **I** | **I** |
| **Approve runtime change** | **A** | **C** | **C** | **C** | **C** | **R** | **C** | **A/R** | **I** |
| **Validate evidence** | **A** | **C** | **C** | **C** | **C** | **C** | **R** | **C** | **A/R** |

## 14. AVCI Compliance Summary

| **AVCI Property** | **Compliance Evidence** |
| --- | --- |
| **Attributable** | **Each configuration item has owner, source_ref, version, approver, config_hash, evidence_ref, and change event.** |
| **Verifiable** | **DDL, schema validation, OPA tests, cache tests, fail-closed tests, capability binding tests, and activation tests verify correctness.** |
| **Classifiable** | **Workspace, screen, component, rendering policy, AI capability, evidence profile, and artifact records carry classification and classification ceiling.** |
| **Improvable** | **Config changes, cache misses, policy denials, user feedback, runtime telemetry, and incidents feed controlled improvement through ADR/TDL and PR/MR workflows.** |

## 15. Appendices

### Appendix A - Minimum Must-Have Tables

1. workspace_template

2. screen_template

3. component_catalog

4. component_schema

5. experience_block

6. experience_pack

7. rendering_policy

8. capability_binding

9. ai_capability

10. ai_assistant_panel_config

11. workflow_binding

12. layout_definition

13. user_layout_preference

14. role_layout_assignment

15. policy_binding

16. feature_flag_binding

17. evidence_profile

18. multimodal_artifact_registry

19. config_change_event

### Appendix B - PR/MR AVCI Summary Template

## AIRA Dynamic Workspace Configuration AVCI Summary
- Owner / ticket / ADR / TDL:
- Configuration object changed:
- Source config file:
- Database table affected:
- Old version / new version:
- Config hash before / after:
- Policy impact:
- Classification impact:
- Redis cache keys affected:
- MicroFunction / API binding impact:
- AI capability impact:
- Tests run:
- Rollback plan:
- Evidence reference:
- Human checker / approver:
