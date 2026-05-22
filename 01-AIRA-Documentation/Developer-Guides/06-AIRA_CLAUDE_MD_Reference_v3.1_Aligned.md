---
document_id: "AIRA-DOC-006"
title: "AIRA CLAUDE MD Reference"
version: "v3.1"
status: "aligned"
source_file: "06-AIRA_CLAUDE_MD_Reference_v3.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Developer-Guides"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - developer-guide
  - claude
---

# AIRA CLAUDE MD Reference

**AIRA**

AI-Native Enterprise Platform

**AIRA CLAUDE.md Reference**

_Repository AI Rules of Engagement | Human and AI-Assisted Development | AVCI Evidence_

**v3.1 - Java 25 and Pack 01 v1.2 Alignment Update**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-006** |
| **Document Title** | **AIRA CLAUDE.md Reference** |
| **Document Version** | **v3.1 - Java 25 and Pack 01 v1.2 Alignment Update** |
| **Supersedes** | **06-AIRA_CLAUDE_MD_Reference_v3.1** |
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

**Document role. **Repository-local AI/human development rulebook that translates AIRA standards into executable assistant constraints.

| **Alignment Area** | **Applied Control** |
| --- | --- |
| **Active source baseline** | **AIRA Source Packs v3.1 / Aligned Pack Set v1.1 remains the input baseline; Pack 02 v1.2 is the new individual output set for Obsidian upload.** |
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

Added Java 25 LTS as the required backend coding and review assumption for generated Java/Spring code.

Updated all governing references to 01A v1.1, AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, and DevSecOps v3.1.

Strengthened AI assistant rules: no direct model provider calls, no secret exposure, no bypass of policy/guardrail gates, and no production mutation.

Clarified GitNexus may be used for read-only context and impact analysis but cannot replace source control, CODEOWNERS, tests, CI, or human review.

Updated Pack 02 source status to remove the former 01A open-gap wording because Pack 01 now provides canonical 01A.

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

**AI-Native Enterprise Platform**

**CLAUDE.md Reference**

**Rules of Engagement for AI-Assisted and Human Development**

**Enterprise Design Principles | SOLID Enforcement | Architecture Fitness Functions | AVCI Evidence**

**Version 3.1 - April 2026**

| **Mandatory Operating Principle**<br>CLAUDE.md is the human-readable Golden Source for repository behavior. In v3.1, every repository rule must preserve or improve SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, testability, security posture, observability, reversibility, rollbackability, and AVCI evidence. AI may draft; humans remain accountable. |
| --- |

| **Property** | **Value** |
| --- | --- |
| Document Title | AIRA CLAUDE.md Reference |
| Document Version | v3.1 - Enterprise Design Principles and SOLID Enforcement Release |
| Document ID | AIRA-DOC-006 |
| Supersedes | 06-AIRA_CLAUDE_MD_Reference_v3.0 |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION |
| Owner | Solutions Architecture Office / AI DevSecOps Lead |
| Co-Owners | Software Development Lead; DevSecOps Lead; Security Architecture; Quality Engineering |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | Quarterly; unscheduled on material AI tool, model, policy, repository, security, or architecture change |
| Audience | All developers, architects, DevSecOps, AI engineers, QA, SRE, database, platform, security, and repository maintainers |
| Primary Governing Decision | ADR-AIRA-2026-001 - Adoption of Enterprise Design Principles and SOLID Enforcement Layer |
| Canonical Principle Reference | 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| Universal Quality Reference | 01-AIRA AVCI Engineering Standard v3.1 |
| Architecture Reference | 02-AIRA Engineering Blueprint v5.1 |
| Developer Reference | 03-AIRA Developer Guide v4.1 |
| Testing Reference | 08-AIRA Unit Testing Engineering Standard v3.1 |
| Companion Documents | 04 Technology Stack; 05 Information Nervous System; 07 Skills Framework; 09 Greenfield Environment; 10 MicroFunction Framework; 11 DevSecOps Standard; 12 Rollout Starter Pack; 14 ADR/TDL; 15 API Contract; 16 Database; 17 Security |

## 1. Executive Summary

## 2. v3.1 Change Summary and Review Verdict

## 3. Scope, Authority, and Document Hierarchy

## 4. CLAUDE.md Operating Model

## 5. Enterprise Design Principles and SOLID Enforcement Rules

## 6. Root CLAUDE.md Global Baseline

## 7. Directory-Specific Rule Sets

## 8. Machine-Enforced Controls

## 9. AI Tool Adapter and Multi-Assistant Governance

## 10. Auto-Heal, Auto-Learn, and Auto-Improve Rules

## 11. Merge Request Evidence and Completion Criteria

## 12. RACI and Ownership

## 13. Onboarding and Adoption Procedure

## 14. Compliance and Control Mapping

Appendix A. Root CLAUDE.md Template

Appendix B. Directory CLAUDE.md Templates

Appendix C. CI and Pre-Commit Control Examples

Appendix D. AVCI Compliance Summary

This document upgrades the AIRA CLAUDE.md Reference from v2.0 to v3.1. The revision keeps the original purpose of CLAUDE.md as the repository rule-of-engagement file for AI-assisted and human development, but strengthens it with the Enterprise Design Principles and SOLID Enforcement Layer adopted through ADR-AIRA-2026-001.

AIRA treats repository instructions as an enforceable control surface, not convenience notes. The root CLAUDE.md establishes the global baseline. Directory-specific CLAUDE.md files add stricter controls for high-risk areas. Tool-specific adapters such as AGENTS.md, IDE rules, Codex instructions, or CI policy bundles may be generated from CLAUDE.md, but they must not weaken the canonical rules.

The v3.1 rule is simple: a change is not acceptable merely because it compiles or passes a happy-path test. It must preserve architecture boundaries, SOLID design, security controls, observability, deterministic testing, rollbackability, and AVCI evidence.

| **Strategic Outcome**<br>Every AIRA repository becomes self-governing. A human engineer or AI assistant working in any directory can determine the applicable architecture, security, testing, AI, and evidence rules before editing files. Violations should fail locally, fail again in CI, and remain visible to reviewers and auditors. |
| --- |

| **Change Area** | **v2.0 Baseline** | **v3.1 Enhancement** |
| --- | --- | --- |
| AIRA alignment | AIRA naming, Harness boundary, four guardrail checkpoints, AVCI evidence. | Adds explicit 01A reference, ADR-AIRA-2026-001 traceability, and v3/v4/v5 companion document alignment. |
| Repository rules | Root and subdirectory CLAUDE.md hierarchy with stricter child rules. | Adds SOLID, Clean Architecture, DDD, ports-and-adapters, reversibility, and fitness-function gates. |
| Machine enforcement | Pre-commit, CI, CODEOWNERS, lock files, and MR evidence. | Adds ArchUnit, Semgrep, SonarQube, OPA/Conftest, dependency checks, forbidden imports, and architecture tests. |
| AI governance | AI may draft; Harness executes; OPA decides; humans approve high impact. | Adds AI obligation to preserve design principles and reject fixes that weaken architecture, tests, security, or rollback paths. |
| Auto loops | Auto-Heal, Auto-Learn, Auto-Improve under review. | Adds principle-preservation gates and prohibits self-modifying or unreviewed repository rule updates. |

| **v3.1 Review Verdict**<br>This is a major governance release. It should be adopted before regenerating or enforcing the AIRA repository rule set, CLAUDE.md rollout pack, AI coding agents, and CI compliance hooks. |
| --- |

All AIRA application, infrastructure, prompt, guardrail, model configuration, documentation, contract, migration, and test repositories.

All root and directory-specific CLAUDE.md files, generated adapters, lock files, and compiled rule bundles.

All human-authored and AI-assisted changes made by ChatGPT, Codex, Claude Code, Windsurf, Copilot, task agents, remediation agents, or equivalent approved tools.

All merge request evidence required to prove AVCI and Enterprise Design Principles compliance.

| **Level** | **Document / Control** | **Authority Scope** |
| --- | --- | --- |
| L0 | AIRA Consolidated Architecture Authority / Architecture Board | End-to-end architecture direction, major exceptions, and conflict resolution. |
| L1 | 02-AIRA Engineering Blueprint v5.1 | Service boundaries, architecture invariants, workflow partition, model gateway, evidence model. |
| L1 | 11-AIRA AI-Native DevSecOps Standard | Operating discipline, lifecycle gates, CI/CD, release, deployment, and AI execution model. |
| L2 | 01-AIRA AVCI Engineering Standard v3.1 | Universal quality gate for every artifact and AI-assisted output. |
| L2 | 01A Enterprise Design Principles and SOLID Enforcement Layer | Canonical definition of the 20 enterprise design principles and enforcement expectations. |
| L3 | This CLAUDE.md Reference | Repository rules of engagement for human and AI-assisted changes. |
| L4 | Repository CLAUDE.md, lock files, pre-commit, CI, CODEOWNERS, OPA, Harness | Executable enforcement of the approved rules. |

| **Conflict Rule**<br>Application repositories may tighten the AIRA rule set but must not weaken it. If a directory-specific rule conflicts with a parent rule, the stricter rule prevails. If a CLAUDE.md file conflicts with the Engineering Blueprint, AVCI Standard, 01A, or Security Standard, the higher-authority standard prevails and the repository rule must be corrected. |
| --- |

| **Rule** | **Requirement** |
| --- | --- |
| Root baseline | The root CLAUDE.md applies to every file in the repository. |
| Subdirectory hardening | High-risk directories must contain their own CLAUDE.md with stricter rules. |
| Nearest file wins only if stricter | Apply root plus every parent plus nearest file. A child rule cannot relax a parent rule. |
| More restrictive prevails | Security, compliance, audit, AI, data, model, test, and production-risk conflicts resolve to the stricter rule. |
| No silent exceptions | Waivers require ticket, owner, expiry, risk acceptance, approver, and remediation plan. |
| Machine-readable lock | The compiled rule set is version-locked using .claude-md.lock or the approved AIRA equivalent. |
| Generated adapters only | Tool-specific instructions must be generated from the canonical CLAUDE.md source and reviewed like code. |

**Repository Rule Layout**

| aira-platform/<br> CLAUDE.md # Global baseline<br> .claude-md.lock # Version-locked compiled rule set<br> .pre-commit-config.yaml # Local deterministic enforcement<br> .github/ or .gitlab/ # CI enforcement and MR templates<br> services/<br> orchestrator-service/CLAUDE.md # AI orchestration hardening<br> retrieval-service/CLAUDE.md # Retrieval, citations, and evidence hardening<br> harness-service/CLAUDE.md # Agent execution boundary hardening<br> workflow-service/CLAUDE.md # Temporal and Flowable partition rules<br> libs/<br> aira-security/CLAUDE.md # IAM, token, mTLS, RLS hardening<br> infra/<br> kubernetes/CLAUDE.md # GitOps and cluster hardening<br> flyway/CLAUDE.md # Database migration hardening<br> ai/<br> prompts/CLAUDE.md # Prompt lifecycle and classification rules<br> guardrails/CLAUDE.md # NeMo Guardrails rules<br> models/CLAUDE.md # Model aliases and routing rules<br> evaluations/CLAUDE.md # Golden datasets and AI evaluation rules<br> microfunctions/CLAUDE.md # Configuration-driven process rules<br> docs/CLAUDE.md # Standards, ADR, and evidence rules<br> tests/CLAUDE.md # TDD, deterministic tests, synthetic data rules |
| --- |

Every CLAUDE.md rule set must include or inherit the following design-principle requirements. AI assistants must treat these as constraints before generating, modifying, or refactoring code. Human reviewers must treat them as merge gates.

| **Principle** | **CLAUDE.md Enforcement Rule** |
| --- | --- |
| SOLID | Require small cohesive classes, interface-based boundaries, dependency inversion, and no god services. |
| Clean Architecture | Domain/application logic must not depend on infrastructure frameworks, provider SDKs, database clients, or messaging clients. |
| DDD / Bounded Contexts | Each bounded context owns its language, model, schema, contracts, and responsibilities. |
| Ports and Adapters | External dependencies are behind ports; adapters are replaceable and testable. |
| DRY, KISS, YAGNI | Reject duplicated plumbing, speculative abstractions, and unnecessary framework complexity. |
| Idempotency | Mutation, workflow, event, and external-call changes require retry-safe behavior. |
| Determinism | Tests, builds, migrations, model evaluations, and generated artifacts must be reproducible. |
| Fail-Safe | Unavailable OPA, Harness, LiteLLM, Guardrails, Vault, Keycloak, or audit blocks protected actions. |
| Human-in-the-Loop | High-risk, low-confidence, Confidential/Restricted, or production-impacting actions need named human review. |
| Least Privilege / SBAC | Agents and humans need the required role, skill, trust level, scope, and policy decision. |
| Separation of Duties | Maker, checker, approver, deployer, and auditor duties remain separated. |
| Observability | Changes must preserve or improve logs, metrics, traces, audit records, and evidence references. |
| Policy as Code | Security, architecture, and deployment rules are executable via OPA, CI checks, admission policies, or equivalent. |
| Testability | Code must remain testable through mocks, ports, fixtures, deterministic clocks, and no hidden dependencies. |
| Secure by Design | No secrets, PII leakage, raw stack traces, insecure defaults, or unclassified prompt exposure. |
| Resilience | Timeouts, retries, circuit breakers, DLQs, compensation, and fallback rules must be explicit. |
| Fitness Functions | Automated architecture checks must detect boundary violations and forbidden dependencies. |
| Progressive Autonomy | AI agent authority increases only with evidence, bounded trust, and human approval. |
| Reversibility | Changes must be rollback-aware, forward-fixable, or compensatable. |
| AVCI | Every change must prove owner, evidence, classification, and improvement path. |

| **AI Instruction Rule**<br>AI assistants must not optimize only for passing tests or quick fixes. Any generated code, prompt, migration, policy, or configuration must preserve or improve SOLID, architecture boundaries, testability, security, observability, rollbackability, and AVCI evidence. |
| --- |

The root CLAUDE.md must contain the minimum baseline below or stricter equivalents. Directory-specific files may add rules but must not weaken the root baseline.

| **Rule ID** | **Rule** | **Severity** |
| --- | --- | --- |
| AIRA-ROOT-001 | Follow 01A Enterprise Design Principles and SOLID Enforcement Layer for every material change. | Blocker |
| AIRA-ROOT-002 | No direct model provider SDK calls. All model traffic routes through LiteLLM aliases and approved guardrails. | Blocker |
| AIRA-ROOT-003 | No AI agent may execute tools directly. Tool actions require Harness, SBAC, OPA, trust score, and audit. | Blocker |
| AIRA-ROOT-004 | No bypass flags for NeMo Guardrails Input, Retrieval, Execution, or Output checkpoints. | Blocker |
| AIRA-ROOT-005 | No secrets, credentials, raw PII, production data, tokens, or Restricted content in prompts, logs, tests, examples, or docs. | Blocker |
| AIRA-ROOT-006 | Preserve Clean Architecture dependency direction and DDD bounded-context ownership. | Blocker |
| AIRA-ROOT-007 | Use TDD, deterministic tests, architecture tests, and CI evidence before merge. | High |
| AIRA-ROOT-008 | Every mutation must consider idempotency, retry safety, compensation, audit, and rollback/forward-fix path. | High |
| AIRA-ROOT-009 | Every PR must include an AVCI Compliance Summary and design-principle impact statement. | High |
| AIRA-ROOT-010 | Waivers must have owner, expiry, risk acceptance, evidence, and remediation plan. | High |

The following directories require stricter CLAUDE.md files because they can affect architecture, security, production behavior, AI behavior, data correctness, or audit evidence.

| **Directory** | **Required Additional Rules** |
| --- | --- |
| services/orchestrator-service | Prompt assembly, Hermes reasoning, LiteLLM invocation, guardrail sequencing, durable audit intent, no direct tool execution. |
| services/harness-service | Action vocabulary, SBAC, trust scoring, OPA decisions, downstream credential mediation, audit outbox, no reasoning ownership. |
| services/retrieval-service | ACL filtering, evidence pack assembly, citations, retrieval rail, no final prompt/model routing ownership. |
| services/workflow-service | Temporal for machine durability, Flowable for human approvals, deterministic workflow code, compensation and replay safety. |
| libs/aira-security | No hardcoded roles or secrets; token validation, policy client, mTLS, RLS, least privilege, fail-closed decisions. |
| infra/kubernetes | GitOps only; no manual kubectl writes; OPA/Gatekeeper policies; signed images; rollback and reconciliation evidence. |
| infra/flyway | Forward-only migrations, expand/contract discipline, rollback/forward-fix plan, deterministic seed data, no production DDL outside Flyway. |
| ai/prompts | Prompt versioning, classification ceiling, evaluation dataset, injection testing, human approval for high-impact changes. |
| ai/guardrails | No bypass rules, four checkpoints, adversarial tests, fail-closed behavior, approval before promotion. |
| ai/models | Model alias registry only; no hardcoded provider names; classification-aware routes; budget and eval evidence. |
| microfunctions | Standard concerns stay framework-owned; business logic isolated to STP-BUS-*; idempotency, compensation, audit, and error policy required. |
| tests | Synthetic data only, deterministic clocks/seeds, architecture tests, mutation gates, security and AI evaluation coverage. |

CLAUDE.md rules must be enforceable, not merely advisory. The following controls translate the human-readable rule set into deterministic checks.

| **Control** | **Purpose** | **Examples** |
| --- | --- | --- |
| Pre-commit hooks | Catch deterministic violations before commit. | Forbidden imports, secrets scan, direct model SDK detection, CLAUDE.md lock validation. |
| CI strict mode | Re-run all checks in controlled environment. | Architecture tests, unit tests, contract tests, policy checks, SAST, SCA, SBOM. |
| CODEOWNERS | Ensure the correct reviewers approve sensitive changes. | Security owns auth/policy; DBA owns migrations; AI governance owns prompts/guardrails. |
| ArchUnit / dependency checks | Protect Clean Architecture, ports/adapters, and bounded context boundaries. | No domain -> infrastructure dependency; no cross-context direct write dependency. |
| Semgrep / custom rules | Detect unsafe patterns and AI bypasses. | Provider SDK imports, raw PII logging, bypass flags, direct credentials. |
| OPA / Conftest | Evaluate policy-as-code before merge or deployment. | Kubernetes manifests, Terraform, model routes, guardrail policies, pipeline permissions. |
| SonarQube | Quality, maintainability, duplication, complexity, security hotspots. | Complexity thresholds, dead code, code smells, vulnerabilities. |
| Mutation and coverage gates | Prove tests can detect behavioral changes. | Mutation score threshold, changed-line coverage, branch coverage. |
| Audit evidence generator | Persist AVCI evidence for reviewers and auditors. | PR summary, CI evidence pack, tool/model usage, reviewer signoff. |

CLAUDE.md is the Golden Source for repository rules. Other tools may need adapters, but the adapters must be generated from the same rule source and reviewed through normal code review. AIRA must not maintain parallel, inconsistent AI rulebooks.

| **Adapter** | **Allowed Use** | **Restriction** |
| --- | --- | --- |
| AGENTS.md | Tool-neutral or Codex-compatible repository guidance generated from CLAUDE.md. | Must not weaken root or directory CLAUDE.md rules. |
| IDE assistant rules | VS Code, Windsurf, or other approved IDE assistant instructions. | Must be derived from the canonical template registry. |
| CI rule bundle | Machine-readable compiled rules for hooks and CI gates. | Must be version locked and traceable to CLAUDE.md source version. |
| Prompt snippets | Approved reusable prompts for code review, tests, architecture review, and documentation. | Must include classification, evidence, and human accountability reminders. |
| Agent skill profiles | Used by Harness/SBAC to scope agent actions. | Must reference approved skills, trust thresholds, and permitted actions only. |

| **No Parallel Rulebooks**<br>Do not keep separate instructions for different AI tools if they can conflict. CLAUDE.md remains canonical; adapters are projections. When CLAUDE.md changes, adapters and lock files must be regenerated and reviewed. |
| --- |

| **Capability** | **CLAUDE.md Rule** | **Reject If** |
| --- | --- | --- |
| Auto-Heal | May diagnose, propose, draft tests, draft PRs, and run safe non-production checks only within Harness/SBAC/OPA boundaries. | The fix bypasses architecture, weakens tests, disables guardrails, hides errors, removes audit, or lacks rollback/compensation. |
| Auto-Learn | May propose lessons, runbook updates, prompt changes, guardrail tests, and knowledge updates for human review. | The lesson is unreviewed, stale, uncited, classification-unsafe, contradictory, or promoted directly to authoritative knowledge. |
| Auto-Improve | May propose refactoring, policy tightening, fitness functions, test improvements, and technology-stack recommendations. | The improvement adds speculative complexity, breaks bounded context ownership, reduces observability, or lacks measurable benefit. |
| AutoResearch | May collect external or internal signals only through approved classification and citation rules. | It introduces unverified sources, vendor claims without evidence, or direct changes to production rules. |

| **Auto Loop Master Rule**<br>Auto-Heal, Auto-Learn, and Auto-Improve must not only fix, learn, or improve. They must preserve or improve SOLID compliance, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. |
| --- |

Every non-trivial merge request must include a structured evidence summary. The summary may be created with AI assistance, but the named human author and checker remain accountable.

| **Evidence Field** | **Required Content** |
| --- | --- |
| Attributable | Ticket, ADR/TDL if applicable, owner, author, checker, approver, affected repository and files. |
| Verifiable | Tests run, architecture checks, security scans, policy checks, contract tests, AI evals, CI run ID. |
| Classifiable | Data classification, model route eligibility, secrets/PII statement, affected information domains. |
| Improvable | Known limitations, follow-up backlog, monitoring signals, learning or runbook update if applicable. |
| Design principle impact | Statement that SOLID, Clean Architecture, DDD, ports/adapters, idempotency, observability, testability, security, and rollbackability were preserved or improved. |
| AI involvement | Tool/model used, prompt intent, files affected, generated sections, human verification, any rejected AI output. |
| Rollback / recovery | Rollback, forward-fix, compensation, replay, cache invalidation, or migration recovery approach. |

**Required MR Template Block**

| ## AVCI + Design Principles Compliance Summary<br>- Owner / Ticket / ADR:<br>- Change intent:<br>- AI assistance used: yes/no; tool/model; prompt intent; human checker<br>- SOLID impact: preserved / improved / exception requested<br>- Clean Architecture / DDD impact:<br>- Ports-and-adapters impact:<br>- Idempotency / determinism impact:<br>- Security / SBAC / least privilege impact:<br>- Observability / audit evidence impact:<br>- Test evidence: unit, architecture, contract, security, AI eval, mutation<br>- Reversibility: rollback / forward-fix / compensation / replay path<br>- Classification and data handling:<br>- Known limitations and improvement backlog: |
| --- |

| **Activity** | **Solutions Architect** | **Dev Lead** | **Developer** | **QA** | **Security** | **DevSecOps** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Approve root CLAUDE.md baseline | A | R | C | C | C | C | I |
| Approve high-risk directory rules | A | R | C | C | C | C | I |
| Maintain template registry | A | R | C | C | C | R | I |
| Implement pre-commit/CI checks | C | A | R | C | C | R | I |
| Review SOLID/architecture violations | A | R | R | C | C | C | I |
| Review security/policy violations | C | C | R | C | A/R | R | I |
| Verify test and evidence completeness | C | C | R | A/R | C | C | I |
| Audit evidence sampling | I | I | I | C | C | C | A/R |

Every engineer and approved AI-assisted development user must acknowledge the CLAUDE.md hierarchy, 01A Enterprise Design Principles, AVCI requirements, data-handling restrictions, AI accountability, and repository enforcement model before being granted write access.

| **Step** | **Activity** | **Evidence** |
| --- | --- | --- |
| 1 | Review 01A, AVCI v3.1, Engineering Blueprint v5.0, Developer Guide v4.1, Unit Testing v3.1, and this reference. | Signed onboarding acknowledgement. |
| 2 | Install approved devcontainer, pre-commit hooks, IDE rules, and generated AI tool adapters. | Workstation readiness evidence. |
| 3 | Run local repository compliance checks on a sample branch. | Pre-commit and CI dry-run output. |
| 4 | Complete developer exercise: one small PR with AVCI and design-principle summary. | Reviewed sample PR evidence. |
| 5 | Map role, skills, repository access, and AI tool permissions. | SBAC / access approval record. |
| 6 | Quarterly renewal or immediate renewal after major rule changes. | Renewed acknowledgement and access review. |

| **Control Objective** | **AIRA Mechanism** | **Evidence** |
| --- | --- | --- |
| Secure development | CLAUDE.md rules, TDD, SAST/SCA, security tests, code review, SSDF-aligned gates. | CI evidence pack, PR summary, scan results. |
| Access control | CODEOWNERS, SBAC, OPA, Harness, least privilege, MFA workspace controls. | Policy decision logs, reviewer approvals, access review. |
| AI governance | LiteLLM, NeMo Guardrails, model aliases, prompt rules, AI involvement declaration. | Model route logs, guardrail result, prompt version, approval. |
| Architecture integrity | SOLID rules, Clean Architecture checks, DDD boundaries, ArchUnit, forbidden imports. | Architecture fitness results and reviewer signoff. |
| Auditability | AVCI summary, immutable audit, evidence references, CI run IDs, ADR/TDL links. | Evidence record, audit trail, OpenKM/DMS reference. |
| Change control | MR gates, branch protection, CODEOWNERS, waiver workflow, CAB/ARB approvals. | Change record, approvals, waiver expiry. |
| Data protection | Classification-aware routing, no PII/secrets in prompts/logs/tests, redaction rules. | Classification metadata, scan results, reviewer attestation. |

**Root CLAUDE.md Baseline**

| # AIRA Repository Rules of Engagement<br><br>## Authority<br>This CLAUDE.md inherits from:<br>- ADR-AIRA-2026-001<br>- 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1<br>- 01-AIRA AVCI Engineering Standard v3.1<br>- 02-AIRA Engineering Blueprint v5.1<br>- 03-AIRA Developer Guide v4.1<br>- 08-AIRA Unit Testing Engineering Standard v3.1<br><br>## Mandatory Rules<br>1. Preserve or improve SOLID, Clean Architecture, DDD boundaries, ports/adapters, testability, security, observability, reversibility, and AVCI evidence.<br>2. Do not call model providers directly. Use LiteLLM model aliases only.<br>3. Do not bypass NeMo Guardrails Input, Retrieval, Execution, or Output checkpoints.<br>4. Do not execute tools directly from AI agents. Use Harness + SBAC + OPA + audit.<br>5. Do not expose secrets, credentials, raw PII, production data, or Restricted content.<br>6. Write or update deterministic tests before production-bound implementation.<br>7. Include the AVCI + Design Principles Compliance Summary in every non-trivial PR.<br>8. Escalate conflicts, waivers, and unclear ownership. Do not silently choose convenience. |
| --- |

**Guardrails Directory Template**

| # /ai/guardrails/CLAUDE.md<br><br>Additional rules for guardrail changes:<br>- No bypass flags, emergency disable switches, or silent fallback to unguarded model calls.<br>- Every change must include adversarial tests and golden dataset results.<br>- Input, Retrieval, Execution, and Output checkpoints must fail closed.<br>- Confidential/Restricted content must follow classification-aware routing.<br>- Human approval is required before promotion to any shared environment. |
| --- |

**Flyway Directory Template**

| # /infra/flyway/CLAUDE.md<br><br>Additional rules for database migration changes:<br>- All schema changes use Flyway. No manual production DDL.<br>- Use expand/contract migration for compatibility-sensitive changes.<br>- Include rollback, forward-fix, or compensating migration plan.<br>- Seed data must be deterministic and classified.<br>- Migration tests and restore/replay evidence are required before promotion. |
| --- |

**Example .pre-commit-config.yaml**

| repos:<br> - repo: local<br> hooks:<br> - id: aira-claude-md-lock<br> name: Validate CLAUDE.md compiled lock<br> entry: scripts/validate_claude_lock.sh<br> language: system<br> - id: aira-no-provider-sdk<br> name: Block direct model provider SDK imports<br> entry: scripts/check_no_direct_model_provider.sh<br> language: system<br> - id: aira-no-secrets<br> name: Secret and token scan<br> entry: gitleaks protect --staged --verbose<br> language: system<br> - id: aira-architecture-boundaries<br> name: Architecture boundary checks<br> entry: ./gradlew test --tests '*ArchitectureTest'<br> language: system |
| --- |

**Example GitHub Actions Gate**

| name: AIRA CLAUDE.md Compliance<br>on: [pull_request]<br>jobs:<br> compliance:<br> runs-on: ubuntu-latest<br> steps:<br> - uses: actions/checkout@v4<br> - name: Validate repository rules<br> run: ./scripts/validate_claude_lock.sh --strict<br> - name: Run architecture fitness functions<br> run: ./gradlew test --tests '*ArchitectureTest'<br> - name: Run policy checks<br> run: conftest test infra/ ai/ --policy policy/<br> - name: Run security scans<br> run: ./scripts/run_security_scans.sh<br> - name: Verify AVCI summary<br> run: ./scripts/check_pr_avci_summary.sh |
| --- |

| **AVCI Property** | **How This Document Satisfies It** |
| --- | --- |
| Attributable | Owned by Solutions Architecture Office / AI DevSecOps Lead; governed by ADR-AIRA-2026-001 and linked companion standards. |
| Verifiable | Rules are intended for pre-commit, CI, CODEOWNERS, OPA, Harness, architecture tests, and audit evidence enforcement. |
| Classifiable | INTERNAL CONFIDENTIAL; contains engineering governance and repository control rules. |
| Improvable | Quarterly review; updates driven by CI failures, audit findings, security incidents, AI tool changes, and architecture review outcomes. |
