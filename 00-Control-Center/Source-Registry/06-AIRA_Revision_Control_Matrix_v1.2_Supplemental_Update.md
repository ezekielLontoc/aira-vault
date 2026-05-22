---
document_id: "AIRA-DOC-006-RCM"
title: "AIRA Revision Control Matrix"
version: "v1.2"
status: "supplemental-update"
source_file: "06-AIRA_Revision_Control_Matrix_v1.2_Supplemental_Update.xlsx"
source_format: "xlsx"
vault_folder: "00-Control-Center/Source-Registry"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - revision-control
  - source-registry
---

# AIRA Revision Control Matrix

## Supplemental Register

| Supplemental Document Register | AIRA Missing Documents v1.2 Alignment | Effective Date | 2026-05-21 | Column 5 | Column 6 | Column 7 | Column 8 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Seq | Source Uploaded File | New Aligned File | Document ID | Version | Target Pack/Register | Decision | Key Alignment Improvements |
| 1 | 11A-AIRA_Development_Readiness_and_Developer_Handoff_Pack_v2.0.docx | 11A-AIRA_Development_Readiness_and_Developer_Handoff_Pack_v2.1_Aligned.docx | AIRA-DOC-011A | v2.1 | Supplemental / Developer Readiness | Include as formal supplemental document | Ready-to-Code gates aligned to Java 25, canonical 01A, Pack 01-05 v1.2, Dograh/GitNexus/Flyway controls |
| 2 | 14-AIRA_Architecture_Decision_Record_and_Technical_Decision_Log_Standard_v2.0.docx | 14-AIRA_Architecture_Decision_Record_and_Technical_Decision_Log_Standard_v2.2_Aligned.docx | AIRA-DOC-014 | v2.2 | Pack 05 / Decision Governance | Replace older Pack 05 v2.1 if adopted | Technology Stack v9.1, Java 25 deviation ADR trigger, Dograh/GitNexus/Flyway decision triggers |
| 3 | 16A-AIRA_Flyway_Initial_Database_Baseline_and_Migration_Governance_Guide_v1.0.docx | 16A-AIRA_Flyway_Initial_Database_Baseline_and_Migration_Governance_Guide_v1.2_Aligned.docx | AIRA-DOC-016A | v1.2 | Pack 05 / Database and Flyway | Replace older Pack 05 v1.1 if adopted | Flyway from Day 0, no manual DDL, no production clean, Java 25/Spring Boot 4 alignment |
| 4 | 23-AIRA_Login_PoC1_Developer_Source_Code_Generation_Standard_v1.0.md | 23A-AIRA_Login_PoC1_Developer_Source_Code_Generation_Standard_v1.2_Aligned.docx | AIRA-DOC-023A | v1.2 | Pack 03 / Login PoC | Promote Markdown to formal DOCX | Java 25, Spring Boot 4, Keycloak/OIDC/PKCE, OPA/SBAC, audit/outbox/observability evidence |
| 5 | 24-AIRA_Operations_Incident_AutoHeal_and_Recovery_Runbook_Pack_v1.0.docx | 24B-AIRA_Operations_Incident_AutoHeal_and_Recovery_Runbook_Pack_v1.1_Aligned.docx | AIRA-DOC-024B | v1.1 | Supplemental / Operations Runbook | Renumber as 24B to avoid collision | No side-channel fixes, Harness/SBAC/OPA gated Auto-Heal, Dograh/GitNexus incident awareness |
| 6 | 25-AIRA_Knowledge_Access_Architecture_and_Golden_Source_Standard_v1.0.md | 25-AIRA_Knowledge_Access_Architecture_and_Golden_Source_Standard_v1.2_Aligned.docx | AIRA-DOC-025 | v1.2 | Pack 02 / Golden Source | Promote Markdown to formal DOCX | Git as code Golden Source, GitNexus code intelligence, Obsidian curated knowledge, LLM Wiki/LightRAG retrieval |
| 7 | 26-AIRA_Governed_Knowledge_Automation_Pipeline_Standard_v1.0.md | 26B-AIRA_Governed_Knowledge_Automation_Pipeline_Standard_v1.2_Aligned.docx | AIRA-DOC-026B | v1.2 | Pack 03 / Knowledge Automation | Renumber as 26B to avoid collision | Freshness manifest, drift detection, no full code copy, human review gates |
| 8 | 28-AIRA_Enterprise_Design_Principles_and_SOLID_Reference_Library_v1.0_Regenerated_Improved_Format.docx | 28-AIRA_Enterprise_Design_Principles_and_SOLID_Reference_Library_v1.1_Aligned.docx | AIRA-DOC-028 / 01A Companion | v1.1 | Pack 01 / Reference Library | Retain as 01A companion reference | Canonical 01A remains enforcement standard; Document 28 is reference library and website register |
| 9 | A. AI-Native Project AIRA - Agile + AI DevSecOps Greenfield Backlog Planning Prompt.docx | 19C-AIRA_Agile_AI_DevSecOps_Greenfield_Backlog_Planning_Prompt_Standard_v1.1_Aligned.docx | AIRA-DOC-019C | v1.1 | Supplemental / Backlog Planning | Promote unmatched prompt to formal standard | GitHub-ready backlog, Sprint 0 readiness, AVCI/EDP/CI/CD/security issue templates |
| 10 | AIRA_Cross_Document_Revision_Control_Matrix_v1.0_Updated_with_Docs18_to_36_Formatted.xlsx | 06-AIRA_Revision_Control_Matrix_v1.2_Supplemental_Update.xlsx | AIRA-DOC-006 | v1.2 | Pack 06 / Revision Control | Replace/append to existing matrix | Tracks supplemental missing documents, numbering decisions, open adoption actions, validation checklist |

## Numbering Decisions

| Document / Area | Conflict / Issue | v1.2 Decision | Rationale | Action Owner | Status |
| --- | --- | --- | --- | --- | --- |
| 24 Operations Runbook | Conflicts with Pack 04 Document 24 Login PoC runtime configuration schema | Assign 24B | Preserves original intent while preventing Obsidian and LLM Wiki filename collision | Solutions Architecture Office | Proposed |
| 23 Login PoC Prompt | Conflicts with Pack 04 23B Architecture Fitness Catalog and earlier Pack 03 23A naming | Use 23A for Login PoC developer prompt | Login PoC source generation belongs to Pack 03 / developer execution support, not fitness catalog | Solutions Architecture Office | Proposed |
| 26 Knowledge Automation | Conflicts with 26A Data Classification, Retention, and Evidence Register | Use 26B | Keeps data classification as 26A and automation pipeline as 26B | Knowledge Governance | Proposed |
| 28 EDP/SOLID Library | Canonical 01A already promoted in Pack 01 | Retain 28 as reference-library companion | Avoids duplicate authority while preserving website/reference maintenance content | Architecture Board | Proposed |
| A. Backlog Planning Prompt | Previously unmatched informal prompt | Promote to 19C | Related to Sprint 0/foundation planning; 19A/19B already assigned | PMO / Product Owner | Proposed |

## Alignment Rules

| Rule ID | Rule | Applies To | Evidence |
| --- | --- | --- | --- |
| AR-01 | Backend runtime is Java 25 LTS; Java 21 is only a waiver-based fallback. | Developer, Readiness, Login PoC, ADR/TDL, Database standards | Technology Stack v9.1 reference; PR/MR EDP impact |
| AR-02 | Flyway is mandatory from Day 0 for greenfield database schema creation. | Database, Login PoC, Sprint 0, migration/cutover | Clean-migrate report; Flyway checksum; no manual DDL evidence |
| AR-03 | Auto-Heal is advisory-first and must not bypass Harness, SBAC, OPA, guardrails, audit, or human approval. | Operations, DevSecOps, Runbooks, Incident response | Harness action record; OPA decision; incident/evidence pack |
| AR-04 | Do not copy the full codebase into Obsidian; use Git/GitNexus for code and code intelligence. | Knowledge Access, Knowledge Automation | Source commit hash; GitNexus summary; freshness manifest |
| AR-05 | Document 28 is a reference library; canonical enforcement remains 01A. | Pack 01 and supplemental source register | Document control mapping; revision-control decision |
| AR-06 | All AI/model traffic must follow approved routes through LiteLLM aliases and guardrail checkpoints. | Prompt standards, Login PoC, Operations, Knowledge API | Model route audit; guardrail result; classification eligibility |

## Open Actions

| Action ID | Action | Priority | Owner | Due / Trigger | Status | Evidence Required |
| --- | --- | --- | --- | --- | --- | --- |
| OA-01 | Architecture Board confirms adoption of 24B Operations Runbook numbering. | High | Solutions Architecture Office | Before next source-pack regeneration | Open | Approved revision-control entry |
| OA-02 | Packer script rules updated to include 11A, 19C, 24B, 25, 26B, and 28 supplemental files. | High | DevSecOps | Before next packing run | Open | Updated PowerShell packer and dry-run output |
| OA-03 | Obsidian vault updated with DOCX and optional Markdown projections for supplemental documents. | Medium | Knowledge Steward | After file approval | Open | Obsidian commit/hash and LLM Wiki indexing manifest |
| OA-04 | LLM Wiki/LightRAG re-index runs with freshness manifest and duplicate-number check. | Medium | Knowledge Governance | After Obsidian update | Open | Index manifest and retrieval regression test |
| OA-05 | Team notified that supplemental files supersede or complement earlier missing/unmatched drafts. | Medium | IT Head / PMO | After approval | Open | Team memo or release note |

## Validation Checklist

| Checklist ID | Validation Item | Pass Condition | Status |
| --- | --- | --- | --- |
| VC-01 | All supplemental DOCX files render successfully. | No render failures and no obvious clipped text on sampled pages. | Completed |
| VC-02 | Classification standardized. | All supplemental files use INTERNAL CONFIDENTIAL in control addendum. | Completed |
| VC-03 | Java 25 backend baseline applied. | Backend-related supplemental docs refer to Java 25 LTS and waiver-only fallback. | Completed |
| VC-04 | Duplicate-number conflicts identified. | 24B, 23A, 26B, 19C decisions recorded. | Completed |
| VC-05 | Knowledge Golden Source rule preserved. | No standard recommends copying full codebase into Obsidian. | Completed |
| VC-06 | Flyway from Day 0 preserved. | Flyway guide and related docs block manual greenfield DDL. | Completed |
