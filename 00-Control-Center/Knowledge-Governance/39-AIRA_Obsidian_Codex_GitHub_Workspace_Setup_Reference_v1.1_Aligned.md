---
document_id: "AIRA-DOC-039"
title: "AIRA Obsidian Codex GitHub Workspace Setup Reference"
version: "v1.1"
status: "aligned"
source_file: "39-AIRA_Obsidian_Codex_GitHub_Workspace_Setup_Reference_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "00-Control-Center/Knowledge-Governance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - workspace-setup
  - codex
  - github
  - governance
---

# AIRA Obsidian Codex GitHub Workspace Setup Reference

**AIRA**

AI-Native Enterprise Platform

**AIRA Obsidian, Codex, and GitHub Workspace Setup Reference**

_Workspace Setup | Obsidian Vault | GitHub Repository | Codex/AI Assistant Alignment | Golden Source_

**v1.1 - Promoted Provisional Workspace Reference and Pack 03 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-039** |
| **Document Title** | **AIRA Obsidian, Codex, and GitHub Workspace Setup Reference** |
| **Document Version** | **v1.1 - Promoted Provisional Workspace Reference and Pack 03 v1.2 Alignment Update** |
| **Supersedes** | **39-AIRA_Obsidian_Codex_GitHub_Workspace_Setup_Reference_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Workspace setup reference** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Reference guide for setting up Obsidian, Codex/AI assistants, GitHub, LLM Wiki, and local development workspaces consistently.

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

Promoted provisional document 39 to an aligned Pack 03 v1.2 workspace-setup reference pending master-register approval.

Aligned setup steps with Java 25 LTS devcontainers, Gradle toolchains, CI runners, and backend templates.

Clarified source authority: GitHub for code/config, Obsidian for curated knowledge, LLM Wiki for retrieval, GitNexus for read-only code intelligence, OpenKM for approved records.

Added suffix-numbered Pack 03 documents to the Obsidian upload and folder-organization guidance.

Reinforced no unmanaged plugins, no personal AI accounts for AIRA work, no local production data, and no uncontrolled source copies.

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

**Executive recommendation**

**Yes — this is feasible and strongly aligned with AIRA v3.0**, but it must be implemented as a **governed knowledge control plane**, not as a simple shared Obsidian folder or ad hoc AI knowledge upload.

The recommended AIRA position is:

**Obsidian becomes the Git-managed canonical working knowledge vault. LLM Wiki becomes the curated AI retrieval layer. OpenKM / approved document repository / Git remain the Tier-0 source of record. ChatGPT Business, Codex, Claude Code, and other AI assistants consume the same governed evidence through controlled adapters, not through separate unmanaged rulebooks.**

This aligns directly with the AIRA Information Nervous System, which defines the knowledge fabric as connecting policies, requirements, source code, configuration, runtime behaviour, security evidence, quality evidence, data semantics, enablement knowledge, external signals, AI artifacts, and workflow decisions.

## **1. Feasibility verdict**

**Recommended decision: Proceed.**

The model is feasible because AIRA already has the required governance foundation:

| **Area** | **Readiness** |
| --- | --- |
| Knowledge governance | Strong. AIRA already defines Obsidian and LLM Wiki as governed systems, not unmanaged file dumps. |
| Retrieval architecture | Strong. AIRA already defines source tiers, metadata, provenance, classification, confidence scoring, and AI memory governance. |
| AI tool governance | Strong. CLAUDE.md is already defined as the human-readable Golden Source for repository behavior and AI-assisted development. |
| DevSecOps enforcement | Strong. Repository rules, hooks, CI gates, CODEOWNERS, OPA, Harness, and evidence packs are already part of the control model. |
| Team usage model | Strong. The Skills Framework already supports SBAC, trust scoring, human accountability, and AI-assisted execution boundaries. |
| Tool integration | Feasible, but must be adapter-based. ChatGPT Business, Codex, and Claude Code should not each maintain their own separate knowledge rules. |

The main correction is this: **Obsidian should not be the only official source of truth for signed standards.** For audit defensibility, the approved DOCX/PDF or controlled Markdown source should remain in **OpenKM / approved DMS / Git / official repository**, while Obsidian holds the canonical working projection and LLM Wiki holds curated retrieval artifacts.

## **2. Recommended target architecture**

**AIRA Governed Knowledge Architecture**

flowchart LR

T0[Tier 0: Official Sources<br/>OpenKM / Git / Approved DOCX-PDF / ADRs / Source Code / Evidence Stores]

T1[Tier 1: Git-Managed Obsidian Vault<br/>Markdown projections, ADRs, runbooks, standards, diagrams]

T2[Tier 2: LLM Wiki Curated Knowledge<br/>Human-reviewed, citation-ready artifacts]

T3[Tier 3: Retrieval Indexes<br/>pgvector, LightRAG, semantic index, graph edges]

RET[Governed Retrieval Gateway<br/>ACL + SBAC + classification + freshness + conflict check]

AI[AI Assistants<br/>ChatGPT Business, Codex, Claude Code, IDE Assistants]

GATE[Execution / Review Gates<br/>CLAUDE.md, AGENTS.md, CI, OPA, Harness, CODEOWNERS]

EVD[Evidence Store<br/>Audit trail, retrieval logs, PR evidence, model/tool usage]

T0 --> T1

T0 --> T2

T1 --> T2

T2 --> T3

T0 --> T3

T3 --> RET

RET --> AI

AI --> GATE

GATE --> EVD

EVD --> T2

This is consistent with the AIRA Knowledge Governance Standard, which defines L0 official documents as authoritative, Git-managed Obsidian as authoritative when linked to approved sources, LLM Wiki as curated derivative knowledge, pgvector/LightRAG/search indexes as derivative, and caches as non-authoritative.

## **3. Core recommendation: one knowledge baseline, many controlled adapters**

AIRA should implement a **single governed knowledge baseline** with multiple controlled consumption paths:

| **Consumer** | **How it should consume AIRA knowledge** | **Control** |
| --- | --- | --- |
| ChatGPT Business | Shared AIRA project or approved connector/app to LLM Wiki / retrieval gateway | Workspace controls, classification policy, citation requirement |
| Codex | Repository context, AGENTS.md, CLAUDE.md-derived rules, issue/PR evidence templates | GitHub/GitLab controls, CODEOWNERS, CI gates |
| Claude Code | CLAUDE.md hierarchy, managed settings, approved MCP connector if needed | Org-managed instructions, read-only retrieval, no unsafe tool action |
| IDE assistants | Generated IDE rule files from CLAUDE.md | Same rule source, no weaker local copy |
| CI/CD | Machine-readable compiled rules from CLAUDE.md | Pre-commit, CI strict mode, OPA, SAST/SCA, ArchUnit |
| Human developers | Obsidian vault, LLM Wiki Q&A, onboarding checklists | Signed acknowledgement, SBAC, PR AVCI summary |

The CLAUDE.md Reference already supports this model by requiring tool-specific adapters such as AGENTS.md, IDE rules, Codex instructions, and CI policy bundles to be generated from the canonical CLAUDE.md source and not weaken it.

## **4. Tool-specific implementation guidance**

**ChatGPT Business**

Use ChatGPT Business for architecture review, document synthesis, code review assistance, requirements analysis, testing strategy, and controlled troubleshooting. OpenAI states that ChatGPT Business workspace data is not used to train OpenAI models, and Business workspaces can include standard ChatGPT seats, Codex seats, or a mix of both. (OpenAI Help Center)

For AIRA, ChatGPT Business should access AIRA knowledge through:

1. **Shared AIRA project** for official working context.

2. **Approved connector/app** to LLM Wiki or a governed retrieval service.

3. **Prompt baseline** requiring source citation, classification check, and AVCI summary.

4. **No manual copy-paste of Restricted data.**

5. **No personal accounts or unmanaged plugins.**

ChatGPT Projects inherit workspace-level tool controls, data controls, encryption, access controls, and audit logging, which makes them suitable for governed team usage when configured correctly. (OpenAI Help Center) Apps/connectors can bring external tools and data into ChatGPT so it can search and reference information from approved data sources. (OpenAI Help Center)

**Codex**

Use Codex as a governed coding assistant, not as an autonomous developer. OpenAI describes Codex as an AI agent that helps write, review, and ship code, and Codex can be governed through workspace controls, RBAC, plugins/app controls, and compliance logs. (OpenAI Help Center)

For AIRA, Codex must always be bounded by:

- CLAUDE.md-derived AGENTS.md

- repository-local rules

- issue/ADR context

- CODEOWNERS

- CI strict mode

- PR AVCI summary

- no direct production credentials

- no direct model-provider SDK calls

- no bypass of tests, architecture checks, or security gates

**Claude Code**

Claude Code is suitable for AIRA codebase analysis, refactoring proposals, test generation, and repository-aware development because Anthropic describes it as an agentic coding tool that reads the codebase, edits files, runs commands, and integrates with terminal and IDE workflows. (Claude API Docs)

For AIRA, Claude Code should use:

- root and directory-level CLAUDE.md

- organization-managed claudeMd instructions where available

- controlled MCP connector only if needed

- read-only retrieval access by default

- no production-impacting command execution outside Harness/SBAC/OPA

Anthropic’s Claude Code settings support organization-managed CLAUDE.md-style instructions, which is directly aligned with the AIRA CLAUDE.md hierarchy. (Claude API Docs) If MCP/custom connectors are used, they must be treated as high-risk integration points because Anthropic notes that connectors can access or potentially modify connected data based on granted permissions, and recommends trusted servers, careful permission review, limited scopes, and prompt-injection awareness. (Claude Help Center)

## **5. Governance controls required**

### **5.1 Source authority controls**

AIRA should enforce this authority hierarchy:

| **Tier** | **Source** | **Authority** |
| --- | --- | --- |
| Tier 0 | OpenKM / DMS / Git / approved DOCX-PDF / ADRs / source code / evidence stores | Authoritative |
| Tier 1 | Git-managed Obsidian Markdown projections | Authoritative only when linked to Tier 0 or approved directly |
| Tier 2 | LLM Wiki curated artifacts | AI retrieval layer, not source of truth |
| Tier 3 | pgvector, LightRAG, search indexes, graph edges | Derivative only |
| Tier 4 | AI output / chat response / draft | Not authoritative until reviewed and promoted |

This prevents the common failure where AI-generated summaries become “truth” without formal approval.

### **5.2 Required metadata for every knowledge artifact**

Every Obsidian note, LLM Wiki artifact, prompt, guardrail, model alias, runbook, code pattern, or decision note should include:

- document_id

- title

- version

- status

- owner

- classification

- source_tier

- source_path

- source_hash

- approved_by

- approval_date

- review_date

- supersedes

- superseded_by

- retrieval_eligible

- model_route_allowed

- domains

- bounded_context

- evidence_ref

- avci_status

- principle_impact

- conflict_status

This is necessary because AIRA requires knowledge outputs to be attributable, verifiable, classifiable, and improvable.

### **5.3 Retrieval controls**

LLM Wiki retrieval must enforce:

| **Control** | **Required behavior** |
| --- | --- |
| Approval filter | Only APPROVED and CURRENT artifacts are default retrievable |
| Classification filter | User/agent must have clearance and SBAC skill |
| Freshness check | Superseded or stale artifacts are quarantined |
| Conflict detection | Conflicting documents are surfaced, not hidden |
| Citation requirement | Every answer includes document ID, version, section, and confidence |
| Model route check | Confidential/Restricted content must follow approved route |
| Audit trail | Record user, query, retrieved sources, model, confidence, and output |

The AIRA Knowledge Governance Standard already states that LLM Wiki should retrieve only current, approved, classification-eligible knowledge with citations, confidence, and evidence references.

## **6. Recommended team usage model**

**Daily workflow**

sequenceDiagram

autonumber

participant DEV as Developer / Architect

participant AI as ChatGPT / Codex / Claude Code

participant RET as Governed Retrieval Gateway

participant WIKI as LLM Wiki

participant OBS as Obsidian Vault

participant GIT as Git Repository

participant CI as CI / Policy Gates

participant REV as Human Reviewer

DEV->>AI: Ask for design/code/test/review help

AI->>RET: Request AIRA baseline evidence

RET->>WIKI: Retrieve approved/current/classification-eligible artifacts

WIKI->>OBS: Trace to canonical Obsidian notes

OBS->>RET: Return source metadata and citations

RET->>AI: Evidence pack with rules, citations, confidence

AI->>DEV: Draft recommendation/code/tests with AVCI summary

DEV->>GIT: Commit via governed branch

GIT->>CI: Run hooks, tests, scans, OPA, architecture checks

CI->>REV: Evidence pack and PR summary

REV->>GIT: Approve, request changes, or reject

**Required behavior by role**

| **Role** | **Required behavior** |
| --- | --- |
| Solutions Architect | Validate alignment with Engineering Blueprint, AVCI, SOLID, DDD, and ADRs |
| Developer | Use AI only with repository rules loaded; include AVCI and AI involvement in PR |
| QA/SDET | Validate deterministic tests, AI evals, regression evidence, mutation/coverage gates |
| DevSecOps | Enforce CI, policy-as-code, evidence pack, SBOM, secrets scanning, deployment gates |
| Security | Approve classification, model routing, SBAC/OPA, secrets, and restricted workflows |
| Knowledge Steward | Curate Obsidian/LLM Wiki, quarantine stale/conflicting items, manage promotion |
| Internal Audit | Review evidence lineage, access logs, AI usage, exception handling |

The Skills Framework supports this because it treats skills as versioned control artifacts and requires humans, AI assistants, and agents to operate only within active skills, trust score, classification scope, OPA decision, Harness path, and AVCI evidence.

## **7. Implementation roadmap**

**Phase 1 — Establish Tier-0 and Obsidian baseline**

**Objective:** Make official AIRA knowledge controlled and traceable.

Actions:

- Store approved DOCX/PDF standards in OpenKM / DMS / official Git repository.

- Convert approved documents into Obsidian Markdown projections.

- Add mandatory YAML front matter.

- Create Obsidian folders:

  - 01-Standards

  - 02-Architecture

  - 03-ADRs-and-TDLs

  - 04-Runbooks-and-SOPs

  - 05-Developer-Knowledge

  - 06-AI-Artifacts

  - 90-Candidates

  - 99-Superseded

- Require MR review for every official note update.

Exit criteria:

- All active AIRA documents have document ID, version, owner, classification, source hash, and review status.

- Superseded documents are moved out of default retrieval.

**Phase 2 — Build LLM Wiki curated layer**

**Objective:** Make AI retrieval safe and evidence-based.

Actions:

- Index only approved/current Obsidian and Tier-0 sources.

- Create /approved, /candidate, /quarantine, and /superseded zones.

- Enforce citations, source hash, version, and confidence score.

- Add stale/conflict quarantine rules.

- Create retrieval test questions for architecture, security, coding, testing, MicroFunctions, and DevSecOps.

Exit criteria:

- AI answers return source IDs, versions, confidence, and classification.

- Draft/candidate knowledge is excluded unless explicitly requested.

**Phase 3 — Implement AI assistant adapters**

**Objective:** Make ChatGPT Business, Codex, Claude Code, and IDE assistants use one rule baseline.

Actions:

- Generate CLAUDE.md from approved repository rule templates.

- Generate AGENTS.md for Codex-compatible and tool-neutral usage.

- Generate IDE rule files from the same template registry.

- Configure Claude Code organization-managed instructions where available.

- Configure ChatGPT Business shared project and approved connector/app to LLM Wiki.

- Prohibit unmanaged personal AI accounts for AIRA artifacts.

Exit criteria:

- No separate AI rulebooks.

- All tool adapters trace to the same CLAUDE.md source version.

- AI usage is recorded in PR/MR evidence.

**Phase 4 — Enforce repository and CI gates**

**Objective:** Make compliance executable.

Actions:

- Add .claude-md.lock

- Add pre-commit hooks

- Add CODEOWNERS

- Add PR AVCI template

- Add CI strict mode

- Add ArchUnit / dependency checks

- Add Semgrep / SAST / secret scanning

- Add OPA / Conftest

- Add test evidence and mutation gates

- Add AI involvement declaration

Exit criteria:

- Violations fail locally before commit.

- Violations fail again in CI if bypassed.

- PRs cannot merge without evidence.

**Phase 5 — Add governed improvement loop**

**Objective:** Convert lessons learned into controlled knowledge, not uncontrolled AI memory.

Actions:

- Feed incidents, failed tests, PR feedback, audit findings, and troubleshooting records into 90-Candidates.

- Require human review before LLM Wiki promotion.

- Require regression evidence and principle-impact assessment.

- Supersede old knowledge rather than overwrite it silently.

Exit criteria:

- Auto-Learn candidates are source-cited, classified, reviewed, tested, and approved before becoming retrievable.

- AI cannot self-promote knowledge.

## **8. Key risks and mitigations**

| **Risk** | **Impact** | **Mitigation** |
| --- | --- | --- |
| Obsidian becomes an unmanaged dump | AI retrieves stale or conflicting knowledge | Git-managed vault, mandatory metadata, approval workflow |
| LLM Wiki becomes “truth” | Derivative summaries override approved standards | Tier-0/Tier-1 authority rule; citations required |
| ChatGPT / Claude / Codex use different rules | Inconsistent architecture and coding behavior | Generate adapters from CLAUDE.md; no parallel rulebooks |
| Confidential/Restricted data leaks into cloud AI | Security and compliance exposure | Classification-aware routing; no Restricted data in cloud prompts; on-prem route where required |
| AI invents endpoints, schemas, or patterns | Contract drift and architecture entropy | Contract registry, API standard, CI contract tests |
| AI-generated fixes weaken SOLID or security | Hidden technical debt | Architecture fitness functions, CODEOWNERS, human review |
| MCP/connectors over-permissioned | Data modification or prompt injection risk | Read-only connectors by default, trusted MCP only, least privilege, audit |
| Stale documents influence decisions | Wrong implementation baseline | Superseded quarantine, freshness score, conflict register |
| Developers bypass AI governance | Shadow AI and untraceable outputs | Named seats, no personal AI accounts, onboarding acknowledgement, monitoring |

## **9. Recommended policy position for AIRA v3.0**

Adopt the following as the executive policy statement:

**All AI-assisted AIRA work must be grounded in the approved AIRA knowledge baseline. Official standards remain in Tier-0 repositories. Obsidian provides the Git-managed canonical working vault. LLM Wiki provides curated, citation-ready retrieval. ChatGPT Business, Codex, Claude Code, and other AI assistants may assist only through governed adapters, classification-aware retrieval, CLAUDE.md-derived rules, SBAC/OPA controls, human review, and AVCI evidence. No AI output, learned pattern, code change, prompt, guardrail, configuration, or remediation becomes authoritative until reviewed, tested, classified, evidenced, and promoted through the approved workflow.**

## **10. Final recommendation**

Implement this as a **mandatory AIRA Knowledge Control Plane** before broad team AI-assisted development.

Priority order:

1. **Approve the knowledge authority hierarchy.**

2. **Create the Git-managed Obsidian vault.**

3. **Curate and index only approved/current artifacts in LLM Wiki.**

4. **Generate ChatGPT/Codex/Claude Code adapters from CLAUDE.md.**

5. **Enforce retrieval, classification, citation, and evidence gates.**

6. **Integrate PR/MR AVCI summaries and AI involvement declarations.**

7. **Run the first pilot using one repository and one controlled development scenario.**

8. **Scale only after retrieval quality, CI gates, and human review workflow are proven.**

This will give AIRA a centralized, governed, AI-ready knowledge architecture that supports speed without sacrificing architecture discipline, security, auditability, reproducibility, and human accountability.

![[attachments/39-AIRA_Obsidian_Codex_GitHub_Workspace_Setup_Reference_v1.1_Aligned/image31.png]]

![[attachments/39-AIRA_Obsidian_Codex_GitHub_Workspace_Setup_Reference_v1.1_Aligned/image32.png]]

## **Pack 03 v1.1 Alignment Control Addendum**

This addendum records the alignment controls applied to Pack 03 so the Technology, Environment, and Knowledge source pack remains consistent with the current AIRA governance baseline, Technology Stack v9.1, and the source-pack naming discipline. It also preserves open sequencing issues for master revision-control resolution rather than silently renumbering established source artifacts without approval.

| Area | v1.0 Issue | v1.1 Alignment Applied | Status |
| --- | --- | --- | --- |
| Classification | Mixed labels appeared across source documents, including INTERNAL CONFIDENTIAL and INTERNAL CONFIDENTIAL. | Standardized displayed classification language to INTERNAL CONFIDENTIAL across the packed document. | Closed |
| Technology Stack Reference | Several Pack 03 companion references still pointed to Technology Stack v9.1 while the pack contains Technology Stack v9.1. | Updated stale Technology Stack companion references and prompt source lists to Technology Stack v9.1 without changing legitimate v8.0 supersedence/history wording. | Closed |
| Source Filename Suffixes | Some packed source filenames carried non-canonical formatting suffixes such as _Formatted and _Regenerated_Improved_Format. | Standardized displayed filenames for the MVP Backlog pack and Data Classification/Retention register by removing formatting-only suffixes. | Closed |
| Informal Source Filenames | Three catch-all documents used informal names: AIRA - Chatgpt Business Instructions, AIRA-Login Function Prompt, and B. Obsidian + Codex + Github. | Standardized displayed names to numbered AIRA-style source filenames 37, 38, and 39 with ChatGPT and GitHub capitalization. | Closed |
| Duplicate Numbering | Pack 03 contains duplicate source numbers 19, 21, and 26, plus cross-pack overlaps with 22, 23, and 25. | Retained content for traceability, documented the conflict, and flagged the items for master source-index and revision-control matrix resolution. | Open |
| Catch-All Classification | Pack 03 includes several catch-all documents that require final classification review according to the packing readme. | Documented as an open master packing issue; Pack 03 remains usable as an aligned interim pack. | Open |

### **Recommended Canonical Sequencing Review**

| Current Displayed Source | Issue Type | Recommended Treatment | Disposition |
| --- | --- | --- | --- |
| 19A-AIRA_Knowledge_Fabric_Reset_and_Governed_Source_Alignment_Standard_v1.1_Aligned.docx | Duplicate/cross-pack number 19 | Confirm whether to retain as Document 19A, renumber to the next approved knowledge-governance slot, or merge with Document 25 Knowledge Access / Golden Source Standard. | Master review required |
| 19B-AIRA_Sprint_0_and_Foundation_Build_Execution_Plan_v1.1_Aligned.docx | Duplicate/cross-pack number 19 | Assign a unique execution/readiness number or place under a Sprint 0 appendix pack. | Master review required |
| 21A-AIRA_Governed_Knowledge_Control_Plane_Obsidian_Codex_GitHub_Standard_v1.1_Aligned.docx | Duplicate number 21 | Retain as knowledge control-plane standard if unique number is approved; otherwise merge with Knowledge Governance / Golden Source standards. | Master review required |
| 21B-AIRA_Runtime_Platform_Bootstrap_Runbook_v1.1_Aligned.docx | Duplicate number 21 | Assign unique platform-bootstrap/runbook number or move to Environment/Operations series. | Master review required |
| 22A-AIRA_Prompt_Guardrail_Model_Alias_and_AI_Evaluation_Registry_v1.1_Aligned.docx | Cross-pack overlap with Pack 04 Document 22 | Assign unique AI governance registry number or merge into AI artifact registry standard. | Master review required |
| 23A-AIRA_Login_PoC1_Developer_Source_Code_Generation_Standard_v1.1_Aligned.docx | Cross-pack overlap with Pack 04 Document 23 | Retain as PoC implementation standard but assign unique PoC/readiness number if master list requires uniqueness. | Master review required |
| 25A-AIRA_MVP_Backlog_Module_Readiness_and_Acceptance_Criteria_Pack_v1.1_Aligned.docx | Cross-pack overlap with Pack 02 Document 25 | Retain as MVP readiness pack but assign unique backlog/readiness number if master list requires uniqueness. | Master review required |
| 26A-AIRA_Data_Classification_Retention_and_Evidence_Register_v1.1_Aligned.docx | Duplicate number 26 | Retain if approved as the canonical register; otherwise renumber into data governance register series. | Master review required |
| 26B-AIRA_Governed_Knowledge_Automation_Pipeline_Standard_v1.1_Aligned.docx | Duplicate number 26 | Assign unique knowledge automation number or merge with governed knowledge control-plane standard. | Master review required |
| 37/38/39 informal-source conversions | Previously unnumbered / informal names | Use as provisional canonical names until the source index is updated. | Provisional |

### **AVCI Alignment Confirmation**

| AVCI Property | Pack 03 v1.1 Evidence |
| --- | --- |
| Attributable | Each alignment action is captured in this addendum and in the separate Pack 03 alignment review/change log. |
| Verifiable | Stale Technology Stack v9.1 references, mixed classification labels, formatting-only filename suffixes, and informal source filenames were searched and corrected. |
| Classifiable | The pack-level and document-control labels are normalized to INTERNAL CONFIDENTIAL; catch-all classification review remains explicitly open. |
| Improvable | Duplicate numbering and cross-pack overlaps are preserved as open revision-control items for the master source index instead of being silently changed. |
