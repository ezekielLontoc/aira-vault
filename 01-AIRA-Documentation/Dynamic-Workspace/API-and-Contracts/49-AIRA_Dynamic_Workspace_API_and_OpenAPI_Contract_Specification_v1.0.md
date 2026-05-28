---
document_id: "AIRA-DOC-049"
title: "AIRA Dynamic Workspace API and OpenAPI Contract Specification"
version: "v1.0"
status: "current"
source_file: "49-AIRA_Dynamic_Workspace_API_and_OpenAPI_Contract_Specification_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/API-and-Contracts"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - api
  - openapi
---

# AIRA Dynamic Workspace API and OpenAPI Contract Specification

AIRA Dynamic Workspace API and OpenAPI Contract Specification

## 1 AIRA Dynamic Workspace API and OpenAPI Contract Specification

### 1.1 REST API, OpenAPI Contracts, Request/Response Models, Error Shapes, Idempotency, and Security Requirements

**Mandatory Practice Statement**
This document is part of the AIRA Dynamic User Workspace and Composable Experience Framework documentation set. All implementation work must preserve AVCI, SOLID, Clean Architecture, DDD, ports-and-adapters, security, observability, testability, reversibility, and governed MicroFunction execution.

### 1.2 Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA Dynamic Workspace API and OpenAPI Contract Specification |
| Document ID | AIRA-DOC-049 |
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

This specification defines the REST and OpenAPI contract baseline for the AIRA Dynamic User Workspace Framework. It covers workspace resolution, component catalog discovery, layout validation, user personalization, admin template publishing, widget data resolution, widget action invocation, AI assistant panel interaction, and evidence retrieval.

The API standard rule is:

**No workspace component may call an endpoint that is not registered, contract-defined, security-reviewed, and capability-bound.**

### 1.4 2. API Design Principles

| Principle | API Requirement |
| --- | --- |
| Contract-first | OpenAPI contract precedes implementation. |
| Secure by default | Authentication, authorization, classification, and OPA decision required. |
| Backend authority | API returns only already-authorized screens, fields, components, and actions. |
| Idempotency | Mutating widget actions require idempotency keys. |
| Safe response | Errors use stable codes and do not leak sensitive details. |
| Traceability | Every response includes traceId and, where applicable, evidenceRef. |
| Versioning | APIs use versioned paths and backward-compatible schema evolution. |

### 1.5 3. API Groups

| Group | Base Path | Purpose |
| --- | --- | --- |
| Workspace Resolution | /api/workspace/v1 | Resolve current workspace and layouts. |
| Component Catalog | /api/workspace/v1/components | Discover allowed components. |
| Layout Management | /api/workspace/v1/layouts | Validate, save, reset, rollback layouts. |
| Widget Runtime | /api/workspace/v1/widgets | Resolve widget data and invoke actions. |
| Admin Template | /api/workspace/v1/admin | Manage templates, activation, approval. |
| AI Assistant | /api/ai-assist/v1 | Submit multimodal prompts and retrieve outputs. |
| Evidence | /api/evidence/v1 | Retrieve audit/evidence references. |

### 1.6 4. Common Headers

| Header | Required | Purpose |
| --- | --- | --- |
| Authorization | Yes | Bearer token or approved service token. |
| X-Trace-Id | Yes | Correlation ID. |
| X-Request-Id | Yes | Request ID. |
| Idempotency-Key | For mutations | Prevent duplicate action effects. |
| X-AIRA-Client-Version | Yes | Frontend client version. |
| X-AIRA-Workspace-Version | Conditional | Layout/workspace version validation. |

### 1.7 5. Common Response Envelope

{
 "success": true,
 "traceId": "trc-123",
 "evidenceRef": "evd-456",
 "classification": "CONFIDENTIAL",
 "data": {}
}

### 1.8 6. Common Error Envelope

{
 "success": false,
 "traceId": "trc-123",
 "error": {
 "code": "AIRA-WORKSPACE-403",
 "message": "Action is not permitted.",
 "category": "AUTHORIZATION_DENIED",
 "safeDetails": "The requested widget action is unavailable for the current role, skill, or policy context."
 }
}

### 1.9 7. Workspace Resolution APIs

#### 1.9.1 7.1 Get Current Workspace

GET /api/workspace/v1/current?workspaceCode=REAL_PROPERTY_MORTGAGE_WORKSPACE

Response:

{
 "success": true,
 "traceId": "trc-001",
 "evidenceRef": "evd-001",
 "classification": "CONFIDENTIAL",
 "data": {
 "workspaceCode": "REAL_PROPERTY_MORTGAGE_WORKSPACE",
 "workspaceVersion": 7,
 "policyVersion": "workspace-policy-v1.3.0",
 "screens": [
 {
 "screenCode": "MORTGAGE_DASHBOARD",
 "routePath": "/workspace/mortgage",
 "layoutVersion": 12,
 "components": [
 {
 "instanceId": "wid-001",
 "componentKey": "mortgagePipelineWidget",
 "componentVersion": "1.0.0",
 "position": { "x": 0, "y": 0, "w": 8, "h": 4 },
 "props": { "pipelineScope": "ASSIGNED_BRANCH" },
 "allowedActions": ["VIEW", "OPEN_APPLICATION"]
 }
 ]
 }
 ]
 }
}

#### 1.9.2 7.2 Get Workspace By Screen

GET /api/workspace/v1/screens/{screenCode}

Used when routing directly to a screen.

### 1.10 8. Component Catalog APIs

#### 1.10.1 8.1 Get Available Components

GET /api/workspace/v1/components/available?workspaceCode=REAL_PROPERTY_MORTGAGE_WORKSPACE&screenCode=MORTGAGE_DASHBOARD

Returns only components the user can add or use.

#### 1.10.2 8.2 Get Component Schema

GET /api/workspace/v1/components/{componentKey}/schema?version=1.0.0

### 1.11 9. Layout APIs

#### 1.11.1 9.1 Validate Layout

POST /api/workspace/v1/layouts/validate

Request:

{
 "workspaceCode": "REAL_PROPERTY_MORTGAGE_WORKSPACE",
 "screenCode": "MORTGAGE_DASHBOARD",
 "baseLayoutVersion": 12,
 "layoutPatch": []
}

#### 1.11.2 9.2 Save User Layout

PUT /api/workspace/v1/current/layout

Rules:

- Re-check OPA.

- Validate schema and bounds.

- Preserve mandatory widgets.

- Invalidate cache.

- Write audit event.

#### 1.11.3 9.3 Reset User Layout

POST /api/workspace/v1/current/layout/reset

### 1.12 10. Widget Runtime APIs

#### 1.12.1 10.1 Resolve Widget Data

POST /api/workspace/v1/widgets/{instanceId}/data

Request:

{
 "screenCode": "MORTGAGE_DASHBOARD",
 "filters": {
 "branch": "CURRENT_USER_BRANCH",
 "dateRange": "LAST_30_DAYS"
 }
}

#### 1.12.2 10.2 Invoke Widget Action

POST /api/workspace/v1/widgets/{instanceId}/actions/{actionCode}
Idempotency-Key: 018f7e8c-....

Request:

{
 "screenCode": "MORTGAGE_DASHBOARD",
 "payload": {
 "applicationId": "APP-2026-0001"
 }
}

Backend must map this to a capability binding and MicroFunction transaction.

### 1.13 11. Admin Template APIs

| API | Purpose |
| --- | --- |
| POST /api/workspace/v1/admin/templates | Create draft template. |
| PUT /api/workspace/v1/admin/templates/{id} | Update draft. |
| POST /api/workspace/v1/admin/templates/{id}/submit | Submit for review. |
| POST /api/workspace/v1/admin/templates/{id}/approve | Approve template. |
| POST /api/workspace/v1/admin/templates/{id}/activate | Activate template. |
| POST /api/workspace/v1/admin/templates/{id}/deactivate | Deactivate template. |
| POST /api/workspace/v1/admin/templates/{id}/rollback | Roll back to approved version. |

### 1.14 12. AI Assistant APIs

#### 1.14.1 12.1 Submit Prompt

POST /api/ai-assist/v1/prompts

Request:

{
 "workspaceCode": "REAL_PROPERTY_MORTGAGE_WORKSPACE",
 "screenCode": "MORTGAGE_DASHBOARD",
 "aiCapabilityCode": "AI_MORTGAGE_GUIDANCE",
 "inputMode": "TEXT",
 "requestedOutputModes": ["TEXT", "REFERENCE", "CHECKLIST"],
 "prompt": "How do I apply for a mortgage and submit KYC documents?",
 "context": {
 "selectedRecordId": null,
 "includeScreenContext": true
 }
}

#### 1.14.2 12.2 Upload Prompt File

POST /api/ai-assist/v1/prompts/{promptId}/files

Files must pass malware scan, classification, and retention rules before model use.

#### 1.14.3 12.3 Stream Prompt Response

GET /api/ai-assist/v1/prompts/{promptId}/stream

#### 1.14.4 12.4 Get Generated Artifact

GET /api/ai-assist/v1/artifacts/{artifactId}

### 1.15 13. OpenAPI Contract Rules

- Every endpoint must have request/response schema.

- Every endpoint must declare security requirement.

- Every mutating endpoint must define idempotency behavior.

- Error responses must use standard envelope.

- Contracts must generate TypeScript clients.

- Frontend must use generated client only.

- Contract tests must run in CI.

### 1.16 14. API Security Requirements

| Requirement | Rule |
| --- | --- |
| AuthN | All APIs except public guide pages require authentication. |
| AuthZ | Backend performs policy decisions. |
| Classification | Responses must include classification where relevant. |
| Field filtering | Unauthorized fields must not be present in response. |
| Audit | Mutations and denials require audit. |
| Rate limiting | AI and widget data endpoints require quotas. |
| Idempotency | Mutating actions require idempotency key. |

### 1.17 15. AVCI Compliance Summary

| AVCI Property | API Evidence |
| --- | --- |
| Attributable | API owner, contract, version, capability binding, MicroFunction mapping. |
| Verifiable | OpenAPI validation, contract tests, security tests, OPA tests, CI evidence. |
| Classifiable | Classification fields, field filtering, model-route eligibility, retention rules. |
| Improvable | API metrics, error rates, denied actions, backlog references, version evolution. |
