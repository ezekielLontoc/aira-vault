---
title: "BFS-ISMS-006-Document-and-Records-Control"
source_file: "02-PPG-ISMS-ISO-27001/Procedures/Document-and-Records-Control/BFS-ISMS-006-Document-and-Records-Control.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:42Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Procedures"
  - "Document-and-Records-Control"
aliases:
  - "BFS-ISMS-006-Document-and-Records-Control"
creator: "Un-named"
created: "2026-04-27T06:52:00Z"
modified: "2026-04-28T04:01:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>DOCUMENT AND<br>RECORDS CONTROL<br>Document Lifecycle, Records Management, Version Control, Approval Workflows, Distribution, Retention, and Secure Disposal of All BFS ISMS Documentation<br>Policy Reference: BFS-ISMS-006<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>ISO/IEC 27001:2022 Clause 7.5 Mandated Procedure<br>BSP Records Retention  \|  RA 10173 Data Retention  \|  PCI DSS v4.0 Req. 12.10<br>The meta-procedure governing how every BFS-ISMS and BFS-ISP document is managed throughout its lifecycle |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Document and Records Control Procedure |

| --- | --- |

| Policy Reference | BFS-ISMS-006 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS document management infrastructure, regulatory retention requirements, or ISMS document architecture |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — ISMS Framework Document. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) — particularly §6 (Policy Hierarchy and ISMS Document Architecture) |

| Companion Documents | All BFS-ISMS documents (subject to control by this procedure); all BFS-ISP documents (subject to control by this procedure); BFS-ISP-003 (Data Protection — retention and disposal); BFS-ISP-008 (Audit Log Management — records retention) |

| Framework Alignment | ISO/IEC 27001:2022 Clause 7.5 (Documented Information) — including 7.5.1 (General), 7.5.2 (Creating and Updating), 7.5.3 (Control of Documented Information); ISO/IEC 27002:2022 (relevant Annex A controls A.5.33, A.5.37, A.7.10, A.8.10) |

| Regulatory Reference | BSP records retention requirements (per BSP Manual of Regulations); Philippine Data Privacy Act RA 10173 retention principles; PCI DSS v4.0 Requirement 12.10.1 retention; RA 8791 General Banking Law records retention; SEC reporting requirements where applicable |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Internal Audit Head |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the procedure governing the management of all documented information within the scope of the BFS Financial Services Information Security Management System (ISMS). It is the meta-procedure — the document that governs how every other BFS-ISMS framework document and BFS-ISP technical control policy is created, identified, formatted, reviewed, approved, distributed, accessed, retrieved, retained, and ultimately disposed of.

This document exists to fulfill the requirements of ISO/IEC 27001:2022 Clause 7.5 (Documented Information), comprising three sub-clauses:

Clause 7.5.1 (General) — requires BFS to determine the documented information needed for ISMS effectiveness, including documents required by ISO 27001 itself and any additional documents BFS determines necessary;

Clause 7.5.2 (Creating and Updating) — requires BFS to ensure appropriate identification and description, format and media, and review and approval for suitability and adequacy when creating or updating documented information;

Clause 7.5.3 (Control of Documented Information) — requires BFS to control documented information to ensure availability, suitability for use, adequate protection, distribution control, version control, retention, and disposition. Particular attention to control of documents of external origin needed for ISMS planning.

Beyond ISO 27001 compliance, this procedure fulfills regulatory records retention obligations: BSP requirements for retention of records related to banking operations and IT risk management; RA 10173 retention principles requiring personal data not be retained beyond purpose limitation; PCI DSS v4.0 Requirement 12.10.1 specifying minimum retention periods for security-relevant records; RA 8791 General Banking Law records retention; and SEC and other regulatory retention obligations applicable to BFS operations.

The integrity of an ISMS depends fundamentally on the integrity of its documentation. An ISO 27001 certification audit will examine: whether the right documents exist, whether they are current, whether they were properly approved, whether they are accessible to those who need them, whether obsolete versions have been removed from circulation, whether records demonstrate operational compliance with documented procedures, and whether retention and disposal are governed appropriately. This procedure ensures these expectations are met systematically rather than ad-hoc.

The specific objectives of this document are to:

Establish the BFS document classification scheme and the four-tier document hierarchy operationalizing BFS-ISMS-001 §6;

Specify the document lifecycle from creation through disposal, with defined review and approval authority at each transition;

Mandate version control, change control, and document register maintenance ensuring that the current state of every ISMS document is authoritative and traceable;

Define records retention periods and disposal requirements aligned with regulatory obligations and operational needs;

Establish controls protecting documented information from loss of integrity, unauthorized changes, and unauthorized disclosure;

Govern documents of external origin (regulator issuances, vendor documentation, standards, contracts) needed for ISMS planning and operation;

Provide audit-friendly documentation of the document control framework that ISO 27001 certification bodies, regulators, and internal audit can examine to verify Clause 7.5 compliance.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

For the purposes of this document, the following definitions apply:

| Term | Definition |

| --- | --- |

| Documented Information | Information required to be controlled and maintained by BFS and the medium on which it is contained. Includes both 'documents' (intent or rules — e.g., policies, procedures) and 'records' (evidence of activity — e.g., audit logs, training completion records, approvals). (ISO/IEC 27000:2018) |

| Document | A documented expression of intent, rule, requirement, or specification — typically subject to revision and version control. Examples: BFS-ISMS-001, BFS-ISP-007, technical standards, work instructions, templates. |

| Record | Documented evidence that an activity occurred, a state existed, or an obligation was met. Records are typically produced once and not revised — examples: signed approval sheets, audit logs, training completion records, incident reports, meeting minutes. |

| Internal Origin | Documents created within BFS, including policies, procedures, standards, work instructions, plans, templates, and records produced through BFS operations. |

| External Origin | Documents created outside BFS but used by BFS for ISMS planning or operation — including ISO standards, regulatory issuances (BSP circulars, NPC issuances, PCI DSS), vendor documentation, contracts received from third parties, advisory reports. |

| Version | A specific iteration of a document, identified by a version number. The current authoritative version is the 'controlled' version. Earlier versions are 'historical' or 'obsolete'. |

| Document Register | The authoritative inventory of all controlled BFS documents — title, reference, owner, current version, classification, status, last review date, next review due, distribution. Maintained in the BFS Document Management System. |

| Records Register | The catalog of records produced through BFS ISMS operations — including record type, source process, retention period, retention location, owner, disposal method. Distinct from Document Register because records have different lifecycle properties. |

| Document Lifecycle | The complete sequence of states a document passes through from creation to disposal: Draft → Review → Approved/Active → Under Revision → Superseded → Archived → Disposed. |

| Classification | The sensitivity level assigned to a document determining handling, access, encryption, retention, and disposal requirements. BFS uses four classifications: PUBLIC, INTERNAL, CONFIDENTIAL, RESTRICTED. |

| Retention Period | The minimum duration that documented information must be retained before disposal is permissible. Retention periods derive from regulatory obligations, contractual requirements, and operational needs. |

| Disposal | The act of removing documented information from BFS systems and physical custody at the end of its retention period. Disposal must be appropriate to classification — secure destruction for confidential, RESTRICTED requires certificate of destruction. |

| Master Copy | The single authoritative version of a document that all other distributions reference. The Master Copy resides in the BFS Document Management System with version control. |

| Controlled Distribution | Document distribution that is tracked — recipients are recorded, distributed copies are subject to recall on supersession, and obsolete copies are tracked to ensure withdrawal from circulation. |

| Uncontrolled Distribution | Document distribution that is not tracked — typically applies to PUBLIC documents (e.g., BFS-ISMS-001 distributed externally) where currency control by the recipient is not BFS's responsibility. Documents may be marked 'Uncontrolled if Printed' for this scenario. |

| Document Owner | The named individual or role accountable for a specific document — its accuracy, currency, periodic review, and supersession when needed. Distinct from author (who drafts) and approver (who authorizes issuance). |

| Document Custodian | The role responsible for the operational maintenance of documents — typically the CISO Office for ISMS documents — handling version control, distribution, register maintenance, archival, and disposal coordination. |

## 2.2  Scope

This procedure applies to all documented information within the BFS ISMS scope (per BFS-ISMS-002). Specifically:

### 2.2.1  In-Scope Documented Information

All BFS-ISMS framework documents (BFS-ISMS-001 through BFS-ISMS-010) and any future framework additions;

All BFS-ISP technical and operational policies (BFS-ISP-001 through BFS-ISP-029 and any future additions);

All BFS technical standards, procedures, work instructions, runbooks, and operational templates supporting ISMS operations;

All ISMS records — internal audit reports, management review minutes, risk register entries, training completion records, incident records, exception register entries, document approval records, distribution records;

Documents of external origin needed for ISMS planning — ISO/IEC standards (27001, 27002, 27005, 27017, 27018, 27701, 31000); BSP circulars and issuances; NPC circulars and issuances; PCI DSS standards and supplementary guidance; vendor security documentation and contracts;

Architecture and design documents supporting ISMS implementation including the MSAMS Consolidated Architecture Blueprint and related artifacts;

Records produced through subordinate BFS-ISP policies — vulnerability scan reports, audit logs, penetration test reports, risk assessments, incident reports, exception requests.

### 2.2.2  Out-of-Scope Documented Information

General BFS business documents not related to information security (e.g., financial accounting records, customer transaction records, marketing materials) — governed by other BFS document control frameworks;

Personal documents of BFS employees (e.g., personal calendar items, draft personal notes);

Customer-generated content held in BFS customer service contexts (e.g., customer email content, customer-uploaded documents) — governed by BFS-ISP-003 (Data Protection) for personal data aspects, and customer service policies for content aspects;

Software source code per se — code is governed by BFS-ISP-016 (Application Software Security) including version control through Git infrastructure. The application security policies and SSDLC documentation governing the source code are within this procedure's scope; the code itself is governed separately.

# 3.  DOCUMENT HIERARCHY AND CLASSIFICATION

This section establishes the structural framework for BFS ISMS documentation — the four-tier document hierarchy that organizes the document portfolio and the four-level classification scheme that governs handling requirements. Both frameworks are foundational to all subsequent provisions of this procedure.

## 3.1  Four-Tier Document Hierarchy

Per BFS-ISMS-001 §6.1, BFS documentation is organized into four tiers reflecting the level of authority, abstraction, and approval required. This procedure operationalizes that hierarchy with specific identification, naming, format, and approval requirements.

| Tier | Document Type | Examples / Reference Pattern | Approval Authority |

| --- | --- | --- | --- |

| TIER 1 | Top-Level Policy | BFS-ISMS-001 | Board of Directors (resolution) |

| TIER 2 | ISMS Framework Documents | BFS-ISMS-002 through BFS-ISMS-010 | Board / Executive Committee per document scope |

| TIER 2 | Subordinate IS Policies | BFS-ISP-001 through BFS-ISP-029 | CISO + relevant executive co-approvers per policy |

| TIER 3 | Standards | BFS-STD-XXX | CISO Office (technical standards committee) |

| TIER 3 | Procedures | BFS-PROC-XXX | Process owner + CISO Office review |

| TIER 4 | Work Instructions | BFS-WI-XXX | Functional manager |

| TIER 4 | Templates | BFS-TPL-XXX | Functional manager + CISO Office review |

| TIER 4 | Runbooks | BFS-RB-XXX | Functional manager |

| TIER 4 | Checklists | BFS-CL-XXX | Functional manager |

Subordinate documents shall not contradict or weaken provisions of higher-tier documents. The hierarchy enforcement principle of BFS-ISMS-001 §6.1 is operationalized through this procedure's review and approval requirements — every subordinate document review checks consistency with the parent document(s).

## 3.2  Naming Convention

All BFS controlled documents follow a consistent naming convention enabling unambiguous identification:

| STANDARD NAMING CONVENTION:  Format: BFS-{TYPE}-{NNN}-{Descriptive-Title}  Examples:   BFS-ISMS-001-Top-Level-Information-Security-Policy   BFS-ISP-007-Vulnerability-Management-Policy   BFS-STD-001-Approved-Cryptographic-Algorithms   BFS-PROC-001-Vulnerability-Remediation-Procedure   BFS-WI-001-Patch-Deployment-Work-Instruction   BFS-TPL-001-Risk-Assessment-Template   BFS-RB-001-Ransomware-IR-Runbook  Version suffix may be added in archive contexts: BFS-ISP-007-v1.2-Archived |

| --- |

Naming conventions ensure: (a) unambiguous reference between documents (e.g., 'see BFS-ISP-007 §5.3'); (b) sortable inventory listings; (c) clear distinction between document types; and (d) certification audit traceability where auditors trace requirements through the document portfolio.

## 3.3  Information Classification Scheme

Per BFS-ISP-003 §5.2, BFS classifies information into four sensitivity levels. This procedure operationalizes the classification scheme as it applies to ISMS documentation specifically:

| Classification | Definition | Distribution | Handling Requirements |

| --- | --- | --- | --- |

| PUBLIC | Approved for external disclosure; loss of confidentiality has no adverse impact | Internet, partners, customers, regulators, certification bodies, prospective clients | No encryption required; standard storage; uncontrolled distribution acceptable; mark 'PUBLIC' |

| INTERNAL | Intended for BFS personnel; loss of confidentiality has minor adverse impact | All BFS employees and contractors with general access need | Encryption in transit; standard storage; controlled distribution within BFS; mark 'INTERNAL' |

| CONFIDENTIAL | Sensitive operational information; loss of confidentiality has material adverse impact | Need-to-know within BFS; specific external parties under NDA (auditors, certification bodies, regulators) | Encryption at rest and in transit; controlled distribution with tracking; access logging; mark 'CONFIDENTIAL' |

| RESTRICTED | Highly sensitive information; loss of confidentiality has severe adverse impact (existential, regulatory, legal) | Specifically named individuals only; explicit access approval required per access | Strong encryption with HSM-backed keys; access logging with non-repudiation; physical separation where possible; mark 'RESTRICTED' |

## 3.4  Default Classifications for ISMS Documents

To support consistent classification of ISMS documents, BFS applies the following default classifications. Document owners may classify higher (more restrictive) where specific content warrants, but classification cannot be lower than the default.

| Document Category | Default Classification | Rationale |

| --- | --- | --- |

| BFS-ISMS-001 (Top-Level Policy) | PUBLIC | Designed for external disclosure as evidence of BFS commitment per BFS-ISMS-001 §10.2 |

| BFS-ISMS-002 through BFS-ISMS-010 | CONFIDENTIAL | Operational ISMS framework with specific scope, methodology, and audit-relevant detail |

| BFS-ISP-001 through BFS-ISP-029 | CONFIDENTIAL | Technical control specifications with operational detail useful to threat actors if disclosed |

| Risk Register (per BFS-ISMS-003) | CONFIDENTIAL | Specific BFS risks and treatment status — knowledge of specific risks could be exploited |

| Statement of Applicability (BFS-ISMS-004) | CONFIDENTIAL | Comprehensive control implementation status across all 93 Annex A controls |

| Internal Audit Reports | CONFIDENTIAL | Findings of control gaps and remediation needs |

| Penetration Test Reports | CONFIDENTIAL | Specific exploitable vulnerabilities and attack paths |

| Incident Reports (CRITICAL/HIGH) | CONFIDENTIAL | Investigation details and lessons learned |

| Forensic Evidence (incident-related) | RESTRICTED | Legal proceedings implications; chain of custody requirements; potential for harm if disclosed |

| BSP Examination Reports | RESTRICTED | Regulatory communication subject to specific confidentiality obligations |

| Source Code (per BFS-ISP-016) | CONFIDENTIAL or RESTRICTED | Default CONFIDENTIAL; specific high-sensitivity components (cryptography, payment, AI safety) RESTRICTED |

| MSAMS Architecture Blueprint | CONFIDENTIAL | Detailed architectural intelligence on BFS AI-native platform |

| Training Records (BFS-ISP-014) | INTERNAL | Personnel training completion records; PII content |

| Vendor Contracts | CONFIDENTIAL | Commercial terms; security obligations; potential for misuse if disclosed |

| Standards (BFS-STD-XXX) | INTERNAL or CONFIDENTIAL | Technical specifications; default INTERNAL unless content warrants CONFIDENTIAL |

| Procedures (BFS-PROC-XXX) | INTERNAL | Operational steps for routine activities |

| Work Instructions (BFS-WI-XXX) | INTERNAL | Step-by-step operational guidance |

## 3.5  Mandatory Document Identification Elements

Every controlled BFS ISMS document — regardless of tier — shall display the following identification elements on the cover page or first content page:

Document Title — descriptive title (e.g., 'Vulnerability Management Policy');

Document Reference — unique identifier per the naming convention (e.g., 'BFS-ISP-007');

Version Number — current version (e.g., 'v1.0', 'v1.2', 'v2.0');

Classification — visibly marked classification level (PUBLIC / INTERNAL / CONFIDENTIAL / RESTRICTED);

Effective Date — date the current version became effective;

Review Cycle — frequency of mandatory review (typically annual);

Document Owner — named role accountable for document accuracy and currency;

Approval Status — Draft / Under Review / Approved – Active / Superseded / Archived.

Documents lacking these mandatory identification elements are considered uncontrolled and shall not be relied upon for ISMS purposes. The Document Custodian (CISO Office) verifies presence of these elements before assigning controlled status.

# 4.  DOCUMENT LIFECYCLE

Every BFS ISMS document passes through a defined lifecycle from initial creation through ultimate disposal. This section establishes the lifecycle stages, transitions, and authority required at each stage. Lifecycle compliance is verified through internal audit and is examined during ISO 27001 certification audit.

## 4.1  Lifecycle States

| State | Description | Permitted Transitions |

| --- | --- | --- |

| Draft | Document under development; not yet reviewed or approved; not authoritative for operational use | → Under Review (when author submits for review); → Cancelled (if abandoned) |

| Under Review | Document submitted for review by designated reviewers; comments and changes incorporated; not yet approved | → Draft (if substantial changes needed); → Approved – Active (when approval obtained); → Cancelled |

| Approved – Active | Document is the current authoritative version; in operational use; subject to scheduled review | → Under Revision (when revision begins); → Superseded (when replaced by newer version); → Archived (when no longer applicable) |

| Under Revision | Active document undergoing revision; current version remains operational until new version approved | → Approved – Active (when revision approved as new version); revision triggers replacement of prior version with new version |

| Superseded | Document replaced by a newer version; retained for historical reference but not authoritative | → Archived (after operational reference period) |

| Archived | Document removed from active circulation but retained for retention period; non-operational | → Disposed (at end of retention period) |

| Disposed | Document securely destroyed at end of retention period; entry retained in Document Register for traceability | No further transitions; entry remains in register as historical record |

| Cancelled | Draft or Under Review document abandoned without ever achieving Approved – Active status | No further transitions; entry retained in register if material to traceability |

## 4.2  Document Creation Process

Creation of new BFS ISMS documents follows a standardized process ensuring quality, consistency, and proper authorization.

Need Identification: A document need is identified through risk assessment, audit findings, regulatory changes, business changes, or improvement initiatives. The need is registered with the CISO Office, which determines: (a) whether an existing document covers the need (preferring revision over creation); (b) appropriate tier and document type; (c) preliminary owner assignment; (d) target completion timeline.

Author Assignment: An author is assigned by the Document Owner, typically a subject matter expert in the relevant domain. Author may be supported by additional contributors. CISO Office provides templates appropriate to document tier.

Drafting: The author develops the document using the standard BFS template appropriate to the tier (TIER 1/2 ISMS template, TIER 2 BFS-ISP template, TIER 3 standard or procedure template, TIER 4 work instruction template). All mandatory identification elements per §3.5 are included from the outset.

Internal Author Review: The author conducts a self-review checking: completeness, alignment with parent documents (BFS-ISMS-001 and any TIER 2 documents), consistency with companion documents, ISO 27001 requirement coverage where applicable, and clarity for the intended audience.

Subject Matter Review: The draft is circulated to designated subject matter reviewers including: technical reviewers (peers in the relevant domain), legal review (for documents with regulatory or legal content), DPO review (for documents involving personal data), and CISO Office review (for ISMS consistency). Review comments are tracked and resolved.

Stakeholder Review: For documents affecting multiple business units or functions, draft is circulated to affected stakeholders for input. Substantive concerns are addressed before approval.

Final Approval: Approved by the authority specified for the document tier per §3.1. Approval includes signed approval sheet (or digital equivalent in BFS Document Management System) recording approver name, role, date, and signature/digital approval. For TIER 1 documents, Board approval is required; for TIER 2 documents, the specific co-approver panel signs off.

Issuance: CISO Office assigns final document reference, validates mandatory identification elements, marks document Approved – Active, updates Document Register, and distributes per the document's distribution profile.

Communication: New document availability is communicated to all relevant audiences. For documents affecting all BFS personnel, communication may include all-staff announcement, training updates, and acknowledgment requirements.

## 4.3  Document Review and Revision

Approved – Active documents are subject to scheduled review at the cycle specified in their Document Control Information (typically annual). Out-of-cycle review is triggered by material changes to the document's domain.

Review Schedule Tracking: CISO Office maintains forward calendar of scheduled reviews. Document Owners are notified 60 days before review due date.

Review Trigger Assessment: Document Owner assesses whether review is needed (current version remains accurate and applicable) or revision is needed (changes required). Either outcome triggers the formal review.

Review-Only Outcome: If no changes are needed, Document Owner records the review with explicit confirmation that no revision is required. Document Register is updated with review date and next review due date. The document remains in Approved – Active state at the same version.

Revision-Required Outcome: If changes are needed, the document transitions to Under Revision state. Author (often the same as Document Owner) develops the revision following an abbreviated version of the creation process — incorporating only the changes rather than full re-development.

Revision Approval: Revisions follow the same approval authority as the original document. Material revisions affecting policy substance require full co-approver re-approval; minor editorial corrections may be approved at the CISO Office level only (with notification to the original co-approvers).

Version Increment: Approved revisions increment the version number. Material revisions increment the major version (v1.0 → v2.0); editorial or clarifying revisions increment the minor version (v1.0 → v1.1). The prior version transitions to Superseded state.

Distribution Update: New version is distributed per the controlled distribution list. Recipients of obsolete versions are notified that the prior version is superseded and the new version is now authoritative.

## 4.4  Out-of-Cycle Review Triggers

Out-of-cycle review is triggered by — and shall not be deferred to the scheduled review when — any of the following events occur:

Material change to ISO/IEC 27001 (e.g., publication of a new edition of the standard);

Material change to applicable regulations (new BSP circulars, NPC issuances, PCI DSS revisions);

Material findings from internal audit, ISO 27001 certification audit, regulatory examination, or external assessment;

Significant security incident (CRITICAL/HIGH) revealing gaps the document should address;

Material changes to BFS technology landscape, business model, or organizational structure affecting document applicability;

Material changes to BFS-ISMS-001 (Top-Level Policy), BFS-ISMS-002 (Scope), BFS-ISMS-003 (Risk Methodology), or BFS-ISMS-004 (SoA) that have downstream implications;

Identification of inconsistency between a subordinate document and a higher-tier document — requiring subordinate revision.

## 4.5  Supersession and Archival

When a new version replaces a prior version, the prior version is superseded. The supersession process:

New version achieves Approved – Active status with new version number;

Prior version is marked Superseded with date of supersession and reference to superseding version;

Distribution recall is initiated for prior version: notifications to recipients, update of online portals, removal from operational systems referenced by the document;

After 90 days of supersession (operational reference period), prior version transitions to Archived;

Archived versions are retained per the retention period specified in §6 (typically 7 years for ISMS documents);

At end of retention, archived versions are securely disposed per §6.5.

Document Register entries persist beyond document disposal as historical records of document existence and lifecycle, supporting traceability for audit and legal purposes.

# 5.  POLICY STATEMENTS

The following policy statements are mandatory for all BFS personnel and external parties handling BFS ISMS documented information.

## 5.1  Document Identification and Control

PS-1.1  Every BFS ISMS document shall display all mandatory identification elements per §3.5 — title, reference, version, classification, effective date, review cycle, owner, and approval status — on the cover page or first content page.

PS-1.2  Every BFS ISMS document shall be assigned to the appropriate tier (TIER 1 through TIER 4) per §3.1 and follow the corresponding naming convention per §3.2. Documents lacking proper identification are considered uncontrolled and shall not be relied upon for ISMS purposes.

PS-1.3  Every BFS ISMS document shall be classified per §3.3 (PUBLIC / INTERNAL / CONFIDENTIAL / RESTRICTED) with classification visibly marked. Default classifications per §3.4 shall be applied unless the Document Owner determines higher classification is warranted by specific content.

PS-1.4  All controlled BFS ISMS documents shall be registered in the BFS Document Register maintained by the CISO Office. The Document Register is the authoritative inventory of ISMS documentation and shall reflect current state at all times.

PS-1.5  Documents in Draft, Under Review, or Cancelled states shall not be relied upon for operational decisions. Operational use requires Approved – Active state. Use of Draft or Superseded documents for operational decisions is a policy violation.

## 5.2  Document Creation, Review, and Approval

PS-2.1  New BFS ISMS documents shall be created following the process in §4.2: need identification, author assignment, drafting, internal review, subject matter review, stakeholder review, final approval, issuance, and communication.

PS-2.2  Document approval shall be by the authority specified for the document's tier per §3.1. TIER 1 documents require Board approval; TIER 2 documents require the specific co-approver panel; TIER 3 documents require CISO Office or process owner approval; TIER 4 documents require functional manager approval.

PS-2.3  Approval shall be documented through signed approval sheets (or digital equivalent in BFS Document Management System) recording approver name, role, date, and approval signature. Verbal approval is not sufficient and shall not be accepted.

PS-2.4  Material revisions to BFS-ISMS-001 require full re-approval by the Board of Directors. Material revisions to other TIER 2 documents require re-approval by the original co-approver panel. Editorial revisions may be approved at CISO Office level with notification to original co-approvers.

PS-2.5  Subordinate documents shall not contradict or weaken provisions of higher-tier documents. Where conflict is identified, the subordinate document shall be revised to align — the higher-tier document is controlling. The hierarchy enforcement principle of BFS-ISMS-001 §6.1 is operationalized through review checks at every approval.

## 5.3  Periodic Review Cycle

PS-3.1  All Approved – Active BFS ISMS documents shall be reviewed at least annually unless their Document Control Information specifies a more frequent cycle. Review-due notifications shall be issued to Document Owners 60 days before scheduled review.

PS-3.2  Document review shall result in one of two outcomes: confirmation that no revision is needed (recorded in Document Register with review date) or initiation of revision (transitioning document to Under Revision state). Reviews resulting in 'no review performed' are policy violations.

PS-3.3  Out-of-cycle review shall be triggered by the events specified in §4.4 — including material changes to ISO 27001, applicable regulations, audit findings, significant incidents, technology or business changes, or higher-tier document changes affecting subordinate document validity.

PS-3.4  Documents overdue for review by more than 90 days shall be flagged as nonconformities in the BFS-ISMS-010 Corrective Action register. Overdue review of TIER 1 or TIER 2 documents requires immediate executive attention and corrective action.

## 5.4  Version Control and Change Management

PS-4.1  All BFS ISMS documents shall use semantic version numbering: MAJOR.MINOR (e.g., v1.0, v1.2, v2.0). Material revisions affecting policy substance increment the major version; editorial or clarifying revisions increment the minor version.

PS-4.2  Each version of every document shall be identifiable through the Revision History section of the document, including: version number, date, summary description of changes, author, and approver. Revision History shall not be edited retrospectively except to correct factual errors.

PS-4.3  The current Approved – Active version is the Master Copy. Master Copies reside in the BFS Document Management System under access controls per their classification. Distributed copies (controlled or uncontrolled) reference the Master Copy as the authoritative source.

PS-4.4  When a new version supersedes a prior version, the prior version transitions to Superseded state and shall be removed from operational distribution within 30 days. After 90 days, prior versions transition to Archived state.

PS-4.5  Distribution of obsolete versions for operational decisions is a policy violation. The Document Custodian (CISO Office) operates the supersession recall process to minimize the risk of obsolete versions remaining in circulation.

## 5.5  Distribution and Access

PS-5.1  BFS ISMS documents shall be distributed in accordance with their classification per §3.3 and the controlled distribution list maintained by the CISO Office.

PS-5.2  PUBLIC documents (BFS-ISMS-001 and any explicitly designated others) may be distributed externally through BFS public website, customer communications, regulator submissions, and certification body engagements without specific access tracking.

PS-5.3  INTERNAL documents shall be distributed to BFS personnel through controlled mechanisms — internal portal, email distribution lists, or document management system access. External distribution requires CISO approval and NDA coverage.

PS-5.4  CONFIDENTIAL documents shall be distributed only to specifically named recipients with documented need-to-know. External distribution requires CISO and Legal approval, NDA coverage, and access tracking. Encryption is required for transmission.

PS-5.5  RESTRICTED documents shall be distributed only to specifically named individuals with explicit access approval per access. External distribution requires CISO, Legal, and CIO approval. Strong encryption with HSM-backed keys is required for transmission. Access is logged with non-repudiation.

PS-5.6  Document custodians (CISO Office) shall maintain distribution records for CONFIDENTIAL and RESTRICTED documents including: recipient identity, distribution date, purpose, and confirmation of secure handling commitment. Distribution records support supersession recall and audit traceability.

## 5.6  Records Management

PS-6.1  ISMS records — evidence of activities and decisions — shall be created concurrently with the activities they document and shall be retained per the retention periods specified in §6 of this document.

PS-6.2  Records shall be sufficient to support: ISO 27001 certification audit evidence requirements; regulatory examination evidence; internal audit; incident investigation; legal proceedings; and continuous improvement of ISMS processes.

PS-6.3  Records shall be protected from loss, alteration, and unauthorized access throughout their retention period. Integrity controls (write-once storage, cryptographic hashes, access logging) shall be applied appropriate to the record's classification and significance.

PS-6.4  Records subject to legal hold (in connection with litigation, regulatory investigation, or law enforcement matter) shall not be modified or disposed of regardless of normal retention schedules. Legal Counsel coordinates legal hold notifications and releases.

PS-6.5  Records produced through subordinate BFS-ISP policies (e.g., audit logs per BFS-ISP-008, vulnerability records per BFS-ISP-007, incident records per BFS-ISP-017) shall comply with both this procedure and the more specific provisions of the originating policy. Where conflict exists, the more restrictive provision applies.

## 5.7  External-Origin Documents

PS-7.1  Documents of external origin needed for ISMS planning or operation shall be identified, controlled, and made available to those who need them. External-origin documents include: ISO/IEC standards, BSP circulars and issuances, NPC circulars and issuances, PCI DSS standards, vendor documentation, and contracts received from third parties.

PS-7.2  Authorized external-origin documents shall be registered in a separate External Documents Register maintained by the CISO Office. Registration captures: source organization, document title and reference, version, date, BFS internal reference where applicable, and use within the BFS ISMS.

PS-7.3  BFS shall track current versions of key external-origin documents (ISO/IEC standards, BSP circulars, PCI DSS) and update internal documents when external versions change. Material external version changes trigger out-of-cycle review of dependent BFS documents.

PS-7.4  External-origin documents shall be distributed within BFS in accordance with the originator's distribution restrictions and BFS classification. Standards subject to copyright (ISO, PCI) shall be accessed through licensed copies; redistribution outside BFS is prohibited unless permitted by license terms.

# 6.  RETENTION AND DISPOSAL

Retention periods balance regulatory and business needs to retain documented information against the costs and risks of indefinite retention (storage cost, exposure surface, RA 10173 purpose limitation principle for personal data). This section establishes BFS retention requirements aligned with regulatory obligations and operational needs.

## 6.1  Retention Period Determinants

Retention periods are determined by the most restrictive applicable requirement among:

Regulatory minimums — BSP records retention requirements, RA 10173 purpose limitation considerations, PCI DSS Requirement 12.10.1 (security incident records), RA 8791 banking records retention, SEC retention obligations, BIR tax records retention;

Contractual requirements — specific retention obligations in customer, vendor, or partner contracts;

Legal hold requirements — extended retention for documents involved in litigation, regulatory investigation, or law enforcement matters;

Operational needs — retention enabling ongoing operations, audit support, and incident investigation reference;

Business continuity needs — retention to support recovery from major disruptions.

## 6.2  ISMS Document Retention Schedule

| Document Category | Retention Period | Retention Basis |

| --- | --- | --- |

| BFS-ISMS-001 through BFS-ISMS-010 (all versions) | 10 years from supersession | Top-tier ISMS framework documents; certification audit traceability; regulatory examination support |

| BFS-ISP-001 through BFS-ISP-029 (all versions) | 10 years from supersession | Subordinate technical control policies; audit and examination support |

| Standards (BFS-STD-XXX) | 7 years from supersession | Technical specifications; operational reference; audit support |

| Procedures (BFS-PROC-XXX) | 7 years from supersession | Operational procedures; audit and incident investigation support |

| Work Instructions (BFS-WI-XXX) | 5 years from supersession | Operational guidance; less central to audit evidence |

| Templates (BFS-TPL-XXX) | Indefinite while active; 5 years post-supersession | Reusable artifacts; supersession driven by template improvement |

| Document Approval Records | 10 years from document supersession | Approval traceability; demonstrates governance compliance |

| Document Distribution Records | 7 years | Supersession recall traceability; access audit |

| Document Register Entries | Indefinite (entries persist after document disposal) | Historical traceability; supersession auditability |

## 6.3  ISMS Records Retention Schedule

Records produced through ISMS operations have specific retention requirements often driven by regulatory minimums.

| Record Category | Retention Period | Retention Basis |

| --- | --- | --- |

| Internal Audit Reports (BFS-ISMS-008) | 7 years | ISO 27001 certification audit support; regulatory examination |

| Management Review Minutes (BFS-ISMS-009) | 7 years | Governance evidence; certification support |

| Risk Register Entries (BFS-ISMS-003) | 7 years post-closure of risk | Risk decision traceability; treatment plan support |

| Statement of Applicability versions (BFS-ISMS-004) | 10 years from supersession | Critical certification artifact |

| Audit Logs (BFS-ISP-008) | Per BFS-ISP-008 §5.5 — 1 year online + 6 years archive (7 years total minimum); PCI DSS scope per Req. 10.5.1 | PCI DSS, BSP supervisory expectations, incident investigation support |

| Incident Records (BFS-ISP-017) | 7 years from incident closure (CRITICAL/HIGH); 3 years (MEDIUM/LOW) | Regulatory examination, legal proceedings, lessons learned |

| Penetration Test Reports (BFS-ISP-018) | 7 years | PCI DSS Req. 11 evidence retention; regulatory examination |

| Vulnerability Scan Records (BFS-ISP-007) | 3 years (resolved); 7 years (referenced in incidents) | Operational reference; audit support |

| Training Records (BFS-ISP-014) | 7 years from training event | HR records; audit support |

| Phishing Simulation Records | 3 years | Trend analysis; awareness program effectiveness |

| Access Control Records (BFS-ISP-005, BFS-ISP-006) | 7 years from access termination | Audit support; incident investigation |

| Vendor Risk Assessments (BFS-ISP-015) | 7 years from contract termination + 3 years | Regulatory and legal support |

| Exception Register Entries | 7 years from exception expiration | Audit traceability of risk acceptances |

| Forensic Evidence (incident-related) | Per legal hold or 10 years (incident severity-driven) | Legal proceedings support; chain of custody |

| Customer Breach Notifications | Per RA 10173 and NPC requirements (typically 5+ years) | Regulatory compliance evidence |

| Personal Data Breach NPC Notifications | 10 years | Regulatory record |

| Legal Hold Records | Per legal hold duration + 7 years post-release | Legal coordination tracking |

| RETENTION HARMONIZATION:  Where multiple retention requirements apply to the same documented information, the longest applicable period applies. BFS does not under-retain to reduce storage cost; conversely, BFS does not retain indefinitely without justification (RA 10173 purpose limitation principle for personal data). Specific retention is documented in the Document Register or Records Register entry. |

| --- |

## 6.4  Retention Storage and Protection

Documents and records are stored in the BFS Document Management System with controls per classification — encryption at rest for CONFIDENTIAL and RESTRICTED; access logging for CONFIDENTIAL and RESTRICTED; immutable storage for records subject to legal hold or PCI DSS audit log retention requirements;

Backup copies of ISMS documents are maintained per BFS-ISP-011 (Data Recovery) including offsite copies for disaster recovery and immutable copies for ransomware resilience;

Storage technology evolution shall not result in inaccessible documents — migration plans accompany technology refresh to ensure continued readability throughout retention period;

Format obsolescence is mitigated through use of standard, widely-supported formats (PDF/A for archival, DOCX with PDF/A archive copies for active documents);

Retention storage is geographically appropriate per RA 10173 cross-border transfer considerations for personal data content.

## 6.5  Disposal Requirements

At the end of retention period, documents and records shall be securely disposed of using methods appropriate to classification. Disposal is not optional — RA 10173 purpose limitation requires personal data not be retained beyond legitimate purpose.

| Classification | Disposal Method (Digital) | Disposal Method (Physical) |

| --- | --- | --- |

| PUBLIC | Standard deletion adequate | Standard recycling adequate |

| INTERNAL | Standard deletion + storage system overwrite | Cross-cut shredding |

| CONFIDENTIAL | Cryptographic erasure or DoD-equivalent overwrite (3+ pass) | High-security cross-cut shredding (DIN 66399 P-4 or higher) |

| RESTRICTED | Cryptographic erasure with key destruction; physical destruction of storage media for end-of-life | High-security cross-cut shredding (DIN 66399 P-5/P-6); incineration; certificate of destruction required |

Disposal of CONFIDENTIAL and RESTRICTED documents shall be evidenced through Disposal Records capturing: documents disposed of (by reference), disposal method used, disposal date, disposed by (role/person), and approval (where required for RESTRICTED). Disposal Records are themselves retained for 7 years to support audit verification that retention and disposal cycles are being executed.

Disposal performed by external service providers (e.g., commercial shredding services) shall be accompanied by Certificate of Destruction from the provider. Provider shall be subject to BFS-ISP-015 (Service Provider Management) controls including security obligations and audit rights.

# 7.  DOCUMENT REGISTER AND DOCUMENT MANAGEMENT SYSTEM

## 7.1  BFS Document Register

The BFS Document Register is the authoritative inventory of all controlled BFS ISMS documents. The Register is maintained by the CISO Office in the BFS Document Management System and shall reflect current state at all times.

### 7.1.1  Document Register Schema

Each entry in the BFS Document Register shall include the following attributes at minimum:

| Attribute | Description / Validation Rule |

| --- | --- |

| Document Reference | Unique identifier per naming convention (e.g., BFS-ISP-007). Persistent across versions. Required for cross-referencing. |

| Document Title | Descriptive title (e.g., 'Vulnerability Management Policy'). |

| Document Tier | TIER 1, TIER 2, TIER 3, or TIER 4 per §3.1. |

| Document Type | Top-Level Policy / ISMS Framework Document / IS Policy / Standard / Procedure / Work Instruction / Template / Runbook / Checklist. |

| Current Version | Active version number (semantic versioning, e.g., v1.2). |

| Lifecycle Status | Draft / Under Review / Approved – Active / Under Revision / Superseded / Archived / Disposed / Cancelled. |

| Classification | PUBLIC / INTERNAL / CONFIDENTIAL / RESTRICTED. |

| Document Owner | Named role accountable for document accuracy and currency. |

| Document Custodian | Role responsible for operational maintenance — typically CISO Office for ISMS documents. |

| Effective Date | Date current version became effective. |

| Last Review Date | Date of most recent scheduled or out-of-cycle review. |

| Next Review Due | Scheduled date for next review based on review cycle. |

| Review Cycle | Frequency of scheduled review (typically annual). |

| Approval Authority | Role/body that approved the current version. |

| Approval Date | Date current version was approved. |

| Distribution Profile | List of distribution recipients or distribution scope (e.g., 'all BFS staff', 'CISO Office only', 'Board members'). |

| Parent Document | Reference to higher-tier document under whose authority this document operates. |

| Companion Documents | References to documents at same tier with related content. |

| Subordinate Documents | References to lower-tier documents derived from this one. |

| Storage Location | BFS Document Management System path to current version. |

| Retention Period | Retention period applicable to this document (default per §6.2 unless overridden). |

| Disposal Date | Scheduled date for disposal at end of retention period (calculated from supersession date + retention). |

## 7.2  BFS Document Management System

BFS uses a designated Document Management System (DMS) as the primary repository for all controlled ISMS documents. The DMS provides:

Centralized storage of Master Copies for all controlled documents;

Version control with audit trail of changes, version history, and recovery to prior versions;

Access controls per classification — authentication, authorization, access logging;

Workflow automation for document lifecycle transitions (Draft → Under Review → Approved – Active);

Approval workflows with electronic signature capability for approval records;

Search and retrieval supporting both navigation and full-text search;

Integration with the Document Register and Records Register;

Retention scheduling and supersession tracking;

Backup and disaster recovery integration per BFS-ISP-011;

Audit logging of all document access and modification events per BFS-ISP-008.

## 7.3  Records Management Infrastructure

Records — operational evidence of ISMS activities — are managed through systems appropriate to record type:

Approval records, distribution records, and meeting minutes: BFS DMS;

Audit logs: BFS SIEM and centralized log management per BFS-ISP-008;

Risk Register entries: BFS GRC platform per BFS-ISMS-003 §8;

Incident records: BFS Incident Register per BFS-ISP-017;

Penetration test reports: BFS DMS with restricted access;

Internal audit records: BFS Internal Audit system per BFS-ISMS-008;

Training records: BFS LMS with extracts to BFS DMS for retention;

Vendor records: BFS Vendor Management system per BFS-ISP-015;

Forensic evidence: secure forensic storage per BFS-ISP-017 §5.6 with chain of custody.

All record-management systems are subject to integrity protection, access controls, and audit logging per their classification and significance. Cross-system records access for audit and investigation is supported through appropriate integration.

## 7.4  External Document Register

Documents of external origin needed for ISMS planning are tracked in a separate External Document Register including:

ISO/IEC standards: 27001:2022, 27002:2022, 27005:2022, 27017, 27018, 27701, 31000:2018, and other applicable standards;

BSP issuances: All current circulars relevant to BFS information security (1140, 1048, 982, 144, 808, and any future issuances);

NPC issuances: All current circulars relevant to RA 10173 implementation;

PCI DSS standards: Current version (v4.0) and supplementary guidance;

Industry frameworks: CIS Controls v8, NIST CSF v2.0, OWASP standards, MITRE ATT&CK;

Vendor documentation: AWS shared responsibility model, security and compliance documentation for major service providers;

Contracts: Material service provider contracts including Master Service Agreements, Security Schedules, DPAs.

CISO Office maintains the External Document Register and tracks version updates of key external documents. Material version changes (e.g., a new BSP circular, ISO 27001 revision, PCI DSS version change) trigger notification to affected internal Document Owners and out-of-cycle review of dependent BFS documents per §4.4.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Document and Records Control Responsibility |

| --- | --- |

| Board of Directors / Audit & Risk Committee | Approves TIER 1 documents (BFS-ISMS-001) and material revisions. Receives reports on document compliance metrics. Approves material changes to this Document and Records Control Procedure itself. |

| Chief Information Officer | Co-approver of TIER 2 ISMS framework documents. Ensures IT operations support the BFS Document Management System. Champions document control discipline across IT functions. |

| Chief Information Security Officer | Owner of this procedure. Operationally accountable for BFS Document Register and BFS Document Management System. Approves Standards (TIER 3). Co-approves TIER 2 ISMS framework documents and BFS-ISP series. Reports document control posture to executives and Board. |

| Chief Compliance Officer | Co-approver of TIER 2 documents involving regulatory compliance. Ensures records retention meets regulatory obligations. Coordinates regulatory examination evidence requests. |

| Chief Legal Counsel | Co-approver of TIER 2 documents with material legal content. Coordinates legal hold for documents subject to litigation, regulatory investigation, or law enforcement matters. Approves external distribution of CONFIDENTIAL documents and licensing-related external document use. |

| Data Privacy Officer | Co-approver of TIER 2 documents involving personal data processing. Ensures retention of personal data records aligns with RA 10173 purpose limitation. Coordinates NPC notification record retention. |

| Document Owners (varies by document) | Named individuals or roles accountable for assigned documents. Ensure document accuracy, currency, and timely review. Initiate revisions when material changes occur. Approve review-only outcomes when no revision needed. |

| Document Custodian (CISO Office) | Operational maintenance of BFS Document Register and BFS Document Management System. Tracks review schedules and notifies Document Owners. Manages version control, distribution, supersession, archival, and disposal coordination. Maintains External Document Register. |

| Document Authors (varies) | Drafting of new documents and revisions per Document Owner direction. Following standard templates and naming conventions. Incorporating review feedback. Maintaining Revision History accuracy. |

| IT Operations | Operates BFS Document Management System infrastructure. Ensures system availability per BFS-ISP-011 RPO/RTO objectives. Implements backup and disaster recovery for ISMS documentation. Operates retention storage per §6.4. |

| Internal Audit | Independently validates document control effectiveness as part of ISMS audits per BFS-ISMS-008. Tests Document Register accuracy. Verifies adherence to review cycles. Reports document control nonconformities. |

| All BFS Personnel | Use only Approved – Active versions of documents for operational decisions. Do not rely on Draft, Under Review, or Superseded documents. Notify CISO Office of identified issues with controlled documents (factual errors, inconsistencies, references to obsolete versions). |

# 9.  COMPLIANCE MONITORING AND KEY PERFORMANCE INDICATORS

Document and records control effectiveness is measured through the following KPIs reviewed quarterly by the CISO Office and reported to the Information Security Steering Committee. These KPIs feed into the BFS-ISMS-005 operational objectives and are inputs to BFS-ISMS-009 Management Review.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| TIER 1 and TIER 2 documents with current scheduled review (within annual cycle) | 100% | Monthly |

| Documents overdue for scheduled review by more than 90 days | 0 | Monthly |

| Documents overdue by more than 30 days but less than 90 days | ≤ 5% of portfolio | Monthly |

| TIER 1 and TIER 2 documents with mandatory identification elements per §3.5 | 100% | Quarterly |

| Documents in Draft or Under Review state for more than 90 days | ≤ 3 documents | Quarterly |

| Material revisions completed within targeted timeline (typically 90 days) | ≥ 90% on-time | Quarterly |

| Document Register accuracy (sampled audit verification) | ≥ 98% accurate entries | Annual (Internal Audit) |

| Approval records present and complete for all Approved – Active TIER 1/TIER 2 documents | 100% | Annual (Internal Audit) |

| Superseded version recall completed within 30 days of new version issuance | ≥ 95% | Per supersession event |

| Records retained per applicable retention schedule | 100% | Annual (Internal Audit) |

| Records subject to disposal at end of retention disposed of within 90 days | ≥ 95% | Quarterly |

| Disposal records (Certificates of Destruction) present for CONFIDENTIAL and RESTRICTED disposals | 100% | Per disposal event |

| External Document Register currency (key external documents at current version) | 100% within 30 days of release | Quarterly |

| Review cycle compliance for forthcoming BFS-ISP-019 through BFS-ISP-029 issuance per BFS-ISMS-004 §7.3 roadmap | On Q4 2026 schedule | Quarterly |

| Document classification accuracy (sampled audit verification) | ≥ 95% appropriate classification | Annual (Internal Audit) |

| Distribution recall completion rate for superseded CONFIDENTIAL/RESTRICTED documents | 100% acknowledged | Per supersession event |

## 9.2  Internal Audit Verification

Internal Audit (per BFS-ISMS-008) verifies document control effectiveness through:

Annual sampling-based audit of Document Register accuracy against Document Management System contents;

Verification of approval records for sampled TIER 1 and TIER 2 documents;

Testing of supersession recall by verifying that operational distribution channels do not contain superseded versions;

Verification of records retention compliance against retention schedules in §6;

Verification of disposal records for CONFIDENTIAL and RESTRICTED disposals;

Identification of document control nonconformities for tracking through BFS-ISMS-010 Corrective Action.

## 9.3  Enforcement

Document control violations are addressed through the BFS-ISMS-001 §11 disciplinary framework, with severity calibrated to the consequence of the violation:

| Severity | Examples | Consequences |

| --- | --- | --- |

| Minor | Late review of TIER 3/TIER 4 documents; minor identification element missing on TIER 4 document; minor metadata errors in Document Register | Coaching; correction; documented in performance review |

| Moderate | TIER 1/2 review overdue >90 days; document distributed without proper classification marking; supersession recall not completed; obsolete version used for non-critical operational decision | Formal warning; mandatory remediation; supervisory follow-up |

| Serious | Operational decisions made based on Draft, Under Review, or Superseded documents; falsification of approval records; disclosure of CONFIDENTIAL/RESTRICTED documents to unauthorized parties; failure to retain records per regulatory retention requirements | Formal HR disciplinary process up to termination; CISO escalation; potential regulatory consequences |

| Critical | Deliberate disclosure of RESTRICTED documents (e.g., regulatory examination materials) to unauthorized parties; deliberate destruction of records subject to legal hold; falsification of records to obstruct audit, investigation, or regulatory examination | Immediate termination; criminal referral; regulatory notification; civil action where applicable |

# 10.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Document and Records Control Procedure aligned with ISO/IEC 27001:2022 Clause 7.5 (all sub-clauses 7.5.1, 7.5.2, 7.5.3). Operationalizes the four-tier document hierarchy (BFS-ISMS-001 §6.1) and four-level classification scheme (BFS-ISP-003 §5.2). Establishes document lifecycle from creation through disposal. Documents retention periods aligned with regulatory requirements (BSP, RA 10173, PCI DSS, RA 8791). | IT Head and Infrastructure Team | IT Head / Legal |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Clause 7.5 Requirements Mapping

ISO/IEC 27001:2022 Clause 7.5 (Documented Information) comprises three sub-clauses with specific requirements. The table below confirms how this Procedure fulfills each, providing direct evidence for ISO 27001 certification audit.

| Clause | Requirement | How This Procedure Fulfills |

| --- | --- | --- |

| 7.5.1 | Documented information required by this International Standard | Section 2.2.1 enumerates ISMS documented information including all BFS-ISMS framework documents addressing ISO 27001 mandatory documentation. Section 3 establishes the four-tier hierarchy organizing documentation. |

| 7.5.1 | Documented information determined by the organization as being necessary for the effectiveness of the information security management system | Section 2.2.1 includes all BFS-ISP technical control policies, standards, procedures, work instructions, and records — beyond the ISO mandatory minimum — reflecting BFS's determination of what is necessary for ISMS effectiveness. |

| 7.5.2(a) | Identification and description (e.g., a title, date, author, or reference number) | Section 3.5 mandates identification elements: title, reference, version, classification, effective date, review cycle, owner, approval status. Section 3.2 establishes the naming convention. Documents lacking these elements are uncontrolled. |

| 7.5.2(b) | Format (e.g., language, software version, graphics) and media (e.g., paper, electronic) | Section 4.2 references standard templates per tier. Document Register attribute 'Storage Location' (Section 7.1.1) tracks media. Section 6.4 addresses format obsolescence and migration. |

| 7.5.2(c) | Review and approval for suitability and adequacy | Section 4.2 (Document Creation Process) specifies internal author review, subject matter review, stakeholder review, and final approval. Section 4.3 (Document Review and Revision) specifies scheduled review cycle. Section 5.2 codifies approval as policy statements. |

| 7.5.3(a) | Available and suitable for use, where and when it is needed | Section 7.2 establishes BFS Document Management System for centralized availability. Distribution provisions in Section 5.5 ensure documents reach those who need them per classification. |

| 7.5.3(b) | Adequately protected (e.g., from loss of confidentiality, improper use, or loss of integrity) | Section 3.3 classification scheme drives protection requirements. Section 5.5 distribution controls per classification. Section 6.4 retention storage protections. Integrity controls (immutable storage, cryptographic hashes, access logging) per classification and significance. |

| 7.5.3(c) | Distribution, access, retrieval and use | Section 5.5 (Distribution and Access policy statements). Section 7.2 BFS Document Management System provides retrieval. Section 5.1.5 prohibits use of non-authoritative versions. |

| 7.5.3(c) | Storage and preservation, including preservation of legibility | Section 6.4 retention storage requirements. Format obsolescence mitigated through standard formats (PDF/A archival, DOCX active). Migration plans accompany technology refresh. |

| 7.5.3(c) | Control of changes (e.g., version control) | Section 5.4 (Version Control and Change Management policy statements). Section 4.3 revision process. Section 4.5 supersession process. BFS Document Management System provides version control infrastructure. |

| 7.5.3(c) | Retention and disposition | Section 6 comprehensively addresses retention periods (§6.2 documents, §6.3 records) and disposal requirements (§6.5). Retention aligned with regulatory minimums. |

| 7.5.3 | Documented information of external origin determined by the organization to be necessary for the planning and operation of the information security management system shall be identified, as appropriate, and controlled | Section 5.7 (External-Origin Documents) policy statements. Section 7.4 External Document Register. Coverage of ISO standards, BSP/NPC issuances, PCI DSS, vendor documentation, contracts. |

| 7.5.3 | Documented information retained as evidence of conformity shall be protected from unintended alterations | Section 5.6 (Records Management) policy statements. Section 6.4 immutable storage for legally significant records. Audit logging per BFS-ISP-008. Cryptographic integrity per classification. |

# APPENDIX B:  BFS Document Control Quick Reference

Single-page reference for BFS personnel involved in document creation, review, or use. Detailed provisions in the body of this procedure.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What tier does my document fit? | TIER 1 = Top-Level Policy (Board); TIER 2 = ISMS Framework or BFS-ISP (CISO + co-approvers); TIER 3 = Standards/Procedures (CISO Office); TIER 4 = Work Instructions/Templates (functional managers). See §3.1. |

| What classification should my document have? | Default classifications per §3.4 — typically CONFIDENTIAL for internal ISMS documents. Higher classification (RESTRICTED) for content with severe disclosure consequences. PUBLIC only for explicitly externally-shared documents like BFS-ISMS-001. |

| What are mandatory identification elements? | Title, Reference, Version, Classification, Effective Date, Review Cycle, Owner, Approval Status — on cover page or first content page. See §3.5. |

| What naming convention do I use? | BFS-{TYPE}-{NNN}-{Descriptive-Title}. Examples: BFS-ISP-007-Vulnerability-Management-Policy; BFS-STD-001-Approved-Cryptographic-Algorithms. See §3.2. |

| How do I create a new document? | Need identification → Author assignment → Drafting → Internal review → Subject matter review → Stakeholder review → Final approval → Issuance → Communication. See §4.2. |

| When does my document need review? | Annually at minimum (or more frequent if specified). Out-of-cycle when ISO 27001 revises, regulations change, audit findings, incidents, or technology/business changes affect the document. See §4.3 and §4.4. |

| How do I version my document? | Semantic versioning MAJOR.MINOR. Material changes increment major (v1.0 → v2.0); editorial changes increment minor (v1.0 → v1.1). See §5.4.1. |

| Can I use a Draft document for operational decisions? | No. Operational use requires Approved – Active state. Draft, Under Review, and Superseded documents shall not be relied upon. See §5.1.5. |

| How long do I retain documents and records? | ISMS documents typically 10 years from supersession (TIER 1/2) or 7 years (TIER 3/4). Records vary by category — see §6.2 and §6.3 for full schedule. |

| How do I dispose of CONFIDENTIAL or RESTRICTED documents? | Cryptographic erasure (digital) or DIN 66399 P-4+ shredding (physical) for CONFIDENTIAL; key destruction + media destruction or DIN 66399 P-5/6 shredding for RESTRICTED. Certificate of Destruction required. See §6.5. |

| Where do I find current versions of all BFS ISMS documents? | BFS Document Management System with access per classification. CISO Office maintains the Document Register. See §7.1 and §7.2. |

| What if I find an error or inconsistency in a controlled document? | Notify the CISO Office. Material errors trigger out-of-cycle review per §4.4. Do not modify controlled documents directly — corrections flow through the formal revision process. See §4.3. |

BFS-ISMS-006  |  Document and Records Control Procedure  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. The Meta-Procedure Governing All BFS ISMS Documentation. Authorized Internal and Audit Use Only.
