---
document_id: "AIRA-DOC-057"
title: "AIRA Experience Block and Experience Pack Authoring Guide"
version: "v1.0"
status: "current"
source_file: "57-AIRA_Experience_Block_and_Experience_Pack_Authoring_Guide_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Experience-Packs"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - workspace
  - experience-pack
  - experience-block
  - ui
---

# AIRA Experience Block and Experience Pack Authoring Guide

**AIRA
AI-Native Enterprise Platform**

**AIRA Experience Block and Experience Pack Authoring Guide**

_Authoring Guide for Reusable Building Blocks, Domain Packs, Screen Packs, Widget Packs, and MicroFunction-Backed Capabilities_

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-057** |
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

This guide defines how teams create reusable AIRA Experience Blocks and Experience Packs. Experience Blocks are governed UI/business building blocks. Experience Packs combine blocks, screens, workflows, APIs, MicroFunctions, AI capabilities, policies, and evidence profiles to build larger business systems without rebuilding the foundation.

The rule is: Build once as governed blocks. Assemble many systems through approved packs.

## 2. Experience Block Definition

An Experience Block is a reusable unit that combines a frontend component, schema, rendering policy, capability binding, MicroFunction transaction, policy binding, and evidence profile.

## 3. Experience Block Required Metadata

| **Field** | **Purpose** |
| --- | --- |
| **block_code** | **Unique block identifier.** |
| **component_key** | **Frontend component registry key.** |
| **bounded_context** | **Owning business domain.** |
| **rendering_policy_code** | **SSR/CSR/ISR/PPR/streaming rule.** |
| **capability_code** | **Backend capability binding.** |
| **microfunction_transaction_code** | **Backend transaction sequence.** |
| **required_roles / skills** | **RBAC/SBAC requirements.** |
| **classification_ceiling** | **Maximum data classification.** |
| **evidence_profile_code** | **Required audit/evidence.** |
| **rollback_policy** | **Disable, previous version, fallback block.** |

## 4. Experience Pack Definition

An Experience Pack is a governed collection of blocks, templates, workflows, APIs, AI capabilities, and policies for a domain such as Mortgage, KYC, Payments, Collections, CRM, or Document Management.

## 5. Authoring Procedure

Define business intent and bounded context.

Check whether an existing block already satisfies the need.

Create or reuse component schema.

Bind to approved API and MicroFunction.

Define rendering policy.

Define RBAC/SBAC/ABAC/OPA policy.

Define evidence profile.

Add tests and examples.

Submit ADR/TDL where required.

Register block or pack through Admin Builder governance.

## 6. Mortgage Experience Pack Example

| **Block** | **Capability** |
| --- | --- |
| **MORTGAGE_APPLICATION_BLOCK** | **Start and submit mortgage application.** |
| **KYC_DOCUMENT_UPLOAD_BLOCK** | **Upload and track KYC documents.** |
| **APPRAISAL_REQUEST_BLOCK** | **Trigger property appraisal workflow.** |
| **PAYMENT_SCHEDULE_BLOCK** | **View/pay mortgage dues.** |
| **TITLE_RELEASE_BLOCK** | **Request title release after full payment.** |
| **AI_MORTGAGE_GUIDANCE_BLOCK** | **Explain mortgage journey and generate references/artifacts.** |
| **EVIDENCE_TIMELINE_BLOCK** | **Show AVCI and audit history.** |

## 7. Block Versioning

Blocks are immutable once activated. Changes create a new version. Existing screens may migrate only through approved activation and rollback plans.

## 8. Pack Compatibility

Packs must declare required platform version, required MicroFunction catalog version, required API contract version, required OPA bundle version, and required frontend component version.

## 9. Reuse and Duplication Rules

Do not create a new block when an existing approved block can be configured. Avoid duplicate widgets, duplicate APIs, duplicate MicroFunctions, and duplicate policy rules.

## 10. Acceptance Criteria

Block has component, schema, policy, capability, MicroFunction, tests, and evidence profile.

Pack can be installed, activated, rolled back, and audited.

Pack does not weaken architecture boundaries or security.

Pack works with Redis unavailable.

## 11. AVCI Compliance Summary

| **AVCI** | **Evidence** |
| --- | --- |
| **Attributable** | **Block/pack owner, version, source, and approval are recorded.** |
| **Verifiable** | **Tests, contracts, policy checks, and runtime evidence prove correctness.** |
| **Classifiable** | **Blocks and packs declare classification and handling rules.** |
| **Improvable** | **Usage metrics, defects, incidents, and feedback improve future versions.** |
