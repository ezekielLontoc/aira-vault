---
document_id: "AIRA-DOC-026A"
title: "AIRA Data Classification Retention and Evidence Register"
version: "v1.1"
status: "aligned"
source_file: "26A-AIRA_Data_Classification_Retention_and_Evidence_Register_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "00-Control-Center/Classification-Register"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - data-classification
  - retention
  - evidence
---

# AIRA Data Classification Retention and Evidence Register

**AIRA**

AI-Native Enterprise Platform

**AIRA Data Classification, Retention, and Evidence Register**

_Classification Rules | Retention | Evidence Mapping | Model Route Eligibility | Audit Controls_

**v1.1 - Canonical 26A Numbering and Pack 03 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-026A** |
| **Document Title** | **AIRA Data Classification, Retention, and Evidence Register** |
| **Document Version** | **v1.1 - Canonical 26A Numbering and Pack 03 v1.2 Alignment Update** |
| **Supersedes** | **26-AIRA_Data_Classification_Retention_and_Evidence_Register_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Data classification register companion** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines classification, retention, evidence, model-route eligibility, logging, index, and retrieval handling rules.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active input baseline** | **AIRA Source Packs v3.0 / Aligned Pack Set v1.1 remains the input baseline; Pack 03 v1.2 is the new individual output set for Obsidian upload.** |
| **Backend runtime baseline** | **Java 25 LTS is the required AIRA backend runtime. Spring Boot 4.x and Spring Framework 7.x remain the target backend framework generation where compatible.** |
| **Java 21 handling** | **Java 21 is not the default. It may appear only as a documented compatibility fallback with Architecture Board/CAB waiver, risk acceptance, and exit plan.** |
| **Pack 01 governance references** | **References are aligned to AVCI v3.1, Engineering Blueprint v5.1, DevSecOps v3.1, 01A v1.1, and ADR-AIRA-2026-001 v1.1.** |
| **Pack 02 execution references** | **References are aligned to Developer Guide v4.1, CLAUDE.md v3.1, Skills Framework v3.1, Unit Testing v3.1, GitNexus v1.2, and Developer Onboarding v1.1.** |
| **Pack 03 numbering cleanup** | **Duplicate-number documents are promoted to suffix hierarchy: 19A/19B, 21A/21B, 22A, 23A, 25A, and 26A/26B.** |
| **Technology baseline** | **This Pack 03 v1.2 set produces Technology Stack v9.1 as an aligned successor to v9.0 while retaining v9.0 lineage and Golden Source patch-pinning discipline.** |
| **AI execution boundary** | **All model access routes through LiteLLM. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Tool actions go through Harness/SBAC/OPA.** |
| **GitNexus** | **GitNexus is read-only, derivative, commit-bound code intelligence. It cannot commit, approve, merge, deploy, mutate production, or replace tests/scans/human review.** |
| **Dograh** | **Dograh is governed voice-agent orchestration only. It is not a hardcoded STT/TTS/LLM provider and remains subject to classification, consent, guardrail, and audit controls.** |
| **Obsidian / LLM Wiki** | **Obsidian and LLM Wiki are curated/derivative knowledge layers. Tier 0 sources remain approved DOCX/PDF, Git, OpenKM, databases, workflow histories, security/evidence stores, and audit records.** |

### Material Changes in This Version

Renumbered from duplicate Document 26 to 26A to distinguish it from the governed knowledge automation pipeline standard.

Aligned classification handling with Information Nervous System v4.1, Pack 05 Security v2.0, and Obsidian/LLM Wiki ingestion rules.

Added Java 25-related evidence fields for backend-runtime baseline, build image, CI runner, and source-code indexing metadata.

Clarified GitNexus indexes and Dograh transcripts as classified derivative artifacts requiring retention, ACL, and deletion rules.

Reinforced that Confidential/Restricted data must not be routed to unmanaged cloud prompts, logs, traces, fixtures, or indexes.

### Mandatory Java 25 Backend Control

| **Control** | **Pack 03 v1.2 Requirement** |
| --- | --- |
| **Default backend runtime** | **Java 25 LTS. All backend service templates, code-generation prompts, devcontainers, CI runners, unit/contract/architecture tests, GitNexus indexes, evidence records, and operational inventory must assume Java 25 unless explicitly waived.** |
| **Fallback runtime** | **Java 21 is waiver-only for compatibility blockers. The waiver must include owner, reason, affected service, risk, compensating controls, target migration path, and exit date.** |
| **Golden Source** | **Exact Java distribution, image digest, Gradle/Maven version, Spring Boot/Spring Framework compatibility, and patch versions are pinned in Golden Source repositories and validated through CI evidence.** |
| **Review gate** | **PR/MR reviewers must reject backend code, templates, devcontainers, prompts, or CI jobs that quietly downgrade the runtime baseline or introduce untracked dual-runtime behavior.** |
| **Evidence** | **Evidence packs must expose java.version, toolchain version, build image digest, SBOM, SAST/SCA results, architecture fitness results, and runtime health proof.** |

### AVCI Compliance Summary for This Update

| **AVCI Property** | **Evidence in This Pack 03 v1.2 Update** |
| --- | --- |
| **Attributable** | **Each file has a document ID, owner, supersedes value, source pack context, numbering treatment, and material-change list.** |
| **Verifiable** | **The Java 25 baseline is explicitly recorded, cross-pack references are updated, duplicate numbering is resolved by suffix hierarchy, and original source content is preserved after this alignment notice.** |
| **Classifiable** | **All generated files are marked INTERNAL CONFIDENTIAL and inherit AIRA classification-handling, routing, logging, index, and retention rules.** |
| **Improvable** | **Open provisional-document treatment remains visible for master-register review; numbering cleanup is reversible and auditable through suffix hierarchy.** |

## Updated Baseline Content

AIRA

AI-Native Enterprise Platform

Data Classification, Retention, and Evidence Register

Classification Handling | Retention Governance | Evidence Paths | Model-Routing Eligibility | AVCI-Aligned

Version 1.0 - Regenerated Improved Format | April 2026 | INTERNAL CONFIDENTIAL

| **Mandatory Control Position****<br>Classification is an executable control in AIRA. It governs storage, encryption, access, logging, masking, retention, prompt eligibility, retrieval eligibility, model routing, approval gates, and disposal evidence.** |
| --- |

| **Document ID** | AIRA-DOC-026 |
| --- | --- |
| **Owner** | Solutions Architecture Office / Data Governance Lead |
| **Status** | FOR ARCHITECTURE REVIEW BOARD / DATA GOVERNANCE APPROVAL |
| **Evidence Path** | OpenKM Tier-0 / AIRA / Registers / Data-Classification-Retention-Evidence / v1.0 |
| **Operating Philosophy** | Discipline First - Automation Second - Intelligence Third - AVCI Always |

## Table of Contents

**Document Control**

Mandatory Practice Statement

## **1. Executive Summary**

### 1.1 Strategic Outcomes

### 1.2 What This Register Is Not

## **2. Scope, Authority, and Precedence**

### 2.1 In Scope

### 2.2 Out of Scope

### 2.3 Authority and Conflict Rule

## **3. Non-Negotiable Register Principles**

## **4. Classification Model and Handling Matrix**

### 4.1 Classification Escalation Triggers

### 4.2 Classification Downgrade Rule

## **5. Information Domains, Source Tiers, and Evidence Classes**

### 5.1 Information Domains

### 5.2 Source Tier Rules

## **6. Master Data Classification Register**

### 6.1 Required Register Fields

### 6.2 Example Register Entries

## **7. Retention Schedule Register**

### 7.1 Retention Clock Start

## **8. Evidence Register and Evidence Paths**

### 8.1 Evidence Classes

### 8.2 Evidence Path Standard

## **9. Prompt Eligibility and Model-Routing Register**

### 9.1 Model-Routing Decision Matrix

### 9.2 AI Evidence Requirements

## **10. Storage and Derivative Handling Rules**

### 10.1 Storage Destination Matrix

### 10.2 Derivative Invalidation Rules

## **11. Lifecycle Procedures**

### 11.1 Classification and Registration Procedure

### 11.2 Evidence Capture and Retention Procedure

### 11.3 Model Routing Procedure

### 11.4 Retention, Legal Hold, and Disposal Procedure

## **12. Register Implementation Patterns**

### 12.1 Git-Based Register Layout

### 12.2 PostgreSQL Register Tables

## **13. Auto-Heal, Auto-Learn, and Auto-Improve Controls**

## **14. Architecture Fitness Functions and CI Gates**

## **15. RACI**

## **16. Implementation Roadmap**

## **17. Acceptance Criteria**

**Appendix A. YAML Register Template**

**Appendix B. Evidence Manifest Template**

**Appendix C. Copy-Ready Mermaid References**

C.1 Classification and Registration Flow

C.2 Evidence Capture and Retention Flow

C.3 Classification-Aware Prompt and Model Routing

C.4 Retention, Legal Hold, and Disposal Flow

**Appendix D. AVCI Compliance Summary**

## Document Control

| **Property** | **Value** |
| --- | --- |
| **Document ID** | AIRA-DOC-026 |
| **Document Title** | AIRA Data Classification, Retention, and Evidence Register |
| **Version** | v1.0 - Initial Operational Register |
| **Classification** | INTERNAL CONFIDENTIAL |
| **Status** | FOR ARCHITECTURE REVIEW BOARD / DATA GOVERNANCE APPROVAL |
| **Owner** | Solutions Architecture Office / Data Governance Lead |
| **Co-Owners** | Security Administrator, Compliance, Internal Audit, Database Administrator, AI Governance Lead |
| **Effective Date** | Upon Architecture Review Board / CAB approval |
| **Review Cadence** | Quarterly; unscheduled on regulatory, data-classification, retention, model-routing, evidence, or storage-control change |
| **Audience** | Solutions Architect / IT Head, Enterprise Architects, Software Developers, DevSecOps, Security Administrator, DBA, QA, SRE, AI Engineers, Compliance, Internal Audit |
| **Companion Documents** | 01 AVCI Engineering Standard v3.1; 01A Enterprise Design Principles and SOLID Enforcement Layer v1.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.1; 05 Information Nervous System v4.1; 06 CLAUDE.md Reference v3.1; 08 Unit Testing Standard v3.1; 11 DevSecOps Standard v3.1; 13 Knowledge Governance Standard v2.0; 15 API Contract Standard v2.0; 16 Database Standard v2.0; 17 Security Standard v2.0; 20 CI/CD and Evidence Pack Guide v1.0; 22 Prompt, Guardrail, Model Alias, and AI Evaluation Registry v1.0 |
| **Compliance Scope** | AVCI; ISO/IEC 27001:2022; CIS Controls v8.1; NIST SSDF; NIST AI RMF; SOC 2; BSP IT Risk; privacy, audit, and records-retention obligations applicable to AIRA |
| **Evidence Path** | OpenKM Tier-0 / AIRA / Registers / Data-Classification-Retention-Evidence / v1.0 |

### Mandatory Practice Statement

No AIRA data set, document, prompt, model output, runtime configuration, evidence artifact, retrieval chunk, embedding, audit record, or knowledge artifact may be used by engineering, AI, runtime services, retrieval systems, or operational workflows unless its classification, owner, source tier, retention rule, storage location, access rule, model-routing eligibility, and evidence reference are registered or derivable from an approved register.

Classification is not a label for reporting only. In AIRA, classification determines storage, encryption, access, logging, masking, retention, prompt eligibility, retrieval eligibility, model route, approval gates, and disposal procedure.

## 1. Executive Summary

The AIRA platform is AI-native, evidence-first, and built for regulated mission-critical operation. Its trustworthiness depends on controlling not only code and infrastructure, but also the data, documents, evidence, prompts, model outputs, retrieval indexes, and knowledge artifacts that humans and AI agents use to make decisions.

This register is the operational bridge between the architecture standards and day-to-day data handling. It defines how AIRA classifies artifacts, assigns retention rules, stores evidence, governs prompt and model-routing eligibility, applies legal hold, disposes of expired records, and proves AVCI compliance.

This document is not a general data-policy narrative. It is a practical register standard. It defines the minimum fields, decision rules, storage paths, lifecycle states, review cadence, and evidence gates that must be implemented in Git, OpenKM, PostgreSQL, Obsidian, LLM Wiki, pgvector, LightRAG, CI/CD evidence packs, and operational audit repositories.

### 1.1 Strategic Outcomes

| **Outcome** | **Required Result** |
| --- | --- |
| **Classification-aware engineering** | Developers, AI tools, and runtime services can determine how an artifact must be handled before it is stored, logged, cached, indexed, embedded, prompted, or released. |
| **Evidence defensibility** | Every material artifact can be traced to an owner, source, hash, classification, retention rule, approval state, and evidence path. |
| **Safe AI routing** | Prompts, retrieval packs, model calls, generated answers, and tool actions are allowed only when classification and policy permit them. |
| **Controlled retention** | Records are retained, archived, superseded, or purged through rules, approval, legal hold checks, and immutable disposal evidence. |
| **Reduced audit friction** | Compliance and Internal Audit can inspect one operational register rather than reconstructing handling decisions from code, tickets, chats, or individual memory. |

### 1.2 What This Register Is Not

This register does not replace database schemas, OpenKM folder structures, CI/CD evidence manifests, or the Information Nervous System. It standardizes the fields and rules those systems must implement.

It is not a permission bypass. An artifact registered as usable must still pass runtime authorization, SBAC, OPA, guardrails, and human approval where required.

It is not a permanent retention exception. Retention extensions require legal hold, compliance approval, or approved business need with expiry.

## 2. Scope, Authority, and Precedence

### 2.1 In Scope

Business data, reference data, configuration data, metadata, runtime parameters, audit records, CI/CD evidence, test evidence, security evidence, incident evidence, data lineage, embeddings, retrieval chunks, prompts, guardrails, model aliases, model outputs, evaluation results, agent action evidence, OpenKM documents, Obsidian notes, LLM Wiki artifacts, and MicroFunction configuration records.

All storage destinations: Git, OpenKM, PostgreSQL, audit store, object storage where approved, Harbor registry metadata, CI/CD evidence store, Obsidian, LLM Wiki, pgvector, LightRAG, Redis/Valkey cache, and observability tools.

All lifecycle actions: create, classify, review, approve, store, retrieve, cache, index, embed, prompt, generate, publish, retain, archive, supersede, purge, and dispose.

### 2.2 Out of Scope

HR employee file retention, corporate finance retention, and non-AIRA enterprise records unless they are ingested into or referenced by AIRA.

Raw production customer records not yet approved for AIRA processing.

Unmanaged spreadsheets, private notes, unmanaged chat exports, or external documents not promoted into the governed AIRA source structure.

### 2.3 Authority and Conflict Rule

| **Authority Level** | **Source** | **Rule** |
| --- | --- | --- |
| L0 | Regulatory / Legal / Executive Risk Decision | Mandatory legal or regulatory hold overrides normal disposal. |
| L1 | AIRA Engineering Blueprint and Security Standard | Architecture and security boundaries govern storage, routing, and access. |
| L1 | AVCI Engineering Standard and 01A Enforcement Layer | Missing AVCI or design-principle evidence blocks production use. |
| L2 | This Register | Governs classification, retention, evidence paths, prompt eligibility, and handling rules. |
| L3 | Database, API, Knowledge, DevSecOps, CI/CD, and Prompt Registry Standards | Implement register rules in specialist domains. |
| L4 | Local repository files and runtime configuration | Must not weaken this register. |

If this register conflicts with a higher authority, the higher authority controls and this register must be corrected through an ADR or TDL.

## 3. Non-Negotiable Register Principles

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| DCRE-01 | Classify before use | Artifacts must be classified before storage, indexing, prompting, caching, publication, or model routing. |
| DCRE-02 | Raw source remains authoritative | Git, OpenKM, PostgreSQL, workflow histories, audit stores, and approved evidence repositories remain authoritative. Embeddings, summaries, indexes, and caches are derivative. |
| DCRE-03 | Classification drives controls | Classification determines ACL, encryption, masking, logging, retention, routing, approval, and disposal. |
| DCRE-04 | Prompt eligibility is explicit | No data enters an AI prompt unless the register or policy permits it. |
| DCRE-05 | Evidence is retained by class | Evidence retention follows artifact type, risk, lifecycle state, and compliance need. |
| DCRE-06 | Legal hold blocks disposal | Any legal, regulatory, audit, incident, or executive hold suspends purge until formally released. |
| DCRE-07 | Derivatives expire with their sources | Chunks, embeddings, summaries, graph edges, cache entries, and LLM Wiki artifacts must be invalidated or rebuilt when the source is superseded, purged, or reclassified. |
| DCRE-08 | Disposal is evidenced | Deletion, purge, supersedence, archival, and cache invalidation must produce evidence. |
| DCRE-09 | AI outputs are data | Model outputs, agent decisions, prompt logs, retrieval packs, and evaluation results are classified artifacts. |
| DCRE-10 | AVCI is mandatory | Every register entry must have owner, source, verification evidence, classification, and improvement path. |

## 4. Classification Model and Handling Matrix

AIRA uses four primary classification levels. The default classification for internal engineering artifacts is Internal unless a stricter rule applies. When uncertain, classify upward until reviewed.

| **Classification** | **Description** | **Typical Examples** | **AI Prompt Eligibility** | **Model Route** | **Minimum Handling** |
| --- | --- | --- | --- | --- | --- |
| Public | Approved for public disclosure. | Published website text, public open-source documentation, publicly released architecture summaries. | Allowed if citation and source are tracked. | Approved cloud or local route. | Source citation, integrity check, no false attribution. |
| Internal | Business or engineering information not intended for public release. | Developer guides, internal standards, sanitized examples, non-sensitive diagrams. | Allowed in approved workspace when policy permits. | Approved cloud or local route. | Named access, repository controls, no personal accounts. |
| Confidential | Sensitive business, architecture, security, operational, or regulated information. | Security design, internal architecture, system topology, access-control rules, non-public vendor details. | Restricted; requires redaction or approved workspace and policy check. | Private/on-prem route preferred; cloud route only by waiver and redaction. | MFA, least privilege, redaction, audit, stricter retention. |
| Restricted | Highest-risk information, customer PII, secrets, credentials, production data, regulated records, incident-sensitive artifacts. | Secrets, tokens, raw customer records, production logs with PII, security incident details, privileged access evidence. | Not allowed in cloud prompts; only approved private/on-prem route after redaction and human approval where applicable. | Private/on-prem route only unless executive risk waiver exists. | Strong ACL, encryption, no unmanaged copy, legal hold awareness, strict audit. |

### 4.1 Classification Escalation Triggers

An artifact must be escalated to Confidential or Restricted when it contains or can expose:

Customer identity, account information, financial data, collateral data, document images, or regulated personal data.

Credentials, secrets, tokens, key material, internal IPs where sensitive, privileged access details, break-glass procedures, exploit details, or high-risk vulnerabilities.

Non-public architecture, security topology, AI model-routing controls, guardrail bypass analysis, incident information, audit findings, or legal matters.

High-impact decision logic that affects customer outcomes, financial results, access rights, retention, or legal obligations.

### 4.2 Classification Downgrade Rule

Downgrading classification requires:

Named data owner approval.

Security review when Confidential or Restricted is involved.

Evidence of redaction, anonymization, aggregation, or synthetic transformation.

Updated register entry with reason, approver, date, and expiry if temporary.

Re-indexing and cache invalidation of prior derivatives.

## 5. Information Domains, Source Tiers, and Evidence Classes

### 5.1 Information Domains

| **Domain** | **Description** | **Typical Owners** | **Register Concern** |
| --- | --- | --- | --- |
| D1 Governance | Policies, standards, ADRs, approvals, risk decisions. | Architecture, Compliance, Internal Audit. | Authority, review cadence, evidence path. |
| D2 Requirements | Epics, stories, acceptance criteria, business rules. | Product Owner, Business SME. | Traceability, sign-off, classification. |
| D3 Code | Source code, generated code, scripts. | Development Lead. | Repository, commit, tests, scan results. |
| D4 Configuration | Feature flags, runtime parameters, model aliases, guardrails. | DevSecOps, AI Governance. | Version, activation, rollback, prompt eligibility. |
| D5 Telemetry | Logs, metrics, traces, SLO events. | SRE, DevSecOps. | PII redaction, retention, observability evidence. |
| D6 Security | Findings, access logs, secrets metadata, policy results. | Security Administrator. | Strict classification, evidence retention, restricted access. |
| D7 Quality | Test results, coverage, mutation, contract checks, evaluation runs. | QA/SDET. | Evidence pack, reproducibility, release gate. |
| D8 Data | Schemas, database records, chunks, embeddings, lineage. | DBA, Data Governance. | RLS, retention, model routing, derivative invalidation. |
| D9 Enablement | Runbooks, onboarding, SOPs, training materials. | Team Lead, Knowledge Steward. | Current status, supersedence, LLM Wiki eligibility. |
| D10 External | Public standards, vendor docs, advisories, threat intelligence. | Architecture, Security. | Citation, freshness, trust rating. |
| D11 AI Artifacts | Prompts, guardrails, models, evaluations, outputs. | AI Governance Lead. | Prompt eligibility, guardrails, route, eval evidence. |
| D12 Workflow Decisions | Temporal/Flowable histories, approvals, exceptions. | Workflow Owner. | Evidence retention, audit trail, human accountability. |

### 5.2 Source Tier Rules

| **Tier** | **Representative Sources** | **Authority** | **Register Requirement** |
| --- | --- | --- | --- |
| Tier 0 | Git, OpenKM, PostgreSQL system of record, Temporal/Flowable histories, audit store, identity/security tools. | Authoritative. | Must have owner, classification, retention, and evidence path. |
| Tier 1 | Obsidian canonical notes, LLM Wiki approved artifacts, approved runbooks. | Curated authority with source links. | Must cite Tier-0 source and review state. |
| Tier 2 | pgvector chunks, LightRAG graph, generated summaries, search indexes. | Derivative. | Must record source hash, source version, rebuild trigger. |
| Tier 3 | Redis/Valkey cache, semantic cache, temporary runtime state. | Ephemeral. | Must not be authoritative; TTL/invalidation required. |

## 6. Master Data Classification Register

The master register may be implemented as YAML in Git, controlled tables in PostgreSQL, and a curated view in Obsidian/LLM Wiki. The authoritative source for static definitions should be Git. Runtime records may be stored in PostgreSQL with immutable audit references.

### 6.1 Required Register Fields

| **Field** | **Required** | **Description** |
| --- | --- | --- |
| artifact_id | Yes | Unique identifier for the artifact or data class. |
| artifact_name | Yes | Human-readable name. |
| artifact_type | Yes | Document, table, column, prompt, evidence, event, model output, cache, embedding, runbook, etc. |
| domain | Yes | D1-D12 information domain. |
| source_tier | Yes | Tier 0, 1, 2, or 3. |
| owner | Yes | Accountable human role or system owner. |
| steward | Yes | Operational maintainer. |
| classification | Yes | Public, Internal, Confidential, or Restricted. |
| reason_for_classification | Yes | Why this classification applies. |
| storage_location | Yes | Git path, OpenKM path, PostgreSQL schema/table, evidence store, etc. |
| retention_rule_id | Yes | Link to retention schedule. |
| access_policy_id | Yes | RBAC/ABAC/SBAC/OPA policy reference. |
| prompt_eligibility | Yes | Allowed, redacted-only, private-route-only, prohibited. |
| model_route_policy | Yes | LiteLLM alias group or private/on-prem route rule. |
| logging_rule | Yes | What may be logged, masked, hashed, or excluded. |
| derivative_policy | Yes | Whether chunks, embeddings, summaries, or cache are allowed. |
| legal_hold_status | Yes | None, active, pending review, released. |
| verification_evidence | Yes | Test, scan, review, approval, hash, or evidence pack reference. |
| last_reviewed_at | Yes | Date of last review. |
| next_review_due | Yes | Next review date. |
| status | Yes | Draft, approved, active, superseded, retired, purged. |

### 6.2 Example Register Entries

| **Artifact ID** | **Artifact Type** | **Classification** | **Prompt Eligibility** | **Model Route** | **Retention Rule** | **Evidence Path** |
| --- | --- | --- | --- | --- | --- | --- |
| AIRA-GOV-STANDARD | Approved standards | Confidential | Redacted-only | Approved workspace or private route | RET-GOV-07Y | OpenKM / AIRA / Standards |
| AIRA-CI-EVIDENCE | CI/CD evidence pack | Internal to Confidential | Redacted-only | Internal route; Restricted findings private route | RET-REL-07Y | OpenKM / AIRA / Evidence / CI |
| AIRA-SEC-FINDING | Security findings | Confidential to Restricted | Private-route-only | Private/on-prem | RET-SEC-07Y | Security evidence store / OpenKM |
| AIRA-CUSTOMER-DOC | Customer uploaded document | Restricted | Prohibited unless private route and approved redaction | Private/on-prem only | RET-BUS-POLICY | OpenKM / customer-document vault |
| AIRA-PROMPT-TEMPLATE | Approved prompt template | Internal or Confidential | Allowed by policy | LiteLLM approved alias | RET-AI-03Y | Git / ai/prompts |
| AIRA-EMBEDDING-CHUNK | Retrieval chunk/embedding | Same as source or stricter | Private-route-only if Confidential/Restricted | Route inherited from source | Same as source or shorter | PostgreSQL / pgvector lineage |

## 7. Retention Schedule Register

Retention rules must be approved by Data Governance, Compliance, Security, and the business owner where applicable. The periods below are engineering baselines and must be adjusted when legal, regulatory, contractual, or corporate retention rules require stricter retention.

| **Retention Rule ID** | **Artifact Class** | **Minimum Retention** | **Disposition** | **Notes** |
| --- | --- | --- | --- | --- |
| RET-GOV-07Y | Approved standards, policies, ADRs, waivers, architecture decisions | 7 years after supersedence or longer if required | Archive then controlled purge | Keep supersedence chain and approval evidence. |
| RET-REQ-07Y | Requirements, acceptance criteria, UAT sign-off, business approvals | 7 years after system retirement or regulatory rule | Archive | Link to release and evidence pack. |
| RET-CODE-LIFE | Source code, build scripts, IaC, configuration history | Life of system plus 7 years | Archive repository | Preserve tags, commits, signed provenance. |
| RET-REL-07Y | CI/CD evidence, SBOM, signed provenance, release approvals | 7 years after release retirement | Archive | Required for audit and incident reconstruction. |
| RET-TEST-05Y | Test evidence, coverage, mutation, contract test results | 5 years or release life if longer | Archive | High-risk releases inherit release retention. |
| RET-SEC-07Y | Security findings, access reviews, incident evidence, policy decisions | 7 years after closure | Archive with restricted access | Legal hold may extend retention. |
| RET-AUD-07Y | Audit logs and agent action evidence | 7 years minimum | Archive | Restricted records require strong access controls. |
| RET-AI-03Y | Prompt versions, guardrail versions, model alias history, AI evaluations | 3 years after retirement, or release retention if used in production decision | Archive | Preserve evaluation results and approval state. |
| RET-OBS-01Y | Routine operational logs, metrics, traces | 1 year unless incident-linked | Purge or archive | Incident-linked telemetry inherits RET-SEC-07Y. |
| RET-CACHE-TTL | Redis/Valkey cache, semantic cache | TTL or explicit invalidation | Expire | Never authoritative. |
| RET-DERIV-SOURCE | Chunks, embeddings, graph indexes, summaries | Inherit source rule or shorter | Rebuild, archive, or purge with source | Must invalidate on source purge or reclassification. |
| RET-BUS-POLICY | Business records and customer documents | Per approved business/legal retention | Archive or purge by legal procedure | Must be defined before production onboarding. |

### 7.1 Retention Clock Start

Retention starts from one of the following dates, depending on artifact class:

Supersedence date for standards, ADRs, and policies.

Release retirement date for release evidence.

Incident closure date for incident evidence.

Last active transaction date for business records.

Source purge or supersedence date for derivative indexes.

Model alias retirement date for AI routing and evaluation artifacts.

## 8. Evidence Register and Evidence Paths

### 8.1 Evidence Classes

| **Evidence Class** | **Examples** | **Minimum Evidence Fields** |
| --- | --- | --- |
| Architecture Evidence | ADR, TDL, diagram, review decision, waiver. | owner, decision ID, version, approver, classification, related requirement. |
| Code Evidence | Commit, pull request, code review, static analysis. | commit hash, author, reviewer, tests, scans, branch, artifact hash. |
| Build Evidence | CI run, SBOM, SLSA provenance, image signature. | pipeline ID, artifact digest, builder identity, dependency manifest. |
| Test Evidence | Unit, component, contract, mutation, E2E, AI eval. | test suite, result, coverage, changed-line evidence, reviewer. |
| Security Evidence | SAST, SCA, DAST, secret scan, access review, OPA decision. | tool, rule version, finding status, remediation, approval. |
| Runtime Evidence | Logs, metrics, traces, audit events, SLO alerts. | trace_id, actor, service, classification, retention rule. |
| AI Evidence | Prompt version, model alias, guardrail result, retrieval pack, output hash. | model route, prompt ID, guardrail policy, citations, human approval. |
| Operational Evidence | Incident, Auto-Heal candidate, rollback, DLQ replay, cache rebuild. | incident ID, action, approver, result, post-check, lessons learned. |

### 8.2 Evidence Path Standard

Evidence paths must be deterministic and readable. Use the following baseline:

OpenKM Tier-0 / AIRA / Evidence /
 <domain> /
 <system-or-service> /
 <environment> /
 <yyyy> / <yyyy-mm> /
 <artifact-id-or-release-id> /

Recommended examples:

OpenKM Tier-0 / AIRA / Evidence / CI-CD / workflow-service / DEV / 2026 / 2026-05 / build-2026.05.001 /
OpenKM Tier-0 / AIRA / Evidence / Security / access-review / PROD / 2026 / 2026-Q2 /
OpenKM Tier-0 / AIRA / Evidence / AI-Evaluation / orchestrator-service / UAT / 2026 / 2026-06 / eval-set-rag-001 /
OpenKM Tier-0 / AIRA / Evidence / Incident / INC-2026-0001 /

## 9. Prompt Eligibility and Model-Routing Register

Prompt eligibility is a register-controlled decision. It is not left to developer discretion or model capability.

| **Eligibility** | **Meaning** | **Allowed Handling** |
| --- | --- | --- |
| Allowed | Content may be used in approved AI prompts. | Use approved prompt template, LiteLLM route, guardrails, and audit. |
| Redacted-only | Content may be used only after approved redaction/masking. | Store redaction evidence and source reference. |
| Private-route-only | Content may be used only through approved private/on-prem model route. | Requires classification check, guardrails, audit, and sometimes human approval. |
| Prohibited | Content must not enter a model prompt. | Use deterministic code, rule engine, manual review, or approved non-AI process. |

### 9.1 Model-Routing Decision Matrix

| **Classification** | **Default Route** | **Cloud Route** | **Private/On-Prem Route** | **Human Approval** |
| --- | --- | --- | --- | --- |
| Public | LiteLLM approved public/internal alias | Allowed | Allowed | Not normally required. |
| Internal | LiteLLM approved internal alias | Allowed in approved workspace | Allowed | Required for high-impact changes. |
| Confidential | Private route preferred | Waiver and redaction required | Default | Required for high-risk or broad exposure. |
| Restricted | Private route only | Not allowed unless executive/legal/security waiver | Mandatory | Required. |

### 9.2 AI Evidence Requirements

Every model call that uses AIRA data must record:

prompt_template_id and prompt_version;

model_alias and route policy;

input classification and redaction status;

retrieval_pack_id, citations, and source hashes where retrieval is used;

guardrail policy and checkpoint results;

actor or agent identity;

output classification and storage location;

human approval state for high-impact outputs;

trace_id, request_id, and audit evidence reference.

## 10. Storage and Derivative Handling Rules

### 10.1 Storage Destination Matrix

| **Artifact** | **Authoritative Store** | **Derivatives Allowed** | **Special Rule** |
| --- | --- | --- | --- |
| Approved standards and policies | OpenKM and Git where applicable | Obsidian, LLM Wiki, search index | Derivatives must cite source version. |
| Source code and IaC | Git | Code index, LLM Wiki summaries | Generated summaries are not authoritative. |
| Runtime configuration | Git and PostgreSQL config tables | Redis/Valkey cache | Cache loss must not affect correctness. |
| Business documents | OpenKM | PostgreSQL metadata, chunks, embeddings | Original document stays in OpenKM. |
| Transaction records | PostgreSQL | Reporting projections | No cross-context writes. |
| Workflow history | Temporal / Flowable | LLM Wiki lessons after review | Histories are evidence. |
| Prompts and guardrails | Git registry | LLM Wiki approved guidance | No unreviewed prompt promotion. |
| Model outputs | PostgreSQL/audit store/OpenKM depending on use | Summaries only if approved | Classification inherited from input and output. |
| Logs, metrics, traces | Observability stores | Incident evidence pack | Redact PII and secrets. |
| CI/CD evidence | CI artifact store and OpenKM | Release dashboards | Retain with release. |

### 10.2 Derivative Invalidation Rules

Derivative artifacts must be invalidated or rebuilt when:

source content changes, is superseded, is archived, or is purged;

classification changes upward or downward;

access policy changes;

retention rule changes;

prompt eligibility changes;

model-routing policy changes;

legal hold begins or is released;

retrieval quality or citation quality falls below threshold.

## 11. Lifecycle Procedures

### 11.1 Classification and Registration Procedure

![[attachments/26A-AIRA_Data_Classification_Retention_and_Evidence_Register_v1.1_Aligned/image12.png]]

Figure 1. Classification and registration flow.

Create or receive the artifact through an approved channel.

Identify owner, steward, domain, source tier, purpose, and system boundary.

Classify the artifact using the classification matrix.

Assign retention rule, access policy, storage location, logging rule, prompt eligibility, and model route.

Register the artifact in Git YAML and/or PostgreSQL register table.

Validate with policy-as-code where possible.

Obtain owner and security/compliance approval when required.

Store or activate only after register evidence is complete.

### 11.2 Evidence Capture and Retention Procedure

![[attachments/26A-AIRA_Data_Classification_Retention_and_Evidence_Register_v1.1_Aligned/image13.png]]

Figure 2. Evidence capture and retention flow.

Evidence must be produced as part of the workflow, not recreated manually after the fact. Evidence producers include CI/CD pipelines, runtime services, workflow engines, security tools, AI gateways, review systems, and human approval workflows.

### 11.3 Model Routing Procedure

![[attachments/26A-AIRA_Data_Classification_Retention_and_Evidence_Register_v1.1_Aligned/image14.png]]

Figure 3. Classification-aware prompt and model-routing flow.

AIRA model routing must fail closed. When the content classification, redaction state, or route eligibility cannot be determined, the request must be blocked or escalated to human review.

### 11.4 Retention, Legal Hold, and Disposal Procedure

![[attachments/26A-AIRA_Data_Classification_Retention_and_Evidence_Register_v1.1_Aligned/image15.png]]

Figure 4. Retention, legal hold, and controlled disposal flow.

Disposal is not a delete button. It is a controlled workflow that checks legal hold, obtains approval, executes storage-specific actions, invalidates derivatives, and writes disposal evidence.

## 12. Register Implementation Patterns

### 12.1 Git-Based Register Layout

aira-registers/
├── classification/
│ ├── artifact-classes.yaml
│ ├── data-elements.yaml
│ ├── prompt-eligibility.yaml
│ └── model-routing.yaml
├── retention/
│ ├── retention-schedule.yaml
│ ├── legal-holds.yaml
│ └── disposition-rules.yaml
├── evidence/
│ ├── evidence-classes.yaml
│ ├── evidence-paths.yaml
│ └── evidence-manifest.schema.yaml
├── policies/
│ ├── opa/
│ └── conftest/
└── README.md

### 12.2 PostgreSQL Register Tables

At minimum, PostgreSQL implementation should include controlled tables for:

aira_register.artifact_classification

aira_register.retention_rule

aira_register.evidence_reference

aira_register.legal_hold

aira_register.derivative_lineage

aira_register.disposition_event

aira_register.prompt_eligibility

aira_register.model_route_policy

These tables must use Flyway migrations, audit columns, row-level security where appropriate, and immutable history for approved entries.

## 13. Auto-Heal, Auto-Learn, and Auto-Improve Controls

| **Capability** | **Register Control** |
| --- | --- |
| **Auto-Heal** | May propose remediation only when evidence classification, affected data, rollback path, and operational risk are known. Remediation cannot purge, reclassify, or expose data without approval. |
| **Auto-Learn** | May create candidate knowledge only from approved evidence or reviewed incident records. Candidate knowledge inherits source classification until reviewed. |
| **Auto-Improve** | May propose retention, classification, routing, or evidence improvements only through ADR/TDL, MR, tests, and approval. |

Auto-Heal, Auto-Learn, and Auto-Improve must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. Any candidate that weakens these must be rejected or escalated as a waiver.

## 14. Architecture Fitness Functions and CI Gates

| **Gate ID** | **Gate** | **Applies To** | **Failure Action** |
| --- | --- | --- | --- |
| DCRE-G01 | Every new artifact class has classification, owner, retention, storage, prompt eligibility, and model route. | Register MRs | Block merge. |
| DCRE-G02 | Restricted artifacts are not eligible for cloud prompt routes. | Prompt/model registry | Block merge and alert security. |
| DCRE-G03 | Evidence manifests include trace_id, owner, source, hash, classification, retention rule, and path. | CI/CD evidence pack | Block promotion. |
| DCRE-G04 | Derivative artifacts link to Tier-0 source hash and version. | pgvector/LightRAG/LLM Wiki pipelines | Block indexing or mark stale. |
| DCRE-G05 | Legal hold blocks purge and derivative deletion. | Retention workflow | Block disposal. |
| DCRE-G06 | Cache entries for classified data have TTL and invalidation trigger. | Redis/Valkey config | Block deployment. |
| DCRE-G07 | Logs, traces, and prompt evidence do not contain secrets or unmasked PII. | CI/security scan | Block merge or release. |
| DCRE-G08 | Reclassification triggers re-index, cache invalidation, and route review. | Data governance workflow | Block completion until evidence exists. |
| DCRE-G09 | Disposition event has approver, actor, timestamp, source hash, and result. | Retention/disposal workflow | Block closure. |
| DCRE-G10 | Auto-Learn candidate cites approved evidence and classification state. | Knowledge promotion workflow | Block promotion. |

## 15. RACI

| **Activity** | **Solutions Architect** | **Data Governance** | **Security Admin** | **Compliance** | **DBA** | **DevSecOps** | **App Owner** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Approve register standard | A | R | C | C | C | C | C | C |
| Classify artifact class | C | A/R | C | C | C | C | R | I |
| Approve Restricted handling | C | R | A/R | C | C | C | C | I |
| Define retention rule | C | R | C | A/R | C | I | C | C |
| Implement register tables | C | C | C | I | A/R | C | I | I |
| Implement CI gates | C | C | C | I | C | A/R | C | I |
| Approve model route | C | C | A/R | C | I | R | C | I |
| Legal hold release | I | C | C | A/R | I | I | C | C |
| Audit review | I | C | C | C | I | I | I | A/R |

A = Accountable, R = Responsible, C = Consulted, I = Informed.

## 16. Implementation Roadmap

| **Phase** | **Activities** | **Exit Criteria** |
| --- | --- | --- |
| Phase 1 - Register Bootstrap | Create Git register repository, seed classification matrix, seed retention schedule, define evidence path schema. | Approved baseline register exists and is reviewed. |
| Phase 2 - CI Policy Enforcement | Add Conftest/OPA checks for register completeness, model-route restrictions, evidence manifest quality. | MRs fail when required fields are missing. |
| Phase 3 - PostgreSQL Runtime Register | Create Flyway migrations for register tables and derivative lineage. | Runtime services can query approved register entries. |
| Phase 4 - OpenKM and Evidence Path Alignment | Create OpenKM folders and evidence path naming rules. | Evidence can be stored and retrieved by release, incident, service, and domain. |
| Phase 5 - AI Routing Integration | Bind prompt eligibility to LiteLLM route policy, guardrails, and Harness. | Model calls fail closed when eligibility is unknown or prohibited. |
| Phase 6 - Retention Automation | Implement retention monitor, legal hold workflow, disposal evidence, derivative invalidation. | Controlled archival/purge is tested in non-production. |

## 17. Acceptance Criteria

The register is ready for controlled use when:

All mandatory register fields are defined and documented.

The initial classification matrix and retention schedule are approved.

Git-based register files exist and are protected by CODEOWNERS.

PostgreSQL runtime register tables are designed and migration-ready.

OpenKM evidence paths are defined.

Prompt eligibility and model-routing rules are enforceable.

CI policy gates prevent missing classification, retention, and evidence metadata.

Legal hold and disposal workflows have human approval gates.

Derivative invalidation rules are tested for pgvector, LightRAG, LLM Wiki, and Redis/Valkey.

AVCI compliance summary is included in every register change.

## Appendix A. YAML Register Template

artifact_id: AIRA-EXAMPLE-001
artifact_name: Example Artifact Class
artifact_type: document | table | column | prompt | model_output | evidence | event | embedding | cache
information_domain: D1-Governance
source_tier: Tier-0
owner: Solutions Architecture Office
steward: Data Governance Lead
classification: Confidential
reason_for_classification: Contains non-public architecture and control design.
storage_location: OpenKM Tier-0 / AIRA / Standards / Example
retention_rule_id: RET-GOV-07Y
access_policy_id: opa.policy.aira.example.read
prompt_eligibility: redacted-only
model_route_policy: litellm.route.internal-or-private
logging_rule: no_raw_content; hash identifiers; redact sensitive fields
derivative_policy:
 chunks_allowed: true
 embeddings_allowed: true
 summaries_allowed: reviewed-only
 cache_allowed: false
legal_hold_status: none
verification_evidence:
 review_id: ARB-2026-001
 evidence_path: OpenKM Tier-0 / AIRA / Evidence / Governance / 2026 / 2026-05
status: active
last_reviewed_at: 2026-04-27
next_review_due: 2026-07-27

## Appendix B. Evidence Manifest Template

evidence_id: EVD-2026-000001
evidence_type: ci_cd | test | security | ai_eval | audit | incident | release | access_review
source_system: github-actions | gitlab-ci | sonarqube | semgrep | litellm | opentelemetry | keycloak | vault
artifact_ref: release-2026.05.001
owner: DevSecOps Lead
classification: Internal
retention_rule_id: RET-REL-07Y
trace_id: 00000000000000000000000000000000
request_id: req-2026-000001
source_hash: sha256:<hash>
storage_path: OpenKM Tier-0 / AIRA / Evidence / CI-CD / service / DEV / 2026 / 2026-05 /
created_at: 2026-04-27T00:00:00Z
verified_by: QA Lead
verification_status: passed
linked_requirements:
 - REQ-FOUNDATION-001
linked_decisions:
 - ADR-AIRA-2026-001

## Appendix C. Copy-Ready Mermaid References

### C.1 Classification and Registration Flow

flowchart LR
 A[Create or Receive Artifact] --> B[Identify Owner, Domain, Source Tier, Purpose]
 B --> C[Classify: Public, Internal, Confidential, Restricted]
 C --> D[Apply Handling Rules: Storage, ACL, Retention, Logging, Model Route]
 D --> E[Register Metadata in Git or PostgreSQL]
 E --> F[Verify Evidence: Review, Tests, Policy Check]
 F --> G[Approve for Use or Return for Rework]

### C.2 Evidence Capture and Retention Flow

flowchart LR
 A[Engineering or Runtime Event] --> B[Evidence Producer]
 B --> C[Evidence Envelope]
 C --> D[Primary Store: OpenKM, Git, PostgreSQL, Audit Store]
 D --> E[Derivative Index: Obsidian, LLM Wiki, pgvector, LightRAG]
 D --> F[Retention Monitor]
 F --> G[Archive, Retain, or Purge with Approval]

### C.3 Classification-Aware Prompt and Model Routing

flowchart LR
 A[Prompt or Retrieval Request] --> B[Classify Content]
 B --> C[Check Prompt Eligibility]
 C -->|Eligible| D[NeMo Input and Retrieval Rails]
 C -->|Not Eligible| H[Block or Human Review]
 D --> E[LiteLLM Alias Selection]
 E --> F[Model Call and Usage Audit]
 F --> G[NeMo Output Rail and Evidence]

### C.4 Retention, Legal Hold, and Disposal Flow

flowchart LR
 A[Retention Event] --> B[Check Legal Hold]
 B --> C[Disposition Decision]
 C --> D[Owner, Compliance, Security Approval]
 D --> E[Execute Controlled Action]
 E --> F[Write Disposal Evidence]
 F --> G[Invalidate Derivatives]

## Appendix D. AVCI Compliance Summary

| **AVCI Property** | **Compliance Statement** |
| --- | --- |
| **Attributable** | Every register entry has owner, steward, source, version, approval, and evidence path. |
| **Verifiable** | Register entries are validated by review, policy-as-code, CI gates, hashes, and audit evidence. |
| **Classifiable** | Every artifact carries classification, domain, source tier, retention, access, routing, and logging rules. |
| **Improvable** | Register entries have review cadence, change control, feedback path, and supersedence/disposal workflow. |
