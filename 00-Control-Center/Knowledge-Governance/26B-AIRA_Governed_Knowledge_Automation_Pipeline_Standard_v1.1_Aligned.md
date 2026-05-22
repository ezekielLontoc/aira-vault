---
document_id: "AIRA-DOC-026B"
title: "AIRA Governed Knowledge Automation Pipeline Standard"
version: "v1.1"
status: "aligned"
source_file: "26B-AIRA_Governed_Knowledge_Automation_Pipeline_Standard_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "00-Control-Center/Knowledge-Governance"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - knowledge-governance
  - automation-pipeline
---

# AIRA Governed Knowledge Automation Pipeline Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA Governed Knowledge Automation Pipeline Standard**

_Automated Source Projection | Metadata Validation | LLM Wiki Refresh | Human Review Gates_

**v1.1 - Canonical 26B Numbering and Pack 03 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-026B** |
| **Document Title** | **AIRA Governed Knowledge Automation Pipeline Standard** |
| **Document Version** | **v1.1 - Canonical 26B Numbering and Pack 03 v1.2 Alignment Update** |
| **Supersedes** | **26-AIRA_Governed_Knowledge_Automation_Pipeline_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **Knowledge automation companion** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Defines controlled automation for projecting, validating, indexing, refreshing, and quarantining AIRA knowledge artifacts.

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

Renumbered from duplicate Document 26 to 26B to distinguish it from the Data Classification, Retention, and Evidence Register.

Aligned automation pipeline with Pack 03 suffix-numbering cleanup and Obsidian upload preparation.

Added validation for Java 25 backend metadata when source artifacts include code, CI, devcontainer, GitNexus, or assistant prompts.

Clarified that automation may propose projections and index refreshes but cannot promote unreviewed knowledge to authoritative status.

Reinforced conflict detection, classification checks, retrieval eligibility, human review, and rollback of knowledge-index changes.

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

AI-Native Project - AIRA v3.0

**Governed Knowledge Automation Pipeline Standard**

For AIRA Documentation, Code Intelligence, Evidence Summaries, and AI Knowledge Retrieval

| **Document ID** | **Version** | **Status** | **Classification** |
| --- | --- | --- | --- |
| 26-AIRA_Governed_Knowledge_Automation_Pipeline_Standard | v1.0 | Draft for Team Review | Internal |

| **Prepared For** | **Prepared By** | **Target Audience** | **Date** |
| --- | --- | --- | --- |
| AIRA Software Development, DevSecOps, Security, DBA, Architecture, and AI Enablement Teams | Jun Elloso / AIRA Architecture Governance | Solutions Architects, Developers, DevSecOps, DBA, Security, Knowledge Curators, AI Tool Owners | 20 May 2026 |

| **AIRA Principle: **Code lives in GitHub. Code intelligence lives in GitNexus. Governed knowledge lives in Obsidian. Unified retrieval lives in LLM Wiki/LightRAG. AI assistants access knowledge through controlled, classifiable, attributable, verifiable, and improvable flows. |
| --- |

## 1. Document Control

| **Field** | **Value** |
| --- | --- |
| Document Title | AIRA Governed Knowledge Automation Pipeline Standard |
| Document ID | 26-AIRA_Governed_Knowledge_Automation_Pipeline_Standard |
| Version | v1.0 |
| Status | Draft for Team Review |
| Classification | Internal. Reclassify as Confidential if environment-specific URLs, infrastructure details, or sensitive operational controls are added. |
| Primary Owner | AIRA Architecture Governance / Jun Elloso |
| Process Owners | DevSecOps Lead, Security Lead, Knowledge Governance Owner, DBA Lead, Development Lead |
| Effective Scope | AIRA documentation, GitHub/GitNexus code intelligence, Obsidian knowledge vault, LLM Wiki/LightRAG indexing, AI assistant retrieval, and evidence automation |
| Review Cadence | At minimum every major PoC increment, every major toolchain change, or every major architecture change |

### 1.1 Companion Document Alignment

| **Companion Artifact** | **Alignment Purpose** |
| --- | --- |
| 01-AIRA_AVCI_Engineering_Standard | Defines Attributable, Verifiable, Classifiable, and Improvable evidence requirements. |
| 02-AIRA_Engineering_Blueprint | Defines the architecture discipline and cross-system invariants. |
| 05-AIRA_AI-Native_Information_Nervous_System | Defines the reasoning axes and knowledge/evidence source taxonomy. |
| 10-AIRA_MicroFunction_Framework | Defines runtime assembly, policy, evidence, and reproducibility expectations. |
| 11-AIRA_AI-Native_DevSecOps_Standard | Defines CI/CD evidence, scan, test, review, and release control expectations. |
| 13-AIRA_Obsidian_and_LLM_Wiki_Knowledge_Governance_Standard | Defines Obsidian/LLM Wiki usage, metadata, and governance. |
| 14-AIRA_ADR_and_TDL_Standard | Defines decision traceability and technical decision logging. |
| 18-AIRA_Repository_Bootstrap_and_Golden_Source_Implementation_Guide | Defines repository and Golden Source structure. |
| 25-AIRA_Knowledge_Access_Architecture_and_Golden_Source_Standard | Defines source-of-truth boundaries across GitHub, GitNexus, Obsidian, and LLM Wiki. |

## 2. Executive Summary

This standard formalizes the governed automation approach for keeping AIRA documentation, code intelligence, evidence summaries, and AI knowledge indexes up to date while preventing drift, duplication, Obsidian vault pollution, security leakage, weak AVCI evidence, and duplicate Golden Sources.

The standard does not require copying the whole source code repository into Obsidian. GitHub/GitNexus remains the Golden Source for source code and code intelligence. Obsidian remains the curated knowledge repository for standards, architecture, ADRs, runbooks, prompts, and reviewed evidence summaries. LLM Wiki/LightRAG indexes approved and permitted knowledge sources. AI assistants retrieve from the governed knowledge layer, subject to classification, SBAC, freshness, provenance, and AVCI controls.

Automation is required, but automation must be governed. AIRA should automate detection, validation, scanning, summary generation, evidence collection, re-indexing, and freshness manifest updates. AIRA should not automatically publish unreviewed canonical standards, overwrite approved knowledge artifacts, expose Restricted content, or allow AI to bypass review gates.

## 3. Purpose

Define the AIRA-compliant automation model for documentation, code intelligence, evidence generation, and AI knowledge retrieval.

Ensure AIRA knowledge remains up to date without copying the full source code into Obsidian.

Prevent drift between GitHub/GitNexus, Obsidian, LLM Wiki, LightRAG, and AI assistant context.

Establish human approval gates for canonical knowledge while allowing automated validation and indexing.

Ensure every generated or indexed artifact remains attributable, verifiable, classifiable, and improvable.

## 4. Scope

| **In Scope** | **Out of Scope** |
| --- | --- |
| Git-backed Central Obsidian Vault automation | Copying the whole codebase into Obsidian |
| LLM Wiki/LightRAG re-index automation | Publishing unreviewed AI-generated standards as canonical |
| GitNexus code map, impact summary, and evidence summary generation | Replacing GitHub/GitNexus as the source of truth for code |
| Metadata, classification, secret scanning, and freshness checks | Bypassing security review, architect review, or PR/MR review |
| AIRA Knowledge API / future MCP connector pattern | Direct unauthenticated AI access to private services |
| AVCI evidence templates and manifest updates | Storing raw tokens, secrets, passwords, or restricted content in AI indexes |

## 5. Foundational Design Rule

| **Mandatory Rule: **Do not copy the full codebase into Obsidian. Automate controlled extraction, summarization, validation, evidence generation, and indexing. GitHub remains the code Golden Source. Obsidian remains the curated knowledge Golden Source. GitNexus provides code intelligence. LLM Wiki/LightRAG provides retrieval. AIRA Knowledge API enforces classification, SBAC, freshness, provenance, and AVCI before AI assistants use the information. |
| --- |

| **System** | **Authoritative Responsibility** |
| --- | --- |
| GitHub / Git Repository | Source code, tests, CI/CD definitions, OPA policies, database migrations, infrastructure-as-code, devcontainer definitions, and release artifacts. |
| GitNexus | Code intelligence, impact analysis, dependency graph, ownership map, architecture drift signal, and PR/MR evidence support. |
| Central Obsidian Vault | Curated AIRA standards, architecture, ADRs, prompt standards, runbooks, reviewed evidence summaries, and knowledge indexes. |
| LLM Wiki / LightRAG | Unified retrieval index for approved documentation, derived summaries, permitted code references, and evidence. |
| AIRA Knowledge API / MCP Connector | Secure search/fetch layer with SBAC, classification, freshness, provenance, and audit enforcement. |
| AI Assistants | Consumers of governed knowledge. They may generate recommendations or drafts but must not overwrite canonical artifacts directly. |

## 6. Correct Governed Flows

### 6.1 Documentation Flow

AIRA Standards / Policies / ADRs
 -> Central Docs Repository / Obsidian Vault
 -> PR Review + Metadata Validation + Classification Check
 -> Approved Markdown / Attachments
 -> LLM Wiki / LightRAG Re-index
 -> AI Assistants use approved documentation as reference

| **Automation** | **Purpose** |
| --- | --- |
| Git sync for Obsidian vault | Keeps central documentation version-controlled and reviewable. |
| Metadata checker | Ensures document ID, version, owner, classification, status, and approval metadata exist. |
| Broken-link checker | Ensures Obsidian links, backlinks, and references remain valid. |
| Classification scanner | Prevents Confidential/Restricted content from being exposed incorrectly. |
| LLM Wiki re-index trigger | Re-indexes approved changed files automatically. |
| Knowledge freshness manifest update | Records latest indexed version, source hash, artifact hash, and timestamp. |

### 6.2 Code Flow

Developer / Codex
 -> GitHub Pull Request
 -> CI/CD + Unit Tests + SAST + DAST + SBOM + Secret Scan
 -> GitNexus Code Intelligence
 -> Generated Code Map / Impact Summary / Evidence Summary
 -> Review Gate
 -> Obsidian / LLM Wiki

| **Code Flow Rule: **The full codebase must not be synchronized into Obsidian. Only reviewed derived artifacts, code intelligence summaries, maps, evidence summaries, and links to exact Git references may be added to Obsidian. |
| --- |

### 6.3 AI Knowledge Flow

Obsidian Docs + GitHub Code + GitNexus Metadata + Evidence Summaries
 -> AIRA Knowledge API / LLM Wiki / LightRAG
 -> Classification + SBAC + Freshness Check
 -> ChatGPT / Codex / Claude / Hermes retrieve approved context

| **AI Retrieval Question** | **Required AIRA Answer** |
| --- | --- |
| What is the latest approved standard? | Document ID, version, status, owner, approval date, and source hash. |
| What code version is referenced? | Repository, branch, commit hash, source path, and generator metadata. |
| Is the index fresh? | Indexed timestamp, source hash, artifact hash, and stale/valid status. |
| Is the content allowed for this user or AI assistant? | Classification decision and SBAC authorization result. |
| Is this canonical or generated? | Source type, provenance, review status, and evidence references. |

## 7. Why Automation Is Required

| **Risk** | **Why It Is Bad** | **AIRA Control** |
| --- | --- | --- |
| Drift | Code in GitHub and copied code in Obsidian can become inconsistent. | Source hash, commit hash, freshness manifest, and derived summaries only. |
| Large vault size | Obsidian becomes slow, polluted, and hard to curate. | Store curated docs and summaries, not full raw code or heavy artifacts. |
| Security risk | Secrets, configs, tokens, or sensitive code may be copied accidentally. | Secret scan, classification scan, redaction, and retrieval access controls. |
| Poor developer workflow | Developers should work from Git, not Obsidian copies. | Keep GitHub/GitNexus as code authority; Obsidian stores knowledge and evidence. |
| Weak AVCI | It becomes difficult to prove which version is authoritative. | Require provenance, hash, author/generator, approval, and indexed timestamp. |
| Duplicate Golden Source | Multiple “truths” violate one-source discipline. | Define clear authority boundaries and prohibit full-code duplication. |

## 8. Governed Automation Pipeline

Source Change
 -> Automated Detection
 -> Validation and Security Checks
 -> Derived Summary / Evidence Generation
 -> Human Approval for Canonical Knowledge
 -> LLM Wiki / LightRAG Indexing
 -> AI Retrieval with Freshness, Classification, SBAC, and Provenance

The pipeline must be event-driven where practical. It may also use scheduled jobs for freshness validation, stale-index detection, link checking, and drift monitoring.

### 8.1 Event Triggers

| **Event** | **Automated Action** |
| --- | --- |
| AIRA documentation PR merged | Validate metadata, update document register, re-index approved documents. |
| ADR approved | Update ADR index, architecture decision register, and LLM Wiki. |
| Code PR merged | Run GitNexus scan and generate code intelligence summaries. |
| CI/CD completed | Generate build, test, security, and release evidence summaries. |
| SAST/DAST/SBOM completed | Generate security evidence summary and attach to release evidence. |
| MicroFunction runtime config changed | Generate runtime definition map and validation evidence. |
| OPA policy changed | Run policy tests and update policy evidence summary. |
| LLM Wiki/LightRAG indexing completed | Update knowledge freshness manifest. |
| Stale index detected | Raise alert, mark stale, or block AI reference depending on classification/criticality. |

### 8.2 Validation Gates

| **Gate** | **Minimum Check** |
| --- | --- |
| Metadata gate | Document ID, version, owner, status, classification, source, approval metadata. |
| Classification gate | Classification label exists and retrieval policy can enforce it. |
| Secret scanning gate | No secrets, passwords, raw tokens, reset tokens, private keys, or MFA secrets. |
| Source integrity gate | Source hash and artifact hash are generated and stored. |
| Link integrity gate | Obsidian links, source references, and code paths are valid. |
| AVCI evidence gate | Attributable, Verifiable, Classifiable, and Improvable fields are complete. |
| Index freshness gate | Indexed version equals latest approved version unless explicitly marked stale. |
| Access control gate | SBAC and classification policy allow the requesting actor/tool to retrieve the content. |

## 9. Automation Decision Matrix

### 9.1 Fully Automate

| **Item** | **Recommendation** |
| --- | --- |
| Re-indexing approved documents | Fully automate after successful validation. |
| GitNexus scan after PR merge | Fully automate. |
| CI/CD evidence collection | Fully automate. |
| Test result summary generation | Fully automate, subject to review if published as formal evidence. |
| SAST/DAST/SBOM summary generation | Fully automate, subject to classification/redaction. |
| Knowledge freshness manifest update | Fully automate. |
| Broken link detection | Fully automate. |
| Drift detection | Fully automate and alert. |

### 9.2 Automate with Human Review

| **Item** | **Required Review** |
| --- | --- |
| New AIRA standard | Architect or document owner approval. |
| ADR creation or update | Architecture governance approval. |
| Code impact summary published to Obsidian | Technical reviewer approval. |
| AI-generated runbook | Operations/security approval. |
| AI incident analysis | Human decision remains mandatory. |
| Policy changes | Security review and policy test approval. |
| MicroFunction runtime configuration | Architecture/security approval before activation. |

### 9.3 Do Not Automate Directly

| **Prohibited Automation** | **Reason** |
| --- | --- |
| Copying full codebase into Obsidian | Causes drift, security risk, and duplicate Golden Source. |
| Direct AI modification of canonical standards | Violates governance and weakens AVCI. |
| Automatic activation of security policies without approval | May introduce fail-open or lockout risk. |
| Automatic account unlock | Requires human approval and separation of duties. |
| Publishing Restricted content to AI index without approval | Violates classification-aware routing. |
| Overwriting approved documents without PR/MR review | Weakens traceability and change control. |

## 10. Derived Artifacts Allowed in Obsidian

| **Allowed Derived Artifact** | **Example File** |
| --- | --- |
| Codebase map | PoC1_Login_Codebase_Map.md |
| API summary | PoC1_Login_API_Summary.md |
| MicroFunction runtime map | PoC1_AUTH_LOGIN_CONTEXT_ESTABLISH_Runtime_Map.md |
| GitNexus impact report | PoC1_Login_GitNexus_Impact_Report.md |
| Test evidence summary | PoC1_Login_Test_Evidence_Summary.md |
| Security scan summary | PoC1_Login_SAST_DAST_SBOM_Summary.md |
| Release evidence summary | PoC1_Login_Release_Evidence_Summary.md |
| ADR summary | ADR-AIRA-2026-xxx_Summary.md |

| **Provenance Rule: **Every derived artifact must reference the exact repository, branch, commit hash, source paths, generator, generated timestamp, approver, approval timestamp, classification, source hash, artifact hash, and index timestamp. |
| --- |

## 11. Recommended Folder Structure

### 11.1 Central Obsidian / Knowledge Repository

AIRA-Knowledge/
├── 00-Control/
│ ├── Document-Control-Register.md
│ ├── Knowledge-Freshness-Manifest.md
│ └── Classification-Register.md
├── 01-Standards/
├── 02-Architecture/
├── 03-ADRs/
├── 04-MicroFunction/
├── 05-DevSecOps/
├── 06-Runbooks/
├── 07-Policies/
├── 08-PoC/
│ ├── PoC1-Login/
│ └── PoC2-Identity-Lifecycle/
├── 09-Derived-Evidence/
│ ├── Code-Maps/
│ ├── GitNexus-Reports/
│ ├── Test-Evidence/
│ ├── Security-Scan-Summaries/
│ └── Release-Evidence/
└── 10-Indexes/
 ├── LLM-Wiki-Index-Manifest.md
 └── LightRAG-Index-Manifest.md

### 11.2 GitHub Source Code Repository

aira-platform/
├── backend/
├── frontend/
├── opa/
├── db/
├── infra/
├── docs/
├── tests/
├── .github/workflows/
└── evidence/

The GitHub evidence folder may contain machine-readable build evidence. Obsidian should contain curated summaries rather than raw heavy artifacts.

## 12. Knowledge Freshness Manifest

The knowledge freshness manifest is the control file that tells humans and AI assistants whether the indexed knowledge is approved, current, stale, superseded, draft, or restricted.

knowledge_item_id: POC1-LOGIN-CODEMAP
title: PoC1 Login Codebase Map
source_type: derived-code-intelligence
source_repo: aira-platform
source_commit: abc123
source_branch: main
source_paths:
 - backend/src/main/java/com/aira/auth
 - opa/auth/login.rego
generated_by: GitNexus
generated_at: 2026-05-20T10:00:00+08:00
approved_by: Jun Elloso
approved_at: 2026-05-20T11:00:00+08:00
classification: Internal
indexed_by_llm_wiki_at: 2026-05-20T11:10:00+08:00
source_hash: sha256:...
artifact_hash: sha256:...
status: approved-indexed
staleness_policy: block_if_source_commit_changes
avci_status: verifiable

## 13. AIRA Knowledge API / MCP Connector Requirements

| **Requirement** | **Description** |
| --- | --- |
| Search | Search approved knowledge sources by semantic, keyword, metadata, and source type filters. |
| Fetch | Retrieve exact approved artifact sections with provenance and citation metadata. |
| Classification enforcement | Prevent AI assistants from retrieving content above their permitted classification level. |
| SBAC enforcement | Validate actor/tool skills before retrieval. |
| Freshness enforcement | Warn or block retrieval when indexed content is stale or superseded. |
| Provenance return | Return source document ID, source repo, commit, hash, generator, approval, and index timestamp. |
| Audit trail | Record who or what retrieved which knowledge item, when, and for what purpose. |
| Redaction | Mask or withhold secrets, tokens, PII, restricted details, or sensitive infrastructure data. |

## 14. Roles and Responsibilities

| **Role** | **Responsibilities** |
| --- | --- |
| AIRA Architecture Governance | Owns the standard, approves architecture changes, and ensures Golden Source boundaries. |
| Knowledge Governance Owner | Maintains Obsidian vault structure, document metadata, classification, and freshness manifest. |
| DevSecOps Lead | Owns CI/CD triggers, scans, evidence generation, and release evidence automation. |
| Development Lead | Ensures source code remains in GitHub/GitNexus and derived summaries are generated from controlled commits. |
| Security Lead | Owns classification, secret scanning, redaction, SBAC, policy, and Restricted content controls. |
| DBA/Data Engineering Lead | Supports evidence and metadata storage when required. |
| Software Developers | Use GitHub as code source, Obsidian/LLM Wiki as knowledge reference, and include AVCI evidence in PRs. |
| AI Tool Owners | Ensure ChatGPT, Codex, Claude, Hermes, and agents retrieve only governed knowledge. |

## 15. Implementation Phases

| **Phase** | **Description** | **Minimum Deliverables** |
| --- | --- | --- |
| Phase 1 - Immediate PoC Automation | Establish a controlled central vault and basic freshness discipline. | Git-backed vault, metadata template, manual LLM Wiki indexing, manual GitNexus summary upload, freshness manifest. |
| Phase 2 - Semi-Automated Evidence Pipeline | Automate scan, evidence, and derived artifact generation after PR/MR merge. | GitHub Actions, GitNexus scan trigger, CI evidence summaries, human review gate, LLM Wiki re-index trigger. |
| Phase 3 - Governed Knowledge API | Expose controlled retrieval for AI tools. | AIRA Knowledge API, SBAC, classification-aware retrieval, provenance, audit, freshness enforcement. |
| Phase 4 - Full AIRA Knowledge Platform | Run knowledge, retrieval, guardrails, agent, and DevSecOps services on containers/Kubernetes. | LLM Wiki, LightRAG, GitNexus integration, Hermes Agent, LiteLLM/OpenRouter, NeMo Guardrails, OPA, observability, security evidence automation. |

## 16. Operating Procedure

Create or update AIRA documents in the central Git-backed knowledge repository, not in uncontrolled personal vaults.

Submit document changes through PR/MR review where practical.

Run metadata, classification, link, and secret validation before approval.

Merge approved documentation changes to the central knowledge repository.

Trigger LLM Wiki/LightRAG re-indexing after approval.

Update the knowledge freshness manifest with source hash, artifact hash, approval status, and index timestamp.

For source code changes, merge through GitHub PR/MR with CI/CD, tests, SAST, DAST, SBOM, and secret scanning.

Trigger GitNexus analysis after code merge.

Generate code map, impact summary, evidence summary, and security summary from exact commit references.

Review derived artifacts before publishing them to Obsidian or LLM Wiki.

Require AI assistants to retrieve only from approved, current, and permitted knowledge sources.

## 17. Definition of Done

| **Area** | **Completion Criteria** |
| --- | --- |
| Golden Source integrity | GitHub remains code authority; Obsidian remains curated knowledge authority. |
| No full-code copying | No full codebase is copied into Obsidian. |
| Automation | Indexing, evidence generation, validation, and freshness checks are automated or scheduled. |
| Human approval | Canonical standards and security-sensitive changes require approval before publication. |
| AVCI | Artifacts include author/generator, source hash, classification, approval status, and improvement path. |
| Security | Secret scan, classification check, redaction, and access controls are enforced. |
| Freshness | Knowledge freshness manifest exists and is updated after source changes. |
| AI retrieval | AI tools receive provenance, classification, freshness status, and source references. |
| Reversibility | Indexes can be rolled back, stale artifacts can be disabled, and incorrect generated summaries can be superseded. |

## 18. AVCI Compliance Mapping

| **AVCI Element** | **Required Evidence** |
| --- | --- |
| Attributable | Document owner, generator, approver, source repository, commit, branch, source path, and timestamp. |
| Verifiable | Source hash, artifact hash, CI result, scan result, GitNexus run ID, index timestamp, and approval status. |
| Classifiable | Classification label, SBAC policy, redaction status, allowed retrieval audience, and routing constraints. |
| Improvable | Review cadence, feedback mechanism, stale detection, supersession process, and improvement backlog. |

## 19. Appendix A - Derived Artifact Metadata Template

---
document_id: POC1-LOGIN-CODEMAP
title: PoC1 Login Codebase Map
version: v1.0
status: approved-indexed
classification: Internal
source_type: derived-code-intelligence
source_repo: aira-platform
source_branch: main
source_commit: <commit-hash>
source_paths:
 - backend/src/main/java/com/aira/auth
 - frontend/src
 - opa/auth/login.rego
generated_by: GitNexus
generated_at: <timestamp>
reviewed_by: <reviewer>
approved_by: <approver>
approved_at: <timestamp>
source_hash: sha256:<hash>
artifact_hash: sha256:<hash>
indexed_by: LLM Wiki
indexed_at: <timestamp>
avci_status: verifiable
---

## 20. Appendix B - Standard Team Instruction

| **Instruction: **Do not copy the whole source code into Obsidian. Use GitHub as the source code Golden Source, GitNexus as the code intelligence layer, Obsidian as the curated knowledge and evidence repository, and LLM Wiki/LightRAG as the governed retrieval index. Automation must generate summaries, validate metadata, scan for secrets, enforce classification, update freshness manifests, and trigger indexing only after approval gates are satisfied. |
| --- |
