---
document_id: "AIRA-DOC-041"
title: "AIRA Agentic DevSecOps and System Factory Standard"
version: "v1.1"
status: "improved"
source_file: "41-AIRA_Agentic_DevSecOps_and_System_Factory_Standard_v1.1_Improved.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/DevSecOps"
generated_at: "2026-05-25"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - agentic-devsecops
  - devsecops
  - system-factory
  - standard
---

# AIRA Agentic DevSecOps and System Factory Standard

**AIRA**

**AI-Native Enterprise Platform**

**AIRA Agentic DevSecOps and System Factory Standard**

_Enterprise-Grade Agentic Engineering Platform | Hermes Agent Runtime | Governed AI Workforce | AVCI Evidence_

| **Mandatory Practice Statement**<br>AIRA shall be developed as a governed AI-native system factory. No agent, skill, model route, tool action, generated artifact, remediation, learning item, or improvement is production-ready unless it satisfies AVCI, Enterprise Design Principles, security, testability, observability, reversibility, and human accountability. |
| --- |

| **Property** | **Value** |
| --- | --- |
| **Document ID** | **AIRA-DOC-041** |
| **Document Title** | **AIRA Agentic DevSecOps and System Factory Standard** |
| **Document Version** | **v1.1 - Improved Enterprise-Grade Review** |
| **Supersedes** | **41-AIRA_Agentic_DevSecOps_and_System_Factory_Standard_v1.0** |
| **Classification** | **INTERNAL CONFIDENTIAL** |
| **Status** | **FOR ARCHITECTURE REVIEW BOARD / DEVSECOPS ADOPTION** |
| **Owner** | **Solutions Architecture Office / IT Head** |
| **Co-Owners** | **Enterprise Architecture; AI DevSecOps Lead; Software Development Lead; Security Architecture; QA Engineering; Platform Engineering; Internal Audit** |
| **Effective Date** | **Upon Architecture Review Board / CAB approval** |
| **Review Cadence** | **Quarterly; unscheduled on material AI-agent, model-routing, security, technology-stack, governance, or production-authority change** |
| **Primary Audience** | **Solutions Architects, Developers, QA/SDET, DevSecOps, Security, DBA, Platform Engineering, AI Engineering, SRE, Compliance, Internal Audit** |
| **Primary Governing Standard** | **01-AIRA AVCI Engineering Standard v3.0 and 01A Enterprise Design Principles / SOLID Enforcement Layer** |
| **Companion Documents** | **02 Engineering Blueprint v5.0; 03 Developer Guide v4.0; 04 Technology Stack v9.0; 05 Information Nervous System v4.0; 07 Skills Framework v3.0; 08 Unit Testing v3.0; 10 MicroFunction Framework v3.0; 11 DevSecOps Standard v3.0; 14 ADR/TDL v2.0; 17 Security Standard v2.0** |

Version 1.1 | May 2026 | Prepared for AIRA Project Source Alignment, Obsidian Upload, PoC-to-Full Development Governance, and BFS Management Review

## Static Table of Contents

1. Executive Summary

2. v1.1 Review Verdict and Improvement Summary

3. Purpose, Scope, and Strategic Positioning

4. Authority, Precedence, and Companion Sources

5. AIRA as an AI-Native System Factory

6. System Factory Reference Architecture

7. Hermes Agent Strategic Role and Boundaries

8. Four-Plane Agentic DevSecOps Operating Model

9. AIRA Agent Workforce Model

10. Agent Control Plane

11. Agent Execution Plane

12. Knowledge and Evidence Plane

13. Human Governance Plane

14. Agent Registry Standard

15. Agent SBAC and Least Privilege Matrix

16. Agent Skill Library Governance

17. Agent Memory, Context, and Knowledge Governance

18. Agent Trust Score and Progressive Autonomy

19. Auto-Learn Governance

20. Auto-Heal Governance

21. Auto-Improve Governance

22. AutoResearch Governance

23. Agent-to-Agent Collaboration and Maker-Checker Pattern

24. System Factory Delivery Value Stream

25. Integration with the AIRA Technology Stack

26. Security, Privacy, and Classification Controls

27. DevSecOps, CI/CD, and Evidence Pipeline

28. PoC Implementation Model

29. Full Development Rollout Roadmap

30. Metrics, KPIs, and Maturity Model

31. Risks, Anti-Patterns, and Controls

32. RACI and Separation of Duties

33. Required Templates and Schemas

34. Acceptance Criteria

35. AVCI Compliance Summary

36. Appendices

## 1. Executive Summary

AIRA is envisioned as more than a mortgage servicing or account management system. AIRA shall become a governed AI-native system factory: an internal platform that enables BFS to design, generate, test, secure, document, deploy, operate, learn, heal, and improve enterprise systems through an expanding but controlled workforce of intelligent agents.

This standard formalizes that vision. Hermes Agent is adopted as the initial agent runtime for memory, skills, learning, task reasoning, and developer-facing agent workflows. Hermes is not the complete governance system. It operates inside AIRA controls: LiteLLM for model routing, NeMo Guardrails for AI safety, Harness for protected tool execution, OPA/Conftest for policy-as-code, SBAC for skill-level authority, GitHub for source control, GitNexus for read-only code intelligence, Flowable for human approval, Temporal for durable machine workflow, and AVCI for evidence.

| **Strategic Principle**<br>AIRA is not only a system to be built by the DevSecOps team. AIRA is the AI-native engineering platform that will help multiply the DevSecOps team and build future BFS systems under strict governance. |
| --- |

| **Strategic Goal** | **Required AIRA Response** |
| --- | --- |
| **Multiply the DevSecOps team** | **Create governed AI agent teams for architecture, development, QA, DevSecOps, security, operations, documentation, and knowledge management.** |
| **Build future systems faster** | **Use reusable MicroFunctions, templates, prompts, agent skills, code generators, testing agents, and evidence-producing pipelines.** |
| **Continuously improve** | **Convert reviews, failures, incidents, metrics, and lessons into candidate improvements reviewed and promoted through AVCI.** |
| **Remain enterprise-safe** | **Apply SBAC, human-in-the-loop, separation of duties, classification-aware routing, and fail-safe controls.** |
| **Become best-in-industry** | **Measure agent quality, platform maturity, architecture compliance, evidence completeness, and improvement velocity.** |

| **v1.1 Enterprise Position**<br>The AIRA System Factory must be designed as a disciplined engineering production line, not as a loose collection of AI tools. Agents may accelerate analysis, drafting, testing, documentation, and remediation, but authority remains with governed controls, evidence, and named human accountability. |
| --- |

## 2. v1.1 Review Verdict and Improvement Summary

The v1.0 standard is directionally correct and strategically valuable. It correctly positions Hermes Agent as a runtime inside AIRA controls rather than as the governance authority. Version 1.1 strengthens the document into an enterprise-grade operating standard by adding clearer system-factory architecture, stronger trust/autonomy controls, memory governance, evidence schemas, CI/CD integration, implementation gates, and management-ready acceptance criteria.

| **Area Reviewed** | **v1.0 Strength** | **v1.1 Improvement** |
| --- | --- | --- |
| **Strategic framing** | **Correctly defines AIRA as a governed AI-native system factory.** | **Adds explicit enterprise operating model, system-factory value stream, and management-grade control narrative.** |
| **Hermes role** | **Correctly states Hermes is runtime, not governance system.** | **Adds runtime boundary rules, memory constraints, tool-action prohibitions, kill-switch rules, and evidence expectations.** |
| **Agent workforce** | **Defines architecture, development, QA, DevSecOps, security, operations, and knowledge agents.** | **Adds lifecycle states, agent quality gates, agent-to-agent handoff rules, and maker-checker separation by agent type.** |
| **Control plane** | **Identifies registry, SBAC, trust, approval, audit, and kill switch.** | **Adds policy decision points, autonomy escalation gates, memory quarantine, model-route eligibility, and control-plane ownership.** |
| **Auto loops** | **Defines Auto-Learn, Auto-Heal, and Auto-Improve.** | **Adds AutoResearch, rejection conditions, remediation evidence schema, rollback proof, and learning promotion workflow.** |
| **Technology integration** | **Maps key technologies.** | **Adds stronger integration patterns across LiteLLM, NeMo, Harness, Flowable, Temporal, GitHub, GitNexus, CI/CD, OpenTelemetry, OpenKM, Obsidian, and LLM Wiki.** |
| **Governance** | **Includes RACI and acceptance criteria.** | **Adds separation-of-duties enforcement, risk treatment, policy-as-code gates, quarterly review cadence, and KPI-driven maturity model.** |

## 3. Purpose, Scope, and Strategic Positioning

### 3.1 Purpose

This document defines the AIRA Agentic DevSecOps and System Factory Standard. It establishes how AIRA will use Hermes Agent and the wider AIRA technology stack to create a governed AI-agent workforce that supports development from PoC through full production delivery and continuous improvement.

### 3.2 Scope

Agent roles, responsibilities, boundaries, and lifecycle management.

Hermes Agent utilization as an agent runtime within AIRA.

Auto-Learn, Auto-Heal, Auto-Improve, and AutoResearch governance.

Agent SBAC, trust scoring, progressive autonomy, human approval gates, and kill-switch controls.

Integration with GitHub, GitNexus, Obsidian, OpenKM, LLM Wiki, LightRAG, LiteLLM, NeMo Guardrails, Harness, OPA, Flowable, Temporal, CI/CD, observability, security, and evidence tools.

PoC usage pattern, full development rollout roadmap, templates, RACI, risks, acceptance criteria, and AVCI evidence requirements.

### 3.3 Out of Scope

Uncontrolled autonomous production modification by AI agents.

Direct model-provider calls from application code, scripts, agents, notebooks, or workflows.

Direct agent access to secrets, production databases, Kubernetes production mutation, or release approval authority.

Promotion of unreviewed agent learning into canonical AIRA knowledge.

Replacement of human accountability, CAB/ARB authority, security review, QA review, DBA review, audit review, or business approval.

## 4. Authority, Precedence, and Companion Sources

This standard extends existing AIRA governance. It does not override AVCI, the Engineering Blueprint, Technology Stack, Developer Guide, MicroFunction Framework, Security Standard, ADR/TDL Standard, or Release Governance Standard. If conflicts appear, the issue must be logged as an AVCI reconciliation item and resolved through the governed revision-control process.

| **Authority Level** | **Source / Control** | **Role** |
| --- | --- | --- |
| **L0** | **Architecture Board / CAB / Executive Risk Authority** | **Final authority for architecture conflicts, production risk, autonomy scope, and material waivers.** |
| **L1** | **Engineering Blueprint v5.0; DevSecOps Standard v3.0** | **Defines build-ready architecture, agent boundaries, lifecycle gates, and operating discipline.** |
| **L2** | **AVCI v3.0; Enterprise Design Principles and SOLID Enforcement Layer** | **Defines universal production-readiness and design-principle gates.** |
| **L2** | **Technology Stack v9.0** | **Defines approved and conditional technologies, including Hermes, LiteLLM, NeMo Guardrails, GitNexus, Dograh, and evidence tools.** |
| **L3** | **This Standard** | **Defines agentic system factory, agent workforce, trust, skills, auto-loop governance, and operating patterns.** |
| **L4** | **Agent registry, skills, prompts, PRs, ADRs, TDLs, runbooks, evidence records** | **Execution artifacts and traceability evidence.** |

## 5. AIRA as an AI-Native System Factory

AIRA shall be designed as a system-building system. The first objective is to deliver BFS business capabilities such as Mortgage Servicing and Account Management. The larger strategic objective is to create a reusable, governed, self-improving engineering platform that helps BFS deliver future systems with stronger consistency, speed, security, documentation, and auditability.

### 5.1 System Factory Definition

The AIRA Agentic System Factory is the governed capability through which AIRA transforms approved intent into implementation artifacts: requirements, designs, ADRs, APIs, workflows, MicroFunctions, source code, database migrations, tests, security controls, CI/CD pipelines, documentation, runbooks, evidence packs, deployment candidates, operational insights, and improvement proposals.

### 5.2 System Factory Flow

| Approved Intent / Requirement / Ticket<br> ↓<br>AIRA Knowledge Retrieval and Classification<br> ↓<br>Planner Agent decomposes work<br> ↓<br>Specialist Agents draft architecture, code, tests, workflows, data, security, and documentation<br> ↓<br>Checker Agents validate against AIRA principles, tests, security, and evidence rules<br> ↓<br>Human Review / Maker-Checker / CODEOWNERS / CAB where applicable<br> ↓<br>GitHub PR + CI/CD + Fitness Functions + Evidence Pack<br> ↓<br>Approved Merge / Release / Activation<br> ↓<br>Operational Telemetry and Lessons Learned<br> ↓<br>Candidate Auto-Learn / Auto-Heal / Auto-Improve<br> ↓<br>Human-approved promotion into AIRA knowledge and skills |
| --- |

### 5.3 Non-Negotiable Boundaries

The system factory may generate candidates, but protected changes flow through GitHub PR, CI/CD, evidence, and human approval.

The system factory may learn, but approved AIRA knowledge remains governed by source provenance, classification, review, and versioning.

The system factory may heal, but it must not disable controls to make failures disappear.

The system factory may improve, but it must preserve or improve architecture, security, testability, observability, reversibility, and AVCI evidence.

The system factory may coordinate agents, but no agent may become a super-user, source of truth, or production authority.

## 6. System Factory Reference Architecture

The reference architecture is built around a layered and plane-based model. Layers describe the enterprise technology stack. Planes describe governance authority, agent execution, knowledge/evidence, and human accountability. The combination prevents the agent runtime from bypassing enterprise controls.

| **Layer / Plane** | **Primary Responsibility** | **Representative Components** |
| --- | --- | --- |
| **Intent and Portfolio Intake** | **Convert management priorities, business needs, tickets, ADR triggers, and product backlog into controlled work items.** | **Jira/GitHub Issues, product backlog, ADR/TDL, business capability map, data classification register.** |
| **Agent Control Plane** | **Define identities, roles, skills, permissions, model routes, trust levels, approval thresholds, and kill switches.** | **Hermes Agent, Keycloak/AD, SBAC catalog, OPA/Conftest, agent registry, skill library, trust-score service.** |
| **Agent Execution Plane** | **Perform controlled reasoning, generation, testing, validation, documentation, and candidate remediation.** | **Hermes Agent teams, approved coding assistants, Maven, GitHub, GitNexus, CI/CD, Playwright, JUnit, Flowable, Temporal.** |
| **Knowledge and Evidence Plane** | **Store and retrieve governed knowledge, source references, telemetry, security evidence, quality evidence, and learning candidates.** | **Obsidian, OpenKM, LLM Wiki, LightRAG, pgvector, PostgreSQL, GitHub, GitNexus, Loki, Tempo, Prometheus, Sentry, Wazuh.** |
| **Human Governance Plane** | **Approve high-risk actions, architecture decisions, security exceptions, production release, learning promotion, and skill promotion.** | **Flowable approval workflows, CODEOWNERS, CAB, ARB, ADR/TDL, PR reviews, audit evidence.** |

| **One-Directional Control Invariant**<br>Human governance delegates scope to the Agent Control Plane. The Agent Control Plane authorizes the Agent Execution Plane. The Agent Execution Plane produces candidates and evidence. Knowledge and Evidence inform future work but do not directly mutate production. Reverse authority is prohibited unless formally approved through CAB/ARB and audited. |
| --- |

## 7. Hermes Agent Strategic Role and Boundaries

Hermes Agent should be adopted as the first governed agent runtime for AIRA. It provides memory, skills, task reasoning, model/provider integration, and agent workflows. It must remain subordinate to AIRA governance and must not become the source of truth, production executor, security authority, or uncontrolled self-modification engine.

| **Hermes Role** | **AIRA Position** |
| --- | --- |
| **Agent runtime** | **Hosts or coordinates task-oriented agents and skills.** |
| **Memory and skills engine** | **Stores working memory and candidate reusable skills subject to AIRA review.** |
| **Developer productivity layer** | **Supports coding, testing, build diagnosis, documentation, and troubleshooting.** |
| **Reasoning and planning layer** | **Decomposes tasks and coordinates specialist agents under SBAC.** |
| **Auto-loop assistant** | **Proposes learnings, fixes, and improvements; does not self-promote them.** |

| **Hermes Must Not Become** | **Reason / Required Control** |
| --- | --- |
| **Canonical source of truth** | **AIRA documents, GitHub, OpenKM, Obsidian, LLM Wiki, ADRs, and evidence stores remain authoritative.** |
| **Direct model gateway** | **Model routing must be controlled by LiteLLM aliases, classification policy, guardrails, budgets, and audit.** |
| **Direct tool executor for protected actions** | **Protected actions require Harness, SBAC, OPA, trust scoring, audit, and human approval.** |
| **Production release authority** | **Release remains governed by CAB, GitOps, CI/CD, evidence, and separation of duties.** |
| **Secret holder** | **Secrets remain in Vault/OpenBao or approved secret manager.** |
| **Database mutator** | **Schema and data changes use Flyway, DBA review, rollback/forward-fix, and evidence.** |
| **Self-modifying governance authority** | **Skill, prompt, memory, guardrail, and autonomy changes require review and promotion workflow.** |

## 8. Four-Plane Agentic DevSecOps Operating Model

AIRA Agentic DevSecOps operates through four mandatory planes. Each plane has a different accountability boundary. The planes may be implemented through multiple services, but their authority must remain separate.

| **Plane** | **Owns** | **Does Not Own** | **Minimum Evidence** |
| --- | --- | --- | --- |
| **Agent Control Plane** | **Agent identity, SBAC, skills, tool scopes, model routes, trust, approvals, kill switch.** | **Business truth, source code authority, production changes, audit approval.** | **Agent registry, skill registry, OPA decisions, route logs, trust history.** |
| **Agent Execution Plane** | **Reasoning, drafting, testing, analysis, PR candidates, documentation candidates.** | **Merge approval, deployment, secret access, direct production mutation.** | **Task record, model route, prompt version, source references, output disposition.** |
| **Knowledge and Evidence Plane** | **Authoritative and derivative sources, evidence, retrieval, lineage, telemetry, learning candidates.** | **Autonomous promotion of knowledge or skills.** | **Source ID, version, classification, freshness, ACL, citations, evidence refs.** |
| **Human Governance Plane** | **Accountability, exception approval, production authority, high-risk judgment, acceptance.** | **Routine low-risk generation when delegated through policy.** | **Review record, approval/rejection, CAB/ARB decision, PR/CODEOWNERS evidence.** |

## 9. AIRA Agent Workforce Model

The goal is not to create one all-powerful AI agent. The goal is to create a governed organization of narrow, accountable, skill-scoped agents that multiply the DevSecOps team without collapsing separation of duties.

| **Agent Team** | **Representative Agents** | **Primary Outcome** |
| --- | --- | --- |
| **Architecture** | **Enterprise Architecture Agent; Solution Design Agent; ADR/TDL Agent; Fitness Function Agent; Technology Evaluation Agent** | **Architecture-aligned designs and decisions.** |
| **Development** | **Backend Java Agent; Frontend React Agent; MicroFunction Agent; API Contract Agent; Database/Flyway Agent; Refactoring Agent** | **Candidate implementation artifacts with tests and evidence.** |
| **QA and Testing** | **Unit Test Agent; Contract Test Agent; Security Test Agent; Playwright Agent; Mutation Test Agent; Test Evidence Agent** | **Deterministic, risk-based, evidence-producing quality gates.** |
| **DevSecOps** | **Maven Build Agent; CI/CD Agent; Container Security Agent; Policy-as-Code Agent; GitOps Agent; Release Evidence Agent** | **Secure, reproducible, gated delivery.** |
| **Security and Compliance** | **IAM/SBAC Agent; Secrets Agent; Threat Modeling Agent; Secure Coding Agent; Compliance Mapping Agent; Audit Evidence Agent** | **Security-by-design and compliance-ready evidence.** |
| **Workflow and Operations** | **BPMN Agent; DMN Agent; Temporal Agent; SRE Agent; Incident Analysis Agent; Runbook Agent** | **Human and machine workflow safety plus operational resilience.** |
| **Knowledge and Learning** | **Knowledge Curator Agent; Source Alignment Agent; Learning Promotion Agent; Prompt Improvement Agent; Skill Librarian Agent; Drift Detection Agent** | **Governed knowledge, skills, prompts, and continuous improvement.** |

## 10. Agent Control Plane

The Agent Control Plane is the governance layer for all human-facing, developer-facing, and machine-facing agents. It defines which agent may act, what it may access, which model routes it may use, what skill it may invoke, what tool it may call, and when human approval is mandatory.

| **Control Plane Service** | **Required Function** | **Implementation Notes** |
| --- | --- | --- |
| **Agent Registry** | **Official inventory of all agents, owners, supervisors, scopes, model routes, classification ceilings, and lifecycle status.** | **Stored in Git/DB with approved changes via PR and Flowable review.** |
| **Skill Registry** | **Approved, candidate, deprecated, rejected, and experimental skills with versions and evidence.** | **Skills are engineering artifacts with tests and owners.** |
| **SBAC Policy Service** | **Skill-based permissions for humans, agents, services, workflows, and tools.** | **OPA-enforced skill-to-action mapping; defaults deny.** |
| **Model Route Policy Service** | **LiteLLM aliases, classification ceilings, budgets, fallback policy, and audit.** | **No direct provider SDKs; classification-aware routing.** |
| **Tool Action Registry** | **Approved tools, read/write boundaries, command allowlists, prohibited actions, and environment restrictions.** | **Read-only by default; write actions require Harness and approval gates.** |
| **Trust Score Service** | **Agent performance, defect rate, acceptance rate, policy violations, and autonomy eligibility.** | **Autonomy decays on violations or stale evidence.** |
| **Approval Orchestration** | **Flowable human tasks for high-risk or policy-triggered actions.** | **Maker-checker and separation of duties enforced.** |
| **Audit and Evidence Store** | **Prompt, model, source, tool, output, test, approval, and final disposition records.** | **OpenTelemetry trace_id and evidence_ref required.** |
| **Kill Switch and Quarantine** | **Immediate disablement of agent, skill, model route, memory write, tool connector, or autonomy level.** | **Security, IT Head, or authorized control owner may activate.** |

## 11. Agent Execution Plane

The Agent Execution Plane performs the work but does not own authority. Every output is a candidate until accepted by the required verification and human-review gates.

| **Execution Activity** | **Allowed Agent Behavior** | **Required Gate** |
| --- | --- | --- |
| **Code generation** | **Generate branch-ready candidate code and tests.** | **PR, CI, code review, ArchUnit, security scans, AVCI summary.** |
| **Build/test diagnosis** | **Run or recommend approved non-production build/test commands.** | **Local/dev sandbox only; evidence attached.** |
| **Workflow drafting** | **Create BPMN/DMN/CMMN drafts and review approval paths.** | **Process owner, architecture/security review where applicable.** |
| **Database migration drafting** | **Draft Flyway migrations and rollback/forward-fix notes.** | **DBA review, migration tests, classification review.** |
| **Security review** | **Identify risks and recommend remediation.** | **Security owner review; no autonomous gate relaxation.** |
| **Auto-heal candidate** | **Create remediation proposal or PR candidate.** | **Tests, rollback, policy checks, human checker.** |
| **Auto-learn candidate** | **Draft lesson, skill, prompt, guardrail, or runbook update.** | **Knowledge steward review and classification check.** |
| **Auto-improve candidate** | **Propose measurable refactor, testing, observability, security, or workflow improvement.** | **Impact assessment, evidence, ADR/TDL if material, human approval.** |

## 12. Knowledge and Evidence Plane

The Knowledge and Evidence Plane is the brain and audit memory of AIRA. It must distinguish authoritative sources from derivative indexes and temporary agent memory.

| **Source Type** | **Examples** | **Authority Rule** |
| --- | --- | --- |
| **Tier 0 Authoritative Sources** | **GitHub, OpenKM, PostgreSQL transactional stores, Temporal/Flowable histories, security tools, audit stores** | **Highest authority; resolves conflicts.** |
| **Tier 1 Curated Knowledge** | **Obsidian canonical notes, LLM Wiki curated pages, approved runbooks, approved summaries** | **High trust after human review; guidance layer.** |
| **Tier 2 Derived Indexes** | **pgvector, LightRAG graph, GitNexus code graph, search indexes, compiled summaries** | **Derivative; trusted only with provenance, freshness, ACL, and classification.** |
| **Tier 3 Ephemeral State** | **Hermes working memory, Redis/Valkey cache, session context, temporary task notes** | **Not authoritative; may accelerate only.** |

| **Code and Knowledge Boundary Rule**<br>The team must not copy entire source-code repositories into Obsidian. GitHub remains the source of truth for source code. Obsidian remains the source of truth for human-readable standards, ADRs, runbooks, prompts, and curated evidence. GitNexus and retrieval indexes provide read-only context and summaries. |
| --- |

## 13. Human Governance Plane

The Human Governance Plane ensures that AIRA remains enterprise-controlled while automation grows. Human review is required for high-impact, low-confidence, destructive, Confidential/Restricted, policy-exception, production-impacting, architecture-changing, or authority-expanding actions.

### 13.1 Mandatory Human Approval Triggers

New or changed agent authority, trust level, or classification ceiling.

New approved skill promotion or production use of an existing skill in a new context.

Model-route, classification-policy, prompt, guardrail, or retrieval eligibility change.

Database schema, migration, production data, or retention rule change.

BPMN/DMN workflow activation, CAB route change, or approval hierarchy change.

Security control, SBAC, OPA, CI/CD gate, branch protection, or release policy change.

Production deployment, emergency change, rollback, compensation, or customer-impacting action.

Promotion of Auto-Learn output into Obsidian, LLM Wiki, LightRAG, or approved skill library.

Any action involving Confidential or Restricted content beyond pre-approved handling paths.

## 14. Agent Registry Standard

Every AIRA agent must be registered before use. Unregistered agents, unmanaged local agents, personal AI assistants, or unsanctioned tool connectors are not allowed for AIRA work.

| agent_id: AGT-AIRA-YYYY-NNN<br>agent_name: <name><br>agent_team: <Architecture \| Development \| QA \| DevSecOps \| Security \| Operations \| Knowledge><br>owner: <named accountable owner><br>human_supervisor: <role/name><br>purpose: <approved purpose><br>classification_ceiling: <Public \| Internal \| Confidential \| Restricted><br>allowed_models: [<LiteLLM aliases only>]<br>allowed_tools: [<tool IDs>]<br>allowed_repositories: [<repo/folder scope>]<br>allowed_actions: [read, analyze, draft, test, branch, pr_candidate]<br>prohibited_actions: [merge, deploy, secret_access, direct_db, direct_kubectl, direct_model_provider]<br>approval_required_for: [<conditions>]<br>evidence_required: [<records>]<br>trust_level: L0<br>status: Proposed \| Active \| Suspended \| Deprecated \| Retired<br>last_reviewed: YYYY-MM-DD |
| --- |

## 15. Agent SBAC and Least Privilege Matrix

AIRA applies Skill-Based Access Control to humans, services, and AI agents. Agent authority is granted by skill, role, repository, classification, tool, action, and environment. Permissions are narrow by default and must expire or be reviewed periodically.

| **Capability** | **Architecture** | **Code** | **QA** | **Security** | **DevSecOps** | **Knowledge** | **Release** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Read AIRA standards** | **Yes** | **Yes** | **Yes** | **Yes** | **Yes** | **Yes** | **Yes** |
| **Read source code** | **Read** | **Read** | **Read** | **Read** | **Read** | **Summary** | **Read** |
| **Generate code** | **No** | **Candidate** | **Test only** | **No** | **Pipeline only** | **No** | **No** |
| **Modify code** | **No** | **Branch/PR only** | **Test branch only** | **No** | **Pipeline PR only** | **No** | **No** |
| **Run tests** | **Review** | **Non-prod** | **Yes** | **Security tests** | **CI only** | **No** | **Verify only** |
| **Generate BPMN/DMN** | **Review** | **No** | **Validate** | **Review** | **No** | **Document** | **No** |
| **Generate Flyway migration** | **Review** | **Candidate** | **Test** | **Review** | **No** | **Document** | **No** |
| **Access secrets** | **No** | **No** | **No** | **No** | **No** | **No** | **No** |
| **Create PR** | **Decision/doc PR** | **Candidate PR** | **Test PR** | **Review note** | **Pipeline PR** | **Docs PR** | **No** |
| **Deploy** | **No** | **No** | **No** | **No** | **No** | **No** | **Human/CAB controlled only** |
| **Promote knowledge** | **Approve** | **No** | **No** | **Review** | **No** | **Candidate/Approved by steward** | **No** |

## 16. Agent Skill Library Governance

Hermes skills and other agent skills are engineering artifacts. They must be versioned, classified, tested, owned, reviewed, and reversible. A skill that produces unsafe output or violates AIRA principles must be suspended or quarantined.

| aira-agent-skills/<br> approved/<br> candidate/<br> experimental/<br> deprecated/<br> rejected/<br> archived/ |
| --- |

| **Skill State** | **Meaning** | **Allowed Use** |
| --- | --- | --- |
| **Candidate** | **Generated or proposed but not approved.** | **May be reviewed in sandbox only.** |
| **Experimental** | **Approved for lab/PoC evaluation.** | **No production-bound use without review.** |
| **Approved** | **Reviewed, tested, scoped, versioned, and assigned an owner.** | **May be used within registered scope.** |
| **Deprecated** | **Previously approved but scheduled for retirement.** | **Existing use only with migration plan.** |
| **Rejected** | **Unsafe, duplicative, weak, or non-compliant.** | **Do not use; retain for audit and anti-pattern learning.** |

| skill_id: SKL-AIRA-YYYY-NNN<br>skill_name: <name><br>version: <semver><br>owner: <role/name><br>allowed_agents: [<agent IDs>]<br>classification_ceiling: <classification><br>purpose: <purpose><br>input_schema: <schema reference><br>output_schema: <schema reference><br>allowed_tools: [<tool IDs>]<br>policy_checks: [OPA, SBAC, guardrail, classification]<br>tests: [unit, eval, red-team, regression]<br>evidence_required: [prompt, source, route, output, reviewer]<br>approval_state: Candidate \| Approved \| Deprecated \| Rejected<br>disable_method: <kill switch / remove from registry><br>last_reviewed: YYYY-MM-DD |
| --- |

## 17. Agent Memory, Context, and Knowledge Governance

Agent memory is useful only when it is governed. Hermes working memory, conversation summaries, tool results, and learned patterns must not silently become authoritative AIRA knowledge. Memory must be scoped, classified, reviewable, and purgeable.

| **Memory Type** | **Allowed Use** | **Control Requirement** |
| --- | --- | --- |
| **Working task memory** | **Short-lived task planning and handoff.** | **Expires after task or sprint unless promoted. No secrets or raw Restricted data.** |
| **Agent performance memory** | **Track agent quality, defects, acceptance, and violations.** | **Stored as evidence metric; reviewed for trust score.** |
| **Skill memory** | **Reusable patterns, prompts, or procedures.** | **Must pass skill promotion workflow and tests.** |
| **Knowledge memory** | **Lessons, standards updates, runbook candidates.** | **Human-reviewed before Obsidian/LLM Wiki promotion.** |
| **Sensitive context** | **Confidential/Restricted snippets needed for a task.** | **Classification-aware route; minimize, redact, expire, and audit.** |

Memory must never contain secrets, tokens, production credentials, unmasked customer PII, or uncontrolled document extracts.

Memory must carry source references, classification, retention, owner, and expiry.

Memory used for future decisions must be promoted through Auto-Learn review or treated as non-authoritative context.

Memory quarantine must be available when a source is stale, conflicting, unsafe, or superseded.

## 18. Agent Trust Score and Progressive Autonomy

AIRA agents earn autonomy through evidence. Autonomy is not granted based on ambition, convenience, or model capability. It is granted based on observed quality, policy compliance, defect rate, security behavior, reversibility, and human acceptance.

| **Trust Signal** | **Measurement** |
| --- | --- |
| **Human acceptance rate** | **Percentage of generated outputs accepted without major rework.** |
| **Defect escape rate** | **Defects linked to agent-generated artifacts after review/merge.** |
| **Security finding rate** | **SAST/DAST/secrets/policy findings caused or missed by agent outputs.** |
| **Test sufficiency** | **Coverage, mutation score, deterministic tests, failure-path tests.** |
| **Architecture compliance** | **ArchUnit, dependency checks, boundary checks, direct-provider-call checks.** |
| **Evidence completeness** | **AVCI summaries, source references, model route, prompt version, approvals.** |
| **Policy violations** | **Denied tool actions, classification violations, unsupported model routes.** |
| **Rollback outcomes** | **Whether changes remain reversible and safe under failure.** |

| **Autonomy Level** | **Name** | **Allowed Authority** |
| --- | --- | --- |
| **L0** | **Advisory** | **Analyze and recommend only.** |
| **L1** | **Drafting** | **Generate code, tests, workflows, documents, or prompts as drafts.** |
| **L2** | **Branch Candidate** | **Create candidate changes in a non-protected branch.** |
| **L3** | **PR Candidate** | **Open PRs with evidence; cannot approve, merge, deploy, or override policy.** |
| **L4** | **Controlled Non-Prod Execution** | **Run approved tests/builds in sandbox/DEV through Harness with SBAC/OPA.** |
| **L5** | **Low-Risk Auto-Heal Candidate** | **Execute pre-approved reversible non-prod fixes only.** |
| **L6** | **Production Recommendation** | **Recommend production fix with rollback plan; human executes.** |
| **L7** | **Approved Limited Production Action** | **Only for low-risk, reversible, pre-approved actions through Flowable/CAB and audit.** |
| **L8+** | **Strategic / Critical Autonomy** | **Not approved for AIRA until maturity, audit, regulatory, and board-level controls are proven.** |

## 19. Auto-Learn Governance

Auto-Learn is the governed conversion of experience into reusable knowledge, skills, prompts, tests, guardrails, policies, runbooks, and standards. It is not uncontrolled memory accumulation.

### 19.1 Approved Learning Sources

Pull request comments and code review findings.

Failed builds, failed tests, and CI/CD evidence.

Security findings from SonarQube, Semgrep, Trivy, Gitleaks, ZAP, Wazuh, and audit reviews.

Production incidents, Sentry errors, Loki logs, Prometheus alerts, and post-mortems.

Flowable approvals, CAB decisions, ADR/TDL supersedence, and waiver outcomes.

Developer corrections to AI-generated output.

Accepted and rejected agent outputs.

GitNexus impact-analysis patterns and affected-test discovery.

### 19.2 Learning Promotion Flow

| Observed Event<br> ↓<br>Learning Agent extracts candidate lesson<br> ↓<br>Classify and source-cite<br> ↓<br>Check against current AIRA sources and ADRs<br> ↓<br>Check SOLID / Clean Architecture / DDD / Security / Testability / Reversibility impact<br> ↓<br>Human review by knowledge steward and domain owner<br> ↓<br>Approve / reject / revise<br> ↓<br>Promote to approved skill, prompt, guardrail, test, runbook, or knowledge note<br> ↓<br>Index in Obsidian / LLM Wiki / LightRAG where eligible<br> ↓<br>Measure future improvement |
| --- |

### 19.3 Auto-Learn Rejection Conditions

Source is uncited, stale, conflicting, or not authoritative.

Classification is missing or route is not permitted.

Learning weakens design principles, tests, security, observability, or rollbackability.

Learning is based on a failed or unsafe task without clear failure labeling.

Learning exposes secrets, PII, customer data, or restricted artifacts.

Learning contradicts an accepted ADR or current AIRA standard without initiating an ADR/TDL change.

## 20. Auto-Heal Governance

Auto-Heal is the governed ability to detect failure, classify root cause, propose minimal remediation, validate the fix, and generate evidence. It must not bypass controls to make a failure disappear.

| **Auto-Heal Level** | **Example** | **Allowed Boundary** |
| --- | --- | --- |
| **Diagnostic** | **Explain why Maven, test, CI, or deployment failed.** | **Allowed.** |
| **Recommendation** | **Suggest code, config, test, or pipeline fix.** | **Allowed with evidence.** |
| **Candidate Patch** | **Create branch with proposed fix.** | **Allowed in non-protected branch.** |
| **PR Auto-Heal** | **Open remediation PR with tests and evidence.** | **Allowed after SBAC and trust thresholds.** |
| **Non-Prod Repair** | **Run safe fix in DEV/sandbox.** | **Allowed only through Harness with approval where required.** |
| **Production Recommendation** | **Recommend fix, rollback, and risk treatment.** | **Allowed; human executes.** |
| **Production Action** | **Execute production fix.** | **Restricted to exceptional low-risk, reversible, pre-approved actions only.** |
| **Control Override** | **Disable tests, guardrails, scanning, or policy to pass.** | **Prohibited.** |

### 20.1 Required Auto-Heal Output

Root cause hypothesis and confidence.

Evidence used and evidence references.

Affected component, repository, service, bounded context, and environment.

Risk and data classification.

Proposed remediation and alternative options.

Tests and fitness functions required.

Security, SBAC, OPA, and model-routing impact.

Rollback, forward-fix, deactivation, or compensation path.

Human approval requirement.

Candidate learning item.

## 21. Auto-Improve Governance

Auto-Improve is the governed ability to identify measurable improvement opportunities across architecture, code quality, test quality, security, observability, documentation, release safety, and developer productivity.

| **Improvement Area** | **Example Improvements** | **Required Evidence** |
| --- | --- | --- |
| **Architecture** | **Reduce coupling; add ports/adapters; define bounded contexts; add fitness functions.** | **ADR/TDL if material; ArchUnit/GitNexus/Sonar evidence.** |
| **Code quality** | **Reduce duplication, complexity, god classes, direct infrastructure dependency.** | **Tests, refactor evidence, no behavior regression.** |
| **Testing** | **Add missing edge cases, mutation tests, failure-path tests, deterministic fixtures.** | **Coverage/mutation/change-impact evidence.** |
| **Security** | **Harden SBAC, redaction, secret handling, fail-closed behavior.** | **Security test and scanner evidence.** |
| **Observability** | **Add trace, metrics, logs, audit events, dashboards, SLO alerts.** | **OTel and dashboard evidence.** |
| **Knowledge** | **Fix stale notes, add source citations, quarantine conflicting guidance.** | **Knowledge steward review and provenance.** |
| **Developer productivity** | **Improve templates, prompts, scripts, onboarding, runbooks.** | **Measured reduction in rework or lead time.** |

## 22. AutoResearch Governance

AutoResearch is the governed ability to investigate external practices, tools, standards, vulnerabilities, technology releases, and architecture options. Research output is not authoritative until reviewed and converted into an ADR, TDL, standard update, or approved knowledge note.

| **Research Type** | **Allowed Output** | **Approval Required Before Adoption** |
| --- | --- | --- |
| **Technology evaluation** | **Comparison report, risk assessment, PoC recommendation.** | **Architecture Board / Security / DevSecOps.** |
| **Security advisory review** | **Impact summary, affected components, remediation options.** | **Security owner and CAB where production-impacting.** |
| **Best-practice discovery** | **Candidate policy, template, test, or runbook improvement.** | **Domain owner and knowledge steward.** |
| **Framework/library update** | **Compatibility findings, migration notes, version recommendation.** | **ADR/TDL and CI validation.** |
| **Regulatory/compliance research** | **Control mapping and gap analysis.** | **Compliance, Security, Internal Audit.** |

| **AutoResearch Rule**<br>External information must be dated, source-cited, classified, reconciled against current AIRA sources, and reviewed before influencing production-bound architecture, security, technology, or compliance decisions. |
| --- |

## 23. Agent-to-Agent Collaboration and Maker-Checker Pattern

As the agent workforce grows, AIRA must prevent uncontrolled multi-agent edits. Agent collaboration must follow an orchestrated handoff model with maker-checker separation.

### 23.1 Standard Collaboration Pattern

| Planner Agent<br> ↓ decomposes work and assigns specialists<br>Specialist Maker Agents<br> ↓ generate candidate artifacts<br>Checker Agents<br> ↓ validate architecture, tests, security, policy, and evidence<br>Evidence Agent<br> ↓ prepares AVCI, PR, ADR/TDL, and audit records<br>Human Approver<br> ↓ approves, rejects, or requests rework<br>GitHub / CI/CD / CAB<br> ↓ final governed promotion |
| --- |

### 23.2 Example New Module Flow

| Business Requirement Agent<br> → Architecture Agent<br> → ADR/TDL Agent<br> → API Contract Agent<br> → Backend Java Agent<br> → Frontend React Agent<br> → Database/Flyway Agent<br> → QA/Test Agent<br> → Security Agent<br> → GitNexus Impact Agent<br> → Documentation Agent<br> → PR Evidence Agent<br> → Human Review and Merge Gate |
| --- |

## 24. System Factory Delivery Value Stream

The system factory value stream converts business intent into controlled production capability. Each stage has a default agent role, human owner, and evidence output.

| **Stage** | **Agent Contribution** | **Human / Control Owner** | **Evidence Output** |
| --- | --- | --- | --- |
| **Intake** | **Summarize requirement, classify data, detect ADR trigger.** | **Product Owner / Solutions Architect** | **Ticket, classification, initial scope.** |
| **Design** | **Draft architecture, context map, API/event model, MicroFunction sequence.** | **Enterprise Architect / Dev Lead** | **Design note, ADR/TDL, diagrams.** |
| **Build** | **Generate candidate code, config, migrations, tests.** | **Developer / DBA / DevSecOps** | **Branch, commits, test evidence.** |
| **Validate** | **Run/check unit, contract, security, architecture, policy gates.** | **QA / Security / DevSecOps** | **CI results, scan reports, fitness evidence.** |
| **Review** | **Prepare PR evidence, summarize risks, update docs.** | **CODEOWNERS / ARB / CAB as needed** | **PR, AVCI summary, review decisions.** |
| **Release** | **Generate release evidence, GitOps plan, rollback plan.** | **Release Manager / CAB** | **Release evidence pack, deployment plan.** |
| **Operate** | **Analyze telemetry, incidents, errors, SLOs, support tickets.** | **SRE / Operations / Security** | **Dashboards, incident analysis, runbook updates.** |
| **Improve** | **Propose learning, remediation, refactor, policy or knowledge update.** | **Knowledge Steward / Architect / Dev Lead** | **Auto-Learn/Heal/Improve candidate record.** |

## 25. Integration with the AIRA Technology Stack

| **Technology / Capability** | **Agentic System Factory Use** | **Control** |
| --- | --- | --- |
| **Java 25 / Spring Boot** | **Generate backend candidates, services, ports/adapters, tests.** | **ArchUnit, SonarQube, Semgrep, CI, PR review.** |
| **React / Next.js / TypeScript** | **Generate UI components, forms, client-side tests.** | **Strict TypeScript, Zod, Playwright, accessibility tests.** |
| **MicroFunction Framework** | **Configure reusable transaction assemblies and STP-BUS-* gaps.** | **Catalog registration, idempotency, configuration review, tests.** |
| **Flowable** | **Human approval, exception review, CAB, maker-checker workflows.** | **OPA/SBAC approver validation and audit.** |
| **Temporal** | **Machine workflow, retries, sagas, compensation.** | **Deterministic workflow versioning and replay tests.** |
| **Flyway / PostgreSQL** | **Draft migrations and schema evidence.** | **DBA review, expand/contract, rollback/forward-fix.** |
| **Kafka / CloudEvents** | **Generate event contracts and consumers.** | **Schema compatibility, outbox, idempotency.** |
| **LiteLLM** | **Model gateway and model alias control.** | **No direct provider SDKs; route/audit/budget controls.** |
| **NeMo Guardrails** | **Input, retrieval, execution, output safety rails.** | **Fail-closed checkpoints and test suites.** |
| **Harness** | **Controlled tool execution boundary.** | **SBAC, OPA, trust scoring, audit.** |
| **GitHub** | **Source control, PRs, CODEOWNERS, evidence.** | **Protected branches, signed commits, required CI.** |
| **GitNexus** | **Read-only code graph and impact analysis.** | **No write/merge/deploy authority; freshness checks.** |
| **Obsidian / LLM Wiki / LightRAG** | **Curated knowledge and retrieval.** | **Source citation, classification, human review.** |
| **OpenTelemetry / Loki / Tempo / Prometheus / Sentry** | **Runtime evidence, incident analysis, auto-heal inputs.** | **Redaction, trace correlation, evidence references.** |
| **Wazuh / Trivy / ZAP / Gitleaks / SBOM** | **Security evidence and risk signals.** | **Blocking gates, remediation PRs, compliance mapping.** |

## 26. Security, Privacy, and Classification Controls

Security and classification controls are embedded into agentic development. Agents must not be allowed to create data leakage, hidden privilege escalation, or uncontrolled tool execution.

| **Control Domain** | **Mandatory Control** | **Evidence** |
| --- | --- | --- |
| **Identity** | **Named human owner, agent ID, service identity, no shared accounts.** | **Agent registry, Keycloak/AD record, audit trail.** |
| **Authorization** | **RBAC/ABAC/SBAC/OPA for agent skills, tools, repositories, actions.** | **OPA decision logs, SBAC policy tests.** |
| **Secrets** | **No direct secret access by agents; Vault/OpenBao only through approved service path.** | **Secret scan, vault path references, denial logs.** |
| **Classification** | **Classification ceiling for agents, skills, prompts, memory, tools, and outputs.** | **Classification field, model-route evidence.** |
| **Model routing** | **All calls through LiteLLM aliases; no direct provider SDKs.** | **Route logs, import scans, budget/audit records.** |
| **Guardrails** | **Input, retrieval, execution, output rails. Fail closed on unavailable controls.** | **Guardrail test suite, block/allow evidence.** |
| **Tool execution** | **Protected actions through Harness only, with SBAC, OPA, trust and approval gates.** | **Harness action record, trace_id, approver.** |
| **Logging** | **No secrets, raw PII, raw prompts, embeddings, documents, or high-cardinality sensitive labels.** | **Log redaction tests, sampling evidence.** |
| **Privacy** | **Data minimization, retention, masking, restricted route handling.** | **Data handling register, retention evidence.** |

## 27. DevSecOps, CI/CD, and Evidence Pipeline

The agentic system factory must produce evidence by construction. Every candidate artifact should enter the normal DevSecOps path rather than bypass it.

| **Pipeline Gate** | **Agent Responsibility** | **Blocking Criteria** |
| --- | --- | --- |
| **Pre-commit / Local** | **Generate deterministic tests, lint-safe code, no secrets.** | **Formatting, unit, secret scan, forbidden import checks fail.** |
| **PR creation** | **Prepare AVCI summary, design-principle impact, rollback plan, AI-use declaration.** | **Missing evidence, missing owner, missing classification.** |
| **CI build** | **Run build, unit, component, contract, architecture, security, SCA, SBOM.** | **Critical/high findings, architecture violations, direct provider calls, failing tests.** |
| **Review** | **Route to CODEOWNERS, Security, QA, DBA, Architecture as triggered.** | **Approver missing, separation-of-duties violation, unresolved comments.** |
| **Release candidate** | **Prepare deployment plan, risk assessment, rollback/forward-fix, monitoring plan.** | **No CAB where required, no rollback, no evidence pack.** |
| **Post-release** | **Capture telemetry, incident signals, SLOs, feedback, learning candidates.** | **Unreviewed learning promotion, stale evidence, unresolved defects.** |

## 28. PoC Implementation Model

The PoC must validate the operating model, not only the generated source code. PoC 1 Login should become the proving ground for governed agentic development.

### 28.1 PoC Validation Objectives

Hermes can retrieve approved AIRA context and produce source-cited outputs.

Agents can generate code, tests, workflows, and documentation without violating AIRA boundaries.

Generated outputs go through PR, CI/CD, static analysis, security scanning, and human review.

Auto-Learn produces candidate learning only, not unreviewed canonical knowledge.

GitNexus is used read-only for impact analysis and affected-test discovery.

LiteLLM and guardrails prevent direct provider calls and unsafe model routing.

Flowable captures human approvals for high-risk actions.

Evidence is sufficient for audit, architecture review, and future learning.

### 28.2 PoC 1 Login Agent Team

| **Agent** | **PoC Responsibility** |
| --- | --- |
| **Planner Agent** | **Decompose login PoC tasks and assign specialist agents.** |
| **Architecture Agent** | **Confirm login architecture, Keycloak/OIDC, session, security, and MicroFunction boundaries.** |
| **Backend Java Agent** | **Generate candidate backend code, controllers, use cases, adapters, and tests.** |
| **Frontend React Agent** | **Generate login UI and form validation candidates.** |
| **Security Agent** | **Review authentication, authorization, rate limiting, redaction, secrets, and fail-closed behavior.** |
| **QA Agent** | **Generate JUnit, security, contract, and Playwright tests.** |
| **GitNexus Agent** | **Perform read-only impact and affected-test review.** |
| **Documentation Agent** | **Generate ADR/TDL if needed, PR summary, runbook, and PoC evaluation report.** |
| **Evidence Agent** | **Compile AVCI, test, scan, guardrail, and approval evidence.** |

## 29. Full Development Rollout Roadmap

| **Phase** | **Objective** | **Key Deliverables** | **Exit Criteria** |
| --- | --- | --- | --- |
| **0 - Governance Preparation** | **Formalize agentic operating model.** | **This standard, agent registry, SBAC matrix, skill library, templates.** | **ARB/CAB review; no unregistered agents.** |
| **1 - Controlled PoC** | **Use agents for PoC 1 Login under supervision.** | **Agent task records, PR evidence, tests, PoC evaluation report.** | **All outputs through PR/review; no secret/data leaks.** |
| **2 - Agent Role Formalization** | **Activate official agent teams.** | **Architecture, Code, QA, Security, DevSecOps, Knowledge agent definitions.** | **Each agent has owner, scope, tools, evidence, kill switch.** |
| **3 - Guardrail and SBAC Enforcement** | **Block unsafe actions by policy.** | **OPA policies, NeMo rails, Harness bindings, trust thresholds.** | **Denied actions fail closed and are audited.** |
| **4 - Evidence Integration** | **Make agent activity auditable.** | **AI audit schema, trace IDs, dashboards, evidence store integration.** | **Every action has source, route, model, classification, output, disposition.** |
| **5 - Controlled Auto-Learn** | **Promote reviewed lessons and skills.** | **Candidate/approved skill workflow, knowledge promotion records.** | **No unreviewed learning becomes authoritative.** |
| **6 - Controlled Auto-Heal** | **Generate remediation candidates and PRs.** | **Auto-heal templates, failure taxonomy, remediation PR workflow.** | **Agents can propose and PR, not merge or deploy.** |
| **7 - Controlled Auto-Improve** | **Measure and improve platform quality.** | **Improvement backlog, KPIs, maturity reports, architectural drift reports.** | **Improvements are measurable and principle-preserving.** |
| **8 - Team Rollout** | **Enable full DevSecOps team usage.** | **Onboarding workbook, training, usage dashboards, review cadence.** | **Team trained; violations monitored; evidence retained.** |

## 30. Metrics, KPIs, and Maturity Model

| **Metric Category** | **Sample Metrics** |
| --- | --- |
| **Delivery productivity** | **Lead time to PR; cycle time; story-to-merge duration; PoC-to-module conversion rate.** |
| **AI-agent effectiveness** | **AI output acceptance rate; rework rate; defect rate; human correction rate; reusable skill count.** |
| **Architecture quality** | **Boundary violations; direct provider calls; cross-context writes; architecture fitness pass rate.** |
| **Test quality** | **Changed-line coverage; mutation score; flaky-test rate; failure-path test coverage.** |
| **Security posture** | **Secrets detected; critical/high vulnerabilities; time to remediate; policy-denial count.** |
| **Knowledge quality** | **Stale document count; conflicted source count; citation completeness; learning promotion cycle time.** |
| **Operational resilience** | **MTTR; incident recurrence; rollback success; alert noise; SLO compliance.** |
| **Governance completeness** | **PRs with complete AVCI; missing ADR/TDL count; approval SLA; waiver expiry compliance.** |

| **Maturity Level** | **Name** | **Description** |
| --- | --- | --- |
| **M0** | **Manual / Ungoverned** | **No production use of agents; ad hoc AI use is not allowed for AIRA.** |
| **M1** | **Assisted Drafting** | **Agents generate drafts under human supervision; no repository write authority.** |
| **M2** | **Governed PR Candidates** | **Agents create branch/PR candidates with evidence; CI and review decide.** |
| **M3** | **Integrated DevSecOps Factory** | **Agents participate across design, build, test, security, documentation, and evidence.** |
| **M4** | **Controlled Improvement Loops** | **Auto-Learn/Heal/Improve produce reviewed PRs, runbooks, skills, and knowledge updates.** |
| **M5** | **Enterprise Optimized** | **Agent performance is continuously measured; autonomy remains bounded, auditable, and reversible.** |

## 31. Risks, Anti-Patterns, and Controls

| **Risk / Anti-Pattern** | **Impact** | **Control** |
| --- | --- | --- |
| **One super-agent with broad authority** | **Loss of least privilege and separation of duties.** | **Use narrow agent roles, SBAC, and human approval.** |
| **Agent writes directly to main or production** | **Bypasses PR, CI, review, audit.** | **Protected branches, no direct production credentials.** |
| **Unreviewed Auto-Learn promotion** | **Stale or wrong knowledge becomes authoritative.** | **Candidate knowledge workflow and steward approval.** |
| **Auto-Heal disables tests or controls** | **False health and weakened security.** | **Reject control bypass; require tests and rollback.** |
| **Prompt/skill drift** | **Inconsistent agent behavior.** | **Versioned prompt and skill registry with review cadence.** |
| **Model route violation** | **Data leakage and audit exposure.** | **LiteLLM aliases, classification ceilings, route audit.** |
| **GitNexus treated as authority** | **Derived index overrides source truth.** | **Read-only derivative use and freshness checks.** |
| **Obsidian stores whole codebase** | **Drift, security risk, vault pollution.** | **Store summaries and references only.** |
| **No kill switch** | **Unsafe agent continues operating.** | **Agent, skill, route, tool, and memory kill switches.** |
| **False confidence in AI output** | **Bad code or decision passes informal review.** | **Maker-checker, CI gates, tests, security scans, citations.** |
| **Agent memory contamination** | **Stale, sensitive, or incorrect memory influences future work.** | **Memory classification, expiry, quarantine, and promotion workflow.** |
| **Autonomy creep** | **Authority increases without evidence.** | **Trust score, expiry, recertification, and explicit approval gates.** |

## 32. RACI and Separation of Duties

| **Activity** | **Accountable** | **Responsible** | **Consulted** | **Informed** |
| --- | --- | --- | --- | --- |
| **Approve this standard** | **IT Head / Solutions Architect** | **Enterprise Architect** | **Dev Lead; QA; Security; DevSecOps; DBA** | **Internal Audit** |
| **Register new agent** | **IT Head / Solutions Architect** | **Dev Lead or Agent Owner** | **Enterprise Architect; QA; Security; DevSecOps** | **Internal Audit** |
| **Approve agent SBAC scope** | **IT Head / Solutions Architect** | **Security and DevSecOps** | **Enterprise Architect; Dev Lead; QA; DBA** | **Internal Audit** |
| **Approve skill promotion** | **IT Head / Solutions Architect** | **Dev Lead or Skill Owner** | **Enterprise Architect; QA; Security; DevSecOps** | **Internal Audit** |
| **Approve knowledge promotion** | **IT Head / Solutions Architect** | **Knowledge Steward / DevSecOps** | **Enterprise Architect; Dev Lead; QA; Security** | **Internal Audit** |
| **Approve architecture-changing improvement** | **IT Head / Solutions Architect** | **Enterprise Architect** | **Dev Lead; QA; Security; DevSecOps; DBA** | **Internal Audit** |
| **Approve security control change** | **IT Head / Solutions Architect** | **Security** | **Enterprise Architect; Dev Lead; QA; DevSecOps; DBA** | **Internal Audit** |
| **Approve database migration** | **IT Head / Solutions Architect** | **DBA** | **Enterprise Architect; Dev Lead; QA; Security; DevSecOps** | **Internal Audit** |
| **Review audit evidence** | **Internal Audit** | **Internal Audit** | **QA; Security; DevSecOps; DBA** | **IT Head; Enterprise Architect; Dev Lead** |

## 33. Required Templates and Schemas

### 33.1 Agent Task Request Template

| # AIRA Agent Task Request<br>Task ID:<br>Requester:<br>Target Agent:<br>Business Objective:<br>Affected Module / Bounded Context:<br>Source References:<br>Data Classification:<br>Allowed Actions:<br>Prohibited Actions:<br>Required Model Route / LiteLLM Alias:<br>Required Guardrails:<br>Expected Output:<br>Required Evidence:<br>Human Approval Required:<br>Due / Sprint / PoC Reference: |
| --- |

### 33.2 Agent Output Evidence Template

| # AIRA Agent Output Evidence<br>Agent ID:<br>Skill ID:<br>Task ID:<br>Model Route:<br>Prompt Version:<br>Sources Used:<br>Classification:<br>Output Summary:<br>Files / Artifacts Proposed:<br>Tests / Checks Required:<br>Policy Decisions:<br>Security Impact:<br>Architecture Impact:<br>Rollback / Reversibility:<br>Human Reviewer:<br>Disposition: Accepted \| Rework \| Rejected \| Candidate Learning<br>AVCI Summary: |
| --- |

### 33.3 Auto-Learn Promotion Record

| # Auto-Learn Promotion Record<br>Learning Candidate ID:<br>Source Event:<br>Source Evidence:<br>Classification:<br>Proposed Knowledge / Skill / Prompt / Test / Runbook Update:<br>Conflict Check:<br>Security Check:<br>Design Principle Impact:<br>Regression Evidence:<br>Reviewer:<br>Decision:<br>Promotion Target:<br>Review Date: |
| --- |

### 33.4 Auto-Heal Recommendation Record

| # Auto-Heal Recommendation Record<br>Incident / Failure ID:<br>Root Cause Hypothesis:<br>Evidence Used:<br>Affected Component:<br>Risk and Classification:<br>Proposed Fix:<br>Alternative Fixes:<br>Tests Required:<br>Security / Policy Impact:<br>Rollback / Forward-Fix / Compensation:<br>Human Approval Required:<br>Candidate Learning: |
| --- |

### 33.5 Agent Trust Review Record

| # Agent Trust Review Record<br>Agent ID:<br>Review Period:<br>Current Autonomy Level:<br>Recommended Autonomy Level:<br>Acceptance Rate:<br>Rework Rate:<br>Defect Escape Rate:<br>Security Findings:<br>Policy Violations:<br>Evidence Completeness:<br>Human Reviewer:<br>Decision:<br>Next Review Date: |
| --- |

## 34. Acceptance Criteria

All AIRA agents are registered with owner, supervisor, role, SBAC scope, model route, classification ceiling, allowed tools, prohibited actions, trust level, and kill switch.

No agent has direct production secrets, direct production database access, direct production Kubernetes mutation, direct merge authority, or direct deployment authority.

All model calls use approved LiteLLM aliases and are classification-aware.

All protected actions route through Harness, SBAC, OPA, trust scoring, audit, and human approval where required.

All generated code, workflows, migrations, prompts, guardrails, and documentation enter through branch/PR/review discipline.

All material changes include AVCI and Enterprise Design Principles impact evidence.

Auto-Learn outputs remain candidate until reviewed and promoted by an accountable human owner.

Auto-Heal and Auto-Improve outputs preserve or improve architecture, security, testability, observability, rollbackability, and evidence.

GitNexus remains read-only, derivative, secret-safe, current to commit hash, and non-authoritative.

Obsidian and LLM Wiki contain curated knowledge, not uncontrolled code dumps or raw sensitive data.

Agent memory is classified, scoped, expires, and cannot become authoritative without promotion.

Agent trust levels are reviewed periodically and reduced on violations, stale evidence, or poor quality.

## 35. AVCI Compliance Summary

| **AVCI Property** | **How This Standard Satisfies It** |
| --- | --- |
| **Attributable** | **Defines agent owners, supervisors, registries, task requests, source references, model routes, prompt versions, skill IDs, reviewers, approvals, and disposition records.** |
| **Verifiable** | **Requires tests, scans, policy decisions, guardrail results, GitNexus evidence, CI/CD evidence, architecture fitness results, and human review records.** |
| **Classifiable** | **Requires classification ceilings for agents, skills, prompts, model routes, artifacts, knowledge, memory, repositories, and output promotion.** |
| **Improvable** | **Defines controlled Auto-Learn, Auto-Heal, Auto-Improve, AutoResearch, trust scoring, maturity metrics, review cadence, and feedback loops for future standards and skills.** |

## Appendix A. Copy-Ready Mermaid Reference Architecture

| flowchart TB<br> H[Human Governance: IT Head, ARB, CAB, CODEOWNERS] --> ACP[Agent Control Plane]<br> ACP --> HAR[Harness / OPA / SBAC / Trust Score]<br> ACP --> LLM[LiteLLM Model Gateway]<br> ACP --> GRD[NeMo Guardrails]<br> ACP --> REG[Agent Registry and Skill Library]<br> REG --> HER[Hermes Agent Runtime]<br> HER --> AGT[Specialist Agent Teams]<br> AGT --> GH[GitHub PR and CI/CD]<br> AGT --> GNX[GitNexus Read-Only Code Intelligence]<br> AGT --> FLOW[Flowable Human Approval]<br> AGT --> TEMP[Temporal Machine Workflow]<br> GH --> EVD[Evidence Store / OpenKM]<br> GNX --> EVD<br> FLOW --> EVD<br> TEMP --> EVD<br> EVD --> KB[Obsidian / LLM Wiki / LightRAG]<br> KB --> HER<br> EVD --> AUTO[Auto-Learn / Auto-Heal / Auto-Improve Candidates]<br> AUTO --> H |
| --- |

## Appendix B. Source Alignment Notes

This document remains AIRA-DOC-041 because the aligned pack set already includes documents through AIRA-DOC-040 in the current working reference sequence.

This standard should be indexed in Obsidian under AIRA Documentation / Agentic DevSecOps / Standards.

Material adoption of Hermes Agent authority, agent trust scoring, model routing, or protected tool execution should be captured through ADR/TDL before production-bound use.

This standard should be referenced by future PoC instructions, developer onboarding, agent registry records, prompt standards, and PR templates.

The next aligned source-pack release should add AIRA-DOC-041 to Pack 03 or a new Agentic DevSecOps pack, depending on the final master register decision.
