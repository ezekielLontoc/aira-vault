---
title: "BFS-ISP-011-Data-Recovery-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Business-Continuity-and-Resilience/BFS-ISP-011-Data-Recovery-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:38Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Business-Continuity-and-Resilience"
aliases:
  - "BFS-ISP-011-Data-Recovery-Policy"
creator: "Un-named"
created: "2026-04-12T01:02:00Z"
modified: "2026-04-23T06:13:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>DATA RECOVERY<br>POLICY<br>Backup Architecture, Immutability, RTO/RPO Governance, and Recovery Testing<br>Policy Reference: BFS-ISP-011<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 11)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140  \|  PCI DSS v4.0<br>Companion to BFS-ISP-001 \| BFS-ISP-003 \| BFS-ISP-004 \| BFS-ISP-008 \| BFS-ISP-010 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Data Recovery Policy |

| --- | --- |

| Policy Reference | BFS-ISP-011 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to infrastructure, recovery objectives, or regulatory requirements |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-003 (Data Protection); BFS-ISP-004 (Secure Configuration); BFS-ISP-008 (Audit Log Management); BFS-ISP-010 (Malware Defenses); BFS-ISP-011-BCP (Business Continuity Policy); BFS-ISP-011-DRP (Disaster Recovery Plan) |

| Framework Alignment | CIS Controls v8 (Control 11); ISO/IEC 27001:2022 (A.8.13, A.8.14, A.5.29, A.5.30) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); BSP Circular 808 (Business Continuity Guidelines); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirement 12.3); NIST SP 800-34 (Contingency Planning Guide); ISO 22301 (Business Continuity Management) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Data Privacy Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the mandatory requirements, governance framework, and operational standards for the backup, protection, and recovery of all critical data and systems within BFS Financial Services (hereinafter "the Organization" or "BFS"), ensuring the Organization can reliably restore operations following any data loss event — whether caused by ransomware, hardware failure, human error, software corruption, natural disaster, or malicious destruction.

Data recovery is not merely a technical discipline — it is a fundamental operational resilience capability upon which BFS's ability to serve customers, process payments, and maintain regulatory compliance directly depends. For a financial institution, the inability to recover transaction records, customer account data, or core banking system state can constitute a regulatory breach, trigger supervisory intervention, and cause irreparable customer harm. Backup systems that have not been tested, backups that have been compromised by ransomware, and recovery procedures that exist only on paper are indistinguishable from having no backup at all.

This policy directly implements CIS Controls v8, Control 11 (Data Recovery), encompassing all safeguards from 11.1 through 11.5. It is anchored in ISO/IEC 27001:2022 Annex A controls governing information backup, redundancy, information security in business continuity, and ICT readiness for business continuity.

The specific objectives of this policy are to:

Define and enforce backup coverage requirements ensuring that all critical data and system state is captured in regularly scheduled, verified backups;

Establish a ransomware-resilient backup architecture incorporating immutable storage, air-gap separation, and the 3-2-1-1-0 backup rule to guarantee recovery capability even when primary environments are fully compromised;

Define Recovery Time Objectives (RTO) and Recovery Point Objectives (RPO) for all critical systems, aligned with business continuity requirements and regulatory obligations;

Mandate regular, documented recovery testing that validates actual restorability — not merely the existence of backup files — including full system recovery tests, database restoration tests, and ransomware scenario tabletop and operational exercises;

Ensure that backup data is protected with the same security rigor as primary data — including encryption at rest and in transit, access controls, integrity verification, and retention aligned with BFS-ISP-003 and BSP regulatory requirements;

Govern the secure handling, transmission, storage, and disposal of backup media and cloud backup repositories;

Integrate data recovery capabilities with the BFS Business Continuity Plan (BCP) and Disaster Recovery Plan (DRP) to ensure end-to-end resilience;

Ensure compliance with BSP Circular 1140, BSP Circular 808 (Business Continuity), PCI DSS v4.0, and all applicable regulatory data recovery and business continuity obligations.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all BFS personnel, teams, and third parties involved in the management of data, systems, or backup infrastructure, including:

IT Operations, Database Administration, and Infrastructure teams responsible for configuring and operating backup systems;

Application development and DevSecOps teams responsible for ensuring application data is included in backup coverage;

Cloud infrastructure teams managing backup of cloud-hosted workloads;

Third-party managed service providers operating backup or DR infrastructure on behalf of BFS;

System and Data Owners who are accountable for defining the recovery requirements for their systems and data.

## 2.2  Data and System Scope

This policy mandates backup coverage for all data and systems classified as supporting CRITICAL or CONFIDENTIAL business functions, including:

### 2.2.1  Core Business Systems

Core banking platform — all transactional databases, account records, ledger state, and configuration;

Internet banking and mobile banking platforms — customer session data, transaction history, and application configuration;

ATM management and card management systems — terminal configuration, card records, transaction logs;

Payment processing systems — transaction queues, settlement records, reconciliation data;

SWIFT and interbank connectivity infrastructure — message queues, certificates, routing configuration.

### 2.2.2  Supporting Enterprise Systems

Identity and Access Management (IAM) / Active Directory — user accounts, group policies, certificates, and identity data;

Enterprise email platform — mailboxes, calendar data, and distribution lists;

HR and payroll systems — employee records, payroll data, and benefits information;

ERP and financial systems — general ledger, accounts payable/receivable, financial reports;

Security systems — SIEM data, EDR configuration, PAM vault contents, vulnerability data;

Enterprise applications — CRM, document management, workflow systems.

### 2.2.3  Infrastructure and Configuration Data

Virtual machine images and hypervisor configurations;

Network device configurations — firewalls, routers, switches, VPN gateways;

Cloud infrastructure state — IaC templates, cloud configuration snapshots, IAM policies;

Cryptographic keys and certificate repositories (backed up in segregated, highly controlled storage);

Operating system images, application packages, and deployment artifacts.

### 2.2.4  Compliance and Audit Data

Audit logs, SIEM records, and security event data (retention per BFS-ISP-008);

Regulatory reports, compliance documentation, and examination records;

Legal records, contracts, and board-level governance documents.

## 2.3  Environmental Scope

This policy applies to all BFS environments — production, pre-production, development, and DR — and all hosting models: on-premise, co-location, public cloud (AWS), private cloud, and hybrid. Non-production environments shall maintain backup coverage proportionate to the risk and cost of data loss in those environments, with particular attention to environments containing real or partially real data.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Recovery Time Objective (RTO) | The maximum tolerable length of time that a system, application, or business process can be offline or unavailable before the impact becomes unacceptable to the business. RTO is a business-defined requirement that backup and recovery systems must be designed to meet. |

| Recovery Point Objective (RPO) | The maximum tolerable amount of data loss, expressed as a time period, that BFS can accept following a failure or disaster. An RPO of 4 hours means that no more than 4 hours of transactions or data changes can be lost in a recovery scenario. RPO directly drives backup frequency requirements. |

| Backup | A copy of data taken at a specific point in time and stored separately from the source data, used to restore the data in the event of loss, corruption, or destruction. |

| Full Backup | A complete copy of all data in the defined backup scope at a specific point in time. Full backups are the most comprehensive but require the most storage and longest backup window. |

| Incremental Backup | A backup that captures only the data that has changed since the last backup (full or incremental). Incremental backups are faster and use less storage but require more restore steps (full + all incrementals since). |

| Differential Backup | A backup that captures all data changed since the last full backup. Restores require only the last full backup and the most recent differential. |

| Snapshot | A point-in-time, near-instantaneous capture of the state of a volume, database, virtual machine, or cloud resource, typically using copy-on-write or redirect-on-write mechanisms. Snapshots are fast but may share storage with the source and are vulnerable to ransomware if not protected by separate immutability controls. |

| Immutable Backup | A backup stored in a manner that cannot be modified, deleted, or encrypted by any process — including by an administrator or ransomware — during the defined immutability (retention lock) period. Immutability is enforced at the storage layer through WORM, object lock, or hardware-based controls. |

| Air Gap | A physical or logical separation between backup storage and the production environment that prevents network-accessible compromise of backup data. A true air gap means the backup storage has no live network connection to production systems. Logical air gaps (immutable cloud storage with separate credentials) provide a significant but not equivalent level of protection. |

| 3-2-1-1-0 Rule | An enhanced backup best practice: maintain at least 3 copies of data; on at least 2 different storage media types; with at least 1 copy off-site; with at least 1 copy offline or air-gapped / immutable; and 0 unverified backups — all backups must be tested and verified. |

| Backup Encryption | The encryption of backup data to protect it from unauthorized access during storage and transit. Backup encryption keys must be managed separately from the backed-up data. |

| Backup Integrity Verification | The process of confirming that a backup is complete, uncorrupted, and restoreable — not merely that backup jobs completed without error codes. Verification requires actual restore testing. |

| Disaster Recovery (DR) | The process, policies, and procedures for recovering IT systems and infrastructure following a major disruption to primary operations. DR is a subset of business continuity. |

| DR Site | A secondary facility or cloud region where BFS can restore and operate its critical systems in the event that the primary data center or production environment is unavailable. May be warm (partially pre-provisioned) or hot (fully running replica). |

| Backup Rotation | The scheduled cycling of backup media or backup storage tiers, ensuring that multiple recovery points are available across a defined retention window (daily, weekly, monthly, annual restore points). |

| Grandfather-Father-Son (GFS) | A backup rotation strategy maintaining daily (son), weekly (father), and monthly (grandfather) backups, providing a tiered set of restore points with increasing granularity for recent data and decreasing granularity for older data. |

| Tape | Magnetic tape storage used for long-term backup archival. Tape provides excellent data density, cost efficiency, and an inherent air gap (tapes are physically disconnected from all networks), making it highly resistant to ransomware. |

| Object Lock / S3 Object Lock | An AWS S3 feature that enforces WORM-compliant immutability on stored objects for a defined retention period. Objects under Object Lock cannot be deleted or overwritten — even by the bucket owner or root account — during the lock period. |

| Recovery Testing | The process of actually restoring data or systems from backup to verify that the backup is complete, accurate, and recoverable within the defined RTO. A backup that has not been successfully tested cannot be relied upon for recovery. |

| Backup Catalog | A database or index maintained by the backup software recording: what data is backed up, when each backup was taken, where each backup is stored, and the status of each backup job. The catalog is itself a critical asset that must be backed up independently. |

| Business Continuity Plan (BCP) | A documented plan defining how BFS will continue critical business operations during and after a disruptive event, including the people, processes, and technologies required to maintain minimum acceptable service levels. |

| Maximum Tolerable Downtime (MTD) | The longest period during which a critical business function can be unavailable before the resulting harm to BFS (financial, regulatory, reputational) becomes catastrophic and potentially non-recoverable. |

| Data Sovereignty | The principle that data is subject to the laws and governance of the country in which it is stored. Offshore backup storage may subject BFS customer data to foreign legal jurisdiction, which must be assessed for compliance with RA 10173 and BSP data residency requirements. |

# 4.  RECOVERY OBJECTIVES FRAMEWORK

Recovery Time Objectives (RTO) and Recovery Point Objectives (RPO) define the envelope within which BFS's backup and recovery capabilities must operate. These objectives are business requirements derived from operational impact assessments, regulatory obligations, and customer commitments. The backup and recovery infrastructure must be designed, tested, and continuously verified to meet these objectives.

## 4.1  System Tier Classification and Recovery Objectives

| Tier | System Category | RTO | RPO | Backup Frequency | Recovery Approach |

| --- | --- | --- | --- | --- | --- |

| TIER 1 CRITICAL | Core banking platform; ATM / card management; payment processing; SWIFT; internet banking; authentication / IdP. | ≤ 4 hours | ≤ 15 minutes | Continuous (log shipping / replication) + hourly snapshot + daily full | Hot standby / synchronous replication to DR site; automated failover capability. |

| TIER 2 HIGH | Enterprise email; IAM / Active Directory; security systems (SIEM, EDR, PAM); ERP; HR/payroll; API gateways. | ≤ 8 hours | ≤ 1 hour | Hourly incremental + daily full | Warm DR site; semi-automated failover; restore from backup within RTO. |

| TIER 3 MEDIUM | CRM; document management; analytics platforms; collaboration tools; development platforms; non-critical internal applications. | ≤ 24 hours | ≤ 4 hours | Every 4 hours incremental + daily full | Restore from backup; cold standby or cloud burst recovery. |

| TIER 4 LOW | Non-critical departmental systems; reference data; historical archives; training environments. | ≤ 72 hours | ≤ 24 hours | Daily full | Restore from backup; no hot/warm standby required. |

| REGULATORY NOTE:  BSP Circular 808 (Amended Guidelines on Business Continuity Management) requires BSP-supervised institutions to establish and test recovery time objectives for critical banking systems. Core banking system RTOs must be documented and validated annually. Recovery objectives for ATM networks and payment systems must align with BSP's systemic resilience expectations and any applicable service level commitments under BSP regulations. |

| --- |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, systems, and environments within scope of this policy.

## 5.1  Backup Coverage Requirements

PS-1.1  All data and systems within the scope defined in Section 2.2 shall have a documented, approved backup configuration that captures the data at the required frequency, retains backups for the required period, and is capable of restoring the system or data within the defined RTO.

PS-1.2  Backup coverage shall be tracked continuously. Any in-scope system without a current, successful backup within its defined backup frequency window shall be flagged as a coverage gap, investigated within twenty-four (24) hours, and escalated to the IT Operations Manager if the gap exceeds forty-eight (48) hours without resolution.

PS-1.3  Backup jobs shall be monitored for completion status. Failed backup jobs shall generate automated alerts within one (1) hour of job failure. Backup job failures for TIER 1 CRITICAL systems shall escalate to the CISO and CIO if not resolved within four (4) hours of initial failure notification.

PS-1.4  The backup configuration — including backup scope, schedule, retention, encryption, and target storage — for all in-scope systems shall be documented in the BFS Backup Configuration Register, maintained by IT Operations, and reviewed at least annually.

PS-1.5  Database backups shall capture not only data files but also transaction logs, redo logs, configuration files, stored procedures, triggers, and all other objects required to restore a fully functional database state. Partial database backups that require manual reconstruction are insufficient for TIER 1 and TIER 2 systems.

## 5.2  Backup Architecture — 3-2-1-1-0 Requirement

PS-2.1  BFS shall implement backup architectures for all TIER 1 and TIER 2 systems that conform to the 3-2-1-1-0 backup rule:

3 copies: primary data plus at least two independent backup copies;

2 different media types: e.g., on-premise backup storage (disk) plus cloud or tape storage;

1 off-site copy: at least one backup copy stored at a geographically separate location from the primary data;

1 immutable / air-gapped copy: at least one backup copy protected by immutability controls (WORM, S3 Object Lock, or offline tape) that cannot be modified, deleted, or encrypted by ransomware or administrative access during the retention period;

0 unverified backups: all backup copies must be periodically verified through actual restoration testing.

PS-2.2  TIER 1 CRITICAL systems shall maintain a geographically separated DR replica using synchronous or near-synchronous replication (RPO ≤ 15 minutes) to the BFS DR site or equivalent cloud region. The DR replica shall be logically isolated from the production environment and cannot be directly accessed from production systems without explicit operational approval.

PS-2.3  For cloud-hosted workloads on AWS, BFS shall use a combination of: AWS automated backups (RDS automated backup, EBS snapshots), S3 Replication to a second AWS region (cross-region replication), and S3 Object Lock with Governance or Compliance mode for the immutable copy. Cloud backup costs shall be included in system cost-benefit analysis and shall not be reduced at the expense of compliance with the 3-2-1-1-0 requirement.

PS-2.4  Offline tape backup (or equivalent air-gapped media) shall be maintained for TIER 1 CRITICAL systems as the ultimate ransomware-resilient recovery option. Tapes shall be ejected and physically stored off-site or in a separate, secure vault after each backup cycle. Tapes remaining connected or accessible to production networks cannot serve as the air-gapped copy.

## 5.3  Immutable and Air-Gapped Backup Controls

PS-3.1  At least one copy of all TIER 1 and TIER 2 system backups shall be stored using immutable storage technology that prevents modification or deletion during a defined retention lock period. Immutability shall be enforced at the storage layer — not merely through access control policies — to withstand compromise of storage administrator credentials.

PS-3.2  S3 Object Lock (or equivalent) shall be configured in Compliance mode (not Governance mode) for the immutable copy of TIER 1 CRITICAL backups. Compliance mode prevents deletion even by the AWS root account during the lock period, providing the strongest available immutability guarantee. The lock period shall meet or exceed the minimum retention requirements defined in Section 5.5.

PS-3.3  The credentials and access keys used for backup operations shall be strictly segregated from those used for production operations. Ransomware or an attacker who has fully compromised the production environment and all production credentials shall not, by that fact alone, be able to access, modify, or delete immutable backup storage. Backup storage access shall use dedicated accounts not present in the production Active Directory or cloud IAM.

PS-3.4  Offline tape media shall be stored in a fire-resistant, climate-controlled, access-controlled vault physically separated from the primary data center. Access to the tape vault shall require dual-person authorization, with all access events logged.

PS-3.5  The immutable backup system shall be treated as a CRITICAL security asset. Any attempt to modify immutability configuration, reduce lock periods, or access the backup storage with production credentials shall generate an immediate SIEM alert classified as CRITICAL and be investigated as a potential ransomware preparation event.

## 5.4  Backup Encryption and Security

PS-4.1  All backup data — including snapshots, database backups, file system backups, and tape backups — shall be encrypted at rest using a minimum of AES-256. Backup encryption keys shall be stored separately from the backup data and managed through the BFS Key Management infrastructure (BFS-ISP-003).

PS-4.2  All backup data transmitted over networks — from source systems to backup targets, between backup tiers, or to DR sites — shall be encrypted in transit using TLS 1.2 minimum. Unencrypted backup data transfer is prohibited over any network, including private WAN links.

PS-4.3  Backup encryption keys shall be backed up independently of the data they protect, using a separate key escrow process. The inability to recover encryption keys will render backups irrecoverable. Encryption key backup and escrow procedures shall be tested annually.

PS-4.4  Access to backup systems, backup management consoles, and backup storage shall be restricted to named, authorized IT Operations and IT Security personnel with documented business justification. Backup system access shall be managed through the IAM framework (BFS-ISP-005) and shall require MFA.

PS-4.5  Backup management console administrator actions shall be logged and forwarded to the SIEM. Any backup deletion, retention modification, or immutability configuration change shall generate an immediate SIEM alert for SOC review.

## 5.5  Backup Retention

PS-5.1  Backup data shall be retained for the periods defined in the BFS Backup Retention Schedule (Appendix B), which reflects a combination of: regulatory requirements (BSP minimum retention), legal obligations, operational recovery needs (number of restore points required), and the RTO/RPO framework.

PS-5.2  The following minimum retention periods are mandatory:

Core banking and transaction data backups: daily backups retained for 90 days; weekly backups for 12 months; monthly backups for 7 years (aligned with BSP and RA 8791 requirements);

ATM and card management backups: same as core banking;

Authentication and IAM data: daily for 30 days; weekly for 6 months; monthly for 2 years;

Email and collaboration platform: daily for 30 days; weekly for 6 months; monthly for 5 years (litigation and regulatory hold capability required);

System configuration and infrastructure backups: last 10 successful full backups plus daily incrementals for 30 days;

Security system data (SIEM, EDR, PAM): per BFS-ISP-008 log retention schedule.

PS-5.3  Legal hold orders shall suspend automated backup disposal for affected data. The IT Operations team shall maintain a backup legal hold register, updated promptly upon receipt of legal hold instructions from the Legal and Compliance function. Backup data under legal hold shall not be deleted until the hold is formally lifted.

PS-5.4  Backup retention periods shall not be shortened without CISO and Legal approval confirming no regulatory or legal obligation requires continued retention. Unauthorized shortening of backup retention is a policy violation subject to enforcement.

## 5.6  Recovery Testing Requirements

PS-6.1  Backup and recovery capabilities shall be tested through regular, documented recovery tests that demonstrate actual restorability within the defined RTO and RPO. A backup that has not been successfully tested cannot be relied upon for operational recovery. The completion of backup jobs without error is not, by itself, evidence of recoverability.

PS-6.2  Recovery tests shall be conducted at the following minimum frequencies:

TIER 1 CRITICAL systems: full system recovery test at least quarterly; database restore test monthly; DR failover test at least annually;

TIER 2 HIGH systems: recovery test at least semi-annually; key application recovery test quarterly;

TIER 3 MEDIUM and TIER 4 LOW systems: recovery test at least annually.

PS-6.3  Annual DR failover tests for TIER 1 CRITICAL systems shall simulate a full site failure scenario, demonstrating that core banking operations can be resumed from the DR site within the defined RTO, with data loss no greater than the defined RPO. DR failover tests shall be conducted with management awareness and documented CISO sign-off on the test plan and results.

PS-6.4  At least annually, BFS shall conduct a ransomware recovery exercise simulating a scenario in which the entire production environment has been encrypted by ransomware. The exercise shall validate: (a) the air-gapped / immutable backup is accessible and unaffected; (b) recovery procedures are current and understood by operations personnel; (c) the recovery can be completed within the TIER 1 RTO of four (4) hours for critical systems; and (d) production credentials and backup credentials are verified to be segregated.

PS-6.5  All recovery tests shall be formally documented, including: test date, system(s) tested, test scenario, recovery point used, actual recovery time achieved, actual data loss (vs. RPO), test outcome (pass/fail), and remediation actions if the test failed or exceeded RTO/RPO. Documentation shall be retained for three (3) years as audit evidence.

PS-6.6  Recovery test failures — where a backup cannot be restored, restoration exceeds the RTO, or data loss exceeds the RPO — shall be treated as priority operational risks. The CIO and CISO shall be notified within twenty-four (24) hours of any recovery test failure. A remediation plan shall be developed and approved within five (5) business days, with remediation completed before the next production deployment on the affected system.

## 5.7  Backup Scope Validation and Configuration Governance

PS-7.1  Backup scope shall be validated at least quarterly to confirm that all new systems, databases, and data stores deployed since the last review are included in backup coverage. System owners are responsible for ensuring that their systems are added to the Backup Configuration Register at the time of deployment.

PS-7.2  When new databases, volumes, or data stores are provisioned in production environments, a backup configuration shall be created and tested before the system enters production service. No TIER 1 or TIER 2 system shall operate in production without active, verified backup coverage.

PS-7.3  Changes to backup configuration — including changes to backup scope, schedule, encryption, retention, or target storage — shall be processed through the BFS Change Management process and reviewed by IT Security before implementation. Unauthorized changes to backup configuration shall be treated as a security incident.

## 5.8  Backup Data Privacy and Compliance

PS-8.1  Backup data containing personal data or Sensitive Personal Information (SPI) as defined under RA 10173 shall be subject to the same data classification and protection requirements as the primary data — CONFIDENTIAL classification minimum. Access to backup data containing personal data requires the same authorization as access to the live data.

PS-8.2  Backup data containing personal data shall not be stored outside the Philippines without DPO assessment confirming compliance with RA 10173 cross-border transfer requirements and BSP data residency guidelines. Cloud backup replication across regions shall be assessed for data sovereignty implications.

PS-8.3  When backup data reaches its retention expiry, it shall be securely and irreversibly disposed of using cryptographic erasure (for cloud storage) or certified physical destruction (for tape media). Backup disposal shall be logged and records retained per BFS-ISP-003.

PS-8.4  Backup data shall not be used for development, testing, analytics, or any purpose other than operational recovery without: (a) DPO approval confirming the personal data handling basis, (b) mandatory anonymization or masking of personal data fields, and (c) CISO approval of the access and handling controls.

# 6.  PROCEDURES

## 6.1  Backup Job Failure Response Procedure

The following procedure governs the response to backup job failures:

Detection: Backup monitoring system detects a failed backup job and generates an automated alert in the ITSM and SIEM within one (1) hour of failure.

Initial Triage: IT Operations reviews the backup job failure log to determine root cause — common causes include: network connectivity failure, storage capacity exceeded, agent offline on source system, credential expiry, backup software error, or source system unavailability.

Immediate Retry: IT Operations initiates a manual backup retry for the failed job. If the retry succeeds within four (4) hours, the incident is logged and closed.

Escalation (if not resolved within 4 hours for TIER 1): CISO and CIO are notified for any TIER 1 CRITICAL backup failure unresolved within four (4) hours. IT Operations implements a manual backup procedure (alternative backup method or emergency snapshot) to reduce data exposure.

Root Cause Remediation: The root cause of the failure is resolved. Corrective actions are documented in the ITSM incident record.

Make-Up Backup: Once the failure cause is resolved, a full backup is run immediately to ensure a current recovery point exists.

RTO/RPO Impact Assessment: IT Operations calculates the actual maximum data loss (vs. RPO) resulting from the gap. If the gap exceeds the RPO for the affected system tier, the incident is escalated as a recovery risk event.

## 6.2  Recovery Test Execution Procedure

All recovery tests shall follow this procedure to ensure consistent, auditable results:

Test Planning: IT Operations, in consultation with the System Owner, defines the test scope — system to be recovered, recovery point (backup date/time), target recovery environment (isolated test environment, not production), and acceptance criteria (RTO/RPO pass thresholds).

CISO Review: The test plan is reviewed and approved by the CISO or IT Security Manager before execution. For DR failover tests, the CIO co-approves.

Environment Preparation: An isolated test environment is prepared. For DR tests, the DR site is pre-staged. Production operations must not be affected by the recovery test.

Backup Integrity Pre-Check: Before attempting restoration, the backup catalog is consulted to confirm the target backup is recorded as complete. File integrity checksums are verified (per BFS-ISP-008 log integrity procedure, applied to backup files).

Recovery Execution: The recovery procedure is executed from the backup. The time taken for each recovery phase is recorded. Recovery team members perform the restoration exactly as they would in a real incident — no shortcuts, no assistance from documentation not available in an actual emergency.

Validation: After restoration, the recovered system or data is validated for completeness and accuracy: database record counts are compared, application functional tests are run, and the recovered data is compared to the expected state at the recovery point.

RTO/RPO Measurement: Actual recovery time (vs. RTO) and actual data loss (vs. RPO) are calculated and recorded.

Test Documentation: A Recovery Test Report is completed recording all test details, results, and findings. The report is approved by the System Owner and IT Security and retained as audit evidence.

Remediation (if failed): Any test failure or RTO/RPO breach triggers a remediation plan. The remediation is tracked to closure before the next scheduled production change on the affected system.

## 6.3  Ransomware Recovery Exercise Procedure

The annual ransomware recovery exercise shall simulate a complete production environment compromise. The following scenario-based procedure shall be executed:

Scenario Brief: CISO presents the scenario — all production systems encrypted, all production credentials compromised, production backup storage also encrypted (simulated). The exercise objective: recover TIER 1 CRITICAL systems from the air-gapped / immutable backup within the 4-hour RTO.

Credential Isolation Verification: IT Operations confirms that the backup access credentials are segregated from production — stored in an offline vault, a different credential store, or a physically isolated system. The exercise validates that production credential compromise does not extend to backup access.

Immutable Backup Access: IT Operations retrieves the air-gapped / immutable backup using the isolated credentials. The backup integrity is verified. The exercise validates the backup is accessible, intact, and not encrypted by the simulated ransomware.

Recovery Environment Build: A clean recovery environment is provisioned (simulating building on new hardware or a clean cloud environment with no production network connectivity).

Core System Recovery (Timed): Core banking system (or a designated critical system representative) is restored from the immutable backup. Time is tracked from 'scenario start' to 'system operational.'

RTO Assessment: Elapsed time is compared to the 4-hour TIER 1 RTO. If recovery exceeds the RTO, the exercise is marked as FAILED and a capacity/procedure improvement plan is immediately initiated.

Lessons Learned: Exercise findings — process gaps, documentation deficiencies, tooling gaps, personnel skill gaps — are documented and assigned remediation owners with target completion dates.

Executive Briefing: CISO presents exercise results and remediation plan to CIO and Risk Officer within five (5) business days.

## 6.4  System Restoration After Malware or Disaster Incident

When a system must be restored as part of an actual incident response:

Incident Determination: IT Security confirms the nature of the incident (ransomware, hardware failure, data corruption, etc.) and identifies which systems and recovery points are required.

Clean Recovery Point Selection: IT Operations and IT Security jointly confirm the recovery point to be used. For ransomware, the selected recovery point must pre-date the malware's earliest known presence in the environment (based on EDR and SIEM forensics). Using a compromised recovery point will restore malware into the recovered environment.

Immutable Backup Verification: For ransomware scenarios, the air-gapped or immutable backup copy is used exclusively. The integrity of the selected backup is verified before restoration begins.

Clean Environment Provisioning: The target recovery environment (hardware, VM, or cloud instance) is provisioned fresh — not repurposed from the compromised environment. Network connectivity to the compromised environment is blocked.

Parallel Security Hardening: While restoration proceeds, IT Security and IT Operations implement all current security patches and hardening configurations on the recovery environment before connecting it to production networks.

Data Restore and Validation: Data is restored from the verified backup. Validation tests confirm data completeness and integrity.

Security Clearance: IT Security reviews the restored environment, confirms no malware artifacts are present (EDR full scan), and issues security clearance before the system is reconnected to production networks.

Post-Recovery Monitoring: Restored systems are placed under enhanced SOC monitoring for a minimum of 72 hours post-restoration to detect any reinfection or residual threat activity.

# 7.  GUIDELINES

## 7.1  Backup Architecture Design Guidelines

Separation of Concerns: Backup infrastructure credentials, network access, and management consoles shall be architecturally separated from production systems. The backup system should be able to 'pull' data from production rather than production 'pushing' data to backups — this prevents a compromised production system from corrupting backup data.

Backup Storage Segmentation: Backup storage shall reside on a dedicated backup VLAN with no inbound connectivity from production servers or user networks. Production systems can only send data to backup agents; they cannot browse, modify, or delete backup storage.

Backup Catalog Protection: The backup catalog (index of all backups and their locations) is a critical recovery asset. The catalog shall be backed up to a separate, immutable location independent of the main backup repository. A catalog loss without an independent backup may render all backups non-restorable.

Synthetic Full Backups: To reduce backup window duration and network impact, synthetic full backups (constructed by the backup software from previous incrementals) shall be used where supported by the backup platform. Synthetic fulls provide full backup capability without the full backup performance impact.

Deduplication and Compression: Storage deduplication and compression shall be enabled on backup storage where supported, reducing storage consumption. Deduplication shall not compromise backup integrity or recovery capability.

## 7.2  Cloud Backup Architecture Guidelines

Cross-Region Replication: All S3-based backup storage shall replicate to a secondary AWS region using S3 Cross-Region Replication (CRR) with Object Lock propagation. The secondary region shall be in a different AWS availability zone geography from the primary, ensuring regional disaster resilience.

Vault Lock (AWS Backup): AWS Backup Vault Lock shall be used to apply WORM policies to backup vaults, preventing deletion of recovery points even by the backup administrator. Vault Lock policies shall be applied with a minimum retention period matching the system tier's retention requirements.

Immutable Access Credentials: AWS IAM credentials used for backup operations shall be dedicated, minimal-privilege accounts not used for any production function. These accounts shall have no ability to delete Object Lock-protected objects during the lock period. Credentials shall be stored in an offline vault, separate from the AWS CLI credentials used in production.

Backup Account Isolation: Consider using a dedicated AWS account (separate from production accounts) for backup storage, with trust relationship controlled by the backup account — preventing production account compromise from affecting backup access.

## 7.3  Database Backup Best Practices

Consistent Database Snapshots: For databases with high transaction volumes (core banking, payment systems), application-consistent snapshots shall be used — capturing the database in a consistent state by quiescing writes or using database-native snapshot mechanisms (Oracle RMAN, SQL Server VSS, PostgreSQL pg_basebackup).

Transaction Log Backup: Transaction log backups shall be taken at the frequency required to achieve the defined RPO. For TIER 1 systems with a 15-minute RPO, transaction logs must be backed up every 15 minutes or continuous log shipping must be active.

Point-in-Time Recovery: TIER 1 and TIER 2 databases shall be configured to support point-in-time recovery (PITR) — the ability to restore the database to any specific timestamp within the retention window — by preserving all transaction logs. PITR is essential for recovering from logical corruption (data accidentally deleted, inadvertent mass update) that may not be detected immediately.

Separate Schema and Data Backups: Database backups shall capture both schema (DDL definitions) and data. Schema-only backups are insufficient. For complex environments, export backups (logical backups via database export utilities) shall supplement physical backups as an additional restore option.

## 7.4  Ransomware-Resilient Backup Design Guidelines

The Golden Rule: Assume that any backup system accessible from the production network can be reached by ransomware. Design backups on the assumption that everything in the production environment — including backup agents, backup servers, and storage attached to the network — will be encrypted. The immutable / air-gapped copy is the recovery lifeline.

Backup Hardening: Backup servers shall be hardened per BFS-ISP-004. Backup management consoles shall use MFA. Backup agent credentials shall be rotated regularly and not reused across systems. Backup systems shall run EDR agents.

No Backup Access from Production: Production application servers shall not have any write or delete access to backup storage. The backup agent (running as a service account with minimal read access to source data) sends data to the backup server; it does not have credentials to modify backup storage.

Retention Lock Duration: Immutability retention locks shall be set to at least the minimum regulatory retention period. For core banking backups, retention locks of 7 years are appropriate. Short lock periods (hours or days) offer little practical ransomware protection, as attackers commonly dwell in environments for weeks before deploying ransomware.

Regular Restore from Immutable Copy: Periodically (at least annually), a full system recovery test shall be performed using exclusively the air-gapped / immutable backup copy, validating the complete ransomware recovery chain from detection through full system restoration.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of BFS's data recovery and business continuity capabilities. Reviews annual recovery test results, RTO/RPO compliance, and ransomware resilience posture. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise data recovery program. Ensures adequate investment in backup infrastructure, DR site, and recovery testing. Reviews recovery test results and backup coverage reports. Co-approves this policy. Approves DR failover activation. Reviews RTO/RPO framework alignment with business continuity requirements. |

| Chief Information Security Officer (CISO) | Responsible for security aspects of the backup and recovery program: immutable backup architecture, backup encryption governance, access control over backup systems, ransomware resilience of backup design. Approves backup configuration changes. Reviews SIEM alerts for backup tampering events. Signs off on annual ransomware recovery exercise results. |

| Chief Technology Officer (CTO) | Ensures data recovery requirements are embedded in system architecture and infrastructure design. Reviews RTO/RPO requirements for new systems at the design stage. Ensures DR architecture is technically sound and aligned with business recovery objectives. |

| Data Privacy Officer (DPO) | Reviews backup data containing personal data for RA 10173 compliance. Approves cross-border backup replication where personal data is involved. Confirms backup retention periods are proportionate. Reviews backup access controls for personal data repositories. |

| IT Operations / Backup Administration | Designs, configures, operates, and monitors the backup infrastructure. Manages backup software and backup storage platforms. Responds to backup job failures. Executes recovery tests. Maintains the Backup Configuration Register. Manages tape media and off-site vault. |

| Database Administrators (DBAs) | Configures database-native backup capabilities (RMAN, SQL Server Agent, pg_basebackup). Validates database backup integrity. Executes database restore tests. Confirms transaction log backup frequency meets RPO requirements. |

| Cloud Infrastructure Team | Manages cloud backup configurations (AWS Backup, S3 Object Lock, RDS automated backups, EBS snapshots, Cross-Region Replication). Monitors CSPM alerts for backup configuration changes. Manages cloud backup account isolation and credential segregation. |

| System and Data Owners | Define the RTO, RPO, and backup requirements for their systems. Ensure their systems are included in backup coverage before production deployment. Participate in recovery tests for their systems. Approve changes to backup configuration for their systems. |

| Security Operations Center (SOC) | Monitors SIEM for backup tampering alerts — unauthorized backup deletion, immutability configuration changes, backup console unusual access. Escalates alerts per defined SLAs. Participates in ransomware recovery exercises as the detection and escalation function. |

| Legal and Compliance | Issues backup legal hold directives. Confirms backup retention periods meet regulatory obligations. Coordinates regulatory evidence requests requiring backup data retrieval. Reviews backup disposal for compliance. |

| Internal Audit | Independently assesses backup coverage, recovery test effectiveness, immutable backup architecture, and retention compliance. Reviews backup access controls and backup-related incident records. Reports to Audit and Risk Committee. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circular 1140 and BSP Circular 808

Data recovery and business continuity are among the most critically examined areas during BSP IT risk and business continuity examinations:

BSP Circular 1140 (MORB IT Risk Management) requires BSP-supervised institutions to maintain backup and recovery capabilities for all critical IT systems, with documented RTO and RPO objectives tested at defined intervals;

BSP Circular 808 (Guidelines on Business Continuity Management for BSP-Supervised Institutions) requires development, implementation, and testing of business continuity plans including recovery of critical banking operations within documented timeframes;

ATM and payment system recovery capabilities are specifically subject to BSP oversight — recovery objectives for these systems must be demonstrably achievable and tested, with results available for BSP examination;

BFS must be able to demonstrate backup integrity and recovery capability on demand during BSP examinations, through documented test results, backup configuration records, and retention compliance evidence.

## 9.2  PCI DSS v4.0 Compliance

PCI DSS v4.0 Requirement 12.3 (Hardware and software technologies are reviewed at least once every 12 months) and related requirements address recovery readiness:

PCI DSS Requirement 12.3.3 — All hardware and software technologies in use are reviewed annually to confirm they continue to meet PCI DSS requirements: applies to backup software and DR infrastructure in PCI CDE scope;

PCI DSS requirements for protection of cardholder data (Requirement 3) extend to backup media containing cardholder data — backup encryption and access controls for PCI-scoped backups must meet the same standards as primary production data;

PCI DSS Requirement 9.5 — Physical security for backup media: applies to tape storage containing cardholder data, requiring locked storage, access controls, and transfer tracking for off-site media.

## 9.3  Philippine Data Privacy Act (RA 10173)

Data recovery practices must align with RA 10173 data protection obligations:

Backups of personal data are subject to the DPA's security requirements — backup encryption, access controls, and retention limits apply to backup copies of personal data just as to primary copies;

RA 10173 requires that personal data controllers implement organizational, physical, and technical measures to protect personal data from unauthorized access, alteration, or destruction — the backup and recovery program is a key component of technical protection;

Where ransomware encrypts personal data backups, the event may constitute a personal data breach triggering NPC notification obligations — the 72-hour clock applies from the point BFS becomes aware of the breach, not from recovery completion;

Cross-border backup replication (e.g., AWS Cross-Region Replication to a Singapore or US region) requires assessment under RA 10173 cross-border transfer requirements and NPC guidelines before implementation.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous automated backup job status monitoring with real-time alerts for job failures;

Daily backup coverage report comparing in-scope systems against backup catalog records;

Weekly backup storage health report — capacity utilization, integrity check results, immutability configuration status;

Monthly IT Operations review of backup coverage gaps, failed jobs, and retention compliance;

Quarterly recovery test completion tracking and RTO/RPO compliance reporting to CISO;

Annual DR failover test and ransomware recovery exercise with Board-level results reporting;

Annual BSP-focused backup compliance evidence package prepared by IT Operations and reviewed by Compliance.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| TIER 1 backup coverage — all critical systems with successful backup within required window | 100% | Daily |

| Backup job success rate — TIER 1 and TIER 2 systems | ≥ 99.9% | Daily |

| Backup job failure alert resolution within 4 hours (TIER 1) | 100% | Per failure |

| Immutable copy confirmed current and intact for TIER 1 systems | 100% | Weekly |

| Recovery test completion on schedule per tier | 100% | Per schedule |

| TIER 1 recovery tests passing RTO (≤ 4 hours) | 100% | Per test |

| TIER 1 recovery tests passing RPO (≤ 15 minutes data loss) | 100% | Per test |

| Annual DR failover test completed | Annual | Annual |

| Annual ransomware recovery exercise completed | Annual | Annual |

| Backup encryption enabled — all TIER 1 and TIER 2 backups | 100% | Weekly |

| Backup data transmission encrypted in transit | 100% | Continuous |

| Off-site copy current for TIER 1 and TIER 2 systems | 100% | Weekly |

| Backup console unauthorized access events (target: zero) | 0 | Monthly |

| Backup retention compliance — all backups retained per schedule | 100% | Quarterly |

| New TIER 1 or TIER 2 systems without backup before production go-live (target: zero) | 0 | Per deployment |

| Recovery test failures with remediation plan within 5 business days | 100% | Per failure |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Failure to log a recovery test result; late submission of backup coverage report; unresolved backup job failure without escalation. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Deploying a TIER 1 system to production without backup coverage; shortening backup retention without approval; accessing backup systems without authorization. | Formal warning; immediate backup coverage remediation; IT Security review of all access to backup systems; mandatory retraining. |

| Serious | Modifying immutability configuration or Object Lock settings without CISO approval; repeatedly failing to conduct required recovery tests; deliberately excluding systems from backup scope. | Suspension pending investigation; formal disciplinary action; CISO and CIO escalation; forensic review of all backup system changes. |

| Critical / Legal | Deliberately deleting backups or disabling backup systems during a ransomware or disaster event to prevent recovery; tampering with recovery test results; unauthorized export of backup data containing personal information. | Immediate termination; referral to law enforcement; prosecution under RA 10175; mandatory NPC and BSP notification if customer or personal data is affected. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Data recovery exceptions — situations where the standard backup architecture, frequency, retention, or testing requirements cannot be met — represent direct reductions in BFS's ability to recover from incidents. Every exception increases recovery risk. Exceptions must be genuinely unavoidable, formally risk-assessed, approved at the appropriate level, and subject to compensating controls that reduce the residual recovery risk.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Condition / Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| RTO Extension | Technical constraint prevents TIER 1 RTO of 4 hours; remediation plan in progress. | 90 days | CIO + CISO; Board notification |

| RPO Extension | Log shipping or replication technically constrained; interim measure. | 30 days | CISO + CTO |

| Retention Reduction | Storage cost constraint for non-regulated, non-critical data (TIER 3/4 only). | Not applicable for TIER 1/2; TIER 3/4: CISO approval | CISO + DPO (if personal data) |

| Immutability Gap | New system pending Object Lock configuration; transition period. | 14 days maximum | CISO |

| Recovery Test Deferral | Test deferred due to critical operational constraint (e.g., year-end processing). | 30 days maximum | CIO + CISO; make-up test required |

| Off-Site Copy Gap | Off-site media transit delay; WAN replication issue. | 72 hours | IT Operations Manager + CISO notification |

| Backup Encryption Exception | Legacy backup infrastructure technically unable to support encryption; migration underway. | 90 days | CISO; compensating controls required |

| Cross-Border Data Exception | Backup replication crossing national border pending DPO assessment. | 30 days | DPO + CISO |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) operating a TIER 1 CRITICAL system with no backup for more than 24 hours; (b) retaining core banking or ATM transaction backups for less than 7 years (BSP / RA 8791 minimum); (c) storing backup encryption keys in the same location as the encrypted backup data; (d) granting production application service accounts the ability to delete or modify backup storage contents; (e) skipping the annual ransomware recovery exercise. |

| --- |

## 11.3  Exception Process

System Owner or IT Operations submits a Backup and Recovery Exception Request via the ITSM portal, providing: specific requirement, technical justification, affected systems (CMDB IDs), risk assessment, compensating controls, duration, and planned remediation date.

IT Operations and IT Security review the compensating controls for adequacy — e.g., enhanced monitoring, manual backup procedures, alternative recovery point sources.

Exception is approved per the authority matrix above. Approved exceptions are logged in the central Exception Register.

Compensating controls are implemented and verified before the exception is active.

All exceptions reviewed monthly by IT Operations and the CISO Office. Expired exceptions treated as policy violations.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon:

Significant changes to BFS's backup infrastructure or DR site architecture;

A recovery test failure revealing that defined RTO or RPO cannot be met;

A significant data loss event, ransomware attack, or disaster requiring actual activation of the recovery plan;

New or amended BSP circulars (particularly Circular 808 amendments) or PCI DSS requirements affecting backup or business continuity obligations;

Material changes to the BFS data asset landscape — new TIER 1 systems, new data categories, or significant growth in data volumes affecting backup architecture.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Aligned with CIS Controls v8 Control 11, ISO/IEC 27001:2022, PCI DSS v4.0, NIST SP 800-34, BSP Circulars 1140 and 808, and ISO 22301. | IT Head & Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 11 safeguards to ISO/IEC 27001:2022 Annex A controls, with BSP and PCI DSS cross-references.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 11.1 | Establish and Maintain a Data Recovery Practice | A.8.13 | Information backup | IG1 |

| 11.2 | Perform Automated Backups | A.8.13 | Information backup | IG1 |

| 11.3 | Protect Recovery Data | A.8.13 | Information backup | IG1 |

| 11.4 | Establish and Maintain an Isolated Instance of Recovery Data | A.8.13 | Information backup | IG2 |

| 11.5 | Test Data Recovery | A.8.13 | Information backup | IG2 |

| N/A | Redundancy and availability — HA and DR architecture | A.8.14 | Redundancy of information processing facilities | All |

| N/A | ICT readiness for business continuity | A.5.30 | ICT readiness for business continuity | All |

| N/A | Information security continuity planning | A.5.29 | Information security during disruption | All |

| N/A | Backup encryption — data protection at rest and in transit | A.8.24 | Use of cryptography | All |

| N/A | Backup access control — restricted and logged access | A.8.3 | Information access restriction | All |

| N/A | Backup audit logging — tamper detection and integrity | A.8.15 | Logging | All |

| N/A | Configuration management — backup config change governance | A.8.32 | Change management | All |

| N/A | Data classification — backup security commensurate with data sensitivity | A.5.12 | Classification of information | All |

| N/A | Data retention — backup retention aligned with regulatory schedule | A.5.33 | Protection of records | All |

| N/A | Privacy protection — backup of personal data (RA 10173) | A.5.34 | Privacy and protection of PII | All |

| N/A | Physical media security — tape vault and off-site storage | A.7.10 | Storage media | All |

| N/A | Supplier relationships — third-party backup/DR service management | A.5.19 | Information security in supplier relationships | All |

| N/A | BSP Circular 808 — business continuity recovery objectives | A.5.29 | Information security during disruption | All |

| N/A | PCI DSS Req. 12.3 — annual review of hardware and software technologies | A.8.13 | Information backup | All |

| N/A | PCI DSS Req. 9.5 — physical security for backup media (cardholder data) | A.7.10 | Storage media | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate maturity; IG3 = Advanced. BFS targets full IG2 compliance with the 3-2-1-1-0 backup rule as the enterprise standard for all TIER 1 and TIER 2 systems.

# APPENDIX B:  Backup Retention Schedule

The following table defines minimum backup retention periods for each system and data category. These are minimum periods — backups shall not be disposed of before the defined minimum without CISO and Legal approval. Legal holds override all retention schedules.

| System / Data Category | Daily Retention | Weekly Retention | Monthly Retention | Annual Retention | Regulatory Basis |

| --- | --- | --- | --- | --- | --- |

| Core banking platform | 90 days | 12 months | 7 years | 7 years | BSP / RA 8791 |

| ATM / card management systems | 90 days | 12 months | 7 years | 7 years | BSP / PCI DSS |

| Payment processing / SWIFT | 90 days | 12 months | 7 years | 7 years | BSP / BSP Circ 1140 |

| Internet / mobile banking | 30 days | 6 months | 3 years | 3 years | BSP / RA 8791 |

| Authentication / IAM / AD | 30 days | 6 months | 2 years | N/A | BSP / ISMS |

| Enterprise email platform | 30 days | 6 months | 5 years | N/A | Litigation / BSP |

| ERP / financial records | 30 days | 6 months | 10 years | 10 years | PH Tax Code / BSP |

| HR / payroll systems | 30 days | 6 months | 5 years | N/A | PH Labor Code |

| Security systems (SIEM/EDR/PAM) | 30 days | 3 months | 3 years | N/A | BSP / ISMS |

| Network device configurations | Last 20 configs | N/A | 2 years | N/A | Change management |

| Virtual machine / server images | Last 10 full + 30 days incremental | N/A | N/A | N/A | Operational |

| Cloud infrastructure state (IaC) | Last 20 versions | N/A | 2 years | N/A | Change management |

| Cryptographic keys (key escrow) | N/A (separate KMS) | N/A | Duration of use + 3 years | N/A | BFS Key Policy |

| Legal and governance records | N/A | N/A | Permanent | Permanent | Corporations Code / BSP |

| Development / test environments | 7 days | 4 weeks | N/A | N/A | Operational |

# APPENDIX C:  Recovery Testing Calendar Template

The following table provides a template for the annual recovery testing calendar. IT Operations shall populate this with actual dates and track completion against the schedule. Results are reported quarterly to the CISO.

| Test Type | Systems / Scope | Target Frequency | Planned Date | Pass Criteria |

| --- | --- | --- | --- | --- |

| TIER 1 Database Restore Test | Core banking DB; payment DB; ATM DB | Monthly | Scheduled by IT Ops | Restore within RPO; data integrity validated |

| TIER 1 Full System Recovery Test | Core banking platform (full stack) | Quarterly | Scheduled by IT Ops | Restore within 4-hour RTO; functional tests pass |

| TIER 2 Application Recovery Test | IAM/AD; email; ERP; security systems | Semi-annual | Scheduled by IT Ops | Restore within 8-hour RTO; data within 1-hour RPO |

| DR Site Failover Test | Full TIER 1 stack failover to DR site | Annual | Q2 (May/June) | Full core banking operations running from DR within RTO |

| Ransomware Recovery Exercise | Immutable / air-gapped backup recovery simulation | Annual | Q3 (Aug/Sep) | Recovery from immutable backup within 4-hour RTO; credential segregation verified |

| TIER 3/4 Recovery Spot Checks | Rotating sample of TIER 3 and TIER 4 systems | Annual | Q4 (Nov/Dec) | Recovery within 24-hour RTO; no data loss beyond RPO |

| Backup Encryption Key Recovery Test | Encryption key escrow retrieval and decryption test | Annual | Q1 (Feb/Mar) | Keys retrievable from escrow; backup successfully decrypted |

| Off-Site Media Recall Test | Tape retrieval from off-site vault; restore verification | Annual | Q1 (Jan/Feb) | Tape retrievable within 4 hours; restore completes successfully |

## C.1  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| Backup failure / job issues | IT Operations / Backup Administration | ITSM Portal \| backup-ops@bfs.com.ph |

| Recovery test coordination | IT Operations + System Owner | ITSM Portal – Recovery Test Request |

| Ransomware / disaster recovery | CISO Office + CIO (URGENT) | CISO hotline \| cio@bfs.com.ph |

| DR site activation | CIO + IT Operations | DR Activation Hotline (DR Plan) |

| Backup legal hold | Legal and Compliance | legal@bfs.com.ph |

| Backup data privacy queries | Data Privacy Officer | dpo@bfs.com.ph |

| Cloud backup / AWS issues | Cloud Infrastructure Team | cloud-ops@bfs.com.ph |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

## C.2  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| TIER 1 system maximum RTO | 4 hours |

| TIER 1 system maximum RPO (data loss tolerance) | 15 minutes |

| TIER 2 system maximum RTO | 8 hours |

| TIER 1 backup job failure — automated alert generation | Within 1 hour |

| TIER 1 backup job failure — CISO / CIO escalation if unresolved | 4 hours from failure |

| Recovery test failure — remediation plan submission | Within 5 business days |

| New TIER 1/2 system backup config before production go-live | Before first production use |

| Annual DR failover test | Annually (Q2 preferred) |

| Annual ransomware recovery exercise | Annually (Q3 preferred) |

| Quarterly TIER 1 full system recovery test | Quarterly |

| Monthly TIER 1 database restore test | Monthly |

| Backup legal hold preservation confirmed | Within 24 hours of instruction |

| Off-site tape recall time (disaster scenario) | Within 4 hours of request |

| Backup retention schedule review | Annual |

| Recovery testing calendar review | Annual (Q1) |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-011  |  Data Recovery Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
