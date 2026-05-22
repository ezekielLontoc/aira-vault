---
document_id: "AIRA-DOC-021A"
title: "AIRA Governed Knowledge Control Plane Obsidian Codex GitHub Standard"
version: "v1.1"
status: "aligned"
source_file: "21A-AIRA_Governed_Knowledge_Control_Plane_Obsidian_Codex_GitHub_Standard_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "00-Control-Center/Knowledge-Governance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - knowledge-governance
---

# AIRA Governed Knowledge Control Plane Obsidian Codex GitHub Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Governed Knowledge Control Plane - Obsidian, Codex, and GitHub Standard**

_Central Knowledge | AI Assistant Context | GitHub Traceability | Golden Source Synchronization_

**v1.1 - Canonical 21A Numbering and Pack 03 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-021A** |
| **Document Title** | **AIRA Governed Knowledge Control Plane - Obsidian, Codex, and GitHub Standard** |
| **Document Version** | **v1.1 - Canonical 21A Numbering and Pack 03 v1.2 Alignment Update** |
| **Supersedes** | **21-AIRA_Governed_Knowledge_Control_Plane_Obsidian_Codex_GitHub_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Knowledge control-plane companion** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines how Obsidian, Codex/AI assistants, GitHub, LLM Wiki, and Golden Source are connected under governed source authority.

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

Renumbered from duplicate Document 21 to 21A to avoid collision with the runtime-platform runbook.

Aligned AI assistant knowledge access with ChatGPT Business workspace controls, Pack 02 CLAUDE.md v3.1, and Pack 03 v1.2 source numbering.

Added Java 25 LTS as mandatory runtime context for backend code generation, review prompts, devcontainer guidance, and CI examples.

Clarified GitHub as Tier 0 for code and configuration, Obsidian as curated projection, and LLM Wiki as retrieval layer.

Reinforced that Codex/Claude/ChatGPT may use governed context but cannot bypass PR, CI, security, or human approval gates.

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

**
AIRA Governed Knowledge Control Plane for Obsidian, Codex, and GitHub**

Obsidian Vault · Codex Governance · GitHub Repository Controls · LLM Wiki Retrieval · AVCI Evidence

v1.0 - Initial Governance Baseline · May 2026

| **Mandatory Knowledge Control Principle**<br>AIRA knowledge must be governed before it is used by humans, AI assistants, coding agents, retrieval systems, or repository automation. Obsidian, LLM Wiki, Codex, ChatGPT, Claude Code, and GitHub may accelerate engineering only when their use preserves source authority, classification, SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-021 |
| Document Title | AIRA Governed Knowledge Control Plane for Obsidian, Codex, and GitHub |
| Version | v1.0 - Initial Governance Baseline |
| Supersedes | New standard; formalizes and extends the attached draft B. Obsidian + Codex + GitHub.docx |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / AI GOVERNANCE / DEVSECOPS ADOPTION |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | AI Knowledge Governance Lead; DevSecOps Lead; Software Development Lead; Security Administrator; QA Lead; Knowledge Steward |
| Audience | Solutions Architects, Developers, DevSecOps, QA/SDET, Security, DBA, SRE, AI Engineers, Knowledge Stewards, Internal Audit |
| Primary Decision Inputs | ADR-AIRA-2026-001; 01 AVCI Engineering Standard v3.1; 05 Information Nervous System v4.1; 06 CLAUDE.md Reference v3.1; 13 Knowledge Governance v2.0; 18 Repository Bootstrap Guide v1.0 |
| Compliance Scope | AVCI; SOLID; ISO/IEC 27001:2022; CIS Controls v8.1; NIST SSDF; NIST AI RMF; SOC 2; SLSA Build Level 3 target; BSP IT Risk expectations |
| Evidence Path | OpenKM Tier-0 / AIRA / Engineering Standards / Knowledge-Control-Plane / v1.0/ |

## Table of Contents

## 1. Executive Summary

## 2. v1.0 Inclusion Decision and Change Summary

## 3. Purpose, Scope, and Authority

## 4. Non-Negotiable Operating Principles

## 5. Target Architecture: AIRA Knowledge Control Plane

## 6. Source Authority and Tiering Model

## 7. Obsidian Vault Governance

## 8. LLM Wiki and Retrieval Gateway Governance

## 9. GitHub Repository Governance Integration

## 10. ChatGPT Business and Codex Governance

## 11. Claude Code, IDE Assistants, and Multi-Assistant Adapters

## 12. CLAUDE.md, AGENTS.md, and Rule Compilation Model

## 13. Metadata, Provenance, and YAML Front Matter Standard

## 14. Classification-Aware Retrieval and Model Routing

## 15. Daily Team Workflow and Pull Request Evidence

## 16. Auto-Heal, Auto-Learn, and Auto-Improve Governance

## 17. Security, Connector, MCP, and Integration Controls

## 18. Observability, Audit, Evidence, and Reporting

## 19. Risk Register and Mitigation Plan

## 20. Implementation Roadmap and Exit Criteria

## 21. RACI and Operating Responsibilities

## 22. Acceptance Criteria and Audit Evidence

## 23. Compliance and Control Mapping

## 24. Executive Decision Recommendation

## 25. AVCI Compliance Summary

Appendix A. Required YAML Front Matter Template

Appendix B. PR/MR AI and Knowledge Evidence Template

Appendix C. Onboarding Acknowledgement Checklist

Appendix D. Mermaid Reference Diagrams

Appendix E. External and AIRA Reference Basis

Word TOC Note: This document uses a deterministic static table of contents for headless rendering. Before final publication, Microsoft Word may be used to replace it with a dynamic TOC if required.

## 1. Executive Summary

This standard converts the original Obsidian + Codex + GitHub proposal into a formal AIRA knowledge-control-plane artifact. The decision is to proceed, but not as a simple shared folder, unmanaged AI upload, or separate set of AI tool instructions. AIRA must operate one governed knowledge baseline that is consumed through controlled adapters by ChatGPT Business, Codex, Claude Code, IDE assistants, CI/CD, human developers, and future AI agents.

The core architecture position is that OpenKM, approved DMS repositories, GitHub repositories, signed releases, ADRs, TDLs, source code, PR/MR records, CI evidence, and approved DOCX/PDF standards remain Tier-0 authoritative sources. Obsidian becomes the Git-managed canonical working vault and knowledge authoring projection. LLM Wiki becomes the curated, citation-ready retrieval layer. pgvector, LightRAG, embeddings, indexes, summaries, and caches are derivative and must never become the sole source of truth.

| **Strategic Outcome**<br>Every AI-assisted architecture review, code generation request, code review, test-design activity, security analysis, troubleshooting action, and improvement proposal must be grounded in approved AIRA sources, classification-aware retrieval, repository-local rules, CI evidence, human accountability, and AVCI traceability. |
| --- |

| **Outcome** | **Required Result** |
| --- | --- |
| Single governed baseline | AIRA standards, ADRs, runbooks, prompts, model aliases, and repository rules are maintained once and consumed through controlled adapters. |
| AI-safe coding | Codex and other coding assistants use AGENTS.md / CLAUDE.md-derived rules, GitHub repository context, issue/ADR context, branch protection, and PR evidence gates. |
| Knowledge-source integrity | Tier-0 official sources remain authoritative; Obsidian and LLM Wiki operate as governed projections and curated retrieval layers. |
| Architecture preservation | Retrieval and code assistance must not recommend direct model calls, cross-context writes, boundary violations, unmanaged dependencies, or guardrail bypasses. |
| Audit defensibility | Each answer, recommendation, PR, agent action, and knowledge promotion records source, version, classification, model/tool involvement, reviewer, and evidence references. |

## 2. v1.0 Inclusion Decision and Change Summary

This document should be included in the AIRA documentation ecosystem as a specialist governance standard that bridges 05 Information Nervous System, 13 Obsidian and LLM Wiki Knowledge Governance, 06 CLAUDE.md Reference, 12 CLAUDE.md Rollout Starter Pack, 18 Repository Bootstrap Guide, and 11 AI-Native DevSecOps Standard.

| **Original Draft Position** | **v1.0 Formalized AIRA Position** |
| --- | --- |
| Obsidian + LLM Wiki can centralize knowledge for AI assistants. | Adopted, but formalized as a governed knowledge control plane with source tiers, metadata, review gates, retrieval controls, and evidence records. |
| ChatGPT Business, Codex, and Claude Code should use the same baseline. | Adopted and strengthened through a one-baseline / many-adapters model. Separate unmanaged tool rulebooks are prohibited. |
| Obsidian should be used as the central knowledge repository. | Corrected: Obsidian is the Git-managed canonical working projection, not the sole Tier-0 official source for signed standards. |
| Codex should be bounded by repository rules. | Expanded to require AGENTS.md, CLAUDE.md-derived rules, GitHub issue/ADR context, branch protection, CODEOWNERS, CI strict mode, and PR AVCI evidence. |
| MCP/connectors need caution. | Expanded into formal connector/MCP controls: read-only by default, least privilege, trusted servers only, prompt-injection awareness, audit logging, and human approval for state-changing actions. |
| Implementation roadmap exists. | Expanded with exit criteria, RACI, risks, control mapping, acceptance evidence, and onboarding artifacts. |

## 3. Purpose, Scope, and Authority

### 3.1 Purpose

The purpose of this standard is to define how AIRA stores, curates, indexes, retrieves, applies, and audits official knowledge used by human engineers, AI assistants, coding agents, DevSecOps automation, and GitHub repository workflows. It prevents inconsistent AI behavior by ensuring ChatGPT Business, Codex, Claude Code, IDE assistants, CI/CD gates, and human developers all operate from the same approved AIRA baseline.

### 3.2 Scope

| **In Scope** | **Out of Scope** |
| --- | --- |
| AIRA standards, blueprints, ADRs, TDLs, runbooks, SOPs, prompts, guardrails, model aliases, repository rules, developer onboarding knowledge, issue templates, PR templates, and CI evidence. | Raw production customer records, secrets, unmanaged personal notes, unsupported chat exports, unclassified screenshots, unmanaged file dumps, and personal AI workspace content. |
| Git-managed Obsidian vault structure, LLM Wiki curated artifacts, metadata/provenance schema, retrieval gateway controls, and classification-aware AI usage. | Direct production data indexing into cloud AI tools, prompt storage of raw PII, private employee notes, and uncontrolled derivative summaries. |
| GitHub repository integration: issues, branches, PRs, CODEOWNERS, Actions/CI, signed tags, evidence packs, AGENTS.md, CLAUDE.md, and policy-as-code controls. | Manual click-ops that bypass GitHub evidence, direct main-branch commits, direct production changes, and repository-local rules that weaken AIRA standards. |

### 3.3 Authority and Precedence

| **Level** | **Authority** | **Governance Meaning** |
| --- | --- | --- |
| L0 | Architecture Board / Consolidated Architecture Decisions | Final authority for end-to-end architecture, technology exceptions, and unresolved cross-document conflicts. |
| L1 | 02 Engineering Blueprint; 11 AI-Native DevSecOps Standard | Defines build-ready architecture, lifecycle controls, AI execution boundaries, and promotion discipline. |
| L2 | 01 AVCI; 01A Enterprise Design Principles; 05 Information Nervous System; 13 Knowledge Governance | Defines knowledge quality, source tiers, retrieval eligibility, classification, and production-readiness evidence. |
| L3 | This Knowledge Control Plane Standard | Defines how Obsidian, LLM Wiki, Codex, GitHub, ChatGPT, Claude Code, and adapters are governed together. |
| L4 | Repository CLAUDE.md, AGENTS.md, GitHub rules, CI policies, issue/PR templates | Executable local controls. They may tighten but must not weaken this standard. |

| **Conflict Rule**<br>If an AI response, Obsidian note, LLM Wiki artifact, Codex instruction, AGENTS.md file, GitHub issue, PR template, or connector output conflicts with AIRA authority hierarchy, the higher-authority standard governs. The conflict must be logged as an AVCI reconciliation item and cannot be silently resolved by the AI tool or developer. |
| --- |

## 4. Non-Negotiable Operating Principles

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| KCP-01 | Approved source first | AI and humans must use approved/current artifacts by default. Drafts and superseded sources are excluded unless explicitly requested for comparison. |
| KCP-02 | One baseline, many adapters | ChatGPT, Codex, Claude Code, IDE assistants, CI, and human developers consume the same rule baseline through controlled adapters. |
| KCP-03 | Tier-0 remains authoritative | OpenKM/DMS, GitHub, approved DOCX/PDF, ADRs, source code, and CI evidence remain authoritative. Obsidian and LLM Wiki are governed projections unless directly approved. |
| KCP-04 | Classification drives retrieval | Public, Internal, Confidential, and Restricted labels govern storage, access, model route, prompt eligibility, logging, retention, and review. |
| KCP-05 | Citations and evidence by default | AI answers and repository changes must include source IDs, version, section, confidence, classification, and evidence references where applicable. |
| KCP-06 | Repository rules are executable | CLAUDE.md, AGENTS.md, CODEOWNERS, branch protection, CI, OPA, hooks, and PR templates enforce the standards. |
| KCP-07 | Human accountability | AI may draft, analyze, test, and recommend. Named humans approve high-impact, production-impacting, restricted, or exception actions. |
| KCP-08 | Fail closed | If retrieval gateway, identity, policy, guardrails, audit logging, or source-version validation is unavailable, protected AI/repository actions are blocked. |
| KCP-09 | Supersede, do not overwrite | Approved knowledge and repository rules are versioned. Material changes create new versions and supersedence evidence. |
| KCP-10 | Improve without weakening principles | Auto-Heal, Auto-Learn, and Auto-Improve must preserve or improve SOLID, boundaries, tests, security, observability, reversibility, and AVCI evidence. |

## 5. Target Architecture: AIRA Knowledge Control Plane

The AIRA Knowledge Control Plane is the governance layer that connects official documents, Obsidian, LLM Wiki, GitHub, Codex, ChatGPT Business, Claude Code, repository rules, CI/CD, and evidence stores. It must operate as a controlled chain of authority, not as a collection of disconnected tool workspaces.

| **Layer** | **Representative Systems** | **Primary Function** | **Authority Status** |
| --- | --- | --- | --- |
| Tier 0 Official Sources | OpenKM/DMS, GitHub repos, approved DOCX/PDF, ADRs, TDLs, CI evidence, signed releases | System of record for approved standards, source code, decisions, and evidence | Authoritative |
| Tier 1 Working Knowledge | Git-managed Obsidian Vault | Canonical working projection for standards, runbooks, diagrams, ADR notes, and developer knowledge | Authoritative only when linked to approved source or approved directly |
| Tier 2 Curated Retrieval | LLM Wiki curated artifacts | Human-reviewed, citation-ready retrieval layer for AI assistants | Derivative but approved for retrieval |
| Tier 3 Retrieval Indexes | pgvector, LightRAG, semantic index, graph edges, search cache | Fast retrieval, semantic matching, graph context, similarity, and routing | Derivative only |
| Tier 4 AI Output | ChatGPT, Codex, Claude Code, IDE assistant outputs, agent proposals | Drafting, analysis, code suggestions, review comments, improvement candidates | Not authoritative until reviewed and promoted |
| Evidence Plane | Audit trail, retrieval logs, PR evidence, model/tool usage, CI reports | Verifiability and traceability across the lifecycle | Evidence authority according to originating system |

| flowchart LR<br>T0[Tier 0: Official Sources<br>OpenKM/DMS, GitHub, DOCX/PDF, ADRs, Source Code, CI Evidence]<br>OBS[Tier 1: Git-Managed Obsidian Vault<br>Markdown projections, ADR notes, runbooks, diagrams]<br>WIKI[Tier 2: LLM Wiki Curated Artifacts<br>Human-reviewed, citation-ready knowledge]<br>IDX[Tier 3: Retrieval Indexes<br>pgvector, LightRAG, semantic index, graph edges]<br>RET[Governed Retrieval Gateway<br>ACL + SBAC + classification + freshness + conflict check]<br>AI[AI Consumers<br>ChatGPT Business, Codex, Claude Code, IDE Assistants]<br>GIT[GitHub Execution Path<br>Issues, Branches, PRs, CODEOWNERS, CI, OPA]<br>EVD[Evidence Store<br>Audit, retrieval logs, PR evidence, model/tool usage]<br>T0 --> OBS<br>T0 --> WIKI<br>OBS --> WIKI<br>WIKI --> IDX<br>T0 --> IDX<br>IDX --> RET<br>RET --> AI<br>AI --> GIT<br>GIT --> EVD<br>EVD --> WIKI |
| --- |

## 6. Source Authority and Tiering Model

Source tiering prevents derivative summaries from becoming accidental truth. AI assistants must display or use knowledge according to authority level, freshness, approval status, classification, and conflict state.

| **Tier** | **Source** | **Default Retrieval Eligibility** | **Promotion / Update Rule** |
| --- | --- | --- | --- |
| T0 | OpenKM/DMS, GitHub, signed release tags, approved DOCX/PDF, ADR/TDL, source code, CI evidence | Eligible when current, approved, and classification-compatible | Changed only by approved workflow, PR/MR, CAB/ARB decision, or signed evidence update |
| T1 | Git-managed Obsidian Markdown projection | Eligible when linked to T0 source hash or approved directly | Changes via Git branch, review, CODEOWNERS, and metadata update |
| T2 | LLM Wiki curated artifact | Eligible after human review and citation/provenance validation | Recompiled or superseded when T0/T1 sources change |
| T3 | pgvector, LightRAG, embedding, cache, graph edge | Eligible only through retrieval gateway and source trace | Rebuilt from approved sources; never manually treated as authority |
| T4 | AI output, draft chat, proposed summary, proposed code | Not eligible by default | Promoted only through review, test evidence, classification, and approval |

| **Authority Rule**<br>AIRA must not use AI-generated summaries, notebook exports, chat transcripts, or manually pasted knowledge as official guidance until the artifact is reviewed, classified, source-linked, versioned, and promoted through the approved knowledge lifecycle. |
| --- |

## 7. Obsidian Vault Governance

Obsidian is the human-readable and developer-friendly working vault. It should be Git-managed, versioned, reviewed, and treated as a controlled knowledge workspace. It is not an unmanaged shared folder and it is not an uncontrolled upload target for AI-generated drafts.

### 7.1 Standard Vault Folders

| **Folder** | **Purpose** | **Retrieval Default** |
| --- | --- | --- |
| 01-Standards | Approved AIRA standards and controlled Markdown projections | Eligible when metadata is current and source-linked |
| 02-Architecture | Architecture views, C4/Mermaid diagrams, design notes, target state, constraints | Eligible when approved or explicitly reviewable |
| 03-ADRs-and-TDLs | Architecture Decision Records and Technical Decision Logs | Eligible by status; superseded decisions are excluded by default |
| 04-Runbooks-and-SOPs | Operational procedures, troubleshooting steps, support flows | Eligible when approved and classification-compatible |
| 05-Developer-Knowledge | Coding patterns, testing examples, repository usage guides, onboarding notes | Eligible when linked to standards and validated |
| 06-AI-Artifacts | Prompts, guardrail notes, model aliases, AI evaluation guidance | Eligible only when registry-approved |
| 90-Candidates | Draft AI outputs, lessons learned, proposed updates, unreviewed external research | Excluded unless explicitly requested |
| 99-Superseded | Expired, retired, replaced, or historical content | Excluded by default; available for audit/history only |

### 7.2 Obsidian Control Requirements

All official Obsidian notes must be stored in a private GitHub repository or approved Git platform with branch protection.

Every controlled note must include YAML front matter with document ID, version, owner, classification, source tier, source hash, status, review date, and retrieval eligibility.

Draft notes are stored in 90-Candidates and are not indexed into the approved retrieval layer until promoted.

Superseded notes are moved to 99-Superseded or marked retrieval_eligible: false.

Mermaid diagrams are source artifacts; rendered diagrams are derivative and must be regenerated from reviewed source.

Obsidian plug-ins must be approved, version-pinned, and listed in the Golden Source registry before team use.

## 8. LLM Wiki and Retrieval Gateway Governance

LLM Wiki is the curated retrieval layer. It must not become an uncontrolled data lake or a substitute for Tier-0/ Tier-1 authority. Its value is to make approved knowledge searchable, citable, classification-aware, and auditable for AI-assisted engineering.

| **Control** | **Required Behavior** |
| --- | --- |
| Approval filter | Default retrieval includes only APPROVED, CURRENT, and classification-compatible artifacts. |
| Draft quarantine | Drafts, candidates, raw AI outputs, and unreviewed lessons learned are excluded unless explicitly requested. |
| Staleness detection | Expired, superseded, or source-hash-mismatched artifacts are quarantined and logged. |
| Conflict detection | Conflicting sources are surfaced with authority hierarchy; AI must not hide conflicts. |
| Citation requirement | Every AI answer from governed retrieval should include document ID, title, version, section/source reference, confidence, and evidence reference. |
| Classification check | Retrieval must verify actor clearance, SBAC skill, model-route eligibility, and prompt handling rules. |
| Audit trail | Log actor, query, source artifacts, source versions, model/tool, result, confidence, and output evidence reference. |

## 9. GitHub Repository Governance Integration

GitHub is a Tier-0 or Tier-0-adjacent authority for source code, repository rules, issues, pull requests, tags, release evidence, CI logs, and executable governance controls. It must be integrated with Obsidian, LLM Wiki, and Codex without allowing AI tools to bypass repository discipline.

### 9.1 Mandatory GitHub Controls

| **Control** | **AIRA Requirement** |
| --- | --- |
| Private organization repository | AIRA code, standards, and knowledge vaults must be in approved organization-controlled repositories, not personal accounts. |
| Branch protection | main/master and release branches block direct commits, force-push, skipped checks, unsigned releases, and unreviewed changes. |
| CODEOWNERS | Architecture, security, AI, database, MicroFunction, contract, and knowledge changes require named owners. |
| Issue/ADR first | Material work links to a GitHub issue, ADR, TDL, ticket, or approved backlog item before implementation. |
| PR/MR evidence | Pull requests include AVCI summary, AI involvement, knowledge sources consulted, tests, scans, architecture fitness results, and reviewer decisions. |
| CI strict mode | Hooks and CI run formatting, tests, SAST/SCA, secret scans, OPA/Conftest, ArchUnit/dependency checks, and evidence validation. |
| Signed releases | Release tags, SBOMs, provenance, images, and artifacts must be signed or evidence-linked according to AIRA DevSecOps requirements. |

### 9.2 GitHub as Knowledge Source

GitHub issues, PR discussions, CI results, release notes, repository rules, and signed tags may become knowledge inputs only when they are classified, linked to source artifacts, and promoted through the knowledge lifecycle. Pull-request comments are not official standards by default. They may become lessons learned or developer knowledge after review and promotion.

## 10. ChatGPT Business and Codex Governance

ChatGPT Business and Codex may be used for architecture review, code assistance, documentation, test design, code review, refactoring proposals, and controlled troubleshooting. They must not be treated as autonomous developers, approvers, or source-of-truth systems. AIRA usage must be through named seats, approved workspace configuration, classification-aware prompts, and repository-bound evidence.

### 10.1 ChatGPT Business Controls

Use an approved AIRA workspace or project for official architecture, documentation, code review, and analysis activities.

Route AIRA knowledge through approved connectors/apps or a governed retrieval gateway where possible, not manual uncontrolled paste of sensitive content.

Do not place Restricted data, secrets, raw customer data, or production credentials in prompts, files, connectors, or generated examples.

Require prompt baselines to include source citation, classification check, model-route compliance, and AVCI summary expectations.

Record material ChatGPT assistance in PR/MR evidence when it influences code, architecture, security, tests, prompts, model routes, or documentation.

### 10.2 Codex Controls

| **Codex Use Case** | **Required Boundary** |
| --- | --- |
| Code generation | Must use issue/ADR context, repository rules, AGENTS.md/CLAUDE.md-derived instructions, and approved coding standards. |
| Code review | Must check against AIRA standards, architecture boundaries, API contracts, tests, security controls, and evidence completeness. |
| Refactoring | Must preserve SOLID, Clean Architecture, DDD boundaries, testability, observability, rollbackability, and source compatibility. |
| Test generation | Must generate deterministic tests using synthetic data only and must not remove failing tests to make CI pass. |
| Security analysis | Must operate under least privilege, approved repository access, and reviewer validation before remediation. |
| Repository action | No direct merge, branch-protection bypass, production credential use, or direct production action outside approved controls. |

| **Codex Position**<br>Codex may accelerate AIRA delivery, but every Codex-authored or Codex-influenced change remains subject to human ownership, CODEOWNERS review, CI strict mode, architecture fitness functions, security gates, and PR AVCI evidence. |
| --- |

## 11. Claude Code, IDE Assistants, and Multi-Assistant Adapters

Claude Code, IDE assistants, and similar coding agents may be used only when their repository instructions inherit from the same canonical AIRA rule baseline. The objective is not to create tool-specific governance silos, but to compile tool-specific adapters from one reviewed source.

| **Assistant / Consumer** | **Approved Knowledge Path** | **Mandatory Control** |
| --- | --- | --- |
| Claude Code | Root and directory-specific CLAUDE.md plus approved retrieval connector if required | Managed settings where available; read-only retrieval by default; no unsafe tool action |
| Codex | AGENTS.md generated from CLAUDE.md, GitHub issue/PR context, repository files | Workspace/RBAC controls, compliance logging where available, PR evidence |
| ChatGPT Business | Shared AIRA project plus approved connector/retrieval gateway | Classification policy, citation requirement, no Restricted data in cloud prompts |
| IDE assistants | Generated IDE rule files from template registry | No weaker local copy; approved extensions only |
| CI/CD | Compiled machine-readable rules from CLAUDE.md and policy registry | Pre-commit, CI strict mode, OPA, ArchUnit, Semgrep, secret scanning |

### 11.1 Adapter Rule

Tool-specific files such as AGENTS.md, IDE rules, Codex instructions, Claude settings, prompt snippets, and CI policy bundles are derivative artifacts. They must trace to a canonical CLAUDE.md template version and may tighten but never weaken AIRA repository rules.

## 12. CLAUDE.md, AGENTS.md, and Rule Compilation Model

AIRA repository instructions must be treated as executable governance, not informal documentation. Root and directory-specific CLAUDE.md files define the human-readable rule baseline. AGENTS.md and other tool-specific adapters are generated from the same registry so that Codex, Claude Code, ChatGPT, and IDE tools do not receive inconsistent instructions.

| **Artifact** | **Role** | **Authority** |
| --- | --- | --- |
| Root CLAUDE.md | Repository-wide human-readable rule baseline | Canonical within repository; must align with AIRA standards |
| Directory CLAUDE.md | Stricter local rules for high-risk areas such as security, database, AI, contracts, workflows, and MicroFunctions | Stricter rule prevails |
| AGENTS.md | Codex/tool-neutral adapter for AI coding agents | Derivative from CLAUDE.md; cannot weaken |
| IDE rule files | Assistant-specific local rules | Derivative from template registry; cannot weaken |
| .claude-md.lock / rule lock | Machine-readable version, hash, and source map | Evidence artifact used by hooks and CI |
| OPA/Conftest/Semgrep/ArchUnit rules | Executable policy and architecture checks | Compiled or mapped from canonical standards |

### 12.1 Rule Compilation Flow

| Approved AIRA Standards + 01A + AVCI + Developer Guide<br>↓<br>CLAUDE.md Template Registry<br>↓<br>Root CLAUDE.md + Directory CLAUDE.md<br>↓<br>AGENTS.md / IDE Rules / Codex Instructions / Claude Managed Settings / CI Policies<br>↓<br>Pre-Commit Hooks + CI Strict Mode + CODEOWNERS + PR Evidence<br>↓<br>Audit Evidence + Knowledge Feedback Candidate |
| --- |

## 13. Metadata, Provenance, and YAML Front Matter Standard

Metadata is the minimum control surface for retrieval governance. A note without owner, version, classification, source, approval state, and review status is not eligible for default AI retrieval.

| **Field** | **Purpose** | **Required** |
| --- | --- | --- |
| document_id | Unique AIRA artifact identifier | Yes |
| title | Human-readable title | Yes |
| version | Approved or draft version | Yes |
| status | DRAFT, REVIEW, APPROVED, CURRENT, SUPERSEDED, RETIRED | Yes |
| owner | Named accountable owner | Yes |
| classification | Public, Internal, Confidential, Restricted | Yes |
| source_tier | T0/T1/T2/T3/T4 | Yes |
| source_path | OpenKM/GitHub/Obsidian/repository path | Yes |
| source_hash | Hash of authoritative source or note version | Yes for controlled artifacts |
| approved_by | Approver or approval body | Required for APPROVED/CURRENT |
| review_date | Next review or expiry date | Yes |
| retrieval_eligible | Whether LLM Wiki/default retrieval may serve it | Yes |
| model_route_allowed | Cloud/on-prem/private route eligibility | Yes |
| bounded_context | Affected domain or bounded context | When applicable |
| evidence_ref | Evidence path, PR, ADR, or approval record | Yes |
| avci_status | AVCI completeness | Yes |
| principle_impact | Affected enterprise design principles | When applicable |
| conflict_status | none, unresolved, reconciled, superseded | Yes |

## 14. Classification-Aware Retrieval and Model Routing

Classification is an enforcement mechanism. It determines who can retrieve knowledge, which model route may process it, whether it can enter a prompt, whether it may be logged, which approval path applies, and how long it is retained.

| **Classification** | **Default AI Handling** | **Required Gate** |
| --- | --- | --- |
| Public | May be retrieved by approved AI tools if current and source-cited | Source currency and citation |
| Internal | May be retrieved by approved team workspace and model route | Workspace control and retrieval logging |
| Confidential | Requires approved workspace, need-to-know, SBAC, and route eligibility | Classification check, citations, audit trail, no unmanaged copy-paste |
| Restricted | Default cloud-prompt exclusion unless explicitly approved by policy and architecture authority | On-prem/private route or approved exception, human approval, redaction, strict audit |

| **Fail-Closed Retrieval Rule**<br>If classification, source status, actor authorization, model route, or retrieval eligibility cannot be verified, the retrieval gateway must deny or quarantine the result rather than return possibly unsafe knowledge. |
| --- |

## 15. Daily Team Workflow and Pull Request Evidence

AIRA team members should experience the knowledge control plane as a practical daily workflow. The controls must be strong but usable: ask the AI assistant, retrieve governed context, produce a draft, commit through GitHub, run local and CI checks, and provide evidence for human review.

| sequenceDiagram<br>autonumber<br>participant DEV as Developer / Architect<br>participant AI as ChatGPT / Codex / Claude Code<br>participant RET as Governed Retrieval Gateway<br>participant WIKI as LLM Wiki<br>participant OBS as Obsidian Vault<br>participant GH as GitHub Repository<br>participant CI as CI / Policy Gates<br>participant REV as Human Reviewer<br>DEV->>AI: Ask for design/code/test/review help<br>AI->>RET: Request AIRA baseline evidence<br>RET->>WIKI: Retrieve approved/current/classification-eligible artifacts<br>WIKI->>OBS: Trace to canonical Obsidian notes and source metadata<br>RET->>AI: Return evidence pack with source IDs and confidence<br>AI->>DEV: Draft recommendation/code/tests with AVCI summary<br>DEV->>GH: Commit to governed branch and open PR<br>GH->>CI: Run hooks, tests, scans, OPA, architecture checks<br>CI->>REV: Publish evidence pack and PR compliance summary<br>REV->>GH: Approve, request changes, or reject |
| --- |

### 15.1 Required PR/MR Evidence

| **Evidence Area** | **Required Content** |
| --- | --- |
| Attributable | Issue/ADR/TDL, accountable owner, AI tool/model used, reviewer, source artifacts consulted |
| Verifiable | Tests, scans, policy checks, architecture fitness functions, contract checks, retrieval citations |
| Classifiable | Data classification, prompt/model route eligibility, log/test data handling, access scope |
| Improvable | Feedback path, knowledge update, regression tracking, future refactoring or risk item |
| Design principle impact | Affected SOLID/EDP IDs, preserved/improved/weakened status, mitigation |
| AI involvement | Tool used, purpose, inputs, outputs, accepted/rejected suggestions, human validation |

## 16. Auto-Heal, Auto-Learn, and Auto-Improve Governance

Auto-Heal, Auto-Learn, and Auto-Improve may consume the knowledge control plane and GitHub evidence, but they must not self-promote changes. Automated loops produce candidates, PRs, findings, recommendations, or knowledge proposals. Human review, tests, policy checks, classification validation, and AVCI evidence remain mandatory.

| **Loop** | **Allowed Use** | **Prohibited Use** |
| --- | --- | --- |
| Auto-Heal | Retrieve approved runbooks, inspect GitHub evidence, draft remediation PR, propose tests, recommend rollback/forward-fix | Direct production mutation, merge bypass, secret exposure, removing failing tests, guardrail bypass |
| Auto-Learn | Convert resolved incidents, PR feedback, and test findings into candidate knowledge with source citations | Promoting unreviewed AI summaries into approved Obsidian/LLM Wiki authority |
| Auto-Improve | Propose refactoring, architecture fitness enhancements, missing tests, documentation updates, and policy improvements | Weakening SOLID, Clean Architecture, DDD boundaries, security, observability, reversibility, or AVCI evidence |

| **Auto-* Acceptance Gate**<br>No Auto-Heal, Auto-Learn, or Auto-Improve output may become authoritative, mergeable, or production-active until it is source-cited, classified, human-reviewed, tested, policy-checked, reversible, and evidenced. |
| --- |

## 17. Security, Connector, MCP, and Integration Controls

Connectors, MCP servers, GitHub apps, retrieval gateways, IDE extensions, and coding-agent integrations are high-trust interfaces. AIRA should treat them as security-relevant components that require approval, least privilege, monitoring, and review.

| **Control** | **Requirement** |
| --- | --- |
| Read-only by default | Connectors to Obsidian, LLM Wiki, GitHub, DMS, or knowledge indexes should be read-only unless a specific write path is approved. |
| Least privilege | Grant the minimum repository, folder, issue, branch, or data scope needed for the task. |
| Trusted servers only | Use approved MCP/connectors only. Unknown, personal, or public servers are prohibited for AIRA content. |
| Prompt-injection defense | Connector outputs must be treated as untrusted input until validated against source authority, policy, and allowed tool actions. |
| No secrets | Secrets, tokens, credentials, private keys, customer data, and Restricted artifacts must not be exposed through connector prompts or logs. |
| Audit logging | Record connector identity, actor, action, source, permissions, result, and trace/correlation ID. |
| Change control | Connector scope or permission changes require approval, evidence, and periodic review. |

## 18. Observability, Audit, Evidence, and Reporting

The knowledge control plane must emit evidence. AIRA cannot defend AI-assisted decisions unless it can reconstruct what sources were retrieved, what instructions were used, what model/tool participated, what policy was applied, what human approved, and what tests or CI checks validated the result.

| **Signal** | **Required Fields** |
| --- | --- |
| Retrieval log | actor, query, source IDs, versions, classification, confidence, route, timestamp, result count, trace_id |
| AI usage record | tool, model/alias, workspace, purpose, source context, accepted/rejected output, human validator |
| Knowledge promotion record | candidate source, reviewer, classification, source hash, tests, conflict check, approval, supersedence |
| Repository evidence | issue/ADR, branch, PR, CI runs, scans, CODEOWNERS approval, rule version, artifact hashes |
| Exception/waiver | owner, risk, affected principle, compensating control, expiry date, remediation plan, approver |

## 19. Risk Register and Mitigation Plan

| **ID** | **Risk** | **Severity** | **Impact** | **Mitigation** |
| --- | --- | --- | --- | --- |
| R-01 | Obsidian becomes an unmanaged dump | High | AI retrieves stale or conflicting knowledge | Git-managed vault, mandatory metadata, review workflow, quarantine zones |
| R-02 | LLM Wiki becomes accidental truth | High | Derivative summaries override approved standards | Tier authority model, source citations, source-hash validation |
| R-03 | Different AI tools use different rules | High | Inconsistent code and architecture behavior | Generate adapters from CLAUDE.md; prohibit parallel rulebooks |
| R-04 | Restricted data enters cloud AI prompts | Critical | Privacy, regulatory, and contractual exposure | Classification-aware routing, prompt eligibility, redaction, on-prem/private routes |
| R-05 | AI invents APIs, schemas, or patterns | High | Contract drift and architecture entropy | Contract registry, CI contract tests, CLAUDE.md/AGENTS.md constraints |
| R-06 | AI-generated fixes weaken SOLID/security | High | Hidden technical debt and unsafe remediation | Architecture fitness functions, CODEOWNERS, tests, human review |
| R-07 | MCP/connectors over-permissioned | High | Unauthorized data change or prompt-injection path | Read-only default, trusted servers, least privilege, audit |
| R-08 | Stale documents influence implementation | High | Wrong baseline and rework | Superseded quarantine, freshness checks, conflict register |
| R-09 | Developers bypass governance with personal AI | High | Untraceable outputs and data leakage | Named seats, onboarding acknowledgement, monitoring, usage declaration |
| R-10 | GitHub evidence incomplete | Medium | Audit gaps and weak verifiability | PR template gates, CI evidence publishing, branch protection |

## 20. Implementation Roadmap and Exit Criteria

| **Phase** | **Objective** | **Key Actions** | **Exit Criteria** |
| --- | --- | --- | --- |
| Phase 1 | Establish Tier-0 and Obsidian baseline | Store approved documents in OpenKM/GitHub; convert approved standards to Markdown; add YAML metadata; create vault folders; enforce Git review | All active AIRA documents have ID, version, owner, classification, source hash, and review status |
| Phase 2 | Build LLM Wiki curated layer | Index only approved/current sources; create approved/candidate/quarantine/superseded zones; enforce citations, source hash, version, confidence | AI answers return source IDs, versions, confidence, classification; draft knowledge excluded by default |
| Phase 3 | Implement AI assistant adapters | Generate CLAUDE.md, AGENTS.md, IDE rules, and managed settings from one template registry; configure ChatGPT/Codex/Claude pathways | No separate AI rulebooks; all adapters trace to same source version |
| Phase 4 | Enforce GitHub and CI gates | Add CODEOWNERS, branch protection, PR template, pre-commit hooks, CI strict mode, ArchUnit, Semgrep, OPA, secret scanning, evidence publishing | Violations fail locally and in CI; PR cannot merge without evidence |
| Phase 5 | Add governed improvement loop | Feed incidents, failed tests, PR feedback, and audit findings into 90-Candidates; promote only after review and evidence | Auto-Learn candidates are cited, classified, tested, approved; AI cannot self-promote knowledge |

## 21. RACI and Operating Responsibilities

| **Activity** | **Solutions Architect** | **Knowledge Steward** | **DevSecOps** | **Security** | **Developers / QA** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- |
| Approve authority hierarchy | A/R | C | C | C | I | C |
| Maintain Obsidian vault | A | R | C | C | C | I |
| Curate LLM Wiki | A | R | C | C | C | I |
| Manage GitHub controls | A | C | R | C | C | I |
| Generate CLAUDE.md/AGENTS.md adapters | A | C | R | C | R | I |
| Review AI-assisted PRs | A/R | C | R | R | R | I |
| Approve connector/MCP permissions | A | C | C | R | I | C |
| Audit evidence completeness | C | C | C | C | I | A/R |

RACI legend: A = Accountable, R = Responsible, C = Consulted, I = Informed.

## 22. Acceptance Criteria and Audit Evidence

| **Gate** | **Acceptance Criteria** | **Evidence** |
| --- | --- | --- |
| Knowledge authority | Tier-0/Tier-1/Tier-2/Tier-3/Tier-4 authority rules approved and published | Approved standard, authority matrix, onboarding deck |
| Obsidian readiness | Vault is Git-managed, metadata-complete, branch-protected, and organized into approved folders | Repository link, CODEOWNERS, metadata audit |
| LLM Wiki readiness | Only approved/current/classification-compatible artifacts are default retrievable | Retrieval test report, source-hash validation, quarantine log |
| Adapter consistency | CLAUDE.md, AGENTS.md, IDE rules, and managed settings trace to the same template registry | Rule lock file, generated artifact hashes, CI report |
| GitHub enforcement | Branch protection, CODEOWNERS, CI strict mode, PR templates, and evidence publishing active | GitHub settings export/screenshots, CI run evidence |
| AI usage governance | Named seats, no personal AI use for AIRA artifacts, PR AI involvement declaration | Onboarding acknowledgement, PR evidence |
| Security controls | Connectors/MCP are approved, least-privilege, read-only by default, and audited | Permission review, security approval, audit log |
| Improvement loop | Auto-Learn candidates require review, classification, conflict check, and regression evidence | Candidate register, approval record, supersedence trail |

## 23. Compliance and Control Mapping

| **Framework / Standard** | **Control Intent** | **AIRA Implementation** |
| --- | --- | --- |
| AVCI | Attributable, Verifiable, Classifiable, Improvable artifacts | Metadata, source tiers, retrieval logs, PR evidence, approval records, improvement backlog |
| SOLID / 01A | Preserve design principles across AI and repository changes | CLAUDE.md/AGENTS.md rules, architecture fitness checks, CODEOWNERS, principle impact assessment |
| ISO/IEC 27001:2022 | Information security governance, access control, change control, evidence | Classification-aware retrieval, least privilege, audit logs, change records, approval workflow |
| CIS Controls v8.1 | Inventory, access control, secure configuration, logging, vulnerability management | Approved tool registry, GitHub controls, secret scanning, logging, CI security gates |
| NIST SSDF | Secure software development and provenance | Issue/ADR first, PR evidence, CI gates, SBOM/provenance, reviewed AI-generated code |
| NIST AI RMF | AI governance, mapping, measurement, and management | Model route controls, guardrails, retrieval evidence, human accountability, risk register |
| SOC 2 | Security, availability, confidentiality, processing integrity | Access control, evidence trail, audit logging, change approval, incident feedback |
| SLSA Build Level 3 Target | Build provenance and tamper resistance | Protected branches, signed artifacts, controlled CI, provenance evidence |

## 24. Executive Decision Recommendation

| **Recommended Decision**<br>Approve this standard as the AIRA v1.0 governance baseline for the centralized knowledge control plane connecting Obsidian, LLM Wiki, GitHub, ChatGPT Business, Codex, Claude Code, IDE assistants, CI/CD, and AI improvement loops. |
| --- |

This decision should be implemented before broad team-wide AI-assisted development. The implementation should start with one controlled pilot repository and one controlled development scenario, then scale after retrieval quality, adapter consistency, GitHub enforcement, and evidence completeness have been proven.

Approve the source authority hierarchy.

Create and protect the Git-managed Obsidian vault.

Curate and index only approved/current artifacts in LLM Wiki.

Generate ChatGPT/Codex/Claude Code adapters from CLAUDE.md templates.

Enforce retrieval, classification, citation, and evidence gates.

Integrate PR/MR AVCI summaries and AI involvement declarations.

Run the first pilot using one repository and one development scenario.

Scale only after audit evidence confirms readiness.

## 25. AVCI Compliance Summary

| **AVCI Element** | **Compliance Position** |
| --- | --- |
| Attributable | This standard assigns document owner, co-owners, authority hierarchy, repository control ownership, knowledge stewardship, and human accountability for AI-assisted outputs. |
| Verifiable | Compliance is verified through GitHub evidence, source hashes, retrieval logs, CI gates, policy checks, CODEOWNERS approval, onboarding acknowledgements, and audit records. |
| Classifiable | All knowledge artifacts, prompts, model routes, connector scopes, repository records, and outputs require classification and retrieval/model-route eligibility. |
| Improvable | Incidents, failed tests, PR feedback, audit findings, and improvement proposals flow into 90-Candidates and are promoted only after review, testing, conflict checks, and supersedence evidence. |

## Appendix A. Required YAML Front Matter Template

| ---<br>document_id: AIRA-DOC-XXX<br>title: "<Controlled Artifact Title>"<br>version: "vX.Y"<br>status: "DRAFT \| REVIEW \| APPROVED \| CURRENT \| SUPERSEDED \| RETIRED"<br>owner: "<Named Owner or Office>"<br>co_owners:<br>- "<Role / Office>"<br>classification: "PUBLIC \| INTERNAL \| CONFIDENTIAL \| RESTRICTED"<br>source_tier: "T0 \| T1 \| T2 \| T3 \| T4"<br>source_path: "<OpenKM / GitHub / DMS / Obsidian path>"<br>source_hash: "<sha256 or repository commit hash>"<br>approved_by: "<Approver or approval body>"<br>approval_date: "YYYY-MM-DD"<br>review_date: "YYYY-MM-DD"<br>supersedes: "<prior artifact or none>"<br>superseded_by: "<future artifact or none>"<br>retrieval_eligible: true<br>model_route_allowed: "public-cloud \| business-workspace \| private-route \| on-prem-only \| prohibited"<br>domains:<br>- "architecture"<br>- "devsecops"<br>bounded_context: "<context or n/a>"<br>evidence_ref: "<PR, ADR, approval, audit, or OpenKM path>"<br>avci_status: "complete \| partial \| exception"<br>principle_impact:<br>- "EDP-01 SOLID"<br>- "EDP-20 AVCI"<br>conflict_status: "none \| unresolved \| reconciled \| superseded"<br>--- |
| --- |

## Appendix B. PR/MR AI and Knowledge Evidence Template

| ## AIRA AVCI and AI Knowledge Evidence Summary<br>### Attributable<br>- Issue / ADR / TDL:<br>- Owner:<br>- Human reviewer(s):<br>- AI tool(s) used: ChatGPT / Codex / Claude Code / Other<br>- Model / alias if known:<br>- Repository rule version / CLAUDE.md hash:<br>### Verifiable<br>- AIRA sources consulted:<br>- Obsidian / LLM Wiki citations:<br>- Tests executed:<br>- CI checks:<br>- Security scans:<br>- Architecture fitness checks:<br>### Classifiable<br>- Data classification affected:<br>- Prompt/model route eligibility:<br>- Secrets/PII/customer data exposure check:<br>- Logging and retention impact:<br>### Improvable<br>- Knowledge update required: Yes / No<br>- Candidate note path if any:<br>- Future improvement / technical debt:<br>- Regression tracking reference:<br>### Enterprise Design Principles Impact<br>- Affected EDP IDs:<br>- Preserved / improved / weakened:<br>- Explanation:<br>- Waiver required: Yes / No |
| --- |

## Appendix C. Onboarding Acknowledgement Checklist

| **Acknowledgement Item** | **Required Confirmation** |
| --- | --- |
| AIRA source authority | I understand that Tier-0 official sources and approved Git-managed artifacts govern AI work. |
| Obsidian usage | I will use the approved Git-managed Obsidian vault and will not treat drafts as approved standards. |
| LLM Wiki usage | I will require citations, source versions, classification, and confidence for AI answers from governed retrieval. |
| Codex / AI coding | I will use Codex or other coding assistants only under repository rules, issue/ADR context, and PR evidence gates. |
| GitHub discipline | I will not bypass branch protection, CODEOWNERS, CI, policy checks, or pull request evidence. |
| Data protection | I will not place secrets, Restricted data, raw customer data, or production credentials into AI prompts or unapproved connectors. |
| Human accountability | I understand that AI may draft or recommend, but I remain accountable for accepted work. |

## Appendix D. Mermaid Reference Diagrams

### D.1 Knowledge Control Plane

| flowchart LR<br>T0[Tier 0 Official Sources]<br>OBS[Git-Managed Obsidian Vault]<br>WIKI[LLM Wiki Curated Layer]<br>IDX[pgvector / LightRAG / Indexes]<br>RET[Governed Retrieval Gateway]<br>AI[ChatGPT / Codex / Claude Code]<br>GH[GitHub Issues / PR / CI]<br>EVD[Evidence Store]<br>T0 --> OBS<br>T0 --> WIKI<br>OBS --> WIKI<br>WIKI --> IDX<br>IDX --> RET<br>RET --> AI<br>AI --> GH<br>GH --> EVD<br>EVD --> WIKI |
| --- |

### D.2 AI-Assisted Development Flow

| sequenceDiagram<br>autonumber<br>participant DEV as Developer<br>participant AI as AI Assistant<br>participant RET as Retrieval Gateway<br>participant GH as GitHub<br>participant CI as CI Gates<br>participant REV as Human Reviewer<br>DEV->>AI: Request help with issue/ADR context<br>AI->>RET: Retrieve approved AIRA sources<br>RET-->>AI: Evidence pack and citations<br>AI-->>DEV: Draft code/tests/recommendation<br>DEV->>GH: Open PR with AVCI summary<br>GH->>CI: Run tests, scans, policy, architecture checks<br>CI-->>REV: Publish evidence<br>REV-->>GH: Approve or reject |
| --- |

## Appendix E. External and AIRA Reference Basis

This document was prepared from the attached source draft B. Obsidian + Codex + GitHub.docx and aligned against the active AIRA standards package available in the project context.

| **Reference** | **Use in This Standard** |
| --- | --- |
| 01-AIRA AVCI Engineering Standard v3.1 | Universal AVCI quality gate, retrieval quality gates, PR/MR evidence expectations |
| 02-AIRA Engineering Blueprint v5.1 | Architecture invariants, model gateway, evidence model, AI execution boundaries |
| 05-AIRA Information Nervous System v4.1 | Source architecture, retrieval tiers, metadata, provenance, five reasoning axes |
| 06-AIRA CLAUDE.md Reference v3.0 | Repository instruction hierarchy and adapter governance |
| 11-AIRA AI-Native DevSecOps Standard v3.1 | Lifecycle gates, AI-assisted engineering controls, evidence pipeline |
| 13-AIRA Obsidian and LLM Wiki Knowledge Governance Standard v2.0 | Obsidian, LLM Wiki, classification, source authority, Auto-Learn governance |
| 18-AIRA Repository Bootstrap and Golden Source Implementation Guide v1.0 | GitHub/Git repository bootstrap, branch protection, CODEOWNERS, PR templates, CI strict mode |
| OpenAI Help Center - ChatGPT Business FAQ | Business workspace privacy/data handling and seat-mix reference |
| OpenAI Help Center - Using Codex with your ChatGPT plan | Codex RBAC and compliance log/control reference |
| Anthropic Claude Code Docs - Overview, Settings, Memory | Claude Code capabilities, managed settings, and CLAUDE.md-style instruction reference |
| Anthropic Support - Custom integrations using remote MCP | Connector/MCP permission and prompt-injection risk reference |
