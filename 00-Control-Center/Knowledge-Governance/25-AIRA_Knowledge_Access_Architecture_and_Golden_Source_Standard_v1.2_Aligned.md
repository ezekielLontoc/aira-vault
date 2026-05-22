---
document_id: "AIRA-DOC-025"
title: "AIRA Knowledge Access Architecture and Golden Source Standard"
version: "v1.2"
status: "aligned"
source_file: "25-AIRA_Knowledge_Access_Architecture_and_Golden_Source_Standard_v1.2_Aligned.docx"
source_format: "docx"
vault_folder: "00-Control-Center/Knowledge-Governance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - knowledge-access
  - knowledge-governance
  - golden-source
  - architecture
---

# AIRA Knowledge Access Architecture and Golden Source Standard

**AIRA
AI-Native Enterprise Platform**

**AIRA Knowledge Access Architecture and Golden Source Standard**

**v1.2 - Supplemental Alignment Update | INTERNAL CONFIDENTIAL**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-025** |
| **Document Title** | **AIRA Knowledge Access Architecture and Golden Source Standard** |
| **Version** | **v1.2 - Supplemental Alignment Update** |
| **Supersedes** | **25-AIRA_Knowledge_Access_Architecture_and_Golden_Source_Standard_v1.1_Aligned** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **ALIGNED FOR OBSIDIAN UPLOAD / ARCHITECTURE REVIEW** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Alignment Baseline** | **AIRA Pack 01-05 v1.2 Individual Files; canonical 01A v1.1; Technology Stack v9.1; Java 25 LTS backend baseline** |
| **Target Pack / Register Placement** | **Pack 02 / Knowledge Access and Golden Source** |
| **Effective Date** | **2026-05-21** |

## Alignment Control Addendum

**Purpose. **This supplemental aligned version corrects missing-pack inclusion, document-numbering, classification, and cross-reference issues discovered after Pack 01-05 v1.2 generation. The original source content is preserved below, with updated references and added governance controls where necessary.

**Canonical interpretation. **Where the source text contains older references, the current aligned baseline governs: Java 25 LTS for backend services, Technology Stack v9.1, AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, MicroFunction Framework v3.1, Pack 05 Flyway governance, and canonical 01A v1.1.

### Improvement Summary

Converted Markdown standard into formal DOCX with document control and AVCI summary.

Reconfirmed Golden Source boundaries: code in Git, code intelligence in GitNexus, governed knowledge in Obsidian, unified retrieval in LLM Wiki/LightRAG.

Added Pack 03 v1.2 suffix-numbering alignment and classification-aware retrieval controls.

Strengthened MCP/AIRA Knowledge API controls for SBAC, provenance, source freshness, and no full-codebase copying into Obsidian.

### AVCI Compliance Summary

| **AVCI Property** | **Evidence** |
| --- | --- |
| **Attributable** | **Identifies source document, owner, superseded version, target pack placement, and alignment baseline.** |
| **Verifiable** | **Preserves source content and records the specific alignment changes required for Obsidian and revision-control use.** |
| **Classifiable** | **Standardizes classification to INTERNAL CONFIDENTIAL and preserves any elevated handling controls in the body.** |
| **Improvable** | **Captures open numbering/pack-inclusion issues and creates a clean basis for future source-pack regeneration.** |

## Aligned Source Content

---

document_id: 25-AIRA-KAA-GS-STD

version: 1.0

status: Draft for Team Review

classification: INTERNAL CONFIDENTIAL / Confidential depending on deployment details

owner: Jun Elloso / AIRA Architecture Governance

created: 2026-05-20

tags:

AIRA

Golden-Source

Obsidian

GitHub

GitNexus

LLM-Wiki

LightRAG

AI-Governance

AVCI

---

## AIRA Knowledge Access Architecture and Golden Source Standard v1.0

### Executive Summary

This document defines the AIRA knowledge access architecture and Golden Source rules for integrating GitHub, GitNexus, Central Obsidian, LLM Wiki / LightRAG, Codex, ChatGPT, Claude, Hermes Agent, and other AI-assisted engineering tools.

The final rule is:

_**Code lives in GitHub. Code intelligence lives in GitNexus. Governed knowledge lives in Obsidian. Unified retrieval lives in LLM Wiki / LightRAG. AI assistants access knowledge through a governed connector/API layer.**_

The team must **not copy the whole codebase into Obsidian**. Obsidian should contain AIRA standards, architecture documents, ADRs, runbooks, prompts, evidence summaries, codebase maps, GitNexus impact summaries, and exact references to Git repositories, branches, commits, and paths.

### 1. Purpose

This standard provides a common understanding for all AIRA team members regarding where information should live, how it should be referenced, how it should be indexed, and how AI tools should access it.

### 2. Scope

#### In Scope

GitHub / Git repository

GitNexus code intelligence

Central Obsidian vault

LLM Wiki / LightRAG

AIRA Knowledge API / MCP connector

Codex, ChatGPT, Claude, Hermes Agent, and other AI tools

Curated evidence and derived code intelligence summaries

#### Out of Scope

Copying the full codebase into Obsidian

Using Obsidian as a build system or source code repository

Storing secrets, raw tokens, raw production logs, or sensitive production data in Obsidian

Bypassing GitHub pull request, CI/CD, and evidence controls

### 3. Golden Source Boundaries

| **Artifact Type** | **Golden Source** | **May Be Indexed By** | **May Be Summarized Into Obsidian?** |
| --- | --- | --- | --- |
| **Source code** | **GitHub / Git repository** | **GitNexus, LLM Wiki / LightRAG, AIRA Knowledge API** | **Yes, summary only** |
| **Unit/integration tests** | **GitHub** | **GitNexus, CI evidence tools** | **Yes, test evidence summary only** |
| **OPA/Rego policies** | **GitHub** | **LLM Wiki / LightRAG, policy registry** | **Yes, policy summary and links** |
| **Docker/Kubernetes manifests** | **GitHub** | **GitNexus, DevSecOps scanners** | **Yes, deployment summary only** |
| **AIRA standards and guides** | **Central Obsidian / Git-backed docs repo** | **LLM Wiki / LightRAG** | **Yes, primary content** |
| **ADRs / TDLs** | **Central Obsidian / Git-backed docs repo** | **LLM Wiki / LightRAG** | **Yes, primary content** |
| **Runbooks / SOPs** | **Central Obsidian / Git-backed docs repo** | **LLM Wiki / LightRAG** | **Yes, primary content** |
| **Security scan results** | **CI artifact store / evidence repository** | **Evidence index / GitNexus summaries** | **Yes, curated summary only** |
| **Raw logs / telemetry** | **Observability platform** | **Log analytics / governed AI processing** | **No raw copy; summary only** |
| **Secrets / tokens / credentials** | **Vault / secret manager** | **Never indexed** | **Never** |

### 4. Target AIRA Knowledge Access Architecture

┌───────────────────────────────┐

│ GitHub / Git Repository │

│ Source Code Golden Source │

└───────────────┬───────────────┘

│ read-only indexing

▼

┌───────────────────────────────┐

│ GitNexus Code Intelligence │

│ dependency, impact, code map │

└───────────────┬───────────────┘

│ summaries/evidence

▼

┌───────────────────────────────┐ ┌───────────────────────────────┐

│ Central Obsidian Vault │◄──────►│ LLM Wiki / LightRAG │

│ standards, ADRs, runbooks, │ │ unified knowledge index │

│ prompts, curated evidence │ │ docs + code refs + evidence │

└───────────────────────────────┘ └───────────────┬───────────────┘

│ governed access

▼

┌───────────────────────────────┐

│ AIRA Knowledge API / MCP │

│ search, fetch, cite, classify, │

│ SBAC, audit, provenance │

└───────┬───────────┬───────────┘

│ │

▼ ▼

ChatGPT/Codex Claude/Hermes/Agents

### 5. Do Not Copy the Whole Codebase to Obsidian

The team must not copy the full source code repository from GitHub or GitNexus into Obsidian.

| **Prohibited Pattern** | **Risk** |
| --- | --- |
| **Copying backend/frontend source folders into Obsidian** | **Duplicate source and drift risk** |
| **Copying configuration files containing secrets or environment values** | **Credential and data leakage risk** |
| **Using Obsidian as the place where code changes are made** | **Bypasses Git branching, CI, review, and evidence controls** |
| **Using Obsidian as the authoritative source for executable code** | **Violates Git as Golden Source and weakens reproducibility** |
| **Indexing uncontrolled raw code without classification and access rules** | **May expose sensitive implementation details** |

### 6. Permitted Derived Artifacts in Obsidian

Obsidian may contain curated, generated, or reviewed derived artifacts from GitHub/GitNexus. These must reference the exact repository, branch, commit, path, tool, timestamp, and classification.

Examples:

`PoC1_Login_Codebase_Map.md`

`Login_API_Contract_Summary.md`

`AUTH_LOGIN_CONTEXT_ESTABLISH_Step_Map.md`

`Login_Service_Dependency_Map.md`

`PoC1_Login_GitNexus_Impact_Report.md`

`PoC1_Test_Evidence_Summary.md`

`PoC1_SAST_DAST_SBOM_Summary.md`

`PoC1_Release_Evidence.md`

### 7. Documentation, Code, and AI Knowledge Flow

#### Documentation Flow

AIRA Standards / Policies / ADRs / Runbooks

↓

Central Obsidian Vault / Git-backed Documentation Repository

↓

LLM Wiki / LightRAG Index

↓

ChatGPT / Codex / Claude / Hermes Reference

#### Code Flow

Developer / Codex / AI Coding Assistant

↓

GitHub Branch and Pull Request

↓

CI/CD, Unit Tests, SAST, DAST, SBOM, Secret Scan

↓

GitNexus Code Intelligence and Impact Analysis

↓

Curated Summary / Evidence

↓

Obsidian and LLM Wiki / LightRAG

#### AI Knowledge Flow

Obsidian Docs + GitHub Code + GitNexus Metadata + Evidence Store

↓

AIRA Knowledge API / LLM Wiki / LightRAG

↓

AI Assistant retrieves relevant documentation, code references, policy, and evidence

↓

Generated output includes references, assumptions, and AVCI compliance summary

### 8. AI Access Model

| **Tool / Actor** | **Recommended Access Pattern** | **Notes** |
| --- | --- | --- |
| **ChatGPT Project / Business Workspace** | **Project files, supported connectors, or custom AIRA Knowledge API / MCP connector** | **Cloud-hosted ChatGPT cannot directly access private LAN IP addresses without a secure connector.** |
| **Codex local / desktop** | **Can access LAN resources available to developer workstation, subject to policy** | **Must still use approved knowledge sources.** |
| **Codex cloud / cloud agents** | **Secure authenticated HTTPS API / connector only** | **Private RFC1918 IPs are not directly reachable.** |
| **Claude Code / local AI tooling** | **Local reference to Git repo and central documentation vault** | **Must follow AIRA knowledge hierarchy.** |
| **Hermes Agent / Agentic OS** | **AIRA Knowledge API with SBAC, classification filter, audit, and guardrails** | **Must never bypass policy, classification, or human approval.** |
| **Human developers** | **Central GitHub + Central Obsidian + LLM Wiki UI** | **Avoid private divergent vaults as authoritative sources.** |

### 9. Containerized Platform Direction

| **Component** | **Containerize?** | **Recommended Role** |
| --- | --- | --- |
| **LLM Wiki** | **Yes** | **Knowledge index and web UI** |
| **LightRAG / LiteRAG** | **Yes** | **Retrieval and indexing service** |
| **GitNexus** | **Yes, if server deployment is supported** | **Code intelligence and impact analysis** |
| **AIRA Knowledge API / MCP Connector** | **Yes** | **Secure controlled bridge for AI assistants** |
| **LiteLLM / OpenRouter gateway** | **Yes** | **Model routing and provider abstraction** |
| **NeMo Guardrails** | **Yes** | **Guardrail service** |
| **Hermes Agent** | **Yes** | **Agent orchestration layer** |
| **OPA** | **Yes** | **Policy decision point** |
| **PostgreSQL / pgvector** | **Yes** | **Metadata, evidence, vector index** |
| **Redis / Valkey** | **Yes** | **Cache and acceleration layer** |
| **Obsidian desktop** | **No** | **Human editor/viewer; vault should be Git-backed** |
| **GitLens / VS Code plugins** | **No** | **Developer workstation tools** |

### 10. Implementation Phases

| **Phase** | **Description** | **Exit Criteria** |
| --- | --- | --- |
| **Phase 1 - PoC Curator Vault** | **Use Krisha’s Obsidian as temporary curated vault** | **Team can reference a common curated source** |
| **Phase 2 - Central Golden Source Repository** | **Create central Git-backed AIRA documentation repository** | **Approved AIRA docs have version control and metadata** |
| **Phase 3 - LLM Wiki / LightRAG Index** | **Index central docs and approved code references** | **Retrieval returns source references and classification-aware results** |
| **Phase 4 - GitNexus Integration** | **Connect GitNexus to GitHub** | **Code maps and impact summaries are generated** |
| **Phase 5 - AIRA Knowledge API / MCP Connector** | **Expose controlled search/fetch/citation API** | **AI assistants retrieve approved knowledge with audit** |
| **Phase 6 - Kubernetes Platform** | **Containerize and deploy knowledge and AI platform services** | **Platform is reproducible, observable, policy-governed, and secured** |

### 11. Derived Artifact Metadata Template

---

document_type: derived-code-intelligence-summary

title: PoC1 Login Codebase Map

source_repo: aira-platform

source_branch: main

commit_hash: <exact_commit_hash>

git_paths:

- backend/src/main/java/com/aira/auth

- frontend/src

- opa/auth/login.rego

generated_by: GitNexus

generated_at: 2026-05-20T00:00:00+08:00

reviewed_by: <reviewer_name>

classification: INTERNAL CONFIDENTIAL

avci:

attributable: true

verifiable: true

classifiable: true

improvable: true

related_adrs:

- ADR-AIRA-2026-xxx

---

### 12. Standard Team Instruction

_Do not copy the whole AIRA source code repository into Obsidian. Source code must remain in GitHub as the Golden Source and must be analyzed through GitNexus, CI/CD, and approved indexing services. Obsidian must contain governed documentation, AIRA standards, ADRs, runbooks, prompt standards, curated diagrams, and derived evidence summaries that reference exact Git commits and paths. LLM Wiki / LightRAG may index both documentation and approved code references through controlled connectors. Any AI-assisted output must reference the approved AIRA documentation and must include AVCI evidence, classification awareness, SOLID/Clean Architecture compliance, security posture, testability, observability, and reversibility considerations._

### 13. Final Recommendation

AIRA should implement a central, Git-backed knowledge architecture where GitHub/GitNexus remains authoritative for source code and code intelligence, Central Obsidian remains authoritative for governed human-readable knowledge, LLM Wiki / LightRAG provides unified retrieval, and the AIRA Knowledge API / MCP connector provides secure AI access.
