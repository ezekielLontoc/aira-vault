---
document_id: "AIRA-DOC-045"
title: "AIRA Mortgage Experience Pack Reference Implementation"
version: "v1.0"
status: "current"
source_file: "45-AIRA_Mortgage_Experience_Pack_Reference_Implementation_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Experience-Packs"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - workspace
  - experience-pack
  - mortgage-experience
---

# AIRA Mortgage Experience Pack Reference Implementation

AIRA Mortgage Experience Pack Reference Implementation

## 1 AIRA Mortgage Experience Pack Reference Implementation v1.0

### 1.1 Real Property Mortgage Building Blocks, Dynamic Workspace, AI Guidance, KYC, Payment, Title Release, and MicroFunction Integration

**Mandatory AIRA Control Statement**
Dynamic, composable, AI-assisted, and multimodal capabilities must remain backend-governed, policy-filtered, MicroFunction-backed, auditable, reversible, and AVCI-compliant. Dynamic must never mean uncontrolled. AI may recommend, explain, summarize, generate, and propose; approved AIRA services, policies, workflows, and accountable human roles remain authoritative.

### 1.2 Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA Mortgage Experience Pack Reference Implementation |
| Document ID | AIRA-DOC-045 |
| Version | v1.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | DRAFT FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Companion Documents | 41 Dynamic User Workspace; 42 Composable Experience Framework; 43 Multimodal AI Assistant; 44 Next.js Rendering Strategy |

### 1.3 1. Executive Summary

The Mortgage Experience Pack is the first reference implementation of the AIRA Composable Experience Framework. It demonstrates how AIRA can assemble a complete real-property mortgage system from reusable experience blocks, dynamic workspace screens, MicroFunction-backed backend capabilities, workflow approvals, document/KYC processing, payment servicing, title release, audit evidence, and multimodal AI guidance.

This pack is not a standalone application. It is a reusable business experience package that can be deployed into AIRA workspaces and extended through governed configuration, MicroFunction catalog additions, API contracts, and policy bindings.

### 1.4 2. Mortgage Journey Scope

The reference journey covers:

1. Apply for mortgage.

2. Submit borrower and property information.

3. Upload KYC documents.

4. Validate and review KYC.

5. Request property appraisal.

6. Perform credit evaluation.

7. Route approval workflow.

8. Generate loan offer and amortization.

9. Disburse or activate mortgage account.

10. Pay mortgage dues.

11. Monitor collections/delinquency.

12. Confirm full payment.

13. Trigger title release and property award.

14. Record final evidence and release documents.

### 1.5 3. Experience Pack Composition

flowchart TD
 A[Mortgage Experience Pack] --> B[Application Block]
 A --> C[KYC Upload Block]
 A --> D[Property Appraisal Block]
 A --> E[Credit Evaluation Block]
 A --> F[Approval Queue Block]
 A --> G[Payment Schedule Block]
 A --> H[Collections Block]
 A --> I[Title Release Block]
 A --> J[AI Mortgage Guide Block]
 A --> K[Evidence Timeline Block]
 B --> MF[MicroFunction Runtime]
 C --> MF
 G --> MF
 I --> MF
 J --> AI[AI Assistant / Retrieval / Guardrails]

### 1.6 4. Experience Blocks

| Block | Purpose | Rendering | Backend Binding |
| --- | --- | --- | --- |
| Mortgage Application Block | Capture and submit application. | SSR + CSR form island | MORTGAGE_APPLICATION_SUBMIT |
| KYC Upload Block | Upload and track KYC documents. | SSR + CSR upload island | KYC_DOCUMENT_UPLOAD |
| KYC Review Block | Review extracted KYC data. | SSR | KYC_REVIEW_DECISION |
| Property Appraisal Block | Request and track appraisal. | SSR | PROPERTY_APPRAISAL_REQUEST |
| Credit Evaluation Block | Track credit review and result. | SSR | CREDIT_EVALUATION_RESOLVE |
| Approval Queue Block | Role/skill-based approval tasks. | SSR + CSR action | MORTGAGE_APPROVAL_ROUTE |
| Payment Schedule Block | View dues and amortization. | SSR | MORTGAGE_PAYMENT_SCHEDULE_VIEW |
| Payment Action Block | Initiate and confirm payment. | SSR + CSR action | MORTGAGE_PAYMENT_PROCESS |
| Collections Block | Monitor delinquency and arrears. | SSR | COLLECTIONS_STATUS_RESOLVE |
| Title Release Block | Trigger release after full payment. | SSR | TITLE_RELEASE_REQUEST |
| AI Mortgage Guide Block | Multimodal guidance and process explanation. | CSR panel + backend streaming | AI_MORTGAGE_GUIDANCE |
| Evidence Timeline Block | Show AVCI evidence. | SSR | MORTGAGE_EVIDENCE_TIMELINE |

### 1.7 5. Default Mortgage Workspace Layout

| Screen Area | Widgets / Blocks |
| --- | --- |
| Header | Search, notifications, AI panel toggle, profile. |
| Sidebar | Dashboard, Applications, Loans, KYC/AML, Payments, Title & Documents, Reports. |
| Main KPI Row | Applications, Active Loans, Funded Amount, Portfolio, Delinquency Rate. |
| Pipeline Section | Application, KYC, Credit, Approval, Funded stages. |
| Task Section | Approval tasks, KYC pending review, appraisal tasks. |
| Payment Section | Due amounts, collections performance, payment actions. |
| Title Section | Fully paid accounts, release workflow, title documents. |
| AI Assistant Side Panel | Prompt input and multimodal response area. |
| Evidence Section | Trace, policy, workflow, document, and MicroFunction evidence. |

### 1.8 6. Mortgage Process Flow

flowchart LR
 A[Apply for Mortgage] --> B[Submit Borrower and Property Data]
 B --> C[Upload KYC Documents]
 C --> D[KYC Validation and Review]
 D --> E[Property Appraisal]
 E --> F[Credit Evaluation]
 F --> G[Approval Workflow]
 G --> H[Loan Offer / Amortization]
 H --> I[Mortgage Account Activation]
 I --> J[Payments and Collections]
 J --> K{Fully Paid?}
 K -->|No| J
 K -->|Yes| L[Title Release Workflow]
 L --> M[Release Title / Award Property]
 M --> N[Final Evidence Archive]

### 1.9 7. AI Mortgage Guide Example

User prompt:

How do I apply for a mortgage, submit required documents for KYC, pay the mortgage, and receive the title once fully paid?

Allowed AI outputs:

| Output | Example |
| --- | --- |
| Text | Step-by-step mortgage process. |
| Checklist | Application, KYC, appraisal, approval, payment, title release. |
| Image | Mortgage process flow diagram. |
| Voice | Spoken explanation. |
| Video | Generated tutorial job. |
| References | Mortgage policy, KYC checklist, payment guide, title release SOP. |
| Action proposal | Start application, upload KYC, view payment schedule, request title release. |

Protected actions still require MicroFunction, OPA, workflow, and human approval where applicable.

### 1.10 8. Capability Binding Examples

workspace_capability_binding:
 component_key: mortgagePaymentWidget
 capability_code: MORTGAGE_PAYMENT_VIEW_PAY
 api_contract: /api/mortgage/v1/payments
 microfunction_transaction: MORTGAGE_PAYMENT_PROCESS
 required_role: BORROWER
 required_skill: PAYMENT_INITIATION
 opa_policy: workspace.mortgage.payment
 idempotency_required: true
 audit_profile: PAYMENT_ACTION_AUDIT

workspace_capability_binding:
 component_key: titleReleaseWidget
 capability_code: TITLE_RELEASE_REQUEST
 api_contract: /api/mortgage/v1/title-release/request
 microfunction_transaction: TITLE_RELEASE_REQUEST
 required_role: LOAN_OPERATIONS_OFFICER
 required_skill: TITLE_RELEASE_PROCESSING
 opa_policy: workspace.mortgage.title_release
 human_approval_required: true
 audit_profile: TITLE_RELEASE_AUDIT

### 1.11 9. Required MicroFunction Transactions

| Transaction | Purpose |
| --- | --- |
| MORTGAGE_APPLICATION_SUBMIT | Submit mortgage application. |
| KYC_DOCUMENT_UPLOAD | Upload and register KYC document. |
| KYC_REVIEW_DECISION | Approve/reject/return KYC review. |
| PROPERTY_APPRAISAL_REQUEST | Request appraisal workflow. |
| CREDIT_EVALUATION_RESOLVE | Resolve credit evaluation state. |
| MORTGAGE_APPROVAL_ROUTE | Route approval task. |
| MORTGAGE_PAYMENT_SCHEDULE_VIEW | View amortization and dues. |
| MORTGAGE_PAYMENT_PROCESS | Process payment action. |
| COLLECTIONS_STATUS_RESOLVE | Resolve arrears/delinquency data. |
| TITLE_RELEASE_ELIGIBILITY_CHECK | Check full payment and title release eligibility. |
| TITLE_RELEASE_REQUEST | Start title release workflow. |
| MORTGAGE_EVIDENCE_TIMELINE | Retrieve AVCI evidence timeline. |
| AI_MORTGAGE_GUIDANCE | Generate grounded mortgage guidance. |

### 1.12 10. Policy Requirements

| Policy Area | Required Rule |
| --- | --- |
| Application | Applicant or authorized loan officer only. |
| KYC Upload | User must own application or have KYC review skill. |
| KYC Review | Maker/checker separation required. |
| Payment | Borrower/payment officer role and branch/tenant checks required. |
| Collections | Collections role/skill required. |
| Title Release | Full payment, document completeness, approval workflow required. |
| AI Guidance | Source-grounded; no official action without workflow. |

### 1.13 11. Evidence Requirements

| Stage | Evidence |
| --- | --- |
| Application | Applicant, timestamp, data version, policy result. |
| KYC | Document hash, DMS reference, OCR/extraction result, reviewer. |
| Appraisal | Request, appraiser, report reference, approval. |
| Credit | Evaluation result, scoring evidence, reviewer. |
| Approval | Flowable task, approver, decision, timestamp. |
| Payment | Idempotency key, payment reference, receipt, posting status. |
| Title Release | Eligibility result, approval, title document reference. |
| AI Guidance | Prompt, response, source references, model route, guardrail result. |

### 1.14 12. Implementation Roadmap

| Phase | Deliverable |
| --- | --- |
| 0 | ADR and TDL approval. |
| 1 | Mortgage workspace shell and navigation. |
| 2 | Application and KYC blocks. |
| 3 | Approval queue and appraisal blocks. |
| 4 | Payment schedule and payment action blocks. |
| 5 | Collections and delinquency blocks. |
| 6 | Title release block. |
| 7 | AI Mortgage Guide multimodal panel. |
| 8 | Evidence timeline and audit dashboard. |

### 1.15 13. AVCI Compliance Summary

| AVCI Property | Evidence |
| --- | --- |
| Attributable | Each mortgage block, transaction, approval, document, payment, and title-release action has owner, user, workflow, and source reference. |
| Verifiable | KYC, appraisal, credit, payment, title release, and AI guidance require tests, policies, contracts, and evidence. |
| Classifiable | Customer, property, loan, payment, KYC, title, prompt, and artifact data are classified and access-controlled. |
| Improvable | Mortgage process metrics, user feedback, blocked actions, incidents, and audit findings improve blocks, policies, prompts, and MicroFunctions. |
