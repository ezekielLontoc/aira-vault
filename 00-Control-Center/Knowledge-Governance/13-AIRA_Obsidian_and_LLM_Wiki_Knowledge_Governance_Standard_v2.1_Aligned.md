---
document_id: "AIRA-DOC-013"
title: "AIRA Obsidian and LLM Wiki Knowledge Governance Standard"
version: "v2.1"
status: "aligned"
source_file: "13-AIRA_Obsidian_and_LLM_Wiki_Knowledge_Governance_Standard_v2.1_Aligned.docx"
source_format: "docx"
vault_folder: "00-Control-Center/Knowledge-Governance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - knowledge-governance
---

# AIRA Obsidian and LLM Wiki Knowledge Governance Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Obsidian and LLM Wiki Knowledge Governance Standard**

_Curated Knowledge | Source Projection | Retrieval Governance | Classification-Aware AI Assistance_

**v2.1 - Obsidian Upload and Pack 03 v1.2 Synchronization Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-013** |
| **Document Title** | **AIRA Obsidian and LLM Wiki Knowledge Governance Standard** |
| **Document Version** | **v2.1 - Obsidian Upload and Pack 03 v1.2 Synchronization Update** |
| **Supersedes** | **13-AIRA_Obsidian_and_LLM_Wiki_Knowledge_Governance_Standard_v2.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Knowledge governance baseline** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines how approved AIRA documents become curated Obsidian and LLM Wiki knowledge while preserving source authority.

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

Aligned Obsidian upload structure with individual Pack 01, Pack 02, and Pack 03 v1.2 documents.

Added suffix hierarchy treatment for Pack 03 duplicate-number documents before vault ingestion.

Updated mandatory YAML/front-matter recommendations to include backend_runtime_baseline: Java 25 LTS where code/tooling is referenced.

Clarified that LLM Wiki must exclude stale, superseded, unclassified, or duplicate-number conflict documents unless explicitly marked historical.

Reinforced classification-aware retrieval, source citations, review state, and Golden Source linkage for all AI assistants.

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

Obsidian and LLM Wiki Knowledge Governance Standard

_Authoritative Knowledge Vault · Curated LLM Wiki · AVCI-Governed Retrieval · Human-Reviewed Auto-Learn_

**Version 2.1 · April 2026**

| **Mandatory Operating Principle**<br>Obsidian and LLM Wiki are governed knowledge systems, not unmanaged file dumps. Knowledge may accelerate AI-native engineering only when it preserves source authority, classification, SOLID/Clean Architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA Obsidian and LLM Wiki Knowledge Governance Standard |
| Document ID | AIRA-DOC-013 |
| Version | v2.1 - Enterprise Design Principles and SOLID Enforcement Revision |
| Supersedes | 13-AIRA_Obsidian_and_LLM_Wiki_Knowledge_Governance_Standard_v2.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION |
| Owner | Solutions Architecture Office / AI Knowledge Governance Lead |
| Co-Owners | Data Governance · Security Architecture · DevSecOps · QA Engineering · Knowledge Steward |
| Effective Date | On CAB / Architecture Review Board approval |
| Review Cadence | Quarterly; unscheduled on material architecture, AI, security, knowledge-source, or regulatory change |
| Primary Decision Inputs | ADR-AIRA-2026-001; AIRA Cross-Document Revision Control Matrix v1.1; 01A Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Companion Documents | 01 AVCI v3.1; 01A Enterprise Design Principles v1.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.1; 05 Information Nervous System v4.1; 06 CLAUDE.md Reference v3.1; 07 Skills Framework v3.1; 08 Unit Testing v3.1; 10 MicroFunction Framework v3.0; 11 DevSecOps v3.1; 12 CLAUDE.md Rollout v3.0 |
| Purpose | Establish the mandatory governance model for storing, classifying, curating, indexing, retrieving, citing, maintaining, improving, and retiring AIRA knowledge in Obsidian and LLM Wiki. |

## Table of Contents

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Knowledge Governance Principles

## 4. Knowledge Source Architecture

## 5. Obsidian Vault Governance

## 6. LLM Wiki Governance

## 7. Required YAML Front Matter and Metadata Schema

## 8. Classification, Retrieval, and Model-Routing Rules

## 9. Knowledge Lifecycle and Promotion Workflow

## 10. Conflict Resolution and Source Precedence

## 11. Enterprise Design Principles and SOLID Enforcement

## 12. Auto-Learn, Auto-Heal, and Auto-Improve Knowledge Loop

## 13. Controls, Gates, and Evidence Requirements

## 14. Roles, RACI, and Operating Procedures

## 15. Implementation Roadmap and Acceptance Criteria

Appendix A. Standard Folder and File Templates

Appendix B. Copy-Ready YAML Template

Appendix C. Mermaid Pipeline Diagram

Appendix D. AVCI Compliance Summary

| **Word TOC Note**<br>This document uses a static table of contents for deterministic rendering. In Microsoft Word, a dynamic TOC may be inserted before final publication if required. |
| --- |

## 1. Executive Summary

AIRA uses Obsidian and LLM Wiki as a governed knowledge foundation for development, maintenance, AI-assisted engineering, and operational improvement. This standard defines how approved knowledge is created, stored, classified, curated, indexed, retrieved, cited, maintained, and retired so AI outputs remain attributable, verifiable, classifiable, and improvable.

Version 2.1 upgrades the original knowledge governance baseline with the Enterprise Design Principles and SOLID Enforcement Layer. The knowledge fabric must now preserve not only provenance and classification, but also SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, testability, secure-by-design posture, observability, reversibility, and rollbackability.

| **v2.1 Non-Negotiable Rule**<br>LLM Wiki is a curated retrieval layer, not an uncontrolled dumping ground. Obsidian notes and indexed artifacts must satisfy AVCI and the 01A Enterprise Design Principles before they are treated as authoritative development references. |
| --- |

| **Strategic Objective** | **Required Outcome** |
| --- | --- |
| Single governed knowledge base | All AIRA standards, ADRs, runbooks, diagrams, prompts, guardrails, model aliases, lessons learned, and templates are stored with owner, version, status, classification, source relationships, and review evidence. |
| AI-safe retrieval | LLM Wiki retrieves only current, approved, classification-eligible knowledge and returns citations with document ID, version, section, confidence, and evidence references. |
| Architecture-preserving knowledge | Knowledge must not recommend direct model calls, bypassed guardrails, cross-context database writes, infrastructure leakage into domain logic, or MicroFunction boundary violations. |
| Controlled continuous learning | Auto-Learn and Auto-Improve outputs become approved knowledge only after source citation, human review, regression validation, and formal promotion. |
| Audit defensibility | Every AI answer and recommendation can be traced back to approved sources, knowledge artifacts, retrieval evidence, guardrail results, and human review decisions. |

## 2. Purpose, Scope, and Authority

This standard establishes the mandatory rules for the AIRA Obsidian Vault and LLM Wiki knowledge layer. It defines source authority, folder taxonomy, metadata, review workflow, retrieval eligibility, classification handling, conflict resolution, improvement promotion, and evidence requirements.

| **In Scope** | **Out of Scope** |
| --- | --- |
| AIRA standards, blueprints, developer guides, ADRs, TDLs, runbooks, Mermaid diagrams, SQL/Java examples, prompt templates, guardrail artifacts, model-routing artifacts, approved lessons learned, operations playbooks, and developer onboarding references. | Raw customer production data, secrets, private employee notes, unmanaged file dumps, unreviewed AI transcripts, personal workspace exports, and unsupported model outputs. |
| Obsidian Markdown notes, approved DOCX/PDF source copies, Git-managed templates, LLM Wiki curated artifacts, retrieval metadata, source mappings, provenance records, and knowledge governance workflows. | Direct production data indexing, unrestricted chat logs, raw PII in prompts or embeddings, and classification-unknown documents. |

| **Authority Level** | **Knowledge Source** | **Rule** |
| --- | --- | --- |
| L0 - Approved System Standard | Approved AIRA DOCX/PDF stored in official repository or OpenKM/DMS | Highest authority for formal standards and externally reviewable policies. |
| L1 - Obsidian Canonical Note | Markdown projection of approved standard or approved design note stored in Git-managed vault | Authoritative for day-to-day developer retrieval when synced to the approved source version. |
| L2 - LLM Wiki Curated Artifact | Human-reviewed knowledge artifact compiled from approved sources | Approved for AI retrieval only when provenance remains traceable to L0/L1. |
| L3 - Retrieval Index / Embedding / Cache | pgvector, LightRAG, search indexes, Redis/Valkey cache | Derivative only; must be recompiled when sources change. |
| L4 - AI Output / Draft | ChatGPT/Codex/Hermes output, draft summary, proposed improvement | Not authoritative until reviewed, approved, and promoted. |

## 3. Knowledge Governance Principles

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| KG-1 | AVCI for knowledge | Every note, document, diagram, prompt, runbook, and wiki artifact must have owner, source, version, classification, verification evidence, and improvement path. |
| KG-2 | Approved sources only | LLM Wiki indexes approved or explicitly reviewable sources only. Drafts are excluded from standard retrieval unless the query explicitly asks for draft material. |
| KG-3 | Raw remains authoritative | Approved source documents and Git-managed notes remain authoritative. Embeddings, summaries, indexes, and graph links are derivative. |
| KG-4 | Classification governs retrieval | Public, Internal, Confidential, and Restricted labels determine who can retrieve content, which model route may be used, and whether content may enter prompts. |
| KG-5 | Citations by default | AI responses must cite document ID, title, version, section, and evidence references whenever answering from the knowledge base. |
| KG-6 | Staleness is a defect | Superseded or expired content is quarantined from default retrieval. Stale knowledge must not silently influence development. |
| KG-7 | Human review gates promotion | AI-generated summaries, lessons learned, AutoResearch outputs, and Auto-Learn candidates do not become approved knowledge without human review. |
| KG-8 | No secrets or real PII | Secrets, credentials, real customer PII, raw production documents, and restricted data must not be stored in Obsidian or indexed into LLM Wiki. |
| KG-9 | Conflict resolution is explicit | When documents conflict, hierarchy and version precedence determine the answer. AI must report unresolved conflicts, not hide them. |
| KG-10 | Design principles are preserved | Knowledge artifacts and retrieval answers must preserve SOLID, Clean Architecture, DDD boundaries, ports/adapters, security, observability, testability, and reversibility. |

## 4. Knowledge Source Architecture

AIRA separates formal source documents, Obsidian operational knowledge, LLM Wiki curated memory, graph/vector indexes, and runtime caches. This separation preserves traceability and prevents derivative summaries from overriding authoritative standards.

| **Layer** | **Component** | **Purpose** | **Authority** |
| --- | --- | --- | --- |
| L0 | Official Document Repository / OpenKM / DMS | Stores approved DOCX/PDF standards, signed policies, final architecture documents, templates, and board/CAB-approved references. | Authoritative |
| L1 | Git-Managed Obsidian Vault | Stores canonical Markdown projections, ADRs, diagrams, runbooks, checklists, templates, and developer-facing notes. | Authoritative when linked to approved source or approved directly through MR/CAB workflow |
| L2 | LLM Wiki | Stores curated, human-reviewed knowledge artifacts optimized for AI retrieval and developer Q&A. | Curated derivative with source citations |
| L3 | pgvector / LightRAG / Search Indexes | Stores chunks, embeddings, graph edges, retrieval metadata, and relationship indexes. | Derivative; trusted only with intact lineage and freshness |
| L4 | Redis/Valkey and Runtime Cache | Accelerates retrieval and runtime state. | Ephemeral; never authoritative |

| flowchart LR<br> SRC[Approved DOCX/PDF / Git / OpenKM] --> OBS[Git-Managed Obsidian Vault]<br> SRC --> CUR[Curated LLM Wiki Artifact]<br> OBS --> CUR<br> SRC --> IDX[pgvector Chunks + LightRAG Graph]<br> CUR --> IDX<br> IDX --> RET[Retrieval Service: ACL + Classification + Evidence Pack]<br> RET --> GRD[NeMo Retrieval Rail]<br> GRD --> ORCH[Hermes / Spring AI]<br> ORCH --> LLM[LiteLLM Model Route]<br> LLM --> OUT[Answer / Recommendation with Citations]<br> OUT --> AUD[Audit Evidence + Feedback Loop]<br> AUD --> REVIEW[Human Review / MR / CAB] |
| --- |

## 5. Obsidian Vault Governance

The Obsidian vault is the human-readable, Git-managed knowledge workspace for AIRA. It is not a personal notebook collection. It is a controlled engineering knowledge base with naming standards, YAML front matter, backlinks, version links, classification labels, and review workflow.

| **Vault Area** | **Purpose** | **Required Controls** |
| --- | --- | --- |
| 01-Standards | Canonical Markdown projections of approved standards and policy summaries. | Source document ID, version, owner, classification, evidence reference, review status. |
| 02-Architecture | Architecture notes, diagrams, C4/Mermaid references, service boundary notes, integration views. | Must trace to Engineering Blueprint, ADR, or approved design review. |
| 03-ADRs-and-TDLs | Architecture Decision Records, Technical Decision Logs, waivers, supersedence notices. | Immutable once accepted; supersede rather than rewrite history. |
| 04-Runbooks-and-SOPs | Operational playbooks, incident procedures, support steps, onboarding guides. | Owner, last tested date, evidence, rollback path, classification. |
| 05-Developer-Knowledge | Coding examples, MicroFunction templates, API examples, testing guides, known patterns. | Must not contain secrets, real PII, or unapproved code snippets. |
| 06-AI-Artifacts | Prompt templates, guardrail summaries, model alias summaries, evaluation guidance. | Prompt/model/guardrail owner, test results, classification ceiling, LiteLLM route. |
| 90-Candidates | Drafts, AI-generated notes, Auto-Learn candidates, review queue. | Not default retrieval-eligible. Must be promoted by human review. |
| 99-Superseded | Retired, replaced, or archived knowledge. | Excluded from default retrieval unless explicitly requested for historical analysis. |

## 6. LLM Wiki Governance

LLM Wiki is the curated knowledge layer used for AI-assisted retrieval, developer Q&A, remediation analysis, and long-term application maintenance. It must serve only approved, current, classification-eligible knowledge unless the user explicitly requests draft or historical information and has access to it.

| **LLM Wiki Rule** | **Operational Requirement** | **Evidence** |
| --- | --- | --- |
| Approved artifacts only | Default retrieval includes only APPROVED and CURRENT artifacts. | Approval record, source reference, reviewer, approval date. |
| Citation by default | Every answer generated from LLM Wiki includes source ID, version, section, and confidence. | Retrieval audit record and response evidence. |
| No silent conflict | Conflicting sources are surfaced with precedence and uncertainty; unresolved conflicts are quarantined. | Conflict register and reconciliation ticket. |
| Classification-aware retrieval | Retrieval checks actor, role, SBAC skill, classification, ACL, and model route eligibility. | OPA/SBAC decision and audit trace. |
| Derivative discipline | LLM Wiki may summarize, but cannot override L0/L1 source truth. | Source hash and projection relationship. |
| Freshness required | Expired or superseded artifacts are excluded from default retrieval. | Review_due, expiry_date, and staleness flag. |
| Architecture preservation | Knowledge cannot recommend patterns that violate 01A, Engineering Blueprint, or Developer Guide. | Principle-impact field and review result. |

## 7. Required YAML Front Matter and Metadata Schema

Every Obsidian note and LLM Wiki artifact must include machine-readable metadata. Missing metadata prevents promotion to approved retrieval status.

| **Field** | **Meaning** | **Requirement** |
| --- | --- | --- |
| document_id | Stable ID of the source or note. | Required |
| title | Human-readable title. | Required |
| version | Semantic version or date-based version. | Required |
| status | DRAFT, REVIEW, APPROVED, CURRENT, SUPERSEDED, RETIRED, QUARANTINED. | Required |
| classification | PUBLIC, INTERNAL, CONFIDENTIAL, RESTRICTED. | Required |
| owner | Named accountable owner. | Required |
| source_tier | Tier 0, Tier 1, Tier 2, Tier 3, or Draft. | Required |
| source_ref | Official source path, Git URL, OpenKM ref, ADR/TDL, or evidence record. | Required |
| supersedes | Prior document/note ID if applicable. | Conditional |
| domain | Information domain D1-D12. | Required |
| reasoning_axis | Intent, Implementation, Behaviour, Evidence, or Knowledge. | Required |
| bounded_context | Relevant bounded context or N/A. | Required |
| retrieval_status | eligible, candidate, blocked, expired, superseded, quarantine. | Required |
| model_route_rule | Allowed model route or restricted/on-prem only. | Required |
| solid_impact | SRP/OCP/LSP/ISP/DIP effect or N/A. | Required |
| architecture_boundary_impact | Clean Architecture, DDD, ports/adapters, MicroFunction boundary effect. | Required |
| testability_impact | Test/evaluation requirement or N/A. | Required |
| security_posture_impact | Security, SBAC, OPA, secrets, or data-handling effect. | Required |
| reversibility_impact | Rollback, supersedence, restore, or retirement path. | Required |
| evidence_ref | Evidence record, PR/MR, CAB, test run, or review ID. | Required |
| review_due | Next review date. | Required |

| ---<br>document_id: AIRA-KG-EXAMPLE-001<br>title: Example Knowledge Artifact<br>version: v1.0<br>status: APPROVED<br>classification: INTERNAL<br>owner: Knowledge Steward<br>source_tier: Tier 1<br>source_ref: OpenKM:/AIRA/Engineering Standards/03-Developer-Guide/v4.0<br>domain: D9-Enablement<br>reasoning_axis: Knowledge<br>bounded_context: platform-governance<br>retrieval_status: eligible<br>model_route_rule: internal-or-approved-cloud<br>solid_impact: preserves SRP/OCP through isolated guidance<br>architecture_boundary_impact: reinforces Clean Architecture and ports/adapters<br>testability_impact: requires unit/architecture test reference where code is affected<br>security_posture_impact: no secrets, no real PII, classification-aware handling<br>reversibility_impact: supersede via new approved note; do not overwrite accepted history<br>evidence_ref: PR-1234 / CAB-2026-001 / TEST-RUN-456<br>review_due: 2026-07-31<br>--- |
| --- |

## 8. Classification, Retrieval, and Model-Routing Rules

| **Classification** | **Knowledge Handling** | **Model / Retrieval Rule** |
| --- | --- | --- |
| Public | May be indexed for general reference after review. | Approved cloud or local route allowed if source is approved. |
| Internal | Default AIRA engineering knowledge. | Approved workspace/model route allowed with audit and no secrets. |
| Confidential | Architecture, security, internal controls, sensitive operational knowledge. | Retrieval requires ACL/SBAC check, redaction as needed, and approved model route. |
| Restricted | Secrets-adjacent, regulated, high-risk, customer-sensitive, or security-sensitive knowledge. | Default cloud prompt use blocked. Approved private/on-prem route or explicit waiver required. |

| **Blocked Content** | **Rule** |
| --- | --- |
| Secrets and credentials | Never stored in Obsidian, LLM Wiki, prompts, examples, screenshots, embeddings, or logs. |
| Raw PII / customer data | Never used as examples or test fixtures. Use synthetic or masked data only. |
| Unreviewed AI transcripts | Candidate only. Must be summarized, source-checked, classified, and approved before use. |
| Superseded standards | Excluded from default retrieval and clearly marked historical. |
| Architecture-conflicting guidance | Quarantined until reconciled by Architecture owner and affected standards are updated. |

## 9. Knowledge Lifecycle and Promotion Workflow

| **Stage** | **Entry Criteria** | **Exit Gate** |
| --- | --- | --- |
| Draft | Created by human, AI, AutoResearch, incident review, PR review, or meeting notes. | Owner and classification assigned. |
| Candidate | Has source references, intended domain, and metadata. | Knowledge steward checks provenance and completeness. |
| Review | Reviewed by domain owner, security where needed, QA where test evidence is affected, and architecture where boundaries are affected. | All material comments resolved; conflict check passed. |
| Approved | Accepted as current guidance. | Published to approved Obsidian/LLM Wiki path and indexed. |
| Current | Retrieval-eligible and actively used. | Review_due monitored; source hash/freshness checked. |
| Superseded | Replaced by newer approved artifact. | Moved to superseded folder; excluded from default retrieval. |
| Retired / Purged | No longer needed or retention expired. | Evidence retained according to retention rules; derivatives rebuilt or removed. |
| Quarantined | Conflict, missing evidence, stale source, classification issue, or suspected unsafe content. | Resolved through reconciliation ticket or permanently retired. |

## 10. Conflict Resolution and Source Precedence

Conflicting knowledge is treated as an engineering defect. The system must not silently choose the most recent, most convenient, or most frequently retrieved answer. Precedence, version, authority, classification, and approval state determine the answer.

| **Conflict Type** | **Required Action** | **Owner** |
| --- | --- | --- |
| Version conflict | Prefer current approved higher-authority source; mark older item superseded. | Knowledge Steward + Source Owner |
| Architecture conflict | Engineering Blueprint and Architecture Board decision govern; update subordinate knowledge. | Solutions Architect |
| Security conflict | Security standard and approved risk decision govern; quarantine unsafe guidance. | Security Architecture |
| Technology version conflict | Technology Stack governs; update examples/templates. | DevSecOps + Technology Owner |
| AVCI/principle conflict | AVCI and 01A govern; block promotion until evidence and principle impact are resolved. | Solutions Architect + Knowledge Steward |
| Unresolved conflict | Return answer as uncertain with sources and create reconciliation item. | Knowledge Steward |

## 11. Enterprise Design Principles and SOLID Enforcement

Knowledge governance must enforce the same 20 Enterprise Design Principles used by AIRA engineering. Knowledge artifacts must not preserve bad design patterns simply because they appeared in prior notes, AI drafts, meeting discussions, or code comments.

| **Principle Group** | **Knowledge Enforcement Rule** |
| --- | --- |
| SOLID | Code examples, refactoring advice, Auto-Heal patches, and MicroFunction guidance must preserve SRP, OCP, LSP, ISP, and DIP. |
| Clean Architecture | Notes must not instruct domain logic to depend on infrastructure, provider SDKs, database drivers, UI, or framework details. |
| DDD / Bounded Contexts | Knowledge must identify bounded context ownership and prevent cross-context writes or shared database ownership. |
| Ports and Adapters | Integration guidance must express external dependencies as ports/adapters, not direct domain dependencies. |
| DRY, KISS, YAGNI | Knowledge must prefer simple reusable patterns and must not promote speculative abstractions or duplicated plumbing. |
| Idempotency / Determinism | Operational, workflow, and event guidance must include retry safety, stable inputs, versioned outputs, and reproducible evidence. |
| Fail-Safe / Secure by Design | If source authority, classification, guardrails, policy, or audit are unavailable, retrieval or action must block rather than fail open. |
| Human-in-the-Loop / Progressive Autonomy | High-impact knowledge promotion and AI action guidance require human review and bounded autonomy. |
| Least Privilege / SBAC / Separation of Duties | Knowledge access, editing, approval, and AI action guidance must follow named roles and skill-gated authorization. |
| Observability / Policy as Code / Fitness Functions | Knowledge must define evidence, telemetry, policy checks, and automated tests when it affects system behavior. |
| Reversibility / Rollbackability | Every approved knowledge change must be supersedable, traceable, and recoverable without rewriting history. |
| AVCI | Every knowledge artifact must be attributable, verifiable, classifiable, and improvable. |

## 12. Auto-Learn, Auto-Heal, and Auto-Improve Knowledge Loop

| **Improvement Constraint**<br>Auto-Heal, Auto-Learn, and Auto-Improve must not only fix, learn, or optimize. They must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

| **Capability** | **Permitted Knowledge Action** | **Approval Gate** |
| --- | --- | --- |
| Auto-Learn | Convert resolved incidents, accepted PRs, approved reviews, postmortem lessons, test failures, and operational outcomes into candidate knowledge artifacts. | Source citations, classification check, conflict check, human review, evidence reference, review_due. |
| Auto-Heal | Use approved knowledge, runbooks, telemetry, error catalogs, tests, and previous fixes to draft remediation guidance or PRs. | Root-cause evidence, minimal fix, regression tests, security check, reversibility plan, human approval. |
| Auto-Improve | Propose refactoring, pattern improvement, guardrail tuning, policy improvement, template update, or technology-stack update. | Measurable benefit, ADR/TDL where material, principle-impact assessment, QA/security evidence, CAB/Architecture approval when needed. |
| AutoResearch | Collect and summarize external or internal signals for review. | Non-authoritative until reviewed, source-cited, classified, and promoted. |

## 13. Controls, Gates, and Evidence Requirements

| **Gate** | **Required Check** | **Evidence Output** |
| --- | --- | --- |
| Metadata completeness | All required YAML fields present and valid. | Metadata validation report. |
| Source authority | Artifact traces to approved Tier 0/Tier 1 source or is marked candidate. | Source_ref, hash, owner, version. |
| Classification eligibility | Artifact classification, ACL, prompt eligibility, and model route are valid. | OPA/SBAC decision and routing evidence. |
| Conflict and staleness | Artifact is not expired, superseded, or conflicting with higher authority. | Freshness score and conflict result. |
| Design principle impact | Artifact does not weaken SOLID, boundaries, security, testability, observability, or reversibility. | Principle-impact assessment. |
| Security and PII hygiene | No secrets, credentials, raw PII, or Restricted data enter knowledge artifacts or indexes. | DLP/secret scan and reviewer attestation. |
| Retrieval quality | Citations, confidence, relevance, and grounding are sufficient. | Retrieval evaluation report. |
| Human approval | Required owner and reviewer approvals are complete. | Approval record and PR/MR/CAB reference. |

## 14. Roles, RACI, and Operating Procedures

| **Activity** | **Solutions Architect** | **Knowledge Steward** | **Data Governance** | **Security** | **DevSecOps** | **QA** | **Developer** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Approve knowledge architecture | A | R | C | C | C | C | I |
| Register source and assign tier | C | R | A/R | C | C | I | I |
| Classify knowledge artifact | C | R | A/R | A/R | C | I | I |
| Curate Obsidian / LLM Wiki artifact | C | A/R | C | C | I | C | R |
| Operate indexing and rebuild pipeline | I | C | C | C | A/R | C | I |
| Define retrieval quality tests | C | R | C | C | C | A/R | R |
| Approve Auto-Learn promotion | A | R | R | C | C | C | I |
| Resolve knowledge conflict | A/R | R | R | C | C | C | C |
| Review audit evidence | A | R | R | R | C | R | I |

Operating procedures must be executed through Git/MR, Flowable approval, CAB/Architecture review, or the approved knowledge governance workflow. Manual edits to approved knowledge outside the controlled path are treated as governance drift.

## 15. Implementation Roadmap and Acceptance Criteria

| **Phase** | **Focus** | **Exit Criteria** |
| --- | --- | --- |
| P1 - Metadata and taxonomy baseline | Implement required YAML front matter, folder structure, source registry, and status taxonomy. | All active knowledge artifacts have owner, status, version, classification, source_ref, domain, and review_due. |
| P2 - Retrieval eligibility controls | Implement approved/candidate/quarantine/superseded retrieval rules and ACL filtering. | LLM Wiki default retrieval serves only approved, current, classification-eligible artifacts. |
| P3 - Source authority and conflict control | Implement source hash, version precedence, conflict register, and supersedence workflow. | Conflicts are reported and quarantined; superseded content excluded by default. |
| P4 - Classification and model routing | Integrate OPA/SBAC and model route eligibility with retrieval service and LiteLLM policy. | Confidential/Restricted content follows approved route or blocks. |
| P5 - Design principle enforcement | Add principle-impact metadata, review checklist, and architecture boundary checks. | Knowledge changes cannot promote boundary violations or unsafe design advice. |
| P6 - Auto-Learn/Improve pipeline | Connect incidents, PRs, tests, reviews, and postmortems to candidate knowledge workflow. | Candidates require source citations, tests where applicable, human review, and promotion evidence. |
| P7 - Evidence and audit reporting | Publish dashboards for knowledge status, staleness, conflicts, retrieval quality, and approval evidence. | Audit can reconstruct source-to-answer lineage and improvement decisions. |

## Appendix A. Standard Folder and File Templates

| **Path** | **Purpose** | **Retrieval Handling** |
| --- | --- | --- |
| /aira-vault/01-Standards | Canonical standard summaries and projections. | Approved only; cite source document. |
| /aira-vault/02-Architecture | Architecture notes, diagrams, component ownership, patterns. | Approved or reviewable; must link ADR/Blueprint. |
| /aira-vault/03-ADRs-and-TDLs | Decision records and technical decision logs. | Accepted decisions default eligible; drafts candidate only. |
| /aira-vault/04-Runbooks-and-SOPs | Operational procedures and support guides. | Eligible after owner approval and last-tested evidence. |
| /aira-vault/05-Developer-Knowledge | Developer usage notes, examples, templates. | Eligible after QA/security review where applicable. |
| /aira-vault/06-AI-Artifacts | Prompts, guardrails, model aliases, evaluation guidance. | Eligible only with guardrail/evaluation evidence. |
| /aira-vault/90-Candidates | Drafts, AI outputs, Auto-Learn candidates. | Blocked from default retrieval. |
| /aira-vault/99-Superseded | Replaced knowledge and historical notes. | Excluded unless explicitly requested. |

## Appendix B. Copy-Ready YAML Template

| ---<br>document_id: AIRA-KG-XXXX<br>title: <Title><br>version: v1.0<br>status: DRAFT \| REVIEW \| APPROVED \| CURRENT \| SUPERSEDED \| RETIRED \| QUARANTINED<br>classification: PUBLIC \| INTERNAL \| CONFIDENTIAL \| RESTRICTED<br>owner: <Named owner><br>source_tier: Tier 0 \| Tier 1 \| Tier 2 \| Tier 3 \| Draft<br>source_ref: <OpenKM/Git/ADR/PR/evidence reference><br>supersedes: <prior-id-or-null><br>domain: D1-Governance \| D2-Requirements \| D3-Code \| D4-Configuration \| D5-Telemetry \| D6-Security \| D7-Quality \| D8-Data \| D9-Enablement \| D10-External \| D11-AI-Artifacts \| D12-Workflow-Decisions<br>reasoning_axis: Intent \| Implementation \| Behaviour \| Evidence \| Knowledge<br>bounded_context: <context-or-N/A><br>retrieval_status: eligible \| candidate \| blocked \| expired \| superseded \| quarantine<br>model_route_rule: <allowed route or restricted/on-prem only><br>solid_impact: <SRP/OCP/LSP/ISP/DIP impact or N/A><br>architecture_boundary_impact: <Clean Architecture / DDD / ports-adapters impact><br>testability_impact: <test/evaluation requirement><br>security_posture_impact: <security/classification/SBAC/OPA impact><br>observability_impact: <audit/log/metric/trace impact><br>reversibility_impact: <supersede/rollback/restore path><br>evidence_ref: <PR/MR/CAB/test/evidence ID><br>review_due: YYYY-MM-DD<br>--- |
| --- |

## Appendix C. Mermaid Pipeline Diagram

| flowchart TD<br> A[Create or Update Knowledge] --> B[Assign Owner + Classification + Metadata]<br> B --> C{Source Authority Present?}<br> C -- No --> Q[Candidate / Quarantine]<br> C -- Yes --> D[AVCI + 01A Principle Impact Check]<br> D --> E[Security / PII / Secrets Scan]<br> E --> F[Domain + Knowledge Steward Review]<br> F --> G{Conflict or Stale Source?}<br> G -- Yes --> R[Reconciliation Item]<br> G -- No --> H[Approve and Publish]<br> H --> I[Index to LLM Wiki / pgvector / LightRAG]<br> I --> J[Retrieval Service ACL + Classification Filter]<br> J --> K[NeMo Retrieval Rail]<br> K --> L[AI Answer with Citations]<br> L --> M[Audit Evidence + Feedback]<br> M --> N[Auto-Learn Candidate if Improvement Needed]<br> N --> B |
| --- |

## Appendix D. AVCI Compliance Summary

| **AVCI Property** | **v2.1 Evidence** |
| --- | --- |
| Attributable | Each note, wiki artifact, prompt, guardrail summary, model alias note, runbook, diagram, and retrieval artifact has owner, source, version, status, evidence reference, and review date. |
| Verifiable | Knowledge is verified by source authority, citations, review status, freshness checks, conflict checks, classification checks, retrieval evaluation, and approval evidence. |
| Classifiable | All artifacts carry classification, domain, tier, ACL, retention, prompt eligibility, model-routing rule, and handling requirements. |
| Improvable | Feedback, incidents, defects, test failures, review outcomes, and operational signals enter controlled Auto-Learn/Auto-Improve workflows with human review. |
| 01A Alignment | The standard preserves SOLID, Clean Architecture, DDD boundaries, ports/adapters, deterministic evidence, fail-safe behaviour, HITL, least privilege/SBAC, separation of duties, observability, policy-as-code, testability, secure-by-design posture, resilience, progressive autonomy, reversibility, rollbackability, and AVCI. |
