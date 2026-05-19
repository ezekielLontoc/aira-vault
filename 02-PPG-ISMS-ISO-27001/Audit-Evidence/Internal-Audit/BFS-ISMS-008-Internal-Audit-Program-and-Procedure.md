---
title: "BFS-ISMS-008-Internal-Audit-Program-and-Procedure"
source_file: "02-PPG-ISMS-ISO-27001/Audit-Evidence/Internal-Audit/BFS-ISMS-008-Internal-Audit-Program-and-Procedure.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:37Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Audit-Evidence"
  - "Internal-Audit"
aliases:
  - "BFS-ISMS-008-Internal-Audit-Program-and-Procedure"
creator: "Un-named"
created: "2026-04-27T13:19:00Z"
modified: "2026-04-28T04:12:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>INTERNAL AUDIT<br>PROGRAM AND PROCEDURE<br>Three-Year ISMS Internal Audit Programme, Audit Methodology, Auditor Competence and Independence Requirements, Findings Management, and Management Reporting<br>Policy Reference: BFS-ISMS-008<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>ISO/IEC 27001:2022 Clause 9.2 Mandated Document<br>Aligned with ISO 19011:2018 (Auditing Management Systems) and IIA Standards<br>The independent verification mechanism that determines whether the documented ISMS is genuinely operating as designed |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Internal Audit Program and Procedure |

| --- | --- |

| Policy Reference | BFS-ISMS-008 |

| Policy Owner | Head of Internal Audit |

| Document Author | Internal Audit Function with input from IT Head, Infrastructure Manager and Security Administrator |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal, Audit, and Certification Body Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to ISMS scope, regulatory environment, audit methodology standards, or audit risk environment |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — ISMS Framework Document. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISMS-009 (Management Review Procedure — receives audit outputs); BFS-ISMS-010 (Nonconformity and Corrective Action — manages audit findings); BFS-ISMS-004 (Statement of Applicability — defines audit scope); BFS-ISMS-005 (Information Security Objectives — audit verifies effectiveness against objectives) |

| Framework Alignment | ISO/IEC 27001:2022 Clause 9.2 (Internal Audit); ISO 19011:2018 (Guidelines for Auditing Management Systems); IIA International Professional Practices Framework (IPPF); ISACA IS Audit and Assurance Standards |

| Regulatory Reference | BSP Circular 1140 (IT Risk Management — independent assurance); BSP Circular 1048 (Cybersecurity — independent verification); RA 8791 General Banking Law (independent audit function); PCI DSS v4.0 Requirement 12.10.1 (independent assessment); SEC Code of Corporate Governance (Internal Audit independence) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| Head of Internal Audit |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Internal Audit Program for the Information Security Management System (ISMS) and the audit procedure governing how individual audits within that program are conducted. It is the document that determines whether the BFS ISMS — as documented in BFS-ISMS-001 through BFS-ISMS-007 and the entire BFS-ISP series — is genuinely operating as designed and is genuinely effective at managing information security risks.

This document exists to fulfill the requirements of ISO/IEC 27001:2022 Clause 9.2 (Internal Audit), which requires BFS to conduct internal audits at planned intervals to provide information on whether the ISMS conforms to: (a) the organization's own requirements for its information security management system; and (b) the requirements of ISO/IEC 27001 — and is effectively implemented and maintained. Clause 9.2 further requires that BFS plan, establish, implement, and maintain an audit programme, define audit criteria and scope, select auditors and conduct audits to ensure objectivity and impartiality, ensure audit results are reported to relevant management, and retain documented information as evidence of the audit programme and audit results.

Internal audit is the second of three independent assurance mechanisms BFS uses to verify ISMS effectiveness — alongside management review (BFS-ISMS-009) and external assurance (ISO 27001 certification body audit, BSP examinations, NPC assessments, PCI QSA assessments). Internal audit is uniquely positioned: more frequent than external audits, more independent than self-assessment by ISMS operational functions, and more comprehensive than the targeted assessments performed by external assessors. A mature ISMS with a weak internal audit function is at material risk of operating with undetected nonconformities; a strong internal audit function is the principal protection against ISMS drift, decay, and self-deception.

Beyond ISO 27001 compliance, this document fulfills BSP supervisory expectations for independent assurance over IT and cybersecurity functions per BSP Circular 1140 and 1048, RA 8791 General Banking Law expectations for independent audit functions in supervised institutions, PCI DSS v4.0 Requirement 12.10.1 expectations for independent assessment, SEC Code of Corporate Governance expectations for Internal Audit independence and Board reporting, and the broader expectations of certification bodies, regulators, customers, and other interested parties for credible independent assurance.

The specific objectives of this document are to:

Establish the multi-year (3-year rolling) Internal Audit Programme covering the full ISMS scope, with audit frequency calibrated to risk and regulatory expectations;

Specify the audit procedure — planning, execution, reporting, follow-up — applied uniformly across all ISMS internal audits;

Define auditor competence requirements ensuring audits are conducted by qualified personnel using rigorous methodology;

Define auditor independence and objectivity requirements protecting audit findings from operational pressure or conflict of interest;

Establish the findings classification scheme (CRITICAL / MAJOR / MINOR / OBSERVATION) with consistent treatment across audits;

Mandate management reporting structure ensuring audit findings reach relevant management — including the Board Audit & Risk Committee — at appropriate cadence and detail;

Integrate audit outputs with the broader ISMS through formal handoff to BFS-ISMS-010 (Corrective Action) for remediation and to BFS-ISMS-009 (Management Review) for strategic consideration;

Provide audit-friendly documentation supporting ISO 27001 certification audit examination of Clause 9.2 compliance — auditors examine the audit function itself as part of certification.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

For the purposes of this document, the following definitions apply. ISO 19011:2018 terminology is controlling where conflict exists with general usage.

| Term | Definition |

| --- | --- |

| Audit | Systematic, independent, and documented process for obtaining objective evidence and evaluating it objectively to determine the extent to which audit criteria are fulfilled. (ISO 19011:2018) |

| Audit Programme | Set of one or more audits planned for a specific time frame and directed towards a specific purpose. The BFS Internal Audit Programme covers a 3-year rolling period. (ISO 19011:2018) |

| Audit Plan | Description of the activities and arrangements for an individual audit. Specific to one audit engagement; multiple audit plans aggregate into the audit programme. |

| Audit Criteria | Set of policies, procedures, or requirements used as a reference against which objective evidence is compared. For BFS ISMS audits: the BFS-ISMS and BFS-ISP documents; ISO/IEC 27001:2022 requirements; applicable regulatory requirements; contractual commitments. (ISO 19011:2018) |

| Audit Evidence | Records, statements of fact, or other information relevant to the audit criteria and verifiable. (ISO 19011:2018) |

| Audit Finding | Results of the evaluation of the collected audit evidence against audit criteria. Findings can indicate conformity (positive findings) or nonconformity (negative findings). (ISO 19011:2018) |

| Conformity | Fulfillment of a requirement. (ISO 9000:2015) |

| Nonconformity | Non-fulfillment of a requirement. Categorized at BFS as CRITICAL, MAJOR, or MINOR per Section 5.4. (ISO 9000:2015) |

| Observation | Audit comment that does not represent a current nonconformity but identifies a potential improvement opportunity, emerging risk, or matter warranting management attention. Not the same as a nonconformity. |

| Objective Evidence | Data supporting the existence or verity of something. (ISO 9000:2015) Examples: documents, records, observations of activities, statements of fact validated through corroboration. |

| Sample | Selection of items from a population for examination. Audit conclusions are typically based on sample-based testing rather than 100% population examination. |

| Auditor | Person who conducts an audit. ISMS internal auditors at BFS shall meet the competence and independence requirements specified in Sections 4.3 and 4.4. |

| Lead Auditor | Auditor with overall accountability for an audit engagement — including audit plan development, team coordination, opinion formation, and reporting. |

| Auditee | Organization or function being audited. For BFS ISMS audits, auditees may include CISO Office, business unit functions implementing ISMS controls, IT operations, HR, third-party operations, etc. |

| Audit Trail | Documented evidence supporting an audit conclusion — typically including audit working papers, evidence collected, analysis performed, and reasoning leading to the audit finding. |

| Independence | Freedom from conditions that threaten the ability to carry out audit responsibilities in an unbiased manner. Internal Audit at BFS reports to the Board Audit & Risk Committee preserving independence from operational management. (IIA Definition) |

| Objectivity | Unbiased mental attitude that allows auditors to perform engagements in such a manner that they have an honest belief in their work product and that no significant quality compromises are made. (IIA Definition) |

| Risk-Based Auditing | Audit approach that allocates audit attention proportional to assessed risk — auditing higher-risk areas more intensively and more frequently than lower-risk areas. The principal allocation methodology used in BFS-ISMS-008. |

| Audit Programme Manager | Person within Internal Audit accountable for the BFS Internal Audit Programme — including programme planning, audit scheduling, resource coordination, and programme effectiveness reporting. Typically the Head of Internal Audit or delegate. |

| Combined Assurance | Coordinated assurance approach where multiple assurance providers (Internal Audit, External Audit, Compliance, Risk, ISMS itself) coordinate to provide comprehensive coverage with minimum redundancy. BFS adopts combined assurance per Section 6. |

## 2.2  Scope

This document applies to all internal audits of the BFS ISMS conducted by Internal Audit. Specifically:

### 2.2.1  In-Scope Audits

Audits of any element of the BFS ISMS as defined in BFS-ISMS-002 (Scope and Context) — including but not limited to: top-level policy operation, risk management methodology execution, control implementation across all 93 Annex A controls (per BFS-ISMS-004), specific BFS-ISP policy operation, ISMS framework documents (BFS-ISMS-001 through BFS-ISMS-007 and this document) operation;

Audits of business unit and IT function compliance with BFS information security policies;

Audits of third-party operations within BFS ISMS scope where BFS holds audit rights through contract;

Audits of regulatory compliance within information security domain (BSP, NPC, PCI DSS, RA 11765 consumer protection, etc.);

Follow-up audits verifying remediation of prior audit findings and the operation of corrective action per BFS-ISMS-010;

Special audits requested by the Board Audit & Risk Committee, regulators, or executive leadership.

### 2.2.2  Distinction from Other Assurance Activities

Internal Audit per this document is distinct from but coordinated with the following assurance activities through combined assurance per Section 6:

| Assurance Activity | Performed By | Distinction |

| --- | --- | --- |

| ISMS Internal Audit (this document) | BFS Internal Audit | Independent assurance over ISMS conformity and effectiveness; reports to Board |

| ISMS Self-Assessment | CISO Office and operational ISMS functions | Self-evaluation by operating function; not independent; supplements but does not substitute for internal audit |

| External Audit (Financial) | External independent auditors | Audit of financial statements; ISMS aspects only where they affect financial reporting |

| ISO 27001 Certification Audit | External certification body | Independent assessment for certification purposes; periodic; performed by accredited certification body |

| BSP Examination | BSP examiners | Regulatory examination; periodic; specific BSP focus areas |

| NPC Compliance Verification | NPC officers | Privacy compliance verification; targeted to RA 10173 |

| PCI QSA Assessment | Qualified Security Assessor | PCI DSS compliance assessment; annual |

| Penetration Testing | Internal Red Team or external testing firms | Technical assessment of specific controls; per BFS-ISP-018 |

| Compliance Monitoring | Compliance Function (CCO) | Ongoing compliance monitoring; not the same as point-in-time audit |

| Risk Function Reviews | Risk Management | Risk identification and treatment review; not assurance over implementation |

# 3.  INTERNAL AUDIT PROGRAMME

This section establishes the BFS Internal Audit Programme — the multi-year framework specifying which audits are conducted, when, and at what frequency. The Programme is risk-based, ensuring that audit resources are allocated proportionally to the assessed risk of each audit area while ensuring that all in-scope ISMS elements are audited at minimum frequency over the programme cycle.

## 3.1  Programme Principles

The BFS Internal Audit Programme is governed by the following principles:

Comprehensive Coverage: Over the programme cycle (3 years), every material element of the ISMS is audited at least once. No ISMS element is permanently exempt from audit;

Risk-Based Allocation: Audit frequency, depth, and resourcing are proportional to assessed risk. Higher-risk areas (TIER 1 systems, recently significant incidents, regulatory focus areas) audited more frequently than lower-risk areas;

Regulatory Alignment: Audit programme reflects regulatory expectations — BSP focus areas, PCI DSS scope requiring annual coverage, NPC privacy compliance areas;

Independence: Audit programme is approved by the Board Audit & Risk Committee — not by ISMS operational management — preserving the independence of the assurance function;

Flexibility: Programme can be adjusted within the year for emerging risks, special requests from Board or regulators, or in response to material events. Adjustments documented and communicated;

Combined Assurance Coordination: Programme is coordinated with external audit, certification body audit, regulatory examination, and other assurance activities to optimize total assurance coverage with minimum redundancy;

Continuous Improvement: Programme effectiveness is reviewed annually with adjustments based on lessons learned, changing risk environment, and feedback from auditees and management.

## 3.2  Audit Universe

The BFS ISMS Audit Universe is the comprehensive catalogue of audit areas. Each audit area represents a discrete, auditable component of the ISMS. The Audit Universe is organized into five domains aligned with the ISMS structure:

| Audit Area | Risk Tier | Audit Frequency |

| --- | --- | --- |

| DOMAIN A: ISMS GOVERNANCE AND MANAGEMENT |  |  |

| ISMS Top-Level Operation (BFS-ISMS-001) | HIGH | Annual |

| ISMS Scope and Context Currency (BFS-ISMS-002) | HIGH | Annual |

| Risk Assessment Methodology Operation (BFS-ISMS-003) | HIGH | Annual |

| Statement of Applicability Currency (BFS-ISMS-004) | CRITICAL | Annual |

| Information Security Objectives Tracking (BFS-ISMS-005) | HIGH | Annual |

| Document and Records Control (BFS-ISMS-006) | MEDIUM | Every 18 months |

| Competence, Awareness, Communication (BFS-ISMS-007) | MEDIUM | Every 18 months |

| Internal Audit Function Quality (this document) | HIGH | External quality assessment every 5 years per IIA |

| Management Review Operation (BFS-ISMS-009) | HIGH | Annual |

| Corrective Action Operation (BFS-ISMS-010) | HIGH | Annual |

| DOMAIN B: TECHNICAL CONTROLS (CIS V8 / ISO 27002 IMPLEMENTATION) |  |  |

| Asset Management — Hardware and Software (BFS-ISP-001, BFS-ISP-002) | HIGH | Annual |

| Data Protection (BFS-ISP-003) | CRITICAL | Annual |

| Secure Configuration (BFS-ISP-004) | HIGH | Annual |

| Access Management — Privileged and Non-Privileged (BFS-ISP-005, BFS-ISP-006) | CRITICAL | Annual + targeted reviews quarterly |

| Vulnerability Management (BFS-ISP-007) | HIGH | Annual |

| Audit Log Management (BFS-ISP-008) | CRITICAL | Annual + PCI DSS scope quarterly |

| Email and Browser Protections (BFS-ISP-009) | MEDIUM | Every 18 months |

| Malware Defenses (BFS-ISP-010) | HIGH | Annual |

| Data Recovery and Backup (BFS-ISP-011) | CRITICAL | Annual + DR exercise observation |

| Network Infrastructure (BFS-ISP-012) | HIGH | Annual |

| Network Monitoring and Defense (BFS-ISP-013) | HIGH | Annual |

| Security Awareness and Training (BFS-ISP-014) | MEDIUM | Every 18 months |

| Service Provider Management (BFS-ISP-015) | HIGH | Annual |

| Application Software Security and SSDLC (BFS-ISP-016) | CRITICAL | Annual |

| Incident Response Management (BFS-ISP-017) | CRITICAL | Annual + post-incident reviews |

| Penetration Testing Program (BFS-ISP-018) | HIGH | Annual |

| DOMAIN C: BUSINESS UNIT AND FUNCTIONAL COMPLIANCE |  |  |

| Banking Operations Information Security Compliance | HIGH | Annual |

| Treasury and Payments Information Security Compliance | CRITICAL | Annual |

| Customer Service Information Security Compliance | HIGH | Annual |

| Branch Operations Information Security Compliance | MEDIUM | Every 18 months |

| IT Operations Information Security Compliance | CRITICAL | Annual |

| Software Development Function Compliance | CRITICAL | Annual |

| AI Engineering Function Compliance (AI-native platform) | CRITICAL | Annual |

| HR Information Security Compliance | MEDIUM | Every 18 months |

| Finance Information Security Compliance | HIGH | Annual |

| Legal and Compliance Information Security Compliance | MEDIUM | Every 18 months |

| DOMAIN D: REGULATORY COMPLIANCE |  |  |

| BSP Cybersecurity Framework Compliance (Circular 1048) | CRITICAL | Annual |

| BSP IT Risk Management Compliance (Circular 1140) | CRITICAL | Annual |

| RA 10173 Data Privacy Act Compliance | CRITICAL | Annual |

| PCI DSS v4.0 Compliance | CRITICAL | Continuous monitoring + annual deep-dive |

| RA 11765 Consumer Protection Compliance (IS dimensions) | HIGH | Annual |

| RA 8791 General Banking Law Records Compliance | HIGH | Annual |

| AMLC Reporting Information Security Compliance | MEDIUM | Every 18 months |

| DOMAIN E: SPECIAL AUDITS AND FOLLOW-UP |  |  |

| Follow-up audits on prior CRITICAL/MAJOR findings | CRITICAL | Per BFS-ISMS-010 remediation timeline + 90 days |

| Post-incident audits (CRITICAL/HIGH incidents) | HIGH | Within 60 days of incident closure |

| Special audits requested by Board / Regulators | Variable | On request |

| Third-party operations audits (TIER 1 service providers) | HIGH | Per contractual schedule + as risk warrants |

| AI Governance Framework Audit (forthcoming) | CRITICAL | Annual once framework operational (per BFS-ISMS-005 O7.1) |

## 3.3  Risk Tier Definitions

Each audit area is assigned a risk tier reflecting its consequence to BFS information security posture if the audited area fails. Risk tier drives audit frequency, depth, and resource allocation.

| Risk Tier | Definition and Audit Implications |

| --- | --- |

| CRITICAL | Failure of the audited area would have severe consequences — material customer impact, regulatory enforcement, significant financial loss, or existential threat to BFS. Audit frequency: Annual minimum; depth: comprehensive; resourcing: experienced auditors, often Lead Auditor with specialist support. |

| HIGH | Failure of the audited area would have material consequences — significant customer impact, regulatory findings, notable financial loss. Audit frequency: Annual; depth: substantial; resourcing: experienced auditors with adequate time allocation. |

| MEDIUM | Failure of the audited area would have moderate consequences — manageable customer impact, minor regulatory findings, moderate financial loss. Audit frequency: Every 18 months; depth: focused; resourcing: capable auditors with appropriate time. |

| LOW | Failure of the audited area would have minor consequences — limited customer impact, low regulatory exposure, modest financial loss. Audit frequency: Every 24 months minimum; depth: targeted; resourcing: efficient with rotation opportunities for newer auditors. |

## 3.4  Three-Year Rolling Programme

The BFS Internal Audit Programme operates on a 3-year rolling cycle. Each year, the next 12 months are scheduled in detail, the following 12 months are scheduled at high level, and the third year is identified for planning purposes. This rolling approach provides:

Visibility for auditees on upcoming audits enabling preparation;

Resource planning for Internal Audit including external co-source where needed;

Coordination with combined assurance partners (external audit, certification body);

Flexibility to adjust as risk environment evolves while maintaining programme stability.

The detailed 12-month audit calendar is approved by the Board Audit & Risk Committee at the start of each calendar year. The 18-month outlook is shared with the Information Security Steering Committee for combined assurance coordination.

## 3.5  Risk-Based Programme Adjustment

The audit programme is adjusted within the year for emerging risks and material events:

Material new risk identified through risk assessment may trigger out-of-cycle audit;

CRITICAL/HIGH security incidents trigger post-incident audit per Domain E;

Material regulatory enforcement action may trigger broader assurance audit;

Material adverse audit finding in one area may trigger expanded scope in related areas;

Board or executive request for special audit takes priority within available capacity.

Programme adjustments are documented with: justification, displaced or deferred audits (and when they will be rescheduled), resource implications, and approval. Adjustments to remove planned audits without rescheduling require Head of Internal Audit + Board Audit & Risk Committee approval.

# 4.  AUDIT PROCEDURE

This section establishes the standardized procedure governing how individual ISMS internal audits are conducted at BFS. The procedure is applied uniformly across all ISMS audits regardless of subject area, ensuring consistency, completeness, and audit quality. The procedure aligns with ISO 19011:2018 (Guidelines for Auditing Management Systems) and the IIA International Professional Practices Framework.

## 4.1  Audit Phases

Every BFS ISMS internal audit follows a five-phase procedure:

| Phase | Phase Name | Typical Duration | Key Outputs |

| --- | --- | --- | --- |

| Phase 1 | Planning | 2-4 weeks | Audit Plan; engagement letter; preliminary risk assessment; auditor team confirmed; auditee notification |

| Phase 2 | Fieldwork | 2-6 weeks (varies by scope) | Audit working papers; evidence collected; preliminary findings; daily status with auditee |

| Phase 3 | Analysis and Reporting | 2-4 weeks | Draft audit report; finding details; auditee response solicited; final report |

| Phase 4 | Communication | 1-2 weeks | Report distribution; closing meeting with auditee management; report to Board Audit & Risk Committee |

| Phase 5 | Follow-Up | Per remediation timelines | Remediation tracking; verification of finding closure; reporting on remediation status |

## 4.2  Phase 1: Audit Planning

Audit planning establishes the foundation for audit success. Inadequate planning results in inefficient fieldwork, missed coverage, weak findings, and reduced audit quality. The Lead Auditor is responsible for planning with support from the audit team and Audit Programme Manager.

### 4.2.1  Pre-Engagement Activities

Audit area identification: Confirmed from the approved annual audit calendar or from documented out-of-cycle audit authorization;

Lead Auditor and team assignment: Lead Auditor assigned by Head of Internal Audit; team members assigned considering competence, independence, capacity. Independence verified per Section 4.4 — auditors with current or recent operational responsibility for the audited area do not audit it;

Preliminary risk assessment: Initial assessment of risk in the audit area considering: prior audit findings; recent incidents; recent control changes; regulatory developments; threat intelligence affecting the area;

Audit objectives definition: Specific objectives for this audit — e.g., 'verify effective implementation of vulnerability management per BFS-ISP-007', 'assess compliance with PCI DSS Requirement 11', 'evaluate effectiveness of monthly phishing simulation program';

Audit criteria identification: Specific criteria against which evidence will be evaluated — relevant BFS policies, ISO 27001 clauses, regulatory requirements, contractual commitments;

Audit scope definition: Specific systems, processes, locations, time periods, and personnel groups within the audit area. Explicit out-of-scope items also documented;

Resource estimation: Hours required by phase, by auditor; external resource needs (specialist co-source, advisory support); travel if needed.

### 4.2.2  Audit Plan Document

The Audit Plan is a documented artifact produced before fieldwork begins, capturing all planning outputs. The Audit Plan is reviewed and approved by the Head of Internal Audit before fieldwork commencement. Key Audit Plan content:

Audit area, objectives, criteria, scope (with explicit out-of-scope items);

Audit team composition with Lead Auditor designation and independence confirmation;

Preliminary risk assessment with rationale for audit approach;

Audit approach: sample-based or risk-based selection methodology, anticipated procedures (interviews, document review, observation, walkthrough, testing);

Sampling methodology where applicable (e.g., 'minimum 25 sampled vulnerabilities from each TIER 1 system class for remediation timeliness testing');

Anticipated audit timeline including fieldwork start and end dates, key milestones;

Auditee key contacts (typically the function head and designated coordinator);

Reporting timeline and recipients;

Resource budget.

### 4.2.3  Engagement Letter and Auditee Notification

Once the Audit Plan is approved, an Engagement Letter is issued to auditee management formally initiating the audit:

Issued at least 14 days before fieldwork start (4-6 weeks for major audits with significant scoping needs);

Specifies audit objectives, scope, criteria, and timeline;

Identifies the audit team and Lead Auditor;

Requests auditee designation of a coordinator and identifies preliminary information requests;

Schedules opening meeting at fieldwork start;

Establishes communication protocol during fieldwork (daily status updates, escalation channel for issues);

Provides access expectations (information access, system access where needed for testing, personnel availability).

Auditee management is expected to provide reasonable cooperation and access. Material obstruction is escalated through the Head of Internal Audit to the Board Audit & Risk Committee. Audit findings emphasizing access denial may themselves be issued where cooperation is materially deficient.

## 4.3  Phase 2: Fieldwork

Fieldwork is the evidence-gathering phase. Auditors examine the audit area against criteria using established audit techniques. Fieldwork quality is the foundation of audit findings — weak fieldwork produces unreliable findings.

### 4.3.1  Opening Meeting

Fieldwork commences with an Opening Meeting between the audit team and auditee management:

Confirm audit objectives, scope, and criteria;

Introduce audit team and auditee key personnel;

Confirm communication protocol;

Address any open questions or concerns from either side;

Set expectations for closing meeting and report timeline.

### 4.3.2  Audit Techniques

BFS ISMS internal audits employ multiple audit techniques in combination — no single technique is sufficient for comprehensive evidence:

| Technique | Description | Application Notes |

| --- | --- | --- |

| Document Review | Examination of policies, procedures, records, reports, configuration documentation | Foundational technique; verifies that documented information exists and is consistent with audit criteria |

| Interview | Structured discussions with personnel about their role, processes, controls | Reveals operational reality often not visible in documentation; multiple interviews reduce single-source bias |

| Walkthrough | Step-by-step traversal of a process with the operating personnel demonstrating each step | Effective for understanding control operation; combines interview, observation, and document review |

| Observation | Direct observation of activities being performed | Strongest evidence type; verifies that documented and described activities actually occur |

| Re-performance / Testing | Auditor independently performs (or re-performs) the control activity to verify operation | Used for technical control testing — re-running queries, re-performing reconciliations, executing test scenarios |

| Sampling | Examination of a subset of items from a population with conclusions extrapolated | Used for population-based testing — sample of vulnerabilities, sample of access reviews, sample of incidents |

| Analytical Procedures | Analysis of data trends, ratios, and comparisons | Effective for identifying anomalies — sudden changes in patterns may indicate control failures |

| Inquiry of Third Parties | Inquiries to vendors, customers, regulators where appropriate | Limited use; typically supplements other techniques rather than primary |

### 4.3.3  Working Papers

All audit work is documented in working papers — the audit trail supporting findings:

Each procedure performed is documented including date, auditor, area examined, evidence collected, observations, conclusions;

Evidence is preserved — copies of documents reviewed, screenshots of system configurations, transcripts of interviews, photographs of physical observations as appropriate;

Working papers are sufficient that an experienced auditor not previously involved could understand the work performed and the reasoning supporting conclusions;

Working papers are reviewed by the Lead Auditor for adequacy before findings are finalized;

Working papers are retained per BFS-ISMS-006 (Document and Records Control) — typically 7 years for ISMS audit papers.

### 4.3.4  Daily Status and Issue Escalation

Open communication during fieldwork prevents surprises and supports efficient resolution:

Daily status updates between Lead Auditor and auditee coordinator on progress, observations emerging, and any access or scope issues;

Preliminary findings shared with auditee operational personnel as they emerge — providing opportunity for clarification, additional context, or correction of misunderstandings before formal findings;

Material issues during fieldwork (significant access denial, suspected fraud or misconduct, regulatory exposure) are escalated immediately to Head of Internal Audit and CISO without waiting for formal report;

Suspected illegal activity, breach of fiduciary duty, or material regulatory violation is escalated immediately and may trigger separate investigation through Legal Counsel coordination.

## 4.4  Phase 3: Analysis and Reporting

### 4.4.1  Finding Development

Audit findings emerge from analysis of evidence against criteria. Finding development requires rigor:

Each potential finding is evaluated against criteria with explicit citation: 'BFS-ISP-007 §5.5.3 requires KEV vulnerabilities to be remediated within 24 hours on TIER 1 systems. Sample testing identified [N] KEV vulnerabilities exceeding 24 hours, indicating noncompliance';

Sufficient evidence is gathered to support the finding — typically multiple independent evidence sources;

Root cause analysis where possible — identifying why the finding occurred, not just what occurred;

Severity classification per Section 5.4 (CRITICAL / MAJOR / MINOR / OBSERVATION);

Recommended remediation — specific actions that would close the finding;

Auditee response solicited before finalization — auditee may provide additional context, accept finding, dispute finding, or commit to remediation.

### 4.4.2  Audit Report Structure

Each ISMS internal audit produces a written audit report following standard structure:

Executive Summary: Overall opinion (Effective / Substantially Effective / Needs Improvement / Ineffective per Section 5.5); summary of findings count by severity; key themes;

Audit Background: Audit objectives, scope, criteria, timeline, audit team;

Findings Detail: For each finding — finding number, title, severity, criteria, condition (what was found), cause (root cause analysis), effect (consequence to BFS), recommendation, auditee response, target remediation date;

Observations: Observations not rising to nonconformity but warranting management attention;

Positive Findings: Areas of strong performance worth acknowledging;

Status of Prior Findings: Update on remediation status of findings from prior audits in this area;

Conclusion: Overall conclusion supported by findings;

Distribution List: Recipients of the report.

### 4.4.3  Auditee Response

Auditee management is provided opportunity to respond to draft findings before final report issuance:

Draft findings shared with auditee management within 5 business days of fieldwork conclusion;

Auditee response provided within 10 business days of receipt;

Response options: (a) accept finding and commit to remediation with target date; (b) accept finding with proposed alternative remediation; (c) dispute finding with supporting evidence; (d) request scope clarification;

Disputed findings are re-examined; Lead Auditor may revise, sustain, or escalate to Head of Internal Audit for resolution;

Final report incorporates auditee response and remediation commitments.

## 4.5  Phase 4: Communication

### 4.5.1  Closing Meeting

Fieldwork concludes with a Closing Meeting between the audit team and auditee management:

Findings summary presented;

Severity classifications discussed;

Recommended remediation reviewed;

Auditee response approach confirmed;

Reporting and follow-up timeline confirmed.

### 4.5.2  Report Distribution

Final audit reports are distributed per the following protocol:

| Recipient | Report Detail | Timing |

| --- | --- | --- |

| Auditee Senior Management | Full audit report | Within 30 days of fieldwork end |

| Head of Internal Audit | Full audit report | On finalization |

| Chief Information Security Officer | Full audit report (audits within ISMS scope) | On finalization |

| Board Audit & Risk Committee | Quarterly summary report; full reports on CRITICAL/MAJOR findings | Quarterly + ad-hoc for CRITICAL findings |

| Chief Information Officer | Reports on IT-relevant audits | On finalization |

| Chief Risk Officer | Quarterly summary; reports on enterprise-risk-relevant findings | Quarterly + ad-hoc |

| Chief Compliance Officer | Reports on regulatory compliance audits | On finalization |

| External Auditors | On request per agreed protocol | Per audit calendar coordination |

| ISO 27001 Certification Body | On request as part of certification audits | Per certification audit schedule |

| Regulators (BSP, NPC) | On request per regulatory protocol | Per regulator request |

## 4.6  Phase 5: Follow-Up

Audit findings without effective follow-up are merely notes — follow-up converts findings into actual ISMS improvement:

Each finding is registered in the BFS Audit Findings Register maintained by Internal Audit;

Findings are simultaneously registered in the BFS Corrective Action Register per BFS-ISMS-010 — Internal Audit findings are a primary input to the corrective action process;

Auditee management owns remediation per the response provided in Phase 3;

Internal Audit tracks remediation progress through periodic updates from auditee management;

Remediation timeline is calibrated to severity: CRITICAL findings typically require remediation within 30 days; MAJOR within 90 days; MINOR within 180 days;

Internal Audit verifies remediation through follow-up testing — typically within 60 days of claimed remediation completion for CRITICAL/MAJOR findings;

Verified remediated findings are closed in the Findings Register; unverified remediation extends finding open;

Findings remaining open beyond target remediation date are escalated — to Head of Internal Audit, then to Board Audit & Risk Committee for CRITICAL/MAJOR findings;

Repeat findings (the same finding recurring after prior remediation) are upgraded one severity level (MAJOR → CRITICAL; MINOR → MAJOR) reflecting that prior remediation was inadequate.

# 5.  AUDITOR COMPETENCE, INDEPENDENCE, AND FINDINGS CLASSIFICATION

ISO/IEC 27001:2022 Clause 9.2 requires that BFS select auditors and conduct audits to ensure objectivity and impartiality. This section establishes the auditor competence requirements, independence and objectivity protections, and the findings classification scheme applied uniformly across all ISMS internal audits.

## 5.1  Auditor Competence Requirements

ISMS internal audit competence requirements align with ISO 19011:2018 (Auditing Management Systems) and the BFS competence framework per BFS-ISMS-007.

### 5.1.1  Lead Auditor Competence

Lead Auditors for ISMS internal audits at BFS shall meet:

Educational foundation: Bachelor's degree minimum (Computer Science, Information Systems, Engineering, Business with IT focus, or equivalent);

Audit experience: Minimum 5 years of audit experience including 3 years in IT or information security audit;

Audit certification: ISO 27001 Lead Auditor certification AND CISA (Certified Information Systems Auditor) — or one of these plus equivalent demonstrated competence accepted by Head of Internal Audit;

ISMS subject matter knowledge: Working knowledge of ISO/IEC 27001:2022 requirements, ISO/IEC 27002:2022 control implementation guidance, ISO 19011 auditing standards, IIA International Professional Practices Framework;

Regulatory knowledge: Working knowledge of BSP cybersecurity framework, RA 10173, PCI DSS v4.0;

BFS-specific knowledge: Familiarity with the BFS ISMS, BFS-ISP series, and BFS organizational context — typically achieved through orientation period and prior audit experience at BFS;

Soft skills: Strong communication (written and verbal); judgment under uncertainty; professional skepticism; ability to manage challenging auditee dynamics.

### 5.1.2  Audit Team Member Competence

Audit team members supporting Lead Auditors shall meet:

Educational foundation: Bachelor's degree or equivalent technical qualification;

Audit experience: Minimum 2 years audit experience or demonstrated relevant capability;

Certification progression: Working toward CISA, ISO 27001 Lead Auditor, or equivalent — with progression milestones tracked through annual development plans;

Subject matter expertise: For specialist auditors (e.g., AI auditor, cloud auditor, penetration testing auditor), demonstrated specialist competence appropriate to subject area;

Continuous development: Annual CPE per professional certification requirements + BFS-specific training on ISMS evolution.

### 5.1.3  External Auditor Co-Source

Where audit areas require specialist expertise not available within Internal Audit (e.g., AI security auditing, advanced cryptographic auditing, specific cloud security expertise), external auditor co-source is engaged:

External auditors are engaged through formal contractual arrangement with BFS-ISP-015 (Service Provider Management) controls applied;

External auditors operate under direction of BFS Lead Auditor — they do not operate independently;

External auditor competence verified through firm credentials, individual qualifications, and reference checks;

External auditors subject to BFS confidentiality obligations and conflict-of-interest disclosure requirements;

BFS Internal Audit retains accountability for audit quality regardless of external co-source;

External co-source is supplementary, not substitutive — BFS does not outsource the Internal Audit function as a whole.

## 5.2  Independence and Objectivity

Independence and objectivity are foundational to internal audit value. Without genuine independence, audit findings are unreliable and the assurance value is illusory. BFS preserves Internal Audit independence through structural and operational safeguards.

### 5.2.1  Structural Independence

Internal Audit reports functionally to the Board Audit & Risk Committee — not to executive management. Functional reporting includes audit programme approval, audit findings reporting, Head of Internal Audit appointment and dismissal authority;

Administrative reporting (HR matters, payroll, day-to-day operational support) is to the CEO or designated executive — but with explicit Board Audit & Risk Committee approval rights for material decisions affecting Internal Audit;

Head of Internal Audit appointment and dismissal requires Board Audit & Risk Committee approval — not subject to executive management decision alone;

Internal Audit budget is approved by the Board Audit & Risk Committee — not subject to reduction by operational management without Board awareness;

Internal Audit has unrestricted access to all BFS information, systems, personnel, and locations relevant to assigned audits — access denial is escalated to Board Audit & Risk Committee.

### 5.2.2  Operational Independence

Internal Auditors do not perform operational responsibilities in the areas they audit. Auditors transitioning from operational roles do not audit those areas for at least 12 months;

Internal Auditors do not have authority to design or implement controls in areas they audit. Audit recommendations may identify needs for control changes, but operational management designs and implements;

Internal Auditors do not approve transactions, sign documents binding BFS, or perform other operational duties that could compromise objectivity;

Internal Auditors disclose any potential conflicts of interest at audit assignment — personal relationships with auditees, prior employment in the audit area, financial interests, etc. Material conflicts result in reassignment;

Internal Auditors complete annual independence and conflict-of-interest declarations confirming no compromising relationships.

### 5.2.3  Objectivity Protections

Audit findings are determined based on evidence — not on auditee pressure, executive direction, or political considerations. Material attempts to influence findings inappropriately are reportable to the Board Audit & Risk Committee;

Findings disputes are resolved through evidence review — not by negotiation or compromise. The role of auditee response (Section 4.4.3) is to provide additional context and evidence, not to negotiate findings down;

Audit reports describe what was found — not what management wishes had been found. Adverse findings are reported with the same rigor as positive findings;

Auditors are protected from retaliation for unfavorable findings. The Head of Internal Audit can escalate retaliation concerns to the Board Audit & Risk Committee Chair directly;

External quality assessment of the Internal Audit function is performed at minimum every 5 years per IIA standards — providing independent verification that audit objectivity is preserved.

## 5.3  Findings Classification Scheme

ISMS audit findings are classified using a four-level scheme. Consistent classification across audits enables comparison, trend analysis, and management prioritization.

| Severity | Definition | Examples |

| --- | --- | --- |

| CRITICAL | Material noncompliance with BFS ISMS requirements, ISO 27001 requirements, or regulatory requirements creating significant risk of material adverse consequence — customer impact, regulatory enforcement, significant financial loss, or existential risk | Absence of mandatory ISMS element (e.g., no operating risk assessment process); systemic failure of CRITICAL control across TIER 1 systems; regulatory noncompliance with material exposure; pervasive control breakdown affecting multiple areas |

| MAJOR | Significant noncompliance creating material risk but not rising to CRITICAL — typically affecting specific systems, processes, or time periods rather than systemic | Failed control on specific TIER 1 system; significant policy noncompliance; missing required documentation for material activities; specific regulatory finding with manageable exposure |

| MINOR | Specific instance of noncompliance with limited consequence — typically affecting individual transactions or limited population without systemic implications | Individual access review delayed; specific document missing approval signature; isolated training completion gap; specific log retention shortfall on non-critical system |

| OBSERVATION | No current noncompliance but a matter warranting management attention — emerging risk, control improvement opportunity, efficiency consideration | Process inefficiency that increases error risk; control implementation could be strengthened; benchmarking insight from peer institution practice; emerging threat the current controls may not address |

## 5.4  Audit Opinion Categories

Each audit concludes with an overall opinion characterizing the audit area. The opinion synthesizes the findings into a single characterization useful for executive reporting.

| Opinion | Definition | Typical Finding Profile |

| --- | --- | --- |

| Effective | Audited area operates effectively against criteria. Identified findings are minor, isolated, or matters of opportunity for improvement | Zero CRITICAL/MAJOR findings; ≤3 MINOR findings; observations as relevant |

| Substantially Effective | Audited area operates effectively in most respects with specific identified weaknesses requiring attention | Zero CRITICAL findings; ≤2 MAJOR findings; MINOR findings as relevant |

| Needs Improvement | Audited area has material weaknesses requiring remediation. Operating but with significant gaps | Zero CRITICAL findings; 3+ MAJOR findings OR MAJOR finding with significant exposure; multiple MINOR findings |

| Ineffective | Audited area fails to operate effectively against criteria. Material weakness creates significant risk | One or more CRITICAL findings; pattern of MAJOR findings indicating systemic failure |

Audit opinions are reported to the Board Audit & Risk Committee in a single dashboard view enabling Committee tracking of ISMS effectiveness across audited areas. Trends in opinions over time — across the same audited areas year-over-year — are particularly informative for Committee oversight.

# 6.  COMBINED ASSURANCE AND REPORTING

## 6.1  Combined Assurance Model

BFS adopts a combined assurance approach coordinating multiple assurance providers to deliver comprehensive coverage with optimized resource utilization. The model recognizes that ISMS effectiveness is verified through multiple complementary mechanisms — no single mechanism is sufficient.

| Line of Defense | Assurance Provider(s) | Role |

| --- | --- | --- |

| First Line — Operational Management | ISMS operational functions (CISO Office, IT Security, Application Security, etc.); business unit management | Owns and operates information security controls; performs continuous self-monitoring; identifies and remediates issues |

| Second Line — Risk and Compliance Functions | Risk Management; Compliance; Privacy Office (DPO) | Provides oversight, frameworks, monitoring, and challenge to first-line operations; not primarily an audit function |

| Third Line — Internal Audit | Internal Audit (per this document) | Independent assurance over first and second lines; reports to Board |

| External Assurance — Certification | ISO 27001 Certification Body | Independent assessment for certification; provides additional independence beyond Internal Audit |

| External Assurance — Regulatory | BSP examiners; NPC; SEC; AMLC; PCI QSA | Regulatory and compliance assessment; specific scope per each regulator |

| External Assurance — Other | Penetration testing firms; advisory services | Specialized technical assessment; advisory inputs |

Combined assurance coordination occurs through:

Annual Combined Assurance Plan: Internal Audit Programme is shared with external auditors, certification body, and other assurance providers — coordinating timing and avoiding duplicative testing where reliance is appropriate;

Quarterly Information Security Steering Committee: Cross-functional forum where assurance findings from all sources are reviewed for emerging themes;

Reliance Decisions: Internal Audit may rely on prior work by other assurance providers (e.g., relying on PCI QSA testing of PCI controls) where reliance is documented, justified, and verified;

Coordinated Findings Management: Findings from external sources flow into the same BFS-ISMS-010 corrective action register as Internal Audit findings — preventing fragmented remediation tracking.

## 6.2  Annual Audit Programme Reporting

The Internal Audit Programme is reported to the Board Audit & Risk Committee with the following cadence:

| Report | Audience | Content |

| --- | --- | --- |

| Annual Audit Plan | Board Audit & Risk Committee | Coming year's audit calendar; rationale for risk-based prioritization; resource and budget; combined assurance coordination; submitted for approval |

| Quarterly Audit Update | Board Audit & Risk Committee | Audits completed; findings summary; remediation status; programme adjustments; resource update |

| Annual Audit Programme Report | Board Audit & Risk Committee | Full year audit completion; aggregate findings analysis; ISMS effectiveness opinion; programme effectiveness assessment; recommendations for next year |

| Ad-Hoc Reports | Board Audit & Risk Committee | CRITICAL findings; material programme deviations; specific Board-requested investigations |

| External Quality Assessment Report | Board Audit & Risk Committee + Full Board | Once every 5 years per IIA — independent assessment of Internal Audit function quality |

## 6.3  Aggregate Findings Reporting

Beyond individual audit reports, Internal Audit produces aggregate analysis enabling the Board Audit & Risk Committee to identify systemic themes:

Findings by severity over time — trending up or down indicates ISMS maturity direction;

Findings by ISMS domain (Governance / Technical Controls / Business Compliance / Regulatory) — identifies areas of concentrated weakness;

Repeat findings tracking — findings recurring after prior remediation indicate ineffective remediation or systemic issues;

Remediation timeliness — percentage of findings remediated within target timelines indicates corrective action discipline;

Audit opinion trend — proportion of audits resulting in 'Effective' vs. 'Needs Improvement' opinions over time;

Cross-audit themes — issues appearing across multiple audits in different areas suggest underlying organizational matters.

## 6.4  Integration with Management Review and Corrective Action

Internal Audit outputs are key inputs to the broader ISMS:

BFS-ISMS-009 (Management Review): Aggregate audit findings, programme status, ISMS effectiveness opinion, and recommendations are key inputs to the bi-annual Management Review per ISO 27001 Clause 9.3;

BFS-ISMS-010 (Corrective Action): Individual audit findings flow into the corrective action register where remediation is managed, tracked, and verified. Internal Audit verifies remediation but operational management owns and executes;

BFS-ISMS-005 (Information Security Objectives): Audit findings inform the setting of objectives — e.g., findings of inadequate vulnerability remediation timeliness drive O8.4 vulnerability SLA objective;

BFS-ISMS-003 (Risk Assessment): Audit findings of control weaknesses feed risk register updates — controls assumed effective in risk treatment may need re-evaluation if audit reveals weakness.

| AUDIT VALUE PROPOSITION:  Internal Audit value is not measured by the number of findings issued but by the contribution to ISMS effectiveness. The best audits frequently identify few findings — confirming that the audited area operates effectively. The best audit programmes identify systemic issues that operational management cannot see from inside the operation. The best audit functions are partners in ISMS effectiveness — independent partners providing perspective management cannot generate from within. |

| --- |

# 7.  ROLES AND RESPONSIBILITIES

| Role | Internal Audit Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves the annual Audit Programme. Approves Head of Internal Audit appointment and dismissal. Receives quarterly audit reports and special reports on CRITICAL findings. Reviews aggregate findings analysis. Approves Internal Audit budget. Provides independence protection for Internal Audit. Receives external quality assessment results every 5 years. |

| Board of Directors | Provides ultimate oversight through the Audit & Risk Committee. Reviews material findings escalated by the Committee. Considers ISMS effectiveness in strategic planning. |

| Head of Internal Audit | Owner of this document. Manages the Internal Audit function. Plans, schedules, and oversees execution of the Audit Programme. Approves Audit Plans before fieldwork. Reviews and approves audit reports. Reports to Board Audit & Risk Committee. Maintains independence and challenges executive management when warranted. |

| Audit Programme Manager | Manages the multi-year audit programme. Coordinates audit calendar, resource allocation, combined assurance with external assurance providers. Tracks programme execution and reports programme status. |

| Lead Auditors | Lead specific audit engagements per Section 4. Develop Audit Plans. Manage audit team. Conduct fieldwork. Develop findings. Author audit reports. Communicate with auditee management. Track follow-up. |

| Audit Team Members | Support Lead Auditors in audit execution. Perform audit procedures per Audit Plan. Document working papers. Develop findings under Lead Auditor direction. Maintain confidentiality. |

| External Auditor Co-Source | Specialist support to Internal Audit per Section 5.1.3. Operate under direction of BFS Lead Auditor. Subject to BFS-ISP-015 service provider controls. |

| Chief Executive Officer | Provides administrative reporting line for Internal Audit (with Board Committee functional oversight). Receives audit reports for awareness. Champions audit findings as ISMS improvement opportunity rather than threat. Supports auditor access and cooperation. |

| Chief Information Officer | Receives audit reports on IT-relevant audits. Owns remediation of IT-domain findings through operational chain. Supports auditor access to IT systems and personnel. |

| Chief Information Security Officer | Receives audit reports on ISMS audits. Coordinates ISMS-domain finding remediation. Supports auditor access. Provides input to audit risk assessment but does not control audit findings. |

| Chief Risk Officer | Receives audit findings relevant to enterprise risk. Coordinates risk register updates based on audit findings. |

| Chief Compliance Officer | Receives audit findings on regulatory compliance. Coordinates regulatory examination preparation using audit findings as preview. Supports auditor access for compliance audits. |

| Auditee Management (varies) | Cooperates with audit engagements. Provides access to information, systems, and personnel. Designates audit coordinator. Responds to draft findings. Owns and executes remediation. Provides remediation evidence for verification. |

| All BFS Personnel | Cooperate with auditors during interviews and walkthroughs. Provide accurate information. Do not attempt to influence audit findings inappropriately. Report retaliation against auditors or audit cooperation through whistleblower channel. |

# 8.  KEY PERFORMANCE INDICATORS AND PROGRAMME MONITORING

Internal Audit programme effectiveness is measured through the following KPIs reviewed annually by the Head of Internal Audit and reported to the Board Audit & Risk Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Annual audit plan completion rate (audits completed vs. planned) | ≥ 95% | Annual |

| Audit cycle coverage (all in-scope ISMS areas audited at minimum frequency over 3-year cycle) | 100% | Per cycle |

| CRITICAL findings issued | Track and trend; not a target but indicator of ISMS state | Annual |

| MAJOR findings issued | Track and trend | Annual |

| Repeat findings (findings recurring after prior remediation) | < 10% of total findings | Annual |

| Audit findings remediated within target timeline | ≥ 90% on-time (per BFS-ISMS-005 O8.1) | Quarterly |

| CRITICAL findings remediated within 30 days | ≥ 90% | Per finding |

| MAJOR findings remediated within 90 days | ≥ 90% | Per finding |

| Audit reports issued within 30 days of fieldwork end | ≥ 90% | Per audit |

| Auditee response submission within 10 business days | ≥ 95% | Per audit |

| Lead Auditor certification currency (CISA + ISO 27001 Lead Auditor or equivalent) | 100% | Annual |

| Audit team CPE hours achieved | ≥ 95% of personnel meet annual targets | Annual |

| Auditor independence declarations completed | 100% annually | Annual |

| Material conflicts of interest disclosed and addressed | 100% | Per audit assignment |

| External quality assessment of Internal Audit function | Every 5 years per IIA | Per cycle |

| Combined Assurance Plan coordination meetings held | Quarterly | Quarterly |

| Auditee satisfaction survey score | ≥ 4.0/5.0 (separate from finding satisfaction) | Per audit |

| Internal Audit budget execution (within ±10% of approved) | Within ±10% | Annual |

## 8.2  External Quality Assessment

Per IIA International Professional Practices Framework, the BFS Internal Audit function is subject to external quality assessment every 5 years. The assessment evaluates:

Conformance with IIA Standards;

Internal Audit charter and reporting line independence;

Audit programme adequacy and execution;

Auditor competence and independence;

Audit methodology rigor;

Communication and reporting effectiveness;

Continuous improvement program.

External quality assessment results are reported to the Board Audit & Risk Committee and Full Board. Material findings drive Internal Audit improvement. The next BFS external quality assessment is scheduled within the first 5-year cycle following Internal Audit function maturation.

## 8.3  Audit Programme Self-Assessment

Annually, the Head of Internal Audit conducts self-assessment of the audit programme:

Coverage analysis: Did the programme cover the right areas at the right frequency?

Findings analysis: Did the programme identify material issues, or did issues emerge through other channels (incidents, regulatory examinations, certification audits)?

Methodology review: Are audit techniques appropriate to current threat and control landscape?

Auditee feedback: How do auditees experience the audit process? Constructive partnership or adversarial?

Resource analysis: Did the function have adequate resources for the planned coverage?

Improvement opportunities: What changes would increase audit value in the coming year?

Self-assessment outputs inform the next year's Audit Programme planning and may identify changes to this procedure for incorporation in next annual review.

# 9.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Internal Audit Program and Procedure aligned with ISO/IEC 27001:2022 Clause 9.2 and ISO 19011:2018. Defines 3-year rolling Audit Programme covering 5 audit domains (Governance / Technical Controls / Business Compliance / Regulatory / Special Audits) with 47 distinct audit areas. Establishes 5-phase audit procedure (Planning / Fieldwork / Analysis / Communication / Follow-Up). Mandates auditor competence (CISA + ISO 27001 Lead Auditor) and structural independence (functional reporting to Board Audit & Risk Committee). 4-level findings classification (CRITICAL / MAJOR / MINOR / OBSERVATION) with calibrated remediation timelines. | Internal Audit Head / IT Head / Infrastructure Team | Internal Audit Head / IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Clause 9.2 Requirements Mapping

ISO/IEC 27001:2022 Clause 9.2 (Internal Audit) specifies multiple sub-requirements (9.2.1 General and 9.2.2 Internal audit programme). The table below confirms how this Procedure fulfills each, providing direct evidence for ISO 27001 certification audit examination of Internal Audit function.

| Sub-Clause | Requirement | How This Procedure Fulfills |

| --- | --- | --- |

| 9.2.1 | The organization shall conduct internal audits at planned intervals | Section 3.4 establishes the 3-year rolling Audit Programme with planned intervals for each audit area. Section 3.2 Audit Universe specifies frequency for all 47 audit areas. |

| 9.2.1(a) | Provide information on whether the ISMS conforms to the organization's own requirements | Section 4.2 (Audit Planning) requires explicit identification of audit criteria including BFS policies. Section 4.4.1 (Finding Development) requires explicit citation of criteria. Findings against BFS-specific requirements are explicitly addressed. |

| 9.2.1(b) | Provide information on whether the ISMS conforms to the requirements of ISO/IEC 27001 | Section 4.2 includes ISO 27001 requirements in audit criteria. Domain A audits explicitly address ISO 27001 framework documents. Findings against ISO requirements are explicitly addressed. |

| 9.2.1(c) | Provide information on whether the ISMS is effectively implemented and maintained | Section 5.4 Audit Opinions (Effective / Substantially Effective / Needs Improvement / Ineffective) explicitly address effectiveness. Findings address both implementation and maintenance dimensions. |

| 9.2.2(a) | Plan, establish, implement and maintain an audit programme(s), including the frequency, methods, responsibilities, planning requirements and reporting | Section 3 (Audit Programme) addresses frequency (Section 3.2-3.3), responsibilities (Section 7), planning requirements (Section 4.2), and reporting (Section 6.2). Section 8 addresses programme maintenance through self-assessment. |

| 9.2.2(a) (continued) | The audit programme(s) shall take into consideration the importance of the processes concerned and the results of previous audits | Section 3.3 (Risk Tier Definitions) calibrates audit frequency to importance/risk. Section 4.2.1 requires consideration of prior audit findings in preliminary risk assessment. Section 6.3 tracks repeat findings. |

| 9.2.2(b) | Define the audit criteria and scope for each audit | Section 4.2.1 (Pre-Engagement Activities) requires explicit audit objectives, criteria, and scope definition. Section 4.2.2 (Audit Plan Document) makes these explicit deliverables for each audit. |

| 9.2.2(c) | Select auditors and conduct audits that ensure objectivity and the impartiality of the audit process | Section 5.1 (Auditor Competence) and Section 5.2 (Independence and Objectivity) specify the structural and operational protections. Section 5.2.1 establishes Internal Audit functional reporting to Board Audit & Risk Committee. |

| 9.2.2(d) | Ensure that the results of the audits are reported to relevant management | Section 4.5 (Communication phase) and Section 6.2 (Reporting) specify recipients of audit reports. Quarterly Board Audit & Risk Committee reporting is mandatory; auditee management receives full reports; cross-functional executives receive relevant reports. |

| 9.2.2(e) | Retain documented information as evidence of the audit programme(s) and the audit results | Section 4.3.3 (Working Papers) and Section 4.6 (Follow-Up) maintain documented evidence. Records retained per BFS-ISMS-006 — typically 7 years for ISMS audit working papers and reports. Audit Findings Register provides longitudinal evidence of programme operation. |

# APPENDIX B:  Audit Programme Quick Reference

Single-page reference for personnel involved in or affected by ISMS internal audits. Detailed provisions in the body of this procedure.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| When will my function be audited? | See Section 3.2 (Audit Universe) for frequency by audit area. The detailed annual audit calendar is approved by Board Audit & Risk Committee in January each year. Auditees receive Engagement Letter at least 14 days before fieldwork start. |

| Who can audit my function? | Auditors meeting Section 5.1 competence requirements (Lead Auditor: CISA + ISO 27001 Lead Auditor + 5 years audit experience) and meeting Section 5.2 independence requirements (no current or recent operational responsibility for the audited area within 12 months). |

| What documents will the auditor want? | Specified in Engagement Letter and Audit Plan. Typically: relevant policies, procedures, records, configuration documentation, sample of operational records (incidents, vulnerabilities, access reviews, etc.), evidence of control operation. |

| How long will the audit take? | Total elapsed time typically 8-16 weeks from Engagement Letter to final report (Section 4.1). Active fieldwork phase typically 2-6 weeks. Auditee active involvement typically heaviest in fieldwork phase. |

| What if I disagree with a finding? | Section 4.4.3 (Auditee Response) provides 10 business days to respond to draft findings — accept, accept with alternative remediation, dispute with evidence, or request scope clarification. Disputed findings are re-examined; resolution may require Head of Internal Audit involvement. |

| What does each finding severity mean? | Section 5.3: CRITICAL = material risk requiring 30-day remediation; MAJOR = significant noncompliance requiring 90-day remediation; MINOR = isolated noncompliance requiring 180-day remediation; OBSERVATION = improvement opportunity, no remediation required but management consideration recommended. |

| Who sees the audit report? | Section 4.5.2 distribution table: Auditee Senior Management, Head of Internal Audit, CISO, Board Audit & Risk Committee (CRITICAL findings + quarterly summary), CIO/CRO/CCO as relevant. ISO 27001 certification body and regulators on request. |

| What happens after a finding is issued? | Section 4.6 (Follow-Up): Finding registered in Audit Findings Register and BFS-ISMS-010 Corrective Action Register; auditee owns remediation per response; Internal Audit verifies remediation through follow-up testing typically within 60 days of claimed completion. |

| What if a finding recurs after remediation? | Section 4.6 final bullet: Repeat findings are upgraded one severity level (MAJOR→CRITICAL; MINOR→MAJOR) reflecting that prior remediation was inadequate. Repeat patterns are reported to Board Audit & Risk Committee. |

| How is Internal Audit independence preserved? | Section 5.2: Functional reporting to Board Audit & Risk Committee (not to operational management). Head of Internal Audit appointment requires Board approval. Internal Audit budget approved by Board. No operational responsibility in audited areas. Annual independence declarations. |

| What if I think an auditor is not being objective? | Report through whistleblower channel (BFS-ISMS-001 §11.3) or directly to Board Audit & Risk Committee Chair. Non-retaliation protected. Material concerns trigger investigation and may result in auditor reassignment. |

| How can my function prepare for an audit? | Maintain current documentation of policies, procedures, and records per BFS-ISMS-006. Ensure operational evidence is available for sample testing. Designate audit coordinator early. Brief team on audit purpose and cooperation expectations. |

BFS-ISMS-008  |  Internal Audit Program and Procedure  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. The Independent Verification Mechanism for ISMS Conformity and Effectiveness. Authorized Internal, Audit, and Certification Body Use Only.
