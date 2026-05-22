---
document_id: "AIRA-DOC-022A"
title: "AIRA Prompt Guardrail Model Alias and AI Evaluation Registry"
version: "v1.1"
status: "aligned"
source_file: "22A-AIRA_Prompt_Guardrail_Model_Alias_and_AI_Evaluation_Registry_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "04-PPG-AI-Governance/Registries"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - prompt-governance
  - guardrails
  - model-registry
  - ai-evaluation
---

# AIRA Prompt Guardrail Model Alias and AI Evaluation Registry

**AIRA**

AI-Native Enterprise Platform

**AIRA Prompt, Guardrail, Model Alias, and AI Evaluation Registry**

_Prompt Governance | NeMo Guardrails | LiteLLM Aliases | Evaluation Evidence | Model Route Control_

**v1.1 - Canonical 22A Numbering and Pack 03 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-022A** |
| **Document Title** | **AIRA Prompt, Guardrail, Model Alias, and AI Evaluation Registry** |
| **Document Version** | **v1.1 - Canonical 22A Numbering and Pack 03 v1.2 Alignment Update** |
| **Supersedes** | **22-AIRA_Prompt_Guardrail_Model_Alias_and_AI_Evaluation_Registry_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; DevSecOps; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Data Governance; SRE / Operations; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material technology, source authority, security, AI-risk, operations, platform, or governance change** |
| **Pack Context** | **Pack 03 v1.2 individual aligned file generated from Pack 03 v1.1 aligned source pack and synchronized against Packs 01, 02, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development and runtime evidence. Java 21 is waiver-only compatibility fallback, not the default.** |
| **Numbering Treatment** | **AI registry companion** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 03 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 03 source document so it can be uploaded to Obsidian as a standalone Technology, Environment, Knowledge, and Readiness artifact while remaining synchronized with the current AIRA source-pack baseline and the completed Pack 01 / Pack 02 v1.2 individual outputs.

**Document role. **Registry standard for prompts, guardrails, LiteLLM model aliases, AI evaluations, safety evidence, and route eligibility.

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

Renumbered from Document 22 to 22A to avoid collision with Pack 04 Login and Session Establishment MicroFunction Design Pattern.

Aligned all model access through LiteLLM aliases and retained NeMo Input/Retrieval/Execution/Output rails as mandatory checkpoints.

Added Java 25 LTS context for backend prompt templates, code-generation prompts, Spring AI examples, and evaluation fixtures.

Clarified Dograh voice prompts and spoken outputs are registry-governed AI artifacts with transcript classification and consent rules.

Reinforced evaluation evidence, golden datasets, adversarial tests, source citations, classification eligibility, and rollback paths.

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

Prompt, Guardrail, Model Alias, and AI Evaluation Registry

_Governed AI Artifacts · LiteLLM Aliases · NeMo Guardrails · Golden Datasets · AVCI Evidence_

**Version 1.0 · April 2026**

| **Mandatory Registry Principle**<br>AIRA treats prompts, guardrails, model aliases, tool-action policies, AI evaluation datasets, and AI outputs as governed engineering artifacts. They must be versioned, classified, tested, reviewed, traced, and improvable before production use. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-022 |
| Document Title | AIRA Prompt, Guardrail, Model Alias, and AI Evaluation Registry |
| Version | v1.0 - Initial Execution Registry Baseline |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION |
| Owner | Solutions Architecture Office / AI Governance Lead |
| Co-Owners | DevSecOps Lead · Security Administrator · QA Lead · AI Engineering Lead · Knowledge Governance Lead · Software Development Lead |
| Audience | Solutions Architect, Software Developers, AI Engineers, DevSecOps, QA/SDET, Security, System Administrator, DBA, Internal Audit, Compliance |
| Effective Date | On CAB / Architecture Review Board approval |
| Review Cadence | Quarterly; unscheduled on material model, prompt, guardrail, AI safety, data classification, security, or regulatory change |
| Companion Documents | 01 AVCI Engineering Standard v3.1; 01A Enterprise Design Principles and SOLID Enforcement Layer; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.1; 05 Information Nervous System v4.1; 06 CLAUDE.md Reference v3.1; 07 Skills Framework v3.1; 08 Unit Testing Standard v3.1; 11 DevSecOps Standard v3.1; 13 Knowledge Governance v2.0; 14 ADR/TDL v2.0; 20 CI/CD Evidence Pack v1.0 |
| Compliance Scope | AVCI · ISO/IEC 27001:2022 · NIST AI RMF · NIST AI 600-1 · NIST SSDF · OWASP ASVS 5.0.0 · CIS Controls v8.1 · SOC 2 · SLSA Build Level 3 target |
| Purpose | Define the mandatory registry structure, lifecycle, metadata, evaluation gates, classification routing, approval workflow, CI/CD checks, and evidence pack for prompts, guardrails, LiteLLM model aliases, tool/action policies, and AI evaluation assets. |

## Table of Contents

## 1. Executive Summary

## 2. Purpose, Scope, and Authority

## 3. Non-Negotiable Registry Principles

## 4. Registry Architecture and Source of Truth

## 5. Prompt Registry Standard

## 6. Guardrail Registry Standard

## 7. Model Alias and Routing Registry Standard

## 8. Tool/Action Registry and Harness Binding

## 9. AI Evaluation and Golden Dataset Registry

## 10. Classification-Aware Routing and Data Handling

## 11. Lifecycle Workflow and Approval Gates

## 12. Repository, Obsidian, and LLM Wiki Structure

## 13. CI/CD, Evidence Pack, and Architecture Fitness Functions

## 14. Auto-Heal, Auto-Learn, and Auto-Improve Governance

## 15. Roles, RACI, and Operating Procedures

## 16. Implementation Roadmap and Acceptance Criteria

## 17. AVCI Compliance Summary

Appendix A. Prompt Registry YAML Template

Appendix B. Guardrail Registry YAML Template

Appendix C. Model Alias Registry YAML Template

Appendix D. Evaluation Dataset Manifest Template

Appendix E. Evidence Manifest Template

Appendix F. Mermaid Reference

| **Word TOC Note**<br>This document uses a static table of contents for deterministic rendering in headless environments. In Microsoft Word, a dynamic TOC may be inserted or refreshed before final publication. |
| --- |

## 1. Executive Summary

AIRA is an AI-native enterprise platform. Its AI behavior is not controlled only by application code; it is shaped by prompts, guardrails, model aliases, retrieval policies, tool-action permissions, evaluation datasets, and evidence rules. This registry standard defines how those AI artifacts are created, reviewed, tested, approved, activated, monitored, superseded, and retired.

The registry exists to prevent uncontrolled prompt drift, direct model-provider usage, guardrail bypass, undocumented routing changes, untested model upgrades, unreviewed AI tool actions, and untraceable AI-generated outputs. It converts AI configuration into first-class engineering artifacts governed by AVCI and the Enterprise Design Principles and SOLID Enforcement Layer.

| **Core Rule**<br>No prompt, guardrail, model alias, tool-action policy, or AI evaluation dataset is production-ready unless it is attributable, verifiable, classifiable, improvable, versioned, tested, approved, and registered. |
| --- |

| **Strategic Outcome** | **Required Control** |
| --- | --- |
| Safe AI behavior | Prompts, guardrails, model aliases, and tool-action policies are approved artifacts, not unmanaged text or hidden configuration. |
| Model-agnostic delivery | Application code calls LiteLLM aliases only; provider names, model names, keys, and fallback logic are registry-controlled. |
| Grounded generation | Retrieval, citation, evidence-pack, and output rules are tied to prompt and guardrail versions. |
| Measurable quality | Golden datasets, adversarial tests, grounding scores, safety tests, and regression gates govern promotion. |
| Audit defensibility | Every AI call can be reconstructed through actor, prompt version, model alias, route, guardrail version, evidence, and output audit record. |
| Controlled improvement | Auto-Learn and Auto-Improve may propose registry updates, but cannot activate them without human review and CI evidence. |

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

Define the standard metadata and repository structure for prompts, guardrails, model aliases, tool-action policies, and AI evaluation assets.

Define the lifecycle from draft to active, superseded, and retired states.

Define classification-aware routing rules for Public, Internal, Confidential, and Restricted data.

Define CI/CD validation, golden dataset evaluation, adversarial testing, and evidence retention requirements.

Define the approval and RACI model for AI artifact promotion.

### 2.2 Scope

| **In Scope** | **Out of Scope** |
| --- | --- |
| Prompt templates, system instructions, prompt fragments, prompt variables, retrieval pack rules, model call policies, and prompt test cases. | Unapproved personal prompts, informal chat history, unmanaged notebooks, private drafts, or AI vendor workspace content not promoted through AIRA governance. |
| NeMo Guardrails configurations for Input, Retrieval, Execution, and Output checkpoints. | Provider-native safety settings used outside AIRA routing or hidden in vendor consoles without registry evidence. |
| LiteLLM model aliases, provider routes, fallback rules, budgets, classification ceilings, and retirement dates. | Direct provider SDK calls, hardcoded model names, personal API keys, or untracked fallback logic. |
| Tool/action policies, Harness bindings, SBAC skill requirements, OPA policy links, trust thresholds, and approval routes. | AI agents executing tools directly or holding credentials outside Harness. |
| Golden datasets, evaluation manifests, adversarial tests, regression reports, and AI quality evidence. | One-off manual tests that are not versioned, retained, or reproducible. |

### 2.3 Authority

This standard is an execution registry under the AIRA Engineering Blueprint, AVCI Standard, AI DevSecOps Standard, CLAUDE.md Reference, and Technology Stack. If this standard conflicts with architecture boundaries, the Engineering Blueprint governs. If it conflicts with artifact quality or evidence requirements, AVCI governs. If it conflicts with approved technology versions or model gateway position, the Technology Stack governs.

## 3. Non-Negotiable Registry Principles

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| AI-REG-01 | Registry first | AI behavior is controlled by approved registry artifacts, not ad-hoc prompts, hardcoded model names, or hidden runtime variables. |
| AI-REG-02 | LiteLLM aliases only | Application services, scripts, notebooks, agents, and MicroFunctions must use model aliases behind LiteLLM. Direct provider SDK calls are prohibited. |
| AI-REG-03 | Guardrails always | NeMo Guardrails checkpoints for Input, Retrieval, Execution, and Output are mandatory where applicable. Failure means block, not bypass. |
| AI-REG-04 | Classification drives routing | Data classification determines prompt eligibility, retrieval scope, model route, output handling, retention, and audit evidence. |
| AI-REG-05 | Evaluation before activation | No prompt, guardrail, model alias, or tool-action policy is activated without passing the applicable evaluation profile. |
| AI-REG-06 | Human accountability | AI may draft or recommend registry changes. Named humans approve and remain accountable. |
| AI-REG-07 | No silent fallback | Fallback model routes must be explicit, tested, classified, budgeted, and approved. |
| AI-REG-08 | Evidence by construction | Every AI call and registry change records artifact version, route, guardrail result, evaluation result, actor, and trace ID. |
| AI-REG-09 | Supersede, do not overwrite | Accepted registry versions are immutable. Changes create new versions and supersedence evidence. |
| AI-REG-10 | Improve without weakening controls | Auto-Heal, Auto-Learn, and Auto-Improve must preserve or improve SOLID, architecture boundaries, security, observability, reversibility, and AVCI evidence. |

## 4. Registry Architecture and Source of Truth

AIRA uses Git as the Golden Source for registry definitions. Obsidian and LLM Wiki may index approved registry metadata for developer retrieval, but they do not replace Git, approval records, signed tags, CI evidence, and OpenKM evidence archives.

![[attachments/22A-AIRA_Prompt_Guardrail_Model_Alias_and_AI_Evaluation_Registry_v1.1_Aligned/image9.png]]

Figure 1. AI artifact registry lifecycle from draft through review, evaluation, approval, activation, monitoring, supersedence, and retirement.

| flowchart LR<br> D[Draft Artifact] --> R[Human Review]<br> R --> E[CI Evaluation Suite]<br> E --> A[Approval Gate]<br> A --> V[Active Registry]<br> V --> M[Monitor + Feedback]<br> E -->\|Fail\| X[Reject / Rework]<br> M --> S[Supersede or Retire] |
| --- |

| **Registry Area** | **Authoritative Source** | **Derivative Consumers** | **Activation Control** |
| --- | --- | --- | --- |
| Prompt Registry | Git: ai/prompts/registry/*.yaml | Obsidian, LLM Wiki, CI prompt tests, orchestrator-service | Signed MR, evaluation report, approval, active tag |
| Guardrail Registry | Git: ai/guardrails/registry/*.yaml and NeMo configs | NeMo runtime, CI guardrail tests, audit reports | Security + AI governance approval, rail test pass |
| Model Alias Registry | Git: ai/models/model-aliases.yaml and LiteLLM config | LiteLLM, orchestrator-service, retrieval-service, audit dashboards | Architecture + Security approval, routing tests, budget checks |
| Tool Action Registry | Git: ai/tools/actions.yaml and Harness action vocabulary | Harness, OPA bundles, SBAC registry, trust service | Skill + trust + OPA + human approval route |
| Evaluation Registry | Git: ai/evaluations/* and golden datasets stored by evidence path | CI/CD, QA reports, model evaluation dashboards | QA + AI governance approval, thresholds versioned |

## 5. Prompt Registry Standard

Prompts are treated as executable control artifacts. Prompt content, variables, retrieval behavior, classification ceiling, allowed model aliases, evaluation profile, rollback version, owner, and approval status must be explicit.

| **Required Field** | **Meaning** | **Example** |
| --- | --- | --- |
| prompt_id | Stable identifier for the prompt artifact. | AIRA-PRM-RETRIEVAL-QA-001 |
| version | Semantic or registry version. | 1.0.0 |
| owner | Named accountable owner or team. | AI Governance Lead |
| intent | Business/engineering purpose of the prompt. | Grounded answer generation from approved AIRA sources |
| classification_ceiling | Highest classification allowed. | Internal, Confidential, Restricted |
| allowed_model_aliases | LiteLLM aliases permitted. | aira-internal-reasoning, aira-private-summarizer |
| retrieval_policy | Source and citation rules. | approved_sources_only; citations_required |
| guardrail_profile | Input/Retrieval/Execution/Output rail bindings. | nemo-profile-knowledge-qa-v1 |
| evaluation_profile | Tests that must pass before activation. | eval-grounded-qa-v1 |
| rollback_to | Prior active version for emergency rollback. | 0.9.3 |
| status | DRAFT, REVIEW, APPROVED, ACTIVE, SUPERSEDED, RETIRED. | ACTIVE |

| **Prompt Design Rule**<br>Prompts must not contain secrets, hidden policy overrides, unsupported model names, unreviewed business rules, or instructions to bypass guardrails, citations, classification, or human approval. |
| --- |

## 6. Guardrail Registry Standard

Guardrails define what content is allowed, blocked, transformed, escalated, or audited. AIRA uses NeMo Guardrails across four mandatory checkpoints: Input, Retrieval, Execution, and Output.

| **Checkpoint** | **Purpose** | **Mandatory Controls** |
| --- | --- | --- |
| Input Rail | Validate actor request, intent, classification, prompt injection, prohibited data, and unsafe actions. | Prompt-injection detection, sensitive-data check, allowed intent list, classification gate. |
| Retrieval Rail | Validate retrieved content eligibility, authority, source version, staleness, classification, and citation readiness. | Approved sources only, superseded-content exclusion, ACL filtering, evidence-pack validation. |
| Execution Rail | Validate tool-action proposals before Harness execution. | Action vocabulary, SBAC skill, trust score, OPA decision, human approval route, dry-run where possible. |
| Output Rail | Validate final answer or action result before release. | Citation requirement, safe response shaping, no PII leakage, hallucination/unsupported claim check, audit record. |

| **Guardrail Artifact Field** | **Required Value** |
| --- | --- |
| guardrail_id | Stable ID and semantic version. |
| checkpoint | INPUT, RETRIEVAL, EXECUTION, OUTPUT, or COMPOSITE. |
| policy_owner | Named owner and reviewer. |
| classification_scope | Allowed classifications and explicit exclusions. |
| failure_behavior | BLOCK, ESCALATE, REDACT, SAFE_RESPONSE. Fail-open is not permitted. |
| test_suite | Required unit, adversarial, and regression tests. |
| evidence_path | CI evidence and approval archive location. |

## 7. Model Alias and Routing Registry Standard

The model alias registry hides provider-specific implementation details from application code. It controls which providers and models may be used, for what classification, with which budget, fallback, evaluation profile, guardrail profile, and owner.

![[attachments/22A-AIRA_Prompt_Guardrail_Model_Alias_and_AI_Evaluation_Registry_v1.1_Aligned/image10.png]]

Figure 2. Classification-aware model routing through approved registry, guardrails, and LiteLLM aliases.

| sequenceDiagram<br> autonumber<br> participant U as User / Service<br> participant GW as Gateway + Identity<br> participant IN as NeMo Input Rail<br> participant RET as Retrieval + Evidence<br> participant RR as Retrieval Rail<br> participant PR as Prompt Registry<br> participant LLM as LiteLLM Alias<br> participant OUT as Output Rail + Audit<br> U->>GW: Submit request with actor/context<br> GW->>IN: Classify and validate intent<br> IN->>RET: Retrieve eligible evidence<br> RET->>RR: Validate source authority and ACL<br> RR->>PR: Resolve prompt version and allowed aliases<br> PR->>LLM: Invoke alias with policy metadata<br> LLM->>OUT: Return response for safety/citation check<br> OUT-->>U: Release safe answer with audit reference |
| --- |

| **Alias Field** | **Requirement** |
| --- | --- |
| alias_name | Stable alias used by application code, e.g., aira-internal-reasoning. |
| provider_route | Approved provider or private route, hidden from application code. |
| classification_ceiling | Maximum data classification the alias may process. |
| allowed_use_cases | Approved tasks such as summarization, extraction, code review, retrieval QA, or tool planning. |
| fallback_alias | Optional fallback; must not exceed classification ceiling or weaken guardrails. |
| budget_policy | Token, cost, rate, and tenant/user limits. |
| evaluation_profile | Required quality, safety, grounding, cost, and regression tests. |
| owner_and_reviewers | AI Governance, Security, Architecture, and QA ownership. |
| retirement_date | Planned review or retirement date for model/version risk management. |

## 8. Tool/Action Registry and Harness Binding

AI agents may reason, draft, and propose. They must not directly execute tool actions. The tool/action registry defines which actions exist, what skills are required, what policy applies, what approval route is required, and how execution is audited through Harness.

| **Action Tier** | **Examples** | **Required Controls** |
| --- | --- | --- |
| Tier 0 - Read-only analysis | Read approved docs, inspect non-sensitive logs, summarize CI results. | SBAC active skill, classification check, audit. |
| Tier 1 - Dev sandbox action | Run unit tests, lint changed files, generate local report. | Harness-mediated execution, scope limit, no production data. |
| Tier 2 - Repository change proposal | Create branch, draft PR, update prompt or code artifact. | Human author, CODEOWNERS, CI evidence, no protected branch write. |
| Tier 3 - Controlled operational action | Rebuild cache, reprocess DLQ in non-prod, trigger evaluation suite. | OPA policy, approval route, runbook reference, rollback plan. |
| Tier 4 - Production-impacting action | Rollback release, rotate production secret, change model route. | Human approval, CAB/break-glass when applicable, full evidence pack, post-action review. |

## 9. AI Evaluation and Golden Dataset Registry

The evaluation registry defines the datasets, test profiles, score thresholds, regression comparisons, and evidence required before AI artifacts are promoted. Evaluation is mandatory for prompt changes, guardrail changes, model alias changes, retrieval policy changes, and tool-action policy changes.

![[attachments/22A-AIRA_Prompt_Guardrail_Model_Alias_and_AI_Evaluation_Registry_v1.1_Aligned/image11.png]]

Figure 3. AI evaluation gate and promotion flow.

| flowchart LR<br> C[Change Proposal] --> S[Static Validation]<br> S --> G[Golden Dataset]<br> G --> A[Adversarial + Safety Tests]<br> A --> R[Regression + Cost Tests]<br> R --> D{Promotion Decision}<br> D -->\|Pass\| P[Sign Evidence + Activate]<br> D -->\|Fail\| X[Block + Rework Issue] |
| --- |

| **Evaluation Type** | **Purpose** | **Minimum Evidence** |
| --- | --- | --- |
| Golden dataset | Verify expected behavior on approved representative prompts and retrieval cases. | Pass/fail results, score, dataset version, expected outputs. |
| Grounding and citation | Verify answer is supported by approved sources and cites evidence. | Citation coverage, unsupported-claim rate, retrieval relevance. |
| Safety and policy | Verify prohibited content, unsafe actions, prompt injection, and leakage are blocked. | Adversarial test results, guardrail hit logs. |
| Classification leakage | Verify Confidential/Restricted content does not route to disallowed models or appear in logs. | Routing trace, redaction proof, negative tests. |
| Tool-action evaluation | Verify agent action proposals are bounded and Harness/OPA/SBAC controls enforce scope. | Policy decision log, audit record, dry-run evidence. |
| Regression and cost | Verify change does not reduce quality, latency, budget discipline, or stability. | Baseline comparison, token/cost report, latency summary. |

## 10. Classification-Aware Routing and Data Handling

| **Classification** | **Prompt Eligibility** | **Model Route** | **Evidence / Handling** |
| --- | --- | --- | --- |
| Public | Allowed if source is approved and current. | Approved cloud or private alias. | Standard audit, citation, and version evidence. |
| Internal | Allowed in approved workspace and governed registry. | Approved cloud alias if policy permits; private route preferred for high-risk content. | Redaction of unnecessary details, telemetry with no secrets. |
| Confidential | Allowed only with explicit classification metadata and approved route. | Private/on-prem route unless waiver is approved. | Strict audit, no unapproved cloud prompts, masked logs. |
| Restricted | Default no cloud prompt. Only approved private/on-prem route. | Private/on-prem alias only; human approval for high-impact actions. | Strongest evidence retention, no prompt/log leakage, security review. |

| **Data Handling Rule**<br>Registry artifacts may reference sensitive handling rules, but they must not embed secrets, credentials, production PII, raw customer content, or private keys. Examples and tests must use synthetic data. |
| --- |

## 11. Lifecycle Workflow and Approval Gates

| **State** | **Entry Criteria** | **Allowed Action** |
| --- | --- | --- |
| DRAFT | Artifact created with owner, intent, classification, and initial tests. | Edit freely inside feature branch. |
| REVIEW | MR opened with impact assessment and evaluation plan. | Human review by CODEOWNERS and domain owners. |
| EVALUATING | Static checks and AI evaluation suite running. | No activation until evidence is complete. |
| APPROVED | Review and tests passed. | Eligible for signed release or controlled activation. |
| ACTIVE | Registry version is tagged and deployed through GitOps/CI. | Runtime may use artifact. |
| SUPERSEDED | New version has replaced prior version. | Retain for audit and rollback only. |
| RETIRED | Artifact removed from active use and blocked from default retrieval. | Historical access only by explicit request and authority. |

Approval gates must include Architecture for boundary-impacting changes, Security for classification or tool-action changes, QA for evaluation profiles, DevSecOps for pipeline and deployment controls, and AI Governance for prompts, guardrails, model aliases, and evaluation assets.

## 12. Repository, Obsidian, and LLM Wiki Structure

| aira-ai-registry/<br>├── prompts/<br>│ ├── registry/<br>│ ├── templates/<br>│ └── tests/<br>├── guardrails/<br>│ ├── nemo/<br>│ ├── registry/<br>│ └── tests/<br>├── models/<br>│ ├── model-aliases.yaml<br>│ ├── routing-policies.yaml<br>│ └── budgets.yaml<br>├── tools/<br>│ ├── actions.yaml<br>│ ├── harness-bindings.yaml<br>│ └── opa-policies/<br>├── evaluations/<br>│ ├── golden-datasets/<br>│ ├── adversarial/<br>│ ├── regression/<br>│ └── reports/<br>├── evidence/<br>│ └── manifests/<br>└── governance/<br> ├── CODEOWNERS<br> ├── approval-register.yaml<br> └── retirement-register.yaml |
| --- |

| **Knowledge Layer** | **Handling Rule** |
| --- | --- |
| Git registry | Authoritative source for active and historical registry definitions. |
| OpenKM / DMS | Stores approved signed registry releases and evidence packs. |
| Obsidian | Stores developer-facing notes, cross-links, ADR references, and readable guidance. |
| LLM Wiki | Indexes only approved/current registry summaries and must cite source artifact IDs and versions. |
| pgvector / retrieval index | Derivative only; rebuilt when registry versions change. |
| Redis / runtime cache | Ephemeral acceleration only; never source of truth. |

## 13. CI/CD, Evidence Pack, and Architecture Fitness Functions

| **Gate** | **Required Check** |
| --- | --- |
| Schema validation | YAML/JSON registry files conform to approved schema. |
| Reference validation | Prompt references, guardrail profiles, aliases, evaluation profiles, and action IDs resolve to approved artifacts. |
| Direct model call check | No provider SDK import, direct endpoint, raw model name, or personal API key in code. |
| Classification route check | Alias and prompt classification ceilings are compatible with source data and route policy. |
| Guardrail coverage | Required Input/Retrieval/Execution/Output rails are bound and tested. |
| Evaluation pass | Golden, adversarial, grounding, safety, leakage, regression, and cost thresholds pass. |
| Evidence manifest | CI emits signed evidence pack with artifact versions, scores, approvers, and trace links. |
| Rollback readiness | Prior active version is retained and rollback path is documented. |

| **Fitness Function** | **Reject Condition** |
| --- | --- |
| FF-AI-001: Alias-only model access | Application code contains provider SDK/model endpoint/model name. |
| FF-AI-002: Guardrail completeness | Prompt or model route lacks required rail binding. |
| FF-AI-003: Classification ceiling | Artifact classification ceiling is lower than data used at runtime. |
| FF-AI-004: Evidence completeness | Evaluation report or approval evidence is missing. |
| FF-AI-005: Tool-action mediation | Agent action bypasses Harness/SBAC/OPA/human approval route. |
| FF-AI-006: Regression protection | New artifact performs worse than baseline beyond approved threshold. |
| FF-AI-007: Reversibility | No rollback or supersedence path exists for active artifact. |

## 14. Auto-Heal, Auto-Learn, and Auto-Improve Governance

| **Capability** | **Allowed Registry Interaction** | **Required Gate** |
| --- | --- | --- |
| Auto-Heal | May propose prompt, guardrail, route, or tool policy remediation after incident analysis. | Human review, CI evaluation, rollback path, incident link, evidence pack. |
| Auto-Learn | May draft knowledge updates, new examples, test cases, adversarial cases, and evaluation dataset candidates. | Knowledge steward review, classification check, dataset quality review, regression update. |
| Auto-Improve | May propose prompt refactoring, model alias tuning, guardrail strengthening, cost optimization, or quality threshold changes. | ADR/TDL if material, impact assessment, evaluation comparison, CAB/Architecture approval where required. |

| **Autonomy Boundary**<br>Auto-Heal, Auto-Learn, and Auto-Improve may generate candidates. They must not activate prompts, weaken guardrails, change model routes, grant tool actions, lower thresholds, or update production registry state without human approval and evidence. |
| --- |

## 15. Roles, RACI, and Operating Procedures

| **Activity** | **Solutions Architect** | **AI Governance** | **Security** | **QA** | **DevSecOps** | **Developer** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Create prompt/guardrail/model alias standard | A | R | C | C | C | C | I |
| Approve prompt or guardrail activation | A | R | C | C | C | I | I |
| Approve classification route | A | C | R | C | C | I | I |
| Maintain evaluation datasets | C | A | C | R | C | C | I |
| Run CI/evidence gates | I | C | C | C | R | R | I |
| Review tool-action permissions | A | C | R | C | R | I | I |
| Audit registry evidence | I | C | C | C | C | I | R |

R = Responsible, A = Accountable, C = Consulted, I = Informed.

## 16. Implementation Roadmap and Acceptance Criteria

| **Phase** | **Implementation Scope** | **Acceptance Criteria** |
| --- | --- | --- |
| R0 - Registry bootstrap | Create repository, schemas, CODEOWNERS, templates, and approval workflow. | Repository exists; branch protection active; schemas validate. |
| R1 - Prompt and guardrail baseline | Register initial prompt profiles and NeMo rail configurations. | Input/Retrieval/Execution/Output rail tests pass. |
| R2 - Model alias baseline | Implement LiteLLM aliases, route policies, budgets, and classification ceilings. | No direct model calls; alias smoke tests pass. |
| R3 - Evaluation baseline | Create golden/adversarial datasets and CI evaluation jobs. | Evaluation report and thresholds generated in evidence pack. |
| R4 - Harness and tool-action binding | Register AI tool actions and OPA/SBAC bindings. | Agents cannot execute outside Harness; audit emitted. |
| R5 - Runtime activation | Promote first active registry release through CI/CD. | Signed release, OpenKM evidence archive, rollback version present. |

## 17. AVCI Compliance Summary

| **AVCI Property** | **How This Document Satisfies It** |
| --- | --- |
| Attributable | Every registry artifact has owner, ID, version, source path, approver, and activation record. |
| Verifiable | Promotion requires schema validation, guardrail tests, evaluation reports, CI gates, and evidence manifests. |
| Classifiable | Artifacts declare classification ceiling, data handling rule, model route eligibility, retention, and logging restrictions. |
| Improvable | Lessons learned, incidents, evaluation drift, cost data, and feedback can propose updates through controlled review and regression testing. |

## Appendix A. Prompt Registry YAML Template

| prompt_id: AIRA-PRM-RETRIEVAL-QA-001<br>version: 1.0.0<br>status: DRAFT<br>owner: ai-governance-lead<br>classification_ceiling: INTERNAL<br>intent: Grounded answer generation using approved AIRA knowledge sources<br>allowed_model_aliases:<br> - aira-internal-reasoning<br>retrieval_policy: approved_sources_only_citations_required<br>guardrail_profile: nemo-knowledge-qa-v1<br>evaluation_profile: eval-grounded-qa-v1<br>rollback_to: null<br>variables:<br> - name: user_question<br> required: true<br> - name: evidence_pack<br> required: true<br>avci:<br> ticket: AIRA-AI-0001<br> approver: TBD<br> evidence_path: OpenKM/AIRA/AI-Registry/Prompts/AIRA-PRM-RETRIEVAL-QA-001/ |
| --- |

## Appendix B. Guardrail Registry YAML Template

| guardrail_id: AIRA-GRD-KNOWLEDGE-QA-001<br>version: 1.0.0<br>checkpoint: COMPOSITE<br>status: DRAFT<br>owner: security-administrator<br>classification_scope: [PUBLIC, INTERNAL]<br>failure_behavior: BLOCK<br>rails:<br> input: nemo/input/knowledge_qa_input.co<br> retrieval: nemo/retrieval/approved_sources.co<br> execution: nemo/execution/no_tool_action.co<br> output: nemo/output/citation_and_safety.co<br>test_suite: guardrail-knowledge-qa-v1<br>evidence_path: OpenKM/AIRA/AI-Registry/Guardrails/AIRA-GRD-KNOWLEDGE-QA-001/ |
| --- |

## Appendix C. Model Alias Registry YAML Template

| alias_name: aira-internal-reasoning<br>version: 1.0.0<br>status: DRAFT<br>provider_route: litellm.route.internal.reasoning.primary<br>classification_ceiling: INTERNAL<br>allowed_use_cases: [retrieval_qa, summarization, code_review]<br>fallback_alias: aira-internal-reasoning-fallback<br>budget_policy: standard-internal-budget-v1<br>guardrail_profile: nemo-standard-four-rail-v1<br>evaluation_profile: eval-internal-reasoning-v1<br>owner: ai-governance-lead<br>reviewers: [solutions-architect, security-administrator, qa-lead]<br>retirement_date: 2026-12-31 |
| --- |

## Appendix D. Evaluation Dataset Manifest Template

| dataset_id: AIRA-EVAL-GROUNDED-QA-001<br>version: 1.0.0<br>status: APPROVED<br>owner: qa-lead<br>classification: INTERNAL<br>purpose: Validate grounded answer generation and citation behavior<br>cases:<br> - case_id: QA-001<br> input_ref: datasets/grounded_qa/case_001.input.json<br> expected_ref: datasets/grounded_qa/case_001.expected.json<br> required_citations: true<br>thresholds:<br> groundedness_score_min: 0.92<br> citation_coverage_min: 0.95<br> unsupported_claim_rate_max: 0.02<br> safety_block_false_negative_max: 0 |
| --- |

## Appendix E. Evidence Manifest Template

| evidence_manifest_id: AIRA-AI-EVD-0001<br>artifact_type: prompt \| guardrail \| model_alias \| tool_action \| evaluation_dataset<br>artifact_id: AIRA-PRM-RETRIEVAL-QA-001<br>artifact_version: 1.0.0<br>ci_run_id: TBD<br>commit_sha: TBD<br>approvers:<br> - name: TBD<br> role: AI Governance Lead<br>results:<br> schema_validation: PASS<br> guardrail_tests: PASS<br> evaluation_profile: PASS<br> classification_route_check: PASS<br> direct_model_call_check: PASS<br>rollback_version: 0.9.3<br>evidence_path: OpenKM/AIRA/AI-Registry/Evidence/AIRA-AI-EVD-0001/ |
| --- |

## Appendix F. Mermaid Reference

Copy-ready Mermaid definitions are included in the body of this document below each rendered diagram. They may be copied to Obsidian, Git repository documentation, or developer onboarding materials as source diagrams.
