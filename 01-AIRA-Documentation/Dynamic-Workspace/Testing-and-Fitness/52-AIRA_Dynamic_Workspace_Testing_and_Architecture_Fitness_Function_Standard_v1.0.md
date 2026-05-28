---
document_id: "AIRA-DOC-052"
title: "AIRA Dynamic Workspace Testing and Architecture Fitness Function Standard"
version: "v1.0"
status: "current"
source_file: "52-AIRA_Dynamic_Workspace_Testing_and_Architecture_Fitness_Function_Standard_v1.0.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Dynamic-Workspace/Testing-and-Fitness"
generated_at: "2026-05-28"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - dynamic-workspace
  - workspace
  - testing
  - fitness-functions
---

# AIRA Dynamic Workspace Testing and Architecture Fitness Function Standard

AIRA Dynamic Workspace Testing and Architecture Fitness Function Standard

## 1 AIRA Dynamic Workspace Testing and Architecture Fitness Function Standard

### 1.1 Testing Strategy, Quality Gates, Policy Tests, Accessibility, Cache-Loss, Fail-Closed, and CI Fitness Functions

**Mandatory Practice Statement**
This document is part of the AIRA Dynamic User Workspace and Composable Experience Framework documentation set. All implementation work must preserve AVCI, SOLID, Clean Architecture, DDD, ports-and-adapters, security, observability, testability, reversibility, and governed MicroFunction execution.

### 1.2 Document Control

| Property | Value |
| --- | --- |
| Document Title | AIRA Dynamic Workspace Testing and Architecture Fitness Function Standard |
| Document ID | AIRA-DOC-052 |
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

This standard defines the required test strategy and architecture fitness functions for the AIRA Dynamic User Workspace. It ensures that dynamic screens, reusable components, rendering policies, API contracts, MicroFunction bindings, Redis caches, OPA policies, AI assistant capabilities, and personalization features remain correct, secure, observable, accessible, reversible, and AVCI-compliant.

The governing rule is:

**A dynamic workspace is not complete when it renders. It is complete when behavior, authorization, schema, security, accessibility, fail-closed handling, observability, cache safety, and MicroFunction evidence are test-proven.**

### 1.4 2. Test Pyramid

| Layer | Tests |
| --- | --- |
| Unit | Pure functions, schema validation, layout merge, field filtering, registry lookup. |
| Component | React widgets, renderer, forms, AI panel, accessibility. |
| Integration | Workspace resolver, OPA, PostgreSQL, Redis, API, MicroFunction binding. |
| Contract | OpenAPI request/response compatibility and generated clients. |
| E2E | Login, resolve workspace, personalize, save, restore, invoke action, denial path. |
| Security | RBAC/SBAC/ABAC/OPA, data masking, unsafe rendering, token leakage. |
| Resilience | Cache-loss, OPA failure, DB failure, invalid config, stale layout hash. |
| Architecture | Import rules, dependency boundaries, no direct model calls, no direct DB from frontend. |

### 1.5 3. Required Test Types

| Test Type | Required For | Tooling |
| --- | --- | --- |
| Unit tests | All logic changes. | Vitest/JUnit. |
| Component tests | All widgets and renderer changes. | Vitest, Testing Library. |
| Accessibility tests | All visible components. | axe, Playwright, manual review. |
| Contract tests | APIs and generated clients. | OpenAPI validation, Spring Cloud Contract where applicable. |
| OPA policy tests | Security policies. | Rego tests. |
| E2E tests | Critical workspace flows. | Playwright. |
| Cache-loss tests | Workspace resolver and preferences. | Integration tests. |
| Fail-closed tests | Protected operations. | Integration/security tests. |
| MicroFunction tests | Widget actions. | JUnit/component tests. |
| AI evaluation tests | AI assistant capability changes. | Golden datasets, guardrail tests. |

### 1.6 4. Minimum Test Set Per Widget

- renders with valid props;

- rejects invalid props;

- hides unavailable actions;

- does not render unauthorized fields;

- handles loading, empty, error, and denied states;

- supports keyboard navigation;

- passes accessibility scan;

- uses generated API client;

- does not log sensitive data;

- emits approved telemetry;

- has synthetic test data only.

### 1.7 5. Minimum Test Set Per Backend Capability

- authorizes valid user;

- denies invalid role;

- denies missing skill;

- denies invalid tenant/branch;

- denies classification mismatch;

- validates schema;

- enforces idempotency for mutations;

- maps action to MicroFunction;

- writes audit evidence;

- invalidates cache on change;

- returns safe error response.

### 1.8 6. Workspace Resolver Tests

| Scenario | Expected Result |
| --- | --- |
| Valid user opens assigned workspace | Returns filtered workspace. |
| User lacks role | Screen absent or safe denial. |
| User lacks skill | Widget/action absent. |
| Policy denies field | Field removed or masked. |
| Redis unavailable | Loads from PostgreSQL and continues. |
| PostgreSQL unavailable | Safe error; no stale privileged escalation. |
| OPA unavailable | Fail closed. |
| Invalid layout hash | Reject layout and reload authoritative version. |
| Template superseded | Resolver uses active version only. |

### 1.9 7. Personalization Tests

| Scenario | Expected Result |
| --- | --- |
| Move widget within bounds | Save succeeds. |
| Resize below minimum | Reject. |
| Remove mandatory widget | Reject. |
| Add unauthorized widget | Reject. |
| Add allowed widget | Save succeeds. |
| Policy changes after save | Widget hidden on next resolution. |
| Reset layout | Returns to approved template. |

### 1.10 8. AI Assistant Tests

| Test | Required Proof |
| --- | --- |
| Text prompt | Guardrails, retrieval, response, audit. |
| Voice input | STT adapter, classification, guardrail. |
| File input | Malware scan, classification, retention. |
| Image input | Vision route eligibility and redaction. |
| Image output | Artifact registry and classification. |
| Voice output | TTS adapter and safe response. |
| Video output | Async artifact job, approval where required. |
| Action proposal | Proposal only; no direct execution. |
| Prompt injection attempt | Blocked or safely handled. |

### 1.11 9. Architecture Fitness Functions

| Fitness Function | Reject If |
| --- | --- |
| No frontend business logic | Widget contains mortgage approval or payment decision logic. |
| No direct provider SDK | Frontend/backend imports direct AI provider SDK outside approved orchestration. |
| No invented endpoints | Component calls endpoint not generated from OpenAPI. |
| Component allow-list | Runtime renders unregistered component. |
| Policy required | Workspace resolver returns component without policy evaluation. |
| Cache not authority | Test passes only when Redis is available. |
| MicroFunction binding | Mutating widget action lacks transaction binding. |
| Evidence required | Protected action lacks audit/evidence. |
| Accessibility required | Critical component fails keyboard or screen-reader checks. |
| Classification required | Confidential data rendered without classification metadata. |

### 1.12 10. CI/CD Quality Gates

| Gate | Required Result |
| --- | --- |
| Build | Pass. |
| Type check | Pass. |
| Lint | Pass. |
| Unit tests | Pass. |
| Component tests | Pass. |
| OpenAPI validation | Pass. |
| OPA tests | Pass. |
| Accessibility tests | Pass for critical widgets. |
| Playwright smoke | Pass. |
| SAST/SCA/secrets | No critical/high unapproved findings. |
| Architecture fitness | Pass or approved waiver. |
| Evidence pack | Generated and linked. |

### 1.13 11. Test Data Rules

- Use synthetic data only.

- No production customer data.

- No real credentials.

- No raw PII unless synthetic and labelled.

- No real KYC documents.

- No real payment data.

- AI prompts in tests must be synthetic and classification-labelled.

### 1.14 12. Definition of Done for Workspace Feature

- API contract complete.

- Component schema complete.

- Component catalog registration complete.

- OPA policy tests complete.

- Widget tests complete.

- E2E happy and deny paths complete.

- Cache-loss test complete.

- Fail-closed test complete.

- Audit/evidence emitted.

- Accessibility checked.

- PR/MR AVCI summary complete.

### 1.15 13. AVCI Compliance Summary

| AVCI Property | Test Evidence |
| --- | --- |
| Attributable | Test owner, requirement, component, API, policy, MicroFunction, commit. |
| Verifiable | Automated tests, CI results, screenshots, evidence pack, coverage and mutation where applicable. |
| Classifiable | Test data classification, prompt classification, output classification, retention handling. |
| Improvable | Defect feedback, failed-test analytics, coverage gap backlog, improvement metrics. |
