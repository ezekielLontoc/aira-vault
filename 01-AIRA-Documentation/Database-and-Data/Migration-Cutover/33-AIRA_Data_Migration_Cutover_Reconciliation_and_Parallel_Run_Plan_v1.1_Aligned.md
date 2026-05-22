---
document_id: "AIRA-DOC-033"
title: "AIRA Data Migration Cutover Reconciliation and Parallel Run Plan"
version: "v1.1"
status: "aligned"
source_file: "33-AIRA_Data_Migration_Cutover_Reconciliation_and_Parallel_Run_Plan_v1.1_Aligned.docx"
source_format: "docx"
vault_folder: "01-AIRA-Documentation/Database-and-Data/Migration-Cutover"
generated_at: "2026-05-22"
tags:
  - aira
  - obsidian
  - knowledge-vault
  - migration-cutover
  - reconciliation
  - parallel-run
---

# AIRA Data Migration Cutover Reconciliation and Parallel Run Plan

**AIRA Source Pack 05 v1.2 Alignment Control Addendum**

**Data, API, Security, and Decision | INTERNAL CONFIDENTIAL**

| **Current Document** | 33-AIRA_Data_Migration_Cutover_Reconciliation_and_Parallel_Run_Plan_v1.1_Aligned.docx |
| --- | --- |
| **Document Title** | AIRA Data Migration, Cutover, Reconciliation, and Parallel Run Plan |
| **Current Version** | v1.1 - Pack 05 v1.2 Alignment Update |
| **Supersedes** | 33-AIRA_Data_Migration_Cutover_Reconciliation_and_Parallel_Run_Plan_v1.0 |
| **Classification** | INTERNAL CONFIDENTIAL |
| **Backend Runtime Baseline** | Java 25 LTS; Java 21 compatibility fallback by waiver is waiver-only compatibility fallback |
| **Technology Baseline** | AIRA Technology Stack v9.1; PostgreSQL 18.x; Flyway mandatory for application schema changes |
| **Canonical Principle Reference** | 01A-AIRA Enterprise Design Principles and SOLID Enforcement Layer v1.1 |
| **Prepared For** | AIRA Obsidian / LLM Wiki governed knowledge baseline |
| **Effective Date** | 2026-05-21 |

## Purpose of this v1.2 alignment

This addendum records the Pack 05 v1.2 alignment applied to AIRA Data Migration, Cutover, Reconciliation, and Parallel Run Plan. It preserves the underlying source material for traceability while making the current interpretation consistent with Packs 01–04, the canonical 01A principle layer, Java 25 backend governance, Technology Stack v9.1, and the AIRA v1.2 Obsidian upload set.

## Document-specific improvements

| **Area** | **v1.2 Improvement / Interpretation** |
| --- | --- |
| Primary focus | Migration waves, cutover, reconciliation, parallel run, rollback/forward-fix, and evidence capture. |
| Improvement 1 | Strengthened migration readiness gates for source freeze, data classification, reconciliation evidence, variance handling, parallel-run exit criteria, and business sign-off. |
| Improvement 2 | Clarified that cutover, rollback, and forward-fix actions must be decision-linked, evidence-backed, CAB-approved where required, and never performed as uncontrolled direct database mutation. |
| Improvement 3 | Aligned data migration evidence with Flyway governance, OpenKM/Obsidian evidence retention, audit traceability, and production acceptance controls. |
| Cross-pack alignment | References to Pack 01–04 documents are interpreted using their aligned v1.2 filenames and versions, including AVCI v3.1, Engineering Blueprint v5.1, Developer Guide v4.1, Technology Stack v9.1, Information Nervous System v4.1, and MicroFunction Framework v3.1. |
| Flyway governance | Application schemas, tables, constraints, indexes, RLS policies, reference data, outbox structures, idempotency registries, and evidence schemas must be delivered through Flyway or an approved migration workflow. Manual production DDL is rejected except approved emergency remediation with follow-up reconciliation. |
| AI/security controls | AI-assisted decisions, database changes, API contracts, migrations, and security actions remain subject to LiteLLM routing, NeMo guardrails, Harness-mediated execution, SBAC, OPA, audit evidence, and human approval where risk or classification requires it. |
| AVCI summary | Attributable: document owner and source are preserved. Verifiable: migration/contract/security evidence requirements are strengthened. Classifiable: INTERNAL CONFIDENTIAL is standardized. Improvable: open issues feed the revision-control matrix and next pack regeneration. |

## Interpretation rule

If the retained source content below contains an older version reference, the v1.2 alignment addendum governs until the next full canonical rewrite. Conflicts must be logged as AVCI reconciliation items and resolved through ADR/TDL or the revision-control matrix.

**AIRA**
AI-Native Enterprise Platform

**Data Migration, Cutover, Reconciliation, and Parallel Run Plan**
Migration Governance · Cutover Discipline · Data Reconciliation · Parallel Run Control · AVCI-Aligned

![[attachments/33-AIRA_Data_Migration_Cutover_Reconciliation_and_Parallel_Run_Plan_v1.1_Aligned/image9.png]]

| **Mandatory Practice Statement**<br>No AIRA data migration, cutover, reconciliation, parallel run, or legacy-data retirement activity may proceed unless the source data, target data, mapping rules, validation controls, rollback path, business acceptance, evidence package, and named human accountability are defined, approved, and traceable under AVCI. Migration speed must never override data integrity, classification, auditability, reversibility, or customer-impact controls. |
| --- |

Version v1.1 · April 2026 · INTERNAL CONFIDENTIAL
Prepared by Solutions Architecture Office / Data Governance / Platform Delivery

## Document Control

| **Property** | **Value** |
| --- | --- |
| Document ID | AIRA-DOC-033 |
| Document Title | AIRA Data Migration, Cutover, Reconciliation, and Parallel Run Plan |
| Version | v1.0 - Initial Migration and Cutover Baseline |
| Classification | INTERNAL CONFIDENTIAL |
| Status | FOR ARCHITECTURE REVIEW BOARD / DATA GOVERNANCE / DELIVERY ADOPTION |
| Owner | Solutions Architecture Office / Data Governance Lead |
| Co-Owners | Business Owner, Product Owner, Software Development Lead, DBA, DevSecOps Lead, Security Administrator, QA Lead, Operations Lead |
| Effective Date | Upon Architecture Review Board / CAB approval |
| Review Cadence | Before every migration wave; quarterly; unscheduled on source-system, target-schema, regulatory, cutover, or production-risk change |
| Primary Audience | Solutions Architect / IT Head, Business Owners, Product Owner, Software Developers, DBA, QA/SDET, DevSecOps, Security, Operations, Internal Audit, Compliance |
| Companion Documents | 01 AVCI Engineering Standard; 01A Enterprise Design Principles and SOLID Enforcement Layer; 02 Engineering Blueprint; 03 Developer Guide; 15 API Contract Standard; 16 Database Standard; 17 Security Standard; 24 Operations and Recovery Runbook; 25 MVP Backlog and Acceptance Criteria Pack; 26 Data Classification, Retention, and Evidence Register; 29 UAT and Production Acceptance; 30 Release/CAB Governance; 31 Production Operations/SRE; 32 Business Process, Role, Permission, and SBAC Catalog |
| Purpose | Define the governed approach for planning, rehearsing, executing, reconciling, accepting, and evidencing AIRA data migration, cutover, parallel run, fallback, and legacy-data retirement. |
| Evidence Path | OpenKM Tier-0 / AIRA / Evidence / Data-Migration-Cutover / v1.0/ |

### Version 1.0 Scope

| **Area** | **Baseline** |
| --- | --- |
| Migration governance | Establishes phased migration controls from discovery to final acceptance and evidence archival. |
| Cutover control | Defines freeze windows, go/no-go gates, rollback/forward-fix rules, and stakeholder decision points. |
| Reconciliation | Defines record-level, control-total, financial, workflow, document, and AI/retrieval reconciliation controls. |
| Parallel run | Defines controlled comparison between legacy and AIRA outcomes before full business reliance. |
| Evidence discipline | Requires AVCI evidence for source extraction, transformation, load, validation, defects, exceptions, sign-off, and lessons learned. |
| AIRA alignment | Applies classification, retention, SBAC, OPA, Zammad, GitOps, Flyway, OpenKM, PostgreSQL, Temporal/Flowable, and observability controls. |

## Table of Contents

1. Executive Summary

2. Purpose, Scope, and Authority

3. Migration Principles and Non-Negotiables

4. Migration Scope and Data Domains

5. Migration Lifecycle and Stage Gates

6. Source Data Discovery and Profiling

7. Data Mapping, Transformation, and Cleansing

8. Migration Architecture and Tooling Pattern

9. Cutover Strategy and Go/No-Go Governance

10. Reconciliation Framework

11. Parallel Run Plan

12. Rollback, Forward-Fix, and Reversibility Controls

13. Defect, Exception, and Waiver Management

14. Security, Classification, Privacy, and Retention Controls

15. Evidence Pack and Audit Trail

16. Roles, RACI, and Operating Responsibilities

17. Implementation Roadmap

18. Templates and Appendices

19. AVCI Compliance Summary

## 1. Executive Summary

AIRA will become an authoritative AI-native enterprise platform. Data migration and cutover therefore cannot be treated as a one-time technical import. They are governed business, data, security, workflow, evidence, and operational transition activities. This plan defines the controls required to move data, documents, configurations, workflows, and evidence into AIRA without losing integrity, classification, traceability, or business confidence.

The plan supports MVP, UAT, pilot, phased production rollout, and future legacy-system retirement. It requires migration rehearsals, deterministic mapping, synthetic or approved migration data, source and target control totals, exception handling, parallel run comparison, business sign-off, and auditable evidence. It also ensures that migrations do not contaminate AIRA knowledge layers, AI prompts, retrieval indexes, caches, or model outputs with unclassified or unverifiable data.

| **Core Migration Rule**<br>AIRA may accept migrated data only when the data is classified, mapped, validated, reconciled, accepted by business owners, and linked to retained evidence. Anything else remains a candidate record, not an authoritative AIRA record. |
| --- |

### 1.1 Strategic Outcomes

| **Outcome** | **Required Result** |
| --- | --- |
| Data integrity | Migrated records, documents, histories, configuration records, and references match approved source truth within defined tolerances. |
| Business continuity | Cutover avoids uncontrolled downtime and includes rehearsed fallback or forward-fix options. |
| Regulatory defensibility | Every migration wave has evidence proving source, transformation, validation, reconciliation, approval, and exception treatment. |
| AI-safe knowledge transition | Migrated data cannot be indexed, embedded, prompted, summarized, or learned from unless classification, lineage, and prompt eligibility permit it. |
| Operational readiness | Zammad, monitoring, runbooks, hypercare, support tiers, and escalation paths are active before production reliance. |
| Reversibility and recovery | Each cutover has backup, rollback, compensation, or safe rework path aligned with release and CAB governance. |

### 1.2 Relationship to MVP and Production Acceptance

For MVP, this plan may be applied to sample, synthetic, or limited approved data. For UAT and production, this plan becomes mandatory for every source system, data set, document class, configuration set, workflow history, and evidence class that will become authoritative in AIRA.

## 2. Purpose, Scope, and Authority

### 2.1 Purpose

Define the standard migration lifecycle from discovery to final acceptance.

Establish stage gates for migration design, rehearsal, cutover, reconciliation, and parallel run.

Define source-to-target mapping, transformation, cleansing, validation, and exception rules.

Ensure migration activities comply with AVCI, SOLID enforcement, classification, retention, security, and audit requirements.

Provide templates for migration inventory, mapping, reconciliation, cutover, parallel run, and sign-off records.

### 2.2 In Scope

Business records, reference data, document metadata, documents, workflow history, audit evidence, user/role mappings, configuration parameters, and migration control records.

Migration pipelines, scripts, Flyway changes, ETL jobs, staging tables, checksum reports, reconciliation reports, defect logs, and Zammad migration tickets.

Migration into PostgreSQL, OpenKM, pgvector-ready metadata, LLM Wiki/Obsidian candidates, Temporal/Flowable references, and other approved AIRA storage locations.

UAT migration rehearsal, pilot cutover, production cutover, parallel run, hypercare, and legacy decommission evidence.

### 2.3 Out of Scope

Unapproved production customer-data ingestion before data governance and security approval.

General corporate archive policy outside AIRA unless records are ingested into or referenced by AIRA.

Production rollout scheduling details covered by the Release, Deployment, Change, and CAB Governance Standard.

Full DR/BCP design covered by the future AIRA Business Continuity, Disaster Recovery, Backup, and Restore Validation Standard.

### 2.4 Authority and Precedence

| **Authority Level** | **Source** | **Controls** |
| --- | --- | --- |
| L0 | Regulatory, legal, executive, and risk decisions | Legal hold, privacy, records retention, external compliance, and customer-impact decisions. |
| L1 | AIRA Engineering Blueprint and Security Standard | Architecture boundaries, data ownership, identity, access, classification, and fail-safe controls. |
| L1 | AIRA Release/CAB and UAT/Production Acceptance Standards | Cutover approvals, production promotion, business acceptance, and go/no-go governance. |
| L2 | This Plan | Migration lifecycle, mapping, reconciliation, parallel run, and migration evidence. |
| L3 | Tickets, PR/MRs, Flyway migrations, Zammad records, runbooks, and evidence packs | Execution-level proof and operational traceability. |

## 3. Migration Principles and Non-Negotiables

| **ID** | **Principle** | **Operational Meaning** |
| --- | --- | --- |
| MIG-01 | AVCI by construction | Every migration artifact has owner, source, version, classification, validation evidence, and improvement path. |
| MIG-02 | Authoritative source is explicit | Every migrated record traces to an approved source system, source extract, document, event, or business-approved mapping. |
| MIG-03 | Classification before movement | No record, document, chunk, or evidence is migrated, indexed, cached, or prompted before classification and handling rules are known. |
| MIG-04 | Dry run before cutover | Production cutover requires at least one successful migration rehearsal and reconciliation cycle. |
| MIG-05 | No silent transformation | Every transformation rule is documented, reviewed, tested, and tied to a business or technical reason. |
| MIG-06 | Reconciliation is mandatory | Counts, totals, samples, hashes, relationships, and business outcomes are reconciled before acceptance. |
| MIG-07 | Fail-safe, not fail-open | Unknown mapping, unknown classification, failed checksum, or missing evidence blocks migration acceptance. |
| MIG-08 | Reversibility by design | Every wave has rollback, forward-fix, compensation, or controlled rework path. |
| MIG-09 | Human-in-the-loop for exceptions | Business-impacting exceptions, data loss, data correction, waiver, or legal hold decision requires named human approval. |
| MIG-10 | Parallel run where risk warrants | High-risk business outcomes require side-by-side comparison before full reliance on AIRA. |
| MIG-11 | No AI contamination | Migration defects or unapproved source data must not be promoted to LLM Wiki, embeddings, summaries, or model prompts. |
| MIG-12 | Evidence before acceptance | A migration wave cannot be accepted without retained evidence and sign-off. |

## 4. Migration Scope and Data Domains

The migration portfolio must be treated as a controlled inventory. Each source, data set, document set, and derived artifact receives an owner, classification, retention rule, migration path, reconciliation method, and acceptance owner.

| **Migration Domain** | **Examples** | **Primary Store / Target** | **Required Control** |
| --- | --- | --- | --- |
| Business records | Loan, customer, collateral, payment, account, document registry metadata | PostgreSQL bounded-context schemas | Data owner, classification, mapping, control totals, RLS/ACL. |
| Reference data | Codes, statuses, rates, parameters, branches, product references | PostgreSQL reference schemas / Git config | Versioning, effective dates, owner approval, no overwrite of historical meaning. |
| Documents | Uploaded files, scanned files, supporting records, policy documents | OpenKM with PostgreSQL metadata | Checksum, version, classification, retention, malware scan, evidence path. |
| Workflow records | Approvals, exceptions, task history, SLA timers | Temporal / Flowable histories or migration-compatible references | Business acceptance, identity mapping, immutable history policy. |
| Security and access mappings | Users, roles, groups, permissions, skills, SoD records | Keycloak/AD/OPA/SBAC catalogs | Least privilege, recertification, no shared accounts, approval evidence. |
| Audit and evidence records | Release evidence, test evidence, incident history, access review evidence | OpenKM / audit store / PostgreSQL evidence references | Retention, legal hold, immutable evidence, chain of custody. |
| AI/retrieval derivatives | Chunks, embeddings, summaries, graph links, LLM Wiki candidates | PostgreSQL/pgvector, LightRAG, LLM Wiki, Obsidian | Derivative only, rebuildable, source lineage, prompt eligibility, review gate. |

### 4.1 Migration Wave Classification

| **Wave Type** | **Use When** | **Approval Requirement** |
| --- | --- | --- |
| Wave 0 - Synthetic / Training | Developer labs, MVP demos, non-production practice | Tech Lead and QA Lead. |
| Wave 1 - Foundation Reference Data | Non-customer reference/configuration data required for MVP/UAT | Data Governance, DBA, Product Owner. |
| Wave 2 - Limited UAT Data | Approved subset for business validation | Business Owner, Security, Compliance. |
| Wave 3 - Pilot Production Data | Small controlled production population | CAB, Business Owner, Security, Operations. |
| Wave 4 - Full Production Cutover | AIRA becomes system of record or primary business platform | Executive/CAB go-live approval and signed evidence pack. |
| Wave 5 - Legacy Retirement | Legacy source is read-only, archived, or decommissioned | Business Owner, Compliance, Internal Audit, Operations. |

## 5. Migration Lifecycle and Stage Gates

![[attachments/33-AIRA_Data_Migration_Cutover_Reconciliation_and_Parallel_Run_Plan_v1.1_Aligned/image9.png]]

| **Stage** | **Primary Activities** | **Exit Gate** |
| --- | --- | --- |
| S1 Discover | Inventory sources, owners, classifications, volumes, quality issues, dependencies, legal hold status. | Approved migration inventory and risk profile. |
| S2 Design | Define mapping, transformations, cleansing rules, target schemas, migration scripts, reconciliation approach. | Approved migration design and test plan. |
| S3 Build | Create ETL/migration jobs, staging tables, Flyway changes, validation queries, evidence capture. | Build passes code review, tests, and security checks. |
| S4 Rehearse | Run migration in DEV/UAT using approved data, record timings, defects, reconciliation results. | Rehearsal passed or defects remediated. |
| S5 Cutover | Freeze source, take backup/snapshot, execute approved migration runbook, validate target. | Go/no-go decision and cutover completion record. |
| S6 Reconcile | Perform control totals, record samples, financial totals, relationship checks, document checks. | Reconciliation accepted or exceptions approved. |
| S7 Parallel Run | Compare legacy and AIRA outputs for defined period where required. | Parallel run tolerance met and business sign-off recorded. |
| S8 Accept / Archive | Sign off, archive evidence, update runbooks, close Zammad change, promote lessons learned. | Final acceptance and evidence package complete. |

## 6. Source Data Discovery and Profiling

Source discovery establishes what is being migrated, who owns it, how sensitive it is, what quality problems exist, and whether it is eligible for migration. Discovery must be performed before mapping and before any AI-assisted analysis of source data.

### 6.1 Discovery Checklist

| **Checklist Item** | **Evidence Required** | **Owner** |
| --- | --- | --- |
| Source system identified | System name, owner, version, environment, access path | Business Owner / System Owner |
| Data set inventoried | Tables/files/documents, record counts, volumes, date range | DBA / Data Lead |
| Classification assessed | Public/Internal/Confidential/Restricted and reason | Security / Data Governance |
| Legal hold checked | Hold status, retention rule, disposal restriction | Compliance |
| Data quality profiled | Nulls, duplicates, invalid codes, orphan records, inconsistent dates | Data Migration Team |
| Dependency map created | Upstream/downstream systems, reports, integrations, business process dependencies | Solutions Architect |
| Access approved | Named users, least privilege, extraction window, audit trail | Security Administrator |
| Evidence path created | OpenKM/Zammad/Git evidence folder and migration wave ID | DevSecOps / PM |

### 6.2 Data Profiling Rules

Profile source data using deterministic scripts, repeatable queries, and signed extract manifests.

Never use ad-hoc spreadsheet manipulation as authoritative transformation evidence.

Record source counts, distinct keys, null distribution, duplicate counts, referential-integrity issues, and business-rule violations.

Use synthetic masking or approved secure workspace before involving AI tools in profiling explanation.

Treat profiling defects as backlog items, Zammad tickets, or migration exceptions depending on severity.

## 7. Data Mapping, Transformation, and Cleansing

Migration mapping is a contract between business meaning, source structure, target structure, and validation evidence. Mapping must be reviewed by business, data, security, and technical owners before implementation.

| **Mapping Field** | **Purpose** |
| --- | --- |
| source_system | Authoritative origin. |
| source_object / field | Source table, column, file field, document metadata, or event attribute. |
| target_context / schema / field | AIRA bounded context and target data element. |
| classification | Handling rule inherited or assigned for target field. |
| transformation_rule | Deterministic rule, default, lookup, calculation, normalization, or cleansing action. |
| business_rule_owner | Named owner who approves business meaning. |
| validation_rule | Query, test, constraint, reconciliation method, or manual sampling rule. |
| exception_handling | Reject, quarantine, default, manual review, waive, or remediate. |
| rollback_or_forward_fix | How to reverse, compensate, or correct the mapping if wrong. |
| evidence_ref | Mapping approval, test output, reconciliation reference. |

### 7.1 Transformation Control Rules

| **Rule** | **Requirement** |
| --- | --- |
| No hidden defaults | Every default value must have business approval and traceable reason. |
| No uncontrolled data correction | Cleansing must be rule-based and evidenced; manual correction requires checker approval. |
| No lossy transformation without approval | Truncation, aggregation, deduplication, or dropping values requires explicit sign-off. |
| Preserve source lineage | Target records store source reference, batch ID, migration wave ID, and evidence reference where applicable. |
| Protect monetary precision | Financial amounts use approved decimal precision and reconciliation totals. |
| Respect effective dating | Reference data and status history use effective_from/effective_to where historical meaning matters. |
| Quarantine uncertainty | Unknown mapping, invalid classification, failed validation, or broken relationship goes to exception queue, not silent acceptance. |

## 8. Migration Architecture and Tooling Pattern

AIRA migrations should use a repeatable pipeline pattern rather than one-off manual scripts. The preferred flow is source extract -> staging -> validation -> transformation -> target load -> reconciliation -> evidence archive. Migration scripts, mappings, and validation queries are version-controlled and reviewed.

| **Component** | **AIRA Baseline** | **Control** |
| --- | --- | --- |
| Git repository | Migration mappings, scripts, validation SQL, runbooks | CODEOWNERS, PR/MR, signed commits, AVCI summary. |
| Zammad | Migration change, defect, exception, and support tickets | Workflow state, SLA, approvals, evidence links. |
| PostgreSQL staging schema | Controlled migration landing and validation tables | Flyway, RLS where needed, audit columns, batch IDs. |
| Flyway | Schema and controlled seed/reference data migrations | No manual production DDL. |
| OpenKM | Migration evidence, source snapshots where approved, document originals | Classification, retention, checksum, version evidence. |
| Kafka / Outbox | Cross-boundary migration events when needed | Idempotent events, DLQ, replay controls. |
| Temporal / Flowable | Long-running migration orchestration and human review | Temporal for machine steps; Flowable for approvals/exceptions. |
| Observability / APM | Metrics, traces, logs, progress dashboards | OpenTelemetry, Grafana/SigNoz, redaction rules. |
| Security / SIEM / SOAR | Migration security monitoring and incident handling | Wazuh, TheHive, Cortex where applicable. |
| AI assistance | Explanation, test generation, mapping review support | Only redacted or permitted content; no direct customer data in cloud prompts. |

## 9. Cutover Strategy and Go/No-Go Governance

![[attachments/33-AIRA_Data_Migration_Cutover_Reconciliation_and_Parallel_Run_Plan_v1.1_Aligned/image10.png]]

### 9.1 Cutover Strategy Options

| **Strategy** | **Best For** | **Risk Control** |
| --- | --- | --- |
| Big-bang cutover | Small, low-risk scope or complete replacement with short downtime window | Requires full rehearsal, complete rollback path, and executive/CAB approval. |
| Phased cutover by module | Different business capabilities can move independently | Requires interface compatibility and clear source-of-truth boundaries. |
| Phased cutover by population | Branches, departments, products, accounts, or regions migrate in waves | Requires robust coexistence and routing rules. |
| Parallel run before reliance | High-risk calculations, financial outputs, customer-impacting decisions | Requires legacy/AIRA comparison and tolerance rules. |
| Read-only legacy after cutover | Legacy retained for verification and audit only | Requires access governance, retention, and decommission plan. |

### 9.2 Go/No-Go Criteria

| **Gate** | **Go Condition** | **No-Go Trigger** |
| --- | --- | --- |
| Business readiness | Business owner confirms scenario, users, operating procedure, and support path. | Business owner unavailable or critical process not validated. |
| Migration readiness | Dry run passed, defects closed/accepted, batch timing within window. | Unresolved migration defect or incomplete rehearsal. |
| Security readiness | Access, classification, secrets, audit, and monitoring pass. | Unknown classification, unauthorized access risk, secret leakage, or audit failure. |
| Technical readiness | Target environment stable, backups complete, release package approved. | Unstable environment, missing backup, failed deployment validation. |
| Reconciliation readiness | Expected control totals and tolerance thresholds are defined. | No approved reconciliation method or tolerance. |
| Rollback readiness | Rollback, forward-fix, or safe rework plan approved and rehearsed as appropriate. | No viable recovery path. |
| Operations readiness | Zammad, hypercare, monitoring, runbooks, and escalation are active. | Support path incomplete or monitoring disabled. |

### 9.3 Cutover Freeze Rules

Freeze source changes according to the approved cutover window and business communication plan.

Deny non-emergency source changes after extract unless approved by CAB and recorded in the delta log.

Capture final source backup/snapshot, extract manifest, checksum, and sign-off before target load.

Block cutover if final source delta cannot be reconciled or if legal hold changes the migration scope.

Close the cutover only after post-load validation, smoke tests, monitoring checks, and business confirmation.

## 10. Reconciliation Framework

![[attachments/33-AIRA_Data_Migration_Cutover_Reconciliation_and_Parallel_Run_Plan_v1.1_Aligned/image11.png]]

Reconciliation proves that migrated data is complete, accurate, valid, and usable. It must be designed before migration and executed after every rehearsal and production cutover.

| **Reconciliation Type** | **Purpose** | **Example Evidence** |
| --- | --- | --- |
| Record count reconciliation | Confirm expected number of records loaded. | Source count, staging count, target count, reject count. |
| Control total reconciliation | Confirm financial and numeric totals. | Principal balance, payment amount, fee total, count by status. |
| Hash/checksum reconciliation | Confirm file/extract integrity. | SHA-256 manifest, row hash, document checksum. |
| Referential reconciliation | Confirm relationships are valid. | No orphan document, customer, account, workflow, or lookup reference. |
| Field-level sampling | Confirm transformation correctness for representative records. | Reviewer-approved sample report. |
| Business rule reconciliation | Confirm expected statuses, calculations, and lifecycle state. | Rule validation report and business owner sign-off. |
| Document reconciliation | Confirm documents migrated or registered correctly. | OpenKM UUID, version, file hash, metadata match. |
| Security/access reconciliation | Confirm roles, ACL, RLS, and classification apply correctly. | Access test, denied-access evidence, OPA/SBAC result. |
| AI/retrieval reconciliation | Confirm chunks/embeddings/summaries inherit source classification and lineage. | Lineage report, index status, prompt eligibility check. |

### 10.1 Reconciliation Tolerance Rules

| **Data Type** | **Default Tolerance** | **Notes** |
| --- | --- | --- |
| Financial totals | Zero unexplained variance | Any difference requires defect, exception approval, or business-certified reason. |
| Customer/account/document counts | Zero unexplained variance | Missing or duplicate records are blocking unless formally excluded. |
| Reference data | Zero unauthorized change | Historical meanings and effective dates must be preserved. |
| Non-critical metadata | Defined per business owner | Tolerance must be approved before migration. |
| Telemetry/evidence records | No loss of required audit evidence | Routine logs may follow retention policy, but required evidence cannot be omitted. |
| AI/retrieval derivatives | Must match source lineage and classification | Derivatives are rebuildable and may be regenerated after acceptance. |

## 11. Parallel Run Plan

Parallel run compares legacy and AIRA outcomes for a defined period before full reliance. It is required when customer outcomes, financial calculations, legal/regulatory reporting, critical workflow decisions, or operational SLAs could be affected.

### 11.1 Parallel Run Entry Criteria

Migration rehearsal completed with accepted reconciliation results.

Legacy and AIRA comparison scenarios and tolerance thresholds approved.

Business users trained on comparison procedure and exception logging.

Zammad queue and severity rules active for parallel run defects.

Monitoring, audit, and evidence capture active in the target environment.

Rollback or forward-fix path approved for severe variance.

### 11.2 Parallel Run Comparison Matrix

| **Comparison Area** | **Legacy Output** | **AIRA Output** | **Tolerance** | **Decision Owner** |
| --- | --- | --- | --- | --- |
| Login/access | Existing entitlement or access-control result | Keycloak/OPA/SBAC decision | No unauthorized access; no missing required access | Security / Business Owner |
| Document intake | Legacy document record and file reference | OpenKM UUID, registry metadata, audit trace | No missing document; metadata variance approved | Document Owner |
| Workflow approval | Legacy approval task/status | Flowable/Temporal approval history | Status and approver match expected process | Workflow Owner |
| Financial calculation | Legacy calculation or report total | AIRA calculation or MicroFunction output | Zero unexplained financial variance | Finance / Business Owner |
| Search/retrieval | Legacy search result or expected document set | AIRA evidence pack / retrieval result | Approved recall/precision threshold for UAT | Product Owner / QA |
| Audit trail | Legacy audit/evidence if available | AIRA trace, audit event, evidence reference | Required evidence present | Internal Audit / QA |

### 11.3 Parallel Run Exit Criteria

All Must and high-risk comparison scenarios pass within approved tolerance.

No unresolved Sev-1 or Sev-2 parallel run defect remains.

Business owner signs comparison outcome and accepts limitations.

Security and audit confirm no material evidence or access-control gap.

Operations confirms support model, runbooks, dashboards, and Zammad workflow are ready.

CAB approves transition from parallel run to production reliance or additional controlled run period.

## 12. Rollback, Forward-Fix, and Reversibility Controls

AIRA favors forward rebuild and governed forward-fix where safe, but migration cutover must still define how business operations recover if severe data, workflow, security, or system errors occur.

| **Recovery Option** | **When Used** | **Minimum Evidence** |
| --- | --- | --- |
| Rollback to legacy | AIRA cutover fails before business reliance or within approved rollback window | Backup/snapshot, rollback command log, business notice, validation result. |
| Forward-fix | Issue is understood, limited, and can be corrected safely in AIRA | Defect ticket, script PR/MR, tests, approval, post-fix reconciliation. |
| Compensating adjustment | Business state already changed and reversal would be unsafe | Business approval, audit event, compensating record, customer-impact assessment. |
| Quarantine and reprocess | Subset of records fails migration or validation | Exception queue, reprocess log, reconciliation after reload. |
| Read-only hold | Business cannot proceed but data must be preserved for analysis | Hold decision, restricted access, evidence path, owner review date. |

### 12.1 Reversibility Requirements

Every migration wave must define the last safe rollback point.

Every mutating migration script must be idempotent or have explicit rerun protection.

Every target load must include batch ID, source extract ID, migration wave ID, and evidence reference.

Every cleanup or purge must check legal hold and derivative invalidation rules.

Every recovery action must be recorded in Zammad and linked to migration evidence.

## 13. Defect, Exception, and Waiver Management

Migration defects are not ordinary bugs when they can affect business records, customer outcomes, evidence, classification, or legal obligations. They require severity, owner, business impact, and disposition tracking.

| **Severity** | **Definition** | **Required Action** |
| --- | --- | --- |
| Sev-1 Blocking | Data loss, material financial variance, unauthorized access, unrecoverable workflow failure, legal/regulatory exposure | Stop cutover or parallel run; CAB/business/security decision required. |
| Sev-2 High | Significant data quality issue, repeatable mapping error, missing audit evidence, high-volume exception | Fix before acceptance unless risk accepted by business and governance owners. |
| Sev-3 Medium | Limited data variance, isolated exception, non-critical metadata gap | Resolve or approve rework plan before final sign-off. |
| Sev-4 Low | Cosmetic, documentation, minor non-blocking reporting issue | Track in backlog; not normally acceptance-blocking. |

### 13.1 Exception Disposition Options

| **Disposition** | **Meaning** | **Approver** |
| --- | --- | --- |
| Reject from migration | Record is not loaded because it fails mandatory validation | Data Owner / Business Owner |
| Quarantine | Record is held for analysis and not authoritative in AIRA | Data Governance / Business Owner |
| Correct and reload | Source or mapping issue is corrected and record is reprocessed | Data Migration Lead / DBA / QA |
| Accept with waiver | Known variance is accepted with risk and expiry/conditions | Business Owner, Security/Compliance as needed |
| Manual remediation | Human-reviewed correction is applied with Maker-Checker evidence | Business Owner / QA / Data Governance |

## 14. Security, Classification, Privacy, and Retention Controls

Migration activities often expose large volumes of sensitive data. Controls must be stricter during migration, not weaker. Extracts, staging tables, logs, screenshots, reconciliation reports, and support tickets must follow classification and retention rules.

| **Control Area** | **Mandatory Control** |
| --- | --- |
| Access | Named users only; no shared migration accounts; least privilege; time-bound access. |
| Secrets | No credentials in scripts, spreadsheets, tickets, prompts, logs, or evidence screenshots. |
| Classification | Source and target data classifications are recorded before extraction and target load. |
| Encryption | Data in transit and at rest uses approved encryption controls; temporary extracts are protected. |
| Logging | Logs contain batch IDs and counts, not raw restricted content or secrets. |
| AI usage | No Restricted production/customer data in cloud prompts; AI-assisted mapping uses redacted/synthetic examples unless private route is approved. |
| Retention | Migration extracts, logs, reconciliation reports, and evidence follow approved retention rules. |
| Legal hold | Legal hold blocks purge, disposal, or destructive cleanup until released. |
| Monitoring | Migration jobs, privileged access, and failures are observable and security-monitored. |

## 15. Evidence Pack and Audit Trail

Evidence is part of the migration deliverable. A migration wave without complete evidence is not accepted, even if the target system appears to work.

### 15.1 Evidence Pack Contents

| **Evidence Class** | **Minimum Contents** |
| --- | --- |
| Migration inventory | Source, target, owner, scope, classification, volume, retention, wave ID. |
| Mapping evidence | Approved source-to-target mapping, transformation rules, validation rules, exception handling. |
| Extraction evidence | Extract timestamp, source count, hash/checksum, actor, environment, access approval. |
| Build evidence | Migration scripts, PR/MR approval, tests, scan results, Flyway report. |
| Rehearsal evidence | Dry-run logs, timing, defects, reconciliation, lessons learned. |
| Cutover evidence | Freeze confirmation, backup/snapshot, execution log, go/no-go decision, CAB ticket. |
| Reconciliation evidence | Counts, totals, samples, document checks, access checks, variance register. |
| Parallel run evidence | Comparison report, tolerance decisions, defect register, business sign-off. |
| Security evidence | Access review, secret scan, classification proof, audit trace, monitoring result. |
| Acceptance evidence | Business, QA, security, data governance, operations, and CAB sign-off as applicable. |

### 15.2 Evidence Path Standard

OpenKM Tier-0 / AIRA / Evidence / Data-Migration-Cutover / <source-system> / <environment> / <yyyy> / <wave-id> /

Recommended subfolders: 01-Inventory, 02-Mapping, 03-Extracts, 04-Scripts, 05-Rehearsal, 06-Cutover, 07-Reconciliation, 08-Parallel-Run, 09-Defects-Exceptions, 10-Signoff, 11-Lessons-Learned.

## 16. Roles, RACI, and Operating Responsibilities

| **Activity** | **Solutions Architect** | **Business Owner** | **Data Governance** | **DBA** | **DevSecOps** | **Security** | **QA** | **Operations** | **Internal Audit** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Approve migration plan | A | R | R | C | C | C | C | C | C |
| Source discovery | C | A/R | R | R | C | C | C | I | I |
| Data classification | C | R | A/R | C | I | R | C | I | C |
| Mapping approval | A | R | R | R | C | C | C | I | I |
| Migration script build | C | I | C | R | R | C | C | I | I |
| Rehearsal execution | C | C | R | R | R | C | A/R | C | I |
| Cutover go/no-go | A/R | A/R | C | C | R | R | R | R | C |
| Reconciliation sign-off | C | A/R | R | R | C | C | A/R | C | C |
| Parallel run acceptance | C | A/R | C | C | C | C | R | R | C |
| Evidence archive | A | C | R | C | R | C | R | C | C |
| Audit review | I | C | C | C | I | C | C | I | A/R |

Legend: A = Accountable, R = Responsible, C = Consulted, I = Informed.

## 17. Implementation Roadmap

| **Phase** | **Activities** | **Exit Criteria** |
| --- | --- | --- |
| Phase 1 - Migration Governance Setup | Approve plan, create Zammad categories, evidence folders, templates, and wave naming standard. | Migration governance baseline approved. |
| Phase 2 - Source Discovery and Classification | Inventory sources, profile data, classify artifacts, identify legal hold and retention rules. | Approved source inventory and risk profile. |
| Phase 3 - Mapping and Reconciliation Design | Create mapping workbook, validation rules, reconciliation queries, exception disposition rules. | Mapping and reconciliation approach approved. |
| Phase 4 - Migration Pipeline Build | Implement scripts, staging tables, Flyway changes, evidence capture, test harness. | Pipeline passes CI/security/test gates. |
| Phase 5 - Rehearsal and Defect Burn-down | Run dry-run migration, reconcile, fix defects, update runbooks. | Rehearsal accepted and timing validated. |
| Phase 6 - Production Cutover / Pilot | Execute approved cutover window with go/no-go governance. | Cutover evidence and smoke tests complete. |
| Phase 7 - Parallel Run and Hypercare | Compare results, resolve defects, monitor operations, support users. | Parallel run exit criteria passed. |
| Phase 8 - Final Acceptance and Legacy Retirement | Archive evidence, sign off, restrict legacy, plan decommission. | Final acceptance and lessons learned complete. |

## 18. Templates and Appendices

### Appendix A. Migration Inventory Template

| **Field** | **Entry** |
| --- | --- |
| Migration Wave ID |  |
| Source System |  |
| Source Owner |  |
| Business Owner |  |
| Target Bounded Context |  |
| Target Service / Schema |  |
| Data Set / Document Class |  |
| Classification |  |
| Retention Rule |  |
| Record / File Count |  |
| Estimated Volume |  |
| Legal Hold Status |  |
| Prompt Eligibility |  |
| Migration Window |  |
| Reconciliation Method |  |
| Rollback / Forward-Fix Path |  |
| Evidence Path |  |
| Approval Status |  |

### Appendix B. Source-to-Target Mapping Template

| **Source Field** | **Target Field** | **Transformation Rule** | **Classification** | **Validation Rule** | **Exception Handling** | **Approver** |
| --- | --- | --- | --- | --- | --- | --- |

### Appendix C. Cutover Runbook Template

| **Step** | **Owner** | **Planned Time** | **Evidence Required** | **Status** |
| --- | --- | --- | --- | --- |
| Confirm CAB approval and Zammad change ticket |  |  |  |  |
| Confirm source freeze and stakeholder communication |  |  |  |  |
| Capture source backup/snapshot/checksum |  |  |  |  |
| Execute migration batch |  |  |  |  |
| Run smoke tests and validation queries |  |  |  |  |
| Run reconciliation checks |  |  |  |  |
| Conduct go/no-go decision checkpoint |  |  |  |  |
| Activate parallel run or production reliance |  |  |  |  |
| Archive evidence and close change ticket |  |  |  |  |

### Appendix D. Parallel Run Report Template

| **Scenario** | **Legacy Result** | **AIRA Result** | **Tolerance** | **Variance** | **Disposition** | **Business Sign-off** |
| --- | --- | --- | --- | --- | --- | --- |

### Appendix E. Copy-Ready Mermaid References

#### Migration Lifecycle

flowchart LR
 A[Discover] --> B[Design Mapping]
 B --> C[Build Pipeline]
 C --> D[Rehearse]
 D --> E[Cutover]
 E --> F[Reconcile]
 F --> G[Parallel Run]
 G --> H[Accept and Archive Evidence]

#### Reconciliation Loop

flowchart LR
 A[Source Extract] --> B[Target Load]
 B --> C[Control Totals]
 C --> D{Variance?}
 D -->|No| E[Business Sign-off]
 D -->|Yes| F[Defect or Exception]
 F --> G[Fix, Waive, or Quarantine]
 G --> C

## 19. AVCI Compliance Summary

| **AVCI Property** | **Compliance Statement** |
| --- | --- |
| Attributable | Every migration source, mapping, script, execution batch, defect, exception, reconciliation result, approval, and sign-off has a named owner and evidence reference. |
| Verifiable | Migration outcomes are verified through dry runs, tests, checksums, control totals, record counts, sampling, business validation, CI evidence, and runtime audit. |
| Classifiable | Every source, target, extract, staging table, document, evidence report, log, and derivative artifact carries classification, retention, access, prompt eligibility, and model-routing controls. |
| Improvable | Defects, reconciliation variance, parallel run findings, support issues, and lessons learned become backlog items, runbook updates, mapping improvements, and future migration controls. |

| **Final Control Statement**<br>AIRA migration and cutover activities are approved only when the migration inventory, mapping, rehearsal, cutover, reconciliation, parallel run, recovery path, evidence package, and business acceptance are complete. A migration may be fast only after it is controlled; never before. |
| --- |

**AIRA | Discipline First · Automation Second · Intelligence Third · AVCI Always**

## **Pack 05 v1.1 Alignment Control Addendum**

This addendum records the alignment controls applied to Pack 05 so the Data, API, Security, and Decision source pack remains consistent with the current AIRA documentation baseline. The update preserves the source document content while normalizing sequence, classification, companion-document references, version display, and open governance issues.

| Area | v1.0 Issue | v1.1 Alignment Applied | Status |
| --- | --- | --- | --- |
| Pack-level sequence | The displayed and physical order placed 16A Flyway Guide before the parent 16 Database, Migration, and Data Engineering Standard. | Reordered the displayed source list and moved the 16 source block before 16A so the parent standard appears before the companion execution guide. | Closed |
| Technology Stack reference | Documents in Pack 05 still referenced Technology Stack v8.0 although Pack 03 now contains Technology Stack v9.1. | Updated stale references to Technology Stack v9.1 while retaining historical supersedes/version-history context where applicable. | Closed |
| Classification | Pack-level and document-control labels mixed Internal Confidential and CONFIDENTIAL - Internal Use Only. | Normalized displayed classification to INTERNAL CONFIDENTIAL. | Closed |
| Version notation | Cover pages for v1.0/v2.0 documents used Version 1.0 or Version 2.0 while document-control tables use v1.0/v2.0. | Normalized cover-page display to Version v1.1 or Version v2.0 where exact title-page strings were present. | Closed |
| Database standard title | The database standard used inconsistent comma treatment in some title references. | Normalized the table display to AIRA Database, Migration, and Data Engineering Standard. | Closed |
| 16 and 16A numbering model | 16A is a companion guide to 16 and should not be treated as a competing primary standard. | Recorded 16 as the parent database standard and 16A as the greenfield Flyway execution guide. | Closed |
| Future revision-control matrix | Pack 05 alignment should be reflected in the revision-control matrix and project-source manifest after all packs are updated. | Flagged for master revision-control and source-manifest update after Pack 05 completion. | Open - master index |

### **Recommended Canonical Pack 05 Source Order**

| Canonical Order | Source Document | Purpose | Disposition |
| --- | --- | --- | --- |
| 1 | 14-AIRA_Architecture_Decision_Record_and_Technical_Decision_Log_Standard_v2.0.docx | Decision governance, ADR/TDL lifecycle, decision evidence, and waiver/supersedence discipline. | Canonical |
| 2 | 15-AIRA_API_and_Integration_Contract_Standard_v2.0.docx | Contract-first API/event/schema governance for OpenAPI, AsyncAPI, CloudEvents, idempotency, and compatibility evidence. | Canonical |
| 3 | 16-AIRA_Database_Migration_and_Data_Engineering_Standard_v2.0.docx | Parent database, migration, data engineering, RLS, outbox, pgvector, and data evidence standard. | Canonical parent standard |
| 4 | 16A-AIRA_Flyway_Initial_Database_Baseline_and_Migration_Governance_Guide_v1.0.docx | Greenfield Flyway-from-Day-0 execution guide and initial database baseline governance. | Canonical companion guide |
| 5 | 17-AIRA_Security_Identity_Secrets_and_Access_Control_Standard_v2.0.docx | Security, identity, secrets, SBAC/OPA, workload identity, fail-closed, and AI-action mediation standard. | Canonical |
| 6 | 33-AIRA_Data_Migration_Cutover_Reconciliation_and_Parallel_Run_Plan_v1.0.docx | Data migration, cutover, reconciliation, parallel run, rollback, evidence, and acceptance governance. | Canonical |

### **AVCI Alignment Confirmation**

| AVCI Property | Pack 05 v1.1 Evidence |
| --- | --- |
| Attributable | Alignment changes are recorded in this addendum and in the separate Pack 05 alignment review/change log. |
| Verifiable | The pack sequence, stale Technology Stack v8.0 references, classification labels, and title-page version notation were searched and corrected. |
| Classifiable | Pack and document-control classification labels were normalized to INTERNAL CONFIDENTIAL for consistent routing and handling. |
| Improvable | Open master-index actions are retained for the final source manifest and revision-control matrix after all packs are aligned. |
