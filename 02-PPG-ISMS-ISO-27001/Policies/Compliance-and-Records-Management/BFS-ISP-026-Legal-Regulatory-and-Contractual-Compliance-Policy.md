---
title: "BFS-ISP-026-Legal-Regulatory-and-Contractual-Compliance-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Compliance-and-Records-Management/BFS-ISP-026-Legal-Regulatory-and-Contractual-Compliance-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:38Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Compliance-and-Records-Management"
aliases:
  - "BFS-ISP-026-Legal-Regulatory-and-Contractual-Compliance-Policy"
creator: "Un-named"
created: "2026-04-30T14:50:00Z"
modified: "2026-05-02T13:36:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>LEGAL, REGULATORY, AND<br>CONTRACTUAL COMPLIANCE POLICY<br>Identification, Documentation, Monitoring, and Compliance with Applicable Laws, Regulations, and Contractual Obligations Affecting BFS Information Security Including Intellectual Property Rights<br>Policy Reference: BFS-ISP-026<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual + Regulatory Change Triggers<br>Closes ISO/IEC 27001:2022 Annex A.5.31 and A.5.32<br>Comprehensive Compliance Register Across BSP, NPC, AMLC, SEC, BIR, BIS, and Bilateral Regulatory Frameworks<br>The Compliance Foundation Document of the BFS ISMS |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Legal, Regulatory, and Contractual Compliance Policy |

| --- | --- |

| Policy Reference | BFS-ISP-026 |

| Policy Owner | Chief Compliance Officer (CCO) / Chief Legal Counsel (CLC) / Chief Information Security Officer (CISO) — tri-functional ownership |

| Document Author | Compliance Office / Legal / CISO Office / Data Protection Officer / Enterprise Architecture and Security Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual baseline review with regulatory-change-triggered updates throughout the year — new BSP Circulars, RA amendments, NPC issuances, and material regulatory developments trigger immediate review |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-003 (Data Protection — RA 10173 compliance); BFS-ISP-008 (Audit Logs — log retention regulatory requirements); BFS-ISP-014 (Security Awareness — compliance training); BFS-ISP-017 (Incident Response — breach notification regulatory requirements); BFS-ISP-020 (Acceptable Use — IP and license compliance); BFS-ISP-021 (HR Security — labor law compliance); BFS-ISP-023 (Cryptography — regulatory cryptographic expectations); BFS-ISP-024 (Information Transfer — RA 10173 §21 cross-border) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.5.31 (Legal, statutory, regulatory and contractual requirements); A.5.32 (Intellectual property rights); ISO/IEC 27002:2022 implementation guidance for both controls; PCI DSS v4.0 compliance dimensions; SOX-equivalent banking compliance frameworks |

| Regulatory Reference | Comprehensive — see Compliance Register in Section 4. Major frameworks: BSP Manual of Regulations for Banks; BSP Circulars 1140/1048/144/808/982/969; RA 10173 (Data Privacy Act) and IRR; NPC Circulars (16-01 through current); RA 10175 (Cybercrime Prevention Act); RA 8791 (General Banking Law); RA 11765 (Consumer Protection); PCI DSS v4.0; AMLC Regulations; SEC Code of Corporate Governance; RA 8792 (E-Commerce Act); RA 11058 (OSH); RA 11165 (Telecommuting Act); RA 1405 (Bank Deposits Secrecy); RA 6426 (Foreign Currency Deposit Act); RA 9510 (Credit Information System); BIR Regulations affecting BFS; Philippine Civil Code on contracts and obligations |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Legal Counsel |  |  |  |

| Data Protection Officer |  |  |  |

| Chief Risk Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Legal, Regulatory, and Contractual Compliance Policy operationalizing ISO/IEC 27001:2022 Annex A.5.31 (Legal, statutory, regulatory and contractual requirements) and A.5.32 (Intellectual property rights) in unified framework. It is the policy that establishes how BFS identifies, documents, monitors, and complies with the comprehensive set of legal, regulatory, and contractual obligations affecting BFS information security.

BFS as a Philippine BSP-supervised bank operates within the most heavily regulated industry in the country. Banking compliance is not a single dimension but a complex multilayered framework: BSP banking regulation (Manual of Regulations for Banks plus Circulars); NPC personal data regulation (RA 10173 plus Circulars); AMLC anti-money-laundering regulation; SEC corporate governance; PCI DSS for cardholder data; consumer protection (RA 11765); cybersecurity (RA 10175); banking secrecy (RA 1405, RA 6426); labor law (Labor Code, RA 11058, RA 11165); contract law (Civil Code) governing BFS bilateral arrangements with vendors, customers, and partners. Tracking and complying with this framework is itself a substantial discipline.

Beyond ISO 27001 closure, this policy fulfills the broader compliance governance expectations of regulated financial institutions. Failure to comply with applicable law and regulation can result in supervisory enforcement (BSP fines, sanctions, business restrictions), civil liability (customer lawsuits, regulatory civil penalties), criminal liability (RA 10175, RA 1405 violations), and reputational damage that materially affects BFS's franchise. Compliance is not optional supplementary control; it is core operational discipline.

Intellectual property rights merit specific attention per ISO 27001 Annex A.5.32. BFS is both an IP rights holder (BFS proprietary information, BFS-developed software, BFS trademarks) and an IP rights consumer (licensed software, licensed databases, third-party content). IP compliance protects BFS from inadvertent infringement that creates legal liability and protects BFS's own IP from misappropriation.

The specific objectives of this policy are to:

Establish the BFS compliance register documenting all material legal, statutory, regulatory, and contractual requirements affecting information security;

Operationalize regulatory monitoring identifying new and changed requirements affecting BFS;

Define compliance obligations for the major regulatory frameworks affecting BFS — BSP, NPC, AMLC, SEC, PCI DSS, and others;

Address intellectual property rights compliance both as IP rights holder and IP rights consumer;

Establish software license compliance framework — particularly important given BFS software portfolio depth;

Coordinate with related policies addressing specific compliance dimensions (BFS-ISP-003 for RA 10173, BFS-ISP-021 for labor law, BFS-ISP-023 for cryptographic expectations, etc.);

Establish compliance monitoring, reporting, and incident response for compliance violations;

Provide audit-friendly documentation supporting ISO 27001 certification, BSP examinations, NPC compliance verification, PCI QSA assessments, and external auditor reviews.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Compliance | State of meeting applicable legal, statutory, regulatory, and contractual obligations. Encompasses both substantive compliance (actually meeting requirements) and demonstrable compliance (evidenced through documentation and audit). |

| Compliance Register | Documented inventory of all material legal, statutory, regulatory, and contractual requirements affecting BFS — maintained as living artifact reflecting current obligations. The single source of truth for BFS compliance scope. |

| Legal Requirement | Obligation arising from law — Philippine statutes (Republic Acts), Presidential Decrees, Executive Orders, and applicable international law affecting BFS. Generally non-negotiable. |

| Statutory Requirement | Specific subset of legal requirements arising from statute — used interchangeably with legal requirement in this policy. |

| Regulatory Requirement | Obligation arising from regulatory authority issuance — BSP Circulars, NPC Circulars, SEC issuances, PCI DSS standards, etc. Generally binding within regulator's authority. |

| Contractual Requirement | Obligation arising from BFS bilateral agreements — vendor contracts, customer contracts, partnership agreements, regulatory agreements (e.g., BSP undertakings). Binding per Civil Code on Obligations and Contracts. |

| Intellectual Property (IP) | Creations of mind protected by law — including copyrights (works of authorship), trademarks (brand identifiers), patents (inventions), trade secrets (confidential business information), and database rights. Both BFS-owned IP and third-party IP relevant to this policy. |

| Software License | Contractual permission to use software per terms of license agreement — including proprietary licenses, open source licenses, and freeware licenses. Each license has specific permitted uses, restrictions, and obligations. |

| Open Source Software (OSS) | Software available under open source licenses — including permissive licenses (MIT, Apache 2.0, BSD) and copyleft licenses (GPL, LGPL, AGPL). Each license category has specific obligations. |

| Compliance Obligation | Specific requirement to be met — typically traceable to a specific requirement source (a specific BSP Circular section, a specific RA section, a specific contract provision). |

| Compliance Risk | Risk of non-compliance and resulting consequences — supervisory enforcement, civil liability, criminal liability, reputational damage. |

| Compliance Violation | Failure to meet compliance obligation — may result from oversight, error, or deliberate action. Triggers compliance incident response per Section 8. |

| Regulatory Examination | Formal review by regulatory authority assessing BFS compliance — BSP examinations (regular and targeted), NPC compliance reviews, AMLC examinations, etc. |

| Material Change | Change in legal, regulatory, or contractual requirements significant enough to warrant compliance program adjustment — distinguished from minor administrative or procedural changes. |

| Compliance Attestation | Formal statement that BFS has met specific compliance requirements — typically required for specific regulatory frameworks (e.g., PCI DSS attestation; SOX-equivalent control attestations). |

## 2.2  Scope

### 2.2.1  In-Scope Compliance Areas

All BSP regulations including Manual of Regulations for Banks and BSP Circulars affecting BFS;

All NPC regulations including RA 10173, IRR, NPC Circulars, and NPC issuances;

AMLC regulations affecting BFS AML operations;

SEC regulations affecting BFS as listed company (if applicable) and corporate governance;

BIR regulations affecting BFS taxation and financial reporting;

Department of Labor and Employment regulations affecting BFS employment relationships;

All Republic Acts directly affecting BFS information security including RA 10175, RA 8791, RA 11765, RA 1405, RA 6426, RA 9510, RA 8792, RA 11058, RA 11165;

PCI DSS v4.0 for BFS cardholder data environment;

Material BFS contractual obligations affecting information security including vendor contracts (covered through BFS-ISP-015), customer contracts, partnership agreements, and regulatory undertakings;

Intellectual property rights — both BFS IP and third-party IP affecting BFS operations;

Software licenses for all BFS-deployed software.

### 2.2.2  Out-of-Scope Items

Personal compliance obligations of personnel unrelated to BFS — outside policy scope;

Detailed technical implementation of specific regulatory requirements — addressed in companion policies;

Litigation matters and dispute resolution — managed through Legal function with this policy providing regulatory context.

## 2.3  ISO 27001:2022 Annex A Coverage

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.5.31 | Legal, statutory, regulatory and contractual requirements | §3 (Compliance Framework); §4 (Compliance Register Structure); §5 (Major Regulatory Frameworks); §6 (Contractual Compliance); §8 (Compliance Monitoring and Incident Response) |

| A.5.32 | Intellectual property rights | §7 (Intellectual Property Rights and Software License Compliance) |

# 3.  COMPLIANCE FRAMEWORK

## 3.1  Compliance Principles

BFS compliance operates per the following foundational principles:

Substantive Compliance: Actual compliance with applicable requirements — not merely documentary compliance. Requirements understood and operationally implemented;

Demonstrable Compliance: Compliance evidenced through documentation supporting audit and examination. Auditors and regulators can verify compliance through available records;

Proactive Identification: New and changed requirements identified proactively rather than reactively after non-compliance discovered. Regulatory monitoring is continuous;

Risk-Calibrated Effort: Compliance effort calibrated to compliance risk — material requirements receive thorough operational implementation; minor requirements receive proportionate attention;

Tone from the Top: Compliance is BFS Board and executive priority — not delegated to compliance function alone. All BFS personnel have compliance responsibility within their roles;

No Compliance Through Concealment: Compliance is genuine compliance with requirements. Concealment, manipulation, or selective interpretation to appear compliant while actually non-compliant is itself violation;

Continuous Improvement: Compliance program continuously improved through lessons learned, regulatory feedback, peer benchmarking, and emerging best practices.

## 3.2  Compliance Categories

| Category | Definition | Examples |

| --- | --- | --- |

| Legal / Statutory | Obligations from Philippine and applicable international law | RA 10173 personal data protection; RA 8791 banking; RA 1405 bank secrecy; Civil Code obligations |

| Regulatory | Obligations from regulatory authority issuances | BSP Circulars; NPC Circulars; SEC issuances; AMLC regulations; BIR regulations |

| Contractual | Obligations from BFS bilateral agreements | Vendor contracts; customer agreements; partnership agreements; regulatory undertakings |

| Intellectual Property | Obligations relating to IP rights — both BFS-owned and third-party | Copyrights, trademarks, trade secrets; software licenses; database rights |

| Standards-Based | Obligations from industry standards adopted by BFS | PCI DSS v4.0; SWIFT CSP; ISO 27001 certification expectations |

## 3.3  Compliance Governance

Compliance governance operates through layered structure:

Board Audit & Risk Committee: Ultimate compliance governance — receives compliance reporting, approves compliance policy, oversees compliance program effectiveness;

Information Security Steering Committee: Operational compliance governance for information security domain — receives compliance KPIs, addresses material compliance issues, coordinates regulatory examination response;

Chief Compliance Officer: Operationally accountable for compliance program — coordinates with Legal Counsel, Risk, CISO, DPO, and business functions; primary regulatory liaison for compliance matters;

Compliance Office: Day-to-day compliance operations — maintains Compliance Register, monitors regulatory developments, supports compliance verification, coordinates compliance training;

Legal Counsel: Legal interpretation, contractual compliance, litigation, and regulatory advice;

Data Protection Officer: Personal data compliance under RA 10173;

CISO / CISO Office: Information security regulatory compliance — BSP cybersecurity, PCI DSS, security-relevant aspects of all frameworks;

Internal Audit: Independent verification of compliance program effectiveness per BFS-ISMS-008;

Business Function Heads: Compliance within their functions including identification of new compliance requirements, implementation of compliance controls, and reporting compliance status;

All Personnel: Personal compliance with applicable requirements affecting their roles.

| COMPLIANCE IS A SHARED RESPONSIBILITY:  Compliance is not delegated to the compliance function alone. The compliance function provides framework, monitoring, advice, and challenge — but actual compliance is achieved through every BFS personnel performing their roles in compliance with applicable requirements. This shared responsibility model is fundamental — concentrating compliance solely in the compliance function creates compliance theater rather than substantive compliance. |

| --- |

# 4.  COMPLIANCE REGISTER STRUCTURE

The Compliance Register is the single source of truth for BFS compliance scope. This section establishes its structure; the Register itself is maintained as living artifact by Compliance Office.

## 4.1  Register Content

Each Compliance Register entry includes:

Requirement Identifier — unique reference for tracking;

Requirement Source — specific regulation, statute, or contract section;

Requirement Title — descriptive identification;

Requirement Summary — concise statement of obligation in operational terms;

Affected BFS Operations — which BFS functions, systems, or processes are subject to the requirement;

Applicable Effective Date — when the requirement becomes effective for BFS;

Compliance Approach — how BFS achieves compliance — specific controls, processes, documentation;

Compliance Owner — accountable individual for the requirement (typically business function head or specialized officer);

Compliance Verification Approach — how compliance is monitored and verified;

Evidence Location — where compliance evidence is maintained for examination;

Compliance Status — current assessment (Compliant / Partial / Gap / Under Implementation);

Last Reviewed Date — when the entry was last verified for currency;

Next Review Date — scheduled next review;

Risk Rating — compliance risk level if non-compliance occurred (Critical / High / Medium / Low);

Notes / History — material changes, exceptions, ongoing matters.

## 4.2  Register Maintenance

Compliance Office maintains the Register as living artifact — added entries for new requirements; modified entries for changed requirements; archived entries for superseded requirements;

Annual comprehensive Register review — verifying all entries current and accurate;

Regulatory monitoring per Section 4.3 drives Register updates;

Material organizational changes (new business lines, new systems, new external relationships) trigger Register review for completeness;

Register is accessible to all BFS personnel through Compliance Office portal — supporting awareness and self-service compliance reference;

Register changes are version-controlled and audit-logged supporting traceability.

## 4.3  Regulatory Monitoring

Regulatory monitoring identifies new and changed requirements affecting BFS:

BSP Monitoring: Daily monitoring of BSP issuances — Circulars, Memoranda, advisories. New issuances assessed for BFS applicability and Register impact;

NPC Monitoring: Regular monitoring of NPC Circulars, advisories, and decisions affecting personal data handling;

Other Regulator Monitoring: SEC, AMLC, BIR, DOLE, and other regulatory authority issuances per BFS exposure;

Legislative Monitoring: Monitoring of pending and enacted legislation affecting BFS — Republic Acts, executive issuances;

Industry Standards Monitoring: PCI DSS updates, ISO standards revisions, SWIFT CSP changes, and other industry standards affecting BFS;

International Developments: Monitoring of international developments potentially affecting BFS — particularly in cross-border banking, sanctions, AML, and cybersecurity;

Industry Intelligence: Engagement with banking industry associations, peer institutions, professional bodies providing regulatory intelligence;

Material developments are escalated through Compliance Office to relevant stakeholders — affected business functions, CISO Office for security-relevant items, Legal Counsel for legal interpretation.

## 4.4  Compliance Status Assessment

| Status | Definition | Required Actions |

| --- | --- | --- |

| Compliant | BFS meets the requirement substantively with verifiable evidence | Maintain current state; periodic verification per review cycle |

| Partial | BFS meets some aspects of the requirement but gaps exist | Documented remediation plan with timeline; risk acceptance for gap during remediation; enhanced monitoring |

| Gap | BFS does not currently meet the requirement | Immediate remediation plan; risk assessment and acceptance authorization; potential disclosure to regulator if material |

| Under Implementation | BFS is in process of implementing compliance for new or changed requirement | Implementation plan with milestones; interim controls during implementation; tracking through completion |

| Not Applicable | Requirement does not apply to current BFS scope | Documented rationale for non-applicability; periodic re-verification of non-applicability assertion |

# 5.  MAJOR REGULATORY FRAMEWORKS

This section provides overview of major regulatory frameworks affecting BFS information security. Detailed compliance approach per framework is documented in Compliance Register entries; this section establishes framework context and primary obligations.

## 5.1  BSP Regulatory Framework

Bangko Sentral ng Pilipinas is BFS's primary supervisory authority. Compliance with BSP regulation is foundational regulatory expectation:

BSP Circular 1140 (IT Risk Management and Cybersecurity): Comprehensive IT risk management expectations including governance, risk assessment, control framework, monitoring, and reporting;

BSP Circular 1048 (Cybersecurity Maturity): Cybersecurity expectations including governance, risk management, prevention controls, detection controls, response capability;

BSP Circular 144 (Cyber Risk in Sound Practices): Cybersecurity governance and risk management expectations;

BSP Circular 808 (Outsourcing): Vendor management expectations affecting information security in outsourced operations;

BSP Circular 982 (Electronic Banking): Specific expectations for electronic banking services and channels;

BSP Circular 969 (Risk Governance Framework): Enterprise risk governance integrating information security risk;

BSP Manual of Regulations for Banks (MORB): Comprehensive banking regulation including specific information security expectations across multiple sections;

BSP Examination Authority: BSP examinations assess compliance — BFS supports examinations through documented compliance evidence and operational cooperation;

Specific Frameworks: BSP supervisory expectations for specific BFS operations — payment systems, internet banking, mobile banking, cryptocurrency activities (if any), digital banking — all integrate information security requirements.

## 5.2  Data Privacy Framework (RA 10173 and NPC)

Personal data protection compliance under RA 10173 Data Privacy Act and NPC issuances:

RA 10173 itself: Comprehensive personal data protection law establishing principles, data subject rights, controller and processor obligations, and enforcement framework;

RA 10173 IRR: Implementing Rules and Regulations providing operational specificity;

NPC Circulars: NPC Circular 16-01 (Security of Personal Data), 16-02 (Data Sharing Agreements), 16-03 (Personal Data Breach Management), and subsequent circulars;

NPC Advisories: Specific guidance on emerging issues including remote work, AI, and specific industry applications;

Data Subject Rights: BFS operationalizes data subject rights — access, correction, erasure (where applicable), data portability, complaint handling;

DPO Function: BFS Data Protection Officer role per RA 10173 §21 — independent function reporting to senior management with NPC liaison authority;

Privacy Impact Assessment: BFS PIA process for new or changed personal data processing per NPC guidance;

Breach Notification: Personal data breach notification per RA 10173 and NPC Circular 16-03 — to NPC within 72 hours; to data subjects per applicable provisions per BFS-ISP-017.

## 5.3  Anti-Money-Laundering Framework

BFS as covered institution has AML obligations:

AMLC Regulations: AMLC implementing rules and regulations including KYC, transaction monitoring, suspicious transaction reporting, record retention;

RA 9160 as amended (Anti-Money Laundering Act): Foundational AML legislation establishing covered institution obligations;

RA 10168 (Terrorism Financing Prevention and Suppression Act): Counter-terrorist financing obligations;

RA 11479 (Anti-Terrorism Act): Broader counter-terrorism framework with relevance to AML/CFT;

Information Security Aspects: AML compliance has substantial information security dimensions — KYC information confidentiality, transaction monitoring system security, suspicious transaction report confidentiality (specifically protected), AML investigation file protection;

AMLC Liaison: Compliance Office and AML function maintain AMLC relationship including required reporting and examination support.

## 5.4  PCI DSS Framework

PCI DSS v4.0 compliance for BFS cardholder data environment:

PCI DSS Scope: BFS payment card operations subject to PCI DSS — applies to systems storing, processing, or transmitting cardholder data;

Annual Assessment: Annual PCI QSA assessment with Report on Compliance (ROC) for Level 1 service providers; Self-Assessment Questionnaire (SAQ) for lower volumes;

12 Requirements: PCI DSS comprises 12 high-level requirements with detailed sub-requirements — implementation distributed across BFS technology and operational policies;

v4.0 Transition: PCI DSS v4.0 fully effective; v3.2.1 retired. BFS maintains v4.0 compliance with future-dated requirements implemented per PCI Council timelines.

## 5.5  Other Regulatory Frameworks

| Framework | Authority | Information Security Relevance |

| --- | --- | --- |

| RA 10175 (Cybercrime Prevention Act) | DOJ; PNP-ACG | Cybercrime offenses, illegal access provisions, evidence requirements for cyber incident investigation, applies to both BFS as victim and BFS personnel as potential subject |

| RA 8792 (E-Commerce Act) | DTI | Legal recognition of electronic signatures and electronic documents; relevant to BFS digital transactions |

| RA 11765 (Consumer Protection) | BSP for financial consumer protection | BFS consumer-facing products and services; security obligations affecting consumers |

| RA 1405 (Bank Deposits Secrecy) | Various enforcement | Confidentiality of deposit information — specific protected category beyond general confidentiality |

| RA 6426 (Foreign Currency Deposit Act) | Various enforcement | Confidentiality of foreign currency deposits — additional specific protection |

| RA 9510 (Credit Information System) | CIC | Credit information sharing framework affecting BFS credit operations |

| RA 11058 (OSH) | DOLE | Occupational safety and health affecting BFS workplaces including remote work |

| RA 11165 (Telecommuting) | DOLE | Telecommuting framework per BFS-ISP-022 §3.2 |

| SEC Code of Corporate Governance | SEC | Corporate governance principles including IT and risk governance |

| BIR Regulations | BIR | Tax compliance affecting financial reporting and records management |

# 6.  CONTRACTUAL COMPLIANCE

This section addresses BFS contractual compliance — obligations arising from BFS bilateral agreements with vendors, customers, partners, regulators, and other parties. Contractual obligations are legally binding per Philippine Civil Code on Obligations and Contracts and create enforceable rights against BFS for non-compliance.

## 6.1  Categories of BFS Contractual Obligations

| Category | Examples | Information Security Aspects |

| --- | --- | --- |

| Vendor / Service Provider | Cloud services, software licenses, professional services, outsourcing | Coordinated with BFS-ISP-015; contract security provisions, SLA security commitments, data handling obligations |

| Customer Agreements | Account agreements, lending agreements, service agreements | Customer information confidentiality; security commitments to customers; consumer protection obligations |

| Partner Agreements | Correspondent banking, payment network, distribution partnerships | Bilateral information sharing; security commitments to partners |

| Regulatory Undertakings | Specific BFS commitments to BSP, NPC, or other regulators | Specific compliance commitments beyond general regulatory framework |

| Insurance Contracts | Cyber insurance, professional liability, general liability | Coverage requirements affecting incident response; notification obligations |

| Industry Memberships | Banking association memberships, payment network memberships | Membership obligations affecting BFS operations |

| Confidentiality Agreements | NDAs with vendors, partners, advisors | Specific confidentiality scope per BFS-ISP-021 §5 |

## 6.2  Contractual Compliance Operational Approach

Contract Inventory: BFS maintains inventory of material contracts — supporting awareness of obligations and tracking;

Contract Review: Material contracts reviewed by Legal Counsel before execution — ensuring enforceability and identifying obligations;

Information Security Provisions: Material contracts include appropriate information security provisions — typically negotiated with input from CISO Office for vendor contracts and Legal for customer-facing contracts;

Obligation Tracking: Specific obligations from material contracts tracked in Compliance Register or equivalent — ensuring obligations are not forgotten;

Performance Monitoring: BFS performance against contractual obligations monitored — including SLA performance for vendor contracts, security commitments to customers, regulatory undertaking compliance;

Counterparty Performance Monitoring: Counterparty performance against their obligations to BFS monitored — particularly important for vendor contracts where vendor security commitments affect BFS;

Renewal and Modification: Contract renewals provide opportunity to update obligations reflecting current expectations; modifications require appropriate approval and documentation;

Dispute and Breach Management: Contractual disputes managed through Legal; material breach response per BFS-ISP-017 where information security incident dimensions present.

## 6.3  Customer Contractual Compliance

Customer Agreement Compliance: BFS adherence to specific commitments in customer agreements — including account security commitments, transaction processing commitments, and dispute resolution commitments;

Consumer Protection: Beyond contract specifics, RA 11765 consumer protection obligations affecting customer relationships;

Customer Communication: Customer-facing communications shall not promise compliance beyond actual capability — promises create enforceable expectations;

Customer Data Specific Obligations: Customer agreements typically include data handling commitments — these integrated with RA 10173 personal data compliance per BFS-ISP-003.

## 6.4  Regulatory Undertakings

Specific Commitments: From time to time BFS makes specific commitments to regulators — typically through BSP undertakings, NPC commitments, or similar arrangements;

These commitments are tracked in Compliance Register with specific oversight;

Compliance with regulatory undertakings is examined during regulatory examinations;

Modification or termination of regulatory undertakings requires regulator coordination per the undertaking provisions.

# 7.  INTELLECTUAL PROPERTY RIGHTS AND SOFTWARE LICENSE COMPLIANCE (A.5.32)

This section operationalizes ISO/IEC 27001:2022 Annex A.5.32 — Intellectual property rights. BFS is both an IP rights holder protecting BFS-owned IP and an IP rights consumer using third-party IP. Both dimensions require disciplined management.

## 7.1  IP Rights Categories

| IP Category | Definition | BFS Considerations |

| --- | --- | --- |

| Copyright | Protection for original works of authorship | Software code (BFS-developed and licensed); documentation; communications materials; database compilations; published materials |

| Trademark | Brand identifiers — names, logos, slogans | BFS brand and trademarks; vendor/partner brands BFS uses with permission; trademark policies for use of BFS brand |

| Patent | Protection for inventions | Generally limited applicability for BFS; specific BFS inventions if applicable |

| Trade Secret | Confidential business information providing competitive advantage | BFS proprietary methods, customer lists, internal processes, AI model details, business strategies; protected through BFS-ISP-021 confidentiality |

| Database Rights | Protection for databases as collections | BFS-curated databases; licensed databases with specific use restrictions |

## 7.2  BFS-Owned IP Protection

PS-2.1  BFS-developed software code is BFS intellectual property protected through copyright. Source code is RESTRICTED classification per BFS-ISP-003. Distribution, copying, or use of BFS source code outside BFS authorization is prohibited.

PS-2.2  BFS proprietary processes, methods, and trade secrets are protected through confidentiality (per BFS-ISP-021), access control (per BFS-ISP-005), and contractual obligations (employment NDAs, vendor confidentiality).

PS-2.3  BFS trademarks are registered where appropriate and used per documented brand guidelines. Misuse of BFS trademarks (by external parties or BFS personnel) is addressed through Legal.

PS-2.4  BFS-developed work product by personnel during employment within scope is BFS intellectual property per BFS-ISP-021 §5.1 employment contract IP provisions. Personnel acknowledge BFS ownership.

PS-2.5  BFS IP licensing to third parties (where it occurs) is managed through Legal with documented license agreements specifying permitted uses.

## 7.3  Third-Party IP Compliance

PS-3.1  BFS use of third-party intellectual property requires appropriate licensing or other legal basis — fair use, public domain, owner authorization, etc.

PS-3.2  Software used in BFS systems requires valid software license per Section 7.4.

PS-3.3  Third-party content used in BFS materials (images, text, data) requires appropriate licensing or rights — verified before use.

PS-3.4  BFS personnel shall not use unauthorized copies of software or other third-party IP in BFS work — purchase or licensing of needed materials per documented procurement procedures.

PS-3.5  Third-party IP infringement claims received by BFS shall be referred to Legal Counsel — not addressed unilaterally by personnel receiving the claim.

## 7.4  Software License Compliance

Software license compliance is operationally significant given the depth of BFS software portfolio. Software License Compliance specifically:

Software Inventory: BFS maintains inventory of software deployed including license details per BFS-ISP-002 — supporting both security control (CIS Control 2) and license compliance;

License Verification: New software acquisition includes license verification — proper purchase, valid license keys, license terms understood;

License Tracking: License usage tracked supporting compliance with license quantities — preventing over-deployment beyond licensed quantities;

Open Source Compliance: Open source software use complies with applicable license terms — particularly important for copyleft licenses (GPL, LGPL, AGPL) which create obligations for derived works;

OSS License Tracking: Open source software components in BFS-developed software tracked through Software Bill of Materials (SBOM) per BFS-ISP-016;

Permissive vs Copyleft: BFS open source use distinguishes permissive licenses (MIT, Apache, BSD — compatible with proprietary use) from copyleft licenses (GPL, LGPL, AGPL — may create obligations);

AGPL Specifically: AGPL has obligations triggered by network use of derivative works — particularly relevant for BFS as service-providing institution; AGPL components evaluated specifically for compliance impact;

License Violations: Use of unauthorized software, license over-deployment, or copyleft compliance violations are addressed promptly with potential disclosure to license holder per legal advice.

## 7.5  IP Rights and AI/Machine Learning

BFS as AI-native platform development organization has specific IP considerations relating to AI:

Training Data Rights: AI/ML training data rights — BFS-owned data is BFS IP; third-party training data requires appropriate licensing; copyrighted material requires fair use analysis or licensing;

Model IP: BFS-developed AI/ML models are BFS intellectual property — protected through trade secret (model parameters, training methodology, fine-tuning data) and possibly copyright (model code);

Third-Party Models: Use of third-party foundation models, fine-tuned models, or pre-trained models requires license compliance per model provider terms;

Generated Content IP: AI-generated content has evolving IP treatment — copyright attribution may not attach to purely AI-generated works in some jurisdictions; verification of IP status before reliance on AI-generated material;

Code Generation Tool Compliance: Use of AI code generation tools (Copilot, similar) per tool license; awareness of training data IP issues that may affect generated code IP status.

| AI IP IS EVOLVING:  AI intellectual property law is rapidly evolving — copyright office rulings, court decisions, legislative responses, and regulatory guidance continuously shape the landscape. BFS approach: stay informed; conservative posture for novel uses pending clarity; documented decisions on AI IP with rationale; consultation with Legal Counsel for material new use cases. The currently emerging consensus on training data, model rights, and generated content IP will continue to develop. |

| --- |

# 8.  COMPLIANCE MONITORING AND INCIDENT RESPONSE

## 8.1  Compliance Monitoring

Compliance monitoring verifies that BFS continues to meet applicable requirements:

Periodic Self-Assessment: BFS functions periodically assess compliance with applicable requirements — typically annually with quarterly status updates for material areas;

Internal Audit Verification: Internal Audit independently verifies compliance per BFS-ISMS-008 audit universe — including specific compliance audits per audit plan;

Regulatory Examination Support: BFS supports regulatory examinations through documented evidence, operational cooperation, and timely response to examination findings;

External Audit: External auditors review compliance dimensions during financial audit and specific compliance audits where applicable (PCI QSA, SOX-equivalent attestations);

Compliance Metrics: Compliance KPIs reviewed quarterly per Section 9;

Regulatory Reporting: Required regulatory reporting completed accurately and timely — material reports include BSP supervisory reports, NPC notifications, AMLC reports, etc.

## 8.2  Compliance Violation Response

When compliance violations occur, BFS response framework:

Immediate Containment: Stop continuing violation — modify operations to come into compliance going forward;

Investigation: Determine scope, root cause, and material impact of violation;

Remediation: Address violation comprehensively — remediating compliance gap; addressing affected parties; preventing recurrence;

Documentation: Violation, response, and remediation documented;

Disclosure: Material violations may require disclosure — regulator notification, customer notification, public disclosure depending on circumstances;

Post-Incident Review: Per BFS-ISMS-010 — root cause analysis, lessons learned, corrective action, preventive action;

Disciplinary Considerations: Where personnel conduct contributed to violation, BFS-ISMS-001 §11 disciplinary framework applies with severity calibration.

## 8.3  Specific Notification Obligations

| Trigger | Notification To | Timing |

| --- | --- | --- |

| Personal Data Breach (RA 10173) | NPC and affected data subjects | NPC: 72 hours from discovery; data subjects: per applicable provisions; per BFS-ISP-017 detail |

| Material IT Risk Incident (BSP Circular 1140) | BSP | Per BSP timing — typically immediate for material incidents |

| Material Cybersecurity Incident (BSP Circular 1048) | BSP | Per BSP timing — immediate notification for material cybersecurity incidents |

| Suspicious Transaction (AMLC) | AMLC | Per AMLC reporting timelines — typically 5 days from determination of suspicion |

| Material Compliance Violation | Affected regulator | Per applicable regulatory framework; Legal Counsel coordination |

| PCI DSS Compromise | PCI Council, card brands, acquiring bank | Per PCI incident response requirements |

| Cross-Border Data Transfer Issue | NPC | Per applicable circumstances under NPC oversight |

| Material Outsourcing Failure | BSP per Circular 808 | Per BSP outsourcing notification requirements |

Notification timing is calibrated to regulatory expectations. Late notification or failure to notify may itself constitute violation. Compliance Office and Legal Counsel coordinate notifications ensuring accuracy and appropriate timing.

# 9.  ROLES AND RESPONSIBILITIES

| Role | Compliance Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy and material revisions. Receives quarterly compliance reporting including compliance status, material violations, and regulatory developments. Provides governance oversight. |

| Chief Executive Officer | Ultimate accountability for BFS compliance posture. Champions compliance culture. Engages with regulators on material matters. |

| Chief Compliance Officer | Document co-owner. Operationally accountable for compliance program including Compliance Register maintenance, regulatory monitoring, compliance verification, and regulatory liaison. |

| Chief Legal Counsel | Document co-owner. Legal interpretation of requirements; contractual compliance; litigation; regulatory advice. Co-approves material compliance decisions. |

| Chief Information Security Officer | Document co-owner. Information security regulatory compliance — BSP cybersecurity, PCI DSS, security-relevant aspects across all frameworks. |

| Chief Information Officer | Co-approver. Ensures IT operations support compliance — logging for audit, technical controls per regulatory expectations. |

| Data Protection Officer | Co-approver. Personal data compliance under RA 10173 — DPO function per RA 10173 §21; NPC liaison; PIA framework; breach notification. |

| Chief Risk Officer | Co-approver. Compliance risk integrated into enterprise risk management. |

| Compliance Office | Day-to-day compliance operations — Register maintenance, regulatory monitoring, compliance training, examination support, reporting. |

| Internal Audit | Independent verification of compliance program per BFS-ISMS-008. Specific compliance audits per audit plan. |

| Business Function Heads | Compliance within their functions. Identification of new compliance requirements affecting their areas. Implementation of compliance controls. Reporting compliance status. |

| All Personnel | Personal compliance with applicable requirements affecting their roles. Reporting observed potential compliance issues. Cooperation with compliance verification activities. |

# 10.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Compliance effectiveness is measured through the following KPIs reviewed quarterly by Compliance Office and reported to Board Audit & Risk Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Compliance Register currency (entries reviewed within review cycle) | ≥ 95% | Quarterly |

| Compliance Register coverage of identified regulatory framework | 100% | Annual |

| Material regulatory developments identified within 7 days of issuance | ≥ 95% | Quarterly |

| Compliance Status — overall compliant entries | ≥ 95% | Quarterly |

| Compliance Status — gap entries | Track and remediate | Quarterly |

| BSP examination findings — material findings | Zero target; remediate per BFS-ISMS-010 | Per examination |

| NPC compliance review findings — material findings | Zero target; remediate per BFS-ISMS-010 | Per review |

| AMLC examination findings — material findings | Zero target | Per examination |

| PCI DSS QSA assessment — Report on Compliance | ROC achieved annually | Annual |

| External auditor compliance findings | Zero material findings | Annual |

| Regulatory notifications — completed within required timing | 100% | Per notification |

| Personal data breach notifications to NPC within 72 hours | 100% | Per applicable case |

| Suspicious transaction reports to AMLC within timing requirements | 100% | Per report |

| Software license compliance — confirmed valid licenses for deployed software | ≥ 99% | Quarterly |

| Open source license compliance findings (in BFS-developed software) | Track and remediate | Per release |

| Compliance training completion | ≥ 95% | Annual cycle |

| Material contractual obligation compliance | 100% | Quarterly |

| Internal Audit compliance findings | Track and remediate per BFS-ISMS-010 | Per audit |

| Regulatory enforcement actions against BFS | Zero target | Annual |

| Compliance budget variance from approved | Within ±10% | Quarterly |

# 11.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Legal, Regulatory, and Contractual Compliance Policy operationalizing ISO/IEC 27001:2022 Annex A.5.31 and A.5.32 in unified framework. Tri-functional ownership by CCO, CLC, and CISO reflecting cross-functional compliance governance. Comprehensive Compliance Register structure with 5-tier compliance status (Compliant/Partial/Gap/Under Implementation/Not Applicable). Coverage of major regulatory frameworks: BSP (Circulars 1140/1048/144/808/982/969 and MORB); NPC (RA 10173, IRR, Circulars 16-01/16-02/16-03+); AMLC; PCI DSS v4.0; and 10 other regulatory frameworks summarized with Information Security relevance. Contractual compliance with 7-category obligation framework. Intellectual Property Rights and Software License Compliance (A.5.32) including BFS-owned IP protection, third-party IP compliance, software license discipline (proprietary, OSS permissive, OSS copyleft), and emerging AI/ML IP considerations. Compliance Monitoring and Incident Response with 8-trigger notification matrix. Compliance Foundation Document of the BFS ISMS. | IT Head / Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A Controls Mapping

Direct mapping of A.5.31 and A.5.32 controls to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.5.31 | Legal, statutory, regulatory and contractual requirements — Legal, statutory, regulatory and contractual requirements relevant to information security and the organization's approach to meet these requirements shall be identified, documented and kept up to date. | Comprehensive operationalization across multiple substantive sections: Section 3 (Compliance Framework with 7 foundational principles, 5-category compliance taxonomy, and layered governance); Section 4 (Compliance Register Structure with 15-field entry schema, register maintenance, regulatory monitoring across BSP/NPC/other regulators/legislation/standards/international, and 5-tier compliance status assessment); Section 5 (Major Regulatory Frameworks covering BSP framework with 7 specific Circulars, RA 10173/NPC framework with 8 specific elements, AMLC framework with 4 specific laws, PCI DSS framework, and 10 other major frameworks summarized); Section 6 (Contractual Compliance with 7-category obligation framework, 8-element operational approach, customer contractual compliance, and regulatory undertakings); Section 8 (Compliance Monitoring and Incident Response with 8-trigger notification matrix). Coordinated with all related policies addressing specific compliance dimensions. |

| A.5.32 | Intellectual property rights — The organization shall implement appropriate procedures to protect intellectual property rights. | Section 7 (Intellectual Property Rights and Software License Compliance) operationalizes — 5-category IP framework (Copyright, Trademark, Patent, Trade Secret, Database Rights); BFS-Owned IP Protection (5 PS statements covering software code, proprietary processes, trademarks, work product, and IP licensing); Third-Party IP Compliance (5 PS statements); Software License Compliance with depth covering inventory, verification, tracking, OSS license compliance, permissive vs copyleft distinction, and AGPL-specific considerations; IP Rights and AI/Machine Learning specific considerations relevant to BFS AI-native platform development context. |

# APPENDIX B:  Compliance Quick Reference

Single-page reference for personnel and managers.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| Where do I find what regulations apply to my function? | BFS Compliance Register maintained by Compliance Office — accessible through Compliance Office portal. Single source of truth for BFS compliance scope. See §4. |

| What's the BSP regulatory framework I need to know? | BSP Manual of Regulations for Banks plus key Circulars: 1140 (IT Risk), 1048 (Cybersecurity), 144 (Cyber Risk), 808 (Outsourcing), 982 (E-Banking), 969 (Risk Governance). See §5.1. |

| What's the personal data compliance framework? | RA 10173 Data Privacy Act + IRR + NPC Circulars (16-01 Security, 16-02 Data Sharing, 16-03 Breach Mgmt). DPO function per §21. PIAs for new processing. 72-hour breach notification. See §5.2. |

| When does AMLC apply to my work? | BFS as covered institution has AML obligations affecting KYC, transaction monitoring, suspicious transaction reporting. Information security dimensions include KYC information confidentiality, transaction monitoring system security, STR confidentiality. See §5.3. |

| Is BFS PCI DSS certified? | Annual PCI QSA assessment with Report on Compliance for cardholder data environment. PCI DSS v4.0 requirements distributed across BFS technology and policies. See §5.4. |

| What if I need to use unlicensed software for a quick task? | No — software license compliance is operational requirement. Use of unauthorized software is policy violation per BFS-ISP-020 and creates legal liability. Procure proper license through documented procurement procedures. See §7.4 PS-3.4. |

| What about open source software? | Permitted with license compliance. Permissive licenses (MIT, Apache, BSD) generally compatible with BFS use. Copyleft licenses (GPL, LGPL, AGPL) may create obligations especially for BFS-developed software using them. SBOM tracking required per BFS-ISP-016. See §7.4. |

| Who owns code I write at BFS? | BFS owns work product created during employment within scope per BFS-ISP-021 §5.1. Specific provisions for AI-related work. See §7.2 PS-2.4. |

| How do I report a compliance violation? | Through Compliance Office, your manager, CISO Office for security-related, or whistleblower channel for sensitive matters. Material violations may require regulatory notification. See §8.2 and §8.3. |

| What if there's a personal data breach? | Per BFS-ISP-017 incident response: contain, investigate, notify NPC within 72 hours, notify affected data subjects per applicable provisions. Compliance Office coordinates notifications. See §8.3 trigger matrix. |

| What about new regulations I become aware of? | Bring to Compliance Office attention promptly. Compliance Office assesses applicability and Register impact. Material new requirements typically trigger implementation plan with Compliance Register update. See §4.3. |

| How does compliance monitoring work? | Periodic self-assessment by functions; Internal Audit independent verification; regulatory examinations; external audits; quarterly KPI review. Compliance not delegated to compliance function alone — shared responsibility across all personnel. See §3.3 and §8.1. |

BFS-ISP-026  |  Legal, Regulatory, and Contractual Compliance Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.5.31 and A.5.32. The Compliance Foundation Document of the BFS ISMS.
