---
title: "BFS-ISMS-010-Nonconformity-and-Corrective-Action"
source_file: "02-PPG-ISMS-ISO-27001/Procedures/Corrective-Action/BFS-ISMS-010-Nonconformity-and-Corrective-Action.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:41Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Procedures"
  - "Corrective-Action"
aliases:
  - "BFS-ISMS-010-Nonconformity-and-Corrective-Action"
creator: "Un-named"
created: "2026-04-27T21:37:00Z"
modified: "2026-04-28T04:21:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>NONCONFORMITY AND<br>CORRECTIVE ACTION<br>Identification, Root Cause Analysis, Correction, Corrective Action, Effectiveness Verification, and Continual Improvement of the BFS Information Security Management System<br>Policy Reference: BFS-ISMS-010<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>ISO/IEC 27001:2022 Clauses 10.1 and 10.2 Mandated Procedure<br>The Final Document of the BFS-ISMS Framework — Closing the Plan-Do-Check-Act Cycle<br>Companion to BFS-ISMS-008 (Internal Audit) and BFS-ISMS-009 (Management Review) — converting findings into ISMS improvement |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Nonconformity and Corrective Action Procedure |

| --- | --- |

| Policy Reference | BFS-ISMS-010 |

| Policy Owner | IT Head |

| Document Author | IT Head / Infrastructure Team / Internal Audit |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal, Audit, and Certification Body Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to ISMS scope, regulatory environment, audit methodology, or accumulated lessons learned from corrective action operation |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — ISMS Framework Document. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISMS-008 (Internal Audit — primary source of nonconformities); BFS-ISMS-009 (Management Review — receives aggregate corrective action status); BFS-ISP-017 (Incident Response — incidents are nonconformities); All BFS-ISP policies (operational policies subject to compliance audit and corrective action) |

| Framework Alignment | ISO/IEC 27001:2022 Clauses 10.1 (Continual Improvement) and 10.2 (Nonconformity and Corrective Action); ISO 9000:2015 (terminology); ISO 19011:2018 (audit findings); IIA International Professional Practices Framework on corrective action tracking |

| Regulatory Reference | BSP Circular 1140 (corrective action expectations); BSP Circular 1048 (cybersecurity remediation); RA 10173 (data privacy issue remediation); PCI DSS v4.0 (compliance gap remediation); RA 11765 (consumer protection issue remediation); SEC Code of Corporate Governance (corrective action oversight) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Head of Internal Audit |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services procedure for managing nonconformities and corrective actions within the Information Security Management System (ISMS), fulfilling the requirements of ISO/IEC 27001:2022 Clauses 10.1 (Continual Improvement) and 10.2 (Nonconformity and Corrective Action). It is the document that converts ISMS findings — from any source — into actual ISMS improvement, closing the Plan-Do-Check-Act cycle.

This procedure is the operational mechanism by which BFS responds to issues identified through every other ISMS mechanism: nonconformities identified through Internal Audit (BFS-ISMS-008); decisions and actions assigned at Management Review (BFS-ISMS-009); findings from external audits (ISO 27001 certification body, PCI QSA, regulatory examinations); operational issues identified through monitoring (BFS-ISP series KPIs); incidents requiring systemic correction (BFS-ISP-017 lessons learned); and self-identified gaps surfaced by ISMS personnel or operational management.

Without this procedure, all other ISMS findings remain notes without resolution. With this procedure, every finding flows through a disciplined process of identification, root cause analysis, correction (immediate fix), corrective action (root cause remediation), and effectiveness verification — ensuring that issues are not just patched but actually resolved at their source. This distinction between correction and corrective action is foundational: correction addresses the symptom; corrective action addresses the cause; effective ISMS improvement requires both, in that order.

ISO/IEC 27001:2022 Clause 10.1 (Continual Improvement) requires BFS to continually improve the suitability, adequacy, and effectiveness of the ISMS. ISO/IEC 27001:2022 Clause 10.2 (Nonconformity and Corrective Action) prescribes specific actions BFS shall take when a nonconformity occurs: react to the nonconformity; evaluate the need for corrective action; implement corrective action; review effectiveness; make changes to the ISMS if necessary; and retain documented information as evidence. This procedure operationalizes both clauses.

Beyond ISO 27001 compliance, this procedure fulfills BSP supervisory expectations for systematic remediation of identified IT and cybersecurity issues, RA 10173 data privacy issue remediation expectations, PCI DSS v4.0 compliance gap remediation requirements, and the broader expectation that BFS operates a learning organization that improves through experience rather than repeating mistakes.

The specific objectives of this document are to:

Establish the unified Corrective Action Register receiving nonconformities from all ISMS sources — providing single-pane-of-glass visibility into BFS ISMS improvement workload;

Specify the standardized procedure for managing each nonconformity through its lifecycle: identification, classification, root cause analysis, correction, corrective action planning, action execution, effectiveness verification, and closure;

Distinguish correction (immediate symptom fix) from corrective action (root cause remediation) — ensuring that BFS addresses both rather than substituting symptomatic patching for genuine resolution;

Mandate root cause analysis methodology ensuring that corrective actions address actual causes rather than apparent symptoms or surface-level explanations;

Establish severity-calibrated remediation timelines with escalation when timelines are at risk;

Specify effectiveness verification requirements ensuring that 'completed' actions actually resolve the underlying issue rather than appearing to do so;

Integrate with broader ISMS governance — Internal Audit verification, Management Review oversight, Board reporting on aggregate corrective action posture;

Operationalize Clause 10.1 continual improvement by treating corrective actions as a systematic mechanism for ISMS evolution rather than reactive firefighting;

Provide audit-friendly documentation supporting ISO 27001 certification audit examination of Clauses 10.1 and 10.2 compliance — auditors specifically examine corrective action operation as evidence of ISMS maturity.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

For the purposes of this document, the following definitions apply. ISO 9000:2015 terminology is controlling where conflict exists with general usage.

| Term | Definition |

| --- | --- |

| Nonconformity | Non-fulfillment of a requirement. (ISO 9000:2015) For BFS ISMS purposes, a nonconformity exists when the ISMS or its operation fails to meet: (a) BFS's own requirements (policies, procedures, objectives); (b) ISO/IEC 27001 requirements; (c) regulatory requirements (BSP, NPC, PCI, etc.); or (d) contractual commitments. |

| Correction | Action to eliminate a detected nonconformity. (ISO 9000:2015) Correction addresses the immediate symptom — for example, patching a specific vulnerability, restoring a missing record, completing an overdue review. Correction may not address the underlying cause. |

| Corrective Action | Action to eliminate the cause of a nonconformity and prevent recurrence. (ISO 9000:2015) Corrective action addresses the underlying cause — for example, fixing the process that allows vulnerabilities to escape, restoring the control that prevents missing records, addressing the staffing issue that allows reviews to slip. Corrective action prevents recurrence; correction does not. |

| Root Cause | The fundamental reason for a nonconformity — the cause whose elimination prevents recurrence. Root cause is distinct from immediate cause (the proximate trigger) and contributing factors (conditions that allowed the issue to occur or worsen). |

| Root Cause Analysis (RCA) | Structured process for identifying the root cause of a nonconformity. BFS uses multiple RCA techniques per Section 5.2 calibrated to nonconformity severity and complexity. |

| Source | The mechanism through which a nonconformity was identified — Internal Audit, Management Review, External Audit, Regulatory Examination, Incident, Self-Assessment, Operational Monitoring, or other documented source. |

| Severity | Classification of nonconformity consequence — CRITICAL / MAJOR / MINOR per Section 4.3, calibrated to the same severity scheme used by Internal Audit (BFS-ISMS-008 Section 5.3). |

| Action Item | Specific commitment to perform correction or corrective action with assigned owner, target date, and tracking mechanism. |

| Action Owner | Named role accountable for executing an assigned action by its target date and providing closure evidence. Distinct from action assignee (who may execute) and action verifier (who validates closure). |

| Target Date | Committed completion date for an action. Calibrated to severity per Section 4.4. Material slippage triggers escalation per Section 7.5. |

| Effectiveness Verification | Independent confirmation that a completed corrective action has actually eliminated the cause and prevented recurrence — not merely that the action was performed. Required for CRITICAL and MAJOR corrective actions. |

| Recurrence | Re-emergence of the same nonconformity after corrective action. Recurrence indicates that prior corrective action was inadequate or addressed apparent rather than actual root cause. |

| Continual Improvement | Recurring activity to enhance the suitability, adequacy, and effectiveness of the ISMS. (ISO 9000:2015) Per ISO/IEC 27001:2022 Clause 10.1, continual improvement is a mandatory ISMS commitment, not optional. |

| Lesson Learned | Insight gained from a nonconformity or its resolution that has broader applicability beyond the specific instance. Lessons learned are systematically captured and disseminated to prevent similar nonconformities elsewhere. |

| Corrective Action Register | The single authoritative register of all open and recently-closed nonconformities and their corrective actions across BFS ISMS. Maintained by CISO Office; visible to Internal Audit, executive leadership, and Board Audit & Risk Committee. |

| Risk Acceptance (in lieu of action) | Documented decision to accept residual risk rather than implement corrective action — used when the cost or feasibility of corrective action exceeds the risk it would address. Per BFS-ISMS-003 §6.5; requires authority appropriate to risk level. |

| Preventive Action (legacy term) | ISO 9001:2015 and ISO 27001:2022 no longer use the term 'preventive action' (which appeared in earlier ISO standards) — risk-based thinking embedded throughout the standards subsumes preventive action. Identification of potential nonconformities through risk assessment is per BFS-ISMS-003. |

| CRITICAL DISTINCTION:  Correction vs. Corrective Action is the most important conceptual distinction in this procedure. CORRECTION fixes the immediate symptom — an overdue access review is completed; a vulnerability is patched; a missing record is filed. CORRECTIVE ACTION fixes the cause — the access review process is restructured to prevent slippage; the vulnerability management workflow is adjusted to prevent escape; the records governance is strengthened to prevent omission. ISO 27001 Clause 10.2 explicitly requires both. Organizations that perform only correction find themselves repeatedly addressing the same nonconformities — they patch but do not heal. The discipline of this procedure is to ensure that BFS performs both correction (to address the immediate symptom) and corrective action (to prevent recurrence). |

| --- |

## 2.2  Scope

This procedure applies to all nonconformities within the BFS ISMS scope as defined in BFS-ISMS-002. Specifically:

### 2.2.1  In-Scope Nonconformities

Nonconformities identified through BFS Internal Audit per BFS-ISMS-008 — primary source typically accounting for the majority of register entries;

Actions and decisions arising from BFS Management Review per BFS-ISMS-009 — including continual improvement decisions and ISMS change decisions requiring execution tracking;

Findings from external audits — ISO 27001 certification body audits, PCI QSA assessments, External Auditor financial audit information security findings;

Findings from regulatory examinations — BSP examinations, NPC compliance reviews, SEC governance reviews, AMLC assessments;

Operational issues identified through ISMS monitoring — BFS-ISP series KPI variances; persistent control failures; trend-based issues;

Lessons learned from CRITICAL/HIGH security incidents per BFS-ISP-017 §5.8 — particularly where incidents reveal systemic ISMS gaps requiring corrective action;

Self-identified nonconformities — issues surfaced by ISMS personnel, operational management, or general staff through documented channels;

Issues identified through external assessments not covered above — penetration testing findings (BFS-ISP-018), red team engagement findings, vendor risk assessment findings, customer security feedback.

### 2.2.2  Out-of-Scope Items

This procedure does not govern:

Operational incident response during active incidents — governed by BFS-ISP-017 (Incident Response). However, post-incident lessons learned generating corrective actions enter scope of this procedure;

Routine operational changes not driven by nonconformity — standard change management, planned upgrades, capability development;

Risk treatment plan execution per BFS-ISMS-003 §7.5 — though risk treatment plans may generate nonconformities (when treatment is delayed or ineffective) which then enter scope;

Personnel performance management — HR-domain matters governed by HR policies even when relating to ISMS roles;

General BFS business issues unrelated to information security — governed by other BFS corrective action frameworks if applicable.

# 3.  NONCONFORMITY SOURCES AND INTAKE

This section establishes how nonconformities enter the BFS Corrective Action Register from their various sources. Standardized intake ensures that nonconformities from all sources are managed consistently, with no nonconformity 'falling through the cracks' between the source mechanism and the corrective action process.

## 3.1  Nonconformity Source Catalogue

Nonconformities at BFS originate from the following sources. Each source has defined intake mechanism, documentation requirements, and accountable parties for ensuring registration:

| Source | Intake Mechanism | Accountable for Registration |

| --- | --- | --- |

| Internal Audit (BFS-ISMS-008) | Audit findings flow directly from audit report finalization to Corrective Action Register; finding details, severity, recommended remediation, and auditee response provide foundational entry data | Lead Auditor with CISO Office support |

| Management Review (BFS-ISMS-009) | Action items assigned at Management Review Forum registered within 7 days of Forum; CISO Office maintains the Management Review Action Register that integrates with this Register | CISO Office |

| External Audit — ISO 27001 Certification Body | Findings from initial certification audit, surveillance audits, recertification audits registered within 30 days of report finalization | CISO Office; Head of Internal Audit verification |

| External Audit — PCI QSA | PCI compliance findings registered within 30 days of QSA assessment report | CCO + CISO Office |

| External Audit — External Financial Auditor | Information security findings affecting financial reporting registered within 30 days of management letter | CFO + CISO Office |

| Regulatory Examinations — BSP | BSP examination findings registered within 30 days of examination report; material findings escalated immediately to Board Audit & Risk Committee | CCO + CISO Office |

| Regulatory Examinations — NPC | NPC compliance review findings registered within 30 days of NPC notification | DPO + CISO Office |

| Regulatory Examinations — Other (SEC, AMLC) | Findings from other regulatory examinations registered within 30 days | CCO + CISO Office |

| Operational Monitoring — KPI Variances | Persistent KPI variances (≥ 2 consecutive periods at AMBER or RED status) registered as nonconformities by the responsible operational function | Function head + CISO Office |

| Incident Lessons Learned (BFS-ISP-017 §5.8) | Post-Incident Review (PIR) outputs identifying systemic ISMS gaps registered within 30 days of incident closure | CISO Office (Incident Commander hand-off) |

| Self-Assessment / Self-Identification | Issues surfaced by ISMS personnel, operational managers, or general staff through documented channels — register entry submitted by anyone with awareness | CISO Office reviews and registers within 14 days of submission |

| Penetration Testing (BFS-ISP-018) | CRITICAL/HIGH penetration test findings registered as nonconformities (in addition to operational remediation tracking) | Application Security Team + CISO Office |

| Red Team Engagement Findings | CRITICAL/HIGH Red Team findings registered as nonconformities | CISO Office |

| Vendor Risk Assessment Findings | Material findings from VRAs registered when remediation requires structured corrective action | Procurement + CISO Office |

| Customer / Public Reports | Security issues reported by customers, security researchers, or other external parties through responsible disclosure or other channels | CISO Office (Bug Bounty / Disclosure coordinator) |

## 3.2  Single Register, Multiple Sources

All nonconformities — regardless of source — flow into a single BFS Corrective Action Register. This single-register design is deliberate:

Provides comprehensive visibility — executives, Internal Audit, and Board can see the complete state of ISMS improvement workload in one place;

Enables thematic analysis across sources — patterns emerge when nonconformities from different sources are visible together (e.g., the same underlying gap surfacing through internal audit and external examination);

Prevents source-based silos — without single register, each source creates its own remediation tracking with inconsistent severity calibration, timelines, and verification standards;

Supports ISO 27001 audit evidence — certification body auditors examine corrective action operation; single register provides unambiguous evidence;

Reduces administrative burden — one register, one workflow, one set of management reporting cadences.

## 3.3  Intake Quality Standards

Each nonconformity entering the Register shall meet minimum quality standards. Inadequate intake produces ineffective corrective action. CISO Office gatekeeps intake quality:

Specific Description: The nonconformity is described specifically — 'access reviews not performed quarterly per BFS-ISP-005 §5.5' rather than 'access management has issues';

Criteria Citation: The specific BFS policy, ISO 27001 clause, regulatory requirement, or contractual commitment violated is cited explicitly — providing the standard against which corrective action will be evaluated;

Evidence Reference: The evidence supporting the nonconformity is referenced — audit working paper, examination report section, KPI report, incident PIR — supporting auditability of the finding;

Severity Assignment: Severity classified per Section 4.3 with rationale — not simply assigned by default;

Affected Systems / Processes: Specific systems, processes, or organizational units affected are identified — supporting accurate scoping;

Initial Owner Assignment: A specific role is identified as initial action owner, even if subsequent assignment may transfer ownership;

Source Documentation: Source mechanism is recorded for reference and aggregate reporting.

Entries failing intake quality standards are returned to the source with specific clarification requests. Persistent intake quality issues from a particular source trigger discussion with the source mechanism owner — Lead Auditor, examination coordinator, etc.

# 4.  NONCONFORMITY CLASSIFICATION AND LIFECYCLE

This section establishes how nonconformities are classified by severity and how each progresses through the lifecycle from identification to closure. Consistent classification across sources enables aggregate analysis; consistent lifecycle ensures no nonconformity escapes proper resolution.

## 4.1  Lifecycle States

| State | Definition | Permitted Transitions |

| --- | --- | --- |

| Identified | Nonconformity has been identified and is registered in the Register but root cause analysis and corrective action planning have not yet begun | → In Analysis (when RCA initiated); → Cancelled (rare — when finding is determined to be invalid through dispute resolution) |

| In Analysis | Root cause analysis underway; corrective action planning in progress | → Action Planned (when RCA complete and corrective action plan approved); → Cancelled (extremely rare — only with documented justification) |

| Action Planned | Corrective action plan approved with target date, owner, and success criteria; execution not yet underway | → Action In Progress (when execution begins per plan) |

| Action In Progress | Corrective action being executed per plan | → Effectiveness Verification (when action completed and ready for verification); → Action Planned (rare — when execution requires plan revision) |

| Effectiveness Verification | Corrective action completed; effectiveness being verified | → Closed (when verification confirms effectiveness); → Action In Progress (when verification reveals action is incomplete or ineffective, requiring further work) |

| Closed | Corrective action verified effective; nonconformity considered resolved | No further transitions; entry remains in Register for traceability and reporting |

| Risk Accepted | Decision made to accept residual risk rather than implement corrective action — per BFS-ISMS-003 §6.5; requires authority appropriate to risk level | No further transitions unless conditions change; periodic re-validation of acceptance per BFS-ISMS-003 |

| Cancelled | Nonconformity determined invalid through dispute resolution or rendered moot by superseding event | No further transitions; entry retained in Register with cancellation rationale |

Each lifecycle state has explicit entry criteria and exit criteria. Transitions are not subjective — they reflect actual completion of defined activities. This rigor prevents false closures (entries marked Closed without genuine resolution) and bottlenecks (entries lingering in early states without progress).

## 4.2  Severity Classification

Severity is calibrated to the same scheme used by Internal Audit (BFS-ISMS-008 §5.3), ensuring consistency across sources. Severity drives target remediation timeline, escalation thresholds, verification rigor, and reporting cadence.

| Severity | Definition | Examples |

| --- | --- | --- |

| CRITICAL | Material noncompliance creating significant risk of material adverse consequence — customer impact, regulatory enforcement, significant financial loss, or existential risk | Absence of mandatory ISMS element; systemic failure of CRITICAL control across TIER 1 systems; regulatory noncompliance with material exposure; pervasive control breakdown |

| MAJOR | Significant noncompliance creating material risk but not rising to CRITICAL — typically affecting specific systems, processes, or time periods rather than systemic | Failed control on specific TIER 1 system; significant policy noncompliance; missing required documentation for material activities; specific regulatory finding with manageable exposure |

| MINOR | Specific instance of noncompliance with limited consequence — typically affecting individual transactions or limited population without systemic implications | Individual access review delayed; specific document missing approval signature; isolated training completion gap; specific log retention shortfall on non-critical system |

Note: Observations from Internal Audit (BFS-ISMS-008 §5.3) are not nonconformities and do not enter this register as such. However, observations the Forum elects to convert into corrective actions for proactive improvement enter the register as MINOR severity with explicit improvement-driven (rather than nonconformity-driven) classification.

## 4.3  Severity Calibration Mechanisms

Severity assignment is calibrated through multiple mechanisms to prevent inconsistency:

Source Calibration: Internal Audit findings carry Internal Audit's severity assignment by default (Internal Audit applies the criteria of BFS-ISMS-008 §5.3); other sources apply the same criteria with CISO Office review;

CISO Office Review: All Register entries are reviewed by CISO Office for severity reasonableness — outlier severity assignments are flagged for discussion with the source;

Periodic Calibration Review: Annually, CISO Office and Head of Internal Audit jointly review severity assignment patterns across sources to identify drift or inconsistency;

Severity Change Discipline: Once severity is assigned and registered, change requires documented justification — to prevent severity downgrade as a means of relaxing remediation timeline;

Severity Upgrade for Recurrence: Per BFS-ISMS-008 §4.6, recurring findings auto-upgrade one severity level (MINOR → MAJOR; MAJOR → CRITICAL). This rule applies to all Register sources, not just Internal Audit.

## 4.4  Target Remediation Timelines

Each severity level has a default target remediation timeline calibrated to consequence. These are defaults; specific nonconformities may warrant accelerated or extended timelines with documented justification:

| Severity | Target Closure | Default Correction Timeline | Default Corrective Action Timeline |

| --- | --- | --- | --- |

| CRITICAL | 30 days | Immediate (within 7 days for critical exposure containment) | Within 30 days from identification including effectiveness verification |

| MAJOR | 90 days | Within 30 days | Within 90 days from identification including effectiveness verification |

| MINOR | 180 days | Within 60 days | Within 180 days from identification including effectiveness verification |

Note the distinction within the timeline framework:

Correction Timeline: How quickly the immediate symptom is addressed. For CRITICAL findings, correction is typically immediate even when corrective action takes longer — e.g., a CRITICAL vulnerability is patched immediately even though the corrective action addressing why it was missed takes 30 days;

Corrective Action Timeline: How quickly the root cause is addressed and effectiveness verified. This is the timeline against which closure is measured;

Risk-Driven Acceleration: Where active exposure exists (e.g., known exploitation in the wild for a CRITICAL vulnerability), correction timelines accelerate to hours regardless of standard timelines per BFS-ISP-007 §5.5;

Documented Extension: Extended timelines are permitted with justification — typically for nonconformities requiring complex technical remediation, organizational change, or vendor coordination beyond BFS direct control. Extensions are approved per Section 7.5.

## 4.5  Aging and Escalation

Open nonconformities are tracked against their target dates with structured escalation when at risk:

| Aging Status | Trigger | Required Response |

| --- | --- | --- |

| On Track | Open with target date in future; progress consistent with remaining time | Continue execution; status reported per cadence |

| At Risk | Open with target date approaching (CRITICAL: <14 days remaining; MAJOR: <30 days; MINOR: <60 days) AND progress assessment indicates risk to target | Escalation to Action Owner's manager; documented mitigation plan; reported at next Information Security Steering Committee |

| Overdue | Open with target date passed without closure | Immediate escalation: CRITICAL → CISO + Board Audit & Risk Committee Chair; MAJOR → CISO + relevant C-level; MINOR → Head of Function. Documented recovery plan with new target date. |

| Significantly Overdue | Open with target date passed by ≥ 50% of original timeline (CRITICAL >45 days; MAJOR >135 days; MINOR >270 days) | Material escalation to Board Audit & Risk Committee at next meeting; root cause analysis of remediation failure itself; potentially severity upgrade per Section 4.3 |

# 5.  ROOT CAUSE ANALYSIS METHODOLOGY

Root cause analysis (RCA) is the foundation of effective corrective action. Without RCA, corrective action addresses apparent rather than actual causes — leading to recurrence. This section establishes the BFS RCA methodology: when RCA is required, what techniques are appropriate, who performs it, and how findings are validated.

## 5.1  RCA Requirements by Severity

| Severity | RCA Requirement | Rigor Expectations |

| --- | --- | --- |

| CRITICAL | Mandatory formal RCA | Multi-technique (e.g., 5 Whys + Fishbone + Failure Mode Analysis); cross-functional participation; documented RCA report; CISO Office review and challenge; Internal Audit may participate as observer |

| MAJOR | Mandatory formal RCA | Single-technique with rigor (typically 5 Whys with documented validation); CISO Office review; cross-functional participation where systemic implications suspected |

| MINOR | Lightweight RCA | Brief written analysis identifying cause; full formal RCA not required unless lightweight analysis reveals systemic implications; CISO Office review at register level |

| Recurring | Mandatory enhanced RCA regardless of original severity | Recurrence indicates prior RCA was inadequate. Enhanced RCA includes review of why prior corrective action did not prevent recurrence; cross-functional participation; CISO Office and Internal Audit involvement |

## 5.2  RCA Techniques

BFS uses multiple complementary RCA techniques. Different techniques are appropriate for different nonconformity types. CRITICAL nonconformities typically use multiple techniques; MAJOR may use one; MINOR uses lightweight analysis.

| Technique | Description | Best Applied To |

| --- | --- | --- |

| 5 Whys | Iterative questioning — for each apparent cause, ask 'why did this happen' until reaching a fundamental cause that, if addressed, would prevent recurrence | Process failures; control breakdowns; specific incidents with clear sequence; effective for most ISMS nonconformities |

| Fishbone (Ishikawa) Diagram | Structured cause categorization across People / Process / Technology / Environment / Methods — visual mapping of contributing factors and root causes | Complex nonconformities with multiple contributing factors; situations where root cause may span categories |

| Failure Mode and Effects Analysis (FMEA) | Systematic analysis of how a process or control could fail, the effects of failure, and current detection mechanisms | Control failures; system design weaknesses; pre-emptive analysis of similar potential failures |

| Pareto Analysis | Statistical analysis identifying which subset of causes accounts for the majority of issues | Patterns of recurring nonconformities; thematic analysis across multiple Register entries; KPI variance analysis |

| Causal Loop / Systems Thinking | Analysis of feedback loops, delays, and systemic dynamics that produce nonconformities | Persistent or recurring issues that resist single-point remediation; nonconformities embedded in organizational dynamics |

| Process Mining / Workflow Analysis | Empirical analysis of actual workflow execution against documented procedure | Procedure compliance issues; workflow efficiency issues; identifying where actual practice diverges from policy |

| After-Action Review | Structured group reflection on what was supposed to happen, what actually happened, why, and what to do differently | Incident-driven nonconformities; project-related issues; lessons-learned facilitation |

## 5.3  RCA Quality Standards

RCA quality determines corrective action effectiveness. Inadequate RCA produces actions that fail to prevent recurrence. RCA quality standards:

Reaches Genuine Root Cause: The identified cause, if addressed, would actually prevent recurrence. 'User error' is rarely a genuine root cause — the genuine root cause is usually 'process did not prevent user error' or 'training did not enable correct behavior';

Avoids Blame Framing: RCA focuses on systemic and process causes, not individual blame. 'John forgot' is not actionable; 'process did not have a forcing function for the action' is. Blame framing produces defensive responses that suppress accurate analysis;

Distinguishes Levels: Distinguishes immediate cause (proximate trigger), contributing factors (conditions enabling the issue), and root cause (fundamental reason). All levels may warrant action but at different priorities;

Considers Multiple Causes: Many nonconformities have multiple contributing causes — single root cause is often a simplification. RCA should identify the cause(s) whose remediation will eliminate recurrence, even if that means multiple corrective actions;

Evidence-Based: Conclusions are supported by evidence — incident records, audit working papers, data analysis, witness statements. RCA conclusions should be defensible against challenge;

Validated: Material RCA conclusions are validated through independent review — by CISO Office for routine RCA; by Internal Audit for CRITICAL nonconformities or where RCA conclusions seem questionable;

Avoids Hindsight Bias: RCA acknowledges that what is clear in retrospect was often not clear at the time. Avoid criticizing decisions made with information unavailable at the time.

## 5.4  RCA Outputs and Documentation

Each RCA produces documented outputs supporting subsequent corrective action and audit traceability:

RCA Method Used: Which technique(s) were applied; rationale for technique selection;

Participants: Who participated in RCA — typically Action Owner plus relevant subject matter experts plus CISO Office facilitator for CRITICAL/MAJOR;

Cause Statement: Clear statement of the root cause(s) identified — actionable language indicating what corrective action should target;

Contributing Factors: Material contributing factors identified separately from root cause — to inform broader corrective action consideration;

Evidence Base: Specific evidence supporting cause identification — referenced for audit traceability;

Validation: Indication that RCA conclusions have been independently reviewed and confirmed;

Recommendations: Specific corrective action recommendations addressing identified causes.

RCA documentation is retained as part of the Corrective Action Register entry per BFS-ISMS-006 retention requirements (typically 7 years).

| RCA AVOIDS THE 'TRAINING' DEFAULT:  A common RCA failure is concluding that the root cause is 'inadequate training' or 'awareness gap' for nearly every nonconformity. This is rarely accurate. Training and awareness are layers in defense in depth; their failure indicates that other defenses (process design, technical controls, supervision, documentation) also failed. RCA that ends at 'we need more training' typically has not reached the genuine root cause. CISO Office and Internal Audit specifically challenge training-only conclusions, requiring deeper analysis of why training was insufficient and what process or technical controls should also be enhanced. |

| --- |

# 6.  CORRECTIVE ACTION PROCEDURE

This section establishes the standardized procedure governing corrective action — from identification of nonconformity through verified closure. The procedure aligns with ISO/IEC 27001:2022 Clause 10.2 and is applied uniformly across all Register entries regardless of source.

## 6.1  Six-Step Corrective Action Procedure

Per ISO/IEC 27001:2022 Clause 10.2, when a nonconformity occurs, BFS shall: (a) react to the nonconformity (correction); (b) evaluate the need for action to eliminate the cause; (c) implement any action needed; (d) review the effectiveness; (e) make changes to the ISMS if necessary; and (f) retain documented information. The BFS procedure operationalizes these requirements through six standardized steps:

| Step | Activity | Clause 10.2 Mapping | Lifecycle State |

| --- | --- | --- | --- |

| 1 | Register and React (Correction) | 10.2(a) — react to the nonconformity, including taking action to control and correct it, and dealing with consequences | Identified → In Analysis |

| 2 | Root Cause Analysis | 10.2(b) — evaluate the need for action to eliminate the causes; through review of the nonconformity, determination of the causes, determination of similar nonconformities | In Analysis |

| 3 | Corrective Action Planning | 10.2(b) — evaluate the need for action; 10.2(c) — implement any action needed (planning component) | In Analysis → Action Planned |

| 4 | Corrective Action Execution | 10.2(c) — implement any action needed | Action Planned → Action In Progress → Effectiveness Verification |

| 5 | Effectiveness Verification | 10.2(d) — review the effectiveness of any corrective action taken | Effectiveness Verification → Closed |

| 6 | ISMS Updates and Documentation | 10.2(e) — make changes to the information security management system if necessary; 10.2(f) — retain documented information | Closed (with ISMS updates as separate tracking) |

## 6.2  Step 1: Register and React (Correction)

On identification of a nonconformity, the immediate response addresses both registration (administrative) and reaction (operational symptom mitigation):

Register Entry: Nonconformity registered in the Corrective Action Register per Section 3.3 quality standards within timeline appropriate to source (Internal Audit findings registered on report finalization; incident lessons learned within 30 days of incident closure; etc.);

Initial Triage: CISO Office reviews the entry for completeness, severity reasonableness, and any immediate exposure requiring urgent correction;

Correction (Immediate Symptom Response): For CRITICAL nonconformities, immediate correction is initiated within 7 days. Examples: critical vulnerability is patched; missing access review is performed; unauthorized configuration is reverted. Correction does not address root cause — that follows in subsequent steps;

Containment: Where active exposure exists, containment measures limit ongoing impact while corrective action is developed. For example: temporarily disabling affected functionality; adding compensating controls; increasing monitoring intensity;

Owner Assignment: Action Owner formally assigned with documented acceptance of accountability. Initial Owner from intake may be confirmed or transferred based on appropriate accountability;

Stakeholder Notification: Material nonconformities (CRITICAL, regulatory) trigger stakeholder notification per BFS-ISMS-007 §5.2 communication matrix. CRITICAL nonconformities reported to Board Audit & Risk Committee at next meeting or sooner if material.

## 6.3  Step 2: Root Cause Analysis

RCA is performed per Section 5 calibrated to severity. Output is documented cause identification supporting subsequent action planning. Key activities:

RCA Scope: Define what is being analyzed — the specific nonconformity, related events, broader systemic context if relevant;

Technique Selection: Choose appropriate RCA technique(s) per Section 5.2;

Participant Engagement: Convene RCA participants — Action Owner, subject matter experts, CISO Office facilitator, optional Internal Audit observer;

Analysis Execution: Apply selected technique(s) to identify root cause and contributing factors;

Validation: Independent review of RCA conclusions — particularly important for CRITICAL nonconformities where flawed RCA propagates to flawed corrective action;

Documentation: RCA outputs documented per Section 5.4 standards in the Register entry.

Material RCA conclusions identifying systemic issues beyond the specific nonconformity may warrant identification of additional Register entries — e.g., RCA concluding that 'process X has structural weakness' may identify related nonconformities elsewhere where process X also operates. These additional entries enter the Register in their own right.

## 6.4  Step 3: Corrective Action Planning

Based on RCA outputs, a corrective action plan is developed addressing identified root cause(s). Plan content:

Specific Actions: Concrete actions targeting identified causes — not vague intentions ('improve training') but specific deliverables ('redesign quarterly access review process to add automated forcing function with completion verification');

Action Sequence: Where multiple actions are required, the sequence and dependencies are documented;

Action Owner per Action: Specific role accountable for each action — not necessarily the same as the overall Register entry Action Owner;

Resources Required: Personnel time, budget, technology, external services if applicable;

Target Dates: Specific completion dates for each action and overall closure target — calibrated to severity per Section 4.4;

Success Criteria: How completion will be assessed — criteria for declaring action complete and effective;

Effectiveness Verification Plan: How effectiveness will be verified — independent testing, sampling, observation, KPI monitoring;

Risk Considerations: Any new risks introduced by the corrective action itself; mitigation for those risks;

Approval: Plan approval per authority appropriate to severity — CRITICAL plans approved by CISO; MAJOR by relevant function head + CISO Office concurrence; MINOR by Action Owner with CISO Office register review.

Action plans receive 'Action Planned' lifecycle state on approval. Inadequate plans are returned for revision before approval. Persistently inadequate plans from particular sources or owners trigger discussion with relevant management.

## 6.5  Step 4: Corrective Action Execution

Approved plans are executed by Action Owner with status reporting and oversight per the action's severity and timeline:

Execution per Plan: Action Owner executes actions per the approved plan, maintaining work products and evidence;

Status Reporting: Periodic status updates to CISO Office — frequency per severity (CRITICAL: weekly; MAJOR: bi-weekly; MINOR: monthly);

Variance Management: Material variances from plan (slippage, scope changes, resource issues) trigger plan revision review or escalation per Section 4.5 aging triggers;

Stakeholder Communication: Internal Audit, Management Review, and Board Audit & Risk Committee receive aggregate execution status per the reporting cadence in Section 8;

Evidence Collection: As actions are executed, evidence is collected supporting subsequent effectiveness verification — meeting minutes, change records, training completion records, configuration evidence, etc.

## 6.6  Step 5: Effectiveness Verification

Per ISO/IEC 27001:2022 Clause 10.2(d), BFS shall review the effectiveness of any corrective action taken. Verification confirms that actions actually eliminated the cause — not merely that actions were performed:

| Severity | Verification Approach | Verifier |

| --- | --- | --- |

| CRITICAL | Independent verification through testing, sampling, or observation; recurrence monitoring for minimum 90 days post-completion before closure | Internal Audit or designated independent verifier (not Action Owner or Action Owner's manager) |

| MAJOR | Independent verification through documented review of evidence; spot-check testing where applicable | CISO Office; Internal Audit may participate |

| MINOR | Documented review of completion evidence; reasonableness assessment | CISO Office register manager |

| Recurring | Enhanced verification regardless of original severity — recurrence indicates prior verification inadequate | Internal Audit primary verifier with CISO Office support |

Verification outcomes:

Effective: Verification confirms cause has been eliminated and recurrence prevented. Action transitions to Closed state. Documented closure evidence retained.;

Partially Effective: Some causes addressed, others not. Action returns to Action In Progress with revised plan addressing residual gaps;

Not Effective: Action did not address cause as expected. RCA may be revisited; new corrective action plan developed; potentially severity upgrade if pattern emerges;

Premature Verification: Action completed but insufficient time elapsed for recurrence assessment. Verification deferred until adequate observation period.

## 6.7  Step 6: ISMS Updates and Documentation

Per ISO/IEC 27001:2022 Clause 10.2(e), BFS shall make changes to the ISMS if necessary based on corrective action experience. This step ensures that lessons from corrective actions propagate beyond the specific nonconformity:

ISMS Document Updates: Where corrective action reveals that policy, procedure, or other ISMS document needs revision, formal revision is initiated per BFS-ISMS-006 (Document and Records Control). Specific examples: corrective action revealing policy gap triggers policy revision; corrective action revealing risk treatment plan inadequacy triggers BFS-ISMS-003 update; corrective action revealing control weakness triggers BFS-ISMS-004 SoA update;

Lessons Learned Capture: Insights with broader applicability are captured as Lessons Learned per Section 9.4 and disseminated to relevant audiences;

Risk Register Updates: Where corrective action reveals new risks or changes to existing risks, BFS-ISMS-003 Risk Register is updated;

Awareness Reinforcement: Where lessons have applicability to broader BFS personnel, awareness messaging incorporates lessons per BFS-ISP-014 and BFS-ISMS-007;

Documentation Per Clause 10.2(f): All steps documented in the Register entry — RCA outputs, action plans, execution evidence, verification outcomes, ISMS update status. Documentation is the audit evidence of compliance with Clause 10.2.

## 6.8  Closure Discipline

Closure is consequential — closed entries are removed from active management attention. Closure must reflect genuine resolution, not administrative convenience:

Closure Authority: CRITICAL closure approved by CISO + Internal Audit verifier; MAJOR closure approved by CISO Office + relevant function head; MINOR closure approved by CISO Office register manager;

Closure Evidence Required: Documented effectiveness verification per Section 6.6; not 'action completed' but 'cause eliminated';

Closure Audit: Internal Audit periodically samples closed entries (per BFS-ISMS-008 §4.3.4) verifying that closures reflect genuine resolution rather than premature or unjustified closure. Closure audit findings can themselves be nonconformities;

Re-Open Authority: Closed entries may be re-opened if recurrence is identified or if subsequent evidence indicates closure was premature. Re-opening is documented; the original closure is not deleted but annotated;

Reporting Visibility: Closed entries remain visible in the Register for reporting and traceability — they are not deleted at closure.

# 7.  CONTINUAL IMPROVEMENT (ISO/IEC 27001:2022 CLAUSE 10.1)

Per ISO/IEC 27001:2022 Clause 10.1, BFS shall continually improve the suitability, adequacy, and effectiveness of the ISMS. This section establishes how BFS operationalizes continual improvement — distinct from but complementary to the corrective action procedure of Sections 5-6.

## 7.1  Continual Improvement Distinguished from Corrective Action

Corrective action and continual improvement are related but distinct concepts:

| Dimension | Corrective Action (Clause 10.2) | Continual Improvement (Clause 10.1) |

| --- | --- | --- |

| Trigger | Identified nonconformity | Opportunity for improvement (no nonconformity required) |

| Driver | Reactive — responds to identified problem | Proactive — pursues betterment beyond current state |

| Mandate | Required when nonconformity exists | Required as ongoing ISMS commitment |

| Source | Internal Audit; Management Review; External Audit; Regulatory Examination; Incident; Self-Assessment | Peer benchmarking; framework evolution; technology opportunities; lessons from peer incidents; strategic alignment; Management Review continual improvement decisions |

| Documentation | Formal RCA; corrective action plan; effectiveness verification | Improvement opportunity documentation; implementation tracking; outcome assessment |

| Pace | Severity-driven (CRITICAL 30 days; MAJOR 90 days; MINOR 180 days) | Strategic — calibrated to opportunity scope and ISMS capacity |

| Closure | Cause eliminated and recurrence prevented | Improvement implemented and benefit realized (or opportunity withdrawn) |

Both are essential. An ISMS pursuing only corrective action is reactive — improvements happen only when problems force them. An ISMS pursuing only continual improvement without rigorous corrective action accumulates unresolved nonconformities. Mature ISMS practice integrates both: corrective action ensures issues are resolved; continual improvement advances the ISMS beyond current state.

## 7.2  Continual Improvement Sources

Continual improvement opportunities are surfaced through multiple channels (per BFS-ISMS-009 §4.8):

Peer Benchmarking: Comparison to peer financial institutions in Philippine market and globally on ISMS practices, where information is available;

Industry Framework Evolution: Updates to ISO 27001/27002, NIST CSF, CIS Controls, OWASP frameworks, and other relevant frameworks;

Technology Opportunity Analysis: Emerging technologies enhancing ISMS effectiveness — AI/ML for detection, deception technology, behavioral analytics, automated remediation, post-quantum cryptography preparation;

Process Maturity Advancement: Opportunities to increase ISMS process maturity using maturity framework benchmarks;

Lessons from Peer Incidents: Incidents at peer institutions or adjacent sectors providing learning — what defenses prevented worse outcomes, what control gaps were exposed;

Internal Observations: Improvement opportunities surfaced by ISMS personnel, operational managers, or external assessors not yet rising to formal nonconformity;

Strategic Alignment: Opportunities to better align ISMS with BFS strategic direction (AI-native platform, customer experience evolution, regulatory positioning);

Management Review Decisions: Continual improvement decisions taken at Management Review per BFS-ISMS-009 §6.3.

## 7.3  Continual Improvement Register

Continual improvement opportunities are tracked in a dedicated Continual Improvement Register — separate from but adjacent to the Corrective Action Register. The separation reflects the different management discipline appropriate to each:

Corrective Action Register: Severity-driven timelines; mandatory closure; nonconformity-driven RCA;

Continual Improvement Register: Strategic prioritization; voluntary commitment; opportunity-driven analysis.

Continual Improvement Register entries include:

Opportunity Description: Specific improvement opportunity with current-state and proposed future-state characterization;

Source: Mechanism through which opportunity was identified;

Anticipated Benefits: Specific benefits expected — risk reduction, efficiency gain, capability advancement, compliance strength;

Resource Requirements: Personnel, budget, technology, vendor needs;

Strategic Priority: Calibration of opportunity priority — High / Medium / Low — driven by benefit magnitude vs. resource requirement;

Implementation Approach: Pilot / Full Deployment / Phased / Investigation;

Status: Proposed / Approved / In Progress / Completed / Withdrawn;

Owner: Accountable role for opportunity advancement.

## 7.4  Lessons Learned Process

Lessons learned from corrective actions, incidents, audit findings, and external events are systematically captured for broader application. Lessons learned bridge corrective action (which addresses the specific nonconformity) and continual improvement (which advances ISMS capability).

| Source of Lessons | Capture Mechanism | Dissemination |

| --- | --- | --- |

| CRITICAL/HIGH Incident PIRs (BFS-ISP-017 §5.8) | Lessons learned section of PIR report; cross-functional briefing | Awareness program reinforcement; targeted communications to affected functions; potential ISMS document updates |

| CRITICAL/MAJOR Corrective Actions | Lessons captured at closure; recorded in Lessons Learned database | Quarterly Lessons Learned digest to ISMS function; specific operational team briefings |

| External Events (peer incidents, sector advisories) | CISO Office monitoring; sector ISAC engagement | Targeted threat advisories; awareness reinforcement; tabletop exercise scenarios |

| Regulatory Findings | CCO + CISO Office capture; legal review for sensitivity | Compliance program updates; targeted regulatory awareness; potential policy updates |

| Audit Findings (Internal and External) | Lessons captured at finding closure; cross-audit thematic analysis | Annual lessons-learned report to Internal Audit and CISO Office; ISMS process improvements |

| Penetration Testing / Red Team | Engagement reports; technical lessons | Engineering team briefings; SSDLC enhancements; detection rule development |

Lessons learned dissemination respects classification — specific incident details classified CONFIDENTIAL or RESTRICTED are anonymized for broader sharing. The lesson is preserved; identifying details that could compromise BFS or affected parties are removed.

# 8.  REPORTING AND GOVERNANCE INTEGRATION

Corrective Action Register operations are reported through structured cadence to multiple audiences. Reporting ensures executive and Board visibility while supporting Internal Audit and certification audit evidence requirements.

## 8.1  Reporting Cadence Matrix

| Audience | Cadence | Content | Owner |

| --- | --- | --- | --- |

| Board Audit & Risk Committee | Quarterly + ad-hoc CRITICAL | Aggregate Register state; CRITICAL nonconformities and progress; overdue patterns; ISMS effectiveness implications | CISO with Head of Internal Audit input |

| Information Security Steering Committee | Quarterly | Detailed Register state by source; severity distribution; remediation timeliness; thematic analysis | CISO Office |

| Executive Leadership (CEO + CIO + CRO) | Monthly summary | Material variances; emerging issues; resource implications | CISO Office |

| Management Review (BFS-ISMS-009) | Bi-annual (per BFS-ISMS-009 cadence) | Comprehensive Register analysis as Input 9.3.2(d)(1) per Clause 9.3.2 | CISO Office |

| Internal Audit (BFS-ISMS-008) | Continuous access | Direct Register access for audit verification; periodic summary reports | CISO Office (read access) |

| Action Owners | Real-time + weekly digest | Their assigned actions; status; escalations; closure verification activities | Automated + CISO Office curation |

| External Assurance Providers | On request | Per certification audit and regulatory examination protocols | CISO Office (on request) |

| Regulatory Submissions | Per regulator request | Specific findings remediation status as required by regulatory follow-up | CCO + CISO Office |

## 8.2  Reporting Content Standards

Aggregate reporting content is standardized to support meaningful executive and Board oversight:

Register State Snapshot: Total open entries; distribution by severity (CRITICAL/MAJOR/MINOR); distribution by source; distribution by lifecycle state;

Trend Analysis: Comparison to prior period — increasing or decreasing entry volumes by severity; closure rate trend; aging trend;

CRITICAL Entry Detail: For all open CRITICAL nonconformities — specific descriptions, target dates, current status, executive accountability;

Aging Analysis: Entries by age bucket (0-30 days / 31-90 / 91-180 / >180); patterns suggesting systemic remediation challenges;

Overdue Analysis: Overdue and significantly overdue entries with escalation status;

Recurrence Analysis: Recurring nonconformities indicating prior corrective action inadequacy;

Source Analysis: Distribution across Internal Audit / Management Review / External Audit / Regulatory / Incident / Self-Assessment / Other — patterns indicating which mechanisms are most productive;

Thematic Analysis: Cross-cutting themes appearing across multiple entries — domain concentrations, process patterns, control category patterns;

Closure Quality Metrics: Effectiveness verification outcomes — proportion verified Effective vs. requiring further work.

## 8.3  Integration with Broader ISMS Governance

This procedure is the operational hub through which findings from across the ISMS converge into documented improvement. Integration points:

| Integration Point | Direction | Operational Mechanism |

| --- | --- | --- |

| BFS-ISMS-008 (Internal Audit) | Inbound: audit findings → Register | Audit report finalization triggers Register entry per Section 3.1 |

| BFS-ISMS-008 (Internal Audit) | Outbound: Register → audit verification | Internal Audit independently verifies remediation per BFS-ISMS-008 §4.6; closure audits sample register entries |

| BFS-ISMS-009 (Management Review) | Inbound: Management Review actions → Register | Action items registered within 7 days of Forum per BFS-ISMS-009 §5.6 |

| BFS-ISMS-009 (Management Review) | Outbound: Register status → Management Review Input | Aggregate analysis provided as Clause 9.3.2(d)(1) input per BFS-ISMS-009 §4.5.1 |

| BFS-ISP-017 (Incident Response) | Inbound: PIR lessons → Register | CRITICAL/HIGH incident PIRs producing systemic findings register within 30 days of incident closure |

| BFS-ISMS-001 §11 (Disciplinary) | Inbound: Material policy violations | Where corrective action reveals individual policy violations, HR processes coordinated separately; Register entry addresses systemic remediation |

| BFS-ISMS-003 (Risk Methodology) | Bidirectional | Register findings may identify new risks (Risk Register update); risk treatment plans may generate Register entries when treatment delays |

| BFS-ISMS-004 (SoA) | Outbound: Register findings → SoA | Material control implementation gaps may trigger SoA implementation status updates |

| BFS-ISMS-005 (Objectives) | Outbound: Register patterns → Objectives | Persistent patterns may inform objective-setting (e.g., persistent vulnerability remediation issues drove O8.4 SLA objective) |

| BFS-ISMS-006 (Document Control) | Outbound: Register findings → Document updates | Where corrective action requires policy revision, BFS-ISMS-006 document revision process initiated |

| BFS-ISMS-007 (Communication) | Outbound: Register lessons → Awareness | Lessons learned with broad applicability incorporated into awareness messaging per BFS-ISMS-007 §4.4 |

| External Auditors / Regulators / Certification Body | Outbound: Register evidence → Audit assurance | Register operations are key evidence for certification audit Clause 10.2 compliance and regulatory examination of remediation discipline |

This integration matrix visualizes the central position of corrective action within the ISMS — receiving findings from many sources and propagating improvement to many destinations. The Corrective Action Register is the operational hub through which the ISMS learns and adapts.

# 9.  ROLES AND RESPONSIBILITIES

| Role | Nonconformity and Corrective Action Responsibility |

| --- | --- |

| Board Audit & Risk Committee | Approves this procedure and material revisions. Receives quarterly Corrective Action Register reporting. Engages on CRITICAL nonconformities and material remediation patterns. Approves out-of-cycle escalations. Provides strategic direction on systemic remediation. |

| Chief Executive Officer | Receives Register reporting in monthly executive forum. Resolves cross-functional issues affecting remediation. Approves material resource reallocation supporting CRITICAL remediation. Champions corrective action discipline as ISMS maturity indicator. |

| Chief Information Officer | Receives Register reporting on IT-domain entries. Co-owns IT-domain remediation execution. Resolves IT resource and capacity issues affecting remediation. |

| Chief Information Security Officer | Document owner. Operationally accountable for Corrective Action Register operation. Approves CRITICAL corrective action plans and closures. Reports Register status to executives and Board. Coordinates cross-source integration. Ensures RCA quality. |

| Chief Risk Officer | Receives Register reporting from enterprise risk perspective. Approves risk acceptance decisions in lieu of corrective action per BFS-ISMS-003 §6.5. Coordinates Risk Register updates from corrective action lessons. |

| Chief Compliance Officer | Co-owner of regulatory-source entries. Approves regulatory finding remediation plans before submission to regulators. Coordinates regulator communication on remediation status. Identifies cross-regulatory implications of findings. |

| Data Privacy Officer | Co-owner of RA 10173 / NPC-source entries. Approves privacy-related corrective action plans. Coordinates NPC communication. Ensures privacy implications are addressed in corrective action. |

| Head of Internal Audit | Independently verifies CRITICAL closure effectiveness. Performs closure audits per BFS-ISMS-008 §4.3.4. Provides independent assessment of Register operation as part of ISMS audits. Reports concerns about Register operation to Board Audit & Risk Committee. |

| CISO Office | Operational management of Corrective Action Register. Maintains Register accuracy. Coordinates intake quality. Facilitates RCA for CRITICAL/MAJOR entries. Tracks aging and triggers escalation. Produces aggregate reporting. Coordinates lessons learned dissemination. |

| Action Owners (varies) | Accountable for specific Register entries. Develop corrective action plans. Execute actions per plan. Provide status updates per cadence. Provide closure evidence. Participate in effectiveness verification. |

| Lead Auditors (Internal Audit) | Register entries from their audits. Provide subject matter input to RCA where audit detail is relevant. Verify remediation effectiveness for findings from their audits. |

| Function Heads (varies) | Accountable for remediation within their function. Allocate resources to corrective action execution. Resolve internal capacity or coordination issues. Approve MAJOR corrective action plans within their domain. |

| External Assurance Providers (Certification Body, BSP examiners, NPC, PCI QSA) | Their findings are inbound entries. Receive remediation status updates per their protocols. Verify remediation in subsequent assessments. |

| All BFS Personnel | Identify and report potential nonconformities through documented channels per BFS-ISMS-007 §5.6 communication channels. Cooperate with corrective action execution affecting their function. Apply lessons learned. |

# 10.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Effectiveness of nonconformity and corrective action operation is measured through the following KPIs reviewed quarterly by the CISO Office and reported to the Information Security Steering Committee and Board Audit & Risk Committee. These KPIs feed directly into BFS-ISMS-005 operational objectives (particularly O8.1 — 100% audit findings closed within timelines or formally accepted).

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Register entries with quality intake (per Section 3.3 standards) | 100% | Quarterly |

| RCA performed per severity requirements (Section 5.1) | 100% of CRITICAL/MAJOR with formal RCA | Quarterly |

| RCA quality reviews passed (CISO Office and Internal Audit reviews) | ≥ 90% pass on first review | Quarterly |

| CRITICAL entries closed within 30 days | ≥ 90% | Per entry |

| MAJOR entries closed within 90 days | ≥ 90% | Per entry |

| MINOR entries closed within 180 days | ≥ 90% | Per entry |

| Overall closure timeliness (per BFS-ISMS-005 O8.1) | ≥ 90% within target | Quarterly |

| Effectiveness verification independence — CRITICAL/MAJOR verified by independent verifier | 100% | Per closure |

| Closure quality — entries closed without re-opening | ≥ 95% | Quarterly |

| Recurrence rate — same nonconformity recurring after closure | < 10% of total entries | Annual |

| Severity downgrades requiring documented justification | 100% | Per downgrade |

| Quarterly Board reporting on Register state delivered on schedule | 100% | Quarterly |

| Material CRITICAL nonconformities reported to Board Chair within 7 days of identification | 100% | Per CRITICAL |

| Lessons learned captured and disseminated for CRITICAL closures | 100% | Per CRITICAL closure |

| Continual Improvement Register entries advanced (any progress) within 90 days of approval | ≥ 75% | Quarterly |

| Internal Audit closure verification — sampling of closed entries | Per BFS-ISMS-008 audit programme | Annual audit cycle |

| Risk acceptance documented per BFS-ISMS-003 §6.5 where chosen in lieu of action | 100% | Per acceptance |

| Cross-source thematic analysis performed | Quarterly | Quarterly |

## 10.2  Internal Audit Verification

Internal Audit (per BFS-ISMS-008) verifies corrective action operation through:

Annual sampling-based audit of closed entries — verifying that closures reflect genuine resolution rather than premature or unjustified closure;

RCA quality review — sampling RCA outputs to verify that root cause analysis reaches genuine root causes rather than apparent symptoms;

Effectiveness verification audit — verifying that effectiveness verification is genuinely independent and adequate;

Recurrence pattern analysis — identifying recurring nonconformities that indicate inadequate prior corrective action;

Aging analysis — verifying that aging entries trigger escalation per Section 4.5;

Identification of corrective action operation nonconformities for tracking through this Register itself (recursive but appropriate).

## 10.3  External Audit Evidence

ISO 27001 certification body audits specifically examine corrective action operation as evidence of Clauses 10.1 and 10.2 compliance:

Register state and aggregate metrics demonstrate operational maturity;

Specific entry trace — auditor selects sampled entries and traces from identification through closure verifying procedure compliance;

Recurrence rate is a key indicator — low recurrence indicates effective corrective action; high recurrence indicates corrective action is symptomatic rather than addressing root cause;

Closure quality — auditor examines closed entries for genuine resolution evidence;

Documentation completeness per Clause 10.2(f) requirements.

Strong corrective action operation provides robust certification audit evidence. Weak corrective action operation — accumulated overdue entries, low recurrence discipline, premature closures, inadequate RCA — provides weak certification evidence regardless of other ISMS strengths.

# 11.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Nonconformity and Corrective Action Procedure aligned with ISO/IEC 27001:2022 Clauses 10.1 (Continual Improvement) and 10.2 (Nonconformity and Corrective Action). Establishes unified Corrective Action Register receiving entries from 15 distinct nonconformity sources. Distinguishes correction (symptom fix) from corrective action (cause remediation). Mandates RCA per severity with 7 documented techniques. Six-step procedure operationalizes Clause 10.2 sub-clauses (a) through (f). Severity-calibrated remediation timelines (CRITICAL 30/MAJOR 90/MINOR 180 days). Effectiveness verification by independent verifier required for CRITICAL/MAJOR. Continual improvement framework distinct from corrective action. Comprehensive integration matrix with all other BFS-ISMS framework documents. This document completes the BFS-ISMS framework at 10 of 10 documents — closing the Plan-Do-Check-Act cycle. | IT Head / Infrastructure Team / Internal Audit | IT Head / Head of Internal Audit |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Clauses 10.1 and 10.2 Requirements Mapping

ISO/IEC 27001:2022 Clauses 10.1 and 10.2 specify multiple sub-requirements. The table below confirms how this Procedure fulfills each, providing direct evidence for ISO 27001 certification audit.

| Clause | Requirement | How This Procedure Fulfills |

| --- | --- | --- |

| 10.1 | The organization shall continually improve the suitability, adequacy, and effectiveness of the information security management system | Section 7 (Continual Improvement) operationalizes Clause 10.1; Continual Improvement Register and Lessons Learned process; integration with Management Review (BFS-ISMS-009) where continual improvement decisions are made |

| 10.2(a) | When a nonconformity occurs, the organization shall react to the nonconformity, and as applicable: (1) take action to control and correct it; (2) deal with the consequences | Section 6.2 (Step 1: Register and React) addresses both: immediate correction within 7 days for CRITICAL; consequence handling through containment, stakeholder notification, and operational mitigation |

| 10.2(b) | Evaluate the need for action to eliminate the cause(s) of the nonconformity, in order that it does not recur or occur elsewhere, by: (1) reviewing the nonconformity; (2) determining the causes of the nonconformity; (3) determining if similar nonconformities exist, or could potentially occur | Section 5 (Root Cause Analysis Methodology) addresses cause determination with multiple techniques. Section 6.3 Step 2 includes scope assessment for similar nonconformities elsewhere — RCA conclusions identifying systemic issues trigger additional Register entries |

| 10.2(c) | Implement any action needed | Section 6.4 (Step 3: Corrective Action Planning) and Section 6.5 (Step 4: Corrective Action Execution); approved plans with specific actions, owners, target dates; structured execution with status reporting |

| 10.2(d) | Review the effectiveness of any corrective action taken | Section 6.6 (Step 5: Effectiveness Verification) — independent verification calibrated to severity; verification outcomes (Effective / Partially Effective / Not Effective / Premature) drive next steps; recurrence monitoring required for CRITICAL |

| 10.2(e) | Make changes to the information security management system if necessary | Section 6.7 (Step 6: ISMS Updates and Documentation) — explicit pathways for ISMS document updates per BFS-ISMS-006; Risk Register updates per BFS-ISMS-003; awareness reinforcement per BFS-ISMS-007; lessons learned dissemination |

| 10.2(f) (1st bullet) | The organization shall retain documented information as evidence of the nature of the nonconformities and any subsequent actions taken | Section 4 lifecycle states with documented transitions; Section 6.7 documentation requirements; Corrective Action Register entries retained per BFS-ISMS-006 (typically 7 years); RCA documentation, action plans, execution evidence, verification outcomes all retained |

| 10.2(f) (2nd bullet) | The organization shall retain documented information as evidence of the results of any corrective action | Section 6.6 effectiveness verification documentation; Section 6.8 closure discipline including evidence requirements; closed entries remain visible in Register for traceability |

| 10.2 (general) | Corrective actions shall be appropriate to the effects of the nonconformities encountered | Section 4.4 severity-calibrated target remediation timelines; Section 5.1 RCA rigor calibrated to severity; Section 6.6 verification calibrated to severity — proportionate corrective action discipline ensuring response appropriate to consequence |

# APPENDIX B:  Corrective Action Quick Reference

Single-page reference for personnel involved in nonconformity identification, remediation, or oversight. Detailed provisions in the body of this procedure.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What is a nonconformity? | Non-fulfillment of a requirement — BFS policy, ISO 27001 requirement, regulatory requirement, or contractual commitment. See Section 2.1 definitions. |

| How is correction different from corrective action? | Correction fixes the immediate symptom; corrective action fixes the root cause. ISO 27001 requires both. The critical distinction note in Section 2 elaborates. Without corrective action, nonconformities recur. |

| Where do I report a potential nonconformity? | Through documented channels — your manager, CISO Office, Internal Audit, or whistleblower channel for sensitive matters per BFS-ISMS-007 §5.6. CISO Office reviews submissions and registers within 14 days. |

| Who owns corrective action for a finding from my function? | Function head accountable; specific Action Owner assigned at intake; CISO Office coordinates. See Section 9 roles. |

| How long do I have to remediate? | CRITICAL: 30 days; MAJOR: 90 days; MINOR: 180 days. Includes effectiveness verification, not just action completion. See Section 4.4. |

| What is RCA and when do I need to do it? | Root Cause Analysis identifies why the nonconformity occurred. CRITICAL/MAJOR require formal RCA; MINOR requires lightweight analysis; Recurring requires enhanced RCA. See Section 5. |

| How do I prove my corrective action worked? | Effectiveness verification by independent verifier (not you). CRITICAL: Internal Audit; MAJOR: CISO Office; MINOR: documented review. Closure requires verification outcome 'Effective'. See Section 6.6. |

| What if my action took longer than the target date? | Aging escalation triggers per Section 4.5: At Risk → Manager escalation; Overdue → C-level escalation; Significantly Overdue → Board reporting. Target date extension requires documented justification. |

| What if the same nonconformity comes back after I closed it? | Recurrence triggers severity upgrade one level (MINOR → MAJOR; MAJOR → CRITICAL) per Section 4.3. Enhanced RCA required to identify why prior corrective action did not prevent recurrence. |

| Can I close an entry by accepting the risk instead of remediating? | Yes, with appropriate authority per BFS-ISMS-003 §6.5. Risk acceptance is documented; periodic re-validation required; not a means of avoiding action for unacceptable residual risk. |

| Where does my entry go after closure? | Remains in Register for traceability and reporting. Not deleted. May be re-opened if recurrence identified or if subsequent evidence indicates premature closure. |

| How does this connect to other ISMS documents? | Section 8.3 integration matrix. Receives findings from BFS-ISMS-008 (Audit), BFS-ISMS-009 (Mgmt Review), BFS-ISP-017 (Incidents), regulatory examinations, etc. Propagates improvement to BFS-ISMS-003 (Risk), BFS-ISMS-004 (SoA), BFS-ISMS-005 (Objectives), BFS-ISMS-006 (Document Updates), BFS-ISMS-007 (Awareness). |

BFS-ISMS-010  |  Nonconformity and Corrective Action Procedure  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. The Final Document of the BFS-ISMS Framework — Closing the Plan-Do-Check-Act Cycle. Authorized Internal, Audit, and Certification Body Use Only.
