---
document_id: "AIRA-DOC-044"
title: "AIRA NextJS Rendering Strategy and Composable UI Standard"
version: "v1.0"
status: "current"
source_file: "44-AIRA_NextJS_Rendering_Strategy_and_Composable_UI_Standard_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/UI-and-Rendering"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - workspace
  - nextjs
  - rendering-strategy
  - ui
---

# AIRA NextJS Rendering Strategy and Composable UI Standard

AIRA Next.js Rendering Strategy and Composable UI Standard

## 1 AIRA Next.js Rendering Strategy and Composable UI Standard v1.0

### 1.1 SSR, CSR, ISR, PPR, Streaming, Server Components, Client Components, and Cache Governance for AIRA Dynamic Workspaces

**Mandatory AIRA Control Statement**
Dynamic, composable, AI-assisted, and multimodal capabilities must remain backend-governed, policy-filtered, MicroFunction-backed, auditable, reversible, and AVCI-compliant. Dynamic must never mean uncontrolled. AI may recommend, explain, summarize, generate, and propose; approved AIRA services, policies, workflows, and accountable human roles remain authoritative.

### 1.2 Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA Next.js Rendering Strategy and Composable UI Standard |
| Document ID | AIRA-DOC-044 |
| Version | v1.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | DRAFT FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Companion Documents | 41 Dynamic User Workspace; 42 Composable Experience Framework; 43 Multimodal AI Assistant; 45 Mortgage Experience Pack |

### 1.3 1. Executive Summary

AIRA may use Next.js SSR, CSR, ISR, PPR, and streaming without conflicting with the Dynamic User Workspace design if rendering is treated as a delivery strategy, not an authority strategy. Backend services remain authoritative for workspace resolution, authorization, classification, MicroFunction execution, business decisions, audit, and evidence.

The standard position is:

Use SSR first for authenticated and policy-sensitive workspaces. Use CSR only for interactive islands. Use ISR only for non-user-specific guidance content. Use PPR later for stable workspace shells with secure dynamic widgets. Use streaming for AI responses and long-running generated outputs.

### 1.4 2. Rendering Modes

| Mode | AIRA Use | Not Allowed For |
| --- | --- | --- |
| SSR | Authenticated, policy-filtered, user-specific workspace and widgets. | Static public-only content where ISR is better. |
| CSR | Drag/drop, resize, AI prompt, voice controls, upload controls, form interaction. | Final authorization, classification filtering, business decisions. |
| ISR | General guides, FAQs, product explainers, non-sensitive process content. | User-specific, Confidential, Restricted, payment, KYC, title release status. |
| PPR | Stable shell with dynamic secure widget holes after maturity. | Sensitive data in prerendered shell. |
| Streaming | AI text responses, progress updates, async artifact status. | Uncontrolled unreviewed outputs for official records. |

### 1.5 3. Route Rendering Matrix

| Route / Area | Recommended Rendering | Rationale |
| --- | --- | --- |
| /login | SSR or static shell | Auth redirect aware. |
| /help/mortgage-guide | ISR | Non-user-specific process guidance. |
| /workspace | SSR | User-specific and policy-filtered. |
| /workspace/mortgage | SSR, PPR-ready later | Mortgage workspace with dynamic secure widgets. |
| /workspace/mortgage/apply | SSR + CSR form island | Server-resolved context, interactive form. |
| /workspace/kyc | SSR + CSR upload island | Sensitive document process. |
| /workspace/payments | SSR + CSR action island | Payment data and action security. |
| /workspace/title-release | SSR | Secured workflow status. |
| /admin/workspace-builder | SSR shell + CSR builder | Admin-only interactive builder. |
| /reports/public-product-info | ISR | Non-sensitive aggregate/reference content. |
| /reports/portfolio | SSR | Business-sensitive role-specific report. |

### 1.6 4. Rendering Policy Registry

Every route, screen, and widget must declare rendering policy metadata.

rendering_policy:
 policy_id: RP_SECURE_WORKSPACE_WIDGET
 default_mode: SSR
 csr_islands_allowed: true
 isr_allowed: false
 ppr_ready: true
 streaming_allowed: true
 cache_policy: NO_STORE_FOR_USER_DATA
 sensitive_data: true
 classification_ceiling: CONFIDENTIAL
 suspense_required: true

### 1.7 5. Server Component Pattern

Server Components should be the default for secured workspace shells.

// app/workspace/mortgage/page.tsx
import { getResolvedWorkspace } from "@/server/workspace/getResolvedWorkspace";
import { WorkspaceRenderer } from "@/components/workspace/WorkspaceRenderer";

export default async function MortgageWorkspacePage() {
 const workspace = await getResolvedWorkspace({
 workspaceCode: "REAL_PROPERTY_MORTGAGE"
 });

 return <WorkspaceRenderer workspace={workspace} />;
}

### 1.8 6. Server Fetch Rule

Secured workspace data must use no-store unless an explicit approved cache policy exists.

export async function getResolvedWorkspace(input: { workspaceCode: string }) {
 const res = await fetch(`${process.env.AIRA_API_URL}/api/workspace/v1/current`, {
 method: "POST",
 headers: { "Content-Type": "application/json" },
 body: JSON.stringify(input),
 cache: "no-store"
 });

 if (!res.ok) throw new Error("Workspace resolution failed");
 return res.json();
}

### 1.9 7. Client Component Rule

Client Components are allowed for interactive browser behavior only.

Allowed:

- drag/drop,

- resize,

- prompt input,

- voice recording control,

- upload control,

- filters,

- charts interaction,

- form field interaction,

- admin builder canvas.

Not allowed:

- final authorization,

- final classification filtering,

- business rule execution,

- mortgage approval,

- KYC pass/fail decision,

- payment posting,

- title release approval.

### 1.10 8. PPR Readiness Pattern

PPR should be adopted only after SSR security, policy filtering, cache behavior, observability, and fail-closed testing are proven.

PPR-ready route:
 Static/semi-static shell:
 - header
 - side navigation
 - workspace frame
 - widget skeletons
 Dynamic secure holes:
 - mortgage pipeline
 - KYC status
 - payment due
 - title release status
 - AI assistant result panel

### 1.11 9. Cache Policy Rules

| Data Type | Cache Policy |
| --- | --- |
| User-specific workspace | no-store by default. |
| Role-filtered navigation | Server cache only if policy version and user class are safe. |
| Public guide page | ISR allowed. |
| Internal non-sensitive guide | ISR allowed with approval. |
| Confidential widget data | No ISR; SSR or secure fetch only. |
| Payment/KYC/title data | No-store; fresh backend fetch. |
| AI response stream | No-store, evidence-recorded. |

### 1.12 10. Anti-Patterns

| Anti-Pattern | Why Rejected |
| --- | --- |
| ISR for user loan/payment data | Stale and unauthorized exposure risk. |
| CSR-only authorization | Client can be manipulated. |
| Business logic in Next.js route handlers | Breaks AIRA backend authority and MicroFunction model. |
| PPR on day one for all routes | Adds unnecessary complexity before security is proven. |
| Static prerendering of restricted data | Classification breach. |
| Uncontrolled browser cache | Data leakage risk. |

### 1.13 11. Implementation Roadmap

| Phase | Target |
| --- | --- |
| 1 | SSR workspace shell and secure workspace resolver. |
| 2 | CSR islands for personalization and AI prompt input. |
| 3 | ISR for non-sensitive mortgage guide and FAQs. |
| 4 | Streaming for AI responses and artifact generation status. |
| 5 | PPR-ready shell after security and observability gates pass. |
| 6 | PPR rollout by route and risk tier. |

### 1.14 12. AVCI Compliance Summary

| AVCI Property | Evidence |
| --- | --- |
| Attributable | Each route/screen/widget has rendering policy owner, version, and approval. |
| Verifiable | Rendering mode, cache behavior, policy filtering, and fail-closed paths are tested. |
| Classifiable | Rendering and cache policy respect classification and model/data eligibility. |
| Improvable | Performance metrics, incidents, cache findings, and user experience feedback improve rendering policies. |
