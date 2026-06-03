# AIRA Vault

**AIRA Vault** is the governed knowledge, architecture, DevSecOps, AI-governance, and evidence-control repository for the AIRA AI-Native Enterprise Platform.

This repository is not primarily an application source-code repository. It is the controlled vault for standards, architecture decisions, engineering rules, security policies, testing expectations, runbooks, evidence guidance, knowledge-governance rules, and implementation control documents used by AIRA teams.

---

## Purpose

The purpose of this vault is to provide a single governed reference point for:

- AIRA architecture and technology standards
- AI-native DevSecOps governance
- Dynamic workspace and composable experience design
- MicroFunction and capability execution patterns
- Security, RBAC, SBAC, ABAC, OPA, and classification controls
- Testing, architecture fitness functions, and quality gates
- Release, CAB, evidence, and audit expectations
- Obsidian, GitHub, GitNexus, LLM Wiki, LightRAG, and knowledge-access governance
- Source-pack alignment, revision control, and document traceability

The governing principle is:

> **Documentation is not complete until it is attributable, verifiable, classifiable, improvable, and connected to implementation evidence.**

---

## Repository Role

AIRA Vault acts as a governed documentation and knowledge-control layer.

It supports:

| Area | Role |
| --- | --- |
| Architecture | Defines approved architecture principles, technology stack, design boundaries, and decision governance |
| DevSecOps | Defines secure delivery, CI/CD, evidence packs, agentic engineering, and system-factory standards |
| Security | Defines RBAC, SBAC, ABAC, OPA, classification, model-route, and fail-closed requirements |
| Dynamic Workspace | Defines composable UI, rendering, personalization, MicroFunction-backed actions, and AI assistant controls |
| Knowledge Governance | Defines where knowledge lives, how it is indexed, and how AI tools may retrieve it |
| Testing and QA | Defines unit, integration, E2E, accessibility, policy, resilience, and architecture fitness expectations |
| Runbooks and SOPs | Defines operational, incident, restore, release, and service-management procedures |
| Evidence | Defines auditability, traceability, production-readiness proof, and governance artifacts |

---

## Golden Source Rules

AIRA uses strict source-of-truth boundaries.

| Artifact Type | Golden Source |
| --- | --- |
| Source code | GitHub / Git repositories |
| Code intelligence | GitNexus |
| Governed knowledge | Obsidian / Git-backed documentation vault |
| Unified retrieval | LLM Wiki / LightRAG |
| Policies and Rego rules | GitHub / policy registry |
| CI/CD evidence | CI artifact store / evidence repository |
| Security scan outputs | Evidence repository / security tooling |
| Raw logs and telemetry | Observability platform |
| Secrets and credentials | Vault / approved secret manager |

Important rule:

> **Do not copy the full application codebase into Obsidian or this documentation vault.**

Code may be summarized, indexed, referenced, and linked, but Git remains the source of truth for code.

---

## Recommended Reading Path

### For Architects

Start with:

1. Architecture standards
2. Technology Stack
3. Enterprise Design Principles / SOLID Enforcement Layer
4. ADR and Technical Decision Log Standard
5. Architecture Fitness Function Catalog
6. Dynamic Workspace Framework

### For Developers

Start with:

1. Developer Guide
2. MicroFunction Framework
3. Technology Stack
4. Unit Testing Standard
5. Dynamic Workspace Component and Widget Standard
6. Security / OPA Policy Specification

### For DevSecOps

Start with:

1. AI-Native DevSecOps Standard
2. Agentic DevSecOps and System Factory Standard
3. CI/CD Pipeline and Evidence Pack Guide
4. Release, Deployment, Change, and CAB Governance Standard
5. GitNexus / Knowledge Automation Standards

### For QA / SDET

Start with:

1. Unit Testing Standard
2. Testing and Architecture Fitness Function Standard
3. UAT and Production Acceptance Standard
4. Dynamic Workspace Testing Standard
5. Evidence and Observability Specifications

### For Security / Compliance / Audit

Start with:

1. Security Standard
2. Knowledge Access Architecture and Golden Source Standard
3. RBAC / SBAC / ABAC / OPA Policy Specification
4. Release and CAB Governance Standard
5. Evidence, Audit, and Observability Specifications
6. BCDR / Backup / Restore Validation Standard

---

## Document Status Definitions

Each controlled document should declare a status in its frontmatter or document-control table.

| Status | Meaning |
| --- | --- |
| `draft` | Work in progress; not yet approved for implementation authority |
| `for-review` | Ready for ARB, CAB, security, QA, or governance review |
| `aligned` | Synchronized with the current source-pack baseline |
| `current` | Active and usable as current guidance |
| `approved` | Approved governing source |
| `supplemental-update` | Supplemental or corrective update to an existing register or pack |
| `superseded` | Replaced by a newer document |
| `archived` | Retained for history only |

If a document contains mandatory language but remains in draft or review status, teams must treat it as proposed guidance until approval is confirmed.

---

## Control Expectations

Every controlled document should include:

- Document ID
- Title
- Version
- Status
- Classification
- Owner
- Co-owners where applicable
- Effective date or approval trigger
- Review cadence
- Supersedes reference, if applicable
- Source file reference
- Target folder or pack
- Tags
- AVCI alignment where applicable

---

## AVCI Principle

AIRA documents, standards, and delivery artifacts should satisfy AVCI:

| AVCI Property | Meaning |
| --- | --- |
| Attributable | Ownership, source, version, and responsibility are clear |
| Verifiable | Claims can be checked through evidence, tests, references, or approvals |
| Classifiable | Data, documents, outputs, and model routes follow classification rules |
| Improvable | Changes, lessons, risks, and improvements can be governed and traced |

---

## AI and Agent Governance

AIRA may use AI assistants, agents, and system-factory automation, but only inside governed controls.

Non-negotiable rules:

- No direct model-provider calls outside approved routing
- All model traffic must use approved model gateway / LiteLLM aliases
- Guardrail checkpoints are required for AI-assisted workflows
- Agent tool actions must be governed by SBAC, OPA, Harness, workflow, and audit controls
- AI may propose, draft, summarize, explain, test, and assist
- AI must not bypass human accountability, CAB, security review, QA review, DBA review, or production approval
- AI-generated learning must not become canonical knowledge without review and promotion
- Agents must not directly access secrets, mutate production, approve releases, or bypass CI/CD

---

## Security and Policy Governance

AIRA follows a backend-governed security model.

The frontend must not receive unauthorized workspace definitions, fields, widgets, actions, or AI capabilities.

Authorization may include:

- RBAC: role-based access control
- SBAC: skill-based access control
- ABAC: attribute-based access control
- OPA: policy-as-code decisions
- Classification handling
- Device posture
- Tenant, branch, department, and workflow state
- Trust score and context eligibility

Protected actions must fail closed when authorization, policy, classification, audit, model-route, or evidence controls cannot be resolved.

---

## Testing and Fitness Expectations

AIRA delivery should be test-proven, not only document-described.

Expected validation areas include:

- Build
- Type check
- Lint
- Unit tests
- Component tests
- Integration tests
- Contract tests
- OPA / Rego policy tests
- Accessibility tests
- Playwright smoke and E2E tests
- SAST / SCA / secrets scanning
- Architecture fitness functions
- Evidence-pack generation
- Classification and audit proof
- Cache-loss and fail-closed behavior
- AI guardrail and prompt-injection tests where applicable

---

## Recommended Repository Controls

This vault should progressively enforce:

- Required document frontmatter
- Unique document IDs
- Valid document status values
- Valid classification values
- Broken-link detection
- Duplicate-number detection
- Supersedes-chain validation
- Source-register validation
- Markdown linting
- Policy and schema validation
- Evidence-pack checks
- CI validation on pull request

---

## Suggested Folder Model

The current repository uses a governed vault structure similar to:

```text
00-Control-Center/
01-AIRA-Documentation/
05-ADRs-and-TDLs/
06-Runbooks-and-SOPs/
10-Evidence-Packs/
tools/
.github/
