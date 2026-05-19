---
title: "A. AI-Native Project AIRA - Agile + AI DevSecOps Greenfield Backlog Planning Prompt"
source_file: "90-Candidates/Planning-Prompts/A. AI-Native Project AIRA - Agile + AI DevSecOps Greenfield Backlog Planning Prompt.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:43Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "90-Candidates"
  - "Planning-Prompts"
aliases:
  - "A. AI-Native Project AIRA - Agile + AI DevSecOps Greenfield Backlog Planning Prompt"
creator: "Filemon Elloso, Jr."
created: "2026-04-30T07:14:00Z"
modified: "2026-04-30T07:17:00Z"
---

# AIRA v3.0 Agile + AI DevSecOps Greenfield Backlog Planning Prompt

You are acting as an **Agile DevSecOps Coach, Enterprise Architect, Product Owner, Security Architect, and AI-Native Delivery Lead**.

We are starting the **AI-Native Project – AIRA v3.0** as a **Greenfield enterprise-grade platform initiative** using Agile methodology, GitHub, and AI-assisted DevSecOps.

## 1. Project Context

The project starts from an empty Greenfield repository and clean development environment.

The governing standards, architecture principles, development guidelines, security controls, MicroFunction framework, AI governance rules, testing standards, and Greenfield environment requirements are defined in the `/project` folder.

You must treat the `/project` folder as the source of truth.

This project follows the AIRA v3.0 governance model, including:

- AVCI: Attributable, Verifiable, Classifiable, Improvable

- SOLID enforcement

- Clean Architecture

- Domain-Driven Design and Bounded Contexts

- Ports and Adapters

- Secure by Design

- Testability by Design

- Observability by Design

- Policy as Code

- Least Privilege and Skill-Based Access Control

- Separation of Duties

- Idempotency, determinism, reproducibility, and rollbackability

- Human-in-the-loop for high-impact, security-sensitive, AI-generated, or production-impacting actions

- AI-assisted development with human accountability

Security, auditability, traceability, reproducibility, compliance, and evidence generation are mandatory from Day 1.

## 2. Technology and Delivery Assumptions

We will use GitHub for:

- Source control

- GitHub Issues

- GitHub Projects

- Pull requests

- Branch protection

- CODEOWNERS

- GitHub Actions / CI/CD

- Issue labels and milestones

- Evidence-linked delivery tracking

The repository is initially empty and must be bootstrapped using AIRA Greenfield and DevSecOps standards before business feature development begins.

Do not assume that Sprint 1 business development can start immediately. Recommend the correct readiness sequence first.

## 3. Main Objectives

Provide expert guidance on how the team should start the project using Agile + AI DevSecOps.

Define the initial GitHub-ready backlog structure, including:

- Epics

- User Stories

- Development Tasks

- Security Tasks

- Technical / Platform Tasks

- Governance Tasks

- CI/CD Tasks

- Testing Tasks

- Documentation / Evidence Tasks

Each backlog item must be suitable for creation as a GitHub Issue.

## 4. Required Output

Provide the following deliverables:

### A. Recommended Starting Approach

Explain the correct order of execution for a Greenfield AI-Native DevSecOps project.

Include what must happen first, second, third, and so on.

At minimum, cover:

1. Sprint-0 / Ready-to-Develop phase

2. GitHub repository bootstrap

3. Branch protection and CODEOWNERS

4. CLAUDE.md / AI development rules

5. Greenfield workstation and devcontainer baseline

6. CI/CD evidence pipeline

7. Security baseline

8. Contract-first API and event baseline

9. MicroFunction foundation baseline

10. Observability and audit baseline

11. Developer onboarding and dry-run PR

12. Ready-to-Code sign-off

### B. Recommended GitHub Backlog Structure

Define the recommended GitHub structure, including:

- Milestones

- Labels

- Issue types

- Dependencies

- Parent-child issue structure

- Project board columns

- Definition of Ready

- Definition of Done

Use GitHub-friendly naming conventions.

### C. Initial Epics

Create the first set of recommended Epics for Sprint-0 and early foundation development.

Each Epic must include:

- Epic title

- Business / platform objective

- Why it matters

- Scope

- Out of scope

- Acceptance criteria

- Dependencies

- Required labels

- Suggested owner role

- AVCI evidence requirement

- Security and compliance requirement

### D. Sample Epic with Full Breakdown

Select one important Epic and fully break it down into:

- User Stories

- Development Tasks

- Security Tasks

- Technical / Platform Tasks

- CI/CD Tasks

- Testing Tasks

- Documentation / Evidence Tasks

Each User Story must follow this format:

> As a [role], I want [capability], so that [business/platform value].

Each task must include:

- Objective

- Acceptance criteria

- Security requirement

- Testing requirement

- Evidence requirement

- GitHub labels

- Dependencies

- Definition of Done

### E. GitHub Issue-Ready Format

Output the sample Epic, User Stories, and Tasks in a format that can be copied directly into GitHub Issues.

Use this issue format:

```markdown

## Objective

## Background / Context

## Parent Epic

## Issue Type

Epic / User Story / Development Task / Security Task / Technical Task / Governance Task / CI/CD Task / Testing Task

## Scope

## Out of Scope

## Acceptance Criteria

- [ ]

- [ ]

- [ ]

## Security and Compliance Requirements

- [ ] No secrets, credentials, real customer data, or restricted information

- [ ] Least privilege applied

- [ ] Required security review identified

- [ ] Classification confirmed

- [ ] Audit/evidence requirement identified

## AVCI Requirements

### Attributable

- Owner:

- Source / reference:

- Decision / ticket link:

### Verifiable

- Tests:

- CI evidence:

- Review evidence:

### Classifiable

- Data classification:

- Handling rule:

- Model / AI routing restriction, if applicable:

### Improvable

- Improvement path:

- Feedback loop:

- Related follow-up issue:

## Enterprise Design Principle Impact

- SOLID:

- Clean Architecture:

- DDD / Bounded Context:

- Ports and Adapters:

- Idempotency:

- Security:

- Observability:

- Testability:

- Reversibility / Rollbackability:

## Testing Requirements

- [ ] Unit test

- [ ] Component test

- [ ] Contract test, if applicable

- [ ] Security test, if applicable

- [ ] Architecture fitness check, if applicable

## CI/CD Requirements

- [ ] Build passes

- [ ] Tests pass

- [ ] Security scan passes

- [ ] Secret scan passes

- [ ] Policy-as-code check passes

- [ ] Evidence artifact generated

## Dependencies

- Depends on:

- Blocks:

- Related ADR / TDL:

## Definition of Done

- [ ] Implementation completed

- [ ] Tests completed

- [ ] Security checks completed

- [ ] CI passed

- [ ] Documentation updated

- [ ] AVCI summary completed

- [ ] Human reviewer approved
