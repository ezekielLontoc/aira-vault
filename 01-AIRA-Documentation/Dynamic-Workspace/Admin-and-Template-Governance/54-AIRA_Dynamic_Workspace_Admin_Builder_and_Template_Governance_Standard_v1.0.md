---
document_id: "AIRA-DOC-054"
title: "AIRA Dynamic Workspace Admin Builder and Template Governance Standard"
version: "v1.0"
status: "current"
source_file: "54-AIRA_Dynamic_Workspace_Admin_Builder_and_Template_Governance_Standard_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Admin-and-Template-Governance"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - ui
  - admin-builder
  - template-governance
---

# AIRA Dynamic Workspace Admin Builder and Template Governance Standard

**AIRA
AI-Native Enterprise Platform**

**AIRA Dynamic Workspace Admin Builder and Template Governance Standard**

_Governance Standard for Workspace Template Authoring, Approval, Activation, Rollback, and Retirement_

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-054** |
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

This standard governs the Admin Builder used to create, edit, review, approve, activate, deactivate, rollback, and retire AIRA workspace templates, screen templates, layouts, component assignments, and experience blocks. The Admin Builder is a controlled configuration tool, not a runtime code execution platform.

The rule is: Admins configure approved building blocks; they do not create uncontrolled code, APIs, policies, SQL, or business logic.

## 2. Admin Builder Scope

| **Capability** | **Allowed** |
| --- | --- |
| **Create draft workspace templates** | **Yes, from approved experience blocks and components.** |
| **Assign widgets to screens** | **Yes, within role, tenant, classification, and component policy.** |
| **Define mandatory/optional widgets** | **Yes, subject to product owner and security approval.** |
| **Configure layout positions** | **Yes, within validated responsive grid rules.** |
| **Attach rendering policies** | **Yes, from approved rendering policy registry only.** |
| **Attach capability bindings** | **Yes, from approved capability registry only.** |
| **Create new backend MicroFunction code** | **No.** |
| **Create arbitrary JavaScript or SQL** | **No.** |
| **Override OPA policy** | **No.** |

## 3. Template Lifecycle

| **State** | **Meaning** | **Allowed Actions** |
| --- | --- | --- |
| **DRAFT** | **Initial template/configuration.** | **Edit, validate, submit for review.** |
| **FOR_REVIEW** | **Ready for checker review.** | **Review, comment, return, approve.** |
| **APPROVED** | **Approved but not active.** | **Schedule activation or rollback candidate.** |
| **ACTIVE** | **Current runtime version.** | **Monitor, deactivate, supersede.** |
| **SUPERSEDED** | **Replaced by newer version.** | **Historical reference only.** |
| **ROLLED_BACK** | **Reverted from failed version.** | **Keep evidence and review root cause.** |
| **RETIRED** | **No longer available.** | **Historical/audit only.** |

## 4. Maker-Checker Rules

| **Role** | **Responsibility** |
| --- | --- |
| **Maker** | **Drafts or updates template.** |
| **Checker** | **Reviews schema, layout, policy, classification, and usability.** |
| **Security Reviewer** | **Reviews classification, field visibility, OPA policy, and sensitive data handling.** |
| **Product Owner** | **Confirms business fit and mandatory widgets.** |
| **Approver** | **Activates production template after evidence.** |
| **Auditor** | **Reviews evidence; cannot modify template.** |

## 5. Validation Gates

Before activation, the Admin Builder must validate: component allow-list, schema validity, rendering policy, capability binding, OPA policy reference, classification ceiling, required skills, mandatory widget rules, responsive layout, accessibility constraints, rollback target, and evidence profile.

## 6. Activation and Rollback

Activation must create a new immutable version, mark previous version superseded, publish a config.changed event, invalidate Redis/Valkey keys, and record evidence. Rollback must activate the previous approved version or a designated rollback version, never direct-edit production state.

## 7. Security Controls

Admin Builder must enforce least privilege, maker-checker separation, branch/tenant boundaries, audit logging, no arbitrary code, no raw SQL, no provider SDK calls, no unsafe HTML, and no override of backend policy filtering.

## 8. Admin UX Rules

Provide clear validation messages, preview in role/skill/classification mode, show policy-hidden widgets, warn on cache invalidation impact, display evidence checklist, and require reason for activation, rollback, or retirement.

## 9. Required Audit Events

TEMPLATE_DRAFT_CREATED, TEMPLATE_SUBMITTED_FOR_REVIEW, TEMPLATE_APPROVED, TEMPLATE_REJECTED, TEMPLATE_ACTIVATED, TEMPLATE_ROLLED_BACK, TEMPLATE_RETIRED, POLICY_BINDING_CHANGED, COMPONENT_ASSIGNMENT_CHANGED, MANDATORY_WIDGET_CHANGED.

## 10. Acceptance Criteria

Admin cannot activate invalid templates.

Admin cannot add unauthorized components or actions.

Every activation has maker, checker, approver, hash, version, rollback, and evidence.

Runtime cache invalidates on activation/rollback.

Templates can be previewed by role, skill, tenant, and classification.

## 11. AVCI Compliance Summary

| **AVCI** | **Evidence** |
| --- | --- |
| **Attributable** | **Maker, checker, approver, owner, version, and source are recorded.** |
| **Verifiable** | **Validation gates, previews, tests, and activation evidence prove correctness.** |
| **Classifiable** | **Templates and components carry classification ceiling and handling rules.** |
| **Improvable** | **Admin changes, denials, incidents, and usage data feed template improvement.** |
