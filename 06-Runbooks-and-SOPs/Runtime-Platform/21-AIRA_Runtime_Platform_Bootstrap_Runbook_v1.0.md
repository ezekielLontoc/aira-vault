---
title: "AIRA Runtime Platform Bootstrap Runbook v1.0"
source_file: "06-Runbooks-and-SOPs/Runtime-Platform/21-AIRA_Runtime_Platform_Bootstrap_Runbook_v1.0.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:43Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "06-Runbooks-and-SOPs"
  - "Runtime-Platform"
aliases:
  - "21-AIRA_Runtime_Platform_Bootstrap_Runbook_v1.0"
creator: "Solutions Architecture Office"
created: "2026-04-27T09:41:00Z"
modified: "2026-04-27T09:48:00Z"
description: "Generated as AIRA-DOC-021 implementation runbook"
---

AIRA  
AI-Native Enterprise Platform

Runtime Platform Bootstrap Runbook

Proxmox · Linux · Kubernetes · Harbor · Vault · Keycloak · PostgreSQL · Kafka · Temporal · Flowable · Observability · AI Control Plane

Version 1.0 · April 2026

| Mandatory Runbook Rule  
No runtime platform component may be provisioned, configured, promoted, or exposed to developers unless it is created from an approved Golden Source, version-pinned, hardened, observable, recoverable, classified, and evidenced under AVCI. Manual click-ops and undocumented bootstrap actions are treated as platform drift. |

| --- |

| Property | Value |

| --- | --- |

| Document ID | AIRA-DOC-021 |

| Document Title | AIRA Runtime Platform Bootstrap Runbook |

| Version | v1.0 - Initial Execution Baseline |

| Classification | INTERNAL CONFIDENTIAL |

| Status | For Architecture Review / Platform Engineering Adoption |

| Owner | Solutions Architecture Office / Platform Engineering / DevSecOps Lead |

| Audience | Solutions Architect, DevSecOps, System Administrator, Security Administrator, DBA, Software Development Leads, QA/SRE, Internal Audit |

| Effective Date | Upon approval by Architecture Review Board / CAB |

| Review Cadence | Quarterly; unscheduled on material platform, security, AI, regulatory, or technology-stack change |

| Companion Documents | 01 AVCI v3.0; 01A Enterprise Design Principles; 02 Engineering Blueprint v5.0; 04 Technology Stack v8.0; 09 Greenfield Environment v3.0; 11 DevSecOps v3.0; 17 Security v2.0; 18 Repository Bootstrap; 20 CI/CD Evidence Pack |

| Evidence Path | OpenKM Tier-0 / AIRA / Platform Bootstrap / Runtime Platform / v1.0/ |

# Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Bootstrap Architecture and Visual Overview

4. Roles, Responsibilities, and RACI

5. Prerequisites and Input Evidence

6. Bootstrap Sequencing Model B0-B16

7. Detailed Bootstrap Runbook

8. Security, Secrets, and Classification Controls

9. Validation, Smoke Tests, and Ready-to-Develop Gate

10. Backup, Recovery, Rebuild, and Drift Control

11. Evidence Pack and Audit Register

12. Risks, Controls, and Waivers

13. Implementation Roadmap

14. AVCI Compliance Summary

Appendices A-D. Copy-Ready Templates and Checklists

# 1. Executive Summary

This runbook converts the AIRA architecture and DevSecOps standards into the step-by-step runtime platform bootstrap procedure. It is the execution bridge between the standards and the actual platform foundation used by developers, CI/CD, AI agents, workflow engines, data services, observability, and governed runtime operations.

The runbook establishes a central-first, Golden Source-driven platform bootstrap for Proxmox, Linux, Kubernetes, container registries, secrets, identity, databases, messaging, workflow engines, observability, AI control plane services, knowledge services, GitOps, and CI/CD runners. The goal is to deliver a reproducible, secure, observable, fail-safe, and evidence-producing runtime foundation before business feature development begins.

| Runtime Bootstrap Position  
The runtime platform is not a collection of independently installed tools. It is a governed platform product. Every component must have an owner, version, source, hardening baseline, configuration-as-code, health check, recovery path, and evidence record. |

| --- |

| Strategic Outcome | Runbook Delivery Mechanism |

| --- | --- |

| Reproducible platform foundation | Bootstrap steps are sequenced, version-pinned, scripted where feasible, and captured in Git / Golden Source repositories. |

| Security by construction | Identity, secrets, mTLS, OPA, network segmentation, RBAC/ABAC/SBAC, and fail-closed controls are introduced before sensitive runtime services are exposed. |

| AI-native governance | LiteLLM, NeMo Guardrails, Harness, SBAC, OPA, trust scoring, and audit are bootstrapped as control-plane services before AI-assisted tool execution is allowed. |

| Observable by default | OpenTelemetry, metrics, logs, traces, dashboards, alerts, and audit evidence are required before readiness sign-off. |

| Recoverable and evergreen | Backup, restore, rebuild, drift detection, and Golden Source refresh are validated before the platform is considered ready. |

# 2. Purpose, Scope, and Authority

## 2.1 Purpose

Define the runtime bootstrap sequence for the AIRA foundation platform.

Provide a controlled procedure that system administrators, DevSecOps engineers, security administrators, DBAs, and platform engineers can follow.

Ensure every runtime component is installed from an approved source and produces AVCI evidence.

Prevent uncontrolled click-ops, tool sprawl, hidden credentials, undocumented configuration, and non-reproducible environments.

## 2.2 In Scope

Proxmox and Linux base runtime infrastructure for development and foundation environments.

Kubernetes platform runtime, namespaces, ingress, network policy, storage class, RBAC, and admission control.

Harbor / Golden Source registries, GitOps, CI/CD runner integration, and artifact promotion paths.

Vault or approved secrets manager, Keycloak/AD integration, SPIFFE/SVID, OPA, and workload identity.

PostgreSQL/Patroni/PgBouncer/pgvector, Kafka/CloudEvents/Schema Registry, Redis or Valkey, Temporal, Flowable, OpenKM, observability, and AI control-plane services.

Bootstrap evidence, validation, smoke tests, backup/restore checks, drift detection, and Ready-to-Develop approval.

## 2.3 Out of Scope

Business module functional design and user acceptance testing.

Production DR/BCP full exercise, except for foundation restore validation and backup controls.

Detailed vendor procurement and licensing decisions, except where a tool may not be installed without approval.

End-user business workstation setup outside the AIRA DevSecOps environment scope.

## 2.4 Authority and Conflict Rule

This runbook is subordinate to the AIRA Engineering Blueprint for architecture boundaries, the AIRA Technology Stack for approved components and version baselines, the AIRA Security Standard for identity/secrets/access controls, and the AIRA AVCI Standard for quality and evidence. Where this runbook conflicts with a higher authority document, the higher authority governs and this runbook must be updated through ADR/TDL change control.

# 3. Bootstrap Architecture and Visual Overview

The following diagrams provide the developer and platform engineering view of the runtime bootstrap. They are rendered for easy visualization and the Mermaid equivalents are provided in Appendix D for copy/paste into Obsidian or the engineering repository.

Figure 1. Runtime bootstrap dependency sequence B0-B12.

Figure 2. AIRA runtime platform layered view.

Figure 3. Governed runtime contribution, deployment, and evidence path.

Figure 4. Ready-to-Develop validation gate with fail-closed behavior.

# 4. Roles, Responsibilities, and RACI

| Activity | Solutions Architect / IT Head | DevSecOps Lead | SysAdmin | SecAdmin | DBA | SW Dev Lead | QA/SRE | Internal Audit |

| --- | --- | --- | --- | --- | --- | --- | --- | --- |

| Approve bootstrap scope and order | A | R | C | C | C | C | C | I |

| Provision Proxmox/Linux/Kubernetes foundation | C | A | R | C | I | I | C | I |

| Configure Vault, Keycloak, SPIFFE/SVID, OPA | A | R | C | R | C | I | C | I |

| Provision PostgreSQL, pgvector, PgBouncer, migration baseline | C | C | I | C | R/A | C | C | I |

| Provision Kafka, Temporal, Flowable, OpenKM | C | R/A | C | C | C | C | C | I |

| Configure observability and evidence pipeline | C | R/A | C | C | C | C | R | I |

| Run validation and Ready-to-Develop gate | A | R | R | R | R | C | R | C |

| Review evidence pack | A | R | C | C | C | C | C | R/C |

# 5. Prerequisites and Input Evidence

| Prerequisite | Required Evidence | Owner | Gate |

| --- | --- | --- | --- |

| Approved standards baseline | Approved 01-20 AIRA standards and cross-document revision control matrix. | Solutions Architect | B0 |

| Hardware/VM capacity plan | CPU, RAM, storage, network, VLAN, DNS, IP plan, HA assumptions. | SysAdmin | B1 |

| Golden Source repositories | Approved Git org/group, registry naming, branch protection, CODEOWNERS. | DevSecOps | B2 |

| Identity source | AD/IdP details, groups, service accounts, admin approvers, break-glass owner. | SecAdmin | B5 |

| Secrets baseline | Vault namespaces/paths, PKI policy, secret rotation policy, no plaintext seed files. | SecAdmin | B5 |

| Database baseline | PostgreSQL version, HA design, pgvector, migration policy, backup target. | DBA | B6 |

| Observability baseline | OTel collector routing, log retention, dashboards, alert channels, SLO owners. | QA/SRE | B8 |

| AI control baseline | LiteLLM aliases, NeMo rails, Harness actions, OPA policies, SBAC skills. | AI/DevSecOps | B9 |

# 6. Bootstrap Sequencing Model B0-B16

| Stage | Bootstrap Area | Purpose | Exit Criteria |

| --- | --- | --- | --- |

| B0 | Authorization and baseline freeze | Confirm scope, roles, version pins, evidence path, and change window. | Signed bootstrap approval and evidence folder created. |

| B1 | Infrastructure foundation | Prepare Proxmox/VM/Linux baseline. | Hosts inventoried, hardened, time-synced, and accessible through approved admin path. |

| B2 | Network, DNS, NTP, CA | Establish trusted network and time foundation. | DNS/NTP/CA tests pass; network segmentation documented. |

| B3 | Kubernetes base | Install cluster, namespaces, storage, ingress, RBAC, policies. | Cluster health green; admission controls active. |

| B4 | Golden Source and registries | Establish Harbor/package mirrors and image signing. | Only approved signed artifacts are deployable. |

| B5 | Identity, secrets, workload identity | Deploy Keycloak, Vault, SPIFFE/SVID, OPA. | OIDC, secret retrieval, mTLS, and policy checks pass. |

| B6 | Data and messaging | Deploy PostgreSQL, pgvector, PgBouncer, Kafka, Redis/Valkey. | Connectivity, migration, backup, and smoke tests pass. |

| B7 | Workflow engines | Deploy Temporal and Flowable with separated responsibilities. | Machine workflow and human approval smoke tests pass. |

| B8 | Observability and evidence | Deploy OTel, Prometheus, Loki, Tempo, Grafana, Sentry. | Trace/log/metric/audit correlation visible in dashboards. |

| B9 | AI control plane | Deploy LiteLLM, NeMo Guardrails, Harness, SBAC, model registry. | Guardrail, model alias, tool-action authorization tests pass. |

| B10 | Knowledge and document services | Deploy OpenKM, LLM Wiki, LightRAG/pgvector integration baseline. | Document intake and retrieval smoke tests pass with synthetic data. |

| B11 | GitOps and CI runners | Connect Argo CD and CI runners to Golden Source. | Protected deployment path works from Git to runtime. |

| B12 | MicroFunction runtime seed | Deploy framework skeleton and sample transaction. | Sample MicroFunction execution produces evidence. |

| B13 | Backup and restore | Run backup/restore for critical stateful services. | Restore evidence accepted. |

| B14 | Security validation | Run access, secret, policy, and classification smoke tests. | No fail-open path detected. |

| B15 | Ready-to-Develop gate | Review evidence and open defects. | Approval or conditional approval issued. |

| B16 | Operational handoff | Handover runbooks, dashboards, escalation, ownership. | Platform owners acknowledge support model. |

# 7. Detailed Bootstrap Runbook

## B0 - Authorization and Baseline Freeze

Create the bootstrap change ticket and link ADR/TDL references.

Freeze approved version baselines from the Technology Stack and Golden Source registry.

Create the evidence folder and assign evidence owners.

Confirm no direct public downloads or manual production mutation are permitted.

| Exit Evidence  
Approved bootstrap ticket, version baseline, RACI, evidence path, risk register. |

| --- |

## B1 - Proxmox, Linux, and Host Baseline

Provision VMs from approved hardened images only.

Apply CIS-aligned OS baseline, SSH hardening, package restrictions, NTP/Chrony, and endpoint monitoring.

Register each host in the platform inventory with owner, purpose, classification, and rebuild procedure.

Disable unused services and remove unmanaged package repositories.

| Exit Evidence  
Host inventory, hardening report, package manifest, NTP validation, admin access test. |

| --- |

## B2 - Network, DNS, NTP, and Private CA

Create or validate VLAN / subnet segmentation for platform, CI, data, model, observability, and admin zones.

Configure internal DNS records and certificate trust roots.

Validate time synchronization across all hosts and cluster nodes.

Document firewall rules and reject undocumented east-west access.

| Exit Evidence  
Network map, DNS records, time sync evidence, CA trust validation, firewall rule export. |

| --- |

## B3 - Kubernetes Foundation

Install Kubernetes using the approved distribution and version baseline.

Configure namespaces, RBAC, service accounts, ingress, storage classes, network policies, and resource quotas.

Install admission controls and policy hooks before onboarding workloads.

Disable direct administrative mutation except approved break-glass diagnostics.

| Exit Evidence  
Cluster health report, namespace/RBAC manifest, network policy test, admission control result. |

| --- |

## B4 - Golden Source, Harbor, and Artifact Trust

Deploy Harbor or approved registry for images, Helm charts, and signed artifacts.

Create repository naming standard and promotion channels: dev, int, uat, stg, prod.

Enable vulnerability scanning, image immutability, provenance signing, and retention.

Block direct runtime pulls from public registries unless proxied and approved.

| Exit Evidence  
Registry project list, immutability policy, scan report, signed artifact test, pull policy evidence. |

| --- |

## B5 - Identity, Secrets, and Workload Identity

Deploy Keycloak and integrate with corporate AD/IdP where available.

Deploy Vault or approved secrets manager with namespaces, policies, dynamic secrets, PKI, and audit logging.

Deploy SPIFFE/SVID or equivalent workload identity pattern for service-to-service trust.

Deploy OPA policy decision point and configure policy bundles from Git.

| Exit Evidence  
OIDC test, MFA/group mapping, Vault audit enabled, dynamic secret test, mTLS identity test, OPA allow/deny tests. |

| --- |

## B6 - PostgreSQL, pgvector, PgBouncer, Kafka, and Cache

Deploy PostgreSQL with HA/Patroni target design when applicable, pgvector, and extension governance.

Deploy PgBouncer and validate connection pooling compatibility with RLS/session settings.

Deploy Kafka in KRaft mode with topic naming, ACLs, schema rules, DLQ conventions, and CloudEvents baseline.

Deploy Redis or Valkey as cache only; configure it as non-authoritative and rebuildable.

| Exit Evidence  
DB migration smoke test, backup test, pgvector test, Kafka produce/consume test, schema test, cache loss test. |

| --- |

## B7 - Temporal and Flowable

Deploy Temporal for durable machine workflows, retries, sagas, and compensation.

Deploy Flowable for BPMN/DMN/CMMN, human approvals, exceptions, and SLA timers.

Validate the partition: machine retry belongs to Temporal; human approval belongs to Flowable.

Seed sample workflows for platform smoke tests and approval simulation.

| Exit Evidence  
Temporal workflow execution, compensation test, Flowable user task, DMN decision test, audit evidence. |

| --- |

## B8 - Observability, Audit, and Evidence Pipeline

Deploy OpenTelemetry Collector routing for traces, metrics, logs, and AI/runtime metadata.

Deploy Prometheus/Thanos, Loki, Tempo, Grafana, and Sentry or approved equivalents.

Create default dashboards for platform health, service health, AI gateway, CI runners, databases, queues, and workflow engines.

Validate correlation using trace_id, request_id, service.name, environment, release, tenant where applicable, and evidence_ref.

| Exit Evidence  
Dashboard screenshots, telemetry sample, alert route test, trace/log/metric correlation test, retention settings. |

| --- |

## B9 - AI Control Plane

Deploy LiteLLM model gateway with aliases, budgets, virtual keys, classification-aware routes, and telemetry.

Deploy NeMo Guardrails or approved guardrail service with Input, Retrieval, Execution, and Output checkpoints.

Deploy Harness service for AI tool execution mediation, SBAC checks, trust scoring, OPA decision, and audit.

Block direct provider SDK use and direct agent credentials.

| Exit Evidence  
Model alias test, guardrail block/pass test, Harness authorization test, OPA policy test, audit record. |

| --- |

## B10 - OpenKM, Knowledge, Retrieval, and AI Data Services

Deploy OpenKM as the authoritative document store where included in the current environment scope.

Configure PostgreSQL retrieval metadata, chunks, embeddings, pgvector indexes, and lineage.

Connect LightRAG / LLM Wiki / Obsidian publication path only after classification and review controls are active.

Use synthetic documents only during bootstrap validation.

| Exit Evidence  
Document upload smoke test, metadata record, retrieval evidence pack, classification route test, no real PII confirmation. |

| --- |

## B11 - GitOps and CI Runners

Deploy Argo CD and connect only to approved Git repositories.

Register CI runners with least privilege and no persistent broad credentials.

Validate pipeline-to-registry-to-GitOps promotion using a sample signed artifact.

Ensure all deployment manifests are traceable to Git commits and evidence packs.

| Exit Evidence  
Runner registration, sample pipeline run, Argo sync result, signed image deployed, evidence manifest. |

| --- |

## B12 - MicroFunction Runtime Seed

Deploy MicroFunction runtime skeleton and configuration tables.

Seed standard step catalog, retry/error policies, and a sample transaction.

Run a sample request through gateway, MicroFunction runtime, PostgreSQL, audit, outbox, and observability.

Confirm business logic is isolated to STP-BUS-* or rule/DMN steps.

| Exit Evidence  
Sample transaction evidence, step execution audit, outbox event, trace dashboard, test report. |

| --- |

# 8. Security, Secrets, and Classification Controls

| Control Area | Bootstrap Requirement | Fail-Closed Rule |

| --- | --- | --- |

| Identity | Keycloak/AD groups, roles, service accounts, and MFA are configured before runtime access is granted. | If identity is unavailable, protected endpoints and admin consoles are blocked. |

| Secrets | Secrets are stored only in Vault/approved manager with audit, lease, rotation, and path ownership. | If Vault is unavailable, sensitive deployments do not start except approved cached-read patterns. |

| Workload identity | Service-to-service trust uses SPIFFE/SVID/mTLS or approved short-lived workload identity. | Static shared credentials are rejected unless formally waived with expiry. |

| OPA and policy-as-code | Authorization, admission, deployment, and AI action policies are versioned in Git and tested. | If OPA is unavailable, controlled actions are denied. |

| Classification | Public/Internal/Confidential/Restricted labels govern logs, prompts, model route, storage, and retrieval. | Unclassified data cannot be routed to model or retrieval paths. |

| Audit | Every admin action, deployment, secret access, policy decision, AI tool action, and bootstrap change writes evidence. | If audit evidence cannot be written, high-risk actions stop. |

# 9. Validation, Smoke Tests, and Ready-to-Develop Gate

| Validation Domain | Minimum Smoke Test | Evidence Required |

| --- | --- | --- |

| Platform health | All cluster nodes Ready; namespaces, ingress, storage, DNS, and network policies operational. | kubectl/health export, dashboard screenshot, policy test. |

| Identity | OIDC login, token validation, role mapping, MFA where available. | Login test record, token claim mapping, access denied test. |

| Secrets | Dynamic secret issuance, lease renewal/revocation, secret read denial for unauthorized user/service. | Vault audit log, policy test, lease record. |

| Database | Flyway migration, RLS/session test, pgvector extension test, backup/restore sample. | Migration report, query test, restore evidence. |

| Messaging | Kafka topic create from Git, schema validate, produce/consume, DLQ test. | Producer/consumer log, schema validation, DLQ event. |

| Workflow | Temporal workflow run and compensation; Flowable approval and DMN decision. | Workflow history, task completion, DMN result. |

| Observability | Request generates trace, log, metric, dashboard signal, and alert route test. | Trace ID, log query, metric screenshot, alert receipt. |

| AI control plane | LiteLLM alias route, guardrail block/pass, Harness action denied/approved by OPA/SBAC. | Model route log, guardrail result, Harness audit. |

| GitOps path | Sample service deployed from Git -> CI -> registry -> Argo -> Kubernetes. | Pipeline evidence, signed image, Argo sync, deployment trace. |

| MicroFunction sample | Sample transaction executes standard steps and business step with audit/outbox. | Step audit, response, outbox event, trace evidence. |

| Ready-to-Develop Decision  
AIRA foundation development may begin only when all mandatory validation domains pass or receive formal conditional approval with owner, risk rating, compensating control, expiry date, and remediation plan. No conditional approval may permit fail-open identity, secrets, OPA, audit, guardrails, or model-routing behavior. |

| --- |

# 10. Backup, Recovery, Rebuild, and Drift Control

| Component | Backup / Rebuild Requirement | Validation |

| --- | --- | --- |

| Git repositories | Remote repository backup and branch protection export. Git remains desired-state source. | Restore clone and protected branch policy check. |

| Harbor / registry | Registry metadata and artifacts backed up; images signed and reproducible from pipeline. | Pull signed sample image after restore. |

| Vault | Unseal/recovery procedure documented; audit logs retained; root tokens controlled. | Recovery drill in non-production or approved simulation. |

| Keycloak | Realm export, client config, group mapping, and admin audit retained. | Test login after restore/import. |

| PostgreSQL | Base backup, WAL/archive policy, restore test, migration replay. | Point-in-time or sample restore evidence. |

| Kafka | Topic configuration in Git; messages retained based on policy; DLQ recoverable. | Recreate topic config and consume DLQ sample. |

| Temporal / Flowable | DB-backed state backed up; workflow definitions versioned in Git. | Run workflow after state restore or fresh rebuild. |

| Observability | Dashboards in Git; logs/traces retention configured; alert routes documented. | Dashboard import and alert route test. |

| AI configs | LiteLLM aliases, guardrails, prompts, model registry, SBAC skills in Git. | Config rehydrate and route test. |

Drift detection must compare runtime state against Git, Golden Source, and approved configuration baselines.

Unapproved package, image, credential, model alias, policy, or manual cluster change is a security and compliance event.

Evergreen refresh means rebuild forward from approved baselines, not indefinite local patching.

Runtime environments must remain reclaimable: any non-authoritative component can be destroyed and rebuilt from source evidence.

# 11. Evidence Pack and Audit Register

Every bootstrap run produces an evidence pack that can be reviewed by Architecture, DevSecOps, Security, QA/SRE, and Internal Audit. Evidence must be retained in OpenKM or the approved Tier-0 document repository and indexed into the AIRA knowledge fabric only after classification and review.

| Evidence Item | Required Contents | Storage / Reference |

| --- | --- | --- |

| Bootstrap approval | Ticket, owners, scope, schedule, risk, rollback/rebuild plan. | OpenKM / Change Record |

| Version baseline | Technology pins, image tags, Helm chart versions, Git commit IDs. | Git + Evidence Manifest |

| Infrastructure evidence | Host inventory, hardening reports, network map, DNS/NTP/CA proof. | OpenKM / Platform Evidence |

| Security evidence | Keycloak, Vault, SPIFFE/SVID, OPA, RBAC/SBAC, access tests. | Security Evidence Folder |

| Deployment evidence | CI pipeline run, signed artifacts, registry scan, Argo sync, Kubernetes health. | CI Evidence Pack |

| Data evidence | Flyway migration, backup/restore, pgvector, RLS, PgBouncer tests. | DB Evidence Folder |

| AI control evidence | LiteLLM alias, guardrail, Harness, OPA, SBAC, trust-score tests. | AI Governance Evidence |

| Observability evidence | Dashboards, logs, traces, metrics, alert tests, correlation proof. | Observability Evidence |

| Ready-to-Develop approval | Passed gates, exceptions, owners, sign-off, residual risks. | CAB / Architecture Review Record |

# 12. Risks, Controls, and Waivers

| Risk | Impact | Required Control |

| --- | --- | --- |

| Direct public package/image pulls | Supply-chain compromise and non-reproducibility. | Proxy through Golden Source; scan, sign, approve, and retain evidence. |

| Manual click-ops during bootstrap | Undocumented drift and audit failure. | All changes captured as code or recorded with exception evidence and reconciliation. |

| Secrets in files, prompts, tickets, or logs | Credential compromise and compliance breach. | Vault-only secrets, secret scanning, log redaction, prompt hygiene. |

| OPA/Vault/Guardrails unavailable | Fail-open security risk. | Fail closed; block sensitive actions until restored or approved safe-mode procedure applies. |

| Unclear workflow engine ownership | Duplicate orchestration and compensation defects. | Temporal for machine durability; Flowable for human approvals; architecture review for exceptions. |

| Cache treated as source of truth | Correctness loss during restart or cache eviction. | Redis/Valkey/Caffeine are acceleration only; rebuild from PostgreSQL/Git/OpenKM. |

| Insufficient evidence | Cannot prove readiness, security, or compliance. | Evidence pack is a release artifact; missing evidence blocks readiness. |

| Waiver Rule  
A waiver may not approve fail-open identity, secrets, OPA, audit, guardrail, classification, or direct model-provider bypass. Waivers must include owner, expiry, risk acceptance, compensating control, and remediation backlog item. |

| --- |

# 13. Implementation Roadmap

| Phase | Target Outcome | Primary Deliverables |

| --- | --- | --- |

| Phase 1 - Foundation readiness | Prepare approval, source baseline, infrastructure plan, and evidence path. | Bootstrap ticket, version pins, VM plan, RACI, evidence folders. |

| Phase 2 - Core platform | Deploy Proxmox/Linux/Kubernetes, Golden Source, identity, secrets, and policy controls. | Cluster, Harbor, Keycloak, Vault, OPA, SPIFFE/SVID. |

| Phase 3 - Runtime services | Deploy data, messaging, workflows, observability, AI control plane, and knowledge services. | PostgreSQL, Kafka, Temporal, Flowable, OTel stack, LiteLLM, Guardrails, Harness, OpenKM. |

| Phase 4 - GitOps and sample execution | Connect CI/CD, GitOps, and MicroFunction sample transaction. | CI runner, Argo CD, signed image, sample MicroFunction execution. |

| Phase 5 - Readiness and handoff | Validate all gates and formally hand over to foundation development. | Evidence pack, risk register, readiness sign-off, support ownership. |

# 14. AVCI Compliance Summary

| AVCI Property | How This Runbook Satisfies It |

| --- | --- |

| Attributable | Every bootstrap component, action, evidence record, owner, source repository, tool, and approval has a named accountable role and reference. |

| Verifiable | Each bootstrap stage has exit criteria, smoke tests, health checks, policy checks, and evidence artifacts. |

| Classifiable | Components, data paths, secrets, logs, prompts, evidence, and knowledge artifacts carry classification and handling requirements. |

| Improvable | Drift findings, incidents, validation failures, restore lessons, and platform improvements feed ADR/TDL, backlog, Auto-Learn, and controlled refresh processes. |

# Appendix A. Bootstrap Evidence Manifest Template

Template A1. Bootstrap evidence manifest.

| bootstrap_evidence_manifest:  
  document_id: AIRA-DOC-021  
  bootstrap_run_id: BR-YYYYMMDD-001  
  environment: DEV-FOUNDATION  
  classification: INTERNAL  
  owner: platform-engineering  
  approved_by: solutions-architect  
  source_references:  
    git_commit: <commit-sha>  
    technology_stack_version: 04-AIRA_Technology_Stack_v8.0  
    security_standard_version: 17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.0  
  components:  
    - name: kubernetes  
      version: <pinned-version>  
      source: golden-source/helm/kubernetes-baseline  
      evidence_ref: OpenKM:/AIRA/Platform/B3/k8s-health.pdf  
      status: PASS  
    - name: vault  
      version: <pinned-version>  
      source: golden-source/helm/vault  
      evidence_ref: OpenKM:/AIRA/Platform/B5/vault-policy-test.pdf  
      status: PASS  
  readiness_decision:  
    status: APPROVED \| CONDITIONAL \| REJECTED  
    residual_risks: []  
    approver: <name>  
    approval_date: <yyyy-mm-dd> |

| --- |

# Appendix B. Minimum Namespace Baseline

| Namespace | Purpose | Controls |

| --- | --- | --- |

| aira-platform | Core platform services such as ingress, policy, registries, platform operators. | Restricted admin access, network policy, resource quotas. |

| aira-security | Vault, OPA, SPIFFE/SVID, security controllers where applicable. | Highest access restriction, audit enabled, secrets protected. |

| aira-identity | Keycloak and identity integration components. | MFA/OIDC, admin audit, backup/export. |

| aira-data | PostgreSQL, PgBouncer, Redis/Valkey, data services. | RLS, backup, encryption, DB admin restrictions. |

| aira-messaging | Kafka, schema registry, connectors, DLQ tooling. | Topic ACLs, schema compatibility, observability. |

| aira-workflow | Temporal, Flowable, workflow workers. | Workflow history, human approval separation, audit. |

| aira-observability | OTel, Prometheus, Loki, Tempo, Grafana, Sentry. | Retention, redaction, dashboard-as-code. |

| aira-ai-control | LiteLLM, NeMo Guardrails, Harness, model registry, SBAC services. | Classification-aware routing, no direct provider credentials. |

| aira-dev | Development sample services and MicroFunction runtime skeleton. | Non-production only, synthetic data only. |

# Appendix C. Ready-to-Develop Sign-Off Checklist

| # | Checklist Item | Result | Evidence | Owner |

| --- | --- | --- | --- | --- |

| 1 | Bootstrap approval and evidence path completed. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 2 | Infrastructure hosts inventoried, hardened, and time synchronized. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 3 | Kubernetes cluster healthy and policy controls active. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 4 | Golden Source registry configured with signing, scanning, and immutability. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 5 | Keycloak/AD, Vault, SPIFFE/SVID, and OPA smoke tests passed. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 6 | PostgreSQL, pgvector, PgBouncer, backup/restore, and Flyway tests passed. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 7 | Kafka, schema validation, event publishing, consumer, and DLQ tests passed. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 8 | Temporal machine workflow and Flowable human approval tests passed. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 9 | Observability dashboards, trace/log/metric correlation, and alert routes validated. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 10 | LiteLLM, NeMo Guardrails, Harness, SBAC, and OPA AI action tests passed. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 11 | OpenKM / retrieval / knowledge baseline tested with synthetic data. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 12 | CI runner and Argo CD deployment path tested using signed sample artifact. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 13 | MicroFunction runtime seed and sample transaction executed with evidence. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 14 | Backup/rebuild/drift detection procedures validated. | PASS / FAIL / N/A | Evidence Ref | Owner |

| 15 | Residual risks reviewed and formally accepted or remediated. | PASS / FAIL / N/A | Evidence Ref | Owner |

# Appendix D. Copy-Ready Mermaid Diagram References

Mermaid D1. Runtime bootstrap dependency flow.

| flowchart TD  
  B0[Approval and Baseline Freeze] --> B1[Proxmox / Linux Foundation]  
  B1 --> B2[Network / DNS / NTP / Private CA]  
  B2 --> B3[Kubernetes Base]  
  B3 --> B4[Golden Source / Harbor]  
  B4 --> B5[Identity / Secrets / Workload Identity / OPA]  
  B5 --> B6[PostgreSQL / Kafka / Redis]  
  B6 --> B7[Temporal / Flowable]  
  B7 --> B8[Observability / Audit / Evidence]  
  B8 --> B9[LiteLLM / NeMo Guardrails / Harness / SBAC]  
  B9 --> B10[OpenKM / LLM Wiki / pgvector / LightRAG]  
  B10 --> B11[GitOps / CI Runners]  
  B11 --> B12[Ready-to-Develop Gate] |

| --- |

Mermaid D2. Governed runtime contribution and deployment path.

| flowchart LR  
  DEV[Developer / AI Assistant] --> GIT[Protected Git Repository]  
  GIT --> CI[CI Pipeline: Tests, Scans, Evidence]  
  CI --> REG[Golden Source Registry]  
  REG --> ARGO[Argo CD GitOps]  
  ARGO --> OPA[Admission / OPA Policies]  
  OPA --> K8S[Kubernetes Runtime]  
  K8S --> OBS[Observability + Audit Evidence]  
  OBS --> LEARN[Governed Auto-Learn Feedback] |

| --- |

# Approval

| Role | Name | Signature / Approval Reference | Date |

| --- | --- | --- | --- |

| Solutions Architect / IT Head |  |  |  |

| DevSecOps Lead |  |  |  |

| System Administrator |  |  |  |

| Security Administrator |  |  |  |

| Database Administrator |  |  |  |

| QA/SRE Lead |  |  |  |

| Internal Audit / Compliance Reviewer |  |  |  |
