---
title: "BFS-ISP-001-Asset-Inventory-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Asset-and-Configuration-Management/BFS-ISP-001-Asset-Inventory-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:37Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Asset-and-Configuration-Management"
aliases:
  - "BFS-ISP-001-Asset-Inventory-Policy"
creator: "Un-named"
created: "2026-04-10T10:02:00Z"
modified: "2026-04-12T02:23:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>INVENTORY AND CONTROL OF<br>ENTERPRISE ASSETS<br>Policy Reference: BFS-ISP-001<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173) |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Inventory and Control of Enterprise Assets |

| --- | --- |

| Policy Reference | BFS-ISP-001 |

| Policy Owner | Chief Information Officer (CIO) / Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant organizational or regulatory change |

| Supersedes | Not Applicable (New Policy) |

| Framework Alignment | CIS Controls v8 (Control 1); ISO/IEC 27001:2022 (A.8.1, A.5.9, A.5.10) |

| Regulatory Reference | Philippine Data Privacy Act (RA 10173); BSP Circular 1140 (MORB IT Risk) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the requirements and governance framework for the systematic identification, classification, ownership, tracking, monitoring, and secure disposal of all enterprise assets owned, leased, managed, or operated by BFS Financial Services (hereinafter referred to as "the Organization" or "BFS").

The effective management of enterprise assets is foundational to information security. Unauthorized or unmanaged assets represent significant security, operational, and compliance risks. Without an accurate and continuously maintained inventory, the Organization cannot adequately protect its information and technology environment, cannot perform meaningful risk assessments, and cannot demonstrate compliance with applicable legal, regulatory, and contractual obligations.

This policy is aligned with CIS Controls v8, Control 1 (Inventory and Control of Enterprise Assets) and ISO/IEC 27001:2022, Annex A controls A.8.1 (User endpoint devices), A.5.9 (Inventory of information and other associated assets), and A.5.10 (Acceptable use of information and other associated assets), among other applicable controls.

The specific objectives of this policy are to:

Establish and maintain an accurate and comprehensive inventory of all enterprise hardware, software, and information assets;

Ensure that every asset has a clearly assigned owner accountable for its security, acceptable use, and lifecycle management;

Define asset classification criteria to enable proportionate and risk-based security controls;

Prevent the use of unauthorized, unmanaged, or rogue assets within the BFS environment;

Enable effective vulnerability management, incident response, and audit readiness through reliable asset data;

Ensure compliance with applicable laws, regulations, and standards, including the Philippine Data Privacy Act (RA 10173), BSP Circular 1140, CIS Controls v8, and ISO/IEC 27001:2022;

Support continuous improvement through periodic review and auditability of the asset management process.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all personnel, including but not limited to:

Full-time and part-time employees of BFS;

Contractors, consultants, managed service providers, and third-party vendors with access to BFS systems, networks, or data;

Board members, executive officers, and senior management with access to enterprise systems;

Business process outsourcing (BPO) partners operating on behalf of BFS.

## 2.2  Asset Scope

This policy governs all enterprise assets, which include but are not limited to:

IT Hardware Assets:

Servers (physical and virtual), including on-premise, co-located, and cloud-hosted;

End-user devices: desktops, laptops, workstations, tablets, and mobile phones;

Network infrastructure: routers, switches, firewalls, access points, and load balancers;

Storage systems: SANs, NAS, tape libraries, and external drives;

Peripheral and IoT devices: printers, ATMs, POS terminals, cameras, badge readers;

Telecommunications equipment and VoIP systems.

Software and Digital Assets:

Licensed commercial software, open-source software, and internally developed applications;

Operating systems, middleware, databases, and firmware;

Cloud services and Software-as-a-Service (SaaS) platforms;

Source code, build artifacts, and deployment packages;

Digital certificates, API keys, credentials, and cryptographic keys.

Information Assets:

Structured data: databases, data warehouses, and data lakes;

Unstructured data: documents, spreadsheets, emails, and media files;

Records: contracts, regulatory filings, audit logs, and correspondence;

Intellectual property: policies, procedures, manuals, and proprietary processes;

Customer and personal data subject to the Philippine Data Privacy Act.

Cloud and Remote Assets:

Infrastructure-as-a-Service (IaaS) and Platform-as-a-Service (PaaS) resources, including virtual machines, containers, and serverless functions;

Cloud storage buckets, object stores, and managed databases;

Remote user endpoints, VPN-connected devices, and assets in remote offices or work-from-home environments.

## 2.3  Environmental Scope

This policy covers assets deployed or operated in all environments, including production, staging, development, testing, disaster recovery, and training environments, whether located on-premise, in co-location facilities, in public or private cloud platforms, or in remote/home office locations.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Enterprise Asset | Any hardware device, software application, cloud resource, data set, or information record that is owned, leased, managed, or used by BFS in the course of its business operations. |

| Asset Owner | An individual (or role) formally assigned accountability for an asset's security, classification, acceptable use, and lifecycle management. Typically the business unit head or technical custodian responsible for the asset. |

| Asset Custodian | An individual or team operationally responsible for the day-to-day administration, maintenance, and security configuration of an asset on behalf of the Asset Owner. |

| Asset Inventory / CMDB | A centralized Configuration Management Database (CMDB) or equivalent asset registry that maintains a current, accurate, and auditable record of all enterprise assets and their attributes. |

| Authorized Asset | An asset that has been formally registered in the CMDB, assigned an owner, and approved for use within the BFS environment. |

| Unauthorized Asset | Any device, software, or resource connected to or operating within the BFS environment that has not been formally registered and approved. Also referred to as a 'rogue' asset. |

| Asset Classification | The process of categorizing an asset based on its criticality, sensitivity, and the potential business impact of its compromise, loss, or disruption. |

| Asset Lifecycle | The complete set of stages an asset passes through from acquisition/provisioning to decommissioning and secure disposal, including procurement, deployment, operation, maintenance, and end-of-life. |

| Configuration Item (CI) | A discrete asset or component tracked within the CMDB, with defined attributes, relationships, and status. |

| Critical Asset | An asset whose unavailability, compromise, or failure would result in significant operational disruption, financial loss, regulatory sanction, or reputational damage to BFS. |

| EDR | Endpoint Detection and Response – a security tool that continuously monitors endpoint devices for suspicious activity and provides detection, investigation, and response capabilities. |

| SIEM | Security Information and Event Management – a platform that collects, correlates, and analyzes security event data from across the IT environment to support threat detection and compliance reporting. |

| Data Privacy Act (DPA) | Republic Act 10173, the Philippine Data Privacy Act of 2012, and its Implementing Rules and Regulations (IRR). |

| BSP | Bangko Sentral ng Pilipinas – the central monetary authority of the Philippines, whose regulations (including MORB and relevant circulars) apply to BFS as a supervised financial institution. |

| CIS Controls | The Center for Internet Security (CIS) Critical Security Controls – a prioritized set of best-practice cybersecurity actions designed to mitigate the most prevalent cyber risks. This policy references version 8. |

| ISO/IEC 27001:2022 | The international standard specifying requirements for establishing, implementing, maintaining, and continually improving an Information Security Management System (ISMS). |

| ISMS | Information Security Management System – the set of policies, procedures, controls, and processes used to systematically manage information security risk in accordance with ISO/IEC 27001. |

| Sensitive Personal Information (SPI) | As defined by RA 10173: information about an individual's race, ethnic origin, marital status, age, color, religious, philosophical, or political affiliations, health, education, and other personal data deemed sensitive. |

# 4.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel and assets within the scope of this policy. Non-compliance may result in disciplinary action, as described in Section 9.

## 4.1  Asset Inventory Mandate

PS-1.1  BFS shall establish, maintain, and continuously update a complete and accurate inventory of all enterprise assets. No asset shall be deployed, connected to the BFS network, or used in BFS operations without first being registered in the CMDB.

PS-1.2  The CMDB shall serve as the authoritative and single source of truth for all enterprise asset records. All security, operations, and compliance activities shall reference the CMDB as the primary data source for asset information.

PS-1.3  Asset discovery tools shall be deployed and configured to perform automated, continuous scanning of all network segments, cloud environments, and endpoint populations to detect authorized and unauthorized assets.

PS-1.4  Unregistered or unauthorized assets discovered within the BFS environment shall be immediately isolated, investigated, and either formally registered or removed within the response timeframes defined in Section 5.3.

## 4.2  Asset Ownership and Accountability

PS-2.1  Every enterprise asset shall be assigned a formally designated Asset Owner prior to deployment. Asset ownership is a mandatory, non-delegable accountability requirement.

PS-2.2  Asset Owners are accountable for ensuring that assets under their ownership are properly classified, operated within policy, maintained in a secure and up-to-date state, and disposed of securely at end-of-life.

PS-2.3  Where an Asset Owner is unable to fulfill their responsibilities (e.g., due to resignation, reassignment, or extended absence), ownership must be formally transferred and the CMDB updated within five (5) business days.

## 4.3  Asset Classification and Labeling

PS-3.1  All enterprise assets, including information assets, shall be classified based on their criticality, sensitivity, and regulatory or contractual requirements. Classification shall be reviewed at least annually and upon any material change to the asset or its role.

PS-3.2  Asset classification shall directly govern the security controls applied to each asset, including access control, encryption, monitoring intensity, backup frequency, and disposal requirements.

PS-3.3  Information assets containing personal data or Sensitive Personal Information as defined under RA 10173 shall be classified at a minimum as CONFIDENTIAL and shall be subject to the full suite of applicable data privacy controls.

## 4.4  Authorized Use and Acceptable Use

PS-4.1  Enterprise assets shall be used exclusively for authorized business purposes. Personal use of BFS-owned assets is subject to the restrictions defined in the BFS Acceptable Use Policy (BFS-ISP-020).

PS-4.2  The installation, deployment, or use of unauthorized hardware or software on BFS assets or within the BFS network is strictly prohibited. All software must be licensed, registered, and approved prior to use.

PS-4.3  All cloud resources provisioned on behalf of BFS must follow the defined cloud asset provisioning process. Shadow IT—the use of unapproved cloud services or applications—is prohibited.

## 4.5  Security Hardening and Maintenance

PS-5.1  All enterprise assets shall be configured in accordance with BFS-approved security hardening baselines before deployment. Default vendor passwords, settings, and unnecessary services shall be removed or disabled.

PS-5.2  Assets shall be kept current with vendor-supplied security patches and updates in accordance with the BFS Vulnerability and Patch Management Policy. Critical patches shall be applied within the timeframes specified in that policy.

PS-5.3  Assets that have reached end-of-support status and for which security patches are no longer available shall be formally risk-accepted, compensating controls applied, and a migration plan established within ninety (90) days.

## 4.6  Monitoring and Auditing

PS-6.1  Asset inventory data shall be subject to automated monitoring to detect changes, unauthorized additions, or removals. Changes to critical asset configurations shall generate alerts and be logged in the SIEM.

PS-6.2  A formal asset inventory audit shall be conducted at least annually and following any major infrastructure change, merger, acquisition, or significant security incident.

PS-6.3  Audit logs related to asset changes, access, and configuration shall be retained for a minimum of twelve (12) months online and three (3) years in long-term archive, in accordance with applicable regulatory requirements.

## 4.7  Secure Disposal and Decommissioning

PS-7.1  All data shall be securely erased from assets prior to decommissioning, reuse, transfer, or disposal, using methods appropriate to the asset classification and data sensitivity, as defined in the BFS Data Disposal Standard.

PS-7.2  Physical disposal of hardware assets shall be performed through an approved, contracted, and auditable asset disposal service. A certificate of destruction or data sanitization shall be obtained and retained for each disposed asset.

PS-7.3  The CMDB shall be updated to reflect asset decommissioning status within two (2) business days of confirmed disposal or decommissioning.

# 5.  PROCEDURES

## 5.1  Asset Registration and Onboarding

The following procedure shall be followed for all new enterprise assets:

Request and Approval: The requesting business unit or technical team submits an asset procurement or provisioning request through the approved IT Service Management (ITSM) platform. All requests must include the proposed asset owner, intended business purpose, and environment (production, development, etc.).

Procurement or Provisioning Review: The IT Operations or Cloud Infrastructure team reviews the request for technical compliance with BFS standards, licensing requirements, and security baseline applicability.

Pre-Deployment Hardening: Prior to deployment, the asset is configured in accordance with the applicable CIS Benchmark or BFS security hardening baseline. EDR agents, logging agents, and vulnerability scanning agents shall be installed as applicable.

CMDB Registration: The asset is registered in the CMDB with all required attributes (see Section 5.2). A unique Asset ID is assigned.

Asset Owner Assignment: The designated Asset Owner is formally notified of their accountability via email, with the CMDB record updated accordingly.

Network Authorization: For network-connected devices, the device MAC address or identity certificate is added to the approved network access control (NAC) allowlist before the device is connected to any BFS network segment.

Deployment Approval: Deployment is approved by the IT Operations Manager or designate. The asset status in the CMDB is updated to 'Active.'

## 5.2  CMDB / Asset Registry – Required Attributes

Each CMDB record shall capture, at a minimum, the following attributes:

| Attribute | Description / Example |

| --- | --- |

| Asset ID | Unique system-generated identifier (e.g., BFS-SRV-0042) |

| Asset Name / Hostname | Fully qualified domain name (FQDN) or descriptive name |

| Asset Type | Server, Workstation, Network Device, Cloud Resource, Mobile, etc. |

| Asset Class / Category | Hardware, Software, Information, Cloud, IoT |

| Criticality Level | Critical / High / Medium / Low |

| Data Classification | Top Secret / Confidential / Internal / Public |

| Asset Owner (Role & Name) | Accountable individual or role |

| Asset Custodian | Operational responsible party |

| Business Unit / Department | Organizational unit responsible |

| Location / Environment | Physical location or cloud region; Prod/Dev/DR/etc. |

| IP Address(es) / MAC | Current network identifiers |

| Operating System / Platform | OS name, version, patch level |

| Installed Applications | Key applications and versions |

| Vendor / Manufacturer | Hardware or software vendor |

| Model / Serial Number | Physical asset identification |

| License Information | License type, key, expiry (software assets) |

| Acquisition Date | Date of purchase or provisioning |

| Warranty / Support Expiry | Vendor support and warranty end dates |

| Last Vulnerability Scan Date | Date of most recent scan |

| EDR / Monitoring Status | Installed / Not applicable / Exception |

| Data Backup Status | Backup schedule and last successful backup |

| Disposal / Decommission Date | Date and method of disposal |

| Related CIs / Dependencies | Linked CMDB records (parent/child/peer relationships) |

| Regulatory Tags | E.g., PII, SPI, BSP-regulated, PCI-DSS |

| Last Review Date | Date of last annual asset review |

## 5.3  Unauthorized Asset Detection and Response

The following response procedure applies when an unauthorized or unmanaged asset is detected within the BFS environment:

| Step | Action | Timeframe | Responsible Party |

| --- | --- | --- | --- |

| 1 | Detection: Asset discovery tool or SIEM alert identifies unregistered device or resource. | Automated / real-time | Security Operations Center (SOC) |

| 2 | Alert Triage: SOC analyst reviews alert to confirm the asset is unauthorized (not a false positive). | Within 1 hour | SOC Analyst |

| 3 | Isolation: Unauthorized asset is quarantined or blocked at the network level pending investigation. | Within 4 hours | IT Operations / SOC |

| 4 | Investigation: Asset is examined to determine origin, owner, purpose, and whether any data access or compromise occurred. | Within 24 hours | IT Security Team |

| 5 | Disposition Decision: Asset is either (a) formally registered and authorized, or (b) removed and disposed of securely. | Within 48 hours | IT Security Manager |

| 6 | Incident Logging: The event is logged as a security incident in the ITSM and, where applicable, escalated as an information security incident. | Concurrent | SOC / CISO Office |

| 7 | Post-Incident Review: Root cause is identified and corrective action taken to prevent recurrence. | Within 5 business days | IT Security Manager / CISO |

## 5.4  Asset Lifecycle Management

All enterprise assets shall be managed through a defined lifecycle with formal gates at each stage:

Procurement / Provisioning: Assets are sourced only from approved vendors. Security requirements are included in procurement specifications. Cloud resources are provisioned via approved IaC templates or procurement workflows.

Deployment: Assets are hardened, registered, and assigned before connection to production environments.

Active Operation: Assets are monitored, patched, and audited continuously. CMDB records are updated upon any change.

Maintenance and Change: All changes to critical assets are processed through the BFS Change Management process. CMDB is updated as part of change closure.

End-of-Life / Decommissioning: Assets nearing end-of-support are flagged. A decommissioning plan is developed, data is migrated or securely erased, and the asset is removed from the network before physical or cloud disposal.

Disposal: Hardware is sanitized and disposed of through an approved vendor. Cloud resources are terminated and confirmed deleted. Disposal records are retained.

## 5.5  Asset Classification Procedure

Asset Owners are responsible for classifying assets upon registration and reviewing classification annually:

| Classification | Criteria | Handling Requirements | Examples |

| --- | --- | --- | --- |

| CRITICAL | Mission-critical; compromise or loss causes severe operational, financial, or regulatory impact. | Strictest controls; 24/7 monitoring; automated failover; highest patch priority. | Core banking platform, ATM switch, payment gateway, ISMS master records. |

| CONFIDENTIAL | Contains sensitive personal data (SPI/PII), financial data, trade secrets, or regulatory records. | Encryption at rest and in transit; need-to-know access; DLP monitoring. | Customer records, loan data, authentication systems, HR data, audit logs. |

| INTERNAL USE | Business information not for public release; operational data; non-sensitive employee records. | Access limited to BFS personnel; standard security controls. | Internal policies, project plans, operational dashboards, internal email. |

| PUBLIC | Information approved for external publication; no material risk if disclosed. | Standard availability controls; integrity verification. | Public website content, marketing materials, regulatory public disclosures. |

## 5.6  Asset Transfer and Disposal

Decommission Request: Asset Owner submits a decommissioning request via the ITSM platform, including justification and proposed disposal method.

Data Inventory and Migration: Data Custodian confirms all data on the asset is either migrated to an approved replacement system or classified for secure deletion.

Data Sanitization: Data is wiped using methods meeting NIST SP 800-88 (for hardware) or cloud provider confirmed deletion (for cloud). For CONFIDENTIAL and CRITICAL assets, physical destruction may be required.

Vendor Disposal (Hardware): Asset is delivered to the approved hardware disposal vendor. Certificate of data destruction is obtained and filed.

CMDB Update: Asset status is updated to 'Decommissioned' with date, method, and disposal certificate reference.

Audit Record: Disposal record is retained for a minimum of three (3) years.

# 6.  GUIDELINES

## 6.1  Tooling and Automation

BFS shall maintain and operate the following tooling to support the asset management program:

Asset Discovery: Network-based and agent-based asset discovery tools shall be configured to perform continuous scanning across all network segments (including cloud VPCs and remote VPN subnets). Scan results shall be automatically reconciled with the CMDB.

CMDB Integration: The CMDB shall be integrated with the ITSM, EDR, vulnerability management, and SIEM platforms to enable automated population of asset attributes (e.g., patch status, last seen date, vulnerabilities) and to trigger alerts for CMDB drift.

EDR Coverage: All endpoints and servers shall have an approved EDR agent deployed. EDR coverage shall be monitored daily, and assets without EDR coverage shall be investigated and resolved within twenty-four (24) hours.

SIEM Integration: Asset inventory data shall be used as an enrichment source for SIEM correlation rules, enabling contextual alerting (e.g., 'unknown asset communicating with external IP').

Vulnerability Scanning: All assets shall be included in the regular vulnerability scanning schedule. Unscanned assets shall be flagged as exceptions requiring management review.

## 6.2  Cloud and Hybrid Asset Management

Given BFS's use of cloud platforms (including AWS), the following additional guidelines apply to cloud-hosted assets:

Infrastructure-as-Code (IaC): All cloud resources shall be provisioned via approved IaC templates (e.g., Terraform, CloudFormation). Manual provisioning outside of approved pipelines is prohibited in production environments.

Cloud Asset Tagging: All cloud resources shall be tagged at provisioning with the mandatory tag set, including: AssetOwner, CostCenter, Environment, Classification, and ProjectID. Resources without mandatory tags are non-compliant and subject to automated remediation.

Cloud Security Posture Management (CSPM): BFS shall use a CSPM tool to continuously assess cloud asset configurations for compliance with security baselines and to detect misconfigured or orphaned resources.

Orphaned Resource Detection: Cloud resources without an active owner or associated project shall be flagged for review and, if unresolved within fourteen (14) days, decommissioned.

Multi-Cloud Visibility: Where multiple cloud providers are used, a unified asset inventory shall be maintained. Each cloud account or subscription shall be inventoried as a CMDB configuration item with associated sub-items.

## 6.3  Remote and Mobile Asset Management

All employee-owned devices used to access BFS resources under a Bring Your Own Device (BYOD) arrangement must comply with the BFS Mobile Device Management (MDM) policy and be registered as managed devices in the CMDB.

BFS-issued laptops and mobile devices assigned to remote workers shall be enrolled in the BFS MDM solution. Enrollment status shall be monitored, and unenrolled devices shall be blocked from accessing BFS resources.

Remote assets shall be included in all asset management controls, including EDR deployment, vulnerability scanning, and patch management, regardless of physical location.

## 6.4  Software Asset Management (SAM)

Software License Compliance: The IT Asset Management team shall maintain a software license register and perform quarterly reconciliation of installed software against valid licenses. Unlicensed software shall be removed within five (5) business days of detection.

Software Allowlist / Denylist: BFS shall maintain an approved software allowlist for endpoint devices. Any software not on the allowlist shall require CISO approval before installation. Known malicious or high-risk software shall be maintained on a denylist and blocked by endpoint controls.

Open Source Software (OSS): The use of OSS components in BFS-developed software shall be tracked in a Software Bill of Materials (SBOM) and reviewed for known vulnerabilities (CVEs) as part of the software development lifecycle.

## 6.5  Physical Asset Security

Data center and server room access shall be restricted to authorized personnel only, controlled by multi-factor physical access controls, and monitored by CCTV.

Physical asset labels shall be affixed to all hardware assets, containing the Asset ID, classification, and owner information.

Asset movements (relocation, temporary transfer) shall be logged in the CMDB and require prior approval from the Asset Owner and IT Operations.

# 7.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides oversight and governance of the information security program, including asset management. Approves this policy and reviews compliance metrics annually. |

| Chief Information Officer (CIO) | Accountable for the overall IT asset management program. Ensures adequate resources, tooling, and staffing are allocated. Sponsors policy review and updates. |

| Chief Information Security Officer (CISO) | Responsible for the design, implementation, and enforcement of this policy. Oversees the Security Operations Center, asset discovery tools, and SIEM integration. Reports on policy compliance to the CIO and Board. |

| IT Asset Management Team | Maintains the CMDB and asset registry as the day-to-day operational function. Performs CMDB reconciliation, manages the asset onboarding and offboarding process, and produces asset inventory reports. |

| Asset Owners (Business Unit Heads / Technical Leads) | Formally accountable for assigned assets. Ensures assets are classified, used appropriately, maintained securely, and disposed of correctly. Approves access to their assets and participates in annual asset reviews. |

| Asset Custodians (IT Operations / System Administrators) | Operationally responsible for the security configuration, patching, backup, and daily management of assets. Implements Asset Owner directives and escalates issues appropriately. |

| Security Operations Center (SOC) | Monitors asset inventory for unauthorized assets, configuration drift, and security events. Responds to asset-related security alerts. Maintains asset data in the SIEM. |

| Enterprise Architecture Team | Ensures asset management requirements are embedded in solution design and infrastructure architecture. Maintains IaC templates and cloud provisioning standards. |

| Compliance and Risk Officers | Validate policy compliance during internal audits. Assess asset management risks and ensure regulatory mapping is current. Coordinate external audits and regulatory examinations. |

| Data Privacy Officer (DPO) | Ensures that information assets containing personal data are identified, classified, and managed in accordance with RA 10173 and the NPC's guidelines. |

| All Employees and Third Parties | Comply with this policy. Promptly report discovered unauthorized, damaged, or suspicious assets to the IT Service Desk or SOC. Do not connect unauthorized devices to BFS networks. |

| Internal Audit | Independently assesses the effectiveness of asset management controls and CMDB accuracy. Reports findings to the Audit and Risk Committee. |

# 8.  COMPLIANCE AND ENFORCEMENT

## 8.1  Compliance Monitoring

Compliance with this policy shall be monitored through the following mechanisms:

Continuous automated monitoring via asset discovery tools, SIEM correlation rules, and CMDB health dashboards;

Quarterly CMDB reconciliation reports comparing CMDB records against network scan data, EDR agent lists, and cloud resource inventories;

Annual formal asset inventory audits conducted by the IT Asset Management Team and validated by Internal Audit;

Periodic vulnerability scan coverage reports to identify assets excluded from scanning scope;

Monthly Key Risk Indicator (KRI) reports to the CISO, including metrics on CMDB coverage, unauthorized asset incidents, and overdue asset reviews.

## 8.2  Key Performance Indicators (KPIs)

The following KPIs shall be tracked, reported, and subject to management review:

| KPI | Target | Reporting Frequency |

| --- | --- | --- |

| CMDB Coverage Rate (registered vs. discovered assets) | ≥ 99% | Monthly |

| EDR Agent Coverage Rate | 100% of eligible endpoints | Daily |

| Unauthorized Asset Detection-to-Isolation Time | ≤ 4 hours | Per incident |

| Overdue Asset Reviews (beyond annual review date) | 0% | Monthly |

| Patch Compliance Rate for Critical Assets | ≥ 98% within SLA | Monthly |

| Software License Compliance Rate | 100% | Quarterly |

| CMDB Attribute Completeness Rate | ≥ 95% | Quarterly |

| Decommissioned Assets Pending Disposal | 0 beyond SLA | Monthly |

## 8.3  Enforcement and Disciplinary Action

Violations of this policy shall be subject to the following consequences, applied proportionately to the severity, intent, and impact of the violation:

| Severity Level | Examples | Consequence |

| --- | --- | --- |

| Minor | Failure to update CMDB within required timeframe; incomplete asset record attributes. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Connecting a personal device to the BFS network without authorization; installing unlicensed software. | Formal warning; mandatory security awareness training; restriction of access privileges pending review. |

| Serious | Deliberate concealment of unauthorized assets; repeated non-compliance; unauthorized use of classified assets. | Suspension pending investigation; disciplinary action up to and including termination of employment or contract. |

| Critical / Illegal | Deliberate introduction of malware via rogue device; theft or unauthorized transfer of assets containing protected data. | Immediate termination; referral to law enforcement; legal action under applicable Philippine law including RA 10175 (Cybercrime Prevention Act). |

Enforcement actions involving employees shall be carried out in accordance with the BFS Human Resources Disciplinary Policy and applicable Philippine labor law. Actions involving third parties shall be governed by the relevant contractual agreements and applicable law.

# 9.  EXCEPTIONS HANDLING

## 9.1  Exception Principles

BFS recognizes that operational or business requirements may occasionally necessitate deviations from specific policy requirements. All exceptions must be formally requested, justified, risk-assessed, approved, and time-bound.

## 9.2  Exception Request Process

Submission: The requesting party submits a formal Exception Request Form to the CISO Office via the ITSM platform. The form must include: (a) the specific policy statement to be excepted, (b) the business justification, (c) the duration of the exception, (d) the security risks introduced, and (e) proposed compensating controls.

Risk Assessment: The CISO Office conducts a risk assessment of the proposed exception, evaluating the likelihood and potential impact of the associated risks, taking into account the compensating controls proposed.

Approval: Exceptions shall be approved as follows:

Low-risk exceptions: CISO approval.

Moderate-risk exceptions: CIO approval, with CISO recommendation.

High-risk exceptions: Executive Management approval (CIO + CEO or designate), with CISO recommendation.

Exceptions involving regulatory compliance requirements: Compliance Officer concurrence required in all cases.

Implementation: Approved compensating controls shall be implemented prior to the exception becoming effective.

Tracking: All approved exceptions shall be logged in the Exception Register maintained by the CISO Office, with the approval, expiry date, and compensating controls recorded.

Review and Renewal: Exceptions shall be reviewed at least every ninety (90) days or at the approved expiry date, whichever is earlier. Expired exceptions that have not been renewed shall be treated as policy violations.

Closure: Upon resolution of the underlying requirement, the exception is formally closed and the exception register updated.

| NOTE: Exceptions do not waive regulatory obligations. No exception may be granted that would result in non-compliance with applicable laws, BSP regulations, or contractual obligations without the prior written concurrence of the Compliance Officer and, where required, the relevant regulatory body. |

| --- |

# 10.  REVIEW AND REVISION HISTORY

## 10.1  Policy Review Schedule

This policy shall be formally reviewed on an annual basis, or more frequently upon the occurrence of any of the following events:

Significant changes to the BFS technology landscape, including major cloud migrations, mergers, or acquisitions;

Major changes to the applicable regulatory environment (e.g., new BSP circulars, NPC issuances, or amendments to RA 10173);

Publication of updated versions of CIS Controls or ISO/IEC 27001;

Material findings arising from an internal or external audit, regulatory examination, or significant security incident involving asset management failures;

Organizational restructuring that significantly affects asset ownership or the scope of the policy.

## 10.2  Revision History

| Version | Date | Description of Changes | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. New policy document aligned with CIS Controls v8 and ISO/IEC 27001:2022. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The following table provides the cross-reference mapping between CIS Controls v8 safeguards applicable to this policy and the corresponding ISO/IEC 27001:2022 Annex A controls. This mapping supports audit readiness, framework integration, and evidence of dual-framework compliance.

| CIS Ctrl | CIS Safeguard Description | ISO 27001 Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 1.1 | Establish and Maintain Detailed Enterprise Asset Inventory | A.5.9 | Inventory of information and other associated assets | IG1 |

| 1.1 | Establish and Maintain Detailed Enterprise Asset Inventory | A.8.1 | User endpoint devices | IG1 |

| 1.2 | Address Unauthorized Assets | A.8.20 | Networks security | IG1 |

| 1.2 | Address Unauthorized Assets | A.8.22 | Segregation in networks | IG2 |

| 1.3 | Utilize an Active Discovery Tool | A.5.9 | Inventory of information and other associated assets | IG2 |

| 1.4 | Use DHCP Logging to Update Enterprise Asset Inventory | A.8.15 | Logging | IG2 |

| 1.5 | Use a Passive Asset Discovery Tool | A.8.16 | Monitoring activities | IG3 |

| 2.1 | Establish and Maintain a Software Inventory (related) | A.5.9 | Inventory of information and other associated assets | IG1 |

| 2.3 | Address Unauthorized Software (related) | A.8.19 | Installation of software on operational systems | IG1 |

| N/A | Asset ownership and accountability | A.5.10 | Acceptable use of information and other associated assets | All |

| N/A | Information classification | A.5.12 | Classification of information | All |

| N/A | Labeling of information assets | A.5.13 | Labelling of information | All |

| N/A | Asset return on termination | A.6.5 | Responsibilities after termination or change of employment | All |

| N/A | Physical media management | A.7.10 | Storage media | All |

| N/A | Secure disposal of media | A.7.14 | Secure disposal or re-use of equipment | All |

| N/A | End-user device management | A.8.1 | User endpoint devices | All |

| N/A | Data loss prevention (cloud/endpoint) | A.8.12 | Data leakage prevention | IG2/3 |

| N/A | Audit logging of asset changes | A.8.15 | Logging | All |

| N/A | Monitoring of asset activity | A.8.16 | Monitoring activities | All |

| N/A | Change management for assets | A.8.32 | Change management | All |

| N/A | Vulnerability management integration | A.8.8 | Management of technical vulnerabilities | All |

| N/A | Supplier / third party asset access | A.5.19 | Information security in supplier relationships | All |

| N/A | Data Privacy Act (RA 10173) – PII/SPI assets | A.5.34 | Privacy and protection of PII | All |

Legend: IG1 = Implementation Group 1 (all organizations); IG2 = Implementation Group 2 (moderate security maturity); IG3 = Implementation Group 3 (highest security maturity). BFS targets full IG2 compliance with selected IG3 controls for critical asset environments.

# APPENDIX B:  Asset Management Quick Reference Card

## B.1  Key Contacts

| Function | Role | Contact / Escalation |

| --- | --- | --- |

| CMDB / Asset Registry | IT Asset Management Team | IT Service Desk → ITSM Portal |

| Unauthorized Asset Detection | Security Operations Center (SOC) | soc@bfs.com.ph \| 24/7 hotline |

| Policy Exceptions | CISO Office | ciso@bfs.com.ph |

| Data Privacy / PII Assets | Data Privacy Officer | dpo@bfs.com.ph |

| Compliance Queries | Compliance Officer | compliance@bfs.com.ph |

| Asset Disposal | IT Asset Management Team | ITSM Decommission Workflow |

## B.2  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| New asset CMDB registration (before deployment) | Before first use |

| Unauthorized asset isolation after detection | Within 4 hours |

| Unauthorized asset investigation completion | Within 48 hours |

| Asset ownership transfer after departure/reassignment | Within 5 business days |

| CMDB update after asset change | Within 1 business day |

| CMDB update after decommissioning | Within 2 business days |

| Critical patch application | Per Patch Management Policy SLAs |

| End-of-support asset migration plan | Within 90 days of EOS announcement |

| Annual asset inventory audit | Annually (Q1 preferred) |

| Exception review cycle | Every 90 days or at expiry |

| Policy review cycle | Annual or upon triggering event |

BFS-ISP-001  |  Inventory and Control of Enterprise Assets  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. This document is classified CONFIDENTIAL and intended for authorized internal use only.
