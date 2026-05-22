---
document_id: "AIRA-DOC-019A"
title: "AIRA Knowledge Fabric Reset and Governed Source Alignment Standard"
version: "v1.1"
status: "aligned"
source_file: "19A-AIRA_Knowledge_Fabric_Reset_and_Governed_Source_Alignment_Standard_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "00-Control-Center/Knowledge-Governance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - knowledge-governance
---

# AIRA Knowledge Fabric Reset and Governed Source Alignment Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Knowledge Fabric Reset and Governed Source Alignment Standard**

_Clean Vault Reset | Source Hierarchy | Metadata | LLM Wiki Re-Indexing | Conflict Quarantine_

**v1.1 - Canonical 19A Numbering and Pack 03 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-019A** |
| **Document Title** | **AIRA Knowledge Fabric Reset and Governed Source Alignment Standard** |
| **Document Version** | **v1.1 - Canonical 19A Numbering and Pack 03 v1.2 Alignment Update** |
| **Supersedes** | **19-AIRA_Knowledge_Fabric_Reset_and_Governed_Source_Alignment_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Knowledge reset companion** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Controls reset and rebuilding of the AIRA knowledge fabric across Obsidian, GitHub, OpenKM, LLM Wiki, indexes, and evidence stores.

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

Renumbered from duplicate Document 19 to 19A to avoid conflict with Pack 02 GitNexus Document 19.

Aligned reset workflow to treat approved DOCX files, Git, OpenKM, and evidence stores as Tier 0 authority.

Added Java 25 LTS as the backend runtime metadata default for source-code and developer-environment references.

Clarified that derivative markdown, embeddings, summaries, and GitNexus indexes cannot override authoritative sources.

Added Obsidian upload readiness language for individual v1.2 documents.

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

**AIRA**

AI-Native Enterprise Platform

**Knowledge Fabric Reset and Governed Source Alignment Standard**

Clean-Slate Obsidian Rebuild | LLM Wiki Re-Indexing | PPG Alignment | Auto-Heal / Auto-Learn / Auto-Improve Readiness

**Version 1.0 | May 2026 | CONFIDENTIAL**

| **Mandatory Operating Principle**<br>The AIRA knowledge reset is a governed control activity, not a file-cleanup task. No Obsidian vault, LLM Wiki index, policy, procedure, guideline, code artifact, configuration, prompt, guardrail, evidence pack, or AI memory item may become authoritative unless it is attributable, verifiable, classifiable, improvable, source-traceable, human-reviewed where required, and proven not to weaken SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, security posture, testability, observability, reversibility, or AVCI evidence. |
| --- |

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA Knowledge Fabric Reset and Governed Source Alignment Standard |
| Document ID | AIRA-DOC-019 |
| Version | v1.0 - Initial Governance Baseline |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | AI Knowledge Governance Lead; DevSecOps Lead; Security Administrator; Software Development Lead; QA Lead; DBA; OpenKM / DMS Administrator |
| Audience | Solutions Architects, Developers, DevSecOps, Security, QA, DBA, System Administrators, Knowledge Stewards, AI Engineers, Internal Audit |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | Quarterly; unscheduled on material architecture, security, repository, AI tooling, classification, or compliance change |
| Supersedes | New document. Does not supersede existing AIRA standards. Aligns and operationalizes knowledge reset activities. |
| Primary Decision Inputs | ADR-AIRA-2026-001; AIRA Cross-Document Revision Control Matrix; 01 AVCI Engineering Standard v3.1; 05 Information Nervous System v4.1; 13 Obsidian and LLM Wiki Knowledge Governance Standard v2.0 |
| Companion Documents | 02 Engineering Blueprint; 03 Developer Guide; 04 Technology Stack; 06 CLAUDE.md Reference; 07 Skills Framework; 08 Unit Testing; 09 Greenfield Environment; 10 MicroFunction Framework; 11 DevSecOps Standard; 12 CLAUDE.md Rollout; 14 ADR/TDL; 15 API Contract; 16 Database; 17 Security; 18 Repository Bootstrap |
| Evidence Path | OpenKM Tier-0 / AIRA / Knowledge Governance / Knowledge Fabric Reset / v1.0/ |

## Table of Contents

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Mandatory Operating Principles

## 4. Reset Governance and Control Model

## 5. Source Authority Hierarchy

## 6. Target Folder Taxonomy

## 7. Metadata and YAML Front Matter Standard

## 8. Document Lifecycle and Promotion Workflow

## 9. LLM Wiki Re-Indexing Strategy

## 10. Cross-System Alignment Model

## 11. Auto-Heal, Auto-Learn, and Auto-Improve Knowledge Flow

## 12. Modular Architecture and Runtime Change Model

## 13. Security, Classification, and Access Controls

## 14. RACI and Operating Responsibilities

## 15. Implementation Roadmap

## 16. Acceptance Criteria

## 17. Risks, Gaps, and Mitigations

## 18. AVCI Compliance Summary

Appendix A. Copy-Ready Obsidian Folder Baseline

Appendix B. Copy-Ready YAML Template

Appendix C. Reset Execution Checklist

| **Word TOC Note**<br>This document uses a static table of contents for deterministic rendering. Before final publication, Microsoft Word may be used to replace this section with an automatic table of contents, then Update Field before release. |
| --- |

## 1. Executive Summary

This standard defines the controlled reset and rebuild of the AIRA knowledge foundation across Obsidian, LLM Wiki, OpenKM, GitHub, and related Information Nervous System sources. It establishes the required source authority model, folder taxonomy, metadata schema, lifecycle workflow, re-indexing controls, and governance gates needed before AIRA knowledge can safely support AI-assisted engineering, DevSecOps, Auto-Heal, Auto-Learn, and Auto-Improve.

The reset must not be treated as a simple deletion of the current Obsidian vault. The existing vault must be frozen, backed up, hashed, reviewed, and archived before replacement. This preserves historical traceability and supports audit reconstruction while allowing the new vault to start from a clean, modular, classification-aware structure.

| **Strategic Outcome**<br>AIRA will operate a single governed knowledge fabric where official documentation, PPGs, source code, configuration, prompts, guardrails, runtime evidence, audit evidence, and improvement candidates remain aligned across OpenKM, GitHub, Obsidian, LLM Wiki, and retrieval indexes. |
| --- |

| **Outcome** | **Required Result** |
| --- | --- |
| Controlled clean slate | The old vault is archived with evidence before the new vault becomes active. |
| Governed source alignment | OpenKM, GitHub, Obsidian, LLM Wiki, and derivative indexes follow an explicit authority hierarchy. |
| Classification-aware AI retrieval | Only approved, current, eligible, and properly classified knowledge is indexed for default AI use. |
| Auto-* readiness | Auto-Heal, Auto-Learn, and Auto-Improve can create candidates and evidence but cannot directly modify authoritative sources. |
| Modular architecture support | Knowledge, code, configuration, and deployment artifacts are organized by architecture layer, bounded context, and module ownership. |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

The purpose of this standard is to prescribe how AIRA rebuilds its knowledge foundation from scratch while preserving evidence, classification discipline, source authority, retrieval quality, and architecture governance.

### 2.2 In Scope

Obsidian vault deletion, backup, archive, rebuild, folder taxonomy, and metadata governance.

LLM Wiki re-indexing, retrieval eligibility, citation, confidence scoring, freshness, and conflict controls.

OpenKM official document and evidence folder alignment.

GitHub repository, source code, configuration, prompt, guardrail, policy-as-code, CI/CD, test, and evidence alignment.

PPG domains for ISMS / ISO 27001, CIS Controls, AI Governance, DevSecOps, security, runbooks, and audit evidence.

Information Nervous System sources across Intent, Implementation, Behaviour, Evidence, and Knowledge.

Auto-Heal, Auto-Learn, Auto-Improve, and AutoResearch knowledge flows.

### 2.3 Out of Scope

Direct indexing of raw production customer data into Obsidian or LLM Wiki.

Storage of secrets, credentials, tokens, raw PII, or Restricted production data in the knowledge vault.

Autonomous production modification by AI agents.

Unreviewed personal notes, unmanaged chat transcripts, and unsupported AI exports as authoritative knowledge.

### 2.4 Authority and Precedence

| **Level** | **Document / Control** | **Authority Scope** |
| --- | --- | --- |
| L0 | Architecture Board / Consolidated Architecture Decisions | Highest authority for platform boundaries and unresolved architecture conflicts. |
| L1 | Engineering Blueprint and DevSecOps Standard | Build-ready architecture and operating lifecycle discipline. |
| L2 | AVCI Standard and Enterprise Design Principles | Universal quality, evidence, classification, SOLID, and improvement discipline. |
| L2 | Information Nervous System and Knowledge Governance Standards | Authority for source tiers, metadata, retrieval eligibility, and knowledge lifecycle. |
| L3 | This Standard | Executable reset, rebuild, alignment, and indexing procedure. |
| L4 | Local vault folders, repository files, index manifests, and evidence records | Implementation-level controls that may tighten but not weaken upstream rules. |

## 3. Mandatory Operating Principles

| **ID** | **Principle** | **Mandatory Meaning** |
| --- | --- | --- |
| KF-01 | AVCI by construction | Every note, source record, index artifact, prompt, policy, and AI output must have owner, source, version, classification, verification evidence, and improvement path. |
| KF-02 | Freeze before delete | Existing vaults and indexes must be backed up, hashed, and archived before deletion or rebuild. |
| KF-03 | Raw remains authoritative | Approved OpenKM documents and GitHub repositories remain authoritative; Obsidian projections and retrieval indexes are controlled derivatives unless explicitly approved. |
| KF-04 | Classification governs retrieval | Public, Internal, Confidential, and Restricted labels determine access, prompt eligibility, model route, retention, logging, and approval. |
| KF-05 | Approved-only default retrieval | LLM Wiki indexes only approved, current, classification-eligible sources by default. Drafts and candidates require explicit query scope. |
| KF-06 | Staleness is a defect | Superseded, conflicting, unclassified, or expired knowledge must be quarantined from default retrieval. |
| KF-07 | AI output is draft | AI-generated content remains non-authoritative until reviewed, cited, classified, tested where applicable, and promoted. |
| KF-08 | Architecture preservation | Knowledge must not recommend direct model calls, cross-context writes, guardrail bypass, unmanaged tool execution, or MicroFunction boundary violations. |
| KF-09 | Human review gates promotion | High-impact, Confidential, Restricted, security, AI, policy, or architecture-significant knowledge requires named human approval before indexing. |
| KF-10 | Auto-* proposes only | Auto-Heal, Auto-Learn, and Auto-Improve create candidates, PRs, tickets, and evidence packs; they do not directly mutate authoritative sources. |

## 4. Reset Governance and Control Model

The reset is executed as a controlled sequence of governance phases. Each phase has entry criteria, exit evidence, and named ownership. The reset cannot advance to indexing until source authority, folder taxonomy, metadata, classification, and lifecycle workflow are approved.

| **Phase** | **Name** | **Exit Evidence** |
| --- | --- | --- |
| Phase 0 | Freeze and Backup Current State | Vault export; folder snapshot; checksum; retention decision; no-secret review; reset evidence record. |
| Phase 1 | Define Source Authority | Approved authority hierarchy across OpenKM, GitHub, Obsidian, LLM Wiki, indexes, caches, and AI outputs. |
| Phase 2 | Design Folder Taxonomy | Approved modular folder structure for Obsidian, GitHub, OpenKM, LLM Wiki, and evidence. |
| Phase 3 | Define Metadata Standard | Required YAML/front matter and metadata fields for every artifact class. |
| Phase 4 | Define Lifecycle Workflow | Create, review, approve, promote, quarantine, supersede, retire, and re-index workflow. |
| Phase 5 | Rebuild Obsidian Vault | Clean Git-managed vault with approved root folders, templates, and classification controls. |
| Phase 6 | Re-Index LLM Wiki | Approved-only indexing with citations, confidence, freshness, and retrieval validation tests. |
| Phase 7 | Align GitHub and OpenKM | Cross-system folder mapping, source registry, evidence path, and update workflow. |
| Phase 8 | Enable Auto-* Knowledge Flow | Candidate generation, review workflow, conflict checks, promotion gates, and audit trail. |
| Phase 9 | Operationalize and Monitor | Review calendar, drift checks, stale knowledge reports, index health, and improvement backlog. |

| **Reset Rule**<br>Deletion is not permitted until the old vault has been exported, hashed, classified, reviewed for sensitive content, and archived in the approved evidence location. |
| --- |

## 5. Source Authority Hierarchy

AIRA uses an explicit authority hierarchy so that AI retrieval, human review, and automated improvement loops do not confuse official sources with derivative summaries or temporary drafts.

| **Tier** | **System** | **Artifacts** | **Authority Rule** |
| --- | --- | --- | --- |
| Tier 0 | OpenKM / Official DMS | Approved DOCX/PDF, signed standards, policies, procedures, guidelines, official records, evidence packs. | Authoritative for formal documents and audit records. |
| Tier 0 | GitHub / Approved SCM | Source code, IaC, CI/CD, prompts, guardrails, OPA/Rego, CLAUDE.md, tests, contracts, database migrations. | Authoritative for engineering artifacts. |
| Tier 1 | Obsidian Git-Managed Vault | Canonical Markdown projections, structured knowledge notes, diagrams, runbooks, developer references. | Authoritative for day-to-day retrieval only when synced to Tier 0. |
| Tier 2 | LLM Wiki Curated Artifacts | Human-reviewed retrieval artifacts compiled from Tier 0/Tier 1. | Approved for AI retrieval when provenance is intact. |
| Tier 3 | pgvector / LightRAG / Search Indexes | Embeddings, chunks, graph relations, metadata indexes. | Derivative only; must be rebuilt when sources change. |
| Tier 4 | Redis / Cache | Runtime acceleration, temporary lookups, non-authoritative cached content. | Never authoritative. Loss must not affect correctness. |
| Draft | AI Outputs and Working Notes | Generated summaries, proposals, candidate prompts, agent findings. | Not authoritative until reviewed and promoted. |

## 6. Target Folder Taxonomy

The folder taxonomy must be consistent enough across tools to preserve traceability, but each system keeps the structure appropriate to its purpose. Obsidian organizes human-readable knowledge; OpenKM organizes official records; GitHub organizes executable engineering artifacts; LLM Wiki organizes curated retrieval artifacts.

### 6.1 Obsidian Root Folders

| **Folder** | **Purpose** |
| --- | --- |
| 00-Control-Center | Source registry, classification register, review calendar, conflict register, index run records. |
| 01-AIRA-Documentation | Approved AIRA standards, architecture, developer guides, MicroFunction documents, DevSecOps, security, database, API, testing, repository bootstrap. |
| 02-PPG-ISMS-ISO-27001 | Policies, procedures, guidelines, standards, forms, control mapping, audit evidence, management review. |
| 03-PPG-CIS-Controls | CIS control inventory, implementation guides, checklists, evidence, gap remediation. |
| 04-PPG-AI-Governance | AI policy, model governance, prompt governance, guardrails, agent governance, model routing, AI risk, AI evaluation evidence. |
| 05-ADRs-and-TDLs | Architecture Decision Records and Technical Decision Logs. |
| 06-Runbooks-and-SOPs | Operational procedures, incident runbooks, DR runbooks, troubleshooting guides. |
| 07-Developer-Knowledge | Developer onboarding, coding patterns, FAQs, implementation notes, approved prompt patterns. |
| 08-Diagrams-and-Architecture-Views | Mermaid, C4 views, sequence diagrams, deployment diagrams, architecture views. |
| 09-Templates | Document templates, PR templates, YAML templates, ADR templates, policy templates. |
| 10-Evidence-Packs | Indexing evidence, review evidence, compliance summaries, test query results. |
| 90-Candidates | Draft notes, AI-generated proposals, Auto-Learn candidates, unapproved improvements. |
| 95-Quarantine | Conflicting, stale, unclassified, unsafe, or source-incomplete artifacts. |
| 99-Superseded | Retired but retained knowledge with supersession links. |

### 6.2 GitHub Repository Alignment

| **Repository** | **Purpose** |
| --- | --- |
| aira-platform | Application source code, service modules, MicroFunction runtime, domain services. |
| aira-contracts | OpenAPI, AsyncAPI, CloudEvents, schemas, error catalogs, idempotency profiles. |
| aira-infra | Terraform, Helm, Kubernetes manifests, GitOps, devcontainer, platform scripts. |
| aira-ai-governance | Prompt templates, guardrails, model routing, evaluation datasets, AI policies-as-code. |
| aira-policy-as-code | OPA/Rego, Conftest, admission policies, security controls, model-route policies. |
| aira-knowledge | Git-managed Obsidian vault or approved Markdown projection repository, if separated. |
| aira-evidence | Controlled evidence manifests, CI evidence references, SBOM/provenance references; avoid storing secrets or raw production data. |

### 6.3 OpenKM Folder Alignment

| **OpenKM Path** | **Purpose** |
| --- | --- |
| OpenKM Tier-0 / AIRA / Standards | Approved formal standards and signed releases. |
| OpenKM Tier-0 / AIRA / PPG / ISMS ISO 27001 | Official ISMS policies, procedures, guidelines, audit evidence. |
| OpenKM Tier-0 / AIRA / PPG / CIS Controls | Official CIS mappings, assessments, evidence, remediation records. |
| OpenKM Tier-0 / AIRA / PPG / AI Governance | AI governance policies, risk assessments, model approvals, guardrail approvals. |
| OpenKM Tier-0 / AIRA / Architecture Decisions | Approved ADRs, TDLs, decision evidence, approval records. |
| OpenKM Tier-0 / AIRA / Knowledge Governance | Reset evidence, indexing records, source registry exports, review reports. |
| OpenKM Tier-0 / AIRA / Audit Evidence | Internal audit, compliance evidence, review minutes, CAB approvals. |

## 7. Metadata and YAML Front Matter Standard

Every knowledge artifact must be machine-readable and reviewable. YAML/front matter is mandatory for Obsidian notes and curated LLM Wiki artifacts. Equivalent metadata must exist for OpenKM and GitHub artifacts through file properties, manifests, repository metadata, or registry files.

| **Metadata Group** | **Required Fields** |
| --- | --- |
| Identity | document_id, title, version, artifact_type, owner, co_owner, status |
| Authority | source_system, source_path, source_hash, source_version, authority_tier |
| Classification | classification, data_sensitivity, model_route_eligibility, retrieval_eligible |
| Traceability | related_standard, related_adr, related_repository, related_module, related_control |
| Compliance | iso27001_control, cis_control, nist_ai_rmf_function, nist_ssdf_practice, soc2_trust_service_criteria |
| Lifecycle | created_date, review_date, expiry_date, supersedes, superseded_by, approval_status |
| Evidence | evidence_reference, approver, approval_date, index_batch_id, last_indexed_at, validation_status |
| Improvement | known_gaps, improvement_backlog_ref, conflict_status, quarantine_reason |

## 8. Document Lifecycle and Promotion Workflow

The lifecycle ensures that only reviewed, current, and classified knowledge becomes available for default AI retrieval. Drafts and AI outputs remain candidates until promoted by named reviewers.

| **Step** | **Description** | **Evidence** |
| --- | --- | --- |
| Create / Import | Author or steward creates note or imports official source projection. | Owner, source path, initial classification, draft metadata. |
| Classify | Security or knowledge steward validates classification and retrieval eligibility. | Classification record and model-route eligibility. |
| Review | Domain owner, architecture, security, or compliance reviewer validates accuracy and alignment. | Review decision, comments, remediation if needed. |
| Approve | Named approver confirms authority tier, current status, and promotion readiness. | Approval metadata and evidence reference. |
| Promote to LLM Wiki | Curated artifact becomes eligible for indexing. | Index manifest, chunking profile, retrieval test plan. |
| Index / Re-Index | LLM Wiki and derivative indexes are rebuilt from approved sources. | Index batch ID, source hash, timestamp, validation report. |
| Validate Retrieval | Test queries confirm correct citations, freshness, and no stale or restricted leakage. | Retrieval test results and issue log. |
| Monitor | Periodic checks detect staleness, conflicts, expired reviews, or source drift. | Review calendar, conflict register, improvement backlog. |
| Supersede / Quarantine | Outdated or conflicting notes are moved out of default retrieval. | Supersession link, quarantine reason, remediation owner. |

## 9. LLM Wiki Re-Indexing Strategy

LLM Wiki must be rebuilt only after the new vault taxonomy, source registry, metadata schema, and classification rules are active. The default index scope must exclude drafts, candidates, superseded, quarantined, expired, unclassified, or restricted-ineligible artifacts.

| **Control** | **Requirement** |
| --- | --- |
| Index scope | Approved, current, retrieval_eligible=true, classification-compatible artifacts only. |
| Exclusions | 90-Candidates, 95-Quarantine, 99-Superseded, unclassified, expired, draft, unsafe, or unsupported content. |
| Citations | Return document ID, title, version, section, source path, and evidence reference where available. |
| Freshness | Compare source hash and review date against index batch manifest. |
| Conflict detection | Flag inconsistent guidance across documents and route to AVCI reconciliation. |
| Confidence scoring | Combine source authority, retrieval relevance, freshness, classification eligibility, and reviewer status. |
| Audit | Retain index batch ID, indexed files, hashes, model/chunking configuration, validation results, and reviewer. |
| Test queries | Maintain standard query set for AIRA, ISMS, CIS, AI Governance, MicroFunction, DevSecOps, Security, Database, and API topics. |

## 10. Cross-System Alignment Model

| **Reasoning Axis** | **Artifacts** | **Primary Systems** |
| --- | --- | --- |
| Intent | Requirements, policies, procedures, standards, ADRs, TDLs, backlog, acceptance criteria. | OpenKM, GitHub Issues, Obsidian, LLM Wiki. |
| Implementation | Source code, contracts, database migrations, IaC, prompts, guardrails, policy-as-code. | GitHub, GitHub Actions, OpenKM evidence, Obsidian projections. |
| Behaviour | Runtime configuration, feature flags, model routes, MicroFunction definitions, workflow definitions. | PostgreSQL, GitHub, Flowable, Temporal, Obsidian references. |
| Evidence | Tests, scans, SBOM, CI/CD evidence, audit logs, approvals, deployment records, runtime telemetry. | CI/CD, OpenKM, observability stack, Flowable, Temporal. |
| Knowledge | Runbooks, lessons learned, developer notes, curated LLM Wiki artifacts, approved summaries. | Obsidian, LLM Wiki, OpenKM, pgvector / LightRAG. |

| **Alignment Rule**<br>Every artifact family must have one authoritative system, one owner, one classification, one lifecycle state, and one evidence path. Duplicate copies are allowed only when their derivative status and source relationship are explicit. |
| --- |

## 11. Auto-Heal, Auto-Learn, and Auto-Improve Knowledge Flow

The rebuilt knowledge fabric must support closed-loop improvement without uncontrolled self-modification. Auto-* capabilities may analyze, draft, recommend, create tickets, generate candidate PRs, and produce evidence packs. They must not directly modify authoritative documents, code, configuration, prompts, guardrails, model routes, policies, or production systems.

| **Capability** | **Allowed Output** | **Promotion Gate** |
| --- | --- | --- |
| Auto-Heal | Analyze failure, correlate logs/traces/errors, identify likely root cause, propose remediation, generate candidate PR or runbook update. | Human review, tests, rollback plan, security review for high-impact changes. |
| Auto-Learn | Convert approved incidents, reviews, and lessons learned into candidate knowledge artifacts. | Source citation, classification check, conflict check, human approval before promotion. |
| Auto-Improve | Detect recurring defects, architecture drift, test gaps, weak controls, stale documents, or process bottlenecks. | ADR/TDL where material; PR/MR evidence; CAB approval where required. |
| AutoResearch | Collect approved external references and summarize relevance to AIRA. | Human review before any external content becomes approved knowledge. |

## 12. Modular Architecture and Runtime Change Model

The knowledge and repository structures must support modular, multi-tier AIRA implementation. Knowledge should be organized by architecture layer, bounded context, deployment unit, and change type so that teams can determine what may change dynamically and what requires CI/CD or formal approval.

| **Layer** | **Knowledge / Artifact Scope** | **Change Path** |
| --- | --- | --- |
| Presentation Layer | React / Next.js UI, UX rules, validation, accessibility, frontend tests. | CI/CD deployment; feature flags for controlled UI behavior. |
| API / Gateway Layer | OpenAPI contracts, Gateway routes, authentication, error contracts. | Contract-first PR/MR; controlled route config where approved. |
| Business Logic Layer | Domain services, use cases, bounded-context rules. | Code change through PR/MR and CI/CD only. |
| MicroFunction Runtime Layer | Step catalog, runtime definitions, configuration, standard functions, STP-BUS-* extensions. | Validated configuration runtime change for definitions; code change for new functions. |
| Database Layer | Schemas, migrations, RLS, outbox, pgvector metadata. | Flyway migration, DBA review, CI gate. |
| Integration Layer | Kafka topics, AsyncAPI, CloudEvents, adapters, external system contracts. | Contract-first PR/MR; backward compatibility gate. |
| Workflow Layer | Flowable BPMN/CMMN/DMN, Temporal workflows, approvals, history. | Versioned workflow deployment; approval for high-impact changes. |
| AI Orchestration Layer | LiteLLM routes, guardrails, prompts, Hermes skills, model aliases. | Governed prompt/route/guardrail change with tests and approval. |
| Security and Identity Layer | Keycloak, AD, Vault, SPIFFE/SVID, OPA, SBAC policies. | Security review; fail-closed enforcement; change approval. |
| Observability and Evidence Layer | Logs, metrics, traces, audit evidence, evidence packs. | Controlled configuration; no PII/secrets leakage. |
| DevSecOps / GitOps Layer | CI/CD, branch protection, CODEOWNERS, CLAUDE.md, policies-as-code. | Repository-governed PR/MR and protected merge. |

### 12.1 Runtime Change Classification

| **Change Category** | **Examples** | **Required Control** |
| --- | --- | --- |
| Runtime / On-the-Fly | MicroFunction configuration, feature flags, rule tables, DMN, approved prompt templates, model route aliases, retrieval index rebuilds, cache rebuilds. | Validation, approval, audit, rollback or revert path. |
| Configuration Promotion | Guardrail policy tuning, OPA policy changes, workflow version updates, observability rules. | PR/MR, policy tests, review, controlled activation. |
| CI/CD Deployment | Source code, new MicroFunction classes, API contracts, adapters, database migrations, UI code, infrastructure manifests. | Branch protection, CI gates, reviewer approval, deployment evidence. |
| CAB / Architecture Review | Service boundaries, autonomy level, security model, model provider adoption, workflow partitioning, cross-document conflicts. | ADR/TDL, impact assessment, approval, evidence pack. |

## 13. Security, Classification, and Access Controls

| **Control** | **Requirement** |
| --- | --- |
| No secrets in knowledge | Secrets, credentials, tokens, keys, raw passwords, and sensitive connection strings must not be stored in Obsidian, LLM Wiki, prompts, logs, screenshots, or examples. |
| No raw production PII | Real customer records, raw production documents, and restricted data must not be indexed unless formally approved by data governance and security. |
| Named accountability | Every author, reviewer, approver, index operator, and AI tool user must be attributable to a named identity. |
| Least privilege / SBAC | Access to folders, repositories, prompts, guardrails, and AI tools must be role-, skill-, scope-, and classification-bounded. |
| Fail closed | If classification, policy, identity, guardrail, source validation, or audit is unavailable, indexing and protected retrieval must stop. |
| Review high-impact knowledge | Confidential, Restricted, security, AI governance, production, access control, and architecture-boundary knowledge requires human approval. |

## 14. RACI and Operating Responsibilities

| **Activity** | **Responsible** | **Accountable** | **Consulted** | **Informed** |
| --- | --- | --- | --- | --- |
| Approve reset plan | Solutions Architect / IT Head | Architecture Board / CAB | DevSecOps, Security, Knowledge Lead | All AIRA team members |
| Archive old vault | Knowledge Steward | AI Knowledge Governance Lead | Security, OpenKM Admin | Internal Audit |
| Define taxonomy | AI Knowledge Governance Lead | Solutions Architect / IT Head | DevSecOps, Security, QA, DBA, Developers | All contributors |
| Classify artifacts | Security Administrator | Security Architecture | Knowledge Steward, Data Governance | Artifact owners |
| Maintain OpenKM sources | OpenKM / DMS Administrator | Document Owner | Knowledge Steward | Internal Audit |
| Maintain GitHub artifacts | Repository Owner | DevSecOps Lead | Security, QA, CODEOWNERS | Developers |
| Maintain Obsidian vault | Knowledge Steward | AI Knowledge Governance Lead | Document Owners | All users |
| Run LLM Wiki indexing | AI Knowledge Governance Lead | Solutions Architect / IT Head | Security, DevSecOps | Developers, QA |
| Validate retrieval | QA / AI Evaluation Reviewer | AI Governance Lead | Document Owners, Security | Team leads |
| Approve Auto-Learn promotion | Domain Owner | Solutions Architect / IT Head | Security, QA, Knowledge Lead | All impacted teams |

## 15. Implementation Roadmap

| **Wave** | **Name** | **Activities** | **Exit Evidence** |
| --- | --- | --- | --- |
| Wave 0 | Reset approval | Approve scope, owner, classification, evidence path, and freeze schedule. | Approved reset charter. |
| Wave 1 | Archive old state | Export vault, hash, scan for secrets/PII, archive in OpenKM, document findings. | Archive evidence pack. |
| Wave 2 | Create new baseline | Create clean Git-managed Obsidian vault with approved folder taxonomy and templates. | New vault baseline commit. |
| Wave 3 | Load Tier-0 sources | Import approved AIRA documents and PPGs as controlled Markdown projections. | Source registry and metadata complete. |
| Wave 4 | Classify and review | Validate YAML, classification, status, owner, version, and retrieval eligibility. | Review report and exception log. |
| Wave 5 | Re-index LLM Wiki | Index only approved eligible artifacts; generate index manifest. | Index batch evidence. |
| Wave 6 | Validate retrieval | Run standard test queries and verify citations, freshness, conflict detection, and no restricted leakage. | Retrieval validation report. |
| Wave 7 | Operationalize | Publish procedures, assign RACI, schedule reviews, enable monitoring, and create improvement backlog. | Operational acceptance sign-off. |

## 16. Acceptance Criteria

## 1. The old Obsidian vault is exported, hashed, reviewed, and archived before deletion.

## 2. The new Obsidian vault is created from an approved folder taxonomy and committed to the approved source control path where applicable.

## 3. Each imported document has required metadata, owner, classification, version, status, source path, and evidence reference.

## 4. OpenKM, GitHub, Obsidian, and LLM Wiki authority roles are documented and approved.

## 5. LLM Wiki indexes only approved, current, retrieval-eligible, classification-compatible artifacts by default.

## 6. Draft, candidate, superseded, quarantined, expired, and unclassified content are excluded from default retrieval.

## 7. Retrieval test queries confirm correct citations, freshness, and conflict detection.

## 8. No secrets, raw PII, production customer data, or restricted uncontrolled content are present in the vault or index.

## 9. Auto-Heal, Auto-Learn, and Auto-Improve flows create candidates and evidence only, not direct authoritative changes.

## 10. RACI, review cadence, improvement backlog, and exception workflow are operational.

## 17. Risks, Gaps, and Mitigations

| **Risk** | **Severity** | **Mitigation** |
| --- | --- | --- |
| Loss of traceability from deleting old vault | High | Archive, hash, source snapshot, and reset evidence before deletion. |
| Stale content influences AI retrieval | High | Exclude superseded, expired, quarantined, and unreviewed content from default indexing. |
| Conflicting standards create incorrect guidance | High | Maintain conflict register and route material conflicts to ADR/TDL or AVCI reconciliation. |
| Secrets or PII accidentally indexed | Critical | Run secret/PII scan, classification review, and fail-closed indexing gate. |
| Obsidian becomes another uncontrolled silo | High | Use Git-managed vault, metadata, source registry, review workflow, and OpenKM/GitHub source links. |
| AI-generated notes treated as authoritative | High | Keep AI outputs in 90-Candidates until reviewed and promoted. |
| Over-complex folder taxonomy reduces adoption | Medium | Start with approved core taxonomy; extend only through governance and actual use cases. |
| Runtime changes bypass CI/CD or CAB | High | Classify change type and enforce runtime/config/code/CAB boundaries. |

## 18. AVCI Compliance Summary

| **AVCI Dimension** | **Evidence Requirement** |
| --- | --- |
| Attributable | Each folder, document, note, source record, index batch, and AI candidate has a named owner, source system, version, and evidence reference. |
| Verifiable | Each artifact is backed by source path, source hash, approval status, review record, index manifest, validation result, or CI evidence. |
| Classifiable | Each artifact carries classification, retrieval eligibility, model route eligibility, sensitivity, retention, and access handling metadata. |
| Improvable | Each artifact has review cadence, expiry, supersession links, conflict status, improvement backlog reference, and promotion/quarantine workflow. |

| **Final Executive Recommendation**<br>Proceed with the AIRA Knowledge Fabric Reset as Sprint 0 foundation governance work. Do not continue uncontrolled Greenfield code generation until the rebuilt vault, source registry, metadata standard, classification gates, LLM Wiki re-indexing controls, retrieval validation tests, and cross-system alignment model are operational and evidenced. |
| --- |

## Appendix A. Copy-Ready Obsidian Folder Baseline

| aira-vault/<br>├── 00-Control-Center/<br>│ ├── Source-Registry/<br>│ ├── Classification-Register/<br>│ ├── Review-Calendar/<br>│ ├── Conflict-Register/<br>│ └── Indexing-Run-Records/<br>├── 01-AIRA-Documentation/<br>│ ├── 01-Architecture/<br>│ ├── 02-Engineering-Standards/<br>│ ├── 03-Developer-Guides/<br>│ ├── 04-MicroFunction-Framework/<br>│ ├── 05-Technology-Stack/<br>│ ├── 06-DevSecOps/<br>│ ├── 07-Security/<br>│ ├── 08-Database-and-Data/<br>│ ├── 09-API-and-Integration/<br>│ ├── 10-Testing-and-QA/<br>│ ├── 11-AI-Governance/<br>│ ├── 12-Greenfield-Environment/<br>│ └── 13-Repository-Bootstrap/<br>├── 02-PPG-ISMS-ISO-27001/<br>│ ├── 01-Policies/<br>│ ├── 02-Procedures/<br>│ ├── 03-Guidelines/<br>│ ├── 04-Standards/<br>│ ├── 05-Forms-and-Templates/<br>│ ├── 06-Control-Mapping/<br>│ ├── 07-Audit-Evidence/<br>│ └── 08-Management-Review/<br>├── 03-PPG-CIS-Controls/<br>│ ├── 01-Control-Inventory/<br>│ ├── 02-Implementation-Guides/<br>│ ├── 03-Assessment-Checklists/<br>│ ├── 04-Evidence/<br>│ └── 05-Gap-Remediation/<br>├── 04-PPG-AI-Governance/<br>│ ├── 01-AI-Policy/<br>│ ├── 02-Model-Governance/<br>│ ├── 03-Prompt-Governance/<br>│ ├── 04-Guardrails/<br>│ ├── 05-Agent-Governance/<br>│ ├── 06-Model-Routing/<br>│ ├── 07-AI-Risk-Assessments/<br>│ └── 08-AI-Evaluation-Evidence/<br>├── 05-ADRs-and-TDLs/<br>├── 06-Runbooks-and-SOPs/<br>├── 07-Developer-Knowledge/<br>├── 08-Diagrams-and-Architecture-Views/<br>├── 09-Templates/<br>├── 10-Evidence-Packs/<br>├── 90-Candidates/<br>├── 95-Quarantine/<br>└── 99-Superseded/ |
| --- |

## Appendix B. Copy-Ready YAML Template

| ---<br>document_id: AIRA-KF-0000<br>title: ""<br>version: "v1.0"<br>artifact_type: "standard \| policy \| procedure \| guideline \| runbook \| adr \| tdl \| prompt \| guardrail \| diagram \| evidence \| note"<br>owner: ""<br>co_owner: ""<br>status: "draft \| review \| approved \| superseded \| quarantined \| retired"<br>classification: "Public \| Internal \| Confidential \| Restricted"<br>source_system: "OpenKM \| GitHub \| Obsidian \| LLM Wiki \| Other"<br>source_path: ""<br>source_hash: ""<br>source_version: ""<br>authority_tier: "Tier 0 \| Tier 1 \| Tier 2 \| Tier 3 \| Tier 4 \| Draft"<br>related_standard: []<br>related_adr: []<br>related_repository: []<br>related_module: []<br>related_control: []<br>iso27001_control: []<br>cis_control: []<br>nist_ai_rmf_function: []<br>nist_ssdf_practice: []<br>soc2_trust_service_criteria: []<br>review_date: "YYYY-MM-DD"<br>expiry_date: "YYYY-MM-DD"<br>retrieval_eligible: false<br>model_route_eligibility: "public-route \| internal-route \| confidential-private-route \| restricted-onprem-only \| not-eligible"<br>evidence_reference: ""<br>supersedes: ""<br>superseded_by: ""<br>approval_status: "not-approved \| approved \| rejected \| conditional"<br>approver: ""<br>approval_date: "YYYY-MM-DD"<br>index_batch_id: ""<br>last_indexed_at: ""<br>validation_status: "not-validated \| validated \| failed \| quarantined"<br>known_gaps: []<br>improvement_backlog_ref: ""<br>conflict_status: "none \| suspected \| confirmed \| resolved"<br>quarantine_reason: ""<br>--- |
| --- |

## Appendix C. Reset Execution Checklist

## 1. Assign reset owner, approver, knowledge steward, security reviewer, and index operator.

## 2. Freeze the current Obsidian vault and prevent new edits during the reset window.

## 3. Export the current vault and record folder structure, file count, and source paths.

## 4. Generate hash evidence for the exported vault archive.

## 5. Scan archive for secrets, credentials, raw PII, and Restricted content.

## 6. Classify archive and store it in the approved OpenKM evidence path.

## 7. Create the new vault structure from the approved taxonomy.

## 8. Add metadata templates and folder README files.

## 9. Import approved AIRA documentation and PPG sources.

## 10. Populate metadata and source registry.

## 11. Review classification and retrieval eligibility.

## 12. Exclude candidates, quarantine, superseded, expired, and unclassified artifacts from default indexing.

## 13. Run LLM Wiki indexing with batch manifest and source hash record.

## 14. Execute retrieval validation queries and record results.

## 15. Open issues for conflicts, stale content, missing metadata, or failed retrieval tests.

## 16. Approve the new vault and index as the active AIRA knowledge baseline.

**PROMPT:**

You are an AI-Native Enterprise Architect, Knowledge Governance Architect, DevSecOps Lead, Security Governance Reviewer, and AIRA Information Nervous System Designer.

We are restarting the AIRA knowledge foundation from scratch.

The current Obsidian vault and LLM Wiki index were previously created, but we now want to rebuild them using a cleaner, more controlled, modular, and enterprise-governed structure aligned with AIRA v3.0, AVCI, ISO 27001, CIS Controls, AI Governance, DevSecOps, MicroFunction architecture, OpenKM, GitHub, LLM Wiki, and the AIRA Information Nervous System.

## 1. Objective

Design and recommend the best approach to delete, archive, rebuild, classify, organize, govern, and re-index the AIRA Obsidian vault and related knowledge sources from scratch.

The rebuilt knowledge architecture must support:

## 1. AIRA Documentation

## 2. PPG - ISMS / ISO 27001

## 3. PPG - CIS Controls

## 4. PPG - AI Governance

## 5. GitHub source code and repository artifacts

## 6. OpenKM official documents and evidence records

## 7. LLM Wiki curated retrieval artifacts

## 8. Runtime configuration and AI artifacts

## 9. DevSecOps evidence

## 10. Auto-Heal, Auto-Learn, and Auto-Improve loops

The design must ensure that all documentation, policies, procedures, guidelines, source code, configurations, diagrams, images, templates, artifacts, test evidence, runtime evidence, audit records, and other Information Nervous System sources are aligned, traceable, classifiable, and usable by human engineers and approved AI assistants.

## 2. Mandatory AIRA Principles

The new structure must follow:

## 1. AVCI — Attributable, Verifiable, Classifiable, Improvable

## 2. SOLID

## 3. Clean Architecture

## 4. DDD / Bounded Contexts

## 5. Ports and Adapters

## 6. DRY, KISS, YAGNI

## 7. Idempotency by Design

## 8. Determinism and Reproducibility

## 9. Fail-Safe, Not Fail-Open

## 10. Human-in-the-Loop

## 11. Least Privilege / SBAC

## 12. Separation of Duties

## 13. Observability by Design

## 14. Policy as Code

## 15. Testability by Design

## 16. Secure by Design

## 17. Resilience Patterns

## 18. Architectural Fitness Functions

## 19. Reversibility / Rollbackability

## 20. AVCI evidence by construction

## 3. Required Reset Approach

Recommend a controlled reset approach with the following phases:

### Phase 0 — Freeze and Backup Current State

Before deleting the existing Obsidian vault:

## 1. Export or backup the current vault.

## 2. Generate a checksum or evidence record.

## 3. Record current folder structure.

## 4. Identify documents to retain, supersede, quarantine, or discard.

## 5. Create an AVCI reset record.

## 6. Confirm no secrets, PII, customer data, or restricted content are exposed.

## 7. Store the archived copy in the approved evidence location.

The reset must not destroy historical traceability.

### Phase 1 — Define Authoritative Source Hierarchy

Define the authority model across systems:

## 1. OpenKM / official DMS as Tier-0 source for approved DOCX, PDF, signed standards, policies, procedures, guidelines, evidence packs, and official records.

## 2. GitHub as Tier-0 source for source code, configuration, IaC, CI/CD, prompts, guardrails, policies-as-code, tests, and repository rules.

## 3. Obsidian as Git-managed canonical Markdown knowledge workspace.

## 4. LLM Wiki as curated AI retrieval layer.

## 5. pgvector / LightRAG / search indexes as derivative retrieval indexes.

## 6. Redis / cache as non-authoritative runtime acceleration only.

## 7. AI-generated outputs as draft only until reviewed and promoted.

No derivative source may override an approved Tier-0 source.

### Phase 2 — Design the New Folder Taxonomy

Create a clean modular folder structure for:

## 1. Obsidian

## 2. GitHub

## 3. OpenKM

## 4. LLM Wiki

## 5. Evidence storage

## 6. AI artifacts

## 7. DevSecOps artifacts

## 8. Runtime and configuration artifacts

The folder taxonomy must be consistent across tools where practical.

Initial Obsidian root folders must include at least:

## 1. AIRA Documentation

## 2. PPG - ISMS - ISO 27001

## 3. PPG - CIS Controls

## 4. PPG - AI Governance

Recommend additional folders needed for architecture, ADRs, runbooks, MicroFunctions, DevSecOps, security, testing, database, API contracts, AI prompts, guardrails, diagrams, evidence, candidates, and superseded documents.

### Phase 3 — Define Metadata and YAML Front Matter

Every Obsidian note, policy, procedure, guideline, architecture document, prompt, guardrail, runbook, diagram, and curated artifact must include metadata such as:

## 1. document_id

## 2. title

## 3. version

## 4. owner

## 5. co_owner

## 6. status

## 7. classification

## 8. source_system

## 9. source_path

## 10. source_hash

## 11. related_standard

## 12. related_adr

## 13. related_repository

## 14. related_module

## 15. related_control

## 16. ISO 27001 mapping

## 17. CIS Controls mapping

## 18. NIST / AI governance mapping where applicable

## 19. review_date

## 20. expiry_date

## 21. retrieval_eligible

## 22. model_route_eligibility

## 23. evidence_reference

## 24. supersedes

## 25. superseded_by

## 26. approval_status

### Phase 4 — Define Governance Workflow

Define the workflow for:

## 1. Creating new documents

## 2. Importing official documents into Obsidian

## 3. Creating Markdown projections from approved DOCX/PDF

## 4. Reviewing and approving notes

## 5. Promoting notes to LLM Wiki

## 6. Quarantining stale or conflicting notes

## 7. Superseding old documents

## 8. Mapping documents to ISO 27001, CIS Controls, AI Governance, and AIRA principles

## 9. Rebuilding the LLM Wiki index

## 10. Validating citations, classification, freshness, and retrieval accuracy

### Phase 5 — Define LLM Wiki Re-Indexing Strategy

Recommend how to re-index the rebuilt Obsidian vault into LLM Wiki.

The indexing strategy must include:

## 1. Approved-only retrieval by default

## 2. Exclusion of drafts, candidates, superseded, quarantined, and unclassified content

## 3. Classification-aware retrieval

## 4. Source citation by document ID, version, and section

## 5. Confidence scoring

## 6. Freshness validation

## 7. Conflict detection

## 8. Human review before promotion

## 9. Retrieval audit trail

## 10. Test queries to validate correctness

### Phase 6 — Align with GitHub, OpenKM, and Other Systems

Recommend how folders and artifacts should align across systems:

## 1. Obsidian for human-readable knowledge

## 2. OpenKM for official approved documents and evidence records

## 3. GitHub for source code, configuration, policies-as-code, prompts, guardrails, CI/CD, IaC, and tests

## 4. LLM Wiki for curated AI retrieval

## 5. PostgreSQL / pgvector for metadata, retrieval records, embeddings, and lineage

## 6. Observability stack for logs, metrics, traces, and audit evidence

## 7. Flowable / Temporal for workflow evidence and human approval history

The structure must support the AIRA Information Nervous System across Intent, Implementation, Behaviour, Evidence, and Knowledge.

### Phase 7 — Support Auto-Heal, Auto-Learn, and Auto-Improve

Recommend how the rebuilt knowledge structure can support:

## 1. Auto-Heal

## 2. Auto-Learn

## 3. Auto-Improve

## 4. AutoResearch

## 5. AI-assisted troubleshooting

## 6. AI-assisted code review

## 7. AI-assisted security review

## 8. AI-assisted documentation improvement

## 9. AI-assisted incident analysis

## 10. AI-assisted architecture consistency checking

Auto-Heal, Auto-Learn, and Auto-Improve must not directly modify authoritative knowledge, source code, configuration, policies, prompts, guardrails, or production systems. They may only create candidates, draft PRs, recommendations, evidence packs, and review requests.

### Phase 8 — Support Modular and Multi-Tier Architecture

Recommend how the knowledge architecture and repository structure should support modular, multi-tier AIRA deployment, including:

## 1. Presentation layer

## 2. API / gateway layer

## 3. Business logic layer

## 4. MicroFunction runtime layer

## 5. Database layer

## 6. Integration layer

## 7. Workflow layer

## 8. AI orchestration layer

## 9. Security and identity layer

## 10. Observability and evidence layer

## 11. DevSecOps and GitOps layer

The design must allow modules to be deployed independently where technically safe, without affecting unrelated modules.

Clearly distinguish:

## 1. What can be changed dynamically at runtime

## 2. What can be changed through configuration

## 3. What requires CI/CD deployment

## 4. What requires CAB / Architecture Review approval

## 5. What requires rollback or forward-fix planning

### Phase 9 — Deliverables

Produce the following outputs:

## 1. Recommended reset strategy

## 2. Risk assessment for deleting and rebuilding Obsidian

## 3. Recommended Obsidian folder structure

## 4. Recommended GitHub repository and folder alignment

## 5. Recommended OpenKM folder alignment

## 6. Recommended LLM Wiki structure

## 7. Recommended metadata / YAML front matter template

## 8. Recommended classification model

## 9. Recommended document lifecycle workflow

## 10. Recommended indexing and re-indexing process

## 11. Recommended source authority hierarchy

## 12. Recommended Auto-Heal / Auto-Learn / Auto-Improve knowledge flow

## 13. Recommended modular architecture alignment

## 14. Recommended deployment and runtime-change model

## 15. RACI matrix

## 16. Implementation roadmap

## 17. Acceptance criteria

## 18. Risks, gaps, and mitigations

## 19. Final executive recommendation

Use formal AIRA v3.0 language. The output must be enterprise-grade, audit-ready, and aligned with AVCI, ISO 27001, CIS Controls, NIST AI RMF, NIST SSDF, SOC 2, and SLSA Level 3 target.
