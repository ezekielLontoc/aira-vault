---
title: "BFS-ISP-024-Information-Transfer-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Cryptography-and-Information-Transfer/BFS-ISP-024-Information-Transfer-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Cryptography-and-Information-Transfer"
aliases:
  - "BFS-ISP-024-Information-Transfer-Policy"
creator: "Un-named"
created: "2026-04-30T08:47:00Z"
modified: "2026-05-02T13:37:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>INFORMATION TRANSFER<br>POLICY<br>Secure Transfer of BFS Information Within BFS, with External Parties, Across Borders, and Through Various Channels — Email, File Transfer, Physical Media, Verbal Communication, and Electronic Messaging<br>Policy Reference: BFS-ISP-024<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.5.14<br>Aligned with RA 10173 Cross-Border Transfer Provisions and BSP Outsourcing Expectations<br>Comprehensive Framework for Information in Motion Across All Transfer Channels |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Information Transfer Policy |

| --- | --- |

| Policy Reference | BFS-ISP-024 |

| Policy Owner | Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team / CISO Office / Data Protection Officer / Legal |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS information transfer arrangements, third-party relationships, regulatory expectations, or transfer technology platforms |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-003 (Data Protection — classification driving transfer requirements); BFS-ISP-009 (Email and Browser Protections); BFS-ISP-015 (Service Provider Management — third-party transfer agreements); BFS-ISP-020 (Acceptable Use Policy — personal-account transfer prohibitions); BFS-ISP-022 (Remote Working — off-premises transfer); BFS-ISP-023 (Cryptography Policy — encryption of transfers) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.5.14 (Information transfer); ISO/IEC 27002:2022 implementation guidance; PCI DSS v4.0 Requirement 4 (Protect cardholder data with strong cryptography during transmission); CIS Controls v8 elements |

| Regulatory Reference | RA 10173 Data Privacy Act §21 (Cross-border transfer); NPC Circular 16-02 (Data sharing agreements); BSP Circular 1140 (IT outsourcing transfer expectations); BSP Circular 808 (Outsourcing); RA 8791 (Bank confidentiality affecting transfers); RA 1405 (Bank Deposits Secrecy Law); RA 6426 (Foreign Currency Deposit Act); BSP Manual of Regulations for Banks on outsourcing and information sharing |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Data Protection Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Chief Legal Counsel |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Information Transfer Policy governing how BFS information moves between parties, locations, and systems. It operationalizes ISO/IEC 27001:2022 Annex A.5.14 (Information transfer) which requires BFS to establish information transfer rules, procedures, or agreements for all types of transfer facilities within and outside the organization.

Information transfer is where data crosses control boundaries. Within BFS systems data is protected through internal controls; in transit between parties data is exposed to the channel through which it moves. Email transmission can be intercepted; physical media can be lost; verbal communications can be overheard; electronic messaging can be misdirected. Information transfer represents the transition between trust domains — the moment when control of information moves from one party to another or between systems with different protective contexts.

BFS as a regulated financial institution operates with elevated information transfer expectations. RA 10173 Section 21 specifically addresses cross-border data transfer with restrictions and requirements; RA 1405 Bank Deposits Secrecy Law restricts disclosure of deposit information; BSP Circular 808 establishes expectations for information sharing in outsourcing contexts; PCI DSS Requirement 4 mandates strong cryptography for cardholder data transmission. Information transfer compliance is regulatory expectation, not optional control.

The specific objectives of this policy are to:

Establish information transfer categories with calibrated security requirements per category;

Operationalize ISO 27001 A.5.14 transfer rules, procedures, and agreement requirements;

Address all material transfer channels — email, file transfer, physical media, verbal communication, electronic messaging, API transfers;

Govern third-party information sharing through formal agreements and documented arrangements;

Address cross-border information transfer per RA 10173 §21 expectations;

Coordinate with BFS-ISP-003 data classification driving transfer protection levels;

Coordinate with BFS-ISP-023 cryptographic protections for transfers requiring encryption;

Establish data loss prevention (DLP) framework supporting transfer policy enforcement;

Provide audit-friendly documentation supporting ISO 27001 certification, NPC compliance verification, BSP examinations, and PCI QSA assessments.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Information Transfer | Movement of information from one party, location, or system to another. Includes electronic transfer (email, file transfer, API, messaging), physical transfer (paper documents, removable media), verbal transfer (conversations, presentations), and visual transfer (displayed content, observed materials). |

| Sender | Party initiating information transfer — typically BFS personnel or system. |

| Recipient | Party receiving transferred information — internal BFS, external party, or system. |

| Transfer Channel | Mechanism through which transfer occurs — email, file transfer service, physical courier, verbal communication, etc. |

| Internal Transfer | Information transfer between parties within BFS — between business units, between personnel, between BFS systems. |

| External Transfer | Information transfer between BFS and external parties — customers, vendors, partners, regulators, government agencies, public. |

| Cross-Border Transfer | Information transfer where the recipient or processing location is outside the Philippines. Subject to RA 10173 §21 specific provisions for personal data. |

| Data Sharing Agreement (DSA) | Formal agreement between BFS and external party governing information sharing — including purpose, scope, protections, retention, and obligations. NPC Circular 16-02 establishes DSA expectations for personal data sharing. |

| Data Loss Prevention (DLP) | Technology and process framework detecting and preventing unauthorized information transfer. Operates across email, web, endpoint, and storage with configurable policies. |

| Data Sovereignty | Concept that information is subject to the laws of the country in which it is located or processed. Relevant for cross-border transfer where multiple jurisdictions may apply. |

| Adequate Protection (RA 10173 context) | Standard of protection in receiving country at least equivalent to RA 10173 — required for cross-border transfer of personal data per §21. |

| Onward Transfer | Subsequent transfer by recipient to another party. Original transfer agreements typically address onward transfer permissions and restrictions. |

| Email Encryption | Cryptographic protection of email content — TLS for transport (between mail servers); S/MIME or PGP for end-to-end content encryption. |

| Secure File Transfer | Encrypted file transfer mechanism — SFTP, FTPS, HTTPS-based file transfer, or BFS-approved secure file sharing platforms. |

| Managed File Transfer (MFT) | Enterprise file transfer platform with central management, audit logging, automation, and security controls — used for systematic recurring transfers. |

| Information Disclosure | Communication of information to recipient — encompasses both authorized transfer per legitimate purpose and unauthorized disclosure as breach event. |

| Material Disclosure | Disclosure significant enough to warrant escalation — typically including disclosure to public, regulators, or media; disclosure of CONFIDENTIAL or RESTRICTED content; disclosure beyond intended scope. |

## 2.2  Scope

### 2.2.1  In-Scope Transfers

All transfers of BFS information in any form — electronic, physical, verbal, visual;

Internal transfers between BFS personnel, business units, and systems;

External transfers with customers, vendors, partners, regulators, government agencies, professional advisors, and other external parties;

Cross-border transfers where receiving party or processing location is outside the Philippines;

Transfers through all channels — email, file transfer, web, API, mobile, physical media, courier, verbal communication, video conferencing;

Automated/system transfers (API integrations, scheduled file transfers, real-time data feeds);

Ad-hoc human-initiated transfers (sending email attachment, sharing document link, providing physical document).

### 2.2.2  Out-of-Scope Items

Public information available without restriction — once information is appropriately public, transfer mechanisms not subject to this policy beyond standard professional standards;

Customer-initiated retrieval of customer's own information through BFS customer-facing services — governed by Customer Terms of Service;

Routine intra-system data flows within single BFS-controlled system boundaries;

Personal communications between BFS personnel unrelated to BFS information.

## 2.3  ISO 27001:2022 Annex A.5.14 Coverage

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.5.14 | Information transfer — Information transfer rules, procedures, or agreements shall be in place for all types of transfer facilities within the organization and between the organization and other parties. | Section 3 (Transfer Categories); Section 4 (Transfer Channel Requirements — 6 channels); Section 5 (Internal Transfer Rules); Section 6 (External Transfer Rules and Agreements); Section 7 (Cross-Border Transfer per RA 10173); Section 8 (Data Loss Prevention) |

# 3.  INFORMATION TRANSFER CATEGORIES

This section establishes BFS information transfer categories. Categorization calibrates security requirements to transfer profile — recognizing that transfers between BFS personnel within BFS facilities differ materially from cross-border transfers to international parties.

## 3.1  Transfer Category Framework

| Category | Definition | Typical Risk Profile |

| --- | --- | --- |

| Internal — Same Function | Transfer between BFS personnel within same business unit or function | Low — same trust domain; standard internal controls |

| Internal — Cross-Function | Transfer between BFS personnel across different business units | Low-Medium — same trust domain but broader access; standard controls with awareness |

| External — BFS Customer | Transfer to/from BFS customer in standard service context | Medium — customer relationship trust with appropriate channel security |

| External — Vendor / Service Provider | Transfer to/from BFS vendor under documented service arrangement | Medium-High — third-party trust dependent on agreement and provider security |

| External — Partner / Counterparty | Transfer to/from business partners, correspondent banks, payment networks | Medium-High — bilateral trust with documented arrangements |

| External — Regulator / Government | Transfer to/from regulators, government agencies, law enforcement | Medium — typically required transfer with specific protocol; legal review for sensitive matters |

| External — Public | Transfer to public-domain destinations (publication, press, public filings) | Variable — public-by-design transfers low-risk; inadvertent public disclosure of confidential material catastrophic |

| Cross-Border — Adequate Protection Country | Cross-border transfer to country with RA 10173 adequate protection | Medium — RA 10173 §21 conditions met |

| Cross-Border — Non-Adequate Protection | Cross-border transfer to country without adequate protection | High — RA 10173 §21 specific protective measures required |

## 3.2  Category-Driven Requirements

Transfer category drives security requirements. The following matrix establishes baseline requirements; specific transfers may exceed these based on classification of information being transferred per BFS-ISP-003:

| Category | Authentication Requirements | Encryption Requirements |

| --- | --- | --- |

| Internal | Sender authentication via BFS credentials | Encryption per BFS-ISP-023 §4.2 — TLS for electronic transfers; classification-driven requirements |

| External — Customer | Customer authentication per BFS-ISP-005 | Encryption required for all electronic transfers; classification-driven encryption strength |

| External — Vendor / Partner | Both parties authenticated; mutual authentication preferred for sensitive transfers | Strong encryption required; mutual TLS (mTLS) for high-value API transfers |

| External — Regulator | Per regulatory protocol; typically authenticated channels with documented identification | Encryption per regulatory requirement; PGP/S/MIME for sensitive examination data |

| Cross-Border | Strong authentication; documented identity verification | Strong encryption; classification-based; receiving party security verification |

# 4.  TRANSFER CHANNEL REQUIREMENTS

This section establishes requirements for each material transfer channel. Channel selection should align with information classification, recipient relationship, and transfer purpose.

## 4.1  Email Transfer

PS-1.1  BFS email shall use approved BFS email systems for BFS information transfer. Personal email accounts shall not be used for BFS information transfer per BFS-ISP-020 §4.2 PS-1.2.

PS-1.2  Email transport encryption (TLS) operates by default for BFS email systems. Mandatory TLS configuration shall be in place for sensitive correspondent domains where end-to-end TLS guarantees are appropriate.

PS-1.3  Email content encryption (S/MIME or PGP) shall be applied for CONFIDENTIAL or RESTRICTED content where end-to-end protection beyond transport encryption is appropriate — particularly for content with material adverse impact if intercepted in transit.

PS-1.4  Email recipients shall be visually verified before sending — particularly for emails containing customer information, financial instructions, or sensitive content. Auto-complete-driven recipient errors are common cause of inappropriate disclosure.

PS-1.5  Email attachments containing CONFIDENTIAL or RESTRICTED information sent externally shall be encrypted at attachment level (password-protected archives, encrypted PDFs) with passwords transmitted through separate channel.

PS-1.6  Email distribution lists used for BFS information transfer shall be reviewed for membership currency — preventing inadvertent transfer to former personnel or no-longer-relevant recipients.

PS-1.7  Bulk email distribution outside BFS shall use approved bulk email mechanisms with appropriate authorization — preventing unauthorized mass communication and supporting tracking.

## 4.2  File Transfer

PS-2.1  File transfer of BFS information shall use BFS-approved secure file transfer mechanisms — SFTP, FTPS, HTTPS-based transfer, BFS-approved file sharing platforms (managed cloud storage with appropriate controls), or BFS Managed File Transfer (MFT) platform for systematic transfers.

PS-2.2  Non-secure file transfer protocols (FTP without TLS, HTTP file transfer) shall not be used for BFS information transfer regardless of classification.

PS-2.3  Personal cloud storage services (personal Google Drive, personal Dropbox, etc.) shall not be used for BFS information transfer per BFS-ISP-020 §4.2.

PS-2.4  File transfer authentication shall include strong credentials — typically MFA for human-initiated transfers; service authentication with key management for automated transfers.

PS-2.5  Recurring/systematic file transfers between BFS and external parties shall be governed by documented arrangements specifying transfer scope, frequency, format, security controls, and accountability.

PS-2.6  File transfer activities shall be logged supporting audit traceability and incident investigation.

## 4.3  API and System-to-System Transfer

PS-3.1  API transfers between BFS systems and external parties shall use TLS 1.2 minimum (TLS 1.3 preferred) per BFS-ISP-023 §3.5.

PS-3.2  API authentication shall use OAuth 2.0, mutual TLS (mTLS), or equivalent strong authentication; basic authentication acceptable only for low-sensitivity public APIs.

PS-3.3  API transfers involving CONFIDENTIAL or RESTRICTED information shall use mutual TLS (mTLS) providing both encryption and bilateral authentication.

PS-3.4  API rate limiting and abuse prevention controls shall be in place — preventing bulk data extraction through API compromise.

PS-3.5  API transfer logging supports security monitoring and audit per BFS-ISP-008.

## 4.4  Physical Media Transfer

PS-4.1  Physical media (paper documents, removable storage) containing BFS information shall be transferred per classification-appropriate methods.

PS-4.2  CONFIDENTIAL and RESTRICTED physical documents transported outside BFS facilities shall use secure courier or hand-delivery by authorized personnel; reasonable physical security maintained during transport.

PS-4.3  Removable storage media in transit shall be encrypted regardless of classification per BFS-ISP-019 §5.10 and BFS-ISP-023 §4.1.

PS-4.4  Physical document delivery to external parties shall include verification of recipient identity and acknowledgment of receipt for material documents.

PS-4.5  Lost physical media shall be reported immediately as potential breach per BFS-ISP-017 incident response.

## 4.5  Verbal and Telephonic Transfer

PS-5.1  Verbal transfer of BFS information shall occur through appropriate channels with appropriate recipients — telephone calls, in-person conversations, video conferences.

PS-5.2  CONFIDENTIAL conversations shall be conducted in private settings — not in public spaces (cafes, restaurants, public transportation, hallways) where overheard.

PS-5.3  Caller identity shall be verified before discussing customer-specific information by telephone — using callback verification, pre-established verification questions, or caller authentication where deployed.

PS-5.4  Recording of conversations involving BFS information shall comply with applicable consent requirements; unauthorized recording prohibited.

PS-5.5  Verbal information transfer to external parties shall be documented when material — call summaries, meeting minutes, or other contemporaneous record supporting later reconstruction.

## 4.6  Electronic Messaging

PS-6.1  BFS-approved messaging platforms shall be used for BFS messaging — typically including BFS internal messaging platform and approved external messaging where business appropriate.

PS-6.2  Personal messaging applications (personal WhatsApp, Telegram, SMS, etc.) shall not be used for BFS information transfer except for approved limited business use cases per documented exception.

PS-6.3  Messaging transfer of CONFIDENTIAL or RESTRICTED information shall use end-to-end encrypted messaging where supported; otherwise alternative channels with appropriate encryption.

PS-6.4  Messaging conversations involving BFS information are subject to the same documentation and retention expectations as other BFS communications per BFS-ISMS-006.

PS-6.5  Group messaging participant verification — group members reviewed periodically; departed personnel removed from BFS messaging groups; sensitive matters discussed only in groups with verified appropriate membership.

# 5.  INTERNAL TRANSFER RULES

Internal transfers between BFS personnel and systems represent the majority of BFS information transfer volume. Internal transfers operate within BFS trust domain but still require appropriate discipline.

## 5.1  Internal Transfer Principles

Internal transfers shall use BFS-approved channels — BFS email, BFS file shares, BFS messaging, BFS internal portals;

Need-to-know principle applies to internal transfers — information shared with internal personnel having legitimate business need;

Classification per BFS-ISP-003 guides protection — RESTRICTED and CONFIDENTIAL information distributed to specifically authorized personnel; INTERNAL information distributed broadly within BFS as appropriate;

Internal transfers do not eliminate confidentiality — BFS personnel discussing customer information internally remain subject to confidentiality and need-to-know constraints;

Sensitive internal transfers (e.g., HR matters, executive matters, security incidents) use appropriately restricted channels.

## 5.2  Internal Sharing of Customer Information

Customer information shared internally only with BFS personnel having legitimate business need;

Casual sharing of interesting customer information (celebrity customers, unusual transactions, personal interest) is prohibited per BFS-ISP-020 §6.2 and constitutes material policy violation;

Bulk customer information internal sharing limited to authorized purposes — analytics with appropriate scope, regulatory reporting, internal audit, etc.;

Customer information shared in internal training or examples shall be appropriately anonymized or use synthetic data;

Internal sharing of customer complaints, disputes, or sensitive matters limited to personnel involved in resolution and oversight.

## 5.3  Inter-Department Transfer Considerations

Information transfer across departments may cross sub-trust-domains within BFS — for example, transfer from operational area to internal audit changes information context;

Specific protected categories (HR information, security investigations, legal matters) have specific cross-department restrictions;

Boundary functions (compliance, internal audit, legal) require broad access; their internal sharing operates per professional confidentiality standards;

Cross-functional projects involving sensitive information establish specific information sharing protocols within project scope.

# 6.  EXTERNAL TRANSFER RULES AND AGREEMENTS

External transfers cross trust domain boundaries — BFS information moves to recipient with their own controls, policies, and personnel. External transfer requires more rigorous discipline than internal transfer.

## 6.1  External Transfer Authorization

PS-1.1  External transfer of CONFIDENTIAL or RESTRICTED BFS information shall be authorized — typically through manager approval for routine business transfers; through documented arrangements for systematic transfers.

PS-1.2  External transfer recipients shall be appropriately identified — verified business relationship; verified authority to receive the information; verified channel security for the recipient.

PS-1.3  Need-to-know principle applies externally — information shared with external recipients only to extent legitimate purpose requires.

PS-1.4  External transfer purpose shall be documented when material — supporting later traceability and accountability.

## 6.2  Data Sharing Agreements

Recurring or systematic external information sharing — particularly involving personal data per RA 10173 — shall be governed by Data Sharing Agreements (DSAs) per NPC Circular 16-02:

DSA Required For: Systematic personal data sharing with external parties; sharing exceeding standard service contract scope; sharing involving multiple data subjects; data sharing with cross-border or other heightened-risk dimensions;

DSA Content (per NPC Circular 16-02): Identity of parties; purpose and lawful basis for sharing; categories of personal data shared; categories of data subjects; security measures; retention periods; rights of data subjects; obligations of receiving party including onward transfer restrictions; breach notification obligations; termination provisions;

DSA Approval: DSA execution requires DPO and Legal Counsel review; CEO or designated executive signature for material DSAs;

DSA Inventory: BFS maintains inventory of executed DSAs supporting compliance verification and periodic review;

DSA Review: DSAs reviewed annually for continued appropriateness; updated as circumstances change.

## 6.3  Confidentiality and Non-Disclosure

External transfer of CONFIDENTIAL or RESTRICTED information typically requires recipient confidentiality obligation — through existing service contract NDA provisions, standalone NDA per BFS-ISP-021 §5.2, or agreement-specific confidentiality clauses;

Recipients without confidentiality obligation are not appropriate transfer destinations for CONFIDENTIAL or RESTRICTED information except in specifically authorized circumstances (regulatory submissions, legal proceedings, etc.);

Confidentiality obligations should specify obligations that survive contract termination — preventing post-engagement information misuse.

## 6.4  Transfer to Specific External Categories

| Recipient Category | Standard Approach | Specific Considerations |

| --- | --- | --- |

| Customers | Through BFS customer service channels with customer authentication | Subject matter limits per BFS-ISP-003; specific customer data only to verified customer; not customer information of others |

| Vendors / Service Providers | Per service contract scope through approved channels | BFS-ISP-015 governs vendor relationship; data sharing per service scope; vendor security verified |

| Banking Counterparties | Per established interbank protocols | SWIFT, RTGS, settlement systems; established security and authentication |

| Auditors (External) | Per audit engagement with confidentiality | Auditor confidentiality obligations; specific scope per engagement letter |

| Regulators (BSP, NPC, AMLC, etc.) | Per regulatory request and protocol | Documented regulatory authority for request; legal review for sensitive requests; appropriate channels |

| Law Enforcement | Per legal process (subpoena, court order, warrant) | Legal review of process validity; appropriate scope; documented response; bank secrecy considerations per RA 1405 |

| Government Agencies | Per documented authority | Same considerations as regulators; verify legal basis |

| Professional Advisors (BFS legal, accounting, consulting) | Through established professional engagements | Professional confidentiality obligations; engagement letter scope |

| Press / Media | Through Communications function only | Communications-managed; not direct transfer by other personnel; specific media training where applicable |

| Public (filings, disclosures) | Through specific authorized channels | Investor relations, regulatory disclosures, etc.; appropriate review before public release |

# 7.  CROSS-BORDER INFORMATION TRANSFER

Cross-border information transfer warrants specific attention given multiple legal jurisdictions, varying data protection regimes, and specific RA 10173 requirements. This section establishes the BFS framework for cross-border transfer.

## 7.1  RA 10173 Section 21 Framework

RA 10173 Data Privacy Act §21 specifically addresses cross-border transfer of personal data. BFS approach:

Cross-border personal data transfer permitted only where conditions of §21 are satisfied;

Adequate Protection: Receiving country provides level of protection at least equivalent to RA 10173 — assessed per NPC guidance and current adequacy decisions;

Contractual Safeguards: Where adequate protection is not present in receiving country, adequate protection through contractual safeguards (e.g., standard contractual clauses) provides alternative basis;

Consent: Data subject consent specifically for cross-border transfer provides basis where consent obtained with sufficient information;

Other §21 Bases: Performance of contract; pre-contractual measures; protection of vital interests; substantial public interest; legal claims; specific narrow exceptions per §21;

Documentation: Cross-border transfer basis documented for each transfer arrangement supporting compliance verification.

## 7.2  Cross-Border Transfer Categories

| Transfer Type | Risk Level | BFS Approach |

| --- | --- | --- |

| Cross-border to ASEAN+ counterparties (banking) | Medium | Per established bilateral arrangements and counterparty agreements |

| Cross-border to BFS group entities (if applicable) | Medium | Through intra-group data transfer agreements; established adequate safeguards |

| Cross-border to cloud providers (US, EU, etc.) | Medium-High | Through contractual safeguards; cloud provider security assessment per BFS-ISP-015; data residence considerations |

| Cross-border to vendor service providers | Medium-High | DSA per NPC Circular 16-02; vendor security assessment per BFS-ISP-015; specific contractual safeguards |

| Cross-border to international regulators | Medium | Per established regulatory cooperation arrangements; specific bilateral agreements |

| Cross-border to international law enforcement | Variable | Per applicable mutual legal assistance treaties; legal review of authority |

| Cross-border SWIFT messaging | Low | Per established SWIFT framework; long-established international protocols |

| Cross-border to non-adequate-protection countries without specific safeguards | High | Generally avoided; specific exceptional cases through DPO and Legal Counsel review |

## 7.3  Cross-Border Transfer Approval

New cross-border transfer arrangements involving personal data require DPO + Legal Counsel review;

Material new arrangements (significant data volume, sensitive data categories, or high-risk receiving jurisdictions) require additional CCO and CISO review;

Approval documentation includes RA 10173 §21 basis identification, security safeguards documentation, retention provisions, and breach notification arrangements;

Approved arrangements registered in cross-border transfer inventory supporting compliance verification.

| DATA SOVEREIGNTY:  Cross-border transfer involves data sovereignty considerations — the receiving country's laws may apply to transferred data. BFS evaluates implications including: receiving country government access to data (lawful access regimes); receiving country data localization requirements; conflict of laws between Philippine and receiving country jurisdictions; data subject rights enforceability across borders. Material data sovereignty concerns may warrant data localization rather than cross-border transfer. |

| --- |

# 8.  DATA LOSS PREVENTION (DLP)

Data Loss Prevention (DLP) provides technical enforcement of information transfer policies — detecting and preventing unauthorized transfer through email, web, endpoint, and storage channels. DLP is the operational mechanism converting policy from documentation into enforcement.

## 8.1  DLP Architecture

Email DLP: Outbound email content inspection identifying CONFIDENTIAL or RESTRICTED content, regulated data patterns (credit card numbers, SSNs, etc.), and policy-defined sensitive content; alerting or blocking based on policy;

Web DLP: Outbound web traffic inspection identifying uploads to unauthorized destinations (personal cloud storage, file-sharing services, suspicious destinations);

Endpoint DLP: Local activity monitoring identifying file copies to removable storage, screenshots of sensitive content, printing of sensitive material, transfer to personal accounts;

Storage DLP: Discovery of sensitive content in unexpected locations identifying inappropriate storage requiring relocation;

Cloud DLP: Cloud service activity monitoring identifying inappropriate sharing settings, external sharing of internal content, suspicious download patterns;

DLP integration with security information and event management (SIEM) per BFS-ISP-008 supporting incident response and pattern analysis.

## 8.2  DLP Policy Framework

DLP policies aligned with BFS-ISP-003 data classification — automated identification of CONFIDENTIAL/RESTRICTED markings, content patterns indicating sensitive information, contextual indicators (recipient, channel, timing);

Severity calibration — INFORMATIONAL events for awareness; WARN events triggering user notification with override capability for legitimate business need; BLOCK events preventing transfer with policy violation reporting;

False positive management — DLP tuning balancing detection effectiveness with operational disruption from false positives; user feedback supporting tuning;

Exception handling — legitimate business needs accommodated through documented exception process rather than universal exemptions;

Policy evolution — DLP policies updated based on observed patterns, emerging concerns, and regulatory changes.

## 8.3  DLP Operational Considerations

DLP alerting goes to CISO Office with appropriate escalation to investigation per BFS-ISP-017 for material findings;

DLP-blocked transfers receive user notification explaining the block and providing path to legitimate alternative or override request;

DLP override authorization requires documented justification and appropriate approval — preventing routine override defeating the control;

DLP effectiveness measured through KPIs in Section 10 — covering coverage, detection accuracy, false positive rates, and incident outcomes;

DLP is not infallible — policy operation per other sections of this policy is the primary defense; DLP is technical reinforcement.

## 8.4  DLP and Personnel Privacy

DLP operates by inspecting BFS-asset use — necessarily examining content. Personnel privacy considerations:

DLP scope is BFS-asset use — personal content not subject to DLP examination outside BFS systems;

DLP findings classified as personal data per RA 10173 — processed per RA 10173 expectations including purpose limitation, retention limits, access controls;

Personnel notified through this policy and BFS-ISP-020 §7 that BFS asset use is monitored;

DLP-detected personal communications inadvertently observed are not examined or retained for personal-content purposes;

DLP findings used for legitimate purposes only — security investigation, policy enforcement, compliance verification.

# 9.  ROLES AND RESPONSIBILITIES

| Role | Information Transfer Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy and material revisions. Receives reporting on information transfer effectiveness, DLP findings, material disclosures, and trends. |

| Chief Information Officer | Co-approver. Ensures IT infrastructure supports secure transfer mechanisms — email security, MFT platforms, DLP technology. |

| Chief Information Security Officer | Document owner. Operationally accountable for information transfer security including DLP operation, transfer channel security, and incident investigation for transfer-related events. |

| Data Protection Officer | Co-approver. Operationally accountable for personal data transfer compliance with RA 10173 — including cross-border transfer arrangements per §21, DSA execution per NPC Circular 16-02, and NPC interaction on transfer matters. |

| Chief Compliance Officer | Co-approver. Ensures information transfer compliance with regulatory expectations including BSP, NPC, PCI. Coordinates regulatory examination on transfer topics. |

| Chief Legal Counsel | Co-approver. Reviews material agreements affecting information transfer — DSAs, contractual safeguards, cross-border arrangements. Reviews legal process responses. |

| IT Operations | Operates transfer infrastructure — email systems, file transfer platforms, MFT, DLP technology. Maintains transfer logs supporting audit and investigation. |

| Procurement | Coordinates DSA negotiation and execution for vendor arrangements involving information transfer; coordinates with DPO and Legal Counsel. |

| Business Function Heads | Accountable for information transfer practices within their functions. Ensure transfers per policy. Approve external transfer authorizations within their authority. |

| All Personnel | Comply with this policy in information transfer activities. Use approved channels. Apply classification-appropriate protection. Report observed inappropriate transfer practices. |

| Internal Audit | Independently audits information transfer policy operation per BFS-ISMS-008 — including DLP operation effectiveness, DSA inventory currency, cross-border transfer compliance, channel security verification. |

# 10.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Information transfer effectiveness is measured through the following KPIs reviewed quarterly by CISO Office and DPO jointly and reported to the Information Security Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Email DLP coverage of BFS email systems | 100% | Monthly |

| Web DLP coverage of BFS internet access | 100% | Monthly |

| Endpoint DLP deployment on BFS-issued devices | ≥ 98% | Monthly |

| DLP alerts requiring investigation | Track and trend | Monthly |

| DLP-confirmed material exfiltration attempts | Track; address per incident | Per incident |

| DLP false positive rate | < 15% | Quarterly |

| DLP override requests with documented justification | 100% | Per override |

| Cross-border transfer arrangements with documented §21 basis | 100% | Quarterly |

| Data Sharing Agreements current for systematic personal data sharing | 100% | Quarterly |

| DSA annual review completion | ≥ 95% | Annual cycle |

| Personal email forwarding rules detected | < 1% of accounts | Quarterly |

| External cloud storage upload attempts blocked | Track and trend | Monthly |

| Lost/misdirected sensitive transfer reports | Track; address per incident | Per incident |

| Material disclosure events (any source) | Track; address per BFS-ISP-017 | Per incident |

| Breach notifications triggered by transfer events | Per applicable cases | Per applicable case |

| Internal Audit findings on information transfer | Track and remediate per BFS-ISMS-010 | Per audit |

# 11.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Information Transfer Policy operationalizing ISO/IEC 27001:2022 Annex A.5.14 (Information transfer) in comprehensive framework. 9 transfer categories with calibrated requirements (Internal Same-Function / Internal Cross-Function / External Customer / External Vendor / External Partner / External Regulator / External Public / Cross-Border Adequate / Cross-Border Non-Adequate). 6 transfer channels with detailed PS statements (Email, File Transfer, API, Physical Media, Verbal/Telephonic, Electronic Messaging). External transfer rules with Data Sharing Agreement framework per NPC Circular 16-02. RA 10173 §21 cross-border transfer framework. DLP framework covering email, web, endpoint, storage, and cloud. Joint DPO/CISO operational accountability reflecting cross-functional transfer governance. | IT Head / Infrastructure Manager / Legal Head | IT Head / Legal Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A.5.14 Mapping

Direct mapping of A.5.14 control to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.5.14 | Information transfer — Information transfer rules, procedures, or agreements shall be in place for all types of transfer facilities within the organization and between the organization and other parties. | Comprehensive operationalization across 6 substantive sections: Section 3 (9 transfer categories with calibrated authentication and encryption requirements); Section 4 (Transfer Channel Requirements — 6 channels: Email 7 PS, File Transfer 6 PS, API 5 PS, Physical Media 5 PS, Verbal/Telephonic 5 PS, Electronic Messaging 5 PS — totaling 33 PS statements); Section 5 (Internal Transfer Rules); Section 6 (External Transfer Rules with Data Sharing Agreement framework per NPC Circular 16-02 and 10-row Recipient Category matrix); Section 7 (Cross-Border Transfer per RA 10173 §21 with 8-row category matrix); Section 8 (Data Loss Prevention — 4-channel architecture with operational framework). Coordinated with BFS-ISP-003 classification, BFS-ISP-023 cryptography, and BFS-ISP-015 service provider management. |

# APPENDIX B:  Information Transfer Quick Reference

Single-page reference for personnel performing information transfer activities.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What email channel should I use for BFS information? | BFS-approved email systems only — never personal email. TLS transport encryption automatic. S/MIME or PGP for CONFIDENTIAL/RESTRICTED externally. Visually verify recipients. See §4.1. |

| How do I send a confidential file externally? | BFS-approved secure file transfer (SFTP, FTPS, HTTPS-based, BFS-approved file sharing platform, or BFS MFT). Never personal cloud storage, never FTP without TLS. Encrypted attachment with separate-channel password for high sensitivity. See §4.2 PS-2.1 to PS-2.3. |

| Can I share customer info with another BFS team member? | Only if they have legitimate business need. Need-to-know principle applies internally. Casual sharing of customer info to interesting BFS personnel is policy violation per BFS-ISP-020 §6.2. See §5.2. |

| What about sharing customer info with a vendor? | Per service contract scope through approved channels. Vendor must have BFS-ISP-015 service provider arrangement; data sharing per service scope. DSA may be required per NPC Circular 16-02 for systematic personal data sharing. See §6.4. |

| What's the rule for cross-border data transfer? | RA 10173 §21 conditions must be satisfied. Easiest: receiving country has adequate protection. Otherwise: contractual safeguards, consent, or other §21 basis. Document the basis. New arrangements through DPO + Legal Counsel review. See §7. |

| When do I need a Data Sharing Agreement? | Systematic personal data sharing with external parties; sharing exceeding standard service scope; sharing involving multiple data subjects; cross-border or heightened-risk dimensions. NPC Circular 16-02 governs content. DPO + Legal Counsel review. See §6.2. |

| Can I discuss BFS matters on the phone in public? | Confidential conversations require private settings — not in cafes, restaurants, public transportation, hallways. Verify caller identity before discussing customer-specific information. See PS-5.2 and PS-5.3. |

| Can I use WhatsApp for BFS info? | Personal messaging applications generally not for BFS information transfer. BFS-approved messaging platforms required. Specific limited business use cases through documented exception. See PS-6.2. |

| What is DLP and how does it affect me? | Data Loss Prevention — automated detection of inappropriate transfers across email, web, endpoint, storage, cloud. May warn or block transfers. Override available for legitimate business need with documented justification. See §8. |

| What if I accidentally send confidential info to wrong recipient? | Report immediately to CISO Office and your manager. Recall message if email system supports. Recipient contacted to delete and confirm non-distribution. Breach assessment per BFS-ISP-017. Material disclosure may trigger NPC notification. See PS-1.4 (visual verification prevents this). |

| What goes in a regulatory information request? | Per regulatory authority and protocol. Legal review for sensitive requests verifying valid basis (subpoena, court order, etc.). Bank secrecy considerations per RA 1405. Documented response. See §6.4. |

| Can I take BFS files to share at an industry conference? | Generally no for confidential content. Public-classification material acceptable through authorized channels. Specific approval through manager and Communications for material content. Anonymized or synthetic data preferred for educational/illustrative use. See §5.2 (last bullet) and §6.1. |

BFS-ISP-024  |  Information Transfer Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.5.14. RA 10173 §21 Cross-Border Compliant.
