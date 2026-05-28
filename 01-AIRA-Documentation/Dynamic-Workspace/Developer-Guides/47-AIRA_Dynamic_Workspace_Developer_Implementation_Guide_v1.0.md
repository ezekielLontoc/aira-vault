---
document_id: "AIRA-DOC-047"
title: "AIRA Dynamic Workspace Developer Implementation Guide"
version: "v1.0"
status: "current"
source_file: "47-AIRA_Dynamic_Workspace_Developer_Implementation_Guide_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Developer-Guides"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - ui
  - developer-guide
---

# AIRA Dynamic Workspace Developer Implementation Guide

AIRA Dynamic Workspace Developer Implementation Guide

## 1 AIRA Dynamic Workspace Developer Implementation Guide

### 1.1 Implementation Guide for Frontend Renderer, Backend Services, Component Registry, Capability Binding, and MicroFunction Integration

**Mandatory Practice Statement**
This document is part of the AIRA Dynamic User Workspace and Composable Experience Framework documentation set. All implementation work must preserve AVCI, SOLID, Clean Architecture, DDD, ports-and-adapters, security, observability, testability, reversibility, and governed MicroFunction execution.

### 1.2 Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA Dynamic Workspace Developer Implementation Guide |
| Document ID | AIRA-DOC-047 |
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

This guide translates the AIRA Dynamic User Workspace architecture into actionable development instructions. It defines how software developers shall implement the runtime workspace renderer, admin builder integration, backend workspace services, configuration APIs, capability bindings, MicroFunction integration, Redis cache usage, and evidence-producing workflows.

The development rule is simple:

**The frontend renders. The backend authorizes. MicroFunctions execute. PostgreSQL defines truth. Redis accelerates. AVCI proves trust.**

### 1.4 2. Development Scope

| Area | Developer Responsibility |
| --- | --- |
| Runtime Workspace Renderer | Render backend-approved screen definitions and allow-listed components only. |
| Admin Builder | Provide controlled template editing for authorized administrators only. |
| Backend Workspace Resolver | Resolve effective workspace using identity, RBAC, SBAC, ABAC, OPA, templates, layouts, and user preferences. |
| Component Registry | Register approved UI components, schemas, rendering policies, and evidence profiles. |
| Capability Binding | Map widget actions to OpenAPI endpoints, backend use cases, and MicroFunction transactions. |
| AI Assistant Panel | Integrate toggleable multimodal prompt panel without bypassing guardrails, model routing, or evidence. |
| Redis / Valkey Cache | Cache only derivative resolved views and metadata. Never store truth or sensitive payloads. |

### 1.5 3. Standard Repository Structure

aira-platform/
 apps/
 web-workspace/
 app/
 components/
 features/
 lib/
 tests/
 services/
 workspace-service/
 component-registry-service/
 capability-binding-service/
 ai-assist-service/
 libs/
 aira-contracts/
 aira-ui-schema/
 aira-security-client/
 aira-observability/
 microfunctions/
 catalog/
 runtime/
 business/
 contracts/
 openapi/
 asyncapi/
 schemas/
 config/
 workspace/
 rendering/
 ai/
 policy/
 infra/
 flyway/
 helm/
 kubernetes/
 docs/
 adr/
 tdl/
 runbooks/

### 1.6 4. Implementation Layers

| Layer | Allowed Responsibility | Must Not Do |
| --- | --- | --- |
| Next.js Route Shell | Render workspace shell, call backend resolver, enforce server/client boundaries. | Own business rules or final authorization. |
| Runtime Renderer | Map approved component keys to compiled React components. | Load arbitrary remote components or execute configuration scripts. |
| Widget Component | Render data, capture user intent, call generated API client. | Call unregistered endpoints or embed domain rules. |
| Workspace Service | Resolve effective workspace and policy-filtered layout. | Trust frontend-provided authorization. |
| Capability Service | Validate action-to-MicroFunction mapping. | Execute business logic directly. |
| MicroFunction Runtime | Execute governed backend steps. | Bypass audit, idempotency, or policy. |

### 1.7 5. Developer Workflow

1. Start from approved ticket and linked ADR/TDL.

2. Identify affected workspace, screen, component, capability, API, and MicroFunction.

3. Update or create schema/configuration first.

4. Implement or update component only if approved component does not exist.

5. Generate or update OpenAPI contract and client.

6. Implement backend service/use case behind approved ports.

7. Bind action to MicroFunction transaction.

8. Add tests: unit, component, API, OPA, E2E, accessibility, cache-loss, fail-closed.

9. Add observability and audit evidence.

10. Submit PR/MR with AVCI summary.

### 1.8 6. Runtime Workspace Renderer Pattern

export function WorkspaceRenderer({ workspace }: { workspace: ResolvedWorkspace }) {
 return (
 <WorkspaceShell metadata={workspace.metadata}>
 {workspace.screens.map(screen => (
 <ScreenRenderer key={screen.screenId} screen={screen} />
 ))}
 </WorkspaceShell>
 );
}

export function ComponentRenderer({ instance }: { instance: ComponentInstance }) {
 const Component = componentRegistry[instance.componentKey];
 if (!Component) return <UnsupportedComponentNotice instanceId={instance.instanceId} />;
 return <Component {...instance.props} allowedActions={instance.allowedActions} />;
}

Mandatory controls:

- component key must exist in the compiled allow-list;

- props must validate against schema;

- disallowed actions must not render;

- hidden fields must not be present in the payload;

- unsafe HTML is prohibited by default.

### 1.9 7. Backend Workspace Resolver Pattern

resolveWorkspace(user, workspaceCode):
 1. authenticate session
 2. resolve tenant, role, branch, department, skills, trust score
 3. load active workspace template
 4. load active screen templates
 5. load user preference overlay
 6. apply feature flags
 7. call OPA for screen/component/action/field/classification filtering
 8. validate final layout
 9. write audit/evidence record
 10. cache derivative resolved workspace
 11. return safe resolved workspace definition

### 1.10 8. MicroFunction Binding Rules

| Rule | Required Practice |
| --- | --- |
| Business action | Must map to a capability binding and MicroFunction transaction. |
| Mutating action | Must require idempotency key. |
| High-impact action | Must trigger workflow or human approval where required. |
| AI-proposed action | Must pass guardrails, OPA, SBAC, trust score, and human approval where applicable. |
| Evidence | Must include trace ID, actor, capability code, policy decision, and MicroFunction execution ID. |

### 1.11 9. AI Assistant Panel Developer Rules

The AI Assistant Panel is a standard component but must be treated as high-risk because it accepts multimodal input and can generate multimodal output.

Allowed developer responsibilities:

- render prompt input panel;

- handle text, voice, file, image input UX;

- call approved AI Assist API;

- display streamed or async results;

- display references and evidence;

- show action proposals as proposals only.

Prohibited developer behavior:

- direct model-provider SDK calls;

- direct file-to-model upload without classification;

- bypassing guardrails;

- allowing AI to execute production actions directly;

- storing raw prompts or outputs in browser storage.

### 1.12 10. Redis / Valkey Usage

| Cache Item | Allowed | Not Allowed |
| --- | --- | --- |
| Component metadata | Yes | Secrets or executable code |
| Resolved workspace | Yes, short TTL and hashed | Authoritative state |
| User layout preference | Yes, derivative only | Final source of truth |
| Policy hash | Yes | Policy source text as truth |
| AI capability metadata | Yes | Raw prompt/output with PII |

### 1.13 11. Pull Request Checklist

- ☐ Linked ticket and ADR/TDL.

- ☐ Component registered or reused.

- ☐ Schema validated.

- ☐ API contract updated.

- ☐ MicroFunction binding defined.

- ☐ OPA policy tests added.

- ☐ Cache invalidation behavior defined.

- ☐ Audit/evidence fields emitted.

- ☐ Accessibility tested.

- ☐ Fail-closed behavior tested.

- ☐ AVCI summary completed.

### 1.14 12. AVCI Compliance Summary

| AVCI Property | Developer Evidence |
| --- | --- |
| Attributable | Ticket, owner, component key, capability code, MicroFunction transaction, commit, reviewer. |
| Verifiable | Tests, OpenAPI contract, OPA policy test, layout validation, CI evidence. |
| Classifiable | Data classification, component classification ceiling, model route eligibility, logging rules. |
| Improvable | Metrics, backlog link, known limitations, feedback source, improvement owner. |
