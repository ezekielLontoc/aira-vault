---
title: "BFS-ISMS-003-Risk-Assessment-and-Treatment-Methodology"
source_file: "02-PPG-ISMS-ISO-27001/Procedures/Risk-Assessment-and-Treatment/BFS-ISMS-003-Risk-Assessment-and-Treatment-Methodology.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:42Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Procedures"
  - "Risk-Assessment-and-Treatment"
aliases:
  - "BFS-ISMS-003-Risk-Assessment-and-Treatment-Methodology"
creator: "Un-named"
created: "2026-04-26T21:45:00Z"
modified: "2026-04-27T01:45:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>RISK ASSESSMENT<br>AND TREATMENT METHODOLOGY<br>Risk Identification, Analysis, Evaluation, Treatment, Acceptance Criteria, Risk Register Maintenance, and the Methodology Producing the BFS Statement of Applicability<br>Policy Reference: BFS-ISMS-003<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>ISO/IEC 27001:2022 Clauses 6.1.2 and 6.1.3 Mandated Methodology<br>Aligned with ISO/IEC 27005:2022  \|  ISO 31000:2018  \|  NIST SP 800-30<br>Companion to BFS-ISMS-001 (Top-Level Policy), BFS-ISMS-002 (Scope and Context), BFS-ISMS-004 (Statement of Applicability) |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Risk Assessment and Treatment Methodology |

| --- | --- |

| Policy Reference | BFS-ISMS-003 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Manager |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to the threat landscape, regulatory environment, BFS risk appetite, or significant changes to BFS-ISMS-002 (Scope and Context) |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — ISMS Framework Document. Subordinate to BFS-ISMS-001 (Top-Level Policy). |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISMS-002 (Scope and Context); BFS-ISMS-004 (Statement of Applicability — produced through application of this methodology); BFS-ISMS-005 (Information Security Objectives); BFS-ISMS-008 (Internal Audit); BFS-ISMS-009 (Management Review) |

| Framework Alignment | ISO/IEC 27001:2022 Clauses 6.1.2 (Information Security Risk Assessment) and 6.1.3 (Information Security Risk Treatment); ISO/IEC 27005:2022 (Information Security Risk Management); ISO 31000:2018 (Risk Management Guidelines); NIST SP 800-30 (Guide for Conducting Risk Assessments); NIST Cybersecurity Framework v2.0 — Govern Function |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management — Risk Management Process Requirements); BSP Circular 1048 (Cybersecurity Risk Management); BSP Circular 982 (IT Risk Management Standards); Philippine Data Privacy Act RA 10173 (Risk-Based Approach to Personal Data Protection); PCI DSS v4.0 (Risk Analysis Requirements — Req. 12.3) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Data Privacy Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document defines the methodology by which BFS Financial Services (hereinafter "BFS" or "the Organization") identifies, analyzes, evaluates, and treats information security risks affecting the assets, processes, and operations within the scope of the BFS Information Security Management System (ISMS) as defined in BFS-ISMS-002 (ISMS Scope and Context Document).

This document is the methodological foundation of the BFS ISMS. The output of applying this methodology — the BFS Information Security Risk Register and the Risk Treatment Plan — directly drives the Statement of Applicability (BFS-ISMS-004), which is the most critical artifact for ISO 27001 certification. Without a documented, defensible, repeatable risk methodology, the SoA cannot be defended to a certification auditor, regulators cannot verify that BFS's controls are commensurate with risk, and BFS leadership cannot make informed decisions about security investment.

This document exists to fulfill three specific requirements of ISO/IEC 27001:2022:

Clause 6.1.2 (Information Security Risk Assessment) — requires BFS to define and apply an information security risk assessment process that establishes risk acceptance criteria, ensures repeatability and consistent results, identifies risks, analyzes risks, and evaluates risks against established criteria;

Clause 6.1.3 (Information Security Risk Treatment) — requires BFS to define and apply an information security risk treatment process that selects appropriate risk treatment options, determines necessary controls, compares those controls with ISO/IEC 27001:2022 Annex A, produces a Statement of Applicability, formulates a risk treatment plan, and obtains risk owners' approval of the treatment plan and acceptance of residual risks;

Clause 8.2 and 8.3 (Operational Planning and Control) — requires BFS to perform information security risk assessments at planned intervals or when significant changes are proposed or occur, retain documented information of the results, and implement the risk treatment plan.

Beyond ISO 27001 compliance, this methodology fulfills BSP Circular 1140 expectations for IT risk management process formality, BSP Circular 1048 cybersecurity risk management requirements, RA 10173 risk-based approach to personal data protection, and PCI DSS v4.0 Requirement 12.3 risk analysis obligations. The methodology is also designed to be operationally usable — risk assessment must be a practice, not a paperwork exercise.

The specific objectives of this document are to:

Establish the structured methodology BFS uses to identify information security risks across the ISMS scope;

Define the consistent criteria for analyzing risks (likelihood and impact scales);

Define the criteria for evaluating risks against BFS risk appetite and tolerance to determine which require treatment;

Specify the risk treatment options available and the basis for selecting between them;

Mandate the controls selection process — including the comparison against ISO/IEC 27001:2022 Annex A required by Clause 6.1.3(c);

Establish the Risk Register as the authoritative record of identified risks, their analysis, and treatment status;

Establish the Risk Treatment Plan as the authoritative record of how identified risks are addressed;

Define risk owner roles, responsibilities, and approval authorities;

Define the cycle and triggers for ongoing risk reassessment as the threat, business, and regulatory landscape evolves.

# 2.  DEFINITIONS

This methodology uses risk management terminology aligned with ISO/IEC 27001:2022, ISO/IEC 27005:2022, ISO 31000:2018, and NIST SP 800-30. Where these standards differ in terminology, ISO/IEC 27001:2022 is controlling. The following definitions apply throughout this document.

| Term | Definition |

| --- | --- |

| Risk | The effect of uncertainty on the BFS information security objectives. Risk is typically expressed in terms of risk sources, potential events, their consequences, and their likelihood. (ISO 31000:2018 / ISO/IEC 27000:2018) |

| Information Security Risk | Risk associated with the operation and use of information systems, the information they process, store, or transmit, the people who operate them, and the dependencies among them. The potential that a given threat will exploit vulnerabilities of an asset or group of assets and thereby cause harm to BFS. |

| Risk Source | An element which alone or in combination has the potential to give rise to risk. Examples include threat actors (cybercriminals, nation-states, insiders), accidental causes (human error, natural events), and systemic causes (vulnerabilities, misconfigurations). |

| Threat | Any potential cause of an unwanted incident which may result in harm to BFS information assets. Threats may be external (cybercriminals, nation-states) or internal (malicious insiders, negligent employees), deliberate or accidental, technical or non-technical. |

| Vulnerability | A weakness of an asset or control that can be exploited by one or more threats. Vulnerabilities exist in technology (unpatched software, misconfigurations), in processes (gaps in procedures), and in people (lack of awareness, susceptibility to social engineering). |

| Asset | Anything that has value to BFS — including information (customer data, business records, intellectual property), systems (applications, infrastructure), services (banking operations, customer service), people (employees, contractors), facilities (buildings, data centers), and reputation. Asset inventories are maintained per BFS-ISP-001. |

| Risk Owner | The person or entity with the accountability and authority to manage a specific risk. Risk owners are typically the BFS executive or business unit head accountable for the asset, process, or outcome at risk. Risk owners approve the risk treatment and accept residual risk per ISO/IEC 27001:2022 Clause 6.1.3(f). |

| Risk Identification | The process of finding, recognizing, and describing risks. Identification answers: what could happen, why, where, when, and who is involved? (ISO 31000:2018) |

| Risk Analysis | The process of comprehending the nature of risk and determining the level of risk by evaluating likelihood and impact. Analysis answers: how likely is this, and how bad would it be? (ISO 31000:2018) |

| Risk Evaluation | The process of comparing the results of risk analysis with risk criteria to determine whether the risk is acceptable or whether treatment is required. Evaluation answers: do we accept this risk or do we treat it? (ISO 31000:2018) |

| Likelihood | The chance of something happening, expressed qualitatively (e.g., Rare, Unlikely, Possible, Likely, Almost Certain) or quantitatively. BFS uses the qualitative 5-level likelihood scale defined in Section 5. |

| Impact | The consequence of a risk being realized — measured in terms of harm to confidentiality, integrity, availability, financial loss, regulatory consequence, customer trust, and operational continuity. BFS uses the qualitative 5-level impact scale defined in Section 5. |

| Inherent Risk | The level of risk before any controls or mitigations are applied. Inherent risk reflects the raw exposure that would exist if BFS had implemented no security controls. |

| Residual Risk | The level of risk remaining after risk treatment — after controls and mitigations have been applied. Residual risk is what is actually being accepted by risk owners. |

| Risk Appetite | The amount of risk that BFS is willing to pursue or retain in the pursuit of its objectives, set by the Board. Risk appetite is the strategic statement of acceptable risk levels. |

| Risk Tolerance | The acceptable level of variation around risk appetite. Risk tolerance defines the boundary between acceptable variation and unacceptable risk. Used at the operational level to make day-to-day risk decisions. |

| Risk Acceptance Criteria | The defined thresholds at which risk levels become acceptable to BFS without additional treatment. Risk acceptance criteria are the operational expression of risk appetite. Defined formally in Section 7 of this document. |

| Risk Treatment | The process of selecting and implementing options for modifying risk. The four options are: Modify (apply controls to reduce risk), Avoid (eliminate the source of risk), Transfer (share risk with another party — typically through insurance or contractual transfer), and Accept (knowingly retain risk without further action). |

| Risk Treatment Plan | The documented plan describing how each unacceptable risk will be addressed — what treatment option, what specific controls, who is accountable, by when, and how effectiveness will be measured. |

| Risk Register | The authoritative record of all identified information security risks at BFS, their analysis, treatment status, and current residual risk level. The Risk Register is maintained by the CISO Office in conjunction with the Risk Management Team and reviewed at every Management Review. |

| Statement of Applicability (SoA) | The document required by ISO/IEC 27001:2022 Clause 6.1.3(d) listing all 93 ISO 27001:2022 Annex A controls with applicability decisions, justifications for inclusion or exclusion, and implementation status. Maintained as BFS-ISMS-004. |

| Risk Assessment | The overall process of risk identification, analysis, and evaluation (per ISO/IEC 27001:2022 Clause 6.1.2). Used colloquially to refer also to a single risk assessment exercise (e.g., 'we conducted a risk assessment of the new banking platform'). |

| Risk Reassessment | The periodic or event-triggered re-execution of risk assessment to ensure the Risk Register remains current. BFS reassessment cadence is defined in Section 9. |

| Risk Owner Approval | Formal documented approval by the designated risk owner of: the risk treatment selected, the residual risk level after treatment, and the acceptance of residual risk per ISO/IEC 27001:2022 Clause 6.1.3(f). Approval is non-delegable below the executive level for risks above the High threshold. |

# 3.  METHODOLOGY OVERVIEW

This section provides the conceptual overview of the BFS information security risk management methodology. The detailed methodology steps are specified in Sections 4 through 8.

## 3.1  Methodology Foundation

The BFS methodology is grounded in the integrated risk management process specified by ISO/IEC 27005:2022 (Information Security Risk Management), which itself implements the generic risk management process of ISO 31000:2018 (Risk Management — Guidelines). This grounding ensures that BFS information security risk is managed consistently with the broader BFS enterprise risk management framework owned by the Chief Risk Officer.

Specifically, the BFS methodology adopts:

The ISO/IEC 27005:2022 risk management process structure: context establishment, risk assessment (identification, analysis, evaluation), risk treatment, risk acceptance, risk communication, risk monitoring and review;

Qualitative likelihood and impact scales (5-level each) producing a 5×5 risk matrix — chosen for operational usability, alignment with BFS enterprise risk methodology, and audit-defensibility;

Asset-based and threat-based risk identification techniques in combination — asset-based identification ensures comprehensive coverage of in-scope assets; threat-based identification ensures coverage of emerging and evolving threats;

The four standard risk treatment options (Modify, Avoid, Transfer, Accept) with explicit selection criteria;

Risk owner accountability with approval authority calibrated to risk severity (Section 7.4);

Continuous improvement of the methodology itself through annual review and lessons learned from operational application.

## 3.2  The BFS Risk Management Process

The BFS information security risk management process operates as a continuous cycle, integrated with the broader ISMS PDCA cycle established in BFS-ISMS-001 Section 9. The process flow is:

| # | Phase | Activities | Outputs |

| --- | --- | --- | --- |

| 1 | Context Establishment | Confirm scope, criteria, methodology applicability, risk owners, communication channels (BFS-ISMS-002 provides scope; this document provides criteria) | Risk assessment scope confirmation; risk owner assignments |

| 2 | Risk Identification | Identify assets and asset values; identify threats and threat sources; identify vulnerabilities; identify existing controls; identify potential consequences | Initial risk inventory; risk descriptions; preliminary risk owner assignments |

| 3 | Risk Analysis | For each identified risk: assess likelihood considering threat capability and existing controls; assess impact considering CIA, financial, regulatory, customer trust, and operational dimensions; calculate inherent risk level | Inherent risk levels; risk analysis records; risk heat-map for visualization |

| 4 | Risk Evaluation | Compare analyzed risks against risk acceptance criteria; categorize as Acceptable (within risk appetite), Tolerable (within risk tolerance — acceptable with conditions), or Unacceptable (requires treatment) | Risk evaluation results; risks-requiring-treatment list |

| 5 | Risk Treatment | For each risk requiring treatment: select treatment option (Modify/Avoid/Transfer/Accept); identify specific controls; compare controls against ISO/IEC 27001:2022 Annex A; document residual risk; obtain risk owner approval | Risk Treatment Plan; updated control selections; Statement of Applicability inputs |

| 6 | Risk Acceptance | Risk owners formally accept residual risk per their delegated authority; risks above delegated authority are escalated for higher-level acceptance | Documented risk acceptance records; escalations to CISO/CRO/Board |

| 7 | Risk Register Update | Update the BFS Risk Register with all assessment outputs: identified risks, analysis, treatments, residual risk, owners, acceptance status, target dates | Current Risk Register; BFS-ISMS-004 (SoA) inputs |

| 8 | Risk Communication | Communicate risk assessment results to relevant interested parties: risk owners, executive leadership, Steering Committee, Board; integrate into management reporting | Risk reports; Board updates; Steering Committee inputs |

| 9 | Risk Monitoring and Review | Continuously monitor identified risks for changes; trigger reassessment when conditions change; conduct scheduled periodic reassessment | Updated risk records; reassessment triggers; methodology improvement inputs |

## 3.3  Methodology Principles

The application of this methodology shall be guided by the following principles:

Repeatability and Consistency: Two independent risk assessors applying this methodology to the same risk scenario should arrive at substantially the same risk level. Subjectivity is reduced through structured criteria (Section 5) and documented examples;

Proportionality: The depth of risk assessment is proportional to the consequence of error. CRITICAL and HIGH risk scenarios warrant detailed analysis; LOW risk scenarios may be assessed more lightly. This avoids the practical failure mode where every risk receives equal time and the team runs out of time before completing the assessment;

Defensibility: Every risk decision shall be documented with sufficient rationale that an external auditor, regulator, or future BFS team can understand why the decision was made. Risk decisions made and never documented are equivalent to risk decisions never made;

Integration: Information security risk assessment is integrated with — not separate from — BFS enterprise risk management. Material information security risks are reflected in enterprise risk reporting per BFS-ISMS-001 Section 5.3 (CRO accountability);

Risk Owner Accountability: Every risk has a named, accountable owner. Anonymous or collective risk ownership is prohibited — accountability requires identification;

Continuous Improvement: The methodology itself is subject to improvement based on lessons learned, audit findings, and changes to the threat and regulatory environment. The methodology is reviewed annually.

# 4.  RISK IDENTIFICATION

Risk identification is the first phase of risk assessment per ISO/IEC 27001:2022 Clause 6.1.2(c). The objective of risk identification is to comprehensively recognize all information security risks affecting BFS within the ISMS scope. Incomplete identification at this phase produces blind spots that no amount of subsequent analysis can recover.

## 4.1  Identification Approach

BFS uses a hybrid identification approach combining asset-based identification and threat-based identification, with each approach compensating for the blind spots of the other:

| Approach | How It Works | Strengths and Limitations |

| --- | --- | --- |

| Asset-Based Identification | For each in-scope asset (per BFS-ISP-001 Asset Inventory and BFS-ISP-002 Software Asset Inventory), identify the threats applicable to that asset and the vulnerabilities present. Produces a structured 'asset × threat' matrix. | Strength: comprehensive coverage of known assets; ensures no in-scope asset is overlooked. Limitation: assumes the asset inventory is complete; may miss risks affecting interfaces or systemic concerns. |

| Threat-Based Identification | Starting from threat scenarios — both generic (ransomware, BEC, insider threat) and BFS-specific (ATM jackpotting, AI prompt injection, payment fraud) — identify which BFS assets and processes are exposed. | Strength: captures emerging and evolving threats; addresses systemic risks. Limitation: depends on threat intelligence quality; may miss risks specific to unusual asset configurations. |

| Scenario-Based Identification | Walk through realistic adversary or incident scenarios (e.g., 'attacker compromises a privileged developer account') and identify all the risks that scenario reveals. | Strength: surfaces risks at intersections of multiple assets and processes; useful for complex environments. Limitation: scenario quality depends on imagination of analysts. |

| Compliance-Based Identification | Review specific regulatory and standards requirements (BSP circulars, RA 10173, PCI DSS, ISO 27001 Annex A) and identify risks where BFS may not meet requirements. | Strength: ensures regulatory risk visibility. Limitation: may miss risks not addressed by current regulation. |

In practice, BFS applies all four approaches in combination, with their results consolidated into a single Risk Register. Asset-based identification is the primary method (covering all in-scope assets systematically); threat-based, scenario-based, and compliance-based identification are applied to identify additional risks the asset-based approach may have missed.

## 4.2  Information Sources for Risk Identification

Risk identification draws on the following information sources, with the CISO Office and Risk Management Team responsible for ensuring all relevant sources are consulted:

BFS Asset Inventory (BFS-ISP-001) and Software Asset Inventory (BFS-ISP-002);

BFS Service Provider Inventory (BFS-ISP-015);

BFS Application Inventory (BFS-ISP-016);

Threat intelligence — sector ISACs (BSP-ISAC, FS-ISAC), commercial threat intelligence subscriptions, BSP and NPC advisories, MITRE ATT&CK Framework, recent industry incident reports;

Vulnerability scan and assessment results (per BFS-ISP-007);

Penetration testing findings (per BFS-ISP-018);

Internal audit findings (BFS-ISMS-008) and regulatory examination findings;

Past incident records (BFS Incident Register per BFS-ISP-017) — historical incidents indicate active risks;

Architecture documentation including the MSAMS Consolidated Architecture Blueprint;

Threat modeling outputs from BFS-ISP-016 SSDLC (TIER 1 and TIER 2 application threat models);

Regulatory environment scanning — new BSP circulars, NPC issuances, PCI DSS updates, ISO standard revisions;

Interested party input — risk concerns raised by customers, employees, regulators, partners (per BFS-ISMS-002 Interested Parties Register);

Industry benchmarking — peer financial institutions' published risk concerns, sector reports, BSP supervisory observations.

## 4.3  Risk Identification Activities

Risk identification is performed through structured activities led by the Risk Management Team in coordination with the CISO Office and relevant business units. The principal activities are:

### 4.3.1  Annual Comprehensive Risk Identification

At least once per year, BFS conducts a comprehensive information security risk identification exercise covering the entire ISMS scope. This exercise:

Engages risk owners, business unit leaders, IT Security, Application Security, IT Operations, DPO, Compliance, and Internal Audit in structured workshops;

Reviews all four identification approaches against current scope, threats, and regulatory environment;

Produces an updated comprehensive risk inventory feeding the annual Risk Register refresh;

Times to align with the annual ISMS Management Review per BFS-ISMS-009 and the annual SoA review per BFS-ISMS-004.

### 4.3.2  Event-Triggered Risk Identification

Risk identification is also conducted in response to specific events that may introduce new risks or alter the relevance of existing risks:

Significant security incidents (per BFS-ISP-017) — Post-Incident Reviews systematically identify whether the incident reveals risks not previously in the Risk Register;

Major architectural or technology changes — new platforms, cloud regions, AI/LLM deployments, significant integrations;

Significant business changes — new business lines, M&A activity, new geographic operations, divestitures;

Regulatory changes — new BSP circulars, NPC issuances, PCI DSS revisions affecting compliance posture;

Material threat intelligence events — emerging attack categories affecting financial services, novel TTPs, threat actor focus shifts;

Material penetration test findings (per BFS-ISP-018) revealing previously-unidentified attack paths;

Material internal audit findings revealing control gaps.

### 4.3.3  Project-Initiated Risk Identification

Per BFS-ISP-016 SSDLC and the forthcoming BFS-ISP-027 (Security in Project Management), every significant new project — applications, infrastructure, business initiatives — includes information security risk identification as part of project initiation. Project-level risks are integrated into the Risk Register.

## 4.4  Risk Statement Format

Each identified risk shall be expressed in a structured risk statement that captures: the threat or risk source, the vulnerability or condition that enables the threat, the asset or value affected, and the consequences. The standardized BFS risk statement format is:

| RISK STATEMENT FORMAT:  "[THREAT or RISK SOURCE] could exploit [VULNERABILITY or CONDITION] affecting [ASSET or VALUE] resulting in [CONSEQUENCE — confidentiality / integrity / availability / financial / regulatory / customer trust]."  Example: "A ransomware threat actor could exploit unpatched vulnerabilities in internet-exposed VPN infrastructure affecting BFS internal network access, resulting in operational disruption to core banking services, customer data exposure, and BSP-reportable cybersecurity incident." |

| --- |

Structured risk statements are essential for downstream analysis (Section 5), evaluation (Section 6), and treatment (Section 7). Vague or compound risk statements (e.g., 'cyberattacks') cannot be analyzed or treated meaningfully and are not acceptable in the BFS Risk Register.

# 5.  RISK ANALYSIS — LIKELIHOOD, IMPACT, AND RISK LEVEL

Risk analysis is the second phase of risk assessment per ISO/IEC 27001:2022 Clause 6.1.2(d). The objective of analysis is to determine the level of each identified risk by combining likelihood and impact assessments. BFS uses a qualitative 5×5 risk matrix producing risk levels that drive treatment decisions.

## 5.1  Likelihood Scale

Likelihood expresses the chance of a risk being realized within a defined time horizon (typically 12 months). BFS uses the following 5-level qualitative likelihood scale:

| Score | Likelihood Level | Description | Indicators |

| --- | --- | --- | --- |

| 5 | Almost Certain | Expected to occur in most circumstances; threat actively targeting the asset; weakness widely exploited; high confidence in occurrence within 12 months | Active exploitation observed; sector-wide campaigns; regulatory/audit findings indicating control failure; multiple recent BFS attempts |

| 4 | Likely | Will probably occur in most circumstances; threat capability and intent confirmed; significant weakness present | Threat actor capability demonstrated against similar targets; partial control failure; recent industry incidents of this type; active reconnaissance observed |

| 3 | Possible | Might occur at some time; threat capability exists; some weakness or partial controls | Generic threat applicable; no specific BFS targeting evidence; controls partially mitigate; occasional industry incidents |

| 2 | Unlikely | Could occur at some time but not expected; threat capability limited or strong controls in place | Theoretical threat with limited capability; strong controls in place; rare industry occurrence; no targeting indicators |

| 1 | Rare | May occur only in exceptional circumstances; threat capability minimal or controls excellent | Highly unusual threat; comprehensive controls; no realistic exploitation path; no historical occurrence in BFS or sector |

Likelihood assessment shall consider: the threat capability and intent (sophistication of available threat actors), the threat motivation (financial gain, espionage, disruption), the vulnerability presence and exploitability, the existing controls effectiveness, the historical incident frequency at BFS and in the sector, and the threat intelligence indicators.

## 5.2  Impact Scale

Impact expresses the consequence if a risk is realized. BFS impact assessment is multi-dimensional — a risk may have high impact in one dimension (e.g., regulatory) and lower impact in another (e.g., financial). The overall impact level is determined by the highest dimension. The following 5-level qualitative impact scale applies:

| Score | Level | Customer / Trust | Financial | Regulatory | Operational |

| --- | --- | --- | --- | --- | --- |

| 5 | Catastrophic | Material customer data breach affecting >100K customers; severe trust damage; sustained customer departure | > PHP 500M loss or equivalent | BSP material sanctions; NPC enforcement; PCI DSS non-compliance; potential license consequences | Core banking unavailable >24 hours; sustained inability to serve customers |

| 4 | Major | Customer data breach affecting 10K-100K customers; significant trust damage; visible customer departure | PHP 50M – 500M loss | BSP material findings; NPC notification; PCI DSS finding requiring remediation | Major service disruption 4-24 hours; multiple critical functions affected |

| 3 | Moderate | Customer data exposure 1K-10K customers; moderate trust damage; some customer concern | PHP 5M – 50M loss | BSP / NPC notifiable but routine; manageable PCI finding | Service disruption 1-4 hours; single critical function affected |

| 2 | Minor | Customer data exposure <1K customers; limited trust impact | PHP 500K – 5M loss | Internal compliance issue; minor regulatory attention | Brief service disruption <1 hour; non-critical function affected |

| 1 | Negligible | No customer data exposure; no measurable trust impact | < PHP 500K loss | No regulatory consequence | Minor inconvenience; no operational impact |

The impact assessment shall consider all four dimensions (customer/trust, financial, regulatory, operational) and the overall impact level is the highest of the four. For example, a risk with Financial impact 2 (Minor) but Regulatory impact 5 (Catastrophic — potential license consequence) is overall a Catastrophic risk. This prevents impact understatement in dimensions where BFS has greater exposure.

Additional impact dimensions considered in supplementary analysis where relevant: confidentiality breach severity, integrity compromise scope, availability degradation duration, intellectual property loss, employee impact, third-party impact, and broader financial sector impact.

## 5.3  Risk Level Matrix (5×5)

The risk level for each identified risk is determined by combining likelihood and impact in the following 5×5 matrix. The risk level drives risk evaluation (Section 6) and treatment decisions (Section 7).

|  | Impact 1 Negligible | Impact 2 Minor | Impact 3 Moderate | Impact 4 Major | Impact 5 Catastrophic |

| --- | --- | --- | --- | --- | --- |

| Likelihood 5 Almost Certain | MEDIUM (5) | HIGH (10) | HIGH (15) | CRITICAL (20) | CRITICAL (25) |

| Likelihood 4 Likely | LOW (4) | MEDIUM (8) | HIGH (12) | HIGH (16) | CRITICAL (20) |

| Likelihood 3 Possible | LOW (3) | MEDIUM (6) | MEDIUM (9) | HIGH (12) | HIGH (15) |

| Likelihood 2 Unlikely | LOW (2) | LOW (4) | MEDIUM (6) | MEDIUM (8) | HIGH (10) |

| Likelihood 1 Rare | LOW (1) | LOW (2) | LOW (3) | LOW (4) | MEDIUM (5) |

## 5.4  Risk Level Definitions

| Risk Level | Score Range | Definition | Required Treatment Posture |

| --- | --- | --- | --- |

| CRITICAL | 20–25 | Risks with severe potential consequences and high likelihood. Existential threat to BFS operations, regulatory standing, or customer trust. Unacceptable as-is. | Treatment is mandatory and urgent. Must be reduced to HIGH or below within 90 days. Board notification required. CEO/Board level acceptance authority for any temporary residual. |

| HIGH | 10–16 | Significant risks requiring active treatment. Substantial potential consequences or high likelihood. Above BFS risk appetite for retention without controls. | Treatment is mandatory. Must be reduced to MEDIUM or below within agreed timeline (typically 6 months). CISO + executive risk owner approval for residual. |

| MEDIUM | 5–9 | Moderate risks within BFS risk tolerance with appropriate controls. Routine business risks for a financial institution. | Treatment is recommended where cost-effective. Acceptable to retain MEDIUM residual risk with documented controls. CISO + risk owner approval. |

| LOW | 1–4 | Minor risks with limited potential consequences and low likelihood. Within BFS risk appetite without specific treatment. | Treatment is optional. Routine monitoring sufficient. Risk owner acceptance documented in Risk Register; no specific approval ceremony required. |

| ANALYSIS DISCIPLINE:  Likelihood and impact assessments shall be supported by documented rationale — not merely numerical assignments. Two analysts independently assessing the same risk should arrive at substantially the same level. When analyst disagreement occurs, the rationale exposed by the disagreement is itself valuable risk insight and shall be captured in the Risk Register. The methodology is repeatable, not merely consistent. |

| --- |

# 6.  RISK EVALUATION AND ACCEPTANCE CRITERIA

Risk evaluation is the third phase of risk assessment per ISO/IEC 27001:2022 Clause 6.1.2(e). The objective of evaluation is to compare analyzed risks against established risk acceptance criteria to determine which risks require treatment and which may be accepted as-is. ISO/IEC 27001:2022 Clause 6.1.2(a) specifically requires that risk acceptance criteria be established.

## 6.1  BFS Risk Appetite Statement

The Board of Directors of BFS Financial Services has established the following risk appetite statement for information security, integrated with the broader BFS enterprise risk appetite framework:

| BFS INFORMATION SECURITY RISK APPETITE STATEMENT<br>BFS has a LOW risk appetite for information security risks. As a regulated financial institution serving customers and operating within the broader Philippine financial system, BFS exists in a context where customer trust, regulatory standing, and operational continuity are foundational. BFS does not knowingly accept material risks to these foundations.<br>Specifically, BFS has:<br>•  ZERO TOLERANCE for risks that would reasonably foreseeably cause material customer data breach, sustained core banking unavailability, BSP material sanctions, or systematic regulatory non-compliance;<br>•  LOW APPETITE for HIGH-rated risks — these may be retained only with explicit treatment plans, defined timelines for risk reduction, and CISO + executive risk owner approval;<br>•  MODERATE APPETITE for MEDIUM-rated risks where appropriate controls are in place, residual risk is documented, and the cost of further reduction is disproportionate to the marginal risk reduction;<br>•  REASONABLE TOLERANCE for LOW-rated risks within ongoing operations, subject to routine monitoring rather than active treatment.<br>This risk appetite shall be applied consistently across the ISMS scope. It shall be reviewed annually by the Board Audit & Risk Committee. |

| --- |

## 6.2  Risk Acceptance Criteria

Risk acceptance criteria translate the BFS risk appetite into specific decision rules applied during risk evaluation. The following criteria determine whether a specific risk is acceptable, tolerable with conditions, or unacceptable:

| Risk Level | Acceptance Status | Specific Criteria and Conditions |

| --- | --- | --- |

| CRITICAL | UNACCEPTABLE | No CRITICAL risk shall be retained without active treatment. CRITICAL risks identified shall be reduced to HIGH or below within 90 days. Temporary CRITICAL residual during the 90-day reduction window requires CEO and Board Chair acceptance with explicit treatment milestones. Permanent acceptance of CRITICAL risk is prohibited. |

| HIGH | TOLERABLE WITH CONDITIONS | HIGH risk may be retained only when: (a) treatment plan is documented with specific controls and timelines; (b) compensating controls reduce material exposure during treatment period; (c) target reduction to MEDIUM is committed within 6 months; (d) approval by CISO + named executive risk owner; (e) Board Audit & Risk Committee notification; (f) quarterly progress review until reduced. |

| MEDIUM | ACCEPTABLE WITH CONTROLS | MEDIUM risk is acceptable when: (a) appropriate controls are in place per the BFS-ISP series and ISO 27001 Annex A; (b) residual risk is documented in the Risk Register; (c) risk owner approval is obtained; (d) annual review confirms continued acceptability. Further treatment is recommended where cost-effective but not mandatory. |

| LOW | ACCEPTABLE | LOW risk is generally acceptable as part of routine business operations. Documentation in the Risk Register and annual review are sufficient. No specific approval ceremony required beyond risk owner sign-off. |

## 6.3  Risk Evaluation Process

Risk evaluation operates as follows:

Each analyzed risk in the Risk Register is compared against the risk acceptance criteria in Section 6.2;

Risks evaluated as ACCEPTABLE (LOW or MEDIUM with controls in place) are recorded with risk owner acceptance and routine monitoring. No further treatment action required;

Risks evaluated as TOLERABLE WITH CONDITIONS (HIGH) are routed to risk treatment per Section 7. Conditions for tolerance are documented;

Risks evaluated as UNACCEPTABLE (CRITICAL) are routed to risk treatment with urgency. CEO and Board notification is initiated;

Risk evaluation outcomes are documented in the Risk Register with rationale, evaluation date, and evaluator identity.

## 6.4  Special Evaluation Considerations

Standard risk evaluation against the criteria above applies to most risks. The following special considerations apply where standard evaluation is insufficient:

Aggregate Risk: Multiple individually MEDIUM risks affecting the same asset, process, or business outcome may aggregate into a HIGH or CRITICAL effective exposure. The CRO and CISO shall identify aggregate risk patterns and evaluate them at the appropriate aggregate level;

Emerging Risk: Risks where likelihood or impact is highly uncertain (e.g., novel AI/LLM threats, emerging regulatory frameworks) are evaluated at the more conservative interpretation, with explicit recognition that further evaluation is required as the picture clarifies;

Regulatory Risk: Risks involving regulatory non-compliance — even if all other dimensions suggest LOW or MEDIUM — are evaluated at minimum HIGH because regulatory consequences are not within BFS appetite to accept;

Customer Trust Risk: Risks involving material customer data exposure or trust damage are evaluated with particular conservatism, reflecting the foundational nature of customer trust to BFS;

Cascading Risk: Risks that could trigger downstream consequences across multiple BFS systems or processes are evaluated based on the worst-case downstream impact, not merely the immediate impact at the point of compromise.

# 7.  RISK TREATMENT

Risk treatment is the process of selecting and implementing options for modifying risks that have been evaluated as requiring treatment. ISO/IEC 27001:2022 Clause 6.1.3 specifies the requirements for risk treatment, including the selection of treatment options, control selection, comparison against Annex A, production of the SoA, formulation of the Risk Treatment Plan, and obtaining risk owner approval and acceptance of residual risks.

## 7.1  Risk Treatment Options

BFS recognizes four standard risk treatment options. For each risk requiring treatment, one or more options are selected based on the criteria specified below:

| Treatment Option | Description | When Selected | Examples |

| --- | --- | --- | --- |

| MODIFY (Reduce) | Apply controls to reduce likelihood, impact, or both — bringing residual risk to acceptable level | Default option for most risks where suitable controls exist; cost-effective; aligned with ISO 27001 Annex A control framework | Implementing MFA reduces credential compromise likelihood; deploying EDR reduces malware impact; encryption reduces breach impact |

| AVOID | Eliminate the source of risk by ceasing the activity, removing the asset, or restructuring to remove exposure | Where the activity creating the risk is not essential to BFS purpose; where treatment cost exceeds business value; where regulatory or ethical concerns make the activity inappropriate | Discontinuing a specific service that creates disproportionate risk; not entering a new business line whose risk exceeds appetite; removing legacy systems with intractable vulnerabilities |

| TRANSFER | Share or transfer the risk to another party — typically through insurance, contractual transfer, or outsourcing | Where another party is better positioned to manage the risk; where insurance is cost-effective relative to internal control; where regulatory framework supports transfer | Cyber insurance for incident response and breach costs; outsourcing specific high-risk functions to specialist providers (where contract transfers risk); contractual liability allocation in service provider agreements |

| ACCEPT | Knowingly retain the risk without further action, with documented acceptance | Where risk is below acceptance threshold (LOW or MEDIUM); where treatment cost exceeds risk reduction value; where compensating controls and monitoring suffice | Routine LOW risks with proportionate controls; MEDIUM risks where ALARP (As Low As Reasonably Practicable) is achieved; explicit acceptance for residuals after Modify treatment |

In practice, most risks at BFS are treated through MODIFY (applying controls) — this is the dominant treatment for a regulated financial institution because BFS cannot generally avoid the activities creating risk (banking) and transfer is limited (BFS retains primary regulatory accountability regardless of contractual transfer). MODIFY treatment is implemented through the BFS-ISP series of technical control policies, with controls selected by reference to ISO 27001 Annex A as required by Clause 6.1.3(b).

## 7.2  Control Selection and Annex A Comparison

ISO/IEC 27001:2022 Clause 6.1.3(b) requires that necessary controls determined for risk treatment be compared with the controls in Annex A of ISO/IEC 27001:2022 to verify that no necessary controls have been omitted. BFS implements this comparison through the following process:

For each risk requiring MODIFY treatment, identify the controls necessary to reduce the risk to acceptable level. Controls may be technical, organizational, physical, or human.

Compare the identified controls against the 93 controls in ISO/IEC 27001:2022 Annex A. Use the BFS Risk-to-Control Mapping Catalogue (maintained as a working document by the CISO Office) to support this comparison.

For any Annex A control not identified through the risk-driven process, evaluate whether the control is applicable to BFS — given the scope (BFS-ISMS-002), the risk landscape (this Risk Register), and the regulatory environment. Annex A controls deemed applicable but not yet identified through risk-driven analysis shall be added to the treatment plan.

Document each Annex A control's applicability decision (Applicable / Not Applicable) and justification in the Statement of Applicability (BFS-ISMS-004). Justifications shall be specific — generic justifications such as 'not relevant to BFS' are not acceptable.

For Applicable Annex A controls, document the implementation status and the reference to the BFS policy or procedure implementing the control. The BFS-ISP series provides comprehensive implementation references.

This Annex A comparison process is not a one-time activity — it is performed at every annual SoA review and whenever material changes to the Risk Register occur. The comparison ensures BFS does not miss applicable controls through risk identification gaps and provides the audit-friendly mapping that ISO 27001 certification bodies expect.

## 7.3  Risk Treatment Plan Components

Per ISO/IEC 27001:2022 Clause 6.1.3(e), BFS shall formulate a Risk Treatment Plan documenting how each risk will be addressed. The BFS Risk Treatment Plan, maintained by the CISO Office, includes for each risk requiring treatment:

Risk identifier (linking to Risk Register entry);

Risk statement and current risk level (inherent + current residual);

Selected treatment option (Modify / Avoid / Transfer / Accept) and rationale;

Specific controls being applied (referenced to BFS-ISP policies and ISO 27001 Annex A controls);

Implementation actions, milestones, and target dates;

Accountable owner for implementation (typically the relevant business unit or IT function);

Risk owner who will accept residual risk on completion;

Target residual risk level after treatment;

Effectiveness measurement criteria — how BFS will verify the treatment is working;

Status (Planned / In Progress / Implemented / Validated).

## 7.4  Risk Owner Approval and Residual Risk Acceptance

ISO/IEC 27001:2022 Clause 6.1.3(f) requires risk owners to approve the risk treatment plan and accept the residual risks. BFS implements approval authority calibrated to risk severity:

| Risk Level | Treatment Approval Authority | Residual Risk Acceptance Authority |

| --- | --- | --- |

| CRITICAL | CISO + CIO + CRO joint approval; Board Audit & Risk Committee notification | CEO + Board Chair (only for documented temporary residual during 90-day reduction window; permanent CRITICAL residual not acceptable) |

| HIGH | CISO + named executive risk owner approval | Executive risk owner (CIO/CRO/CCO/CTO/business unit head) with CISO concurrence; Board Audit & Risk Committee notification; quarterly review until reduced |

| MEDIUM | CISO Office + risk owner approval | Risk owner (typically business unit head or IT function head) with CISO concurrence; documented in Risk Register; annual review |

| LOW | Risk owner approval | Risk owner sign-off in Risk Register; routine monitoring sufficient |

Approvals shall be documented in the Risk Register with: approver name and role, approval date, approved residual risk level, conditions attached to approval (if any), and review date. Approvals are non-anonymous — collective approval is not permitted; specific named individuals must approve.

| APPROVAL DISCIPLINE:  Risk owner approval is not a procedural formality — it is the explicit acknowledgment by the BFS executive accountable for an asset, process, or outcome that they accept the residual risk after treatment. If a risk owner declines to approve a residual risk, the risk requires further treatment. If risk owners across BFS systematically push back against residual risk approvals, this signals that the BFS risk appetite may be too permissive and warrants Board review. |

| --- |

# 8.  RISK REGISTER MAINTENANCE

The BFS Information Security Risk Register is the authoritative record of all identified information security risks, their analysis, treatment, and current residual status. The Risk Register is the operational artifact produced by applying this methodology — and the input to BFS-ISMS-004 (Statement of Applicability), BFS-ISMS-005 (Information Security Objectives), Board reporting, and BSP/regulatory communication.

## 8.1  Risk Register Schema

Each entry in the BFS Information Security Risk Register shall include the following attributes at minimum. The Risk Register is maintained in the BFS GRC platform or equivalent, with the CISO Office as system owner.

| Attribute | Description / Validation Rule |

| --- | --- |

| Risk ID | Unique identifier (e.g., BFS-RISK-2026-0001). Persistent across reassessments. Required for traceability between risks, treatment plan entries, and SoA control mappings. |

| Risk Title | Short descriptive title (e.g., 'Ransomware compromise of internet-facing VPN'). Maximum 120 characters. |

| Risk Statement | Full structured risk statement per Section 4.4 format — threat exploiting vulnerability affecting asset resulting in consequence. |

| Risk Category | Category for grouping and reporting: e.g., External Attack, Insider Threat, Third-Party Risk, Compliance Risk, Operational Risk, Emerging/AI Risk, Physical Risk. |

| Identification Source | How the risk was identified: Asset-Based / Threat-Based / Scenario-Based / Compliance-Based / Incident-Driven / Audit-Identified / Penetration Test / Threat Intelligence. |

| Affected Assets | Specific BFS assets, processes, or services affected, with references to BFS-ISP-001 Asset Inventory and BFS-ISP-016 Application Inventory entries. |

| Affected Interested Parties | Which interested parties (per BFS-ISMS-002 Interested Parties Register) are affected if this risk is realized. |

| Threat Source | Specific threat actor category or source: e.g., External Cybercriminal, Nation-State APT, Insider, Vendor, Natural Cause, System Failure. |

| Vulnerability | Specific vulnerability or condition that enables the threat: technical vulnerability, process gap, control weakness, design flaw. |

| Existing Controls | Current controls already in place (referenced to BFS-ISP policies and ISO 27001 Annex A controls). Used in inherent vs. current risk distinction. |

| Inherent Likelihood / Impact / Level | Risk level if no controls were in place. Documents the raw exposure. |

| Current Likelihood / Impact / Level | Risk level with current controls in place. The starting point for treatment decisions. |

| Risk Owner | Named executive or business unit head with accountability and authority for this risk. Cannot be a function or team — must be a named person at appropriate level. |

| Risk Treatment Decision | Treatment option selected: Modify / Avoid / Transfer / Accept. With rationale. |

| Treatment Plan Reference | Link to specific Risk Treatment Plan entries; specific controls being applied; target residual risk level. |

| Target Residual Likelihood / Impact / Level | Risk level expected after planned treatment is complete. |

| Implementation Status | Treatment progress: Planned / In Progress / Implemented / Validated. With expected and actual completion dates. |

| Current Residual Likelihood / Impact / Level | Current risk level after controls implemented to date. Updated as treatment progresses. |

| Risk Owner Approval | Documented approval of treatment plan and acceptance of residual risk: approver name, role, date, conditions. |

| Last Reassessment Date | Date of most recent risk analysis review. Drives reassessment cadence per Section 9. |

| Next Reassessment Due | Scheduled date for next risk reassessment based on risk level (Section 9). |

| Related Risks | References to related risks in the Register (e.g., aggregate risk relationships, cascading risk relationships). |

| Annex A Control Mapping | Mapping to ISO 27001 Annex A controls supporting risk treatment (links to SoA — BFS-ISMS-004). |

| Risk Status | Lifecycle status: Active / Accepted / Treated-Closed / Materialized (incident occurred) / Superseded. |

## 8.2  Risk Register Maintenance Responsibilities

CISO Office: System owner of the Risk Register. Maintains data quality, schema currency, integration with related documents (SoA, Treatment Plan, Asset Inventory). Coordinates annual reassessment cycle;

Risk Management Team (CRO function): Co-owner with CISO Office. Reviews Risk Register from enterprise risk perspective. Ensures consistency with broader BFS risk management. Reports risk posture to the Board;

Risk Owners: Maintain accuracy of risks they own. Notify CISO Office of changes affecting their risks (asset changes, threat changes, control changes). Approve treatment plans and residual risk for their risks;

Information Security Steering Committee: Reviews Risk Register quarterly. Identifies aggregate risk patterns. Recommends methodology adjustments;

Internal Audit: Independently validates Risk Register completeness, accuracy, and consistency with operational reality. Reports to the Audit Committee.

## 8.3  Risk Register Confidentiality

The full Risk Register is classified CONFIDENTIAL and is accessible only to: CISO Office, Risk Management Team, named Risk Owners (for their own risks), Internal Audit, regulators (during examinations), and ISO 27001 certification body (during audits). The Risk Register shall not be exposed publicly or to general BFS staff — knowledge of specific risks could itself be exploited by threat actors.

Aggregated, anonymized risk reporting suitable for broader audiences (Board reports, regulatory submissions, certification documentation) is produced through the established reporting channels rather than by direct Risk Register access.

# 9.  RISK REASSESSMENT CYCLE

ISO/IEC 27001:2022 Clauses 8.2 and 8.3 require BFS to perform risk assessments at planned intervals or when significant changes are proposed or occur. Risk reassessment is the operational mechanism that keeps the Risk Register current.

## 9.1  Periodic Reassessment Schedule

BFS conducts risk reassessment at frequencies calibrated to risk level — higher-risk items receive more frequent review:

| Risk Level | Reassessment Frequency | Reassessment Activities |

| --- | --- | --- |

| CRITICAL | Monthly | Full reassessment of likelihood, impact, control effectiveness, treatment progress. Risk owner sign-off each cycle. Board reporting at every cycle until reduced. |

| HIGH | Quarterly | Reassessment of likelihood, impact, control effectiveness. Review of treatment progress against milestones. Risk owner sign-off each cycle. |

| MEDIUM | Semi-annually | Review of likelihood and impact for material changes. Validation of control effectiveness. Risk owner re-confirmation. |

| LOW | Annually | Review at annual comprehensive reassessment. Validation that risk remains LOW. Routine sign-off. |

| All Risks (Annual) | Annually | Comprehensive reassessment of full Risk Register coordinated with Management Review (BFS-ISMS-009) and SoA review (BFS-ISMS-004). Calibration of likelihood/impact assessments against current threat landscape. |

## 9.2  Event-Triggered Reassessment

Beyond periodic reassessment, the following events trigger immediate reassessment of affected risks:

Significant security incident at BFS (per BFS-ISP-017) — Post-Incident Review systematically reassesses related risks;

Significant security incident in the Philippine financial sector or globally affecting comparable institutions — sector-relevant risks reassessed;

Material change to BFS technology landscape — new platforms, cloud regions, AI/LLM deployments, significant architectural changes;

Material change to BFS business operations — new business lines, divestitures, M&A activity, new geographic operations;

Material change to threat intelligence — new attack categories, novel TTPs, threat actor focus shifts;

Material change to regulatory environment — new BSP circulars, NPC issuances, PCI DSS revisions, ISO standard updates;

Material change to BFS controls — significant control implementations or deprecations;

Material penetration test or audit findings revealing previously-unidentified attack paths or control gaps;

Significant change to Service Provider Inventory — new TIER 1 providers, changes affecting third-party risk profile.

## 9.3  Reassessment Process

CISO Office identifies risks scheduled for reassessment (periodic) or triggered for reassessment (event-driven).

Risk Management Team in coordination with relevant Risk Owners reviews the current risk against current conditions: Has the threat landscape changed? Have vulnerabilities been mitigated or new ones emerged? Have controls been implemented, modified, or deprecated? Have impact dimensions changed?

Updated likelihood and impact assessments are documented with rationale. Where assessments change, the rationale shall explicitly address what changed since the prior assessment.

If reassessment changes the risk level (LOW to MEDIUM, MEDIUM to HIGH, etc.), revised treatment is determined per Section 7.

Risk Owner approval is obtained for the updated assessment and any treatment plan changes.

Risk Register is updated with the reassessment date, updated values, and approver record.

Material changes to the Risk Register are reported to the Information Security Steering Committee and (for material changes) to the Board Audit & Risk Committee.

## 9.4  Methodology Review and Calibration

The risk methodology itself shall be reviewed annually as part of the ISMS Management Review (BFS-ISMS-009) to ensure it remains fit for purpose. Methodology review considers:

Has the methodology produced consistent, defensible risk assessments? Are different analysts arriving at substantially the same conclusions for the same risks?

Does the likelihood scale calibration reflect current threat realities, or does experience suggest scales should be adjusted?

Does the impact scale calibration reflect BFS's current size, regulatory environment, and risk tolerance?

Has the risk acceptance criteria framework supported good treatment decisions, or have decisions been pushed in undesirable directions by criteria misalignment?

Are emerging risk categories (AI, cloud-native, supply chain) adequately addressed by the methodology, or do they require methodological extension?

What lessons from the operational application of the methodology should be captured?

Methodology adjustments are approved by the CISO and CRO with notification to the Information Security Steering Committee and Board Audit & Risk Committee. Material methodology changes (e.g., changing the risk matrix scale, revising acceptance criteria) require Board approval.

# 10.  ROLES AND RESPONSIBILITIES

| Role | Risk Methodology Responsibilities |

| --- | --- |

| Board of Directors / Audit & Risk Committee | Approves the risk methodology and the BFS risk appetite statement. Reviews quarterly risk posture reporting. Receives notification of CRITICAL risks and material risk changes. Approves material methodology changes. |

| Chief Executive Officer | Approves CRITICAL risk treatment plans and any temporary CRITICAL residual acceptance. Ensures business priorities are reflected in risk decisions. |

| Chief Information Officer | Co-approver of risk methodology and Risk Register. Risk owner for IT-domain risks. Ensures IT operations support risk treatment delivery. |

| Chief Information Security Officer | Owner of this methodology document. Operates the Risk Register. Leads risk identification and analysis activities. Approves CRITICAL/HIGH risk treatment plans. Reports risk posture to executives, Steering Committee, and Board. |

| Chief Risk Officer | Co-owner of methodology with CISO. Owner of broader BFS enterprise risk framework into which information security risk integrates. Reviews material risks and approves enterprise-level risk acceptances. |

| Data Privacy Officer | Risk owner for personal data protection risks. Co-evaluates risks involving personal data exposure. Provides DPA expertise to risk assessment activities. |

| Chief Compliance Officer | Risk owner for regulatory compliance risks. Ensures regulatory dimensions are captured in impact assessments. Coordinates with regulators on material risk matters. |

| Risk Management Team | Operational support to the CISO and CRO. Coordinates risk identification workshops, analysis exercises, and reassessment cycles. Maintains Risk Register data quality. Produces risk reports. |

| Risk Owners | Named executives, business unit heads, or function heads accountable for specific risks. Approve treatment plans and accept residual risk for their risks. Notify CISO Office of conditions affecting their risks. |

| Business Unit Heads | Risk owners for risks within their business units. Provide business context to risk assessments. Implement business-level controls supporting treatment plans. |

| IT Security and Application Security Teams | Provide technical expertise to risk identification and analysis. Implement technical controls supporting treatment plans. Operate detection systems that monitor for risk realization. |

| Information Security Steering Committee | Reviews Risk Register quarterly. Identifies aggregate and cross-cutting risk patterns. Recommends methodology adjustments. Champions risk-informed decision making. |

| Internal Audit | Independently validates the methodology's operational application: completeness of identification, defensibility of analysis, consistency of evaluation, adequacy of treatment, accuracy of Risk Register. |

# 11.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes the BFS Risk Assessment and Treatment Methodology aligned with ISO/IEC 27001:2022 Clauses 6.1.2 and 6.1.3, ISO/IEC 27005:2022, ISO 31000:2018, and NIST SP 800-30. Defines 5×5 qualitative risk matrix, four-tier risk levels, risk appetite and acceptance criteria, four standard treatment options, and risk owner approval framework. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Clauses 6.1.2 and 6.1.3 Requirements Mapping

ISO/IEC 27001:2022 Clauses 6.1.2 (Information Security Risk Assessment) and 6.1.3 (Information Security Risk Treatment) each impose specific requirements. The table below confirms how this Risk Assessment and Treatment Methodology fulfills each requirement.

| Clause | Requirement | How This Document Fulfills |

| --- | --- | --- |

| 6.1.2(a) | Establish and maintain information security risk criteria including risk acceptance criteria | Section 6.2 establishes detailed risk acceptance criteria for each risk level (CRITICAL/HIGH/MEDIUM/LOW). Section 6.1 documents the BFS risk appetite statement. Section 5 defines likelihood and impact criteria. |

| 6.1.2(a) | Establish criteria for performing information security risk assessments | Section 5 defines the qualitative 5×5 likelihood/impact framework. Section 4 defines identification approach. Section 9 defines reassessment cadence. |

| 6.1.2(b) | Ensure that repeated information security risk assessments produce consistent, valid, comparable results | Section 3.3 establishes Repeatability and Consistency as a methodology principle. Section 5 provides structured criteria with examples to reduce subjectivity. Section 9.4 calibrates methodology annually. |

| 6.1.2(c) | Identify the information security risks | Section 4 defines the comprehensive risk identification approach including asset-based, threat-based, scenario-based, and compliance-based identification. Section 4.4 specifies the structured risk statement format. |

| 6.1.2(c)(1) | Identify risks associated with the loss of confidentiality, integrity and availability | Section 4 identification covers all CIA dimensions. Section 5.2 explicit impact scale addresses confidentiality, integrity, availability dimensions in customer/trust column. |

| 6.1.2(c)(2) | Identify the risk owners | Section 8 Risk Register schema includes mandatory Risk Owner attribute. Section 7.4 defines risk owner approval authority. Section 10 identifies risk owner role. |

| 6.1.2(d) | Analyze the information security risks | Section 5 provides the comprehensive risk analysis methodology — likelihood, impact, and combined risk level via the 5×5 matrix. |

| 6.1.2(d)(1) | Assess the potential consequences if the risks were to materialize | Section 5.2 multi-dimensional impact scale (customer/trust, financial, regulatory, operational) ensures comprehensive consequence assessment. |

| 6.1.2(d)(2) | Assess the realistic likelihood of the occurrence | Section 5.1 likelihood scale with detailed indicators ensures evidence-based likelihood assessment. |

| 6.1.2(d)(3) | Determine the levels of risk | Section 5.3 5×5 risk matrix produces risk levels. Section 5.4 defines CRITICAL/HIGH/MEDIUM/LOW levels. |

| 6.1.2(e) | Evaluate the information security risks | Section 6 risk evaluation against risk acceptance criteria. Section 6.3 evaluation process. |

| 6.1.2(e)(1) | Compare results of risk analysis with risk criteria | Section 6.2 risk acceptance criteria explicitly compared against analyzed risk levels in evaluation process. |

| 6.1.2(e)(2) | Prioritize the analyzed risks for risk treatment | Section 6.2 acceptance criteria categorize risks as Unacceptable / Tolerable with Conditions / Acceptable, prioritizing UNACCEPTABLE for immediate treatment. |

| 6.1.3(a) | Select appropriate information security risk treatment options | Section 7.1 defines the four standard treatment options (Modify/Avoid/Transfer/Accept) with selection criteria. |

| 6.1.3(b) | Determine controls necessary to implement the treatment option | Section 7.2 control selection process; treatment plan in Section 7.3 documents specific controls per risk. |

| 6.1.3(c) | Compare controls determined with those in Annex A | Section 7.2 mandates Annex A comparison. Process explicitly documented in steps 1-5 of Section 7.2. Implemented through SoA (BFS-ISMS-004). |

| 6.1.3(d) | Produce a Statement of Applicability | Section 7.2 step 4 explicitly documents SoA production. SoA is BFS-ISMS-004. |

| 6.1.3(e) | Formulate an information security risk treatment plan | Section 7.3 Risk Treatment Plan components specify the comprehensive plan format. |

| 6.1.3(f) | Obtain risk owners' approval of the treatment plan and acceptance of residual risks | Section 7.4 risk owner approval framework with calibrated authority by risk level. Section 8.1 Risk Register schema captures approval records. |

| 8.2 / 8.3 | Perform risk assessments at planned intervals or when significant changes are proposed or occur | Section 9.1 periodic reassessment schedule (calibrated by risk level). Section 9.2 event-triggered reassessment. |

# APPENDIX B:  Risk Treatment Option Selection Decision Tree

The following decision tree supports treatment option selection per Section 7.1. The tree is a guideline to support consistent decision-making, not a rigid algorithm — judgment is required for complex risks.

| Question | Decision Path |

| --- | --- |

| Q1: Can BFS cease the activity creating the risk without unacceptable business consequence? | If YES and risk is HIGH/CRITICAL with no cost-effective Modify treatment → consider AVOID. If NO → proceed to Q2. |

| Q2: Are suitable controls available that would reduce the risk to acceptable level at proportionate cost? | If YES → MODIFY (the dominant treatment for BFS). Identify and implement controls. If NO → proceed to Q3. |

| Q3: Can the risk be effectively transferred to another party (insurance, contractual transfer to specialist provider)? | If YES and economically rational → TRANSFER (typically combined with residual MODIFY). Note BFS retains primary regulatory accountability regardless. If NO → proceed to Q4. |

| Q4: Is the residual risk after available treatment within BFS risk acceptance criteria? | If YES and treatment cost is disproportionate to incremental risk reduction → ACCEPT (with appropriate authority and documentation). If NO → escalate to executive risk owner; risk requires CISO/CRO/Board attention; AVOID may need reconsideration. |

| Special: Is the risk a regulatory compliance risk? | Regulatory risks are typically NOT acceptable for permanent acceptance. Treatment is mandatory. Selection generally between MODIFY (implement controls to achieve compliance) or AVOID (cease the non-compliant activity). |

| Special: Is the risk a CRITICAL risk? | CRITICAL risks require immediate treatment. Permanent ACCEPT is prohibited. Selection between MODIFY (urgent control implementation) and AVOID (cease the activity until risk is reduced). |

# APPENDIX C:  Worked Example — Ransomware Risk

The following worked example illustrates application of the methodology to a representative BFS risk. This example is illustrative only — actual BFS Risk Register entries are confidential and maintained per Section 8.

| Step | Worked Example |

| --- | --- |

| Risk Identification (Section 4) | Source: Threat-Based + Sector Threat Intelligence. Asset Affected: Core banking platform, customer data stores. Risk Statement: "A ransomware threat actor could exploit unpatched vulnerabilities in internet-exposed VPN infrastructure affecting BFS internal network access, resulting in operational disruption to core banking services and BSP-reportable cybersecurity incident." |

| Likelihood Assessment (5.1) | Score: 4 (Likely). Rationale: Active ransomware campaigns targeting Philippine financial sector observed in past 12 months; VPN infrastructure exposed to internet; some unpatched vulnerabilities present despite BFS-ISP-007 patch SLAs; recent industry incidents demonstrate threat actor capability against similar targets. |

| Impact Assessment (5.2) | Customer/Trust: 4 (Major) — significant trust damage from extended core banking outage. Financial: 4 (Major) — PHP 50-500M loss range from outage + recovery costs. Regulatory: 5 (Catastrophic) — BSP material findings; PCI DSS implications. Operational: 5 (Catastrophic) — core banking unavailable >24 hours likely. Overall Impact: 5 (Catastrophic) — driven by Regulatory and Operational dimensions. |

| Risk Level (5.3) | Likelihood 4 × Impact 5 = Score 20 = CRITICAL |

| Risk Evaluation (Section 6) | Comparison against risk acceptance criteria: CRITICAL = UNACCEPTABLE. Treatment is mandatory and urgent. 90-day reduction timeline required. |

| Risk Treatment Selection (7.1) | Treatment: MODIFY (apply controls to reduce likelihood and impact). AVOID not feasible (cannot cease internet-facing operations). TRANSFER applicable for residual financial impact (cyber insurance) but not primary treatment. |

| Control Selection (7.2) | Controls applied: BFS-ISP-007 vulnerability remediation (24-hour SLA for KEV/CRITICAL CVEs); BFS-ISP-006 zero-trust access (eliminating VPN architecture in target state); BFS-ISP-010 EDR with ransomware-specific detection; BFS-ISP-011 immutable backups with tested ransomware recovery; BFS-ISP-013 NDR detection; BFS-ISP-018 quarterly Purple Team exercises validating ransomware detection. Annex A controls: A.8.8, A.8.9, A.8.13, A.8.16, A.8.20, A.8.22, A.8.23, A.8.32 — all confirmed Applicable in SoA. |

| Target Residual Risk | Likelihood reduced to 2 (Unlikely) through patching SLA + ZTNA + EDR. Impact reduced to 3 (Moderate) through immutable backup-based recovery. Target residual: 2 × 3 = 6 = MEDIUM (acceptable with controls). |

| Risk Owner Approval | Risk Owner: Chief Information Officer (system owner of core banking infrastructure). Treatment plan approved by CISO + CIO. Residual risk acceptance: CIO with CISO concurrence; Board Audit & Risk Committee notified at next meeting; quarterly progress review until residual achieved. |

| Reassessment | Quarterly reassessment per Section 9.1 (current HIGH/CRITICAL during 90-day reduction window) until residual reaches MEDIUM, then semi-annual reassessment. |

BFS-ISMS-003  |  Risk Assessment and Treatment Methodology  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal and Audit Use Only.
