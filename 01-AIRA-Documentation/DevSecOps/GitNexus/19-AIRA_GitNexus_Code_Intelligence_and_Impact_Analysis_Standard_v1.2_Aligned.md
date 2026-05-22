---
document_id: "AIRA-DOC-019"
title: "AIRA GitNexus Code Intelligence and Impact Analysis Standard"
version: "v1.2"
status: "aligned"
source_file: "19-AIRA_GitNexus_Code_Intelligence_and_Impact_Analysis_Standard_v1.2_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/DevSecOps/GitNexus"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - gitnexus
  - impact-analysis
---

# AIRA GitNexus Code Intelligence and Impact Analysis Standard

**AIRA**

AI-Native Enterprise Platform

**AIRA GitNexus Code Intelligence and Impact Analysis Standard**

_Read-Only Code Intelligence | Impact Analysis | Evidence Records | Agent-Callable Governance_

**v1.2 - Java 25 Evidence Baseline and Cross-Pack Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-019** |
| **Document Title** | **AIRA GitNexus Code Intelligence and Impact Analysis Standard** |
| **Document Version** | **v1.2 - Java 25 Evidence Baseline and Cross-Pack Alignment Update** |
| **Supersedes** | **19-AIRA_GitNexus_Code_Intelligence_and_Impact_Analysis_Standard_v1.2** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / CAB APPROVAL** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Software Development Lead; DevSecOps Lead; Security Architecture; QA Engineering; Platform Engineering; AI Engineering; Internal Audit** |
| **Effective Date** | **2026-05-21** |
| **Review Cadence** | **Quarterly; unscheduled on material runtime, technology, security, AI-risk, or governance change** |
| **Pack Context** | **Pack 02 v1.2 individual aligned file generated from Pack 02 v1.2 aligned source pack and synchronized against Packs 01, 03, 04, and 05.** |
| **Backend Runtime Baseline** | **Java 25 LTS is mandatory for AIRA backend development. Java 21 is waiver-only fallback, not the default.** |

**Discipline First · Automation Second · Intelligence Third · AVCI Always**

## Pack 02 v1.2 Cross-Pack Alignment Notice

**Purpose. **This aligned version updates the individual Pack 02 source document so it can be uploaded to Obsidian as a standalone canonical Developer Execution artifact while remaining synchronized with the current AIRA source-pack baseline and Pack 01 v1.2 outputs.

**Document role. **Governance standard for GitNexus as derivative code intelligence, PR impact evidence, and agent-callable analysis support.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active source baseline** | **AIRA Source Packs v3.0 / Aligned Pack Set v1.2 remains the input baseline; Pack 02 v1.2 is the new individual output set for Obsidian upload.** |
| **Backend runtime baseline** | **Java 25 LTS is the required backend baseline. Spring Boot 4.x and Spring Framework 7.x are the target backend framework baseline where compatible.** |
| **Java 21 handling** | **Java 21 is not the default. It may appear only as a documented compatibility fallback with Architecture Board/CAB waiver, risk acceptance, and exit plan.** |
| **Pack 01 governance references** | **References are aligned to AVCI v3.1, Engineering Blueprint v5.1, DevSecOps v3.1, 01A v1.2, and ADR-AIRA-2026-001 v1.2.** |
| **Technology baseline** | **Technology Stack v9.0 remains the canonical technology reference and explicitly includes Java 25 LTS as the primary backend runtime.** |
| **Information fabric baseline** | **Information Nervous System v4.0 governs source authority, retrieval eligibility, Obsidian / LLM Wiki, GitNexus indexing, and derivative knowledge handling.** |
| **AI execution boundary** | **All model access routes through LiteLLM. NeMo Guardrails Input/Retrieval/Execution/Output checkpoints are mandatory. Tool actions go through Harness/SBAC/OPA.** |
| **GitNexus** | **GitNexus is read-only, derivative, commit-bound code intelligence. It cannot commit, approve, merge, deploy, mutate production, or replace tests/scans/human review.** |
| **Dograh** | **Dograh is governed voice-agent orchestration only. It is not a hardcoded STT/TTS/LLM provider and remains subject to classification, consent, guardrail, and audit controls.** |
| **Flyway / Database** | **Flyway remains mandatory from initial database creation through all migrations, data fixes, RLS, extensions, seed data, and schema evolution.** |

### Material Changes in This Version

Added Java 25 LTS / Spring Boot 4.x as explicit backend parsing, build, test, and impact-analysis assumptions for AIRA repositories.

Updated GitNexus evidence records to capture backend_runtime_baseline, java_toolchain_version, build_toolchain_ref, and index_commit_sha.

Reinforced that GitNexus remains read-only, derivative, secret-safe, non-authoritative, and unable to commit, merge, approve, deploy, or mutate production.

Aligned agent-callable workflows with Harness/SBAC/OPA and Pack 01 v1.2 principle enforcement.

Updated companion references to AVCI v3.1, Developer Guide v4.1, Unit Testing v3.1, Technology Stack v9.0, and Information Nervous System v4.0.

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

AI-Native Enterprise Platform

**GitNexus Code Intelligence and****
Impact Analysis Standard**

_Code Graph Validation Service | Agent-Callable Structural Awareness | AI DevSecOps Evidence_

| **Mandatory Operating Principle**<br>GitNexus may be adopted in AIRA only as a governed code intelligence and impact-analysis layer. It is not the official policy source, not the architecture authority, not a security scanner replacement, not a production runtime dependency, and not a path for autonomous production modification. It may assist developers and AI agents only when its outputs remain derivative, version-pinned, classifiable, evidence-producing, reviewable, and subordinate to AIRA standards, CI/CD gates, security controls, and human accountability. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-019 |
| Document Title | AIRA GitNexus Code Intelligence and Impact Analysis Standard |
| Version | v1.2 - Evidence Schema Hardening and Operationalization Update |
| Classification | INTERNAL INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / DEVSECOPS ADOPTION |
| Owner | Solutions Architecture Office / IT Head |
| Co-Owners | AI DevSecOps Lead; Software Development Lead; Security Architecture; QA Lead; Repository Governance Lead |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | Quarterly; unscheduled on material GitNexus, MCP, AI-tool, repository, security, license, or architecture change |
| Source Draft | C. GitNexus.docx |
| Source Validation Date | May 14, 2026 |
| Revision Date | May 19, 2026 |

## **Table of Contents**

## 1. Executive Summary

## 2. v1.2 Change Summary and Adoption Decision

## 3. Purpose, Scope, and Authority

## 4. GitNexus Positioning in the AIRA Architecture

## 5. Reference Architecture and Control Flow

## 6. Non-Negotiable Operating Principles

## 7. Approved Use Cases and Prohibited Uses

## 8. Agent-Callable GitNexus Workflow

## 9. DevSecOps and CI/CD Integration Model

## 10. Security, Privacy, Classification, and Licensing Controls

## 11. Enterprise Design Principles and SOLID Enforcement Matrix

## 12. Architecture Fitness Functions and Evidence Gates

## 13. Risk Register and Mitigation Plan

## 14. Roles, RACI, and Separation of Duties

## 15. Phased Adoption Roadmap

## 16. Ready-to-Adopt Acceptance Criteria

## 17. PR/MR Evidence Template

## 18. Waivers, Exceptions, and Non-Conformance

## 19. Compliance and Control Mapping

## 20. AVCI Compliance Summary

Appendix A. GitNexus Evidence Record Schema

Appendix B. Copy-Ready Mermaid Diagram

Appendix C. Implementation Checklist

Appendix D. External Source Register

| **Word TOC Note**<br>This document uses a static table of contents for deterministic rendering. In Microsoft Word, a dynamic TOC may be inserted before final publication if required. |
| --- |

## **1. Executive Summary**

This document converts the GitNexus recommendation draft into an AIRA-governed standard. It defines how GitNexus may be evaluated, adopted, controlled, and used by developers, AI coding assistants, and AIRA agents without weakening the approved AIRA architecture, security model, repository governance, evidence discipline, or human accountability.

The conclusion is positive but controlled: GitNexus can improve AIRA by providing codebase structural awareness, dependency graphs, call-chain analysis, affected-test discovery, blast-radius review, and repository impact evidence. However, it must be classified as a derivative Code Intelligence Layer, not as the official knowledge source or decision authority.

| v1.2 Adoption Verdict<br>Adopt GitNexus in phases exactly as defined in v1.0, with Appendix A upgraded into an operational, CI-validatable, AVCI-aligned evidence schema. GitNexus remains a governed, derivative Code Intelligence and Impact Analysis Control. It does not become an architecture authority, policy source, security scanner replacement, production runtime dependency, or autonomous execution path. |
| --- |

| **AIRA Outcome** | **GitNexus Contribution** | **Governance Condition** |
| --- | --- | --- |
| Better AI code understanding | Exposes code graph, dependencies, call chains, symbols, and impact radius to coding tools and agents. | Output is advisory and must be checked against AIRA standards and tests. |
| Safer Auto-Heal | Helps identify affected files, downstream callers, related tests, and integration risks before a fix is proposed. | Auto-Heal may draft PRs only; no direct push to main or production mutation. |
| Controlled Auto-Learn | Helps identify recurring dependency weaknesses, architecture drift, risky modules, and missing-test patterns. | Learning output must become a reviewed knowledge artifact before retrieval eligibility. |
| Practical Auto-Improve | Supports refactoring proposals, modularization analysis, and architecture fitness recommendations. | Improvements require ticket/ADR/TDL, evidence, tests, and human approval. |
| Improved reviewer confidence | Provides PR blast-radius and affected-test evidence to help reviewers focus on material risk. | GitNexus does not replace CODEOWNERS, SAST, SCA, DAST, contract tests, or human review. |

## 2. v1.2 Change Summary and Adoption Decision

| **Area** | **v1.0 Baseline** | **v1.2 Java 25 Evidence Baseline Update** |
| --- | --- | --- |
| Document posture | Controlled AIRA standard with scope, authority, controls, RACI, risks, evidence, and adoption gates. | Preserves the v1.0 authority model and adds stronger operational evidence requirements for PR/MR, CI, release, incident, and agent-assisted use. |
| Architecture role | GitNexus is classified as AIRA Code Intelligence and Impact Analysis Control, subordinate to governed knowledge and source control. | No authority expansion. GitNexus remains derivative and advisory; evidence must be corroborated by tests, scans, policy checks, and human review. |
| Agent use | Agent use must be mediated through Harness/SBAC/OPA where state-changing tool actions are involved and must produce evidence. | Adds explicit SBAC decision references, OPA decision references, actor type, approved skill scope, trigger type, and human checker fields to the evidence schema. |
| Auto loops | Auto-Heal, Auto-Learn, and Auto-Improve may propose, validate, and create PRs; they must not self-promote or weaken AIRA principles. | Adds structured trigger capture, affected tests/contracts/workflows, waiver linkage, improvement backlog linkage, rollback/forward-fix evidence, and closure path. |
| Security controls | Classification, secrets, index storage, license review, MCP security, generated-file, and fail-closed controls are required. | Adds source classification, evidence classification, contains_secrets_or_pii flag, report hash, tool configuration reference, retention rule, and disposal rule. |
| Pipeline role | Initial CI role is advisory only; gating requires PoC maturity, accuracy thresholds, waiver process, and ARB approval. | Adds schema validation as a CI evidence check. Missing required evidence remains warning during adoption and may become blocking after ARB/CAB approval. |

### **2.1 Adoption Decision**

| **Decision Item** | **v1.2 Decision** |
| --- | --- |
| Adoption status | Conditionally approved for evaluation and controlled PoC, with v1.2 evidence schema hardening required before formal rollout. |
| Technology Stack status | Candidate / Trial tool until ARB approves production-grade use, version pinning, and evidence-schema validation in Golden Source. |
| AIRA classification | Code Intelligence and Impact Analysis Control; derivative source; not authoritative. |
| Recommended deployment mode | Local CLI and controlled MCP mode first; self-hosted enterprise mode only after procurement, license, and security review. |
| Default model | Developer-facing use allowed after onboarding; agent-facing use allowed only through governed action flow. |
| Production dependency status | Not a production runtime dependency. Failure of GitNexus must not break production services. |
| Direct production action | Prohibited. |
| Evidence status | GitNexus reports may be PR/MR, release, incident, or Auto-Heal evidence only when they conform to Appendix A v1.2 and are corroborated by tests, scans, policy checks, and human review. |

## **3. Purpose, Scope, and Authority**

The purpose of this standard is to define how GitNexus may be used within AIRA to improve codebase understanding, AI-assisted coding, impact analysis, code review, architecture drift detection, and DevSecOps evidence while preserving the approved AIRA governance model.

| **In Scope** | **Out of Scope** |
| --- | --- |
| Local GitNexus CLI use for approved AIRA repositories and developer workstations. | Uploading BFS/AIRA proprietary code to unmanaged public or personal workspaces. |
| MCP-based GitNexus context for approved AI coding assistants and controlled AIRA agents. | Direct autonomous execution of Git, CI/CD, database, Kubernetes, OpenKM, Kafka, Temporal, Flowable, or production APIs. |
| Code graph, dependency graph, call chain, blast-radius, stale-index, and affected-test analysis. | Treating GitNexus as a replacement for AIRA standards, LLM Wiki, LightRAG, security scanners, tests, or human code review. |
| PR/MR review evidence, architecture fitness support, and refactoring impact analysis. | Using GitNexus outputs as sole approval evidence for production promotion. |
| PoC evaluation, version pinning, Golden Source packaging, and controlled rollout. | Unreviewed generated AGENTS.md / CLAUDE.md changes that weaken the AIRA repository rule hierarchy. |

### **3.1 Authority and Precedence**

| **Authority Level** | **Document / Control** | **Meaning for GitNexus** |
| --- | --- | --- |
| L0 | Architecture Board / Consolidated Architecture Decisions | Final authority for major architecture, AI-agent, source-control, and technology adoption decisions. |
| L1 | 02-AIRA Engineering Blueprint and 11-AIRA DevSecOps Standard | Define the architecture boundaries, lifecycle gates, evidence pipeline, and AI execution model that GitNexus must support. |
| L2 | 01-AIRA AVCI Standard and 01A Enterprise Design Principles | Define universal artifact quality, SOLID, Clean Architecture, DDD, testability, security, observability, reversibility, and evidence obligations. |
| L2 | 06 CLAUDE.md Reference and 12 CLAUDE.md Rollout Pack | Define repository-local rules, tool adapter inheritance, pre-commit hooks, CI gates, and AI tool governance. |
| L3 | This GitNexus Standard | Defines how GitNexus is evaluated, configured, used, and evidenced. |
| L4 | Repository files, CI artifacts, GitNexus index/report outputs | Implementation-level evidence. These are derivative and cannot override higher-authority standards. |

| **Conflict Rule**<br>Where GitNexus output conflicts with approved AIRA standards, repository CLAUDE.md rules, security policy, architecture decisions, tests, or human reviewer judgment, the approved AIRA control prevails. The conflict must be logged as an AVCI reconciliation item or PR review finding. |
| --- |

## **4. GitNexus Positioning in the AIRA Architecture**

GitNexus is positioned on the implementation side of the AIRA Information Nervous System. Obsidian, LLM Wiki, LightRAG, approved AIRA standards, ADRs, and formal source documents define what should be built. Git repositories and GitNexus help determine what has actually been implemented, what is connected to what, and what could be affected by change.

| **Layer / Tool** | **AIRA Role** | **Authority Status** |
| --- | --- | --- |
| Approved AIRA DOCX/PDF standards | Formal policy, architecture, security, testing, and DevSecOps authority. | Authoritative when approved. |
| Obsidian | Canonical working knowledge vault for approved AIRA documentation and engineering notes. | Authoritative only when synchronized to approved sources. |
| LLM Wiki | Curated retrieval layer over approved knowledge. | Derivative; retrieval authority depends on provenance and freshness. |
| LightRAG | Graph/RAG enhancement across governed knowledge. | Derivative; not source of truth. |
| GitHub/GitLab repository | Source code, contracts, tests, configs, IaC, and evidence artifacts. | Authoritative for implementation state after approved merge. |
| GitNexus | Code graph, dependency awareness, call-chain analysis, blast-radius evidence, affected-test discovery. | Derivative advisory evidence. |
| Codex / Claude Code / Cursor / Windsurf | AI-assisted code generation, review, and explanation under repository rules. | Assistant only; humans remain accountable. |

### **4.1 Classification Statement**

| **Approved Classification**<br>GitNexus shall be classified as an AIRA Code Intelligence and Impact Analysis Control. It is not an official policy source, not an official architecture source, not a security scanner replacement, and not a production runtime dependency. |
| --- |

## **5. Reference Architecture and Control Flow**

| AIRA Governed Knowledge Layer<br>Approved AIRA Docs -> Obsidian -> LLM Wiki / LightRAG<br> defines: principles, policies, standards, ADRs, contracts<br><br>AIRA Implementation Layer<br>GitHub/GitLab Repository -> GitNexus Code Graph<br> exposes: dependencies, call chains, symbols, affected tests, blast radius<br><br>AIRA DevSecOps Validation Layer<br>Tests + ArchUnit + SAST/SCA/DAST + SBOM + OPA/Conftest + CI/CD<br> verifies: correctness, security, policy, architecture, evidence<br><br>AIRA Human Governance Layer<br>CODEOWNERS + Maker-Checker + Security/Architecture Review + CAB/ARB<br> approves: merge, release, waiver, production promotion |
| --- |

### **5.1 Developer-Facing Use**

| Developer -> IDE / CLI / Codex / Claude Code -> GitNexus -> Code graph context -> Developer decision -> PR evidence |
| --- |

### **5.2 Agent-Facing Use**

| AIRA DevSecOps Agent -> GitNexus CLI / MCP -> Impact evidence -> CI/CD gate / PR note -> Human approval |
| --- |

| **Execution Boundary**<br>GitNexus may provide context to an agent. It must not become the executor of protected actions. For state-changing actions, AIRA follows the Hermes-reasons / Harness-executes model with SBAC, OPA, trust score, audit, and human approval. |
| --- |

## **6. Non-Negotiable Operating Principles**

| **ID** | **Principle** | **Mandatory Rule** |
| --- | --- | --- |
| GNX-01 | Derivative, not authoritative | GitNexus output is evidence support only. Approved AIRA standards, source code, tests, CI/CD, policy decisions, and human approvals remain authoritative. |
| GNX-02 | Local-first and controlled hosting | Use local CLI mode for AIRA repositories by default. Hosted/public web use is prohibited for Confidential or Restricted code unless formally approved. |
| GNX-03 | No sensitive source upload | Proprietary code, secrets, customer data, production logs, or restricted artifacts must not be uploaded to unmanaged public services. |
| GNX-04 | Version pinning | The approved GitNexus version must be pinned in Golden Source, devcontainer, and CI configuration. Avoid unpinned @latest in controlled environments. |
| GNX-05 | Index freshness | Re-index before major PR review, release readiness, refactoring, or agent-assisted remediation. Stale indexes are a defect. |
| GNX-06 | Generated file control | AGENTS.md, CLAUDE.md, hooks, and generated files must not be accepted automatically. AIRA canonical templates and stricter parent rules prevail. |
| GNX-07 | No direct production action | GitNexus must not directly mutate source control main branches, CI/CD, production systems, secrets, databases, or Kubernetes resources. |
| GNX-08 | Security scanner complement | GitNexus complements but does not replace SonarQube, Semgrep, Trivy, ZAP, secret scanning, SCA, OPA, unit tests, contract tests, or human review. |
| GNX-09 | Evidence by construction | All material GitNexus use in PR/release/auto-heal contexts must produce an evidence record: repo, commit, index version, query, result, reviewer, and decision. |
| GNX-10 | Fail-safe behavior | If GitNexus, MCP, index, or report generation fails, protected merge or production promotion must not rely on missing evidence. |

## **7. Approved Use Cases and Prohibited Uses**

| **Use Case** | **Approved Use** | **Required Gate** |
| --- | --- | --- |
| Developer onboarding | Explore service structure, modules, dependencies, and call chains. | Repository access, onboarding acknowledgement, classification rule awareness. |
| AI-assisted coding | Provide structural context to Codex, Claude Code, Cursor, Windsurf, or equivalent approved tools. | CLAUDE.md rules, AI usage declaration, no direct provider or tool bypass. |
| Pull request review | Generate blast-radius, dependency, and affected-test reports. | PR template, CI evidence, CODEOWNERS review, human checker. |
| Refactoring | Identify callers, adapters, tests, contracts, and downstream impact before change. | ADR/TDL if material; architecture review for boundary changes. |
| Auto-Heal | Analyze probable impacted code and propose patch scope. | Agent cannot push to main; PR, tests, scans, OPA, human approval required. |
| Auto-Learn | Detect recurring failure patterns or architecture drift candidates. | Human-reviewed knowledge promotion and citation before LLM Wiki eligibility. |
| Auto-Improve | Recommend refactoring, missing tests, modularization, or architecture fitness improvements. | Backlog item, measurable benefit, rollback/forward-fix path, reviewer approval. |
| Release readiness | Confirm affected services, tests, contracts, and dependency risk. | Release evidence pack and CAB/ARB controls as applicable. |

| **Prohibited Use** | **Reason** | **Correct AIRA Pattern** |
| --- | --- | --- |
| Upload Confidential/Restricted source code to unmanaged public tool or demo. | Data leakage and IP exposure risk. | Use local CLI or approved self-hosted/enterprise deployment only. |
| Allow an agent to auto-commit to main after GitNexus analysis. | Violates maker-checker, branch protection, and human accountability. | Agent creates PR with evidence; human reviews and approves. |
| Treat GitNexus as architecture authority. | Code graph describes implementation; it does not define approved architecture. | Compare GitNexus findings against Engineering Blueprint, CLAUDE.md, ADRs, and standards. |
| Skip SAST/SCA/secret scans because GitNexus found no issue. | GitNexus is not a security scanner replacement. | Run full CI/CD evidence pipeline. |
| Accept generated AGENTS.md / CLAUDE.md without review. | May weaken or conflict with AIRA rules. | Generate only from canonical AIRA templates or review diffs through PR. |
| Use stale index for release or remediation decisions. | Agent may reason from outdated dependency graph. | Re-index and attach index freshness evidence. |

## **8. Agent-Callable GitNexus Workflow**

AIRA agents may call GitNexus as part of analysis and evidence generation. The agent must not treat GitNexus as an executor or as an authority that bypasses standards. The pattern below applies to Auto-Heal, Auto-Learn, Auto-Improve, and AI-assisted PR review.

Receive trigger from observability, PR event, ticket, release readiness check, or approved manual request.

Resolve repository, bounded context, service, branch, commit SHA, classification, actor, and authorization scope.

Check GitNexus availability, approved version, index freshness, and repository eligibility.

Run or refresh GitNexus index when authorized and required.

Perform impact analysis: changed files, symbols, call chains, dependency paths, downstream services, contracts, and affected tests.

Cross-check results against AIRA standards in Obsidian / LLM Wiki / LightRAG and repository CLAUDE.md rules.

Run or request applicable tests and gates: unit, architecture, contract, SAST/SCA, secret scan, OPA/Conftest, SBOM, and AI evaluation where applicable.

Create structured GitNexus Evidence Record using Appendix A v1.2 and attach it as a PR comment, pipeline artifact, ADR/TDL input, technical debt item, release readiness artifact, or incident/Auto-Heal evidence.

Escalate high-risk, low-confidence, security, data, AI, workflow, database, and production-impacting changes to named human reviewer.

Validate required schema fields, report hash, classification, SBAC/OPA references where applicable, and human-checker decision before allowing the evidence to support warn/block/pass decisions.

| **Auto Loop** | **GitNexus Role** | **Accepted Output** | **Rejected Behavior** |
| --- | --- | --- | --- |
| Auto-Heal | Identify impacted code paths, dependencies, tests, and likely blast radius before a fix. | Patch proposal, PR, test plan, impact evidence, rollback/forward-fix recommendation. | Direct production fix, direct main push, disabling tests, bypassing policy gates. |
| Auto-Learn | Identify recurring hotspots, coupled modules, missing tests, and drift patterns. | Human-reviewed learning candidate, architecture drift finding, knowledge artifact, backlog item. | Promoting unreviewed GitNexus findings into LLM Wiki as authoritative knowledge. |
| Auto-Improve | Compare intended architecture with actual implementation and propose improvements. | Refactoring proposal, ADR/TDL, fitness function improvement, technical debt item. | Speculative complexity, uncontrolled framework expansion, boundary-weakening refactor. |

## **9. DevSecOps and CI/CD Integration Model**

| **Lifecycle Stage** | **GitNexus Use** | **Gate Mode v1.2** | **Required Evidence** |
| --- | --- | --- | --- |
| Local development | Developer runs analysis before high-impact edits. | Advisory | Local command output or attached note when material. |
| PR creation | Generate blast-radius and affected-test report. | Recommended | GitNexus evidence record, report path/hash, commit SHA, index timestamp, command/config reference, classification, and affected-test summary. |
| Code review | Reviewer uses graph to verify dependencies and boundary risks. | Advisory | Reviewer signoff and PR comment. |
| CI quality gate | Run controlled analysis for risky change classes. | Advisory first; gated after maturity approval. | Pipeline artifact, Appendix A schema validation result, status, policy decision, and reviewer acknowledgement where required. |
| Release readiness | Confirm affected services, contracts, tests, and rollout risk. | Required for selected high-risk repositories after Phase 3. | Release evidence pack reference, validated GitNexus evidence record, affected contracts/workflows/tests, waiver status, and CAB/ARB traceability. |
| Incident Auto-Heal | Analyze probable source area and proposed fix scope. | Required evidence before PR. | Incident ID, trace_id, analysis output, proposed PR, SBAC/OPA decision references, rollback/forward-fix path, and human-checker record. |
| Direct production change | No GitNexus-driven direct mutation. | Prohibited | N/A; use CAB/emergency process. |

### **9.1 Recommended CI Gate Progression**

| **Gate Level** | **Meaning** | **Exit Criteria to Advance** |
| --- | --- | --- |
| G0 - Disabled | Not used in CI; manual developer use only. | PoC repository selected and security review completed. |
| G1 - Advisory | CI publishes report but does not block. | False positive/negative rate understood; run-time acceptable; report useful to reviewers; Appendix A validation report generated without blocking. |
| G2 - Warning | CI warns and requires reviewer acknowledgement for risky findings. | Findings mapped to AIRA controls; waiver process tested; missing or incomplete Appendix A evidence requires reviewer acknowledgement. |
| G3 - Blocking for Critical Findings | CI blocks only approved critical violations such as stale index, generated-rule drift, or severe boundary risk. | ARB/CAB approval; rollback and support procedure ready; critical missing evidence fields or stale-index defects can block selected high-risk changes. |
| G4 - Integrated Evidence Gate | GitNexus results become one input to release and Auto-Heal readiness. | Operational maturity, dashboards, and audit sampling established. |

## **10. Security, Privacy, Classification, and Licensing Controls**

| **Control Area** | **Requirement** | **Evidence** |
| --- | --- | --- |
| Classification | Repository and index inherit the highest classification of indexed source. Confidential or Restricted code requires controlled route and storage. | Classification metadata and access approval. |
| Secrets and PII | No secrets, credentials, raw PII, production data, prompt secrets, or restricted logs in GitNexus prompts, generated docs, reports, or logs. | Secret scan; reviewer attestation. |
| Local execution | Default use is local CLI. Any hosted or self-hosted mode requires security, license, network, and data-flow review. | Security review and ADR/TDL. |
| MCP security | MCP tools must be registered through approved configuration, not ad hoc user-managed integrations for AIRA repositories. | MCP config review; tool registry entry. |
| Network control | CI or self-hosted GitNexus must not exfiltrate code or telemetry to unapproved endpoints. | Firewall/proxy logs or network policy evidence. |
| Index storage | .gitnexus/ and derived indexes are excluded from Git unless formally approved. Retention and disposal must follow classification rules. | .gitignore evidence; disposal procedure. |
| Generated files | Generated AGENTS.md, CLAUDE.md, hooks, or skills must be diff-reviewed and cannot weaken AIRA canonical rules. | PR diff and CODEOWNERS approval. |
| License and procurement | Commercial use, enterprise use, SaaS, and self-hosted deployment require license review before enterprise adoption. | Legal/procurement review record. |
| Supply chain | Install only from approved package source, pinned version, checksum/digest where available, and controlled devcontainer/CI image. | Golden Source registry entry; SBOM. |

| **License Review Note**<br>The public GitHub page indicates GitNexus has enterprise SaaS/self-hosted options and commercial licensing considerations. AIRA must complete legal/procurement review before using GitNexus beyond evaluation or individual non-production assessment. |
| --- |

## **11. Enterprise Design Principles and SOLID Enforcement Matrix**

| **No.** | **Principle** | **GitNexus Enforcement Meaning** |
| --- | --- | --- |
| 1 | SOLID | Use GitNexus to detect large responsibility clusters, dependency sprawl, concrete coupling, interface abuse, and refactoring blast radius. Do not let generated refactors weaken SRP/OCP/LSP/ISP/DIP. |
| 2 | Clean Architecture | Use dependency graph checks to confirm domain/application code does not depend on infrastructure, UI, provider SDKs, persistence clients, or uncontrolled adapters. |
| 3 | DDD / Bounded Contexts | Use graph evidence to detect cross-context calls, shared model leakage, cross-schema writes, and ambiguous ownership. |
| 4 | Ports and Adapters | Validate that external systems, AI providers, databases, queues, and document stores remain behind approved ports/adapters. |
| 5 | DRY, KISS, YAGNI | Use structural analysis to find duplicated plumbing and unnecessary abstractions, but reject speculative tool-driven redesign. |
| 6 | Idempotency by Design | Identify mutating callers, event consumers, workflow paths, and retry-sensitive code before remediation or refactoring. |
| 7 | Determinism and Reproducibility | Pin GitNexus version and index inputs. Reports must include commit SHA, branch, index timestamp, and command/config used. |
| 8 | Fail-Safe, Not Fail-Open | If GitNexus evidence is required and unavailable, do not treat missing analysis as approval. Escalate or block according to gate mode. |
| 9 | Human-in-the-Loop | High-risk, production, security, database, workflow, model-routing, or Restricted findings require named human review. |
| 10 | Least Privilege / SBAC | Developer and agent access to GitNexus follows repository permissions, skill scope, and task authorization. |
| 11 | Separation of Duties | Agent or developer may generate analysis; reviewer and approver remain separate for material changes. |
| 12 | Observability by Design | GitNexus-assisted PRs and Auto-Heal actions include traceable evidence links, not hidden local conclusions. |
| 13 | Policy as Code | Critical GitNexus findings should be expressible as CI/OPA/Conftest/ArchUnit checks where deterministic. |
| 14 | Testability by Design | Affected-test discovery must feed test plans; missing related tests create PR findings or backlog items. |
| 15 | Secure by Design | Indexing and MCP integration must not expose secrets, PII, prompt content, credentials, or restricted architecture. |
| 16 | Resilience Patterns | Use dependency analysis to identify retry/circuit-breaker/fallback/DLQ/compensation impact paths. |
| 17 | Architecture Fitness Functions | Convert repeatable graph findings into machine-checkable fitness functions when reliable. |
| 18 | Progressive Autonomy | Start advisory; move to warning/blocking only after evidence, reliability, policy, and review maturity. |
| 19 | Reversibility / Rollbackability | Impact analysis must identify rollback, forward-fix, compensation, or replay implications for affected paths. |
| 20 | AVCI | Every material GitNexus use has owner, source repo, commit, classification, evidence, verification, and improvement path. |

## **12. Architecture Fitness Functions and Evidence Gates**

| **Gate ID** | **Fitness Function / Evidence Gate** | **Pass Criteria** | **Initial Mode** |
| --- | --- | --- | --- |
| GNX-FF-01 | Approved version check | GitNexus version matches Golden Source pin. | Warning |
| GNX-FF-02 | Index freshness check | Index timestamp is newer than relevant commit or generated for current branch/commit. | Warning; block when required evidence. |
| GNX-FF-03 | No generated-rule drift | AGENTS.md / CLAUDE.md generated sections do not alter AIRA canonical rules without PR approval. | Block for critical rule drift. |
| GNX-FF-04 | .gitnexus exclusion | Derived index is ignored from Git unless approved exception exists. | Block |
| GNX-FF-05 | Affected-test evidence | Report lists affected tests or states why not available; reviewer confirms adequacy. | Warning |
| GNX-FF-06 | Boundary impact review | Material cross-layer or cross-context dependency finding is reviewed by accountable owner. | Warning/Block by severity |
| GNX-FF-07 | Security path preservation | Sensitive code paths still pass through auth, policy, audit, classification, and safe-response controls. | Block when deterministic. |
| GNX-FF-08 | No direct production action | Agent/tool configuration has no direct production credentials or bypass path. | Block |
| GNX-FF-09 | Evidence record schema completeness and integrity | Appendix A v1.2 record includes schema_version, repository, branch, commit SHA, GitNexus version, command/config reference, index timestamp, report hash, classification, trigger, actor, impact scope, verification, decision, human checker, evidence path, retention rule, and disposal rule where applicable. | Warning -> Block after adoption for selected high-risk contexts. |
| GNX-FF-10 | License/procurement gate | Enterprise/commercial use has approved license and procurement record. | Block before production use. |

## **13. Risk Register and Mitigation Plan**

| **Risk** | **Impact on AIRA** | **Mitigation / Control** |
| --- | --- | --- |
| Tool maturity and fast release cadence | Unstable behavior, breaking changes, inconsistent reports. | PoC first; pin version; quarterly lifecycle review; no unpinned @latest in controlled workflows. |
| License/commercial-use uncertainty | Legal/procurement exposure. | Legal review before enterprise use; document allowed use in ADR/TDL. |
| Data leakage through public/demo use | Exposure of proprietary code, architecture, or secrets. | Local-first; prohibit unmanaged upload; classify indexes and reports. |
| Stale index | AI or reviewer reasons from outdated code graph. | Freshness checks before PR/release/Auto-Heal; stale index is a defect. |
| Generated AGENTS.md / CLAUDE.md drift | Tool-generated files weaken AIRA repository rules. | Review diffs; canonical templates prevail; CODEOWNERS approval required. |
| Over-reliance on graph output | False confidence; missed security or runtime risks. | Treat as advisory; require tests, scans, policy gates, and human review. |
| Language/framework coverage gaps | Incomplete analysis for Java, TypeScript, SQL, YAML, Dockerfile, Rego, or Mermaid. | Validate language support during PoC; record known blind spots. |
| MCP prompt/tool injection risk | Unauthorized tool invocation or hidden instruction risk. | Register MCP tools through approved config; use guardrails, sandboxing, audit, and explicit tool visibility. |
| CI run-time overhead | Slow pipeline or developer friction. | Start advisory; limit to risky paths; cache safely; measure execution time. |
| Supply-chain risk | Compromised package or container image. | Golden Source, SBOM, checksum/digest, approved registry, dependency scan. |

## **14. Roles, RACI, and Separation of Duties**

| **Activity** | **Solutions Architect** | **Dev Lead** | **Developer** | **AI DevSecOps** | **Security** | **QA** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Approve GitNexus adoption standard | A | C | I | R | C | C | I |
| Run sandbox PoC | C | A | R | R | C | C | I |
| Approve version pin and Golden Source package | A | C | I | R | C | C | I |
| Configure local developer use | C | A | R | R | C | I | I |
| Configure MCP / agent use | A | C | I | R | C | C | I |
| Review generated AGENTS.md / CLAUDE.md impact | A | R | R | R | C | C | I |
| Review architecture boundary findings | A/R | R | C | C | C | C | I |
| Review security findings or data leakage risk | C | C | R | C | A/R | C | I |
| Verify affected tests and evidence | C | C | R | C | C | A/R | I |
| Audit GitNexus evidence samples | I | I | I | C | C | C | A/R |

Legend: R = Responsible, A = Accountable, C = Consulted, I = Informed.

## **15. Phased Adoption Roadmap**

| **Phase** | **Objective** | **Key Activities** | **Exit Evidence** |
| --- | --- | --- | --- |
| P0 - Governance Prep | Determine whether GitNexus is allowed for AIRA evaluation. | Create TDL/ADR entry; license/security review; select sandbox repo; define metrics. | Approved PoC decision and risk acceptance. |
| P1 - Sandbox PoC | Validate usefulness and safety on non-production or one bounded-context repo. | Run local indexing; test Java/Spring, TypeScript, SQL/YAML coverage; test MCP with approved tool. | PoC report, known gaps, version recommendation. |
| P2 - Governed Developer Tool | Allow trained developers to use local GitNexus under rules. | Pin version; update devcontainer; onboard users; add .gitignore and evidence template. | Onboarding acknowledgement; sample PR evidence. |
| P3 - Agent-Assisted Validation | Allow controlled AIRA agents to call GitNexus for analysis only. | Register MCP server; enforce SBAC/OPA; capture evidence; no direct execution. | Agent action evidence and blocked-action test. |
| P4 - CI Advisory | Publish GitNexus reports in selected PR pipelines. | Add job; collect false positives; tune scope; verify report retention. | CI artifacts and reviewer feedback. |
| P5 - Selective Gate | Block only deterministic critical violations after ARB approval. | Enable critical checks; implement waiver; monitor SLOs and audit samples. | ARB approval; gate metrics; waiver workflow. |

## **16. Ready-to-Adopt Acceptance Criteria**

AC-01: GitNexus version, package source, and installation method are pinned in Golden Source.

AC-02: AIRA classification rules prohibit unmanaged public upload of Confidential or Restricted code.

AC-03: .gitnexus/ or equivalent derivative indexes are excluded from source control unless approved by waiver.

AC-04: Generated AGENTS.md, CLAUDE.md, skills, hooks, or config changes are reviewed through PR and cannot weaken AIRA canonical rules.

AC-05: The PoC validates language coverage for the target AIRA stack: Java/Spring, TypeScript/React/Next.js, SQL/Flyway, YAML/Helm/K8s, Dockerfile, and policy files where applicable.

AC-06: GitNexus reports conform to Appendix A v1.2 and include schema version, repository, branch, commit SHA, index timestamp, tool version, command/config reference, report hash, source/evidence classification, trigger, actor, SBAC/OPA references where applicable, affected modules/contracts/workflows/tests, verification evidence, reviewer decision, human checker, evidence path, retention rule, and disposal rule.

AC-07: Agent-facing use has no direct credentials to Git main, CI/CD, database, Kubernetes, OpenKM, Kafka, Temporal, Flowable, or production APIs.

AC-08: High-risk findings trigger human review and do not auto-approve merges or production actions.

AC-09: CI advisory use produces artifacts without materially slowing developer flow or leaking sensitive content.

AC-10: Legal/procurement review is complete before commercial, enterprise, SaaS, or self-hosted production adoption.

## **17. PR/MR Evidence Template**

| ## GitNexus Impact Analysis Evidence<br>- Evidence ID:<br>- Schema version: GNX-EVD-SCHEMA-v1.2<br>- Repository / canonical URL:<br>- Branch / Commit SHA:<br>- Pull Request / Ticket / ADR or TDL reference:<br>- GitNexus version:<br>- Execution mode: local-cli / ci / mcp-controlled<br>- Command or query used:<br>- Tool configuration reference:<br>- Index timestamp:<br>- Index freshness result: fresh / stale / not applicable<br>- Report hash / artifact hash:<br>- Source classification:<br>- Evidence classification:<br>- Contains secrets or PII: yes / no<br>- Trigger: local review / PR / CI / release / incident / Auto-Heal / Auto-Learn / Auto-Improve<br>- Actor type and requested by:<br>- Approved skill scope:<br>- SBAC decision reference, if applicable:<br>- OPA decision reference, if applicable:<br>- Changed files / changed symbols:<br>- Affected modules / bounded contexts:<br>- Affected contracts / workflows / tests:<br>- Boundary and dependency findings:<br>- Security path findings:<br>- Generated-file or repository-rule impact:<br>- Verification evidence: unit / architecture / contract / security / secret / policy / CI<br>- Reviewer decision: pass / warn / block / waiver requested / backlog follow-up<br>- Human checker:<br>- Waiver reference, if any:<br>- Improvement backlog reference, if any:<br>- Rollback / forward-fix / compensation evidence, if applicable:<br>- Evidence storage path:<br>- Retention rule:<br>- Disposal rule: |
| --- |

## **18. Waivers, Exceptions, and Non-Conformance**

Any exception to this standard must be time-bound, risk-accepted, assigned to an owner, and reviewed through the AIRA waiver process. Schedule pressure is not a valid reason to bypass classification, security, evidence, or human approval controls.

| **Exception Type** | **Approval Required** | **Minimum Evidence** |
| --- | --- | --- |
| Use hosted/public GitNexus mode for Internal code | Solutions Architect + Security | Data-flow review, classification review, no secrets/PII, terms/license review. |
| Use hosted/public mode for Confidential/Restricted code | Architecture Board + Security + Legal + Executive risk acceptance | Exceptional only; redaction, contract, encryption, logging, and audit evidence required. |
| Commit .gitnexus/ index or derived graph to repo | Architecture Board + Security | Purpose, retention, classification, size, redaction, disposal, and access controls. |
| Use GitNexus as blocking CI gate | Architecture Board + DevSecOps + QA | PoC metrics, false-positive assessment, rollback plan, waiver handling, support readiness. |
| Allow agent to execute downstream action after GitNexus finding | Security + AI DevSecOps + CAB as applicable | Harness/SBAC/OPA decision, trust score, approval, audit, rollback path. |

## **19. Compliance and Control Mapping**

| **Framework / Control Domain** | **AIRA GitNexus Control Alignment** |
| --- | --- |
| ISO/IEC 27001:2022 | Supports secure development, change control, access control, supplier/tool governance, logging, and evidence retention when implemented under this standard. |
| CIS Controls v8.1 | Supports inventory/control of software assets, secure configuration, access control, audit logs, vulnerability management, and secure application development. |
| NIST SSDF SP 800-218 | Supports code review, provenance, vulnerability detection, secure coding verification, and controlled remediation evidence. |
| NIST AI RMF / NIST AI 600-1 | Supports AI action governance, human oversight, documentation, traceability, and measurement of AI-assisted code-change risk. |
| SOC 2 | Supports change management, logical access, security monitoring, availability controls, and auditability. |
| SLSA Build Level 3 target | Supports stronger provenance and review evidence but does not replace signed builds, protected branches, or isolated CI runners. |
| OWASP ASVS / SAMM | Supports architecture review and secure SDLC evidence but does not replace security testing. |

## **20. AVCI Compliance Summary**

| **AVCI Property** | **GitNexus Standard Evidence** |
| --- | --- |
| Attributable | Every material GitNexus analysis identifies repository, branch, commit, actor, tool version, command/config, index timestamp, report hash, reviewer, decision, and evidence path. |
| Verifiable | Findings are repeatable from pinned tool version, command/config, commit SHA, and report hash, then verified through tests, architecture checks, security scans, policy-as-code, CI artifacts, source-code review, and human approval. |
| Classifiable | Repositories, indexes, reports, generated files, MCP configs, and derived evidence inherit classification and handling rules; v1.2 separates source classification from evidence classification and requires secrets/PII attestation. |
| Improvable | Findings feed controlled backlog items, waiver records, ADR/TDL updates, architecture fitness functions, test improvements, runbook updates, and reviewed knowledge promotion workflows. |

| AVCI Completion Rule<br>GitNexus-related evidence is complete only when the analysis is traceable, reproducible, classification-safe, schema-valid, human-reviewed where required, and connected to an improvement, waiver, or closure path. |
| --- |

## **Appendix A. GitNexus Evidence Record Schema**

| **Field** | **Required Meaning and Update Rule** |
| --- | --- |
| schema_version | Evidence schema version, e.g., GNX-EVD-SCHEMA-v1.2. Set by this standard and changed only through controlled document update. |
| evidence_id | Unique evidence identifier, e.g., GNX-EVD-YYYYMMDD-###. Generated per material GitNexus run or PR/MR evidence package. |
| repository | Repository name and canonical URL or internal identifier. Captured from approved SCM / Golden Source registry. |
| branch | Branch analyzed. Captured from Git at execution time. |
| commit_sha | Commit SHA used for the index/report. Must match PR/MR or release evidence. |
| pull_request_ref | PR/MR identifier, when applicable. Captured from SCM or CI event. |
| ticket_ref | Issue, story, incident, change, or backlog reference. Captured from work-tracking system. |
| adr_tdl_ref | ADR or TDL reference when the finding affects architecture, technology, security, data, workflow, or AI governance. Required for material design or control impact. |
| gitnexus_version | Pinned GitNexus version used. Must match Golden Source approved version. |
| execution_mode | local-cli / ci / mcp-controlled / approved self-hosted. Captured from runtime environment. |
| command_or_query | Command, query, or MCP operation that generated the analysis. Required for reproducibility and reviewer replay. |
| tool_config_ref | Reference to GitNexus configuration used, e.g., .gitnexus/config.yml or CI job config. Required for CI, release, and agent-facing runs. |
| index_timestamp | When the index was generated/refreshed. Captured at index creation. |
| index_freshness_result | fresh / stale / not_applicable. Computed against branch/commit and gate policy. |
| report_hash | SHA-256 or approved hash of the generated report/artifact. Required for evidence integrity and audit replay. |
| source_classification | Classification of the source repository or analyzed artifacts. Inherited from repository/data classification. |
| evidence_classification | Classification of the generated report/evidence. Must be equal to or stricter than source classification when sensitive details are included. |
| contains_secrets_or_pii | yes / no attestation that report does or does not include secrets, credentials, PII, raw prompts, or restricted data. Verified through scan and reviewer attestation. |
| trigger_type | local / PR / CI / release / incident / auto-heal / auto-learn / auto-improve. Captured from workflow event. |
| requested_by | Named human, service identity, or approved agent that requested analysis. Required for attribution. |
| actor_type | human / service / agent. Required for SBAC and audit. |
| approved_skill_scope | SBAC skill or role used for the action. Required for agent and high-risk human-assisted runs. |
| sbac_decision_ref | Reference to SBAC decision, if applicable. Required for agent-facing or restricted-scope actions. |
| opa_decision_ref | Reference to OPA/policy decision, if applicable. Required where policy-as-code authorizes or blocks the run. |
| changed_files | Changed files analyzed. Captured from Git diff or PR/MR metadata. |
| changed_symbols | Changed classes, functions, methods, modules, tables, policies, contracts, or configuration items. Captured from GitNexus graph and diff analysis. |
| affected_modules | Affected services, packages, modules, libraries, or deployment units. Generated by GitNexus and confirmed by reviewer when material. |
| affected_bounded_contexts | Affected DDD bounded contexts and ownership areas. Required for cross-context or architecture-relevant changes. |
| affected_contracts | Affected OpenAPI, AsyncAPI, CloudEvents, Avro/JSON schemas, or adapter contracts. Required for API/event/integration impact. |
| affected_workflows | Affected Temporal workflows, Flowable processes, MicroFunction sequences, jobs, or operational runbooks. Required for workflow or process impact. |
| affected_tests | Affected tests, test suites, architecture tests, contract tests, or missing-test findings. Required for PR/MR and release evidence. |
| boundary_findings | Clean Architecture, DDD, ports/adapters, dependency direction, or generated-rule findings. Required when findings exist; state none when none detected. |
| dependency_findings | Call-chain, dependency graph, downstream caller, circular dependency, or coupling findings. Required when material dependency risk exists. |
| security_path_findings | Impact on auth, authorization, policy, audit, secrets, classification, safe response, or model-routing paths. Required for security-sensitive code paths. |
| generated_file_changes | Impact on AGENTS.md, CLAUDE.md, hooks, skills, generated config, or AI tool adapters. Required when generated files are present or changed. |
| verification | References to tests, scans, CI, architecture checks, policy checks, reviewer checks, and evidence packs. Required before evidence can support pass/warn/block decision. |
| decision | pass / warn / block / waiver_requested / backlog_followup. Set by configured gate mode and human checker where required. |
| human_checker | Named checker for material decisions. Required for high-risk, release, incident, Auto-Heal, Auto-Learn, Auto-Improve, or waiver cases. |
| waiver_ref | Waiver reference where an exception is requested or approved. Required when decision is waiver_requested or exception accepted. |
| improvement_backlog_ref | Backlog, technical debt, test improvement, or architecture fitness item created from findings. Required when decision creates follow-up work. |
| rollback_plan_ref | Rollback, forward-fix, compensation, replay, or safe-stop reference, if applicable. Required for state-changing, release, workflow, migration, or Auto-Heal use. |
| evidence_path | OpenKM/Git/CI artifact path where the evidence record and report are stored. Required for audit retrieval. |
| retention_rule | Evidence retention rule. Inherited from evidence register and classification policy. |
| disposal_rule | Evidence disposal rule. Inherited from records/evidence handling policy. |

## **Appendix B. Copy-Ready Mermaid Diagram**

| flowchart TD<br> A[Approved AIRA Standards\nObsidian + LLM Wiki + LightRAG] --> B[AIRA Agent / Developer]<br> C[Git Repository\nSource Code + Tests + Config] --> D[GitNexus Code Graph]<br> D --> B<br> B --> E[Impact Analysis\nDependencies + Call Chains + Affected Tests]<br> E --> F[DevSecOps Gates\nUnit + Contract + ArchUnit + SAST/SCA + OPA + SBOM]<br> F --> G{Gate Decision}<br> G -->\|Pass/Warning\| H[PR/MR Evidence + CODEOWNERS Review]<br> G -->\|Block\| I[Rework / Waiver / ADR-TDL]<br> H --> J[Human Approval / Merge Gate]<br> J --> K[Release Evidence / Improvement Backlog] |
| --- |

## **Appendix C. Implementation Checklist**

| **Checklist Item** | **Status / Evidence** |
| --- | --- |
| Create ADR/TDL for GitNexus PoC. |  |
| Validate license/commercial-use posture. |  |
| Select sandbox repository or bounded context. |  |
| Pin GitNexus version in Golden Source. |  |
| Add .gitnexus/ to .gitignore unless exception approved. |  |
| Run initial local index and document command/query used. |  |
| Record GitNexus tool configuration reference and report hash. |  |
| Validate Java/Spring, TypeScript, SQL, YAML, Dockerfile, and policy-file coverage. |  |
| Test MCP connection with approved tool only. |  |
| Confirm generated AGENTS.md / CLAUDE.md behavior and preserve AIRA templates. |  |
| Create sample PR evidence using the Section 17 template. |  |
| Validate sample evidence against Appendix A v1.2 schema. |  |
| Confirm SBAC/OPA references are captured for agent-facing or restricted-scope runs. |  |
| Run security scan and confirm no secrets or PII in reports. |  |
| Confirm evidence storage path, retention rule, and disposal rule. |  |
| Document false positives, blind spots, performance, and schema gaps. |  |
| Present PoC result to Architecture Review Board. |  |

## **Appendix D. External Source Register**

| **Source** | **Observation Used** | **Validation Note** |
| --- | --- | --- |
| GitNexus GitHub README | GitNexus indexes codebases into knowledge graphs and exposes repository structure to AI agents through CLI + MCP. | Verified by web review on May 14, 2026. |
| GitNexus GitHub README | CLI + MCP is positioned for daily development with tools such as Claude Code, Codex, Cursor, Windsurf, and OpenCode. | Tool-specific support must be revalidated during PoC. |
| GitNexus GitHub README | Web UI is described as in-browser/no-server for core mode; local backend/enterprise modes are also described. | AIRA still prohibits unmanaged public upload of Confidential/Restricted source. |
| GitNexus GitHub releases | The project has frequent releases; latest observed release on GitHub page was v1.6.4 dated May 10, 2026. | Do not rely on latest tag; pin approved version after PoC. |
| AIRA source draft C. GitNexus.docx | Recommended GitNexus as AIRA Code Intelligence Layer, not official knowledge source, and as agent-callable support for Auto-Heal/Learn/Improve. | Converted into this governed standard. |
