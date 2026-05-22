---
document_id: "AIRA-DOC-005"
title: "AIRA AI Native Information Nervous System"
version: "v4.1"
status: "aligned"
source_file: "05-AIRA_AI_Native_Information_Nervous_System_v4.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Architecture"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - architecture
---

# AIRA AI Native Information Nervous System

**AIRA**

AI-Native Enterprise Platform

**AIRA AI-Native Information Nervous System**

_Information Taxonomy | Source Architecture | Metadata Provenance | Retrieval Governance | SOLID/AVCI Evidence_

**v4.1 - Pack 03 v1.2 Source Authority and Obsidian Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-005** |
| **Document Title** | **AIRA AI-Native Information Nervous System** |
| **Document Version** | **v4.1 - Pack 03 v1.2 Source Authority and Obsidian Alignment Update** |
| **Supersedes** | **05-AIRA_AI_Native_Information_Nervous_System_v4.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Information authority baseline** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Governs source tiers, metadata, provenance, retrieval eligibility, confidence, AI memory, and information lifecycle.

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

Aligned Tier 0 / Tier 1 / Tier 2 / Tier 3 source authority with the current individual Pack 01 and Pack 02 outputs.

Updated Java 25 metadata expectations for code, devcontainers, CI evidence, GitNexus indexes, generated examples, and assistant guidance.

Clarified Obsidian and LLM Wiki as curated derivative knowledge, not replacements for Git, OpenKM, approved DOCX files, or evidence stores.

Added duplicate-number cleanup treatment so Pack 03 derivative documents use suffix hierarchy before Obsidian upload.

Reinforced that Auto-Learn outputs require human review, classification safety, citations, and conflict quarantine before becoming retrievable authority.

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

AI-Native Information Nervous System

_Information Taxonomy · Source Architecture · Metadata Provenance · Retrieval Governance · SOLID/AVCI Evidence_

**Version 4.1 · May 2026**

| **Strategic Intent**<br>This standard defines the governed information fabric that enables AIRA to reason across intent, implementation, behaviour, evidence, and knowledge while preserving SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA AI-Native Information Nervous System |
| Document ID | AIRA-DOC-005 |
| Version | v4.1 - Pack 03 v1.2 Source Authority and Obsidian Alignment Update |
| Supersedes | 05-AIRA_AI_Native_Information_Nervous_System_v4.1 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD APPROVAL |
| Owner | Solutions Architecture Office / Data Governance / AI Engineering |
| Co-Owners | Enterprise Architecture · Security Architecture · QA Engineering · DevSecOps · Knowledge Governance |
| Audience | CTO, Enterprise Architects, Data Governance, Software Development Leads, DevSecOps, Security, QA, SRE, AI Engineering, Internal Audit |
| Primary Decision Inputs | ADR-AIRA-2026-001; AIRA Cross-Document Revision Control Matrix v1.1; 01A Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Companion Documents | 01 AVCI v3.1; 01A Enterprise Design Principles v1.1; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.1; 06 CLAUDE.md Reference v3.1; 08 Unit Testing v3.1; 10 MicroFunction Framework v3.0; 11 DevSecOps v3.1; 12 Rollout Starter Pack v3.0 |
| Compliance Scope | AVCI; ISO/IEC 27001:2022; CIS Controls v8.1; NIST AI RMF; NIST AI 600-1; NIST SSDF; OWASP ASVS 5.0.0; SOC 2; SLSA Build Level 3 target; BSP IT Risk expectations |
| Purpose | Define the authoritative information taxonomy, source-to-tier assignment, metadata and provenance schema, lifecycle pipeline, classification handling, retrieval routing, confidence scoring, AI memory governance, and SOLID/AVCI-governed improvement loop for AIRA. |

## 1. Executive Summary

AIRA is an AI-native enterprise platform whose engineering quality depends on the quality of the information fabric that feeds humans, services, retrieval systems, workflows, and AI agents. The Information Nervous System is the governed knowledge architecture that connects policies, requirements, source code, configuration, runtime behaviour, security evidence, quality evidence, data semantics, enablement knowledge, external signals, AI artifacts, and workflow decisions.

Version 4.0 preserves the v3.0 intent and upgrades it with the Enterprise Design Principles and SOLID Enforcement Layer. The knowledge fabric must not only provide information. It must preserve architecture boundaries, prevent stale or conflicting knowledge from influencing decisions, and produce evidence that every AI answer, remediation proposal, learned pattern, and improvement candidate remains attributable, verifiable, classifiable, and improvable.

| **v4.0 Non-Negotiable Rule**<br>No information artifact, retrieval result, AI memory item, LLM Wiki entry, Obsidian note, embedding, graph relation, Auto-Learn output, or Auto-Improve proposal may become authoritative unless it preserves or improves SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

| **Strategic Outcome** | **v4.0 Required Result** |
| --- | --- |
| Trusted AI responses | Every response cites source artifact IDs, version, classification, model alias, guardrail result, confidence score, and audit correlation ID. |
| Cross-domain reasoning | AIRA correlates Intent, Implementation, Behaviour, Evidence, and Knowledge rather than relying on a single isolated source. |
| Architecture preservation | Knowledge entries and retrieval outputs must not recommend boundary violations, direct model calls, cross-context database writes, or uncontrolled tool execution. |
| Controlled learning | Auto-Learn promotes only human-reviewed, source-cited, classification-safe, non-conflicting knowledge. |
| Governed improvement | Auto-Heal and Auto-Improve recommendations must pass principle-impact assessment, regression evidence, rollback plan, and human approval. |
| Audit defensibility | Every source, derivative index, prompt, guardrail policy, model route, and agent action can be reconstructed from evidence. |

## 2. Authority, Scope, and Document Hierarchy

This standard is the information-authority document for AIRA. It governs source tiers, metadata, provenance, retrieval eligibility, confidence scoring, AI memory, and information lifecycle. It does not override architecture boundaries, security policy, or technology version pins. Where conflicts occur, the higher-authority document applies and this standard must be updated through change control.

| **Authority Level** | **Document / Source** | **Concern** | **Conflict Rule** |
| --- | --- | --- | --- |
| L0 | Consolidated Architecture Blueprint / Architecture Board | End-to-end architecture and platform boundaries | Architecture conflicts resolve here first. |
| L1 | 02 Engineering Blueprint v5.1 | Build-ready service boundaries, flows, evidence, and AI execution architecture | Service-boundary or workflow-path conflicts resolve here. |
| L1 | This Information Nervous System v4.1 | Information domains, tiers, metadata, retrieval, confidence, memory, and knowledge lifecycle | Information handling conflicts resolve here when not architectural. |
| L2 | 01 AVCI v3.1 and 01A Enterprise Design Principles | Universal artifact quality and SOLID/architecture enforcement | Any missing AVCI or principle evidence blocks production readiness. |
| L2 | Developer Guide, Technology Stack, CLAUDE.md, Unit Testing, DevSecOps, MicroFunction, Security Standards | Implementation and operating detail | Most specific current standard applies inside its domain. |
| L3 | ADRs, TDLs, tickets, PR/MR evidence, runbooks | Implementation-specific records | Must trace to approved standards and cannot weaken them. |

| **In Scope** | **Out of Scope** |
| --- | --- |
| AIRA standards, blueprints, ADRs, TDLs, requirements, source code metadata, configuration, prompts, guardrails, model aliases, test evidence, telemetry references, runbooks, incidents, lessons learned, approved external references, retrieval indexes, and curated knowledge. | Raw production customer records, secrets, unmanaged chat logs, private employee notes, unsupported AI exports, unclassified screenshots, and uncontrolled file dumps. |
| Obsidian vault structure, LLM Wiki curated artifacts, pgvector chunks, LightRAG graph, metadata schema, provenance, source-to-tier assignment, classification routing, AI memory governance, and improvement loop evidence. | Direct production data indexing into AI tools, prompt storage of raw PII, personal AI account exports, and any derivative source that cannot trace to Tier 0 evidence. |

## 3. Core Design Principles for the Information Fabric

| **Principle** | **AIRA Implementation Meaning** |
| --- | --- |
| Everything is an attributable artifact | Code, configuration, policy, prompt, model alias, guardrail, telemetry, test result, approval, runbook, and AI response must have owner, source, version, and traceability. |
| Reasoning across five axes | Intent, Implementation, Behaviour, Evidence, and Knowledge are correlated for architecture, audit, remediation, and decision support. |
| Raw remains authoritative; compiled is derivative | Approved SCM, OpenKM, PostgreSQL, Temporal/Flowable histories, identity systems, security tools, and audit stores remain authoritative. pgvector, LightRAG, LLM Wiki, Obsidian summaries, Redis, and generated summaries are derivative unless explicitly approved. |
| Classification governs retrieval | Public, Internal, Confidential, and Restricted labels control storage, encryption, ACL, prompt eligibility, model route, logging, retention, and human approval. |
| Grounded generation only | AI outputs must be grounded in retrieved evidence, curated knowledge, or approved policy. Ungrounded output is exceptional, labelled, low-confidence, and blocked for high-impact decisions. |
| Explainability by default | Every response and recommendation must be reconstructable through citations, evidence IDs, model alias, prompt version, guardrail policy, and audit trail. |
| Human review gates high-impact change | Confidential/Restricted artifacts, low-confidence extractions, prompt changes, guardrail changes, and auto-learned improvements require human review before serving. |
| SOLID and architecture boundary preservation | Knowledge and retrieval must not recommend changes that weaken SRP, OCP, LSP, ISP, DIP, Clean Architecture, DDD, ports/adapters, or MicroFunction boundaries. |
| Closed-loop improvement under governance | Production signals, user feedback, test failures, security findings, and approval outcomes feed improvements through MR/CAB/Flowable gates, never autonomous self-modification. |

## 4. Information Architecture

The AIRA Information Nervous System is organized around five reasoning axes and four knowledge tiers. The axes describe what the information means to the platform. The tiers describe authority, lifecycle, trust, retrieval eligibility, and evidence requirements.

| **Reasoning Axis** | **Domains** | **What AIRA Learns** |
| --- | --- | --- |
| Intent | D1 Governance, D2 Requirements | What AIRA is supposed to do, what rules apply, and which outcomes are intended. |
| Implementation | D3 Code, D4 Configuration, D8 Data | How intent is encoded in source code, runtime parameters, infrastructure, contracts, schemas, migrations, and data structures. |
| Behaviour | D5 Telemetry, D12 Workflow Decisions | What actually happens at runtime and how humans, workflows, and systems respond. |
| Evidence | D6 Security, D7 Quality | Proof that controls work, defects are detected, tests pass, vulnerabilities are addressed, and compliance can be demonstrated. |
| Knowledge | D9 Enablement, D10 External, D11 AI Artifacts | Human-readable operating knowledge, external change signals, prompts, guardrails, model aliases, evaluations, and approved lessons learned. |

| **Tier** | **Representative Sources** | **Authority Rule** | **Primary Owner** |
| --- | --- | --- | --- |
| Tier 0 - Authoritative Sources | Approved SCM, OpenKM, PostgreSQL transactional stores, Temporal/Flowable histories, observability raw stores, security tools, identity/audit systems, model registry, prompt/guardrail repositories | Highest authority. Used to resolve conflicts and verify derivatives. | Source owner and system owner |
| Tier 1 - Curated Knowledge | LLM Wiki, Obsidian canonical notes, approved runbooks, reviewed summaries, approved source packs archived back to Tier 0 | High after review. Guidance layer, not raw evidence replacement. | Knowledge steward and domain reviewer |
| Tier 2 - Compiled Retrieval Indexes | PostgreSQL + pgvector chunks/embeddings, LightRAG graph, search indexes, semantic code indexes, compiled summaries | Derivative. Trusted only when lineage, freshness, ACL, and classification evidence are intact. | Retrieval/data owner |
| Tier 3 - Ephemeral Runtime State | Redis/Valkey caches, semantic cache, session acceleration, short-lived runtime context | Never authoritative. May accelerate but must not decide truth. | Runtime owner |

| flowchart LR<br> T0[Tier 0 Authoritative Sources] --> CUR[Tier 1 Curated Knowledge]<br> T0 --> IDX[Tier 2 Retrieval Indexes]<br> CUR --> IDX<br> IDX --> RET[Evidence Assembly + ACL + Classification]<br> RET --> GRD[NeMo Retrieval Rail]<br> GRD --> ORCH[Hermes / Spring AI Orchestration]<br> ORCH --> LLM[LiteLLM Model Route]<br> LLM --> OUT[Answer / Recommendation]<br> OUT --> AUD[Audit Evidence + Feedback Loop]<br> AUD --> REVIEW[Human Review / CAB / MR]<br> REVIEW --> T0 |
| --- |

## 5. Twelve Information Domains

| **Domain** | **Primary Sources** | **Information Value** |
| --- | --- | --- |
| D1 Governance | Policies, standards, ADRs, controls, waivers, risk decisions | AVCI, 01A principles, regulatory mapping, decision history |
| D2 Requirements | Business requirements, epics, stories, acceptance criteria, process rules | Intent, expected behaviour, approval paths, classification |
| D3 Code | Application code, tests, packages, API contracts, dependency graph | Implementation truth, ownership, SOLID and boundary evidence |
| D4 Configuration | Feature flags, Helm values, model aliases, guardrails, OPA policies | Runtime behaviour, activation version, policy decisions |
| D5 Telemetry | Traces, metrics, logs, SLOs, alerts, incidents | Actual runtime behaviour and failure patterns |
| D6 Security | IAM, secrets, SIEM findings, scans, SBAC, OPA, audit events | Security posture, access decisions, threat evidence |
| D7 Quality | Unit, contract, integration, mutation, AI eval, scan evidence | Verification proof and regression safety |
| D8 Data | Schemas, migrations, metadata, lineage, vectors, RLS, retention | Data correctness, provenance, ownership, classification |
| D9 Enablement | Runbooks, SOPs, onboarding, developer guides, handoff packs | Human-operational knowledge and repeatability |
| D10 External | Vendor docs, standards, legal/regulatory updates, threat intel | External signals requiring review and possible ADR/change |
| D11 AI Artifacts | Prompts, system instructions, model aliases, evaluations, guardrails | AI behaviour, routing, safety, and evaluation provenance |
| D12 Workflow Decisions | Temporal histories, Flowable approvals, DMN decisions, CAB records | Process evidence, human accountability, exception decisions |

## 6. Source-to-Tier Master Registry

Every source must be registered before it is indexed, summarized, embedded, retrieved, or used by an AI agent. Registration is not administrative overhead; it is the control that prevents stale, conflicting, unclassified, or unauthorized knowledge from becoming part of the reasoning fabric.

| **Source** | **Tier** | **Content** | **Minimum Evidence** | **Retrieval Rule** |
| --- | --- | --- | --- | --- |
| Approved Git Repository | Tier 0 | Code, contracts, IaC, prompts, guardrails, policies, CLAUDE.md | Git commit, CODEOWNERS, signed tag, CI evidence | Default eligible after approval and classification |
| OpenKM / DMS | Tier 0 | Approved documents, records, source files, signed policies | Document ID, version, owner, hash, retention record | Eligible through metadata projection only |
| PostgreSQL Transactional Stores | Tier 0 | Application state, registry, audit references, metadata, lineage | Schema version, trace_id, row ownership, RLS policy | Eligible via approved views/projections only |
| Temporal / Flowable | Tier 0 | Machine workflow histories, human approvals, SLA, DMN decisions | Workflow ID, version, actor, decision, timestamp | Eligible for audit and process reasoning |
| Security and Identity Tools | Tier 0 | Access events, SIEM findings, vulnerabilities, policy results | Tool ID, finding ID, severity, owner, closure evidence | Restricted by classification and need-to-know |
| Observability Raw Stores | Tier 0 | Trace, metric, log references, SLO evidence | Trace ID, service, environment, timestamp | PII/secrets redaction mandatory |
| Obsidian Canonical Notes | Tier 1 | Developer-facing standards, ADR projections, runbooks, notes | Source link, MR approval, reviewer, version | Eligible when source-bound and current |
| LLM Wiki Curated Artifacts | Tier 1 | Human-reviewed summaries and reusable knowledge | Citations, reviewer, approval status, expiry | Eligible only if approved and not superseded |
| pgvector / LightRAG | Tier 2 | Chunks, embeddings, graph relations, semantic indexes | Chunk ID, source ID, embedding model, graph build | Derivative only; rebuild on source change |
| Redis / Runtime Cache | Tier 3 | Short-lived retrieval/cache acceleration | Cache key, TTL, source hash | Not eligible as authoritative source |

## 7. Metadata and Provenance Schema

The metadata envelope is mandatory for every source artifact and derivative artifact. v4.0 extends the v3.0 provenance model with explicit Enterprise Design Principles and SOLID enforcement fields so that retrieval, Auto-Learn, Auto-Heal, and Auto-Improve can reason about architecture impact, not only textual relevance.

| **Metadata Field** | **Purpose** | **Applies To** |
| --- | --- | --- |
| artifact_id | Unique immutable identifier for source or derivative artifact | All artifacts |
| source_tier | Tier 0/1/2/3 authority assignment | All artifacts |
| source_system | SCM, OpenKM, PostgreSQL, Temporal, Flowable, LLM Wiki, etc. | All artifacts |
| owner_role / owner_person | Accountable owner and responsible steward | All artifacts |
| version / commit / hash | Version, commit SHA, document version, content hash, or schema version | All artifacts |
| classification | Public, Internal, Confidential, Restricted | All artifacts |
| domain_code | D1-D12 domain assignment | All artifacts |
| reasoning_axis | Intent, Implementation, Behaviour, Evidence, Knowledge | All artifacts |
| valid_from / review_due / expiry | Lifecycle dates and staleness controls | All governed knowledge |
| source_citations | Pointers to primary evidence, line, section, ticket, commit, or record | All Tier 1/2 derivatives |
| verification_status | Draft, reviewed, approved, superseded, quarantined, retired | All retrieval-eligible artifacts |
| confidence_score | Authority, freshness, validation, relevance, conflict, and risk score | Retrieval outputs |
| principle_impact | Impacted 01A principles and expected effect: preserve/improve/weakens/unknown | All improvements and AI recommendations |
| solid_impact | SRP/OCP/LSP/ISP/DIP assessment where code/design is affected | Code/design/recommendations |
| architecture_boundary_impact | Bounded context, Clean Architecture, ports/adapters, MicroFunction boundary impact | Architecture, code, config, MicroFunctions |
| testability_impact | Required tests, fitness functions, deterministic evidence, regression gates | Changes and recommendations |
| security_posture_impact | Least privilege, SBAC, OPA, secrets, classification, logging, model route effect | Security-sensitive artifacts |
| observability_impact | Trace, metric, log, audit, SLO, evidence emission effect | Runtime-impacting artifacts |
| reversibility_impact | Rollback, compensation, forward-fix, retirement, re-index/rebuild path | Changes and improvements |
| avci_evidence_ref | Evidence pack linking owner, verification, classification, and improvement path | All production-ready artifacts |

## 8. Information Lifecycle Pipeline

| **Stage** | **Control Activity** | **Required Evidence** |
| --- | --- | --- |
| 1. Intake | Register source, owner, domain, classification, tier, and expected lifecycle. | Source registration record and owner approval. |
| 2. Classify | Assign sensitivity, domain, routing, retention, prompt eligibility, and ACL. | Classification result and handling rule. |
| 3. Verify | Validate source authenticity, version, currency, tests/scans/reviews, and authority. | Verification record, CI evidence, review evidence. |
| 4. Curate | Convert approved source into Obsidian/LLM Wiki artifact without weakening source meaning. | Reviewer approval, citations, source trace. |
| 5. Compile | Chunk, embed, graph-link, summarize, or index as derivative artifacts. | Chunk map, embedding model, graph build, source hash. |
| 6. Retrieve | Apply ACL, classification, relevance, freshness, conflict checks, and guardrail retrieval rail. | Evidence pack and retrieval decision log. |
| 7. Generate | Assemble prompt with approved context, route through LiteLLM, apply guardrails, produce answer/proposal. | Model alias, prompt version, guardrail results, token/route audit. |
| 8. Review / Act | Human approval, Harness/OPA/SBAC for tool actions, or reject/escalate. | Decision, approver, action evidence, risk result. |
| 9. Learn / Improve | Feed accepted results, incidents, defects, and lessons into governed backlog and knowledge updates. | Auto-Learn candidate, MR/CAB record, regression evidence. |
| 10. Retire / Rebuild | Supersede stale sources and rebuild derivatives; quarantine conflicts. | Supersedence notice, rebuild evidence, retention record. |

## 9. Classification, Access, and Model-Routing Rules

| **Classification** | **Retrieval Handling** | **Model Routing** | **Human Review Rule** |
| --- | --- | --- | --- |
| Public | May be indexed and retrieved broadly after source verification. | Approved cloud or private route. | Normal review for publication quality. |
| Internal | Eligible for internal retrieval with authenticated role-based access. | Approved cloud or private route subject to workspace controls. | Required for authoritative guidance and standards. |
| Confidential | Need-to-know retrieval only; redaction and citation controls required. | Private/on-prem route preferred; cloud route only by approved waiver and data handling review. | Required before serving high-impact answers or using in Auto-Learn. |
| Restricted | Default deny. Retrieval only through explicit policy, strong audit, and approved route. | Private/on-prem route only unless formal executive/security/legal waiver exists. | Mandatory human approval and evidence review. |

| **Classification-Aware Routing Rule**<br>AIRA does not rely on provider terms alone as a control. Data classification, prompt eligibility, redaction, retrieval filtering, LiteLLM routing, NeMo Guardrails, OPA policy, SBAC, audit, and human judgement are all required to determine whether information may be sent to a model. |
| --- |

## 10. Retrieval Routing and Evidence Assembly

Retrieval must assemble evidence, not merely search text. Each retrieval request must evaluate authority tier, classification, ACL, freshness, relevance, conflict state, principle impact, and model-route eligibility before context is used in a prompt or recommendation.

| **Retrieval Step** | **Control** | **Reject / Escalate When** |
| --- | --- | --- |
| Intent classification | Determine task type, domain, risk, and required evidence depth. | Intent is ambiguous, high-impact, or mismatched to requester authority. |
| Source selection | Prefer Tier 0 and approved Tier 1 sources; use Tier 2 only as derivative retrieval accelerator. | Only stale, superseded, draft, or uncited derivatives are available. |
| ACL and classification filter | Enforce user/agent role, SBAC, data classification, prompt eligibility, and route constraints. | User, agent, or model route is not authorized. |
| Evidence pack assembly | Include citations, source IDs, versions, confidence, and conflict notes. | Evidence cannot support the answer or conflicts are unresolved. |
| Principle impact check | Detect whether answer/proposal affects SOLID, boundaries, security, observability, testability, or reversibility. | Impact is weakens/unknown for high-risk change. |
| Guardrail retrieval rail | Validate safe and relevant retrieved context before prompt assembly. | Retrieval pack contains disallowed, conflicting, or unsafe context. |
| Audit and feedback | Record retrieval, model route, guardrail result, evidence pack, response, and feedback channel. | Audit pipeline is unavailable for controlled actions. |

## 11. Confidence, Freshness, and Trust Scoring

| **Score Component** | **Weight / Role** | **Positive Signal** | **Negative Signal** |
| --- | --- | --- | --- |
| Authority score | Primary authority measure | Tier 0 approved source or Tier 1 current curated artifact | Tier 2 derivative without source trace or Tier 3 cache |
| Freshness score | Staleness control | Within review cadence and source hash current | Expired, superseded, or dependent derivative not rebuilt |
| Validation score | Correctness evidence | Tests, scans, review, CAB/ADR approval, regression evidence | No verification record or failed gate |
| Retrieval relevance | Context fit | Directly answers intent and cites exact source section | Tangential match or weak semantic similarity |
| Classification risk | Safety weighting | Route and handling match data classification | Unauthorized route, over-broad prompt, missing redaction |
| Conflict score | Consistency check | No unresolved conflict with higher authority | Conflicts with Blueprint, AVCI, 01A, Security, or ADR |
| Principle preservation score | v4.0 extension | Preserves or improves SOLID, boundaries, testability, security, observability, reversibility | Weakens or unknown impact without waiver |

Low confidence does not always mean the answer is useless. It means the answer must be labelled, scoped, and routed to review. High-impact decisions require high authority, high validation, current sources, no unresolved conflicts, and positive principle-preservation evidence.

## 12. AI Artifact and Agent Memory Governance

| **Artifact Type** | **Governance Rule** | **Promotion Requirement** |
| --- | --- | --- |
| Prompt templates | Versioned in Git, classified, tested against golden datasets, reviewed for injection and boundary compliance. | MR review, guardrail tests, owner approval. |
| System instructions / CLAUDE.md / adapters | Generated from approved rule source and cannot weaken root rules. | CODEOWNERS, compliance hook, CI strict mode. |
| Model aliases and routes | Defined by LiteLLM/model registry, not hardcoded in application code. | Security review, classification mapping, budget/usage evidence. |
| Guardrail policies | Input, Retrieval, Execution, Output checkpoints required where applicable. | Adversarial tests, regression pack, approval. |
| Agent memory | No unclassified persistent memory. Memory items must have source, owner, expiry, classification, and review status. | Human review for durable memory; Restricted data blocked by default. |
| Evaluation datasets | Synthetic or approved non-sensitive data only; versioned and tied to acceptance criteria. | QA approval, reproducibility evidence, metric thresholds. |
| Auto-Learn candidates | Draft only until source-cited, reviewed, tested, and promoted. | Knowledge steward approval and MR/CAB path. |
| Auto-Heal / Auto-Improve proposals | Recommendations only until Harness/OPA/SBAC/human gates pass. | PR/MR, tests, architecture fitness, rollback plan. |

## 13. Obsidian, LLM Wiki, pgvector, and LightRAG Rules

| **Component** | **Role** | **Must Not Do** | **v4.0 Enforcement** |
| --- | --- | --- | --- |
| Obsidian | Canonical developer-facing notes, ADR projections, runbooks, diagrams, templates. | Become a dumping ground for unreviewed AI output or secrets. | YAML metadata, MR review, source links, classification, status tags. |
| LLM Wiki | Curated, human-reviewed reusable knowledge for AI and developer Q&A. | Serve draft, superseded, conflicting, or uncited content as authoritative. | Citation by default, review status, expiry, conflict quarantine. |
| PostgreSQL + pgvector | Retrieval metadata, chunks, embeddings, lineage, ACL projections. | Become the original document source or bypass OpenKM/Git/PostgreSQL authority. | Source hash, embedding model, chunk lineage, rebuild pipeline. |
| LightRAG | Graph-aware relationship discovery and evidence retrieval. | Override Tier 0 authority or infer unsupported relationships as facts. | Graph edge provenance, confidence, rebuild on source change. |
| Redis/Valkey | Short-lived acceleration for cache and runtime state. | Become authoritative memory or evidence store. | TTL, source hash, safe degradation, no correctness dependency. |

## 14. Auto-Learn, Auto-Heal, and Auto-Improve Feedback Loops

| **Improvement Constraint**<br>Auto-Heal, Auto-Learn, and Auto-Improve must not only fix, learn, or optimize. They must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

| **Capability** | **Permitted Information Use** | **Acceptance Gate** |
| --- | --- | --- |
| Auto-Heal | May use telemetry, incident records, code references, configuration, runbooks, tests, and prior remediation evidence to draft a minimal fix or rollback recommendation. | Evidence-based root cause, bounded scope, tests pass, architecture fitness passes, rollback/compensation plan, human approval. |
| Auto-Learn | May convert resolved incidents, approved PRs, postmortems, test failures, and review feedback into candidate knowledge artifacts. | Source citations, no conflict with higher authority, classification-safe, knowledge steward review, expiry/review date. |
| Auto-Improve | May propose refactoring, pattern improvement, guardrail tuning, policy improvement, or technology-stack update. | Measurable improvement, ADR/TDL if material, regression evidence, principle-impact assessment, CAB/Architecture approval when required. |

## 15. Architecture Fitness Functions for Information Governance

| **Fitness Function** | **Expected Control** | **Enforcement Point** |
| --- | --- | --- |
| Source authority check | No retrieval-eligible derivative exists without Tier 0 or approved Tier 1 source reference. | CI / indexing pipeline |
| Classification eligibility check | Confidential/Restricted artifacts cannot be routed to unauthorized model routes or exposed in logs/prompts. | OPA / LiteLLM / retrieval service |
| Freshness and rebuild check | When Tier 0 source hash changes, dependent chunks, embeddings, graph edges, summaries, and caches are marked stale and rebuilt. | Temporal re-index workflow |
| Conflict quarantine check | Conflicting sources are flagged and excluded from authoritative answers until reconciled. | Knowledge governance service |
| Citation completeness check | AI answers from knowledge base include source ID, version, section, confidence, and evidence reference. | Output rail / response validator |
| Principle-impact check | Auto-Heal/Improve proposals identify SOLID, boundary, testability, security, observability, and reversibility impact. | PR/MR and Harness gate |
| Secret/PII prevention check | No secrets, raw PII, credentials, or restricted customer data enter prompts, embeddings, examples, or test fixtures. | Pre-commit, DLP, guardrails, CI |
| Memory expiry check | Agent memory and curated knowledge have review_due/expiry and are retired or revalidated on cadence. | Scheduled governance job |

## 16. Repository, Vault, and DMS Taxonomy

| **Area** | **Recommended Path / Structure** | **Handling Rule** |
| --- | --- | --- |
| Official DOCX/PDF standards | OpenKM Tier-0 / AIRA / Engineering Standards / <doc-id> / <version> | Approved source of record. Hash, owner, classification, and approval retained. |
| Obsidian canonical notes | /aira-vault/01-Standards, /02-Architecture, /03-ADRs, /04-Runbooks, /05-Knowledge, /99-Superseded | Git-managed, front matter mandatory, no secrets or raw PII. |
| LLM Wiki artifacts | /llm-wiki/approved, /candidate, /quarantine, /superseded | Only approved path is default retrieval-eligible. |
| Prompt and guardrail repositories | /ai/prompts, /ai/guardrails, /ai/models, /ai/evaluations | CODEOWNERS, test evidence, classification, LiteLLM route mapping. |
| Retrieval metadata | aira_rag schema: source, chunk, embedding, graph_edge, index_job, retrieval_audit | Source hash, lineage, ACL, model version, rebuild evidence required. |
| Audit evidence | AIRA audit store and OpenKM evidence bundles | Append-only where possible; trace_id and evidence_ref mandatory. |

## 17. RACI and Operating Responsibilities

| **Activity** | **Solutions Architect** | **Data Governance** | **Knowledge Steward** | **Security** | **DevSecOps** | **QA** | **Developer** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Approve information architecture and source tiers | A | R | C | C | C | C | I |
| Register new information source | C | A/R | R | C | C | I | I |
| Classify source and retrieval handling | C | R | R | A/R | C | I | I |
| Curate LLM Wiki / Obsidian artifact | C | C | A/R | C | I | C | R |
| Operate indexing/rebuild pipeline | I | C | C | C | A/R | C | I |
| Define retrieval quality and evaluation tests | C | C | R | C | C | A/R | R |
| Approve Auto-Learn promotion | A | R | R | C | C | C | I |
| Resolve source conflict | A/R | R | R | C | C | C | C |
| Audit evidence review | A | R | R | R | C | R | I |

## 18. Implementation Roadmap and Acceptance Criteria

| **Phase** | **Focus** | **Exit Criteria** |
| --- | --- | --- |
| P1 - Metadata baseline | Implement v4.0 metadata fields, source registry, classification schema, and source-to-tier controls. | All active sources registered with owner, tier, classification, domain, and review date. |
| P2 - Retrieval governance | Implement ACL filtering, evidence pack assembly, source citation, freshness, conflict, and confidence scoring. | Queries return cited, classified, confidence-scored evidence packs; stale/conflicting items quarantined. |
| P3 - Knowledge curation | Align Obsidian and LLM Wiki workflows with review, approval, expiry, and source provenance. | Only approved/current artifacts are default retrieval-eligible. |
| P4 - AI memory and guardrails | Apply prompt, guardrail, model-route, agent-memory, and retrieval-rail governance. | No unclassified memory; prompt/model/guardrail changes require tests and approval. |
| P5 - Improvement loop | Connect incidents, PRs, test failures, and postmortems to Auto-Learn/Improve candidates. | Candidates include principle impact, tests, review, and approval before promotion. |
| P6 - Fitness automation | Implement CI/indexing/runtime checks for source authority, classification, citation, freshness, conflict, and principle preservation. | Fitness results appear in PR/MR, CI, and retrieval audit evidence. |

## 19. AVCI Compliance Summary

| **AVCI Property** | **v4.0 Evidence** |
| --- | --- |
| Attributable | Every source, note, wiki artifact, chunk, embedding, graph edge, prompt, guardrail, model alias, retrieval pack, and AI output has owner, source, version, and evidence reference. |
| Verifiable | Retrieval and knowledge outputs are verified by source authority, citations, review status, freshness, tests, guardrails, confidence scores, and audit trails. |
| Classifiable | All artifacts carry classification, domain, tier, ACL, prompt eligibility, model-routing rule, retention, and handling requirements. |
| Improvable | Feedback, incidents, defects, test failures, review outcomes, and operational signals enter controlled Auto-Learn/Auto-Improve loops with human review and regression evidence. |
| 01A Principle Alignment | Information governance preserves SOLID, Clean Architecture, DDD boundaries, ports/adapters, determinism, fail-safe behaviour, human accountability, least privilege/SBAC, observability, policy-as-code, testability, secure-by-design posture, resilience, reversibility, and AVCI. |
