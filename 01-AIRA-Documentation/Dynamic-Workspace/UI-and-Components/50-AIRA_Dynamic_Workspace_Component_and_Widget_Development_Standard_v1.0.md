---
document_id: "AIRA-DOC-050"
title: "AIRA Dynamic Workspace Component and Widget Development Standard"
version: "v1.0"
status: "current"
source_file: "50-AIRA_Dynamic_Workspace_Component_and_Widget_Development_Standard_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/UI-and-Components"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - ui
  - component
  - widget
---

# AIRA Dynamic Workspace Component and Widget Development Standard

AIRA Dynamic Workspace Component and Widget Development Standard

## 1 AIRA Dynamic Workspace Component and Widget Development Standard

### 1.1 Reusable Component, Widget, Experience Block, Schema, Accessibility, Rendering, Security, and MicroFunction Binding Standard

**Mandatory Practice Statement**
This document is part of the AIRA Dynamic User Workspace and Composable Experience Framework documentation set. All implementation work must preserve AVCI, SOLID, Clean Architecture, DDD, ports-and-adapters, security, observability, testability, reversibility, and governed MicroFunction execution.

### 1.2 Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA Dynamic Workspace Component and Widget Development Standard |
| Document ID | AIRA-DOC-050 |
| Version | v1.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | DRAFT FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | Enterprise Architecture; Software Development Lead; DevSecOps Lead; Security Architecture; QA/SDET; Platform Engineering; AI Engineering |
| Primary Audience | Solutions Architects, Software Developers, Frontend Developers, Backend Developers, DevSecOps, QA/SDET, Security, Product Owners, Internal Audit |
| Effective Date | Upon ARB / CAB approval |
| Review Cadence | Quarterly; unscheduled on material Dynamic Workspace, MicroFunction, security, AI, workflow, rendering, database, or DevSecOps change |
| Companion Documents | 41 Dynamic User Workspace Framework; 42 Composable Experience Framework; 43 Multimodal AI Assistant Panel Standard; 44 Next.js Rendering Strategy; 45 Mortgage Experience Pack; 46 Dynamic Workspace Configuration and Runtime Cache Standard |

### 1.3 1. Executive Summary

This standard defines how AIRA frontend developers create reusable components, widgets, and experience blocks for the Dynamic User Workspace and Composable Experience Framework. Components must be reusable, schema-driven, accessible, testable, secure, policy-aware, and backend-capability-bound.

The key rule is:

**A widget is not only a visual component. It is a governed experience block with schema, authorization, rendering policy, capability binding, evidence profile, and test obligations.**

### 1.4 2. Component Categories

| Category | Description | Example |
| --- | --- | --- |
| Display Widget | Shows data without action. | KPI card, chart, status panel. |
| Data Action Widget | Shows data and allows governed actions. | Mortgage pipeline, approval queue. |
| Form Widget | Captures input and submits through approved API. | Mortgage application form. |
| Document Widget | Uploads/views documents under classification controls. | KYC upload, title viewer. |
| AI Widget | Prompts AI service and displays output. | AI Assistant Panel. |
| Workflow Widget | Shows or drives workflow state. | Task inbox, approval stepper. |
| Evidence Widget | Displays audit and AVCI evidence. | Evidence timeline. |

### 1.5 3. Component Contract

Every component must declare:

type AiraWidgetContract = {
 componentKey: string;
 componentVersion: string;
 componentType: string;
 propsSchemaCode: string;
 allowedActions: string[];
 requiredCapabilities: string[];
 renderingPolicyCode: string;
 evidenceProfileCode: string;
 classificationCeiling: "PUBLIC" | "INTERNAL" | "CONFIDENTIAL" | "RESTRICTED";
};

### 1.6 4. Required Files Per Component

components/widgets/mortgagePipelineWidget/
 MortgagePipelineWidget.tsx
 MortgagePipelineWidget.schema.ts
 MortgagePipelineWidget.contract.ts
 MortgagePipelineWidget.test.tsx
 MortgagePipelineWidget.a11y.test.tsx
 MortgagePipelineWidget.stories.tsx
 index.ts

### 1.7 5. Component Development Rules

| Rule | Requirement |
| --- | --- |
| Allow-list only | Component must be registered in component catalog. |
| Schema-driven | Props must validate against Zod/JSON schema. |
| No business logic | Domain decisions remain backend-owned. |
| No invented API | Use generated OpenAPI client only. |
| No unsafe rendering | No unsafe HTML unless formally approved and sanitized. |
| Accessibility | Keyboard, labels, ARIA, focus management required. |
| Classification-aware | Component must not display data above classification ceiling. |
| Evidence-aware | Critical actions must show trace/evidence where appropriate. |

### 1.8 6. Widget Action Pattern

type AiraWidgetAction = {
 actionCode: string;
 label: string;
 capabilityCode: string;
 requiresConfirmation: boolean;
 idempotencyRequired: boolean;
 highImpact: boolean;
};

Actions must be rendered only if backend returns them in allowedActions.

### 1.9 7. Rendering Policy Assignment

| Widget Type | Recommended Rendering |
| --- | --- |
| KPI / chart | SSR or streamed server data; CSR refresh optional. |
| Form | SSR wrapper + CSR interaction. |
| Document upload | SSR wrapper + CSR upload. |
| AI Assistant | SSR shell + CSR prompt + streaming response. |
| Admin builder canvas | CSR within secured SSR shell. |
| Public guide widget | ISR if non-user-specific. |

### 1.10 8. Accessibility Requirements

Each widget must support:

- keyboard navigation;

- focus visible state;

- semantic labels;

- screen-reader meaningful names;

- sufficient contrast;

- non-color-only status indicators;

- responsive layout;

- accessible drag/drop where applicable;

- error summaries for forms;

- reduced-motion compatibility where applicable.

### 1.11 9. Security Rules

Components must not:

- store tokens or secrets;

- store raw PII in browser storage;

- expose hidden backend fields;

- render server-denied actions;

- call model providers directly;

- upload files directly to AI providers;

- log customer data;

- use dynamic eval or script injection;

- load unapproved remote component code.

### 1.12 10. MicroFunction Binding Requirements

| Widget Action | Required Binding |
| --- | --- |
| View data | API + capability binding. |
| Submit form | API + MicroFunction transaction + idempotency. |
| Upload document | Document intake MicroFunction + malware scan + classification. |
| Make payment | Payment MicroFunction + workflow/policy + idempotency. |
| Release title | Workflow + approval + MicroFunction + evidence. |
| AI action proposal | AI Assist capability + human approval before execution. |

### 1.13 11. Component Review Checklist

- ☐ Component key is unique.

- ☐ Component is registered.

- ☐ Props schema exists and passes validation.

- ☐ Rendering policy assigned.

- ☐ Capability bindings defined.

- ☐ No direct API invention.

- ☐ No business logic in component.

- ☐ Accessibility tests pass.

- ☐ Component tests pass.

- ☐ Security scan passes.

- ☐ Story/example uses synthetic data only.

- ☐ AVCI summary provided.

### 1.14 12. Example Component Registration

component_key: mortgagePipelineWidget
component_name: Mortgage Pipeline Widget
component_version: 1.0.0
component_type: DATA_ACTION_WIDGET
runtime_allowed: true
admin_builder_allowed: true
schema_code: mortgagePipelineWidget.schema.v1
rendering_policy_code: RP_SECURE_WORKSPACE_SSR
classification_ceiling: CONFIDENTIAL
required_capabilities:
 - MORTGAGE_PIPELINE_VIEW
allowed_actions:
 - VIEW
 - OPEN_APPLICATION

### 1.15 13. AVCI Compliance Summary

| AVCI Property | Component Evidence |
| --- | --- |
| Attributable | Component owner, key, version, catalog entry, code owner, reviewer. |
| Verifiable | Unit tests, component tests, accessibility tests, schema tests, contract tests. |
| Classifiable | Classification ceiling, data handling, log handling, allowed output. |
| Improvable | Usage metrics, error metrics, user feedback, backlog link, version history. |
