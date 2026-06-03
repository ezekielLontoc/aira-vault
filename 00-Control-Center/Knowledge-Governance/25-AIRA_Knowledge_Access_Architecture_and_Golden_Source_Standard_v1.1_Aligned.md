---
document_id: "AIRA-DOC-025"
title: "AIRA Knowledge Access Architecture and Golden Source Standard"
version: "v1.1"
status: "superseded"
superseded_by: "25-AIRA_Knowledge_Access_Architecture_and_Golden_Source_Standard_v1.2_Aligned.md"
source_file: "25-AIRA_Knowledge_Access_Architecture_and_Golden_Source_Standard_v1.1_Aligned.docx"
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

**AIRA**

AI-Native Enterprise Platform

**AIRA Knowledge Access Architecture and Golden Source Standard**

_GitHub | GitNexus | Central Obsidian | LLM Wiki / LightRAG | AI Assistant Access_

**v1.1 - Java 25 Knowledge Baseline and Cross-Pack Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-025** |
| **Document Title** | **AIRA Knowledge Access Architecture and Golden Source Standard** |
| **Document Version** | **v1.1 - Java 25 Knowledge Baseline and Cross-Pack Alignment Update** |
| **Supersedes** | **25-AIRA_Knowledge_Access_Architecture_and_Golden_Source_Standard_v1.1** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Software Development Lead; DevSecOps Lead; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material runtime, technology, security, AI-risk, or governance change** |
| **Pack Context** | **Pack 02 v1.2 individual aligned file generated from Pack 02 v1.1 aligned source pack and synchronized against Packs 01, 03, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development. Java 21 is waiver-only fallback, not the default.** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 02 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 02 source document so it can be uploaded to Obsidian as a standalone canonical Developer Execution artifact while remaining synchronized with the current AIRA source-pack baseline and Pack 01 v1.2 outputs.

**Document role. **Defines governed knowledge-access flow connecting official source repositories, Obsidian, LLM Wiki/LightRAG, GitNexus, and AI assistants.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active source baseline** | **AIRA Source Packs v3.0 / Aligned Pack Set v1.1 remains the input baseline; Pack 02 v1.2 is the new individual output set for Obsidian upload.** |
| **Backend runtime baseline** | **Java 25 LTS is the required backend baseline. Spring Boot 4.x and Spring Framework 7.x are the target backend framework baseline where compatible.** |
| **Java 21 handling** | **Java 21 is not the default. It may appear only as a documented compatibility fallback with Architecture Board/CAB waiver, risk acceptance, and exit plan.** |
| **Pack 01 governance references** | **References are aligned to AVCI v3.1, Engineering Blueprint v5.1, DevSecOps v3.1, 01A v1.1, and ADR-AIRA-2026-001 v1.1.** |
| **Technology baseline** | **Technology Stack v9.0 remains the canonical technology reference and explicitly includes Java 25 LTS as the primary backend runtime.** |
| **Information fabric baseline** | **Information Nervous System v4.0 governs source authority, retrieval eligibility, Obsidian / LLM Wiki, GitNexus indexing, and derivative knowledge handling.** |
| **AI execution boundary** | **All model access routes through LiteLLM. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Tool actions go through Harness/SBAC/OPA.** |
| **GitNexus** | **GitNexus is read-only, derivative, commit-bound code intelligence. It cannot commit, approve, merge, deploy, mutate production, or replace tests/scans/human review.** |
| **Dograh** | **Dograh is governed voice-agent orchestration only. It is not a hardcoded STT/TTS/LLM provider and remains subject to classification, consent, guardrail, and audit controls.** |
| **Flyway / Database** | **Flyway remains mandatory from initial database creation through all migrations, data fixes, RLS, extensions, seed data, and schema evolution.** |

### Material Changes in This Version

Updated Golden Source knowledge metadata to include Java 25 LTS as the default backend runtime assumption for code, prompts, examples, templates, and assistant guidance.

Aligned the knowledge control plane with Information Nervous System v4.0 and Technology Stack v9.0.

Clarified that Obsidian/LLM Wiki content is curated derivative knowledge; approved source documents, Git, OpenKM, and evidence stores remain authoritative.

Added handling rules so GitNexus code graphs are commit-bound, read-only, classification-aware, and never served as architecture authority.

Updated Pack 01 references to the canonical 01A v1.1 document and Pack 01 v1.2 aligned outputs.

### Mandatory Java 25 Backend Control

| **Control** | **Pack 02 v1.2 Requirement** |
| --- | --- |
| **Default backend runtime** | **Java 25 LTS. All backend service templates, coding examples, devcontainers, Gradle toolchains, CI runners, unit tests, architecture tests, and onboarding labs must assume Java 25 unless explicitly waived.** |
| **Fallback runtime** | **Java 21 is waiver-only for compatibility blockers. The waiver must include owner, reason, affected service, risk, compensating controls, and exit date.** |
| **Review gate** | **PR/MR reviewers must reject backend code, templates, devcontainers, or CI jobs that quietly downgrade the runtime baseline or introduce untracked dual-runtime behavior.** |
| **Evidence** | **CI evidence must expose java.version, toolchain version, Gradle/Maven version, build image digest, SBOM, and architecture fitness results.** |

### AVCI Compliance Summary for This Update

| **AVCI Property** | **Evidence in This Pack 02 v1.2 Update** |
| --- | --- |
| **Attributable** | **Each file has a document ID, owner, supersedes value, source pack context, and material-change list.** |
| **Verifiable** | **The Java 25 baseline is explicitly recorded, cross-pack references are updated, and original source content is preserved after the alignment notice.** |
| **Classifiable** | **All generated files are marked INTERNAL CONFIDENTIAL and inherit AIRA classification-handling rules.** |
| **Improvable** | **Remaining numbering issues such as duplicate 19/25 are retained for master-register cleanup rather than hidden.** |

## Updated Baseline Content

**AIRA**

**Knowledge Access Architecture and Golden Source Standard**

_For GitHub, GitNexus, Central Obsidian, LLM Wiki / LightRAG, and AI Assistant Access_

| **Document Field** | **Value** |
| --- | --- |
| Document ID | 25-AIRA-KAA-GS-STD |
| Version | 1.0 |
| Status | Draft for Team Review |
| Classification | Internal / Confidential depending on deployment details |
| Prepared For | AIRA v3.0 Development and DevSecOps Team |
| Document Owner | Jun Elloso / AIRA Architecture Governance |
| Primary Audience | Software Developers, DBA, DevSecOps, Security, Enterprise Architects, AI Governance Team |
| Effective Use | Obsidian / AIRA Information Nervous System source document |
| Date | 2026-05-20 |

**Guiding Rule: Code lives in GitHub. Code intelligence lives in GitNexus. Governed knowledge lives in Obsidian. Unified retrieval lives in LLM Wiki / LightRAG. AI assistants access knowledge through a governed connector/API layer.**

| **Version** | **Date** | **Author / Owner** | **Change Summary** | **Status** |
| --- | --- | --- | --- | --- |
| 1.0 | 2026-05-20 | AIRA Architecture Governance | Initial formalization of the AIRA knowledge access architecture, Golden Source boundaries, code-documentation synchronization rules, and team operating model. | Draft for Review |

| **Related AIRA Document** | **Relationship** |
| --- | --- |
| 01-AIRA_AVCI_Engineering_Standard_v3.0 | Defines Attributable, Verifiable, Classifiable, and Improvable controls for knowledge and evidence artifacts. |
| 02-AIRA_Engineering_Blueprint_v5.0 | Defines enterprise architecture principles, controlled source-of-truth discipline, and AI-native engineering constraints. |
| 03-AIRA_Developer_Guide_v4.0 | Defines developer working model, repository discipline, and AI-assisted development expectations. |
| 05-AIRA_AI_Native_Information_Nervous_System_v4.0 | Defines the information nervous system, metadata, provenance, and retrieval routing requirements. |
| 10-AIRA_MicroFunction_Framework_v3.0 | Defines runtime assembly, evidence, and configuration-driven MicroFunction engineering. |
| 13-AIRA_Obsidian_and_LLM_Wiki_Knowledge_Governance_Standard_v2.0 | Defines Obsidian and LLM Wiki governance patterns. |
| 14-AIRA_ADR_and_TDL_Standard_v2.0 | Defines decision traceability, architectural governance, and change-control evidence. |
| 18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide_v1.1 | Defines repository bootstrap and Golden Source implementation expectations. |

## Table of Contents

## 1. Executive Summary

## 2. Purpose

## 3. Scope

## 4. Final Architecture Principle

## 5. Golden Source Boundaries

## 6. Target AIRA Knowledge Access Architecture

## 7. Do Not Copy the Whole Codebase to Obsidian

## 8. Permitted Derived Artifacts

## 9. Knowledge and Code Flow

## 10. AI Access Model

## 11. Containerized Platform Direction

## 12. Team Operating Model

## 13. Governance Controls

## 14. Implementation Phases

## 15. Acceptance Checklist

## 16. Appendix A - Metadata Template

## 17. Appendix B - Team Instruction

## 1. Executive Summary

This document defines the AIRA knowledge access architecture and Golden Source rules for integrating GitHub, GitNexus, Central Obsidian, LLM Wiki / LightRAG, Codex, ChatGPT, Claude, Hermes Agent, and other AI-assisted engineering tools. It clarifies that source code must not be copied wholesale into Obsidian. Instead, GitHub and GitNexus remain authoritative for source code and code intelligence, while Obsidian stores governed human-readable knowledge, standards, policies, ADRs, runbooks, prompts, evidence summaries, and curated code intelligence outputs.

The objective is to preserve AVCI: Attributability, Verifiability, Classifiability, and Improvability. The knowledge architecture must prevent duplicated Golden Sources, uncontrolled copying, drift, sensitive data leakage, and inconsistent AI context across developers.

| **Key Decision** | **Final Position** |
| --- | --- |
| Should the whole GitHub codebase be copied to Obsidian? | No. Source code remains in GitHub/GitNexus. Obsidian contains curated documentation, summaries, evidence, and references. |
| Should LLM Wiki / LightRAG index source code? | Yes, but through controlled read-only indexing, GitNexus analysis, or a governed connector/API path. |
| Should Obsidian become a code repository? | No. Obsidian is a human knowledge interface and governed documentation vault. |
| Should AI assistants reference both documentation and code? | Yes, through a governed AIRA Knowledge API / MCP connector or approved indexing layer. |
| Should private LAN URLs be used as final AI connectors? | No. Private LAN access may be used by humans or local tools, but cloud AI access requires secure, authenticated, audited connectors. |

## 2. Purpose

This standard provides a common understanding for all AIRA team members regarding where information should live, how it should be referenced, how it should be indexed, and how AI tools should access it. It is intended to eliminate confusion between the roles of GitHub, GitNexus, Obsidian, LLM Wiki / LightRAG, and AI assistants.

Define the authoritative source for source code, documentation, evidence, and derived knowledge artifacts.

Prevent copying the whole codebase into Obsidian and creating uncontrolled duplicate sources.

Define the correct flow from code to code intelligence to curated documentation and AI retrieval.

Provide a phased implementation approach for the centralized AIRA Knowledge Platform.

Support AIRA’s AI-native, DevSecOps, AVCI, classification-aware, and evidence-driven operating model.

## 3. Scope

| **In Scope** | **Out of Scope** |
| --- | --- |
| GitHub/GitNexus, Central Obsidian, LLM Wiki/LightRAG, AIRA Knowledge API/MCP connector, Codex, ChatGPT, Claude, Hermes Agent, evidence summaries, code intelligence summaries, repository references. | Copying the entire source code repository into Obsidian, using Obsidian as a build system, bypassing GitHub pull request controls, storing secrets/tokens/raw logs in Obsidian, uncontrolled public exposure of internal knowledge services. |
| Team operating model for source-of-truth, documentation, indexing, and AI-assisted reference. | Production hardening details for every container, detailed Kubernetes Helm values, vendor-specific LLM Wiki implementation internals. |

## 4. Final Architecture Principle

**AIRA Golden Source Rule: **Code lives in GitHub. Code intelligence lives in GitNexus. Governed knowledge lives in Obsidian. Unified retrieval lives in LLM Wiki / LightRAG. AI assistants access all sources through a governed AIRA Knowledge API, MCP connector, or approved indexing layer.

### 4.1 One-Directional Governance Flow

Golden Source Repository / Approved Documentation

↓

Controlled indexing and code intelligence extraction

↓

AI-assisted work with citations, references, and evidence

↓

Pull Request / Review / Approval / CI Evidence

↓

Approved update returns to Golden Source

## 5. Golden Source Boundaries

| **Artifact Type** | **Golden Source** | **May Be Indexed By** | **May Be Summarized Into Obsidian?** |
| --- | --- | --- | --- |
| Source code | GitHub / Git repository | GitNexus, LLM Wiki / LightRAG, AIRA Knowledge API | Yes, summary only |
| Unit/integration tests | GitHub | GitNexus, CI evidence tools | Yes, test evidence summary only |
| OPA/Rego policies | GitHub | LLM Wiki / LightRAG, policy registry | Yes, policy summary and links |
| Docker/Kubernetes manifests | GitHub | GitNexus, DevSecOps scanners | Yes, deployment summary only |
| AIRA standards and guides | Central Obsidian / Git-backed docs repo | LLM Wiki / LightRAG | Yes, primary content |
| ADRs / TDLs | Central Obsidian / Git-backed docs repo | LLM Wiki / LightRAG | Yes, primary content |
| Runbooks / SOPs | Central Obsidian / Git-backed docs repo | LLM Wiki / LightRAG | Yes, primary content |
| Security scan results | CI artifact store / evidence repository | Evidence index / GitNexus summaries | Yes, curated summary only |
| Raw logs / telemetry | Observability platform | Log analytics / governed AI processing | No raw copy; summary only |
| Secrets / tokens / credentials | Vault / secret manager | Never indexed | Never |

## 6. Target AIRA Knowledge Access Architecture

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

## 7. Do Not Copy the Whole Codebase to Obsidian

The team must not copy the full source code repository from GitHub or GitNexus into Obsidian. This is prohibited because it creates duplicate sources of truth, increases drift risk, slows the vault, may leak sensitive files, and weakens AVCI traceability.

| **Prohibited Pattern** | **Risk** |
| --- | --- |
| Copying backend/frontend source folders into Obsidian | Creates duplicate code source and drift risk. |
| Copying configuration files containing secrets or environment values | Creates credential and data leakage risk. |
| Using Obsidian as the place where code changes are made | Bypasses Git branching, CI, review, and evidence controls. |
| Using Obsidian as the authoritative source for executable code | Violates Git as Golden Source and weakens reproducibility. |
| Indexing uncontrolled raw code without classification and access rules | May expose sensitive implementation details beyond the intended role or context. |

## 8. Permitted Derived Artifacts in Obsidian

Obsidian may contain curated, generated, or reviewed derived artifacts from GitHub/GitNexus. These must reference the exact repository, branch, commit, path, tool, timestamp, and classification.

| **Permitted Derived Artifact** | **Example Filename / Content** |
| --- | --- |
| Codebase map | PoC1_Login_Codebase_Map.md |
| API summary | Login_API_Contract_Summary.md |
| MicroFunction step map | AUTH_LOGIN_CONTEXT_ESTABLISH_Step_Map.md |
| Dependency graph summary | Login_Service_Dependency_Map.md |
| GitNexus impact report | PoC1_Login_GitNexus_Impact_Report.md |
| Test evidence summary | PoC1_Test_Evidence_Summary.md |
| Security scan summary | PoC1_SAST_DAST_SBOM_Summary.md |
| Release evidence note | PoC1_Release_Evidence.md |
| Architecture diagram | Login_Context_Establishment_Sequence.md |

## 9. Knowledge and Code Flow

### 9.1 Documentation Flow

AIRA Standards / Policies / ADRs / Runbooks

↓

Central Obsidian Vault / Git-backed Documentation Repository

↓

LLM Wiki / LightRAG Index

↓

ChatGPT / Codex / Claude / Hermes Reference

### 9.2 Code Flow

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

### 9.3 AI Knowledge Flow

Obsidian Docs + GitHub Code + GitNexus Metadata + Evidence Store

↓

AIRA Knowledge API / LLM Wiki / LightRAG

↓

AI Assistant retrieves relevant documentation, code references, policy, and evidence

↓

Generated output includes references, assumptions, and AVCI compliance summary

## 10. AI Access Model

| **Tool / Actor** | **Recommended Access Pattern** | **Notes** |
| --- | --- | --- |
| ChatGPT Project / Business Workspace | Project files, supported connectors, or custom AIRA Knowledge API / MCP connector | Cloud-hosted ChatGPT cannot directly access private LAN IP addresses without a secure connector. |
| Codex local / desktop | Can access LAN resources available to developer workstation, subject to policy | Should still use approved knowledge sources and avoid unmanaged scraping. |
| Codex cloud / cloud agents | Secure authenticated HTTPS API / connector only | Private RFC1918 IPs are not directly reachable. |
| Claude Code / local AI tooling | Local reference to Git repo and central documentation vault, subject to access control | Must follow CLAUDE.md and AIRA knowledge hierarchy. |
| Hermes Agent / Agentic OS | AIRA Knowledge API with SBAC, classification filter, audit, and guardrails | Should never bypass policy, classification, or human approval requirements. |
| Human developers | Central GitHub + Central Obsidian + LLM Wiki UI | Avoid maintaining private divergent vaults as authoritative sources. |

## 11. Containerized Platform Direction

The final AIRA platform may be deployed using Docker and Kubernetes. Server-side services should be containerized where appropriate. Desktop-only tools should remain developer workstation tools and should not be misrepresented as central server services.

| **Component** | **Containerize?** | **Recommended Role** |
| --- | --- | --- |
| LLM Wiki | Yes | Knowledge index and web UI. |
| LightRAG / LiteRAG | Yes | Retrieval and indexing service. |
| GitNexus | Yes, if server deployment is supported | Code intelligence, impact analysis, code maps. |
| AIRA Knowledge API / MCP Connector | Yes | Secure controlled bridge for AI assistants. |
| LiteLLM / OpenRouter gateway | Yes | Model routing, rate limiting, audit, provider abstraction. |
| NeMo Guardrails | Yes | Guardrail service for AI outputs and action boundaries. |
| Hermes Agent | Yes | Agent orchestration layer. |
| OPA | Yes | Policy decision point. |
| PostgreSQL / pgvector | Yes | Metadata, evidence, vector index; HA later. |
| Redis / Valkey | Yes | Cache and acceleration layer. |
| SAST / DAST / SBOM / Secret scanning tools | Yes | CI worker and evidence generation tools. |
| Obsidian desktop | No | Human editor/viewer; vault should be Git-backed. |
| GitLens / VS Code plugins | No | Developer workstation tools. |
| Git Extensions | No | Developer workstation tool. |

## 12. Team Operating Model

| **Role** | **Responsibility** |
| --- | --- |
| Jun / Architecture Governance | Own AIRA standards, approve Golden Source changes, validate AVCI compliance. |
| Krisha / Temporary Knowledge Curator | Maintain temporary PoC Obsidian curator vault until central Golden Source is operational. |
| Software Developers | Use GitHub for code, use Obsidian/LLM Wiki for standards and curated references, include AVCI evidence in PRs. |
| DBA | Maintain approved schema, migration, metadata, and evidence storage patterns. |
| DevSecOps Lead | Implement CI/CD, scanning, SBOM, secret scanning, evidence capture, and deployment controls. |
| Security Reviewer | Review classification, secret handling, access patterns, AI boundaries, and policy enforcement. |
| AI Governance / Hermes Agent Owner | Ensure AI assistants retrieve from approved sources only and do not bypass guardrails or policy. |

## 13. Governance Controls

| **Control Area** | **Required Control** |
| --- | --- |
| Attributability | Every derived artifact must identify repository, branch, commit hash, source path, author/tool, generated date, and reviewer. |
| Verifiability | Summaries must link back to exact source files, commits, CI evidence, or GitNexus reports. |
| Classifiability | Every document and derived artifact must include classification metadata and access constraints. |
| Improvability | Every summary or report must include findings, gaps, and recommended improvement actions where applicable. |
| Drift control | Developer personal vaults must not become authoritative; central Git-backed documentation is the controlled source. |
| Sensitive data | Secrets, tokens, credentials, raw JWTs, raw production logs, and PII must not be copied into Obsidian or AI prompts. |
| AI access | AI tools must use approved connectors, citations, and classification-aware retrieval paths. |
| Pull request evidence | All code changes must include AVCI, SOLID, test, security, and architecture compliance summaries. |

## 14. Implementation Phases

| **Phase** | **Description** | **Exit Criteria** |
| --- | --- | --- |
| Phase 1 - PoC Curator Vault | Use Krisha’s Obsidian as temporary curated vault, synchronized to Git where possible. | Team can reference a common curated source without relying on scattered personal vaults. |
| Phase 2 - Central Golden Source Repository | Create central Git-backed AIRA documentation repository and central Obsidian vault checkout. | Approved AIRA documents have version control, review, and classification metadata. |
| Phase 3 - LLM Wiki / LightRAG Index | Index central documentation, selected derived artifacts, and approved code references. | Search and retrieval return source references and classification-aware results. |
| Phase 4 - GitNexus Integration | Connect GitNexus to GitHub for code intelligence and impact reports. | Code maps and impact summaries are generated and linked to commits. |
| Phase 5 - AIRA Knowledge API / MCP Connector | Expose controlled search/fetch/citation API for ChatGPT, Codex, Claude, Hermes, and agents. | AI assistants can retrieve approved knowledge with audit, provenance, and classification controls. |
| Phase 6 - Kubernetes Platform | Containerize and deploy LLM Wiki, LightRAG, Knowledge API, GitNexus, LiteLLM, NeMo Guardrails, Hermes, OPA, and evidence services. | Platform is reproducible, observable, policy-governed, and secured. |

## 15. Acceptance Checklist

| **Checklist Item** | **Required?** |
| --- | --- |
| GitHub remains authoritative for source code. | Yes |
| Obsidian does not contain full copied source code. | Yes |
| Obsidian contains curated summaries, standards, ADRs, runbooks, prompts, and evidence. | Yes |
| GitNexus generates code intelligence and impact analysis from GitHub. | Yes |
| LLM Wiki / LightRAG indexes approved documentation and code references. | Yes |
| AIRA Knowledge API / MCP connector enforces classification and SBAC. | Yes |
| AI assistants can cite or reference the source of retrieved knowledge. | Yes |
| Derived artifacts include source_repo, branch, commit_hash, path, generated_by, generated_at, and classification. | Yes |
| Secrets, raw tokens, raw credentials, and raw production data are excluded. | Yes |
| PR/MR evidence includes AVCI and SOLID compliance summary. | Yes |

## 16. Appendix A - Derived Artifact Metadata Template

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

classification: Internal

avci:

attributable: true

verifiable: true

classifiable: true

improvable: true

related_adrs:

- ADR-AIRA-2026-xxx

---

## 17. Appendix B - Standard Team Instruction

**Instruction to Software Developers and AI Assistants: **Do not copy the whole AIRA source code repository into Obsidian. Source code must remain in GitHub as the Golden Source and must be analyzed through GitNexus, CI/CD, and approved indexing services. Obsidian must contain governed documentation, AIRA standards, ADRs, runbooks, prompt standards, curated diagrams, and derived evidence summaries that reference exact Git commits and paths. LLM Wiki / LightRAG may index both documentation and approved code references through controlled connectors. Any AI-assisted output must reference the approved AIRA documentation and must include AVCI evidence, classification awareness, SOLID/Clean Architecture compliance, security posture, testability, observability, and reversibility considerations.

## 18. Appendix C - Prohibited and Required Patterns

| **Prohibited** | **Required Alternative** |
| --- | --- |
| Copy entire backend/frontend repository to Obsidian. | Index GitHub read-only and store only summaries/references in Obsidian. |
| Use private developer vaults as final source of truth. | Use central Git-backed AIRA documentation repository. |
| Let AI assistants browse uncontrolled local folders. | Use AIRA Knowledge API / approved connectors with audit and classification. |
| Store raw logs, tokens, or secrets in Obsidian. | Store only safe summaries and use Vault/observability tools for protected data. |
| Activate architecture/code changes without PR evidence. | Use GitHub PR, CI gates, GitNexus impact analysis, and AVCI compliance summary. |

## 19. Final Recommendation

AIRA should implement a central, Git-backed knowledge architecture where GitHub/GitNexus remains authoritative for source code and code intelligence, Central Obsidian remains authoritative for governed human-readable knowledge, LLM Wiki / LightRAG provides unified retrieval, and the AIRA Knowledge API / MCP connector provides secure AI access. This design preserves Golden Source discipline, prevents drift, supports AVCI, and enables ChatGPT, Codex, Claude, Hermes Agent, and future AI agents to work from the same governed knowledge base without copying the whole codebase into Obsidian.

No, Jun — do not copy the whole codebase from GitHub/GitNexus into Obsidian.

The better AIRA-compliant design is:

GitHub/GitNexus remains the Golden Source for source code. Obsidian remains the Golden Source for human-readable knowledge, standards, architecture, policies, ADRs, prompts, runbooks, and curated evidence. LLM Wiki/LightRAG indexes both through controlled connectors.

## Correct Architecture Interpretation

### Do Not Do This

GitHub / GitNexus

↓

Copy whole source code into Obsidian

↓

LLM Wiki indexes Obsidian

This will create:

| **Risk** | **Why It Is Bad** |
| --- | --- |
| Drift | Code in GitHub and copied code in Obsidian will become inconsistent |
| Large vault size | Obsidian becomes slow and polluted |
| Security risk | Secrets, configs, or sensitive code may accidentally be copied |
| Poor developer workflow | Developers should work from Git, not Obsidian copies |
| Weak AVCI | Harder to prove which code version is authoritative |
| Duplicate Golden Source | Violates one-source-of-truth discipline |

## Recommended Design

### GitHub / GitNexus should be referenced and indexed, not copied wholesale.

┌────────────────────────────┐

│ GitHub / GitNexus │

│ Source Code Golden Source │

└─────────────┬──────────────┘

│

│ read-only indexing / metadata extraction

▼

┌────────────────────────────┐

│ GitNexus Code Intelligence │

│ impact graph, code map, │

│ dependency analysis │

└─────────────┬──────────────┘

│

│ summaries, references, evidence

▼

┌────────────────────────────┐ ┌────────────────────────────┐

│ Central Obsidian Vault │ │ LLM Wiki / LightRAG │

│ Docs, standards, ADRs, │◄──►│ Unified Knowledge Index │

│ prompts, runbooks, evidence │ │ Docs + Code + Evidence │

└────────────────────────────┘ └────────────────────────────┘

## What Goes to GitHub / GitNexus

GitHub remains the source of truth for:

| **Item** | **Store in GitHub?** |
| --- | --- |
| Source code | Yes |
| Unit tests | Yes |
| Integration tests | Yes |
| Frontend code | Yes |
| Backend code | Yes |
| Database migrations | Yes |
| OPA/Rego policies | Yes |
| Dockerfiles | Yes |
| Kubernetes manifests | Yes |
| GitHub Actions / CI workflows | Yes |
| API contracts | Yes |
| Architecture-as-code | Yes |
| Devcontainer definitions | Yes |
| Mermaid diagrams inside technical docs | Yes |
| Code evidence artifacts | Yes, or artifact repository |

GitNexus should analyze the GitHub repository and produce:

| **GitNexus Output** | **Purpose** |
| --- | --- |
| Code intelligence graph | Understand dependencies and impact |
| Function/class/module map | Explain code structure |
| Change impact analysis | Identify affected areas |
| Code ownership mapping | Support attribution |
| Security-sensitive code map | Help review critical areas |
| PR/MR evidence summary | Support AVCI |
| Architecture drift detection | Compare actual code vs intended architecture |

## What Goes to Central Obsidian

Obsidian should contain curated knowledge, not raw full codebase copies.

| **Item** | **Store in Obsidian?** |
| --- | --- |
| AIRA standards | Yes |
| Architecture blueprints | Yes |
| MicroFunction design patterns | Yes |
| Developer guides | Yes |
| ADRs / technical decision logs | Yes |
| Prompt standards | Yes |
| Sprint plans / PoC definitions | Yes |
| Database design documents | Yes |
| API design summaries | Yes |
| Security policies | Yes |
| Runbooks / SOPs | Yes |
| Evidence summaries | Yes |
| Codebase summaries | Yes |
| GitNexus impact reports | Yes |
| Full source code | No |
| Raw logs | No |
| Raw tokens/secrets/config dumps | No |

## What Can Be Synced from GitHub to Obsidian

You may sync selected derived artifacts, not the entire codebase.

Recommended items:

| **Derived Artifact** | **Example** |
| --- | --- |
| Codebase map | AIRA Backend Module Map.md |
| API summary | Login API Contract Summary.md |
| MicroFunction catalog summary | AUTH_LOGIN_CONTEXT_ESTABLISH Step Map.md |
| Dependency graph summary | Login Service Dependency Map.md |
| GitNexus impact report | PoC1 Login Impact Analysis.md |
| Test evidence summary | PoC1 Test Evidence Summary.md |
| Security scan summary | PoC1 SAST-DAST-SBOM Summary.md |
| ADR links | ADR-AIRA-2026-xxx.md |
| Mermaid diagrams | Sequence/component/context diagrams |
| Release evidence | Version, commit hash, build number, artifact hash |

Each Obsidian summary should reference the exact Git source:

source_repo: aira-platform

source_branch: main

commit_hash: abc123...

git_path: backend/src/main/java/...

generated_by: GitNexus

generated_at: 2026-05-20

classification: Internal

avci_status: verifiable

That preserves AVCI.

## Correct Flow

## 1. Documentation Flow

AIRA Standards / Policies / ADRs

↓

Central Obsidian Vault

↓

LLM Wiki / LightRAG

↓

ChatGPT / Codex / Claude / Hermes use as reference

## 2. Code Flow

Developer / Codex

↓

GitHub Pull Request

↓

CI/CD + SAST + DAST + Tests

↓

GitNexus Code Intelligence

↓

Impact Summary / Evidence Summary

↓

Obsidian / LLM Wiki

## 3. AI Knowledge Flow

Obsidian Docs + GitHub Code + GitNexus Metadata

↓

AIRA Knowledge API / LLM Wiki / LightRAG

↓

AI assistants retrieve relevant standards, specs, code references, and evidence

## Important Design Rule

The direction should not be:

GitHub code copied into Obsidian

The direction should be:

GitHub code indexed by GitNexus / LLM Wiki

Obsidian stores curated explanations and references

## Practical Example

For PoC 1 Login:

### In GitHub

backend/src/main/java/.../LoginController.java

backend/src/main/java/.../MicroFunctionCoordinator.java

backend/src/main/resources/db/migration/V1__...

frontend/src/pages/Login.tsx

opa/auth/login.rego

docker-compose.yml

.github/workflows/ci.yml

### In Obsidian

22-AIRA_Login_and_Session_Establishment_MicroFunction_Design_Pattern_v1.1.md

23-AIRA_Login_PoC1_Developer_Source_Code_Generation_Standard_v1.1.md

24-AIRA_Login_PoC1_MicroFunction_Runtime_Configuration_Database_Schema_Standard_v1.1.md

PoC1_Login_Codebase_Map.md

PoC1_Login_Test_Evidence_Summary.md

PoC1_Login_GitNexus_Impact_Report.md

PoC1_Login_Security_Scan_Summary.md

The Obsidian file may say:

Related Source Code:

- Repository: aira-platform

- Branch: main

- Commit: abc123

- Backend path: backend/src/main/java/com/aira/auth

- Frontend path: frontend/src

- OPA policy: opa/auth/login.rego

- Flyway migration: backend/src/main/resources/db/migration

But it should not contain the full copied code.

## Final Recommendation

### Use this rule:

Code lives in GitHub. Code intelligence lives in GitNexus. Governed knowledge lives in Obsidian. Unified retrieval lives in LLM Wiki/LightRAG. AI assistants access all of them through a governed knowledge API or connector.

So the final architecture should be adjusted as:

GitHub / GitNexus ───────► LLM Wiki / LightRAG

│ ▲

│ │

▼ │

Derived summaries/evidence │

│ │

▼ │

Central Obsidian Vault ───────────┘

This avoids duplication, preserves the Golden Source, supports AVCI, and allows ChatGPT/Codex/Hermes to reference both documentation and code without corrupting the knowledge base.


