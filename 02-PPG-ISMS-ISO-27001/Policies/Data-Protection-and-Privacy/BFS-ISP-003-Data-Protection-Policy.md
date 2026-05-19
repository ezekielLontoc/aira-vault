---
title: "BFS-ISP-003-Data-Protection-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Data-Protection-and-Privacy/BFS-ISP-003-Data-Protection-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Data-Protection-and-Privacy"
aliases:
  - "BFS-ISP-003-Data-Protection-Policy"
creator: "Un-named"
created: "2026-04-10T10:25:00Z"
modified: "2026-04-12T02:20:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>DATA PROTECTION POLICY<br>Classification, Handling, and Control of Data<br>Policy Reference: BFS-ISP-003<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 3)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140<br>Companion to BFS-ISP-001 (Enterprise Assets)  \|  BFS-ISP-002 (Software Assets) |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Data Protection Policy |

| --- | --- |

| Policy Reference | BFS-ISP-003 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material change in regulatory, technological, or data processing environment |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-002 (Software Assets); BFS-ISP-005 (Vulnerability Management); BFS-ISP-007 (Incident Response); BFS-ISP-020 (Acceptable Use) |

| Framework Alignment | CIS Controls v8 (Control 3); ISO/IEC 27001:2022 (A.5.12, A.5.13, A.5.14, A.5.33, A.5.34, A.8.10, A.8.11, A.8.12, A.8.24) |

| Regulatory Reference | Philippine Data Privacy Act RA 10173 and IRR; BSP Circular 1140 (MORB IT Risk); BSP Circular 982 (Data Governance); NPC Circular 16-01; RA 10175 (Cybercrime Prevention Act); PCI DSS v4.0 (where applicable) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Risk Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the enterprise-wide framework for the protection of data throughout its entire lifecycle — from creation and collection through processing, storage, transmission, archival, and secure disposal — within BFS Financial Services (hereinafter "the Organization" or "BFS").

Data is the most critical asset of a financial services organization. Customer financial records, personally identifiable information (PII), Sensitive Personal Information (SPI), transaction data, and proprietary business intelligence are all subject to stringent legal, regulatory, and contractual protection obligations. Failure to adequately protect data exposes BFS and its customers to financial harm, regulatory sanction, reputational damage, and loss of public trust.

This policy directly implements CIS Controls v8, Control 3 (Data Protection), which mandates that enterprises develop processes and technical controls to identify, classify, securely handle, retain, and dispose of data. It is anchored in ISO/IEC 27001:2022 Annex A controls governing information classification, labeling, transfer, records protection, privacy, data deletion, data masking, data leakage prevention, and cryptography.

The specific objectives of this policy are to:

Establish a consistent, risk-based data classification scheme that governs appropriate data handling, protection, and access requirements across all BFS environments;

Maintain a comprehensive data inventory and document data flows to enable effective governance, risk assessment, and regulatory compliance;

Define mandatory technical and procedural controls for data at rest, in transit, and in use, including encryption, masking, and access control requirements proportionate to data classification;

Deploy and operate Data Loss Prevention (DLP) controls to prevent unauthorized disclosure, exfiltration, or destruction of sensitive data;

Establish and enforce data retention schedules and secure disposal requirements aligned with regulatory obligations and business needs;

Ensure full compliance with the Philippine Data Privacy Act (RA 10173), BSP data governance regulations, PCI DSS where applicable, and all other applicable laws and standards;

Integrate data protection requirements with the BFS Information Security Management System (ISMS) and the broader PPG framework;

Establish clear accountability for data ownership, stewardship, and custodianship at the organizational level.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all individuals who create, collect, process, store, transmit, manage, or dispose of BFS data, including:

All full-time and part-time employees of BFS across all business units, departments, and geographic locations;

Contractors, consultants, managed service providers, outsourcing partners, and third-party vendors with access to BFS data or systems;

Board members and senior executives with access to BFS information systems or data;

BFS-affiliated entities, joint ventures, or subsidiaries sharing data with or accessing BFS systems.

## 2.2  Data Scope

This policy governs all data categories that BFS creates, collects, processes, stores, or transmits in any format — structured or unstructured, digital or physical — including:

### 2.2.1  Customer and Personal Data

Personal data of customers, employees, and third parties as defined under RA 10173, including names, addresses, contact details, government-issued IDs, biometric data, and financial account information;

Sensitive Personal Information (SPI) including data on health, race, ethnicity, political/religious affiliations, legal proceedings, and financial records;

Customer transaction records, loan data, credit history, and account activity.

### 2.2.2  Financial and Business Data

Financial statements, audit reports, regulatory filings, and board-level communications;

Proprietary business plans, strategic documents, merger and acquisition data, and pricing models;

Internal contracts, vendor agreements, and legal correspondence;

Risk assessments, internal audit findings, and compliance reports.

### 2.2.3  Technical and Operational Data

Source code, software configurations, cryptographic keys, certificates, and API credentials;

System logs, audit trails, security event data, and SIEM records;

Infrastructure configuration data, network diagrams, and architecture documentation;

Vulnerability assessment results, penetration test reports, and security incident records.

### 2.2.4  AI and Analytics Data

Training datasets used to develop AI/ML models, including any datasets derived from customer data;

Model inference inputs and outputs where they contain or are derived from personal data;

Data pipelines, ETL configurations, and analytical outputs from business intelligence platforms.

## 2.3  Environmental and Format Scope

This policy applies to data in all environments — production, pre-production, development, testing, disaster recovery, and training — and in all formats: digital files, databases, email, instant messaging, printed documents, removable media, and verbal communications of a formal business nature. It covers data hosted on-premise, in cloud environments (IaaS, PaaS, SaaS), in co-location facilities, and accessed or processed in remote or home office settings.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Data Classification | The formal process of categorizing data based on its sensitivity, criticality, and the consequences of its unauthorized disclosure, modification, or loss. Classification determines the level of protection applied. |

| Data Owner | The senior individual or role with primary business accountability for a data asset. Responsible for classifying data, approving access, and ensuring appropriate data handling throughout the lifecycle. |

| Data Steward | An individual delegated by the Data Owner to manage day-to-day data governance, quality, and compliance activities for a defined data domain or dataset. |

| Data Custodian | The technical team or individual (typically IT) responsible for implementing and maintaining the security and storage controls for data on behalf of the Data Owner. |

| Data Inventory | A centralized register documenting all significant data assets, their classification, location, owner, processing purpose, retention period, and applicable regulatory requirements. |

| Data Flow | A documented map of how data moves within and outside BFS, including its origin, processing points, storage locations, transmission channels, and destination systems or third parties. |

| Personal Data | As defined in RA 10173: any information from which the identity of an individual can be reasonably and directly ascertained, or when put together with other information would directly and certainly identify an individual. |

| Sensitive Personal Information (SPI) | As defined in RA 10173: personal data about race, ethnic origin, marital status, age, physical or mental health, education, genetic or sexual life, legal proceedings, and financial data. |

| Data at Rest | Data stored in any persistent medium, including hard drives, SSDs, databases, backup tapes, cloud storage, and archival systems. |

| Data in Transit | Data actively moving between systems, devices, or networks, including via email, APIs, file transfers, messaging applications, or remote access sessions. |

| Data in Use | Data actively being processed, accessed, or manipulated in memory, during computation, or on a user's screen or device. |

| Encryption | The process of converting data into an unreadable form using a cryptographic algorithm and key, rendering it inaccessible to unauthorized parties without the corresponding decryption key. |

| Data Masking | A technique that replaces sensitive data with a structurally similar but fictitious value, protecting the original data while preserving format for testing, training, or analytics use cases. |

| Tokenization | A process that substitutes sensitive data with a non-sensitive placeholder (token) that has no exploitable value, used widely in payment card data protection. |

| Data Loss Prevention (DLP) | A set of tools and processes designed to detect, monitor, and prevent unauthorized transmission, exfiltration, or accidental disclosure of sensitive data. |

| Data Retention | The policy-defined period for which data must be kept to meet legal, regulatory, operational, or contractual requirements before secure disposal. |

| Secure Disposal | The permanent, irrecoverable destruction or sanitization of data and the media on which it is stored, using methods appropriate to the data's classification and sensitivity. |

| Data Leakage | The unauthorized or unintentional transmission of data from within the organization to an external destination, whether through malicious action, negligence, or technical misconfiguration. |

| Privacy Impact Assessment (PIA) | A process to evaluate how a project, system, or process will collect, use, and protect personal data, and to identify and mitigate privacy risks before implementation. |

| Data Processing Agreement (DPA-contract) | A legally binding contract between BFS as data controller and a third-party data processor, governing the terms under which personal data may be processed in compliance with RA 10173. |

| Pseudonymization | The processing of personal data in such a manner that it can no longer be attributed to a specific data subject without the use of additional information kept separately and securely. |

| NPC | National Privacy Commission — the Philippine regulatory authority responsible for administering and implementing RA 10173. |

| BSP | Bangko Sentral ng Pilipinas — the central monetary authority of the Philippines, whose regulations govern BFS's data governance, IT risk management, and cybersecurity obligations. |

| PCI DSS | Payment Card Industry Data Security Standard — a set of security standards applicable to BFS where it stores, processes, or transmits cardholder data. |

| Cryptographic Key Management | The full lifecycle management of cryptographic keys, including generation, distribution, storage, rotation, revocation, and destruction. |

| WORM | Write Once Read Many — a data storage technology that prevents modification or deletion of stored records, used for immutable audit log and records retention compliance. |

# 4.  DATA CLASSIFICATION FRAMEWORK

The BFS Data Classification Framework provides a tiered, risk-based taxonomy for all data assets. Classification is the cornerstone of proportionate data protection — it determines what controls apply, who may access data, and how it must be handled, stored, transmitted, and disposed of.

| Level | Classification | Criteria | Examples | Default Handling |

| --- | --- | --- | --- | --- |

| 1 | TOP SECRET | Regulatory-mandated, highest-sensitivity data. Unauthorized disclosure would cause catastrophic harm to BFS, customers, or national financial stability. | Cryptographic keys (master/root), ISMS master documents, board-level M&A data, critical infrastructure credentials, core banking system secrets. | Encrypted at rest (AES-256) and in transit (TLS 1.3). Need-to-know only. No cloud transmission without HSM protection. Physical media: locked safe. |

| 2 | CONFIDENTIAL | Sensitive business, personal, or financial data whose unauthorized disclosure would cause significant harm, legal liability, or regulatory breach. | Customer PII/SPI, loan records, account credentials, employee HR data, financial statements, audit reports, security assessments, source code. | Encrypted at rest and in transit. Access restricted to authorized roles. DLP monitoring active. Cannot be shared externally without NDA/DPA. |

| 3 | INTERNAL USE | Non-public operational information intended for internal BFS use. Disclosure would cause moderate harm or operational disruption. | Internal policies, project documentation, operational dashboards, vendor contracts, general employee communications, internal memos. | Transmitted via BFS-approved channels. Not for public disclosure. Standard access controls. Encryption in transit required. |

| 4 | PUBLIC | Information approved for external publication. Disclosure poses no material security, privacy, or business risk. | Press releases, publicly available regulatory filings, approved marketing materials, public website content. | May be shared freely through approved channels. Integrity controls required. No PII/SPI. Change-managed before publication. |

| CLASSIFICATION NOTE:  When data of multiple classifications is combined in a single document or dataset, the combined data shall be treated at the highest classification level of any of its components. Reclassification (upward or downward) requires Data Owner approval and must be reflected in the Data Inventory. |

| --- |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and enforceable across all personnel and environments within the scope of this policy.

## 5.1  Data Classification and Labeling

PS-1.1  All data assets created, collected, or processed by BFS shall be classified in accordance with the BFS Data Classification Framework (Section 4) at the time of creation or collection. Unclassified data shall be treated as INTERNAL USE pending formal classification.

PS-1.2  Data Owners are responsible for assigning and maintaining the classification of their data assets. Classification shall be reviewed at least annually or upon any material change to the data's content, use, or regulatory context.

PS-1.3  Digital documents and data assets classified CONFIDENTIAL or TOP SECRET shall be labeled with the applicable classification marking in the document header, footer, or metadata. Physical documents shall bear a visible classification marking.

PS-1.4  Automated data classification tools shall be deployed and configured to scan and classify unstructured data stores, email, and endpoint content, with results reconciled with the Data Inventory on a scheduled basis.

## 5.2  Data Inventory and Data Flow Documentation

PS-2.1  BFS shall establish, maintain, and continuously update a comprehensive Data Inventory documenting all significant data assets. The Data Inventory shall record, at minimum: data type and classification, Data Owner, storage location(s), applicable regulatory classification, retention period, and processing purpose.

PS-2.2  Data flows shall be documented for all significant data processing activities, including: collection source, processing systems, storage repositories, third-party transfers, and final disposition. Data flow diagrams shall be maintained as a component of the Data Inventory.

PS-2.3  The Data Inventory and data flow documentation shall be updated within ten (10) business days of any significant change to data processing activities, the deployment of new systems processing data, or the onboarding of new third-party data processors.

PS-2.4  Data flows that cross national borders or involve international data transfers shall be specifically identified and subject to additional legal and regulatory review prior to implementation.

## 5.3  Data Access Control

PS-3.1  Access to data shall be granted on a need-to-know and least-privilege basis, commensurate with the data classification and the individual's documented business role and responsibilities.

PS-3.2  Access Control Lists (ACLs) shall be configured and maintained for all data repositories, file shares, databases, cloud storage buckets, and document management systems. ACLs shall reflect the minimum access required for operational purposes.

PS-3.3  Access rights to CONFIDENTIAL and TOP SECRET data shall be reviewed at least every six (6) months or upon any change in the data user's role, and promptly revoked upon termination or role change.

PS-3.4  Privileged access to production data — including database administrator access, backup administrator access, and cloud storage administrative rights — shall be subject to Privileged Access Management (PAM) controls, including session recording for TOP SECRET and CONFIDENTIAL data environments.

## 5.4  Encryption — Data at Rest

PS-4.1  All data classified CONFIDENTIAL or TOP SECRET stored on any digital medium — including servers, workstations, laptops, mobile devices, removable media, backup systems, and cloud storage — shall be encrypted using a minimum of AES-256.

PS-4.2  Database encryption shall be implemented for all production databases containing CONFIDENTIAL or TOP SECRET data. Transparent Data Encryption (TDE) or field-level encryption shall be used where technically feasible; the choice shall be documented and risk-justified where alternatives are selected.

PS-4.3  Cloud storage objects, buckets, and volumes containing CONFIDENTIAL or TOP SECRET data shall have server-side encryption enabled using BFS-managed or customer-managed encryption keys (CMK). Default provider-managed encryption alone does not satisfy this requirement for TOP SECRET data.

PS-4.4  Backup media containing CONFIDENTIAL or TOP SECRET data shall be encrypted before being transported off-site or stored in a co-location or cloud backup facility.

PS-4.5  Full-disk encryption (e.g., BitLocker, FileVault) shall be enabled on all BFS-managed laptops and portable devices, regardless of the classification of data typically stored on the device.

## 5.5  Encryption — Data in Transit

PS-5.1  All transmission of CONFIDENTIAL or TOP SECRET data across any network — including internal networks, the internet, VPNs, API calls, and inter-system integrations — shall be encrypted using TLS 1.2 at minimum, with TLS 1.3 required for all new implementations and preferred for existing systems.

PS-5.2  Email transmission of CONFIDENTIAL data shall use transport-level encryption (TLS). Email transmission of TOP SECRET data via external email is prohibited; approved secure file transfer channels or encrypted messaging platforms shall be used.

PS-5.3  Deprecated or insecure protocols including SSL 3.0, TLS 1.0, TLS 1.1, FTP (clear-text), Telnet, HTTP (unencrypted), and SNMPv1/v2 shall not be used for any transmission involving CONFIDENTIAL or higher-classified data. The use of these protocols for any purpose shall be documented and subject to a managed exception.

PS-5.4  API endpoints receiving or transmitting CONFIDENTIAL or TOP SECRET data shall enforce mutual TLS (mTLS) authentication or equivalent strong authentication mechanisms where technically feasible.

## 5.6  Data Masking, Tokenization, and Pseudonymization

PS-6.1  Production data classified CONFIDENTIAL or TOP SECRET shall not be used in non-production environments (development, testing, staging, analytics) unless it has been masked, tokenized, or pseudonymized such that individuals cannot be re-identified.

PS-6.2  Payment card data (PAN, CVV, expiry) shall be tokenized at the point of capture wherever technically feasible. Stored PANs must be masked, with only the last four digits displayed in any interface or report. Full PAN display requires exceptional authorization.

PS-6.3  Artificial or synthetic data shall be used in preference to masked production data for development and testing purposes wherever the use case permits.

PS-6.4  Data masking and pseudonymization techniques shall be documented, and the re-identification key (where applicable) shall be protected at the TOP SECRET classification level.

## 5.7  Data Loss Prevention (DLP)

PS-7.1  BFS shall deploy and maintain a DLP solution across endpoint, email gateway, and cloud environments to detect, monitor, and prevent the unauthorized transmission, exfiltration, or disclosure of CONFIDENTIAL and TOP SECRET data.

PS-7.2  DLP policies shall be defined and maintained by the CISO Office in consultation with Data Owners. Policies shall include detection rules for: customer PII/SPI, financial account numbers, credit card data, cryptographic material, and other sensitive data patterns applicable to BFS.

PS-7.3  DLP alerts classified as HIGH or CRITICAL severity shall be investigated by the Security Operations Center within four (4) hours of generation and escalated to the CISO and DPO where data exfiltration or privacy breach is suspected.

PS-7.4  Attempts to disable, circumvent, or tamper with DLP controls are strictly prohibited and shall be treated as a serious security incident, triggering immediate investigation and escalation.

## 5.8  Data Retention and Archival

PS-8.1  BFS shall establish and maintain a Data Retention Schedule defining minimum and maximum retention periods for all significant data categories, based on legal, regulatory, contractual, and business requirements.

PS-8.2  Data shall not be retained beyond its defined retention period unless subject to a legal hold, regulatory investigation, or approved business exception. Retention of data beyond its defined period without a documented basis constitutes a policy violation.

PS-8.3  Data classified CONFIDENTIAL or TOP SECRET retained in long-term archive shall remain encrypted, access-controlled, and subject to the same protective controls as active production data.

PS-8.4  Audit logs, security event records, and transaction logs shall be stored using immutable or WORM-compliant storage to prevent modification or premature deletion. Log retention shall comply with the BSP MORB minimum requirements and applicable legal obligations.

PS-8.5  A legal hold process shall be maintained to suspend the automated disposal of data that may be relevant to active or anticipated legal proceedings, regulatory investigations, or regulatory examinations.

## 5.9  Secure Disposal of Data and Media

PS-9.1  Data shall be securely and irreversibly disposed of at the end of its defined retention period, upon system decommissioning, or when a storage medium is reused, transferred, or discarded, using methods commensurate with its classification.

PS-9.2  Digital data disposal shall meet or exceed the following standards: NIST SP 800-88 (Guidelines for Media Sanitization) for on-premise media; cloud vendor-confirmed cryptographic erasure or secure deletion attestation for cloud-hosted data.

PS-9.3  Physical destruction of storage media containing CONFIDENTIAL or TOP SECRET data shall be performed by an approved, certified vendor. A certificate of destruction shall be obtained and retained in the Data Inventory for a minimum of three (3) years.

PS-9.4  Printed documents and physical records classified CONFIDENTIAL or TOP SECRET shall be disposed of using cross-cut shredding or incineration. General recycling or standard waste disposal of such materials is prohibited.

PS-9.5  Data disposal activities shall be logged, including: asset identifier, data classification, disposal method, disposal date, and authorizing personnel. Disposal logs are retained as records in accordance with the BFS Audit Log Retention Policy.

## 5.10  Third-Party and Cross-Border Data Sharing

PS-10.1  Personal data or CONFIDENTIAL data shall not be shared with any third party without a legally binding Data Processing Agreement (for personal data) or Non-Disclosure Agreement, and without the prior approval of the Data Owner and, for personal data, the DPO.

PS-10.2  Third-party data processors handling BFS personal data must demonstrate adequate data protection standards prior to engagement, including evidence of ISO 27001 certification, SOC 2 Type II reports, or equivalent third-party assurance. This assessment shall be repeated at least annually.

PS-10.3  Cross-border transfer of personal data shall comply with RA 10173 requirements, including assessment of the receiving country's data protection standards and, where required, NPC notification or approval.

PS-10.4  Third-party data processors shall be prohibited by contract from sub-processing BFS personal data without prior written consent from BFS, and shall notify BFS immediately of any data breach involving BFS data.

## 5.11  Cryptographic Key Management

PS-11.1  BFS shall maintain a Cryptographic Key Management Policy governing the full lifecycle of all cryptographic keys used to protect BFS data, including: key generation, registration, distribution, storage, rotation, revocation, and destruction.

PS-11.2  Cryptographic keys protecting TOP SECRET data shall be stored in Hardware Security Modules (HSMs) or equivalent FIPS 140-2 Level 2 (or higher) certified key management systems. Keys protecting CONFIDENTIAL data shall be stored using approved Key Management Service (KMS) platforms.

PS-11.3  Master encryption keys shall never be stored with the data they protect. Separation of key custody and data custody shall be maintained and enforced.

PS-11.4  Encryption keys shall be rotated at least annually for TOP SECRET data and every two (2) years for CONFIDENTIAL data, or immediately upon suspected compromise or upon the departure of any key custodian.

PS-11.5  Deprecated or weak cryptographic algorithms (DES, 3DES, RC4, MD5, SHA-1 for certificate signing, RSA below 2048-bit) shall not be used for any data protection purpose. Migration plans shall be in place for any legacy systems using deprecated algorithms.

## 5.12  Data Segmentation

PS-12.1  Data processing and storage infrastructure shall be segmented based on data classification. Systems processing TOP SECRET data shall reside in dedicated, strictly controlled network zones with no direct internet connectivity and enhanced monitoring.

PS-12.2  Production data environments shall be strictly segregated from development, testing, and analytics environments. Data flows between these environments require documented approval and, where personal data is involved, mandatory data masking.

PS-12.3  PCI DSS cardholder data environments (CDEs) shall be isolated and segmented in accordance with PCI DSS network segmentation requirements. CDE scope shall be formally documented and verified annually.

# 6.  PROCEDURES

## 6.1  Data Classification Procedure

The following procedure shall be followed when creating, receiving, or identifying a new data asset:

Data Identification: The creating or receiving team identifies the new data asset — including its type, source, content, and intended use — and determines whether it falls within the scope of this policy.

Classification Assessment: The Data Owner (or delegate) evaluates the data against the BFS Classification Framework (Section 4), considering: sensitivity of content, regulatory requirements (DPA, BSP, PCI), potential harm from unauthorized disclosure, and contractual obligations.

Classification Assignment: The appropriate classification level (TOP SECRET, CONFIDENTIAL, INTERNAL USE, PUBLIC) is assigned and documented.

Labeling: The data is labeled in accordance with Section 5.1, including digital metadata tags, document watermarks or headers, and physical markings as applicable.

Data Inventory Registration: The data asset is registered in the Data Inventory with all required attributes (see Section 6.2).

Access Control Configuration: The Data Custodian implements access controls appropriate to the classification, following the least-privilege principle.

Annual Review: The Data Owner reviews the classification during the annual Data Inventory review cycle and reclassifies as appropriate.

## 6.2  Data Inventory — Required Attributes

Each Data Inventory record shall capture the following attributes:

| Attribute | Description / Example |

| --- | --- |

| Data Asset ID | Unique identifier (e.g., BFS-DA-0087) |

| Data Asset Name | Descriptive name (e.g., Customer Loan Records Database) |

| Data Category / Type | Personal / Financial / Technical / Operational / AI-Analytics |

| Classification Level | Top Secret / Confidential / Internal Use / Public |

| Contains PII / SPI? | Yes / No; if Yes — type of personal data and DPA Article 13 basis for processing |

| Data Owner (Role & Name) | Accountable individual or business unit head |

| Data Steward | Day-to-day governance responsible party |

| Data Custodian | Technical team maintaining the data systems |

| Primary Storage Location(s) | System name, database, cloud bucket, file share — with environment tag |

| Secondary / Backup Location | Backup and DR storage locations |

| Processing Purpose | Documented lawful basis and business purpose for processing |

| Retention Period | Minimum and maximum retention period; legal / regulatory basis |

| Disposal Method | Required disposal method upon expiry (cryptographic erasure, shredding, etc.) |

| Applicable Regulations | RA 10173, BSP Circular 1140, PCI DSS, etc. |

| Third-Party Sharing | Yes / No; if Yes — list of authorized recipients and DPA/NDA reference |

| Cross-Border Transfer? | Yes / No; if Yes — destination country and RA 10173 transfer basis |

| Encryption Status (at rest) | Encryption algorithm and key management platform |

| Encryption Status (transit) | TLS version; protocol used |

| DLP Policy Coverage | Yes / No; DLP rule reference |

| Data Flow Reference | Link to data flow diagram record |

| Legal Hold Status | Active hold / No hold; legal hold reference if applicable |

| PIA Completed? | Yes / No; PIA reference and date |

| Last Review Date | Date of most recent annual Data Owner review |

| Last Classification Review | Date classification was last confirmed or revised |

## 6.3  Data Flow Documentation Procedure

Data flows shall be documented using the following procedure to ensure complete and accurate representation of how data moves within and outside BFS:

Triggering Events: A data flow assessment is required for: (a) deployment of any new system that collects or processes personal data; (b) integration of a new third-party data processor; (c) significant change to an existing data processing activity; (d) annual review of the Data Inventory.

Data Flow Mapping: The Data Steward, in collaboration with the system architect or developer, maps the data flow covering: data collection source, processing systems (internal and third-party), storage repositories, API integrations, output destinations, and disposal point.

Sensitive Data Identification: The DPO reviews data flows for personal data or SPI and confirms appropriate lawful processing basis, consent requirements (if applicable), and DPA contractual requirements.

Data Flow Diagram (DFD) Creation: A formal DFD is produced using an approved diagramming standard and stored in the Data Inventory system.

Review and Approval: The Data Owner approves the DFD. For data flows involving personal data, the DPO co-approves.

Change Management: Any change to a documented data flow must be assessed and the DFD updated within ten (10) business days of the change going live.

## 6.4  Data Breach Detection, Notification, and Response

In the event of a suspected or confirmed data breach involving personal data or highly sensitive BFS data:

Detection: Security Operations Center, DLP system, or any staff member who discovers or suspects a data breach shall immediately notify the CISO Office and DPO via the established incident reporting channel (ITSM portal or emergency hotline).

Initial Assessment (within 2 hours): CISO and DPO perform an initial triage to determine: scope (data types and volume affected), affected individuals, systems involved, and whether the breach constitutes a notifiable breach under RA 10173.

Containment (within 4 hours): IT Security and Operations team implements containment measures to stop ongoing data loss, preserve forensic evidence, and prevent further unauthorized access.

Regulatory Notification: If the breach involves personal data and is likely to result in serious harm to data subjects, the NPC must be notified within 72 hours of discovery, in accordance with NPC Circular 16-01. Affected data subjects must be notified without undue delay.

BSP Notification: As a BSP-supervised institution, BFS must also notify BSP of any significant data breach in accordance with applicable circulars (including Circular 1140 requirements). BFS shall comply with the applicable reporting timelines.

Investigation and Remediation: A full forensic investigation is conducted to determine root cause, impact, and required remediation actions. Findings are documented in an Incident Report.

Post-Incident Review: Within fifteen (15) business days, a post-incident review is conducted and corrective actions are tracked to closure.

| 72-HOUR RULE:  The Philippine Data Privacy Act requires notification to the NPC within 72 hours of becoming aware of a personal data breach that is likely to give rise to serious harm. This obligation cannot be delayed for internal investigation purposes. The DPO and CISO are jointly responsible for ensuring timely NPC notification. |

| --- |

## 6.5  Data Retention and Disposal Procedure

The following procedure governs the end-of-retention disposal of data:

Retention Monitoring: The Data Custodian, assisted by automated retention management tooling where available, monitors data assets approaching their defined retention expiry date and notifies the Data Owner sixty (60) days in advance.

Retention Review: The Data Owner reviews whether a legal, regulatory, or business justification exists to extend the retention period. Legal holds are checked. If no extension is justified, disposal is authorized.

Disposal Authorization: The Data Owner formally authorizes disposal in the ITSM or data governance platform.

Disposal Execution: The Data Custodian executes the approved disposal method: cryptographic erasure (cloud/SSD), secure wipe (HDD per NIST SP 800-88), physical shredding (documents), or physical destruction (media).

Certificate of Disposal: For CONFIDENTIAL and TOP SECRET data, a certificate of disposal (digital or physical) is obtained from the executing party and filed in the Data Inventory.

Data Inventory Update: The Data Inventory record is updated to reflect disposal: date, method, executor, and authorizer. Record of the disposal is retained for three (3) years.

## 6.6  DLP Configuration and Incident Management

DLP policy rules shall be configured, tested, and maintained through the following governance process:

Rule Design: The CISO Office, in consultation with Data Owners and the DPO, defines DLP detection rules for each sensitive data category. Rules shall include: pattern-matching (regex for account numbers, ID numbers, card data), keyword dictionaries, and content fingerprinting for critical documents.

Testing: All new DLP rules are tested in monitor-only mode for a minimum of thirty (30) days before enforcement mode is activated, to calibrate false positive rates and minimize operational disruption.

Enforcement Modes: DLP rules are configured in one of three modes: Monitor (detect and log only), Warn (user is notified and can override with justification), or Block (transmission prevented). Mode assignment is based on data classification and channel.

Alert Triage: SOC analysts triage DLP alerts daily. HIGH and CRITICAL severity alerts are investigated within four (4) hours. Confirmed data leakage events are escalated as security incidents.

DLP Rule Review: All active DLP rules are reviewed quarterly by the CISO Office and Data Owners, and updated to reflect new data patterns, business changes, or lessons from incidents.

## 6.7  Cryptographic Key Management Procedure

Key Generation: Cryptographic keys shall be generated using FIPS-approved algorithms and key lengths. Key generation shall occur within an HSM or equivalent trusted execution environment for TOP SECRET data keys.

Key Registration: All active cryptographic keys shall be registered in the BFS Key Management System (KMS) or equivalent, with: key ID, algorithm, key length, owner, creation date, expiry date, and associated data assets.

Key Distribution: Keys shall be distributed using secure, encrypted channels. Keys shall never be transmitted in plaintext or embedded in configuration files, code, or documentation.

Key Storage: TOP SECRET data keys stored in HSMs or FIPS 140-2 Level 2+ certified devices. CONFIDENTIAL data keys stored in approved cloud KMS (e.g., AWS KMS with customer-managed keys). No keys stored alongside the data they protect.

Key Rotation: Annual rotation for TOP SECRET data keys; biennial rotation for CONFIDENTIAL data keys; immediate rotation upon suspected compromise or custodian departure.

Key Revocation and Destruction: Compromised, expired, or no-longer-required keys are immediately revoked and securely destroyed. Destruction is logged and evidence retained.

# 7.  GUIDELINES

## 7.1  Data Handling Guidelines by Classification

| Control Area | TOP SECRET | CONFIDENTIAL | INTERNAL USE | PUBLIC |

| --- | --- | --- | --- | --- |

| Encryption at Rest | AES-256, HSM-managed keys | AES-256, CMK or KMS | AES-256 recommended | Not required |

| Encryption in Transit | TLS 1.3, mTLS for APIs | TLS 1.2 min (TLS 1.3 preferred) | TLS 1.2 min | TLS recommended |

| Access Control | PAM, session recording, MFA | RBAC, MFA required | RBAC, MFA for remote | Integrity only |

| DLP Coverage | Block mode | Block mode | Warn/Monitor mode | Monitor only |

| Masking (non-prod) | Mandatory | Mandatory | Recommended | Not applicable |

| Backup Encryption | Mandatory (offline + HSM) | Mandatory | Recommended | Not required |

| External Sharing | Prohibited without HSM transfer and CIO+CISO approval | NDA + DPA required; CISO approval | Management approval | Freely shareable (approved) |

| Physical Documents | Locked safe, shred P-4+ | Locked cabinet, shred | Locked cabinet | Standard recycling |

| Retention Period | Per regulatory schedule | Per regulatory schedule | Per business need | Until superseded |

| Disposal Method | Crypto-erase + physical destruction + cert | Crypto-erase + cert | Secure wipe | Standard deletion |

## 7.2  Cloud Data Protection Guidelines

Cloud storage services holding CONFIDENTIAL or TOP SECRET data must have: (a) server-side encryption enabled with customer-managed keys, (b) access logging enabled and ingested into the SIEM, (c) public access blocked at the bucket/container level by default, and (d) versioning enabled for critical data objects to support recovery.

Cloud data warehouses and analytics platforms handling personal data shall enforce column-level or row-level security to ensure users only access data relevant to their role. Data masking shall be applied to analytical copies of personal data.

Cloud-to-cloud data transfers between BFS-controlled cloud accounts and third-party services shall be routed through approved API gateways with DLP inspection enabled.

Serverless and container-based workloads processing CONFIDENTIAL data shall be deployed in private subnets with no public IP, with secrets injected via approved secrets management services — never via environment variables or configuration files in source control.

## 7.3  Email and Collaboration Platform Data Guidelines

Employees shall not transmit TOP SECRET data via email under any circumstances. CONFIDENTIAL data may be transmitted via BFS-provisioned corporate email with transport encryption, provided the recipient is a BFS employee or authorized external party with a DPA or NDA in place.

External email attachments containing CONFIDENTIAL data shall be encrypted using BFS-approved email encryption tools before dispatch. Unencrypted transmission of CONFIDENTIAL data to external parties via email is prohibited.

Collaboration platforms (Microsoft Teams, SharePoint, or equivalent) shall be configured such that CONFIDENTIAL data cannot be shared externally or to unauthorized channels. Guest access to repositories containing CONFIDENTIAL data is prohibited without CISO approval.

Auto-forward rules that redirect BFS email to personal accounts are prohibited and shall be blocked by the email gateway configuration.

## 7.4  Removable Media and Physical Data Guidelines

The use of removable storage media (USB drives, external HDDs, SD cards, optical media) to store or transport CONFIDENTIAL or TOP SECRET data is restricted. Where necessary, only BFS-issued, hardware-encrypted removable media is permitted, and usage must be logged.

Unencrypted removable media containing CONFIDENTIAL or TOP SECRET data is prohibited. Any such media found in the environment shall be treated as a security incident.

Printed copies of CONFIDENTIAL or TOP SECRET documents shall be minimized. Where printing is necessary, secure print release (PIN-protected printing) shall be used. Printed documents must be retrieved immediately and not left unattended on printers or desks.

## 7.5  AI and Analytics Data Protection Guidelines

Personal data shall not be used to train AI/ML models without: (a) a documented lawful basis under RA 10173, (b) DPO approval, and (c) confirmation that data subjects have been informed through appropriate privacy notices.

Training datasets containing PII or SPI shall be pseudonymized or anonymized before use in model training, wherever the training objective permits. The DPO shall assess whether anonymization is sufficient to remove re-identification risk.

AI model outputs that reveal or can be used to infer personal data (including model inversion attacks) shall be subject to the same DLP and access controls as the source data.

Use of third-party Generative AI tools (including LLM API services) is prohibited for processing TOP SECRET or CONFIDENTIAL BFS data unless the tool has been formally assessed and approved, a DPA is in place with the provider, and data residency requirements are confirmed.

## 7.6  Data Minimization and Purpose Limitation

BFS shall collect only the minimum personal data necessary for the defined and lawful processing purpose. Excessive, redundant, or speculative collection of personal data is prohibited.

Personal data collected for one purpose shall not be used for an incompatible secondary purpose without re-assessment of the lawful basis and, where required, additional consent from the data subject.

Data minimization principles shall be embedded in application design, database schema design, and API design. Data architects shall document and justify every personal data field collected.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of BFS's data protection program. Approves this policy. Reviews annual data protection compliance metrics, breach statistics, and KPIs. Ensures adequate investment in data protection capabilities. |

| Chief Information Officer (CIO) | Accountable for the enterprise data protection program. Ensures adequate technical infrastructure, tooling, and staffing. Co-approves this policy with CISO and DPO. Escalation authority for data protection investment decisions. |

| Chief Information Security Officer (CISO) | Responsible for the design, implementation, and enforcement of technical data protection controls (encryption, DLP, key management, SIEM monitoring, data segmentation). Oversees the DLP program, cryptographic standards, and data breach response. Reports data risk posture to CIO and Board. |

| Data Privacy Officer (DPO) | Responsible for BFS's compliance with RA 10173 and NPC regulations. Maintains the Data Inventory (privacy component). Approves processing of personal data. Conducts and oversees PIAs. Coordinates NPC and data subject breach notifications. Advises on cross-border data transfer legality. |

| Data Owners (Business Unit Heads) | Accountable for the data assets generated or used by their business unit. Assigns classification, approves data access, authorizes data sharing, and approves data disposal. Participates in annual Data Inventory review. Escalates data protection risks. |

| Data Stewards | Manages data quality, governance, and classification currency for their assigned data domain. Maintains data flow documentation. Coordinates with Data Custodians on access control implementation. Raises data quality and classification issues to the Data Owner. |

| Data Custodians (IT Operations / DBA) | Implements and maintains technical data protection controls (encryption configuration, ACLs, backup, access controls) on behalf of Data Owners. Executes data disposal on Data Owner authorization. Maintains technical records for Data Inventory. |

| Enterprise Architecture Team | Embeds data classification, encryption, and DLP requirements in solution design and architecture standards. Reviews data flows in new system designs. Maintains approved data protection patterns, including cloud and AI data architecture standards. |

| Security Operations Center (SOC) | Monitors DLP alerts, data access anomalies, and data-related security events via SIEM. Responds to data protection incidents within defined SLAs. Maintains data protection correlation rules. Escalates confirmed data leakage events. |

| Legal and Compliance | Maintains the Data Retention Schedule in alignment with legal, regulatory, and contractual obligations. Reviews third-party DPAs and NDAs. Manages legal holds. Advises on cross-border data transfer compliance and data subject rights. |

| Human Resources | Ensures data protection obligations are embedded in employment contracts, onboarding training, and termination procedures. Manages staff disciplinary actions for data protection violations in accordance with HR policy. |

| Internal Audit | Independently assesses the effectiveness of data classification, handling controls, DLP coverage, encryption compliance, and retention/disposal practices. Reports findings to the Audit and Risk Committee. |

| All Employees and Third Parties | Handle data in accordance with its classification. Report discovered data protection issues, misclassified data, or suspected data leakage to the CISO Office or DPO. Do not share, copy, transmit, or store data in ways inconsistent with this policy. |

# 9.  DATA PRIVACY COMPLIANCE

## 9.1  Philippine Data Privacy Act (RA 10173)

BFS, as a personal information controller (PIC) under RA 10173, is obligated to comply with the data privacy principles of transparency, legitimate purpose, and proportionality, as well as the general data privacy principles of collection, processing, and storage. This policy operationalizes BFS's compliance with the DPA through the following specific requirements:

Lawful Basis for Processing: Every personal data processing activity documented in the Data Inventory shall have an identified lawful basis (consent, contract, legal obligation, vital interest, public task, or legitimate interest).

Privacy Notices: Data subjects shall be provided with clear, compliant privacy notices describing the purpose, legal basis, retention period, and data subject rights for all personal data collected by BFS.

Data Subject Rights: BFS shall maintain processes to respond to data subject requests for: access, rectification, erasure, data portability, and objection to processing, within the timeframes required by the DPA and NPC rules.

Consent Management: Where consent is the lawful basis for processing, BFS shall maintain records of consent, and provide data subjects with a mechanism to withdraw consent at any time.

Privacy by Design: New systems, products, or processes that involve personal data shall be designed with data privacy controls embedded from the outset (Privacy by Design), not retrofitted after deployment.

## 9.2  BSP Data Governance Requirements

As a BSP-supervised institution, BFS is subject to the IT Risk Management framework established under BSP Circular 1140 (MORB) and related circulars. This policy supports BSP compliance through:

Maintenance of a complete and current Data Inventory as required by the BSP data governance framework;

Implementation of data loss prevention and access control mechanisms consistent with BSP IT risk management expectations;

Ensuring data protection controls are included in the BFS IT Risk Assessment and Management framework;

Ensuring data breach notification procedures meet BSP incident reporting requirements.

## 9.3  PCI DSS Compliance

For BFS functions within the scope of PCI DSS v4.0 (cardholder data environment):

Cardholder data (CHD) including PAN, SAD, and cardholder names must be protected in accordance with PCI DSS requirements, which are aligned with and supplemented by this policy;

Tokenization, encryption, and masking of PAN data shall comply with PCI DSS requirements for rendering PAN unreadable wherever stored;

The CDE scope shall be reviewed annually and documented in the Data Inventory with all applicable PCI DSS controls mapped;

Qualified Security Assessor (QSA) assessments or Self-Assessment Questionnaires (SAQs) shall be conducted annually in accordance with PCI DSS requirements.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous automated monitoring of DLP alerts, encryption compliance, and data access anomalies through the SIEM platform;

Quarterly Data Inventory review to verify classification currency, retention compliance, and completeness of data flow documentation;

Semi-annual review of data access rights for CONFIDENTIAL and TOP SECRET data repositories;

Annual formal data protection audit conducted by the CISO and DPO, validated by Internal Audit;

Monthly KRI reporting to the CISO covering the KPIs defined below.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Data Inventory Coverage (classified vs. total significant data assets) | ≥ 99% | Quarterly |

| CONFIDENTIAL/TOP SECRET data stores with encryption at rest enabled | 100% | Monthly |

| Endpoints with full-disk encryption enabled | 100% | Daily |

| DLP HIGH/CRITICAL alert investigation within SLA (4 hours) | 100% | Per incident |

| Confirmed data leakage incidents (trend) | 0; trend ↓ | Monthly |

| Data Retention compliance (disposals on schedule) | 100% | Quarterly |

| Overdue data disposal actions | 0 | Monthly |

| Access rights reviews for CONFIDENTIAL/TOP SECRET completed on schedule | 100% | Semi-annual |

| Cryptographic key rotations completed on schedule | 100% | Per schedule |

| PIAs completed for new personal data processing activities | 100% before go-live | Per project |

| DPA contracts in place with all active personal data processors | 100% | Quarterly |

| NPC breach notifications submitted within 72 hours | 100% | Per incident |

| Data classification attribute completeness in Data Inventory | ≥ 95% | Quarterly |

| EOL encryption algorithms in use (target: zero) | 0 | Monthly |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Failure to classify newly created data; incomplete Data Inventory record; late access rights review. | Formal written notice; mandatory remediation within defined timeframe; supervisory follow-up. |

| Moderate | Transmitting CONFIDENTIAL data via unapproved channel; printing CONFIDENTIAL data without business justification; storing CONFIDENTIAL data on unapproved personal cloud storage. | Formal warning; immediate remediation; mandatory refresher training; access privilege review; logged in personnel file. |

| Serious | Sharing CONFIDENTIAL data with unauthorized third parties without DPA; deliberate misclassification to avoid controls; circumventing DLP; using personal devices to store TOP SECRET data. | Suspension pending investigation; formal disciplinary action up to and including termination; DPO notification to NPC for personal data violations if required. |

| Critical / Legal | Deliberate data exfiltration or breach for personal gain; unauthorized sale of customer data; destruction of data under legal hold; unauthorized disclosure of TOP SECRET data. | Immediate termination; referral to law enforcement; civil and criminal prosecution under RA 10173, RA 10175; mandatory NPC notification; regulatory reporting. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Exceptions to specific requirements of this policy may be granted only where there is a compelling operational or technical justification, the associated risks are formally assessed and accepted, compensating controls are implemented, and the exception is time-bound and subject to regular review.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| Encryption Exception | Legacy system unable to support TDE; unencrypted backup pending migration. | 90 days | CISO + CIO |

| DLP Mode Reduction | Temporarily reducing DLP from block to warn mode for a specific business unit. | 30 days | CISO |

| Retention Extension | Extending data beyond normal retention for active legal proceedings or regulatory examination. | Duration of hold + 30 days | Legal + DPO |

| Non-Prod Data Use | Use of real (masked) production data in a test environment where synthetic data is insufficient. | Per project; 90 days max | CISO + DPO |

| Cross-Border Transfer | Transfer of personal data to a country without adequate data protection laws pending DPA finalization. | 60 days | DPO + Legal |

| Protocol Exception | Continued use of TLS 1.1 for a legacy integration pending upgrade. | 30 days | CISO |

| Removable Media Use | Use of encrypted USB for specific data transfer where no other channel is available. | Per use case; 30 days | CISO / IT Security Manager |

## 11.3  Exception Process

Requestor submits a Data Protection Policy Exception Request Form via the ITSM portal, specifying the policy section, justification, data classification affected, risk assessment, duration, and proposed compensating controls.

CISO Office and DPO (for exceptions involving personal data) jointly assess the exception request and determine appropriate approval authority.

Approved exceptions are logged in the centralized Exception Register with: approval date, authority, expiry, compensating controls, and monitoring requirements.

All exceptions are reported in the monthly CISO dashboard. Exceptions involving personal data are also reported to the DPO's quarterly compliance report.

Expired exceptions not renewed are automatically treated as policy violations and subject to enforcement action.

| ABSOLUTE RESTRICTION:  No exception may be granted that permits: (a) unencrypted storage of TOP SECRET data on portable or removable media; (b) transmission of TOP SECRET data in cleartext over any network; (c) retention of personal data beyond the NPC-mandated period; (d) sharing of personal data with third parties without a valid DPA. These restrictions are non-negotiable. |

| --- |

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be formally reviewed annually or upon any of the following events:

New or amended NPC issuances, BSP circulars, or other applicable regulatory guidance affecting data protection obligations;

Material changes to BFS data processing activities, including new product launches, new systems, or new third-party data processor relationships;

Significant data security incidents or DPA notification events;

Publication of updated versions of CIS Controls, ISO/IEC 27001, or PCI DSS;

Material findings from an Internal Audit, external audit, regulatory examination, or independent assessment of the ISMS.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. New policy document aligned with CIS Controls v8 Control 3 and ISO/IEC 27001:2022. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below provides the full cross-reference mapping between CIS Controls v8, Control 3 safeguards and the corresponding ISO/IEC 27001:2022 Annex A controls, supporting dual-framework audit readiness.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 3.1 | Establish and Maintain a Data Management Process | A.5.9 | Inventory of information and other associated assets | IG1 |

| 3.2 | Establish and Maintain a Data Inventory | A.5.9 | Inventory of information and other associated assets | IG1 |

| 3.3 | Configure Data Access Control Lists | A.8.3 | Information access restriction | IG1 |

| 3.4 | Enforce Data Retention | A.5.33 | Protection of records | IG1 |

| 3.5 | Securely Dispose of Data | A.8.10 | Information deletion | IG1 |

| 3.6 | Encrypt Data on End-User Devices | A.8.5 | Secure authentication | IG1 |

| 3.7 | Establish and Maintain a Data Classification Scheme | A.5.12 | Classification of information | IG1 |

| 3.8 | Document Data Flows | A.5.14 | Information transfer | IG2 |

| 3.9 | Encrypt Data on Removable Media | A.7.10 | Storage media | IG2 |

| 3.10 | Encrypt Sensitive Data in Transit | A.8.24 | Use of cryptography | IG2 |

| 3.11 | Encrypt Sensitive Data at Rest | A.8.24 | Use of cryptography | IG2 |

| 3.12 | Segment Data Processing and Storage Based on Sensitivity | A.8.22 | Segregation in networks | IG2 |

| 3.13 | Deploy a Data Loss Prevention Solution | A.8.12 | Data leakage prevention | IG2 |

| 3.14 | Log Sensitive Data Access | A.8.15 | Logging | IG3 |

| N/A | Information labeling | A.5.13 | Labelling of information | All |

| N/A | Privacy and PII protection (RA 10173) | A.5.34 | Privacy and protection of PII | All |

| N/A | Data masking in non-production environments | A.8.11 | Data masking | IG2 |

| N/A | Cryptographic key management | A.8.24 | Use of cryptography | All |

| N/A | Secure transfer of information to external parties | A.5.14 | Information transfer | All |

| N/A | Records management and legal hold | A.5.33 | Protection of records | All |

| N/A | Physical media sanitization and destruction | A.7.14 | Secure disposal or re-use of equipment | All |

| N/A | Confidentiality / NDA agreements with third parties | A.6.6 | Confidentiality or non-disclosure agreements | All |

| N/A | Intellectual property rights – data licensing | A.5.32 | Intellectual property rights | All |

| N/A | Capacity management for data storage | A.8.6 | Capacity management | All |

| N/A | ICT supply chain – data processor due diligence | A.5.21 | Managing information security in the ICT supply chain | All |

| N/A | Audit logging and monitoring of data access events | A.8.16 | Monitoring activities | All |

| N/A | Data backup and recovery integrity | A.8.13 | Information backup | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate security maturity; IG3 = Advanced / highest security maturity. BFS targets full IG2 compliance with IG3 controls applied to TOP SECRET and CONFIDENTIAL environments, PCI-scoped systems, and personal data processing systems.

# APPENDIX B:  Data Retention Schedule Reference

The following table provides a reference guide for standard data retention periods applicable to BFS. Legal and Compliance shall maintain the authoritative, detailed Data Retention Schedule. This table is indicative and does not supersede the authoritative schedule or applicable law.

| Data Category | Min. Retention | Max. Retention | Regulatory Basis | Disposal Method |

| --- | --- | --- | --- | --- |

| Customer account records (general) | 5 years post-closure | 10 years | BSP MORB, RA 8791 | Crypto-erase + cert |

| Customer transaction records | 5 years | 10 years | BSP MORB, AMLA | Crypto-erase + cert |

| Loan and credit records | 10 years post-settlement | 15 years | BSP, RA 8791 | Crypto-erase + cert |

| KYC / AML records | 5 years post-relationship | 10 years | AMLA, BSP Circular 706 | Crypto-erase + cert |

| Employee personnel records | Duration + 5 years | Duration + 10 years | PH Labor Code | Secure shred + erase |

| Payroll and financial records | 10 years | 10 years | PH Tax Code, RA 8424 | Crypto-erase + cert |

| Security audit logs (SIEM / system) | 12 months online | 3 years archive | BSP Circular 1140 | WORM, then crypto-erase |

| Email correspondence (business-relevant) | 3 years | 5 years | Business / legal need | Secure deletion |

| CCTV / physical security recordings | 30 days | 90 days | NPC guidelines | Secure overwrite |

| Incident response records | 5 years | 7 years | BSP, ISO 27001 ISMS | Secure deletion |

| PCI cardholder data (SAD — post-auth) | Do not retain | Do not retain | PCI DSS v4.0 Req 3 | Immediate destruction |

| PCI cardholder data (PAN — if stored) | Business need only | Duration of need | PCI DSS v4.0 Req 3 | Crypto-erase / tokenize |

| Legal hold data | Duration of hold | Hold + 30 days | Legal directive | Per Legal instruction |

| Board and governance records | Permanent | Permanent | RA 8799, SEC rules | Archival; not disposed |

| LEGAL NOTE:  The retention periods shown are indicative minimums. Legal and Compliance must confirm current obligations based on the latest applicable Philippine laws, BSP issuances, and NPC guidelines. Legal holds override all scheduled disposal actions. |

| --- |

# APPENDIX C:  Quick Reference Card

## C.1  Data Classification Quick Guide

| If data contains… | Classify as… | Email handling | Share externally? |

| --- | --- | --- | --- |

| Customer PII, SPI, account numbers, health data | CONFIDENTIAL (min) | Encrypted email only; no personal accounts | Only with NDA + DPA; CISO+DPO approval |

| Cryptographic keys, system credentials, M&A plans | TOP SECRET | Prohibited via email | Prohibited |

| Internal policies, project plans, staff lists (non-sensitive) | INTERNAL USE | BFS email system; not personal email | Management approval required |

| Press releases, public product info, regulatory public filings | PUBLIC | Any channel | Freely; after approval to publish |

## C.2  Key Contacts

| Function | Role | Contact |

| --- | --- | --- |

| Data classification queries | Data Steward / IT Asset Management | ITSM Portal or it-assets@bfs.com.ph |

| DLP alert / suspected data leakage | Security Operations Center (SOC) | soc@bfs.com.ph \| 24/7 hotline |

| Data privacy / PII concerns | Data Privacy Officer | dpo@bfs.com.ph |

| Retention / legal hold queries | Legal and Compliance | legal@bfs.com.ph |

| Data breach reporting | CISO Office + DPO | ciso@bfs.com.ph \| Emergency hotline |

| Encryption / key management | IT Security Team | security@bfs.com.ph |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

| PCI DSS queries | IT Compliance / PCI PM | compliance@bfs.com.ph |

## C.3  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| NPC breach notification (personal data breach likely causing serious harm) | Within 72 hours of discovery |

| BSP incident notification (significant data breach) | Per applicable BSP circular timeline |

| DLP HIGH/CRITICAL alert investigation | Within 4 hours |

| Data breach containment | Within 4 hours |

| Initial breach assessment (scope, affected data, systems) | Within 2 hours |

| Data Inventory update after new processing activity | Within 10 business days |

| Access rights review — CONFIDENTIAL/TOP SECRET data | Every 6 months |

| PIA completion for new personal data processing | Before system go-live |

| Data retention disposal after expiry | Within 30 days of expiry confirmation |

| Certificate of disposal filing | Within 5 business days of disposal |

| Cryptographic key rotation — TOP SECRET data | Annual |

| Cryptographic key rotation — CONFIDENTIAL data | Every 2 years (or on compromise) |

| Data classification review | Annual (Q1 with Data Inventory review) |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-003  |  Data Protection Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. This document is classified CONFIDENTIAL and intended for authorized internal use only.
