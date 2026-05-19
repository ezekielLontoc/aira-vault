---
title: "BFS-ISP-031-Third-Party-Risk-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Supplier-and-Third-Party-Risk/BFS-ISP-031-Third-Party-Risk-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:41Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Supplier-and-Third-Party-Risk"
aliases:
  - "BFS-ISP-031-Third-Party-Risk-Management-Policy"
creator: "Un-named"
created: "2026-05-07T15:38:00Z"
modified: "2026-05-08T06:43:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>THIRD-PARTY RISK<br>MANAGEMENT POLICY<br>Comprehensive Third-Party Risk Management for BFS Outsourcing Arrangements — Materiality Assessment, Due Diligence, Contracting, Ongoing Monitoring, Concentration Risk, Cross-Border Considerations, AI Vendor Specifics, and BSP Circular 808 Operationalization<br>Policy Reference: BFS-ISP-031<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Operationalizes BSP Circular 808 Outsourcing Framework<br>Aligned with ISO/IEC 27001:2022 A.5.19-A.5.23, BSP Circulars 1140 / 1048, RA 10173 §43-§46 Personal Information Processors<br>Comprehensive Third-Party Discipline for Regulated Financial Operations |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Third-Party Risk Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-031 |

| Policy Owner | Chief Risk Officer (CRO) / Chief Information Security Officer (CISO) / Chief Compliance Officer (CCO) / Data Protection Officer (DPO) — quad-functional ownership |

| Document Author | Risk Management / CISO Office / Compliance Office / DPO / Procurement / Outsourcing Office / Legal Counsel |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2026 |

| Review Date | April 2027 |

| Review Cycle | Annual baseline review with mandatory review after: BSP regulatory developments affecting outsourcing or third-party risk; material third-party risk events at BFS or peer institutions; material change to BFS outsourcing portfolio; accumulated lessons from third-party risk operations; evolution of related international frameworks (Basel, FSB) |

| Supersedes | Not Applicable (New Document — Consolidates Previously Distributed Third-Party Risk Coverage) |

| Document Hierarchy Position | TIER 2 — Information Security Policy with broader risk management scope. Subordinate to BFS-ISMS-001. Coordinates with BFS-ISMS-003 enterprise risk methodology. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy); BFS-ISMS-003 (Risk Management Methodology) |

| Companion Documents | BFS-ISP-015 (Service Provider Management — IT-focused service provider operations); BFS-ISP-003 (Data Protection — RA 10173 third-party data processing); BFS-ISP-024 (Information Transfer — cross-border third-party data flows); BFS-ISP-026 (Compliance — third-party compliance considerations); BFS-ISP-011-BCP (Business Continuity — third-party continuity); BFS-ISP-011-DRP (Disaster Recovery — third-party DR); BFS-AI-001 §9.4 (Third-Party AI considerations); BFS-AI-002 §9.11 (Third-Party AI risk) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.5.19 (Information security in supplier relationships), A.5.20 (Addressing information security within supplier agreements), A.5.21 (Managing information security in the ICT supply chain), A.5.22 (Monitoring, review and change management of supplier services), A.5.23 (Information security for use of cloud services); ISO 31000:2018 Risk Management; ISO 22301:2019 BCMS supplier provisions; coordinated with BFS ISMS framework |

| Regulatory Reference | BSP Circular 808 (Outsourcing Framework — primary regulatory reference); BSP Circular 1140 (IT Risk Management — third-party IT risk); BSP Circular 1048 (Cybersecurity — third-party cybersecurity); BSP Circular 982 (Electronic Banking — third-party EBT); BSP Circular 951 (BCM — third-party continuity); BSP supervisory expectations on related-party transactions; RA 10173 §43-§46 (Personal Information Processors); NPC Circular 16-02 (Data Sharing Agreements); RA 11765 (Consumer Protection — third-party touchpoints); cross-border data transfer considerations |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Information Security Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Data Protection Officer |  |  |  |

| Chief Information Officer |  |  |  |

| Chief Financial Officer |  |  |  |

| Chief Legal Counsel |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Third-Party Risk Management Policy operationalizing BSP Circular 808 Outsourcing Framework and ISO/IEC 27001:2022 Annex A.5.19-A.5.23 (Supplier relationships) in unified comprehensive policy. It provides BFS with structured discipline for managing risks arising from third-party relationships across the full spectrum of BFS outsourcing — IT services, business process outsourcing, professional services, agents, consultants, cloud services, and AI vendors.

Third-party risk is foundational concern for regulated financial institutions. BSP supervisory framework, particularly BSP Circular 808 (Outsourcing Framework), establishes specific expectations on bank outsourcing arrangements. Material outsourcing requires BSP notification and is subject to specific operational expectations including governance, due diligence, contracting, monitoring, and continuity. Third-party operational disruption can cause material BFS service disruption — observed in industry incidents involving cloud provider outages, payment processor failures, and material vendor cyber events. Third-party security weaknesses can become BFS security weaknesses — the supply chain is part of the threat surface. Third-party regulatory issues can become BFS regulatory issues.

BFS as a BSP-supervised bank has comprehensive third-party engagement supporting operations. Core banking platform vendors, payment system processors, AML/KYC service providers, AI/ML platform providers, cloud infrastructure providers, foundation model API providers, professional services firms (audit, legal, consulting), branch-related services, agent banking arrangements where applicable, and various other engagements. Each warrants risk-calibrated management. Coherent third-party risk discipline across the portfolio is foundational governance capability.

This policy consolidates third-party risk provisions previously distributed across BFS-ISP-015 (Service Provider Management — IT focus), BFS-ISP-024 §7 (cross-border data), BFS-ISP-026 (compliance considerations), BFS-AI-001 §9.4 (third-party AI), BFS-ISP-011-BCP (continuity considerations), and other policies. The distributed coverage remains valid; this policy provides dedicated comprehensive document supporting BSP examination focus on third-party risk and providing single source of truth for third-party risk discipline. BFS-ISP-015 continues providing operational depth for IT/security service providers; this policy provides broader framework.

Beyond BSP Circular 808 alignment, this policy addresses RA 10173 §43-§46 personal information processor framework — third parties processing personal data on behalf of BFS are personal information processors with specific RA 10173 obligations passed through contractually. NPC Circular 16-02 governs data sharing agreements where applicable. Cross-border third-party arrangements per BFS-ISP-024 §7 implicate adequacy assessment and contractual safeguards.

BFS approach to third-party risk is risk-calibrated discipline — material outsourcing receives comprehensive governance per BSP Circular 808; routine third-party engagements receive proportionate management. The policy avoids over-engineering routine engagements while ensuring material engagements receive appropriate attention.

The specific objectives of this policy are to:

Establish comprehensive third-party risk management framework operationalizing BSP Circular 808;

Establish materiality assessment determining governance intensity per third-party engagement;

Define third-party lifecycle from identification through exit — pre-engagement, engagement, ongoing, termination;

Establish pre-engagement due diligence calibrated to materiality;

Define contractual provisions appropriate to third-party engagement type and materiality;

Establish ongoing monitoring discipline including performance, risk, and compliance dimensions;

Address concentration risk including vendor concentration, geographic concentration, technology concentration;

Address related-party considerations per BSP related-party transaction framework;

Address cross-border outsourcing considerations including data, regulatory, and operational dimensions;

Address AI vendor specifics coordinating with BFS-AI-001 §9.4;

Address fourth-party considerations — third party's third parties (sub-contracting);

Define exit strategy and continuity expectations supporting BFS operational resilience;

Coordinate with BFS-ISP-015 (IT service provider operations), BFS-ISP-003 (personal data), BFS-ISMS-003 (enterprise risk), and other companion policies;

Provide audit-friendly documentation supporting BSP examinations on outsourcing per Circular 808 and external audit reviews of third-party risk discipline.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Third Party | External entity providing goods, services, or capability to BFS — vendors, suppliers, service providers, professional services firms, consultants, agents, partners. Distinct from BFS personnel and BFS subsidiaries. |

| Outsourcing | Per BSP Circular 808 — arrangement where third party performs activities for BFS that BFS could otherwise perform. Includes both material and non-material outsourcing with different governance intensity per Section 4. |

| Material Outsourcing | Per BSP Circular 808 — outsourcing of significant functions, where disruption could materially affect BFS operations, customers, or compliance. Subject to BSP notification and specific governance expectations. |

| Non-Material Outsourcing | Outsourcing not meeting material thresholds — subject to proportionate governance per Section 4. |

| Outsourced Function | Specific function performed by third party — for example, IT infrastructure operation, payment processing, AML monitoring, customer service operations. |

| Service Provider | Third party providing services — typically continuing relationship with operational integration. Subset of third parties. |

| Vendor | Third party providing goods or services — broader term encompassing service providers and product suppliers. |

| Cloud Service Provider | Third party providing cloud infrastructure, platform, or software services — IaaS, PaaS, SaaS. |

| Sub-Contractor (Fourth Party) | Third party engaged by BFS third party to support BFS-related services — fourth party from BFS perspective. Subject to flow-down provisions per Section 5. |

| Personal Information Processor | Per RA 10173 §43-§46 — third party processing personal data on behalf of BFS. BFS retains personal information controller role; processor processes per BFS instructions. |

| Related Party | Per BSP related-party framework — entities with specified ownership or governance relationships warranting specific transaction governance. |

| Concentration Risk | Risk arising from over-reliance on specific third parties, geographic regions, or technologies — vendor concentration, geographic concentration, technology concentration. |

| Due Diligence | Pre-engagement assessment of prospective third party — financial, operational, security, compliance, reputational dimensions calibrated to materiality. |

| Right to Audit | Contractual right enabling BFS or its representatives to examine third-party activities, controls, and records — supporting oversight and regulatory examination. |

| BSP Right to Examine | BSP regulatory right to examine third parties providing material services to BFS — pass-through expectation in third-party contracts. |

| Service Level Agreement (SLA) | Contractual specification of service performance expectations — availability, performance, response times, etc. |

| Exit Strategy | Plan for transitioning out of third-party engagement — supporting BFS operational continuity if third-party relationship ends. |

| Step-In Rights | Contractual provision enabling BFS to assume direct operation of outsourced function under specified circumstances — typically severe vendor performance failures. |

| Materiality | Significance threshold for outsourcing arrangements — triggering specific governance requirements per Section 4. |

## 2.2  Scope

### 2.2.1  In-Scope Third Parties

All BFS outsourcing arrangements per BSP Circular 808 — material and non-material;

IT service providers including cloud infrastructure, software vendors, IT operations support;

Foundation model providers and AI vendors per coordination with BFS-AI-001 §9.4;

Business process outsourcing — back-office operations, customer service operations, document processing;

Payment processors and financial market infrastructure providers;

AML/KYC service providers;

Credit information and screening providers;

Professional services — external audit, legal counsel, consulting, tax;

Branch-related and physical infrastructure services;

Agent banking arrangements where applicable;

Joint venture or partnership arrangements with operational dependencies;

Sub-contracted relationships where BFS has primary contractual relationship.

### 2.2.2  Out-of-Scope Items

BFS subsidiaries and affiliated entities — addressed through intercompany governance frameworks;

BFS personnel including contracted personnel working as integrated BFS staff — addressed through HR security per BFS-ISP-021;

Customer relationships — counterparty rather than third-party (BFS provides services to customers, not vice versa);

Routine commodity purchases without operational integration (office supplies, utilities) — addressed through procurement policy;

Regulatory bodies and their service expectations — separate framework.

## 2.3  Coverage of ISO 27001 A.5.19-A.5.23

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.5.19 | Information security in supplier relationships | Section 3 (Framework with principles); Section 5 (Pre-Engagement Due Diligence including security review) |

| A.5.20 | Addressing information security within supplier agreements | Section 6 (Contracting and Contractual Provisions including security provisions) |

| A.5.21 | Managing information security in the ICT supply chain | Section 6.5 (Sub-Contracting / Fourth-Party); Section 8.5 (ICT Supply Chain risk) |

| A.5.22 | Monitoring, review and change management of supplier services | Section 7 (Ongoing Monitoring); Section 9 (Termination and Exit including change management) |

| A.5.23 | Information security for use of cloud services | Section 8.4 (Cloud Service Provider Specific Considerations) |

# 3.  THIRD-PARTY RISK MANAGEMENT FRAMEWORK

## 3.1  Framework Principles

Risk-Calibrated: Governance intensity calibrated to materiality per Section 4 — material outsourcing comprehensive; non-material proportionate;

Lifecycle Coverage: Third-party risk addressed throughout lifecycle — pre-engagement, engagement, ongoing, termination;

Enterprise Coordination: Third-party risk integrated with enterprise risk per BFS-ISMS-003;

Multi-Disciplinary: Third-party risk involves multiple disciplines — risk, security, compliance, legal, finance, business — coordinated through cross-functional governance;

Outsourcing Does Not Outsource Accountability: Per BSP Circular 808 — BFS retains accountability for outsourced functions; outsourcing is execution arrangement, not accountability transfer;

Customer Protection: Third-party risk management protects customer interests — confidentiality, service continuity, fair treatment;

Regulatory Compliance: Third-party arrangements maintain BFS regulatory compliance — third party operating non-compliantly creates BFS compliance issue;

Continuity-Aware: Third-party arrangements support BFS operational continuity — disruption planning per BFS-ISP-011-BCP;

Concentration-Aware: Concentration risk recognized and managed — diversification considered for material engagements;

Continuous Improvement: Framework evolves through accumulated experience and regulatory development.

## 3.2  Third-Party Risk Lifecycle

| Stage | Activities | Section in This Policy |

| --- | --- | --- |

| Pre-Engagement | Need identification, materiality assessment, due diligence, selection | Section 4 (Materiality); Section 5 (Due Diligence) |

| Engagement | Contracting with appropriate provisions | Section 6 (Contracting and Contractual Provisions) |

| Ongoing | Performance, risk, compliance monitoring; periodic reassessment | Section 7 (Ongoing Monitoring) |

| Specific Considerations | Cross-border, AI vendors, related parties, ICT supply chain | Section 8 (Specific Third-Party Considerations) |

| Termination | Exit strategy, transition, knowledge transfer | Section 9 (Termination and Exit) |

## 3.3  Three Lines of Defense for Third-Party Risk

First Line: Business owners of third-party relationships — primary responsibility for third-party performance, risk identification, day-to-day relationship management;

Second Line: Risk Management, CISO Office, Compliance, DPO, Legal — independent risk oversight, framework design, challenge to first line;

Third Line: Internal Audit per BFS-ISMS-008 — independent assurance of third-party risk management effectiveness.

## 3.4  Governance Bodies

Board Audit & Risk Committee: Approves this policy. Reviews material third-party risks. Approval authority for designated material outsourcing arrangements per Section 4.4;

Management Risk Committee: Reviews third-party risk portfolio. Approves material outsourcing within delegated authority. Coordinates third-party risk with enterprise risk;

Outsourcing Committee: Specialized committee for material outsourcing matters — composition includes CRO, CISO, CCO, CIO, Legal Counsel, business representatives;

Day-to-Day Coordination: Third-party risk operations coordinated through Outsourcing Office or equivalent function — central tracking, framework support, escalation management.

# 4.  MATERIALITY ASSESSMENT

Materiality assessment determines governance intensity per third-party engagement. Material outsourcing per BSP Circular 808 is subject to specific regulatory expectations including BSP notification.

## 4.1  Materiality Tiers

| Tier | Definition | BFS Examples |

| --- | --- | --- |

| MATERIAL | Outsourcing of significant functions where disruption could materially affect BFS operations, customers, or compliance — BSP notification required | Core banking platform operations; payment processing; cloud hosting of customer-facing systems; AML monitoring outsourcing; customer service operations at scale; AI infrastructure for customer-affecting AI |

| SIGNIFICANT | Substantial third-party engagement below material threshold — substantive governance applies | Significant IT vendors, foundation model API providers, professional services with material scope, agent banking sub-arrangements |

| LOW | Routine third-party engagement with limited operational integration | Routine IT vendors, consultants for specific projects, vendors with limited data access |

| MINIMAL | Routine commodity purchases or limited engagements | Office supplies, utilities, routine professional fees |

## 4.2  Materiality Assessment Criteria

Materiality assessment considers multiple dimensions:

Operational Criticality: How critical is the third-party function to BFS operations — would disruption cause material customer impact, financial impact, or operational impact;

Customer Impact: Does the third party touch customer-facing services, customer data, or customer experience materially;

Data Sensitivity: Does the third party process personal data, customer financial data, or other sensitive BFS information at material scale;

Financial Volume: Material financial volume processed or supported through third party;

Regulatory Sensitivity: Does the third party support regulatory functions (AML, supervisory reporting, customer protection) where third-party issues create direct regulatory exposure;

Substitutability: Could the function be readily substituted with alternative third parties or in-house operations;

Concentration Implications: Does the engagement create or exacerbate concentration risk;

Contract Value: Material contract value as proxy for engagement significance;

Strategic Significance: Strategic importance to BFS — including AI capability, technology transformation, market positioning.

## 4.3  Assessment Process

PS-3.1  Materiality assessment shall be performed for each new third-party engagement above operational threshold — typically engagements with annual contract value exceeding defined threshold or with material operational integration.

PS-3.2  Assessment shall consider all criteria per Section 4.2 — multiple criteria contributing to materiality determination.

PS-3.3  MATERIAL determinations require Outsourcing Committee review and Board Audit & Risk Committee approval per BSP Circular 808 expectations.

PS-3.4  Material outsourcing requires BSP notification per BSP Circular 808 timing and content expectations — coordinated by CCO or designate.

PS-3.5  Materiality shall be reassessed periodically and upon material changes — engagement evolution may change materiality classification.

PS-3.6  Materiality determinations shall be documented including criteria evaluation and rationale supporting decision audit.

## 4.4  Approval Authority

| Materiality Tier | Approval Authority | BSP Notification |

| --- | --- | --- |

| MATERIAL | Board Audit & Risk Committee with management recommendation | Required per BSP Circular 808 |

| SIGNIFICANT | Management Risk Committee or Outsourcing Committee within delegated authority | Per BSP Circular 808 if requirements met |

| LOW | Designated management authority | Generally not required |

| MINIMAL | Operational management | Not applicable |

| BSP CIRCULAR 808 NOTIFICATION:  Material outsourcing arrangements require BSP notification per BSP Circular 808. Notification timing, content, and process per current BSP requirements coordinated by Compliance Office. BFS approach: notification is regulatory expectation supporting BSP supervision, not approval-seeking; BFS proceeds with prudent material outsourcing per its assessment while supporting BSP visibility through notification. BSP feedback on notified arrangements is engaged constructively. Material changes to existing material outsourcing also trigger notification consideration. |

| --- |

# 5.  PRE-ENGAGEMENT DUE DILIGENCE

Pre-engagement due diligence assesses prospective third parties before commitment. Due diligence intensity calibrated to materiality.

## 5.1  Due Diligence Dimensions

| Dimension | Coverage | Intensity by Materiality |

| --- | --- | --- |

| Financial | Financial stability, business continuity capability, ownership, parent company | MATERIAL: comprehensive including audited financials; SIGNIFICANT: substantive review; LOW/MINIMAL: basic |

| Operational | Operational capability, capacity, processes, quality systems | MATERIAL: comprehensive operational assessment; SIGNIFICANT: capability verification; LOW/MINIMAL: capability claim verification |

| Information Security | Security maturity, controls, certifications (ISO 27001, SOC 2), incident history | MATERIAL: comprehensive security assessment; SIGNIFICANT: substantive review; LOW/MINIMAL: basic |

| Data Protection | Personal data handling per RA 10173, processor capability | MATERIAL/SIGNIFICANT for data engagements: comprehensive DPO review; LOW/MINIMAL: appropriate to data volume |

| Compliance | Regulatory compliance posture, legal/regulatory issues, sanctions screening | All tiers: sanctions screening minimum; MATERIAL/SIGNIFICANT: comprehensive compliance review |

| Business Continuity | BCP/DR capability, prior continuity events, recovery objectives | MATERIAL: substantive BCP review aligning with BFS-ISP-011-BCP; SIGNIFICANT: capability verification |

| Reputational | Public reputation, prior controversies, media analysis | MATERIAL/SIGNIFICANT: media and reputation review; LOW/MINIMAL: basic |

| Concentration | Whether engagement creates or exacerbates concentration risk | All tiers consider; MATERIAL: comprehensive concentration analysis |

| Sub-Contractor | Third party's use of sub-contractors | MATERIAL/SIGNIFICANT: sub-contractor inventory and review |

| AI-Specific (where applicable) | Per BFS-AI-001 §9.4 — AI governance maturity, training data, model behavior | All AI engagements: AI-specific dimensions per coordination with EA & AI |

## 5.2  Due Diligence Process

PS-2.1  Due diligence shall be initiated before contractual commitment — early enough that findings can affect engagement decision or terms.

PS-2.2  Due diligence questionnaire calibrated to materiality shall be completed by prospective third party — covering applicable dimensions per Section 5.1.

PS-2.3  Due diligence findings shall be reviewed by appropriate reviewers — second-line functions for material engagements (Risk, CISO, Compliance, DPO as applicable).

PS-2.4  Material findings shall be addressed before engagement — through additional contractual provisions, compensating controls, or engagement decline.

PS-2.5  Due diligence documentation shall be retained per BFS-ISMS-006 supporting audit and regulatory examination.

## 5.3  Sanctions and Adverse Media Screening

All prospective third parties subject to sanctions screening per AML/sanctions framework — BFS does not engage sanctioned entities or those subject to material adverse media;

Screening covers prospective third party, owners, key personnel, and known affiliations;

Periodic re-screening through engagement lifecycle per AML/sanctions framework.

## 5.4  Specific Considerations

Foreign Vendor Considerations: Cross-border vendor due diligence per Section 8.3;

Cloud Vendor Considerations: Cloud-specific dimensions per Section 8.4;

AI Vendor Considerations: AI-specific dimensions per Section 8.6 and BFS-AI-001 §9.4;

Related Party Considerations: Related-party engagements per Section 8.7;

Subsidiary Considerations: Engagement of BFS subsidiary as 'third party' subject to intercompany framework — though subject to comparable due diligence rigor.

# 6.  CONTRACTING AND CONTRACTUAL PROVISIONS

Contracts establish binding framework for third-party engagement. Contractual provisions calibrated to engagement materiality with specific provisions required for material outsourcing per BSP Circular 808.

## 6.1  Material Outsourcing Contract Provisions

Per BSP Circular 808, material outsourcing contracts shall include provisions for:

Service Description: Clear description of services, scope, and performance expectations;

Service Level Agreements: Specific SLAs with performance metrics and consequences for breach;

Information Security: Information security requirements aligned with BFS standards;

Data Protection: Personal data processing per RA 10173 §43-§46 personal information processor framework;

Confidentiality: Confidentiality of BFS information including post-termination;

Right to Audit: BFS right to audit third-party operations affecting BFS services;

BSP Right to Examine: BSP regulatory right to examine third party regarding BFS-related services;

Reporting: Periodic and event-driven reporting to BFS;

Sub-Contracting: Sub-contracting restrictions, approval requirements, flow-down provisions;

Business Continuity: BCP/DR obligations and coordination with BFS continuity per BFS-ISP-011-BCP;

Termination: Termination rights including for cause, convenience, performance failures;

Exit and Transition: Exit assistance and transition support obligations supporting BFS continuity;

Step-In Rights: BFS step-in rights for severe performance failures;

Liability and Indemnification: Liability allocation, indemnification, insurance requirements;

Dispute Resolution: Dispute resolution mechanism with appropriate forum;

Governing Law: Philippine law preferred for material outsourcing where feasible;

Regulatory Cooperation: Cooperation with regulators including BSP.

## 6.2  Information Security Contractual Provisions

Per ISO 27001 A.5.20:

Security Standards: Adherence to BFS information security expectations or equivalent industry standards;

Security Certifications: Maintenance of relevant certifications (ISO 27001, SOC 2, etc.) where applicable;

Security Incident Notification: Prompt notification of security incidents affecting BFS — typically within 24-48 hours;

Vulnerability Management: Vulnerability management discipline with appropriate remediation timelines;

Access Controls: Access controls including BFS personnel access where applicable, third-party personnel access to BFS systems;

Encryption: Encryption requirements for BFS data in transit and at rest per BFS-ISP-023;

Data Location: Data location commitments where applicable;

Penetration Testing: Penetration testing and vulnerability assessment obligations;

Right to Security Audit: BFS right to conduct or commission security audits.

## 6.3  Personal Data Provisions (RA 10173)

Per RA 10173 §43-§46 Personal Information Processor framework and NPC Circular 16-02:

Processor Designation: Clear designation of third party as personal information processor with BFS as personal information controller;

Processing Limitations: Processing only on BFS instructions for specified purposes;

Confidentiality: Confidentiality of personal data including personnel-level confidentiality undertakings;

Security Measures: Security measures appropriate to personal data risk per NPC implementing rules;

Breach Notification: Breach notification to BFS supporting BFS NPC notification obligations within 72 hours;

Sub-Processing: Sub-processor restrictions and BFS approval requirements;

Data Subject Rights: Cooperation with BFS data subject rights operationalization;

Cross-Border: Cross-border processing limitations or appropriate safeguards per BFS-ISP-024 §7;

Audit: BFS audit rights regarding personal data processing;

End of Engagement: Personal data return or destruction at end of engagement;

NPC Cooperation: Cooperation with NPC examination and investigation.

## 6.4  Service Level Provisions

Performance Metrics: Specific measurable performance metrics — availability, response time, throughput, accuracy as applicable;

Reporting: Periodic SLA performance reporting;

Remedies: Service credits, performance penalties, escalation triggers for SLA breaches;

Material Failure Definition: Definition of material failure triggering enhanced remedies including potential termination.

## 6.5  Sub-Contracting Provisions (A.5.21 ICT Supply Chain)

PS-5.1  Material sub-contracting shall require BFS prior approval — third party may not sub-contract material BFS-related services without approval.

PS-5.2  Approved sub-contractors shall be subject to flow-down provisions — sub-contractor obligations equivalent to third-party obligations regarding BFS;

PS-5.3  Third party shall maintain accountability for sub-contractor performance — BFS contractual relationship is with third party, not sub-contractor.

PS-5.4  Sub-contractor information disclosed to BFS supporting concentration analysis and incident response.

PS-5.5  BFS audit rights extend to sub-contractor activities affecting BFS services through third-party.

# 7.  ONGOING MONITORING (A.5.22)

Ongoing monitoring tracks third-party performance, risk, and compliance throughout engagement. Monitoring intensity calibrated to materiality.

## 7.1  Monitoring Dimensions

Performance Monitoring: SLA performance, service quality, customer impact;

Risk Monitoring: Material changes to third party affecting risk profile — financial deterioration, security incidents, regulatory issues, ownership changes, key personnel changes;

Compliance Monitoring: Continued regulatory compliance, sanctions screening refresh, certification maintenance;

Concentration Monitoring: Evolution of concentration risk — engagement scope changes affecting concentration;

Sub-Contractor Monitoring: Material sub-contractor changes;

Financial Monitoring: Financial stability through periodic financial review for material engagements;

Reputational Monitoring: Adverse media, public controversies affecting third party.

## 7.2  Monitoring Cadence

| Materiality | Performance Review | Risk Reassessment |

| --- | --- | --- |

| MATERIAL | Monthly performance review with quarterly comprehensive review | Annual comprehensive reassessment plus event-driven |

| SIGNIFICANT | Quarterly performance review | Annual reassessment plus event-driven |

| LOW | Annual performance review | Annual reassessment |

| MINIMAL | Periodic per relationship significance | As warranted by events |

## 7.3  Monitoring Activities

PS-3.1  Periodic performance review per cadence — SLA achievement, material issues, customer impact, improvement opportunities.

PS-3.2  Periodic risk reassessment — financial review, security posture review, compliance verification, concentration assessment.

PS-3.3  Continuous sanctions and adverse media monitoring — typically through screening service rather than periodic check.

PS-3.4  Right to audit exercised periodically for material engagements — BFS audits or commissioned audits per audit plan.

PS-3.5  SOC reports, security certifications, and similar third-party assurance reviewed when refreshed.

PS-3.6  Material changes to third party shall trigger reassessment — ownership changes, mergers/acquisitions, leadership changes, regulatory issues, security incidents.

PS-3.7  Third-party incidents affecting BFS shall be coordinated per BFS-ISP-017 incident response with appropriate vendor coordination.

## 7.4  Performance Issues and Escalation

SLA breaches addressed through contract remedies — service credits, performance plans, escalation;

Performance plans for substantive issues — documented improvement plans with milestones;

Escalation for unresolved or material issues — vendor leadership engagement, BFS senior leadership involvement;

Termination consideration for severe or unresolved performance issues per Section 9;

Step-in rights consideration for severe operational failures.

## 7.5  Periodic Reassessment

Materiality reassessed periodically — engagement evolution may change materiality classification;

Risk profile reassessed — internal and external developments affecting risk;

Continued fit assessed — does engagement continue to serve BFS purposes effectively;

Continuation, modification, or termination decision per reassessment outcome.

# 8.  SPECIFIC THIRD-PARTY CONSIDERATIONS

This section addresses specific third-party categories and considerations warranting dedicated provisions beyond general framework.

## 8.1  Concentration Risk

Vendor Concentration: Over-reliance on single vendor for critical services — mitigation through diversification where feasible, exit strategy, alternate vendor identification;

Geographic Concentration: Concentration in specific geographic regions — particular relevance for cross-border arrangements per Section 8.3;

Technology Concentration: Concentration on specific technologies or platforms — relevant for cloud and AI per Sections 8.4 and 8.6;

Industry Concentration: Concentration in specific industries (e.g., specific cloud providers serving most banks) — sector-wide risk;

Concentration Analysis: Periodic concentration analysis identifying emerging concentration patterns;

Concentration Trade-Offs: Diversification has cost — concentration management balances against operational efficiency.

## 8.2  Related-Party Considerations

Related parties per BSP related-party transaction framework warrant specific governance — same arm's-length expectations as third-party transactions;

Related-party outsourcing subject to enhanced documentation and approval — supporting transparency on potential conflicts;

BSP supervisory expectations on related-party transactions apply to outsourcing arrangements with related parties;

Pricing and terms shall reflect arm's-length standards — comparable to third-party arrangements;

Related-party arrangements disclosed per applicable regulatory frameworks.

## 8.3  Cross-Border Outsourcing

Regulatory Considerations: Cross-border outsourcing per BSP Circular 808 with specific cross-border provisions; data flows per BFS-ISP-024 §7;

Adequacy Assessment: Receiving jurisdiction adequacy for personal data per RA 10173 §21;

Contractual Safeguards: Standard contractual clauses or equivalent for cross-border personal data transfer;

BSP Examination Access: Vendor commitment to support BSP examination access in cross-border context;

Local Regulatory Compliance: Vendor compliance with home jurisdiction regulations including any potentially conflicting requirements;

Country Risk: Country risk assessment for vendor jurisdictions — political stability, rule of law, regulatory cooperation;

Sanctions and Embargo: Vendor jurisdiction sanctions/embargo considerations;

Time Zone and Operational: Practical operational considerations including time zones, language, cultural factors;

Disputes: Dispute resolution forum and applicable law for cross-border arrangements.

## 8.4  Cloud Service Provider Considerations (A.5.23)

Shared Responsibility Model: Clear understanding of cloud provider versus BFS responsibilities — typically per provider shared responsibility model;

Cloud Configuration: BFS responsible for cloud configuration security per BFS-ISP-013;

Data Location: Data location commitments — particular relevance for personal data per RA 10173;

Multi-Tenancy: Multi-tenant cloud security considerations — isolation between tenants;

Cloud-Specific Audit: Audit approach for cloud vendors — typically through SOC reports and certifications rather than direct audits;

Cloud Concentration: Cloud provider concentration risk — vendor diversification considerations per Section 8.1;

Cloud-Specific Continuity: Cloud provider BCP/DR with BFS coordination per BFS-ISP-011-DRP §7;

Cloud Cost Considerations: FinOps per BFS-ISP-030 §7.3 — cloud cost management discipline;

Cloud Exit: Cloud exit considerations — data portability, format compatibility, service substitutability.

## 8.5  ICT Supply Chain Risk (A.5.21)

Supply Chain Awareness: Awareness of ICT supply chain dependencies — software, hardware, services components;

Supply Chain Attacks: Recognition of supply chain attack patterns — compromised software updates, malicious dependencies, insider threats in supply chain;

Software Bill of Materials (SBOM): SBOM per BFS-ISP-016 — transparency on software components;

Supply Chain Provenance: Provenance verification for material software and hardware;

Critical Dependencies: Identification of critical supply chain dependencies with mitigation planning.

## 8.6  AI Vendor Considerations

Per BFS-AI-001 §9.4 and BFS-AI-002 §9.11:

AI Governance Maturity: Vendor AI governance capability assessment;

Foundation Model Provider Specifics: Foundation model provenance, training methodology summary, model behavior characteristics, vendor model versioning policies;

AI Data Handling: Vendor handling of BFS data submitted to AI services — including any training data use;

AI Model Behavior: Vendor commitment regarding model behavior including hallucination characteristics, bias considerations;

AI Security: AI-specific security including prompt injection resistance, model security;

AI API Considerations: Versioning, rate limits, availability, cost trajectory;

AI Vendor Concentration: Foundation model provider concentration — alternates identified;

AI in BFS Inventory: Vendor AI disclosed in BFS AI Inventory per BFS-AI-001 §3.3.

## 8.7  Related Party Detail

Related party identification per BSP framework — entities with specified ownership or governance relationships;

Related-party transactions including outsourcing subject to BSP supervisory expectations including documentation, approval, and reporting;

Material related-party outsourcing reflected in regulatory filings as required;

Related-party transactions reviewed by Related-Party Transactions Committee per BFS related-party governance.

# 9.  TERMINATION AND EXIT

Third-party engagements end. Disciplined termination protects BFS continuity, customer interests, and regulatory compliance.

## 9.1  Termination Triggers

Contract End: Engagement reaches contractual end without renewal;

Convenience Termination: BFS or third party exercises convenience termination per contract;

Performance Termination: Termination for material performance failure;

Breach Termination: Termination for material contractual breach including security or compliance breaches;

Force Majeure: Termination due to force majeure events affecting third party operations;

Vendor-Side Events: Vendor bankruptcy, acquisition affecting BFS interests, regulatory action against vendor;

Strategic Decision: BFS strategic decision to exit engagement — alternative arrangement, in-house operation, capability discontinuation.

## 9.2  Exit Strategy Pre-Planning

PS-2.1  Material engagements shall have documented exit strategy at engagement initiation — not developed under exit pressure.

PS-2.2  Exit strategy shall address: data return/destruction, knowledge transfer, transition timelines, alternative arrangement preparation, customer impact mitigation.

PS-2.3  Exit strategy shall be tested or simulated periodically for material engagements — confirming feasibility before actual exit.

PS-2.4  Exit strategy shall consider both planned and unplanned termination scenarios.

## 9.3  Exit Operations

Notice and Coordination: Termination notice per contractual provisions; transition coordination;

Data Return/Destruction: BFS data returned per agreed format or destroyed with certification per BFS-ISP-028;

Personal Data Specific: Personal data return or destruction per RA 10173 obligations;

Knowledge Transfer: Knowledge transfer from departing third party to BFS or successor;

Customer Continuity: Customer impact minimization — communications, service continuity through transition;

Asset Recovery: BFS assets in third-party possession recovered per inventory;

Access Termination: Third-party personnel access to BFS systems terminated per BFS-ISP-005 §9 deprovisioning;

Final Settlement: Financial settlement, dispute resolution if applicable;

Documentation: Exit documented including lessons learned per BFS-ISMS-010.

## 9.4  Step-In Operations

Step-in rights exercised in severe scenarios — vendor severe operational failure, vendor bankruptcy, vendor regulatory action;

BFS step-in plan documented for material engagements — operational capability to assume function;

Step-in coordination with vendor where feasible — most step-in scenarios are involuntary;

Step-in temporary by design — supporting orderly transition to alternative arrangement.

# 10.  ROLES AND RESPONSIBILITIES

| Role | Third-Party Risk Management Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Approves MATERIAL outsourcing arrangements per Section 4.4. Reviews third-party risk portfolio. Material third-party risk events visibility. |

| Chief Risk Officer | Document co-owner. Operationally accountable for third-party risk management framework. Coordinates third-party risk with enterprise risk per BFS-ISMS-003. |

| Chief Information Security Officer | Document co-owner. Information security in third-party engagements. ICT supply chain risk. Cloud security. |

| Chief Compliance Officer | Document co-owner. BSP Circular 808 compliance including notification. Regulatory aspects of third-party engagements. Sanctions screening. |

| Data Protection Officer | Document co-owner. RA 10173 §43-§46 personal information processor framework. Cross-border personal data flows. NPC liaison for third-party personal data matters. |

| Chief Information Officer | Co-approver. IT third-party engagements including cloud and IT operations. Coordination with BFS-ISP-015 service provider operations. |

| Chief Financial Officer | Co-approver. Financial dimensions of third-party engagements. Material outsourcing financial implications. |

| Chief Legal Counsel | Co-approver. Contractual provisions. Legal risk in third-party engagements. Dispute resolution support. |

| Outsourcing Committee | Reviews material outsourcing arrangements. Coordinates cross-functional third-party risk perspectives. |

| Business Owners | First-line accountability for specific third-party engagements — performance, risk, day-to-day relationship management. |

| Outsourcing Office / Procurement | Operational support for third-party lifecycle — sourcing, due diligence coordination, contract management, monitoring coordination. |

| AI Risk Officer | AI vendor specifics per BFS-AI-001 §9.4 and BFS-AI-002 §9.11. |

| Internal Audit | Independent verification of third-party risk management effectiveness per BFS-ISMS-008. |

# 11.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Third-party risk management effectiveness measured through KPIs reviewed quarterly by Outsourcing Committee and reported to Board Audit & Risk Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| MATERIAL outsourcing arrangements with current materiality assessment | 100% | Quarterly |

| MATERIAL outsourcing with BSP notification per BSP Circular 808 | 100% | Per arrangement |

| Pre-engagement due diligence completion before engagement | 100% | Per engagement |

| Material findings from due diligence addressed before engagement | 100% | Per finding |

| Sanctions and adverse media screening currency | 100% | Continuous |

| Contracts with required provisions per Section 6 (MATERIAL) | 100% | Quarterly |

| Contracts with personal data provisions per RA 10173 §43-§46 | 100% for personal data engagements | Quarterly |

| MATERIAL engagements with monthly performance review | 100% | Monthly |

| MATERIAL engagements with annual comprehensive reassessment | 100% | Annual |

| Right to audit exercised per audit plan | 100% of planned audits | Annual |

| Third-party security incidents affecting BFS | Track and trend | Per occurrence |

| Personal data breaches involving third-party processors | Zero target | Per occurrence |

| MATERIAL engagements with documented exit strategy | 100% | Quarterly |

| Concentration risk analysis completion | Annual | Annual |

| Cross-border arrangements with adequacy assessment per BFS-ISP-024 §7 | 100% | Annual |

| AI vendor governance verification per BFS-AI-001 §9.4 | 100% of in-use AI vendors | Annual |

| Related-party outsourcing arrangements with required documentation | 100% | Per engagement |

| Vendor terminations executed per exit strategy | 100% | Per termination |

| BSP examination findings on outsourcing per BSP Circular 808 | Zero material findings | Per examination |

| NPC findings on third-party personal data processing | Zero material findings | Per review |

| Internal Audit findings on third-party risk management | Track and remediate per BFS-ISMS-010 | Per audit |

# 12.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Third-Party Risk Management Policy operationalizing BSP Circular 808 Outsourcing Framework as dedicated comprehensive document. Quad-functional ownership (CRO/CISO/CCO/DPO). Aligned with ISO/IEC 27001:2022 Annex A.5.19-A.5.23 (Supplier relationships), BSP Circular 808 (Outsourcing), BSP Circular 1140 (IT Risk), BSP Circular 1048 (Cybersecurity), and RA 10173 §43-§46 (Personal Information Processors). Consolidates third-party risk provisions previously distributed across BFS-ISP-015, BFS-ISP-024 §7, BFS-ISP-026, BFS-AI-001 §9.4, and others. 4-tier materiality framework (MATERIAL/SIGNIFICANT/LOW/MINIMAL) with BSP Circular 808 notification expectations for MATERIAL outsourcing. Pre-Engagement Due Diligence with 11 dimensions calibrated to materiality and 5 PS statements. Comprehensive Contracting framework with 17 material outsourcing contract provisions per BSP Circular 808, information security provisions per A.5.20, personal data provisions per RA 10173 §43-§46 + NPC Circular 16-02, sub-contracting provisions per A.5.21 with 5 PS statements. Ongoing Monitoring per A.5.22 with materiality-calibrated cadence and 7 PS statements. Specific Considerations including concentration risk, related-party considerations per BSP framework, cross-border outsourcing with country risk, cloud service provider per A.5.23, ICT supply chain per A.5.21, AI vendor specifics per BFS-AI-001 §9.4, related party detail. Termination and Exit including step-in rights with 4 PS statements. Three Lines of Defense for third-party risk. Annual review cycle. | IT Head / Infrastructure Manager<br>Risk Management / CISO Office / Compliance Office / DPO / Procurement / Outsourcing Office / Legal Counsel | IT Head<br>CRO/CISO/CCO/DPO/CIO/CFO/CLC/Board |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A.5.19-A.5.23 and BSP Circular 808 Mapping

Mapping of ISO 27001 supplier relationship controls and BSP Circular 808 outsourcing framework to specific provisions of this policy.

| Framework Element | Coverage | Sections in This Policy |

| --- | --- | --- |

| ISO A.5.19 | Information security in supplier relationships | Section 3 (Framework with 10 principles); Section 5 (Pre-Engagement Due Diligence with security dimension); Section 7 (Ongoing Monitoring with risk dimension) |

| ISO A.5.20 | Information security within supplier agreements | Section 6 (Contracting and Contractual Provisions); Section 6.2 (Information Security Contractual Provisions specifically) |

| ISO A.5.21 | Information security in ICT supply chain | Section 6.5 (Sub-Contracting Provisions); Section 8.5 (ICT Supply Chain Risk including SBOM and provenance) |

| ISO A.5.22 | Monitoring, review and change management of supplier services | Section 7 (Ongoing Monitoring with cadence and activities); Section 9 (Termination and Exit including change management) |

| ISO A.5.23 | Information security for use of cloud services | Section 8.4 (Cloud Service Provider Considerations including shared responsibility, data location, audit, concentration) |

| BSP Circular 808 — Materiality | Material outsourcing identification | Section 4 (Materiality Assessment with 4-tier framework, criteria, process, approval authority) |

| BSP Circular 808 — Notification | BSP notification for material outsourcing | Section 4.3 PS-3.4 + Section 4.4 + Note Box on BSP notification |

| BSP Circular 808 — Contracts | Material outsourcing contractual expectations | Section 6.1 (17-element material outsourcing contract provisions list) |

| BSP Circular 808 — Monitoring | Ongoing oversight of material outsourcing | Section 7 (materiality-calibrated monitoring with MATERIAL receiving monthly performance + annual reassessment) |

| BSP Circular 808 — Cross-Border | Cross-border outsourcing | Section 8.3 (Cross-Border with country risk, regulatory cooperation) |

| BSP Circular 808 — Continuity | Continuity in material outsourcing | Section 6.1 (BCP/DR provisions); Section 9 (Exit Strategy); coordinated with BFS-ISP-011-BCP |

| RA 10173 §43-§46 | Personal Information Processor | Section 6.3 (Personal Data Provisions per RA 10173 §43-§46 + NPC Circular 16-02) |

# APPENDIX B:  Third-Party Risk Management Quick Reference

Single-page reference for business owners, risk stakeholders, and procurement personnel.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What's the materiality framework? | 4 tiers: MATERIAL (significant functions, BSP notification required), SIGNIFICANT (substantial below material threshold), LOW (routine engagement), MINIMAL (commodity purchases). Assessed against 9 criteria including operational criticality, customer impact, data sensitivity, regulatory sensitivity. See §4. |

| When does BSP notification apply? | MATERIAL outsourcing arrangements per BSP Circular 808. Coordinated by Compliance Office. Material changes to existing material outsourcing also trigger notification consideration. See §4.3 PS-3.4 and note box. |

| What due diligence is required? | Calibrated to materiality. 11 dimensions: Financial, Operational, Information Security, Data Protection (RA 10173), Compliance, Business Continuity, Reputational, Concentration, Sub-Contractor, AI-Specific (where applicable). MATERIAL receives comprehensive across all; lower tiers proportionate. Sanctions screening for all. See §5. |

| What contract provisions are required for MATERIAL outsourcing? | 17 specific provisions per BSP Circular 808 including: service description, SLAs, information security, data protection, confidentiality, right to audit, BSP right to examine, reporting, sub-contracting, BCP, termination, exit assistance, step-in rights, liability, governing law, regulatory cooperation. See §6.1. |

| What about personal data? | Third-party processing personal data is Personal Information Processor per RA 10173 §43-§46. Contract must include processor designation, processing limitations, security, breach notification (72hr), sub-processing controls, data subject rights cooperation, end-of-engagement return/destruction. See §6.3. |

| What ongoing monitoring is required? | Materiality-calibrated. MATERIAL: monthly performance + quarterly comprehensive + annual reassessment. SIGNIFICANT: quarterly + annual. LOW: annual. MINIMAL: per significance. Plus continuous sanctions monitoring and event-driven reassessment. See §7. |

| What about concentration risk? | Vendor concentration, geographic concentration, technology concentration, industry concentration. Periodic concentration analysis. Trade-offs between concentration management and operational efficiency made explicit. See §8.1. |

| What about cross-border outsourcing? | Per BSP Circular 808 cross-border provisions plus BFS-ISP-024 §7 personal data flows. Adequacy assessment, contractual safeguards, BSP examination access commitment, country risk, sanctions, dispute resolution forum. See §8.3. |

| What about cloud providers? | Per ISO A.5.23: Shared responsibility model, BFS configuration responsibility, data location, multi-tenant security, audit through SOC reports, cloud concentration, cloud-specific BCP per BFS-ISP-011-DRP §7, cloud cost per BFS-ISP-030 §7.3, exit considerations. See §8.4. |

| What about AI vendors? | Per BFS-AI-001 §9.4 and BFS-AI-002 §9.11: AI governance maturity assessment, foundation model provider specifics, AI data handling, model behavior, AI security, API considerations, concentration, AI Inventory disclosure. See §8.6. |

| What about related parties? | BSP related-party transaction framework applies to outsourcing with related parties. Same arm's-length expectations. Enhanced documentation and approval. Pricing reflecting arm's-length standards. Disclosure per regulatory frameworks. See §8.2 and §8.7. |

| What about exit strategies? | Required for MATERIAL engagements documented at engagement initiation. Address: data return/destruction, knowledge transfer, transition timelines, alternative arrangement preparation, customer impact mitigation. Tested or simulated periodically. Both planned and unplanned scenarios. See §9.2. |

BFS-ISP-031  |  Third-Party Risk Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. BSP Circular 808 + ISO/IEC 27001:2022 A.5.19-A.5.23 Aligned.
