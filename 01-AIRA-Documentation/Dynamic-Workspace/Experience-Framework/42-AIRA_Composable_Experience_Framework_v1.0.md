---
document_id: "AIRA-DOC-042"
title: "AIRA Composable Experience Framework"
version: "v1.0"
status: "current"
source_file: "42-AIRA_Composable_Experience_Framework_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Experience-Framework"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - workspace
  - composable-experience
---

# AIRA Composable Experience Framework

AIRA Composable Experience Framework

## 1 AIRA Composable Experience Framework v1.0

### 1.1 Reusable Building-Block Architecture for Dynamic Workspaces, Experience Packs, Rendering Policies, and MicroFunction-Backed User Journeys

**Mandatory AIRA Control Statement**
Dynamic, composable, AI-assisted, and multimodal capabilities must remain backend-governed, policy-filtered, MicroFunction-backed, auditable, reversible, and AVCI-compliant. Dynamic must never mean uncontrolled. AI may recommend, explain, summarize, generate, and propose; approved AIRA services, policies, workflows, and accountable human roles remain authoritative.

### 1.2 Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA Composable Experience Framework |
| Document ID | AIRA-DOC-042 |
| Version | v1.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | DRAFT FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Companion Documents | 41 Dynamic User Workspace; 43 Multimodal AI Assistant; 44 Next.js Rendering Strategy; 45 Mortgage Experience Pack |

### 1.3 1. Executive Summary

The AIRA Composable Experience Framework defines how AIRA will assemble future business systems from reusable experience blocks instead of rebuilding screens, flows, widgets, AI assistants, and backend integrations for every new system. It sits above the MicroFunction Framework and provides the frontend/business-experience equivalent of backend runtime assembly.

The framework enables AIRA to build larger systems such as mortgage servicing, loan origination, collections, document management, compliance operations, customer service, and analytics using reusable building blocks.

### 1.4 2. Purpose

The purpose of this standard is to define:

- reusable experience blocks,

- experience packs,

- workspace templates,

- screen templates,

- component catalog integration,

- rendering-policy metadata,

- capability bindings,

- AI capability bindings,

- multimodal artifact governance,

- MicroFunction-backed action execution,

- AVCI evidence for composable user experiences.

### 1.5 3. Framework Position

flowchart TD
 A[AIRA Foundation Package] --> B[Composable Experience Framework]
 B --> C[Experience Block Registry]
 B --> D[Experience Pack Registry]
 B --> E[Workspace Templates]
 B --> F[Rendering Policy Registry]
 B --> G[AI Capability Registry]
 C --> H[Component Catalog]
 C --> I[Capability Binding]
 I --> J[API Contracts]
 J --> K[MicroFunction Runtime]

### 1.6 4. Core Principles

| Principle | Meaning |
| --- | --- |
| Build from blocks | Future systems are assembled from reusable experience blocks. |
| Backend authority | Blocks render experience; backend services own business truth. |
| Configuration-first | Templates and metadata drive composition before custom code. |
| MicroFunction-backed | Mutating or business actions map to approved MicroFunction transactions. |
| Policy-filtered | RBAC/SBAC/ABAC/OPA filters blocks, actions, fields, and data. |
| Rendering-aware | Each block declares SSR/CSR/ISR/PPR/streaming eligibility. |
| AI-ready | Blocks may expose AI guidance or AI action proposals under guardrails. |
| Versioned and reversible | Blocks and packs have versions, activation state, rollback, and evidence. |

### 1.7 5. Experience Block Definition

An Experience Block is a reusable, governed unit of user experience.

Examples:

- Mortgage Application Block,

- KYC Upload Block,

- Payment Schedule Block,

- Title Release Block,

- Approval Queue Block,

- AI Assistant Block,

- Document Viewer Block,

- Evidence Timeline Block.

#### 1.7.1 5.1 Required Metadata

| Field | Description |
| --- | --- |
| block_id | Unique block identifier. |
| component_key | Frontend component registry key. |
| version | Block version. |
| bounded_context | Owning domain. |
| required_roles | RBAC requirements. |
| required_skills | SBAC requirements. |
| required_attributes | ABAC requirements. |
| classification_ceiling | Maximum data classification. |
| api_bindings | Approved APIs. |
| microfunction_bindings | Approved MicroFunction transactions. |
| workflow_bindings | Temporal/Flowable where applicable. |
| ai_capability_bindings | Optional AI capability references. |
| rendering_policy_ref | SSR/CSR/ISR/PPR/streaming policy. |
| evidence_profile | Audit and AVCI evidence profile. |

### 1.8 6. Experience Pack Definition

An Experience Pack is a collection of blocks, templates, policies, APIs, MicroFunctions, workflows, AI capabilities, and evidence profiles for a business domain.

| Pack Type | Example |
| --- | --- |
| Domain Pack | Mortgage Experience Pack |
| Workflow Pack | KYC Review Pack |
| Admin Pack | User Management and Configuration Pack |
| Analytics Pack | Portfolio Performance Pack |
| AI Pack | Mortgage AI Guidance Pack |

### 1.9 7. Experience Pack Structure

experience_pack:
 pack_id: MORTGAGE_EXPERIENCE_PACK
 version: 1.0.0
 bounded_context: real-property-mortgage
 blocks:
 - MORTGAGE_APPLICATION_BLOCK
 - KYC_UPLOAD_BLOCK
 - PAYMENT_SCHEDULE_BLOCK
 - TITLE_RELEASE_BLOCK
 - AI_MORTGAGE_GUIDE_BLOCK
 policies:
 - opa.workspace.mortgage
 microfunctions:
 - MORTGAGE_APPLICATION_SUBMIT
 - KYC_DOCUMENT_UPLOAD
 - MORTGAGE_PAYMENT_PROCESS
 - TITLE_RELEASE_REQUEST
 evidence_profile: MORTGAGE_EXPERIENCE_EVIDENCE

### 1.10 8. Relationship to MicroFunction Framework

| Composable Experience Layer | MicroFunction Layer |
| --- | --- |
| Experience Block | MicroFunction transaction or query capability. |
| Widget Action | STP-BUS or STP-STD sequence. |
| Screen Template | Transaction assembly and workflow routing. |
| AI Guidance | AI/RAG MicroFunction and AI orchestration. |
| Evidence Timeline | STP-AUD and audit/evidence store. |

The experience layer composes the user journey. The MicroFunction layer executes governed backend capability.

### 1.11 9. Registry Model

| Registry | Purpose |
| --- | --- |
| Experience Block Registry | Lists reusable blocks and their governance metadata. |
| Experience Pack Registry | Groups blocks into domain packages. |
| Rendering Policy Registry | Controls rendering and caching behavior. |
| Capability Binding Registry | Maps UI action to API/MicroFunction/policy. |
| AI Capability Registry | Controls AI prompt and output behavior. |
| Multimodal Artifact Registry | Tracks generated outputs. |

### 1.12 10. Governance Rules

1. No experience block is active without owner, version, classification, schema, policy, and evidence profile.

2. No widget action executes without capability binding.

3. No user-specific or Confidential data is rendered through ISR.

4. No AI-generated artifact becomes authoritative without review where required.

5. No experience pack is promoted without test evidence, rollback plan, and CAB/ARB approval.

### 1.13 11. Implementation Roadmap

| Phase | Target |
| --- | --- |
| 0 | Approve ADR for Composable Experience Framework. |
| 1 | Implement Experience Block Registry. |
| 2 | Implement Rendering Policy Registry. |
| 3 | Implement Capability Binding Registry. |
| 4 | Implement first Mortgage Experience Pack. |
| 5 | Add AI Assistant and multimodal artifact registry. |
| 6 | Add reusable packs for KYC, Payments, Collections, and Title Release. |

### 1.14 12. AVCI Compliance Summary

| AVCI Property | Evidence |
| --- | --- |
| Attributable | Blocks, packs, policies, APIs, MicroFunctions, and AI capabilities have owners and versions. |
| Verifiable | Blocks and packs require tests, policy checks, contract checks, rendering checks, and evidence records. |
| Classifiable | Blocks and packs declare classification ceiling, handling rules, and model/output eligibility. |
| Improvable | Packs evolve through usage telemetry, feedback, incidents, ADR/TDL updates, and versioned releases. |
