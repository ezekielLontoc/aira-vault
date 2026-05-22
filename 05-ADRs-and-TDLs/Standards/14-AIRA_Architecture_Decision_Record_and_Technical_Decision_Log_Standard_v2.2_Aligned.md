---
document_id: "AIRA-DOC-014"
title: "AIRA Architecture Decision Record and Technical Decision Log Standard"
version: "v2.2"
status: "aligned"
source_file: "14-AIRA_Architecture_Decision_Record_and_Technical_Decision_Log_Standard_v2.2_Aligned.docx"
source_format: "docx"
vault_folder: "05-ADRs-and-TDLs/Standards"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - adr
  - tdl
---

# AIRA Architecture Decision Record and Technical Decision Log Standard

**AIRA
AI-Native Enterprise Platform**

**AIRA Architecture Decision Record and Technical Decision Log Standard**

**v2.2 - Supplemental Alignment Update | INTERNAL CONFIDENTIAL**

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-014** |
| **Document Title** | **AIRA Architecture Decision Record and Technical Decision Log Standard** |
| **Version** | **v2.2 - Supplemental Alignment Update** |
| **Supersedes** | **14-AIRA_Architecture_Decision_Record_and_Technical_Decision_Log_Standard_v2.1_Aligned** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **ALIGNED FOR OBSIDIAN UPLOAD / ARCHITECTURE REVIEW** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Alignment Baseline** | **AIRA Pack 01-05 v1.2 Individual Files; canonical 01A v1.1; Technology Stack v9.1; Java 25 LTS backend baseline** |
| **Target Pack / Register Placement** | **Pack 05 / Decision Governance** |
| **Effective Date** | **2026-05-21** |

## Alignment Control Addendum

**Purpose. **This supplemental aligned version corrects missing-pack inclusion, document-numbering, classification, and cross-reference issues discovered after Pack 01-05 v1.2 generation. The original source content is preserved below, with updated references and added governance controls where necessary.

**Canonical interpretation. **Where the source text contains older references, the current aligned baseline governs: Java 25 LTS for backend services, Technology Stack v9.1, AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, MicroFunction Framework v3.1, Pack 05 Flyway governance, and canonical 01A v1.1.

### Improvement Summary

Refreshed companion references from Technology Stack v8.0 to v9.1 and aligned cross-pack references to current individual files.

Added mandatory decision triggers for Java 25 deviations, Dograh adoption, GitNexus authority boundaries, and Flyway-from-Day-0 exceptions.

Strengthened retrieval eligibility so superseded, waived, draft, or conflicting decisions cannot be served as current authority.

Aligned ADR/TDL templates with 20 Enterprise Design Principles, AVCI v3.1, and canonical 01A v1.1.

### AVCI Compliance Summary

| **AVCI Property** | **Evidence** |
| --- | --- |
| **Attributable** | **Identifies source document, owner, superseded version, target pack placement, and alignment baseline.** |
| **Verifiable** | **Preserves source content and records the specific alignment changes required for Obsidian and revision-control use.** |
| **Classifiable** | **Standardizes classification to INTERNAL CONFIDENTIAL and preserves any elevated handling controls in the body.** |
| **Improvable** | **Captures open numbering/pack-inclusion issues and creates a clean basis for future source-pack regeneration.** |

## Aligned Source Content

AIRA

AI-Native Enterprise Platform

## Architecture Decision Record and Technical Decision Log Standard

Decision Governance · ADR Discipline · Technical Traceability · SOLID/AVCI-Aligned

Version 2.0 · April 2026

| **Mandatory Practice Statement<br>Every material architecture, technology, security, data, integration, workflow, AI, infrastructure, or MicroFunction decision in AIRA must be captured as an ADR or TDL before implementation. In v2.0, every decision must also assess impact on SOLID, Clean Architecture, DDD boundaries, ports-and-adapters, testability, security, observability, reversibility, and AVCI evidence.** |
| --- |

| **Property** | **Value** |
| --- | --- |
| **Document Title** | **AIRA Architecture Decision Record and Technical Decision Log Standard** |
| **Document ID** | **AIRA-DOC-014** |
| **Version** | **v2.0 - Enterprise Design Principles and SOLID Enforcement Revision** |
| **Supersedes** | **14-AIRA_Architecture_Decision_Record_and_Technical_Decision_Log_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / ENGINEERING ADOPTION** |
| **Owner** | **Solutions Architecture Office** |
| **Co-Owners** | **Enterprise Architecture · DevSecOps · Security Architecture · QA Engineering · Internal Audit** |
| **Effective Date** | **On CAB / Architecture Review Board approval** |
| **Review Cadence** | **Quarterly; unscheduled on material architecture, technology, security, AI, compliance, or operating-model change** |
| **Primary Decision Inputs** | **ADR-AIRA-2026-001; AIRA Cross-Document Revision Control Matrix v1.0; 01A Enterprise Design Principles and SOLID Enforcement Layer v1.0** |
| **Companion Documents** | **01 AVCI v3.1; 01A Enterprise Design Principles v1.0; 02 Engineering Blueprint v5.1; 03 Developer Guide v4.1; 04 Technology Stack v9.1; 05 Information Nervous System v4.1; 06 CLAUDE.md Reference v3.1; 07 Skills Framework v3.1; 08 Unit Testing v3.1; 10 MicroFunction Framework v3.1; 11 DevSecOps v3.1; 12 CLAUDE.md Rollout v3.0; 13 Knowledge Governance v2.0** |
| **Purpose** | **Define the standard for capturing, reviewing, approving, indexing, superseding, and maintaining all architecture decisions and technical decisions across AIRA.** |

## Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Decision Governance Principles

4. Decision Record Types

5. Mandatory ADR and TDL Triggers

6. Decision Lifecycle and Review Workflow

7. ADR Structure and Required Fields

8. Technical Decision Log Structure

9. Enterprise Design Principles Impact Assessment

10. Repository, Obsidian, and LLM Wiki Structure

11. Review, Approval, and RACI

12. PR, CI/CD, and Traceability Rules

13. Auto-Heal, Auto-Learn, and Auto-Improve Decision Governance

14. Templates and Examples

15. Quality Gates, Anti-Patterns, and Waivers

16. Implementation Roadmap

17. AVCI Compliance Summary

## Appendix A. ADR Template

## Appendix B. TDL Template

## Appendix C. Decision Review Checklist

| **Word TOC Note<br>This document uses a static table of contents for deterministic rendering. In Microsoft Word, a dynamic TOC may be inserted before final publication if required.** |
| --- |

## 1. Executive Summary

AIRA is a governed AI-native enterprise platform. Its reliability depends not only on good code, but on the quality of the decisions that shape its code, configuration, workflows, models, guardrails, data structures, integrations, infrastructure, and operating practices. This standard turns architecture and technical decisions into first-class engineering artifacts.

Version 2.0 upgrades the ADR/TDL discipline to incorporate the Enterprise Design Principles and SOLID Enforcement Layer. Decisions must now explicitly prove that they preserve or improve SOLID compliance, Clean Architecture boundaries, DDD bounded contexts, ports-and-adapters separation, testability, security posture, observability, reversibility, rollbackability, and AVCI evidence.

| **Core Rule<br>No material design decision should live only in chat messages, meetings, slide decks, code comments, or individual memory. If it shapes how AIRA is built, secured, tested, operated, automated, healed, learned, or improved, it must be captured, versioned, reviewed, indexed, and linked to evidence.** |
| --- |

| **v1.0 Baseline** | **v2.0 Enhancement** |
| --- | --- |
| **ADR/TDL captured material decisions and prevented silent architecture drift.** | **Adds mandatory Enterprise Design Principles impact assessment to every ADR and applicable TDL.** |
| **Decisions required context, alternatives, trade-offs, and consequences.** | **Adds explicit SOLID, Clean Architecture, DDD, ports/adapters, testability, security, observability, reversibility, and fitness-function consequences.** |
| **AI may draft and analyze decisions; humans approve.** | **Adds Auto-Heal / Auto-Learn / Auto-Improve decision gates and rejects autonomous self-modifying architectural changes.** |
| **Obsidian and LLM Wiki indexing supported decision retrieval.** | **Adds retrieval eligibility controls so superseded or principle-violating decisions cannot be served as current authority.** |

## 2. Purpose, Scope, and Authority

This standard defines how AIRA captures, reviews, approves, stores, retrieves, supersedes, and improves architecture decisions and technical decisions. It ensures that developers understand why a design exists, not only what code to write.

| **In Scope** | **Out of Scope** |
| --- | --- |
| **Architecture decisions, technical design choices, technology selections, integration choices, security patterns, AI model-routing decisions, prompt and guardrail decisions, data and database decisions, MicroFunction catalog decisions, deployment and DevSecOps decisions, exception or waiver decisions.** | **Informal brainstorming that does not lead to implementation; non-technical business preferences that do not shape system behavior, controls, data, or operations.** |
| **All AIRA repositories, Obsidian notes, LLM Wiki artifacts, development standards, runbooks, application modules, infrastructure components, and support frameworks.** | **Personal notes, unmanaged chat transcripts, unreviewed AI outputs, and unsupported external content unless promoted through governance.** |
| **Human-authored and AI-assisted decisions produced using ChatGPT, Codex, Claude Code, Hermes Agent, or other approved tools.** | **Autonomous AI execution, direct provider-side model decisions, or undocumented agent behavior.** |

| **Authority Level** | **Document / Artifact** | **Decision Role** |
| --- | --- | --- |
| **L0** | **AIRA Consolidated Architecture Blueprint / Architecture Board decisions** | **Highest architecture authority for system boundaries, platform topology, and major conflict resolution.** |
| **L1** | **AIRA Engineering Blueprint v5.0 and AIRA DevSecOps Standard v3.0** | **Build-ready system specification and operating discipline.** |
| **L2** | **01A Enterprise Design Principles and SOLID Enforcement Layer; AVCI v3.0** | **Universal architecture/design quality gate and evidence discipline.** |
| **L3** | **This ADR/TDL Standard** | **Defines how decisions are recorded, reviewed, linked, superseded, and indexed.** |
| **L4** | **ADR records and TDL entries** | **Durable decision evidence that governs implementation and supersedes informal discussions.** |

## 3. Decision Governance Principles

| **No.** | **Principle** | **Meaning** |
| --- | --- | --- |
| **DG-1** | **Decisions are artifacts** | **Every decision receives an identifier, owner, status, version, classification, evidence reference, and review state.** |
| **DG-2** | **Decisions precede implementation** | **Implementation may start as a spike, but production-bound work requires an accepted ADR or TDL before merge.** |
| **DG-3** | **Context matters** | **Each record explains the problem, constraints, options, trade-offs, consequences, and rejected alternatives.** |
| **DG-4** | **AVCI by construction** | **Every decision must be attributable, verifiable, classifiable, and improvable.** |
| **DG-5** | **Design principles are mandatory** | **Every material decision assesses the 20 Enterprise Design Principles and documents any adverse impact.** |
| **DG-6** | **Human accountability** | **AI may draft and analyze decisions, but named humans approve and remain accountable.** |
| **DG-7** | **Supersede, do not rewrite history** | **Accepted decisions are immutable except metadata corrections. New learning creates a superseding decision.** |
| **DG-8** | **Classification governs retrieval** | **Draft, restricted, superseded, or waived records are not served as authoritative answers by LLM Wiki unless eligibility rules allow it.** |
| **DG-9** | **Small decisions still count** | **Not every decision needs a full ADR, but every production-relevant decision needs traceability.** |
| **DG-10** | **Fitness functions prove enforcement** | **Decisions affecting architecture must identify the automated or manual checks that will detect drift.** |

## 4. Decision Record Types

| **Record Type** | **Use For** | **Owner** | **Approval** |
| --- | --- | --- | --- |
| **Architecture Decision Record (ADR)** | **Durable decisions affecting architecture, data, security, AI behavior, technology selection, service boundaries, integration patterns, workflow engines, MicroFunction categories, deployment topology, or long-term maintainability.** | **Solutions Architect / Enterprise Architect** | **Architecture Board or delegated architecture approver** |
| **Technical Decision Log (TDL)** | **Implementation-level choices inside a bounded ADR: library option, minor configuration approach, package structure, local design trade-off, error mapping, test strategy, or adapter detail.** | **Tech Lead / Senior Developer** | **Tech Lead or code reviewer** |
| **Exception / Waiver Record** | **Temporary deviation from an approved standard, control, technology baseline, architecture principle, or security rule.** | **Requesting owner + risk owner** | **Architecture, Security, CAB, and risk owner as applicable** |
| **Research Note** | **Exploration or comparison that does not yet decide. Marked non-authoritative.** | **Research owner** | **Review only; not binding** |
| **Supersedence Notice** | **Formal replacement of a prior ADR/TDL with a new decision.** | **Owner of new decision** | **Same authority as original or higher** |

## 5. Mandatory ADR and TDL Triggers

AIRA uses materiality to determine whether a full ADR is needed. When in doubt, create at least a TDL and escalate to ADR if the decision changes boundaries, risk, control posture, or long-term maintainability.

| **Trigger** | **ADR Required** | **TDL Sufficient When** |
| --- | --- | --- |
| **New technology, framework, model, database, or infrastructure component is introduced.** | **Yes** | **Only for minor approved-library configuration under an existing ADR.** |
| **Service boundary, bounded context, schema ownership, API ownership, workflow ownership, or integration ownership changes.** | **Yes** | **No. Boundary changes require ADR.** |
| **AI model routing, LiteLLM aliases, prompt/guardrail strategy, Hermes/Harness action boundary, agent trust, or tool-action policy changes.** | **Yes** | **TDL allowed for parameter tuning under an approved AI ADR.** |
| **MicroFunction catalog category, standard step, compensation model, error taxonomy, or execution mode changes.** | **Yes** | **TDL allowed for a new STP-BUS-* under existing category if risk is low.** |
| **Database schema ownership, RLS, data classification, retention, encryption, migration pattern, or outbox/idempotency strategy changes.** | **Yes** | **TDL allowed for non-breaking migration detail under approved pattern.** |
| **CI/CD, GitOps, security gate, architecture fitness function, branch protection, or evidence gate changes.** | **Yes** | **TDL allowed for implementation detail that does not weaken policy.** |
| **Deviation from 01A principles, AVCI, Security Standard, Developer Guide, Unit Testing Standard, or Technology Stack.** | **Yes + waiver** | **No; deviations require waiver and expiry.** |

## 6. Decision Lifecycle and Review Workflow

| **State** | **Entry Criteria** | **Allowed Actions** | **Exit Criteria** |
| --- | --- | --- | --- |
| **Proposed** | **Decision need identified; owner assigned; classification estimated.** | **Draft ADR/TDL, gather evidence, compare alternatives.** | **Draft completed with context, options, recommendation, and principle-impact assessment.** |
| **Review** | **Draft is ready for technical, security, QA, and architecture review.** | **Review, comment, request evidence, ask for tests or fitness functions.** | **Accepted, rejected, or returned for rework.** |
| **Accepted** | **Approver signs off; evidence and implementation path are clear.** | **Implement under linked ticket/MR; index in Obsidian/LLM Wiki if eligible.** | **Implementation completed and verified.** |
| **Implemented** | **Decision is reflected in code, configuration, infrastructure, tests, and documentation.** | **Monitor drift; run fitness functions; collect outcomes.** | **Remain current or move to superseded/deprecated.** |
| **Superseded** | **New approved decision replaces the prior decision.** | **Retain history; exclude from default retrieval; link successor.** | **Archived but retrievable for historical analysis.** |
| **Rejected** | **Decision failed review or was not selected.** | **Retain as non-authoritative research evidence where useful.** | **No implementation allowed.** |

| **Fail-Closed Review Rule<br>A decision with unresolved security impact, classification uncertainty, missing test plan, missing rollback strategy, or adverse 01A principle impact must not be accepted unless a formal waiver with expiry and risk acceptance is approved.** |
| --- |

## 7. ADR Structure and Required Fields

| **Field** | **Required Content** |
| --- | --- |
| **ADR ID** | **ADR-AIRA-YYYY-NNN unique identifier.** |
| **Title** | **Clear decision name using action-oriented wording.** |
| **Status** | **Proposed, Review, Accepted, Implemented, Superseded, Rejected, Deprecated, Waived.** |
| **Date / Version** | **Creation date, effective date, version, and supersedes/superseded-by references.** |
| **Owner / Approver** | **Named decision owner, reviewers, approver, and accountable business/technical role.** |
| **Classification** | **Public/Internal/Confidential/Restricted; domain; knowledge tier; retrieval eligibility.** |
| **Context and Problem** | **Problem statement, drivers, constraints, current state, and why a decision is needed now.** |
| **Decision** | **Chosen option and implementation boundary.** |
| **Alternatives Considered** | **At least two serious alternatives where feasible, including do-nothing where relevant.** |
| **Consequences** | **Positive, negative, operational, security, compliance, cost, maintainability, and migration consequences.** |
| **Enterprise Design Principles Impact** | **Assessment against 20 principles; adverse effects and mitigations.** |
| **Verification and Fitness Functions** | **Tests, scans, architecture checks, policy checks, review evidence, and drift detection.** |
| **Rollback / Reversibility** | **Rollback, forward-fix, compensation, deprecation, migration, or recovery path.** |
| **Implementation Plan** | **Tickets, repositories, MRs, CI gates, documentation updates, and rollout sequence.** |
| **AVCI Compliance Summary** | **Attributable, Verifiable, Classifiable, Improvable evidence summary.** |

## 8. Technical Decision Log Structure

The TDL is a lighter record for implementation-level decisions that still require traceability. It must not be used to hide architecture decisions that require ADR review.

| **TDL Field** | **Purpose** |
| --- | --- |
| **TDL ID** | **TDL-AIRA-YYYY-NNN or repository-local identifier.** |
| **Linked ADR / Ticket** | **Parent ADR, user story, defect, or task.** |
| **Decision Summary** | **One-paragraph technical choice and reason.** |
| **Scope** | **Files, packages, service, bounded context, or MicroFunction affected.** |
| **Options Considered** | **At least chosen option plus rejected option.** |
| **Impact Assessment** | **Security, testability, maintainability, performance, observability, rollback, and 01A principle impact.** |
| **Verification Evidence** | **Tests, CI run, code review, static analysis, contract tests, or manual review evidence.** |
| **Owner and Reviewer** | **Named maker/checker roles.** |
| **Status** | **Proposed, Accepted, Implemented, Superseded, Rejected.** |

## 9. Enterprise Design Principles Impact Assessment

Every ADR and high-risk TDL must include an explicit impact assessment. The purpose is not to produce bureaucracy; it is to prevent decisions that accidentally optimize speed while weakening architecture discipline.

| **Principle** | **Decision Question** | **Evidence / Control** |
| --- | --- | --- |
| **SOLID** | **Does the decision preserve single responsibility, abstractions, substitutability, interface segregation, and dependency inversion?** | **ArchUnit/SonarQube/code review** |
| **Clean Architecture** | **Are domain/application/infrastructure boundaries preserved?** | **Package dependency tests** |
| **DDD / Bounded Contexts** | **Does the decision respect ownership and ubiquitous language?** | **Context map review** |
| **Ports and Adapters** | **Are external dependencies behind interfaces/adapters?** | **Dependency direction tests** |
| **DRY, KISS, YAGNI** | **Does it avoid duplication, overengineering, and speculative features?** | **Review checklist** |
| **Idempotency by Design** | **Are mutations retry-safe and deduplicated?** | **Idempotency tests** |
| **Determinism and Reproducibility** | **Are builds/tests/config predictable and repeatable?** | **CI reproducibility gate** |
| **Fail-Safe, Not Fail-Open** | **Does failure block protected operations?** | **Negative tests / OPA tests** |
| **Human-in-the-Loop** | **Are high-impact actions human-approved?** | **Flowable approval evidence** |
| **Least Privilege / SBAC** | **Are permissions minimal and skill-gated?** | **OPA/SBAC evidence** |
| **Separation of Duties** | **Are maker/checker and promotion duties separated?** | **CODEOWNERS/CAB checks** |
| **Observability by Design** | **Are traces, metrics, logs, audit, and evidence included?** | **OTel and audit checks** |
| **Policy as Code** | **Are rules expressed as reviewed policy artifacts where applicable?** | **OPA/Conftest tests** |
| **Testability by Design** | **Can the decision be tested deterministically?** | **Unit/contract/e2e tests** |
| **Secure by Design** | **Are secrets, identity, classification, and threat controls addressed?** | **SAST/secret/threat review** |
| **Resilience Patterns** | **Are retries, timeouts, circuit breakers, fallback, and DLQ covered?** | **Resilience tests** |
| **Architectural Fitness Functions** | **Can drift be automatically detected?** | **Fitness CI job** |
| **Progressive Autonomy** | **Is AI authority bounded by risk, trust, and approval?** | **Harness/SBAC gate** |
| **Reversibility / Rollbackability** | **Can change be rolled back, forward-fixed, or compensated?** | **Rollback plan / drill** |
| **AVCI** | **Is the decision attributable, verifiable, classifiable, and improvable?** | **AVCI evidence record** |

## 10. Repository, Obsidian, and LLM Wiki Structure

| **Location** | **Content** | **Governance Rule** |
| --- | --- | --- |
| **docs/adr/accepted/** | **Accepted ADRs** | **Indexed by Obsidian and eligible for LLM Wiki retrieval when classification permits.** |
| **docs/adr/proposed/** | **Draft ADRs** | **Not authoritative. Retrieval only when explicitly requested as draft material.** |
| **docs/adr/superseded/** | **Superseded ADRs** | **Historical only. Excluded from normal retrieval.** |
| **docs/tdl/** | **Technical Decision Logs** | **Linked to ADRs, tickets, MRs, and code owners.** |
| **docs/waivers/** | **Approved exceptions and waivers** | **Must include risk owner, expiry, compensating controls, and remediation plan.** |
| **obsidian/10-Decision-Records/** | **Canonical Obsidian projection** | **Must retain links to source DOCX/Markdown, status, version, and classification.** |
| **llm-wiki/curated-decisions/** | **Human-reviewed decision knowledge** | **Derivative. Must cite source ADR/TDL and exclude stale/conflicting decisions.** |

| **docs/<br> adr/<br> accepted/ADR-AIRA-2026-001-enterprise-design-principles.md<br> proposed/<br> superseded/<br> tdl/<br> TDL-AIRA-2026-001-microfunction-error-policy.md<br> waivers/<br> WAIVER-AIRA-2026-001-temporary-tool-exception.md<br> templates/<br> adr-template.md<br> tdl-template.md** |
| --- |

## 11. Review, Approval, and RACI

| **Activity** | **Solutions Architect** | **Enterprise Architect** | **Tech Lead** | **Security** | **QA/SDET** | **DevSecOps** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Create ADR for material decision** | **A/R** | **C** | **C** | **C** | **C** | **C** | **I** |
| **Create TDL for implementation decision** | **C** | **C** | **A/R** | **C** | **C** | **C** | **I** |
| **Review architecture boundary impact** | **A/R** | **R** | **C** | **C** | **C** | **C** | **I** |
| **Review security/classification impact** | **A** | **C** | **C** | **R** | **C** | **C** | **I** |
| **Review testability and evidence** | **A** | **C** | **C** | **C** | **R** | **C** | **I** |
| **Review CI/CD and policy-as-code impact** | **A** | **C** | **C** | **C** | **C** | **R** | **I** |
| **Approve high-risk or cross-cutting ADR** | **A/R** | **R** | **C** | **R** | **C** | **R** | **I** |
| **Audit decision evidence completeness** | **I** | **I** | **I** | **C** | **C** | **C** | **A/R** |

## 12. PR, CI/CD, and Traceability Rules

| **Control** | **Required Rule** | **Evidence** |
| --- | --- | --- |
| **PR/MR linkage** | **Every non-trivial PR/MR links to ADR, TDL, waiver, or ticket explaining the design basis.** | **PR template field and CI validation.** |
| **Decision status check** | **Implementation cannot merge against Proposed, Rejected, Superseded, or expired-waiver decisions.** | **Decision registry status check.** |
| **Architecture fitness checks** | **ADR-required fitness functions must be implemented or tracked before production promotion.** | **CI results and fitness-function report.** |
| **CODEOWNERS** | **Decision-sensitive areas require architecture/security/QA owners as reviewers.** | **Review approval evidence.** |
| **AI involvement declaration** | **AI-generated or AI-assisted decision text must declare tool/model route, prompt intent, and human reviewer.** | **AVCI PR summary.** |
| **Traceability** | **ADR/TDL must link to requirements, contracts, tests, code, policy, and documentation updates.** | **Traceability matrix or evidence pack.** |

## 13. Auto-Heal, Auto-Learn, and Auto-Improve Decision Governance

Auto-Heal, Auto-Learn, and Auto-Improve must not only fix, learn, or optimize. They must preserve or improve design principles, architecture boundaries, testability, security posture, observability, reversibility, and AVCI evidence. Any AI-generated remediation or improvement that changes architecture, behavior, controls, data, or operational authority requires decision traceability.

| **Capability** | **ADR / TDL Requirement** | **Acceptance Gate** |
| --- | --- | --- |
| **Auto-Heal** | **TDL for low-risk repair; ADR for boundary, control, workflow, data, or architecture change.** | **Fix is minimal, evidence-based, tested, secure, observable, idempotent, and reversible.** |
| **Auto-Learn** | **TDL for knowledge artifact update; ADR for new source authority, retrieval route, model route, or guardrail strategy.** | **Lesson is cited, human-reviewed, classification-safe, non-conflicting, and linked to outcome evidence.** |
| **Auto-Improve** | **ADR when changing architecture, framework, technology, pipeline gate, agent authority, or MicroFunction standard.** | **Improvement reduces measurable risk or debt without weakening 01A principles.** |
| **AutoResearch** | **Research Note only until human-reviewed; ADR required before adoption.** | **External information is verified, current, classified, and reconciled against AIRA authority hierarchy.** |

## 14. Templates and Examples

ADR and TDL templates are mandatory. Teams may add domain-specific fields, but they may not remove the AVCI summary, classification, decision consequences, design principles impact assessment, or reversibility section.

| **ADR-AIRA-YYYY-NNN: <Decision Title><br>Status: Proposed \| Review \| Accepted \| Implemented \| Superseded \| Rejected<br>Owner: <Named owner><br>Approver: <Architecture / Security / CAB approver><br>Classification: <Public/Internal/Confidential/Restricted><br>Context: <Problem, constraints, drivers><br>Decision: <Chosen option><br>Alternatives: <Option A/B/C and do-nothing where applicable><br>Consequences: <Positive, negative, operational, security, compliance><br>Enterprise Design Principles Impact: <20-principle assessment><br>Verification and Fitness Functions: <Tests, CI checks, policy checks><br>Rollback / Reversibility: <Rollback, forward-fix, compensation, retirement><br>Implementation Links: <Tickets, repos, MRs, docs><br>AVCI Summary: <Attributable, Verifiable, Classifiable, Improvable>** |
| --- |

| **TDL-AIRA-YYYY-NNN: <Technical Decision Summary><br>Linked ADR/Ticket: <Reference><br>Decision: <Chosen implementation detail><br>Scope: <Service/package/files/config affected><br>Impact: <Security, testability, observability, rollback, 01A principles><br>Verification: <Tests/checks/review evidence><br>Owner/Reviewer: <Maker/Checker><br>Status: <Proposed/Accepted/Implemented/Superseded/Rejected>** |
| --- |

## 15. Quality Gates, Anti-Patterns, and Waivers

| **Anti-Pattern** | **Why Rejected** | **Required Response** |
| --- | --- | --- |
| **Decision hidden in chat or meeting notes** | **No audit trail, no owner, no version, no retrieval control.** | **Capture ADR/TDL before implementation merge.** |
| **TDL used to bypass ADR review** | **Material decisions avoid architecture governance.** | **Escalate to ADR.** |
| **Decision weakens architecture boundaries** | **Creates coupling, drift, and maintainability risk.** | **Reject or require waiver with compensating controls.** |
| **AI-generated decision accepted without human review** | **Breaks accountability and AVCI.** | **Require named human owner and reviewer.** |
| **Superseded decision remains indexed as current** | **Stale AI retrieval creates wrong guidance.** | **Quarantine from default retrieval and link successor.** |
| **Rollback omitted** | **Change cannot be safely reversed or compensated.** | **Return for rework or risk acceptance.** |
| **No fitness function for enforceable architecture decision** | **Drift cannot be detected.** | **Add CI or manual fitness check.** |

| **Waiver Rule<br>A waiver is not permission to ignore architecture discipline. It is a temporary, attributable, risk-accepted exception with expiry, compensating controls, evidence owner, and remediation plan.** |
| --- |

## 16. Implementation Roadmap

| **Phase** | **Target Outcome** | **Exit Criteria** |
| --- | --- | --- |
| **Phase 1 - Template adoption** | **ADR and TDL templates updated across repositories.** | **Templates committed, CODEOWNERS assigned, PR template updated.** |
| **Phase 2 - Registry and indexing** | **Decision registry created and Obsidian/LLM Wiki projection rules defined.** | **Accepted ADRs and TDLs appear in controlled registry with retrieval eligibility metadata.** |
| **Phase 3 - CI enforcement** | **PR/MR checks enforce decision linkage and status.** | **CI blocks unlinked material changes and superseded decision references.** |
| **Phase 4 - Fitness function integration** | **Architecture decisions are backed by automated or manual checks.** | **ArchUnit, SonarQube, Semgrep, OPA/Conftest, contract, and test checks mapped to ADRs.** |
| **Phase 5 - Continuous improvement** | **Decision outcomes are reviewed quarterly.** | **Supersedence, waiver expiry, and drift metrics reported to Architecture Board.** |

## 17. AVCI Compliance Summary

| **AVCI Property** | **How This Standard Satisfies It** |
| --- | --- |
| **Attributable** | **Every decision has a named owner, reviewer, approver, source, version, date, status, and linked implementation evidence.** |
| **Verifiable** | **Every decision includes evidence, tests, policy checks, review records, architecture fitness functions, and implementation links.** |
| **Classifiable** | **Every decision carries classification, domain, knowledge tier, retrieval eligibility, and handling rules.** |
| **Improvable** | **Decisions are reviewed, superseded rather than overwritten, linked to outcomes, and improved through controlled feedback and governance.** |

## Appendix A. ADR Template

| **Section** | **Required Question** |
| --- | --- |
| **Context** | **What problem are we solving and why now?** |
| **Decision** | **What did we decide?** |
| **Alternatives** | **What did we reject and why?** |
| **Principles Impact** | **Does the decision preserve the 20 enterprise design principles?** |
| **Evidence** | **How do we prove the decision is safe, correct, and current?** |
| **Reversibility** | **How do we reverse, compensate, or supersede it?** |
| **AVCI** | **Who owns it, what proves it, how is it classified, and how will it improve?** |

## Appendix B. TDL Template

| **Field** | **Minimum Content** |
| --- | --- |
| **TDL ID** | **Unique identifier and linked ADR/ticket.** |
| **Decision** | **Short decision summary.** |
| **Scope** | **Affected bounded context, service, package, config, or MicroFunction.** |
| **Impact** | **Security, testability, observability, rollback, and principle impact.** |
| **Evidence** | **Test/check/review evidence.** |
| **Owner / Reviewer** | **Maker/checker accountability.** |

## Appendix C. Decision Review Checklist

Decision has an owner, reviewer, approver, status, classification, and source reference.

The decision is aligned with the latest AVCI, 01A, Engineering Blueprint, Developer Guide, and Technology Stack.

Alternatives and trade-offs are recorded, including consequences and risks.

Enterprise Design Principles impact is complete and adverse impacts are mitigated or waived.

Testability, observability, security, resilience, idempotency, and reversibility are explicitly addressed.

Implementation tickets, PR/MR links, and CI/CD gates are identified.

Obsidian and LLM Wiki retrieval eligibility is correct for the status and classification.

Supersedence and retirement rules are defined where replacing an older decision.
