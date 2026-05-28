---
document_id: "AIRA-DOC-051"
title: "AIRA Dynamic Workspace Security RBAC SBAC ABAC and OPA Policy Specification"
version: "v1.0"
status: "current"
source_file: "51-AIRA_Dynamic_Workspace_Security_RBAC_SBAC_ABAC_and_OPA_Policy_Specification_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Security-and-Policy"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - security
  - rbac
  - sbac
  - abac
  - opa
---

# AIRA Dynamic Workspace Security RBAC SBAC ABAC and OPA Policy Specification

AIRA Dynamic Workspace Security, RBAC, SBAC, ABAC, and OPA Policy Specification

## 1 AIRA Dynamic Workspace Security, RBAC, SBAC, ABAC, and OPA Policy Specification

### 1.1 Authorization, Field Visibility, Action Eligibility, Classification, Fail-Closed, and Rego Policy Design Standard

**Mandatory Practice Statement**
This document is part of the AIRA Dynamic User Workspace and Composable Experience Framework documentation set. All implementation work must preserve AVCI, SOLID, Clean Architecture, DDD, ports-and-adapters, security, observability, testability, reversibility, and governed MicroFunction execution.

### 1.2 Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA Dynamic Workspace Security, RBAC, SBAC, ABAC, and OPA Policy Specification |
| Document ID | AIRA-DOC-051 |
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

This specification defines the security and policy model for the AIRA Dynamic User Workspace. It ensures that dynamic screens, widgets, fields, actions, user personalization, admin template changes, AI assistant capabilities, and MicroFunction-backed actions are controlled through RBAC, SBAC, ABAC, OPA policy, classification handling, and fail-closed behavior.

The governing rule is:

**The backend must remove what the user is not allowed to see before the frontend receives the workspace definition.**

### 1.4 2. Authorization Model

| Model | Purpose |
| --- | --- |
| RBAC | Role-based eligibility such as borrower, loan officer, branch manager, admin, auditor. |
| SBAC | Skill-based capability such as KYC review, payment initiation, title release approval. |
| ABAC | Attribute-based context such as tenant, branch, department, device posture, trust score, workflow state. |
| OPA | Policy-as-code decision engine. |
| Classification | Controls data visibility, model route eligibility, logging, cache, and retention. |

### 1.5 3. Policy Decision Points

OPA decisions are required for:

- workspace visibility;

- screen visibility;

- component availability;

- widget action eligibility;

- field visibility;

- field editability;

- layout personalization;

- admin template change;

- AI capability access;

- file upload eligibility;

- generated artifact visibility;

- MicroFunction invocation;

- workflow transition.

### 1.6 4. Policy Input Schema

{
 "subject": {
 "userIdHash": "usr_hash",
 "tenantId": "BFS",
 "roles": ["LOAN_OFFICER"],
 "skills": ["MORTGAGE_VIEW", "KYC_REVIEW"],
 "department": "Loan Operations",
 "branch": "MAKATI",
 "trustScore": 85,
 "devicePosture": "COMPLIANT"
 },
 "resource": {
 "resourceType": "WIDGET",
 "workspaceCode": "REAL_PROPERTY_MORTGAGE_WORKSPACE",
 "screenCode": "MORTGAGE_DASHBOARD",
 "componentKey": "mortgagePipelineWidget",
 "classification": "CONFIDENTIAL",
 "classificationCeiling": "CONFIDENTIAL"
 },
 "action": "WIDGET_VIEW",
 "context": {
 "environment": "PROD",
 "workflowState": "PENDING_REVIEW",
 "featureFlags": ["workspace-personalization-v1"]
 }
}

### 1.7 5. Policy Output Schema

{
 "allow": true,
 "decisionId": "opa-dec-123",
 "policyVersion": "workspace-policy-v1.3.0",
 "allowedActions": ["VIEW", "OPEN_APPLICATION"],
 "fieldVisibility": {
 "loanAmount": "VISIBLE",
 "borrowerTIN": "MASKED",
 "internalRiskScore": "HIDDEN"
 },
 "obligations": [
 "MASK_PII",
 "WRITE_AUDIT_EVENT"
 ]
}

### 1.8 6. Rego Policy Example

package aira.workspace

default allow = false

allow {
 input.action == "WIDGET_VIEW"
 input.resource.componentKey == "mortgagePipelineWidget"
 "LOAN_OFFICER" in input.subject.roles
 "MORTGAGE_VIEW" in input.subject.skills
 input.subject.tenantId == "BFS"
 input.subject.devicePosture == "COMPLIANT"
 classification_allowed
}

classification_allowed {
 input.resource.classification != "RESTRICTED"
}

### 1.9 7. Field Visibility Rules

| Field Type | Rule |
| --- | --- |
| Public field | May be visible if component is allowed. |
| Internal field | Visible to internal roles only. |
| Confidential field | Requires approved role, skill, and classification ceiling. |
| Restricted field | Hidden by default; requires explicit policy and private/on-prem route where AI is involved. |
| PII field | Mask unless full visibility is required and approved. |
| Security field | Hidden from normal business screens. |

### 1.10 8. Action Eligibility Rules

| Action | Required Control |
| --- | --- |
| View widget | Role, skill, tenant, classification. |
| Add widget | User personalization permission and component eligibility. |
| Save layout | Layout policy, mandatory component rule, classification check. |
| Submit mortgage application | Capability binding, idempotency, MicroFunction transaction. |
| Upload KYC document | File policy, malware scan, classification, document intake. |
| Pay mortgage | Payment policy, idempotency, workflow/evidence. |
| Release title | Full payment verification, approval workflow, human approval. |
| AI prompt | AI capability policy, guardrails, route eligibility. |

### 1.11 9. Fail-Closed Requirements

Fail closed when:

- token is invalid;

- SBAC skills cannot be resolved;

- OPA is unavailable;

- policy version is missing;

- classification is unknown;

- component binding is missing;

- capability binding is missing;

- audit cannot be written for protected action;

- model route is ineligible;

- file classification fails.

### 1.12 10. Personalization Security

Users may personalize layouts only within:

- allowed components;

- allowed screens;

- allowed fields;

- allowed actions;

- allowed classification ceiling;

- allowed feature flags;

- mandatory widget constraints;

- tenant and branch boundaries.

Personalization must never create new privileges.

### 1.13 11. AI Assistant Security

AI assistant policy must control:

- input mode eligibility;

- output mode eligibility;

- file upload eligibility;

- prompt context injection;

- selected record context;

- model route;

- retrieval source eligibility;

- tool/action proposal;

- human approval requirement;

- retention and artifact visibility.

### 1.14 12. Required Policy Tests

| Test | Expected Result |
| --- | --- |
| Loan officer views mortgage pipeline | Permit. |
| Borrower views other borrower’s loan | Deny. |
| User adds unauthorized widget | Deny. |
| User saves layout hiding mandatory widget | Deny. |
| KYC reviewer uploads document | Permit if classification and file policy pass. |
| AI prompt requests payment execution | Proposal only; no direct execution. |
| OPA unavailable | Deny/fail closed. |

### 1.15 13. AVCI Compliance Summary

| AVCI Property | Security Evidence |
| --- | --- |
| Attributable | Policy owner, version, decision ID, subject, resource, action, approver. |
| Verifiable | Rego tests, deny tests, fail-closed tests, audit events, policy bundle checksum. |
| Classifiable | Classification input, ceiling, field rules, model route eligibility. |
| Improvable | Policy denial analytics, incident feedback, exception review, quarterly control testing. |
