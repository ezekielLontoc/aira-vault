---
document_id: "AIRA-DOC-056"
title: "AIRA Dynamic Workspace Frontend Reference Implementation Guide"
version: "v1.0"
status: "current"
source_file: "56-AIRA_Dynamic_Workspace_Frontend_Reference_Implementation_Guide_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Frontend-Implementation"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - ui
  - frontend
---

# AIRA Dynamic Workspace Frontend Reference Implementation Guide

**AIRA
AI-Native Enterprise Platform**

**AIRA Dynamic Workspace Frontend Reference Implementation Guide**

_Next.js App Router, Runtime Renderer, Component Registry, Widget Shell, AI Panel, and Test Pattern Guide_

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-056** |
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

This guide provides a reference frontend implementation pattern for the AIRA Dynamic User Workspace using Next.js, React, TypeScript, generated API clients, schema validation, controlled component registry, CSR islands, and optional PPR readiness.

The rule is: The frontend is a governed renderer and interaction layer, not a business authority.

## 2. Recommended Folder Structure

apps/web-workspace/
 app/
 workspace/[workspaceCode]/page.tsx
 admin/workspace-builder/page.tsx
 components/
 workspace/WorkspaceRenderer.tsx
 workspace/ScreenRenderer.tsx
 workspace/ComponentRenderer.tsx
 widgets/
 ai/AiAssistantPanel.tsx
 registry/
 componentRegistry.ts
 widgetContracts.ts
 lib/
 api/generated/
 auth/session.ts
 telemetry/clientTelemetry.ts
 validation/zodSchemas.ts
 tests/
 unit/
 component/
 e2e/

## 3. Server Component Route Pattern

export default async function WorkspacePage({ params }) {
 const workspace = await getResolvedWorkspace(params.workspaceCode);
 return <WorkspaceRenderer workspace={workspace} />;
}

Use `no-store` for user-specific secured workspace data unless explicitly approved otherwise.

## 4. Runtime Renderer Pattern

export function ComponentRenderer({ instance }) {
 const Component = componentRegistry[instance.componentKey];
 if (!Component) return <UnsupportedComponent instance={instance} />;
 return <Component {...instance.props} allowedActions={instance.allowedActions} />;
}

The registry must be compiled and allow-listed. Runtime configuration must not import arbitrary components.

## 5. Component Registry Pattern

export const componentRegistry = {
 mortgagePipelineWidget: MortgagePipelineWidget,
 kycDocumentUploadWidget: KycDocumentUploadWidget,
 paymentScheduleWidget: PaymentScheduleWidget,
 titleReleaseStatusWidget: TitleReleaseStatusWidget,
 aiAssistantPanel: AiAssistantPanel,
} as const;

## 6. Widget Shell Pattern

Each widget must implement loading, error, empty, denied, and success states. Each widget must consume generated API clients and must not invent endpoints.

## 7. AI Assistant Panel Pattern

The AI panel is a CSR island inside a secured workspace. It may accept text, voice, files, images, and screen context, but all processing must go through the backend AI Assist API, guardrails, LiteLLM model routing, and evidence logging.

## 8. Rendering Mode Pattern

| **Area** | **Mode** |
| --- | --- |
| **Secure workspace route** | **SSR by default.** |
| **Drag/drop and resize** | **CSR island.** |
| **AI prompt input** | **CSR island.** |
| **Static guide pages** | **ISR where non-sensitive.** |
| **Stable shell** | **PPR-ready after maturity.** |

## 9. Frontend Security Rules

No token storage in localStorage; no secrets in browser logs; no raw PII in telemetry; no unsafe HTML by default; no direct model calls; no direct database calls; no unregistered APIs; no authorization decisions in the browser.

## 10. Testing Patterns

Use Vitest for unit/component tests, MSW for API mocks, Playwright for E2E, accessibility tests for keyboard/ARIA behavior, and visual regression tests for critical workspace layouts.

## 11. Acceptance Criteria

Workspace renderer renders only approved component keys.

Widgets use generated API clients only.

CSR islands do not own business authorization.

AI panel uses backend API only.

Accessibility and E2E tests pass.

Browser telemetry is redacted.

## 12. AVCI Compliance Summary

| **AVCI** | **Evidence** |
| --- | --- |
| **Attributable** | **Component owner, version, contract, and registry entry are known.** |
| **Verifiable** | **Unit, component, E2E, accessibility, and contract tests prove behavior.** |
| **Classifiable** | **Component props and data follow classification ceiling.** |
| **Improvable** | **Usage, errors, denied actions, and UX feedback improve widgets.** |
