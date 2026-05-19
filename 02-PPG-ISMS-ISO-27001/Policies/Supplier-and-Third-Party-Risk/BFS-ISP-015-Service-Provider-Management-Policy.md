---
title: "BFS-ISP-015-Service-Provider-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Supplier-and-Third-Party-Risk/BFS-ISP-015-Service-Provider-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:41Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Supplier-and-Third-Party-Risk"
aliases:
  - "BFS-ISP-015-Service-Provider-Management-Policy"
creator: "Un-named"
created: "2026-04-14T04:14:00Z"
modified: "2026-04-23T04:49:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>SERVICE PROVIDER<br>MANAGEMENT POLICY<br>Third-Party Inventory, Risk Classification, Contract Requirements, Due Diligence, Monitoring, and Offboarding<br>Policy Reference: BFS-ISP-015<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 15)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140  \|  PCI DSS v4.0<br>Companion to BFS-ISP-003 \| BFS-ISP-005 \| BFS-ISP-006 \| BFS-ISP-007 \| BFS-ISP-011 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Service Provider Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-015 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2025 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to the vendor landscape, regulatory requirements, or significant third-party security incident |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-003 (Data Protection); BFS-ISP-005 (Account and Access Management); BFS-ISP-006 (Access Control Management); BFS-ISP-007 (Vulnerability Management); BFS-ISP-008 (Audit Log Management); BFS-ISP-011 (Data Recovery); BFS-ISP-014 (Security Awareness and Training) |

| Framework Alignment | CIS Controls v8 (Control 15); ISO/IEC 27001:2022 (A.5.19, A.5.20, A.5.21, A.5.22, A.5.23) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management — Outsourcing); BSP Circular 144 (Guidelines on Outsourcing); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirement 12.8); RA 10175 (Cybercrime Prevention Act); NIST SP 800-161 (Cybersecurity Supply Chain Risk Management) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the mandatory requirements, governance framework, and operational procedures for managing the information security risk associated with third-party service providers — including technology vendors, software suppliers, cloud service providers, outsourced service partners, managed security service providers, and any other external entity that has access to, processes, stores, transmits, or supports BFS Financial Services (hereinafter "the Organization" or "BFS") information assets or IT systems.

Third-party service providers represent one of the most significant and rapidly growing attack surfaces in the financial services sector. Threat actors have demonstrated repeatedly that compromising a trusted vendor — a software update mechanism, a managed service provider, a cloud storage provider, or an IT support partner — can provide privileged access to the target organization's systems that bypasses every internal security control. Notable supply chain attacks, including major software supply chain compromises and managed service provider infiltrations, have had severe impacts on financial sector organizations globally.

BFS cannot fully control the security posture of its service providers, but it can: rigorously assess their security practices before engagement, contractually require adequate security standards, continuously monitor their performance and any security incidents, and maintain the capability to rapidly offboard providers who fail to meet security obligations or who are confirmed compromised.

This policy directly implements CIS Controls v8, Control 15 (Service Provider Management), encompassing all safeguards from 15.1 through 15.7. It is anchored in ISO/IEC 27001:2022 Annex A controls governing information security in supplier relationships, addressing security in supplier agreements, ICT supply chain security, supplier service monitoring and review, and managing security changes to supplier services.

The specific objectives of this policy are to:

Establish and maintain a comprehensive, current inventory of all BFS service providers, classified by the risk they represent to BFS information assets and operations;

Define mandatory contract security requirements ensuring that every service provider is legally bound to protect BFS data, systems, and interests to standards commensurate with the data they access;

Mandate structured pre-engagement security due diligence that validates a service provider's security posture before they are granted access to BFS systems or data;

Establish continuous monitoring obligations ensuring that service provider security performance is measured, reported, and acted upon throughout the engagement lifecycle;

Define mandatory incident notification and response obligations for service providers who experience or discover security events affecting BFS data or services;

Ensure timely, controlled, and secure offboarding of service providers when engagements end, preventing unauthorized residual access to BFS systems or data;

Ensure compliance with BSP Circular 1140, BSP Circular 144 (outsourcing guidelines), PCI DSS v4.0 Requirement 12.8, and all applicable regulatory third-party risk management obligations.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all BFS personnel and functions involved in the procurement, contracting, management, or oversight of service provider relationships, including:

Procurement and vendor management teams responsible for evaluating, contracting, and managing third-party relationships;

IT Operations, IT Security, and Enterprise Architecture teams that interface technically with service providers;

Business units that sponsor, engage, or manage service provider relationships on behalf of BFS;

Legal and Compliance functions responsible for contract review and regulatory compliance;

Internal Audit responsible for independently assessing third-party risk management effectiveness;

Senior management and Board members accountable for outsourcing governance under BSP regulations.

## 2.2  Service Provider Scope

This policy applies to all third-party entities that fall into one or more of the following categories:

### 2.2.1  Technology and IT Service Providers

Software vendors supplying commercial-off-the-shelf (COTS) applications deployed in BFS environments;

Software-as-a-Service (SaaS) providers hosting applications that process BFS data;

Cloud Infrastructure and Platform-as-a-Service (IaaS/PaaS) providers hosting BFS workloads;

Managed IT service providers operating BFS infrastructure or applications;

Managed Security Service Providers (MSSPs) providing SOC, monitoring, or security operations services;

System integrators and IT consulting firms with access to BFS systems during project engagements.

### 2.2.2  Data Processing and Handling Providers

Payment processors, card scheme operators, and SWIFT service bureaus handling BFS payment data;

Core banking system vendors and their support personnel;

Data analytics, business intelligence, or AI/ML service providers processing BFS business data;

Document management and archival service providers handling BFS records.

### 2.2.3  Operational Service Providers

ATM and POS device vendors with remote maintenance access to BFS terminals;

Telecommunications providers supplying network connectivity, WAN, and internet services;

Physical security and facilities management providers with access to BFS premises and data centers;

Business process outsourcing (BPO) providers handling customer service, back-office, or operational functions.

### 2.2.4  Professional Services Providers

IT auditors, penetration testing firms, and security assessment providers with access to BFS systems or architecture documentation;

Legal, advisory, and consulting firms with access to CONFIDENTIAL BFS information;

Recruitment firms and staffing agencies placing contractors in BFS with system access.

## 2.3  Exclusions

This policy does not apply to: publicly available software libraries and open-source components (governed by BFS-ISP-002, Software Asset Inventory); standalone software products with no network connectivity to BFS systems or data; and commodity utility providers (electricity, water) with no access to BFS IT systems. These exclusions shall be reviewed annually to confirm they remain appropriate.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Service Provider | Any third-party entity that provides technology, services, or resources to BFS under a commercial or contractual arrangement, and that in doing so has access to, processes, stores, transmits, or influences the security of BFS information assets or systems. Used interchangeably with 'vendor', 'supplier', 'outsourced provider', and 'third party' in this policy. |

| Nth-Party (Sub-processor / Subcontractor) | A service provider engaged by a primary BFS service provider to perform part of the contracted service. BFS is not in a direct contract with an Nth-party but may be exposed to their security posture through the primary provider. PCI DSS and RA 10173 both impose obligations regarding Nth-party data handling. |

| Third-Party Risk | The risk that a service provider's actions, omissions, security failures, or business continuity failures will adversely affect BFS's information security posture, operational continuity, regulatory compliance, or customer trust. |

| Service Provider Inventory | The authoritative register of all BFS service providers, maintained by the Procurement/Vendor Management team in the BFS CMDB or equivalent system, recording each provider's identity, service scope, risk classification, contract details, and assessment status. |

| Inherent Risk | The level of third-party risk before considering any controls, mitigations, or contractual protections. Inherent risk is driven primarily by the type and sensitivity of data accessed and the criticality of the service provided to BFS operations. |

| Residual Risk | The remaining level of third-party risk after considering the controls and mitigations applied — including contractual security requirements, assessment findings, and ongoing monitoring. Residual risk is the basis for risk acceptance decisions. |

| Vendor Risk Assessment (VRA) | A structured evaluation of a service provider's security posture, conducted before engagement (initial VRA) and periodically during the engagement (periodic VRA), covering: information security policies, data protection practices, access controls, incident response capability, business continuity, and relevant certifications. |

| Security Questionnaire | A structured set of security questions administered to service providers as part of the VRA process, covering the provider's security policies, controls, certifications, incident history, and sub-processor management practices. May be administered as a self-assessment or validated through third-party assessment evidence. |

| Right to Audit | A contractual provision granting BFS the right to conduct or commission independent security assessments, penetration tests, or audits of the service provider's environment and controls relevant to the BFS engagement, with reasonable notice. |

| Data Processing Agreement (DPA) | A contract or contract addendum required under RA 10173 when a service provider processes personal data on behalf of BFS (as personal information controller). The DPA defines the provider's obligations as a personal information processor. |

| Master Service Agreement (MSA) | The primary contractual agreement between BFS and a service provider establishing the overall terms of the relationship, including general security obligations, liability, indemnification, and termination provisions. |

| Service Level Agreement (SLA) | A component of the service provider contract defining measurable performance commitments, including security-relevant SLAs such as availability, incident notification timelines, and vulnerability remediation timelines. |

| Fourth-Party Risk | Risk introduced by a service provider's own sub-processors or supply chain — entities two or more levels removed from BFS in the supply chain. Fourth-party risk is increasingly significant as service providers rely on cloud platforms and specialized sub-processors. |

| Outsourcing | The arrangement by which BFS delegates the performance of specific IT functions, operational processes, or services to an external service provider on an ongoing basis. BSP Circular 144 and the MORB impose specific requirements for outsourced functions affecting BFS's core banking operations. |

| Critical Third Party | A service provider whose failure, compromise, or discontinuation of service would materially impact BFS's ability to deliver core banking services, meet regulatory obligations, or protect customer data. Critical third parties require the highest level of due diligence, contract protection, and ongoing oversight. |

| Concentration Risk | The risk arising from over-reliance on a single service provider (or a small number of providers) for critical services, creating a single point of failure in BFS's operational resilience. |

| Vendor Offboarding | The structured process of terminating a service provider relationship in a manner that ensures all BFS data and credentials held by the provider are securely returned or destroyed, all access is revoked, and all contractual obligations are formally closed. |

| Security Schedule | A contract annex or addendum to the MSA or SLA that defines the specific information security requirements applicable to the service provider, supplementing general security clauses with technical standards, compliance obligations, and reporting requirements. |

# 4.  SERVICE PROVIDER RISK CLASSIFICATION FRAMEWORK

BFS classifies all service providers into four risk tiers based on two primary factors: (1) the sensitivity of BFS data they access or process, and (2) the criticality of the service they provide to BFS operations. Risk tier determines the required depth of due diligence, contractual requirements, monitoring frequency, and approval authority for the engagement.

| Tier | Classification | Criteria | Examples | Review Frequency |

| --- | --- | --- | --- | --- |

| TIER 1 | CRITICAL | Accesses or processes TOP SECRET or CONFIDENTIAL data; OR provides services whose failure would cause immediate core banking disruption; OR operates within the PCI Cardholder Data Environment; OR has privileged or administrative access to CRITICAL BFS systems. | Core banking vendor; payment processor; SWIFT service bureau; MSSP; cloud provider hosting CRITICAL systems; PAM vendor. | Annual full VRA + continuous monitoring |

| TIER 2 | HIGH | Accesses CONFIDENTIAL data but not TOP SECRET; OR provides services whose failure significantly impacts multiple business functions; OR has remote administrative access to HIGH-criticality systems. | SaaS providers (HR, ERP, email); network monitoring vendors; DR site provider; ATM maintenance vendor; penetration testing firm. | Annual VRA + quarterly performance review |

| TIER 3 | MEDIUM | Accesses INTERNAL USE data only; OR provides services supporting non-critical internal functions; OR has limited, non-privileged access to BFS systems. | Training platforms; non-critical SaaS tools; courier services with document handling; printing and archival vendors. | Biennial VRA + annual performance review |

| TIER 4 | LOW | No direct access to BFS data or systems; OR provides commodity services with no information security relevance to BFS operations. | Office supplies vendors; utility providers with no IT access; purely physical logistics with no document handling. | On-boarding check only; no periodic VRA required |

| RISK TIER DETERMINATION:  Risk tier assignment is performed at the time of initial engagement by the IT Security team in consultation with the Procurement and Risk functions, and reviewed annually. A service provider's tier must be increased if: the scope of their data access expands; their service becomes more critical to BFS operations; or a significant security incident affecting their environment is reported. Tier increases take effect immediately and trigger an expedited VRA. |

| --- |

## 4.1  Risk Classification Decision Factors

The following factors are evaluated when assigning a risk tier to a service provider. Each factor is assessed independently; the highest single factor drives the tier assignment.

| Assessment Factor | TIER 1 Trigger | TIER 2 Trigger | TIER 3 Trigger | TIER 4 |

| --- | --- | --- | --- | --- |

| Data Classification Accessed | TOP SECRET or CONFIDENTIAL PCI CDE data | CONFIDENTIAL (non-CDE) | INTERNAL USE only | None / PUBLIC |

| Operational Criticality | Core banking, payment, ATM, SWIFT dependency | High — impacts multiple BFS functions | Moderate — single non-critical function | Negligible |

| Access Level | Privileged / administrative access to CRITICAL systems | Remote admin access to HIGH systems | Non-privileged access | No system access |

| Personal Data Volume | High volume PII / SPI processing (>10,000 records) | Moderate PII processing | Limited PII (<500 records) | No personal data |

| Business Continuity Impact | BFS cannot operate core services if provider fails | Significant degradation of multiple services | Degradation of a single non-critical service | No material impact |

| Sub-processor / Supply Chain Exposure | Provider uses sub-processors accessing BFS CDE or TOP SECRET data | Provider uses sub-processors accessing CONFIDENTIAL data | Provider uses sub-processors; no CONFIDENTIAL data | No sub-processors relevant to BFS |

| Regulatory Mandated Oversight | BSP-specified critical outsourcing; PCI DSS Level 1 SP | BSP-reportable outsourcing; PCI DSS in scope | General regulatory notification required | No regulatory requirement |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all BFS personnel, functions, and service providers within the scope of this policy.

## 5.1  Service Provider Inventory

PS-1.1  BFS shall maintain a comprehensive, current Service Provider Inventory registering all third-party service providers within the scope of this policy. The inventory shall be maintained by the Procurement/Vendor Management function in the BFS CMDB or equivalent vendor management system and shall be reviewed for completeness at least quarterly.

PS-1.2  The Service Provider Inventory shall record, at minimum, the following attributes for each registered provider: provider name and primary contact; service type and description; risk tier classification; data classification of BFS data accessed; contract reference and contract expiry date; last Vendor Risk Assessment date and outcome; next scheduled VRA date; named BFS relationship owner; compliance and certification status (ISO 27001, SOC 2, PCI DSS, etc.); and regulatory notification status (BSP outsourcing register where applicable).

PS-1.3  No service provider may be engaged, granted access to BFS data, or permitted to process BFS information on behalf of BFS without being registered in the Service Provider Inventory. Engaging an unregistered service provider is a policy violation subject to enforcement.

PS-1.4  The Service Provider Inventory shall be reconciled with the BFS accounts payable records at least quarterly to identify service providers receiving payment but not registered in the inventory — indicating shadow IT engagement or an inventory gap.

PS-1.5  The Service Provider Inventory shall be classified as CONFIDENTIAL. Access shall be limited to Procurement/Vendor Management, IT Security, Risk, Compliance, Legal, and Internal Audit. The full inventory shall not be shared externally without CISO and Legal approval.

## 5.2  Pre-Engagement Due Diligence

PS-2.1  Before engaging a new service provider or materially expanding the scope of an existing engagement, BFS shall conduct a Vendor Risk Assessment (VRA) appropriate to the service provider's risk tier. No BFS data shall be shared with, and no access to BFS systems shall be granted to, a new service provider until the VRA is complete and the engagement is approved at the appropriate authority level.

PS-2.2  The depth of pre-engagement due diligence shall be proportionate to the service provider's risk tier:

TIER 1 CRITICAL: Full VRA including security questionnaire, review of third-party audit reports (ISO 27001 certificate, SOC 2 Type II report, PCI DSS Report on Compliance where applicable), reference checks, incident history review, sub-processor assessment, and CISO and CIO approval required;

TIER 2 HIGH: VRA including security questionnaire, review of available audit reports or certifications, incident history review, and CISO approval required;

TIER 3 MEDIUM: Simplified VRA including security questionnaire or standard vendor security checklist, and IT Security Manager approval required;

TIER 4 LOW: Basic onboarding check confirming no data or system access, and Procurement Manager approval sufficient.

PS-2.3  VRA findings shall be documented in the Service Provider Inventory. For TIER 1 and TIER 2 providers, a formal VRA report shall be produced and retained. VRA findings rated HIGH or CRITICAL risk shall be addressed before engagement commencement — either through remediation by the provider, contractual compensating controls, or formal risk acceptance by the CISO and Risk Officer.

PS-2.4  BFS shall verify the financial viability, business continuity capability, and concentration risk profile of TIER 1 providers before engagement. Excessive concentration of critical services in a single provider without adequate contingency planning constitutes a material operational risk that must be escalated to the Board Risk Committee.

PS-2.5  BFS shall assess the service provider's sub-processor and supply chain practices as part of the TIER 1 and TIER 2 VRA. The provider shall disclose all sub-processors that will access BFS data or provide services relevant to the BFS engagement. Sub-processors accessing BFS CONFIDENTIAL or PCI CDE data must be identified, and the primary provider must demonstrate that sub-processors are subject to equivalent security standards.

## 5.3  Contract Security Requirements

PS-3.1  All service providers with access to BFS CONFIDENTIAL or higher data, or providing services rated TIER 1 or TIER 2, shall be subject to a formal contract containing a Security Schedule defining the specific security obligations applicable to the engagement. The Security Schedule is a mandatory contract exhibit — engagement without an executed Security Schedule is prohibited for TIER 1 and TIER 2 providers.

PS-3.2  At minimum, the Security Schedule shall require the service provider to:

Maintain an Information Security Management System (ISMS) or equivalent documented security program appropriate to the sensitivity of the data processed;

Implement security controls commensurate with the BFS data classification accessed, including encryption at rest and in transit, access controls, and secure deletion obligations;

Notify BFS of any security incident, confirmed breach, or potential breach affecting BFS data within the incident notification timelines defined in Section 5.5;

Permit BFS's right to audit — including the right to receive third-party audit reports (ISO 27001 certificate, SOC 2 Type II, PCI ROC) and, for TIER 1 providers, the right to conduct independent security assessments with reasonable notice;

Prohibit subcontracting or sub-processing of BFS data to additional parties without BFS's prior written consent;

Ensure that any sub-processors are bound by equivalent security obligations;

Return or securely destroy all BFS data upon contract termination, with written certification of destruction;

Comply with all applicable data privacy regulations including RA 10173 for any personal data processing;

Maintain business continuity and disaster recovery capabilities sufficient to restore the contracted service within the defined RTO/RPO;

Comply with BFS's vulnerability management patch SLAs for any software or infrastructure operated on behalf of BFS.

PS-3.3  All service providers processing personal data or SPI on behalf of BFS shall execute a Data Processing Agreement (DPA) as required by RA 10173. The DPA shall define: the categories of personal data processed, the processing purposes, the security obligations of the provider as a personal information processor, the data subject rights fulfillment obligations, and the breach notification obligations. The DPA is a mandatory contract document for any provider processing personal data — engagement without an executed DPA is a regulatory violation.

PS-3.4  Contracts with TIER 1 CRITICAL service providers shall include provisions for: service continuity assurance including BFS's right to source services from an alternative provider during extended outages; data portability and exit assistance obligations; and survival provisions ensuring security and data handling obligations persist through contract termination and a defined post-termination period.

PS-3.5  Contract security requirements shall be reviewed by IT Security before execution. IT Security may request changes to strengthen security provisions. Contracts that fail to meet minimum security standards after negotiation shall be escalated to the CISO, who may recommend against engagement or require compensating controls to be documented in a risk acceptance.

## 5.4  Ongoing Monitoring and Performance Review

PS-4.1  The security performance of all TIER 1 and TIER 2 service providers shall be monitored on an ongoing basis. Monitoring activities shall be proportionate to risk tier and shall include periodic VRA renewal, review of security certifications and audit reports, tracking of security-relevant SLA compliance, and monitoring of relevant threat intelligence for provider-specific threats or incidents.

PS-4.2  Periodic VRA renewal shall be conducted at the frequencies defined in Section 4 (annually for TIER 1, annually for TIER 2, biennially for TIER 3). The renewal VRA shall assess: any material changes to the provider's service scope or data access since the last assessment, updated security certifications or audit reports, any security incidents reported since the last assessment, and any changes to the provider's sub-processor ecosystem.

PS-4.3  For TIER 1 CRITICAL providers, BFS shall request and review annual third-party audit reports (ISO 27001 surveillance audit certificate, SOC 2 Type II report where available, or PCI DSS Report on Compliance for in-scope providers). Material audit findings that affect BFS's risk exposure shall be assessed by IT Security and remediation plans requested from the provider within thirty (30) days.

PS-4.4  BFS shall monitor threat intelligence sources for reported security incidents, breaches, ransomware attacks, and vulnerabilities affecting TIER 1 and TIER 2 service providers. Where a threat intelligence report indicates a significant security event at a provider, the BFS Relationship Owner shall contact the provider within twenty-four (24) hours to assess the impact on BFS and escalate to the CISO if BFS data or services may be affected.

PS-4.5  Quarterly performance reviews shall be conducted for TIER 1 providers and semi-annual reviews for TIER 2 providers, covering: SLA performance, security incident reports, remediation status of prior VRA findings, and any changes to the provider's risk profile. Performance review outcomes shall be documented and retained in the Service Provider Inventory.

PS-4.6  A Service Provider Risk Register shall be maintained by the Risk function, tracking the current risk status, outstanding remediation items, and open exceptions for all TIER 1 and TIER 2 providers. The Risk Register shall be reviewed quarterly by the CISO and Chief Risk Officer, and key risk indicators shall be reported to the Board Audit and Risk Committee quarterly.

## 5.5  Incident Notification and Response

PS-5.1  All service providers handling BFS CONFIDENTIAL data or providing TIER 1 or TIER 2 services shall be contractually required to notify BFS of any security incident, confirmed or suspected breach, or significant security event affecting systems or data relevant to the BFS engagement. Notification timelines shall be:

Incidents confirmed as affecting BFS CONFIDENTIAL data or BFS system access: notification within four (4) hours of the provider's confirmation of the incident;

Incidents suspected but unconfirmed as affecting BFS data: notification within twenty-four (24) hours of the provider's awareness of the suspected event;

Significant security events affecting the provider's infrastructure that could plausibly affect BFS services or data (e.g., ransomware in the provider's environment, even if BFS systems appear unaffected at the time): notification within twenty-four (24) hours.

PS-5.2  Upon receipt of a service provider security incident notification, the BFS Relationship Owner shall immediately notify the CISO. The CISO shall activate the BFS incident response process (BFS-ISP-009 Incident Response), assess the impact on BFS systems and data, and determine whether BSP and/or NPC notification is required.

PS-5.3  If a service provider incident involves confirmed or probable exposure of BFS customer personal data, the CISO shall ensure the 72-hour NPC breach notification clock is tracked from the moment BFS has reasonable grounds to believe a personal data breach has occurred. The service provider's delay in notifying BFS does not delay BFS's NPC notification obligation — BFS must notify NPC within 72 hours of its own awareness.

PS-5.4  Following a service provider security incident affecting BFS, BFS shall: require the provider to conduct a post-incident investigation and provide BFS with the root cause analysis and remediation plan; assess whether the provider's security controls remain adequate for continued engagement; and determine whether additional contractual protections, enhanced monitoring, or engagement termination is appropriate.

PS-5.5  BFS shall conduct a Supplier Security Incident Review at least annually, documenting all service provider incidents reported during the year, the outcomes of BFS's response, and any lessons learned for the service provider risk management program.

## 5.6  Service Provider Access Governance

PS-6.1  All service provider personnel accessing BFS systems or data shall be granted access only through the BFS Identity and Access Management framework (BFS-ISP-005). Service provider accounts shall be: individually named (no shared accounts); provisioned with the minimum necessary access for their role; time-limited and tied to the contract duration; and subject to the same MFA requirements as BFS employees for privileged access.

PS-6.2  Privileged access by service provider personnel to CRITICAL or HIGH BFS systems shall be brokered through the BFS PAM platform, with session recording enabled. BFS shall retain the ability to immediately terminate any service provider session at any time without notice if a security concern arises.

PS-6.3  Remote access by service provider personnel shall traverse the BFS VPN or approved secure remote access channel. Direct internet-facing access to BFS management interfaces from service provider networks is prohibited.

PS-6.4  BFS shall maintain a current register of all active service provider accounts and access credentials in the IAM system, linked to the Service Provider Inventory. Service provider accounts whose contract has expired or been terminated shall be disabled within twenty-four (24) hours of contract expiry or earlier upon notification of contract termination.

PS-6.5  Service provider personnel accessing BFS CONFIDENTIAL systems shall complete BFS security orientation training (or an equivalent program accepted by the CISO) before access is granted. The training completion record shall be maintained by the Procurement/Vendor Management team.

## 5.7  Secure Service Provider Offboarding

PS-7.1  When a service provider engagement ends — whether through contract expiry, termination, change of provider, or project completion — a formal Vendor Offboarding process shall be executed to ensure complete and secure disengagement.

PS-7.2  The Vendor Offboarding process shall ensure, at minimum, the following before the offboarding is considered complete:

All service provider personnel access to BFS systems is revoked, including: individual user accounts, service accounts, API keys, VPN credentials, and physical access badges;

All BFS data held by the service provider — whether on-premise at the provider's site, in cloud storage, or on portable media — has been returned to BFS or securely destroyed per BFS's data destruction requirements;

The service provider provides written certification of data return or destruction, identifying the data categories, quantities, and method of destruction;

All service provider-managed BFS infrastructure, configurations, or components are decommissioned, transferred, or documented per an agreed transition plan;

Any provider-held encryption keys for BFS data are transferred to BFS or destroyed as appropriate;

The final invoice and commercial close-out are confirmed with Legal and Finance.

PS-7.3  For TIER 1 CRITICAL providers, the offboarding process shall begin with a minimum advance planning period of ninety (90) days before the contract expiry or intended termination date, allowing adequate time for knowledge transfer, data migration, and continuity of service. Operational continuity planning for TIER 1 provider transitions shall be reviewed and approved by the CIO and CISO.

PS-7.4  Immediately upon notification of contract termination or expiry, all service provider personnel access to CRITICAL and HIGH systems shall be placed under heightened monitoring in the SIEM. Access by offboarding provider personnel outside normal operating hours or to data outside the scope of the final transition activities shall generate immediate SOC alerts.

PS-7.5  The Service Provider Inventory record for the offboarded provider shall be updated to reflect the offboarding date, confirmation of data destruction/return, and the identity of the BFS officer who confirmed offboarding completion. The record shall be retained for three (3) years after offboarding completion.

## 5.8  Cloud Service Provider Governance

PS-8.1  Cloud service providers (CSPs) — including AWS and any future IaaS, PaaS, or SaaS providers — are subject to this policy as TIER 1 or TIER 2 service providers depending on the data classification of BFS workloads they host and the criticality of the services they provide. CSP governance supplements but does not replace the cloud security controls defined in BFS-ISP-006 and BFS-ISP-012.

PS-8.2  BFS shall maintain and review the Shared Responsibility Model for each cloud service provider engagement, clearly documenting which security controls are the CSP's responsibility and which remain BFS's responsibility. The shared responsibility mapping shall be reviewed annually and upon any significant change to the cloud service configuration.

PS-8.3  Data residency requirements for cloud-hosted BFS data shall be evaluated against RA 10173 cross-border transfer requirements and BSP data residency guidance before selecting cloud regions or enabling data replication. Data classified as CONFIDENTIAL or higher shall not be hosted in cloud regions outside the Philippines without DPO approval confirming the legal basis for transfer and BSP notification where required.

PS-8.4  CSPs shall be assessed for: ISO 27001 and SOC 2 Type II certifications, PCI DSS Attestation of Compliance (for payment-related workloads), SLA commitments for availability and incident response, and the CSP's published incident notification procedures and their alignment with BFS's 4-hour notification requirement.

## 5.9  BSP Outsourcing Compliance

PS-9.1  BFS shall comply with all BSP Circular 144 (Amended Guidelines on Outsourcing) and MORB requirements for outsourced IT and operational functions. This includes: maintaining a Board-approved outsourcing policy; obtaining prior BSP notification or approval for material outsourcing arrangements as required; ensuring that outsourcing does not diminish BFS's accountability to BSP for the outsourced function; and maintaining the ability to terminate any outsourcing arrangement without material disruption to regulated operations.

PS-9.2  The CISO and Chief Compliance Officer shall maintain a current BSP Outsourcing Register recording all BFS outsourcing arrangements subject to BSP Circular 144. The register shall be reviewed annually and updated within thirty (30) days of any new engagement or material change to an existing arrangement. The register shall be available for BSP examination on request.

PS-9.3  For functions designated as material outsourcing under BSP Circular 144, BFS shall ensure: the service provider has adequate business continuity capability; BFS retains full access to its data in the event of provider failure; the contract does not prevent BSP from exercising its supervisory authority over the outsourced function; and BFS conducts at least annual reviews of the material outsourcing arrangement and reports findings to the Board.

# 6.  PROCEDURES

## 6.1  New Service Provider Engagement Procedure

The following procedure governs the onboarding of every new service provider relationship:

Sponsorship and Request: The BFS business unit or IT function sponsoring the engagement submits a New Vendor Engagement Request to the Procurement/Vendor Management team, documenting: the service required, the proposed provider, the data access scope, the BFS systems involved, the estimated contract value, and the intended start date.

Preliminary Risk Tier Assignment: IT Security reviews the engagement request and assigns an initial risk tier (TIER 1–4) based on the data access and service criticality factors in Section 4. The assigned tier determines the required due diligence depth.

Vendor Risk Assessment: The VRA is conducted by IT Security at the depth required for the assigned tier (Section 5.2). For TIER 1 and TIER 2, the provider completes the BFS Security Questionnaire and provides supporting evidence (audit reports, certifications). IT Security documents findings in a VRA Report.

Legal and Compliance Review: Legal reviews the proposed contract, including the Security Schedule and DPA (if personal data is involved). Any contract provisions inconsistent with the requirements in Section 5.3 are flagged for negotiation.

Risk Acceptance (if required): If the VRA identifies HIGH or CRITICAL risk findings that cannot be remediated before engagement, the CISO and Risk Officer assess whether a formal risk acceptance is appropriate. Risk acceptances for TIER 1 providers require Board Risk Committee notification.

Approval: The engagement is approved at the authority level required for the tier — CISO and CIO for TIER 1; CISO for TIER 2; IT Security Manager for TIER 3; Procurement Manager for TIER 4.

CMDB Registration: The provider is registered in the Service Provider Inventory with all required attributes. The contract reference, risk tier, VRA date, and relationship owner are recorded.

Access Provisioning: Service provider accounts are created in the BFS IAM system per BFS-ISP-005. Accounts are time-limited, individually named, and provisioned with minimum necessary access. PAM enrollment is completed for privileged access.

Security Orientation: Service provider personnel complete required security orientation training before access is granted.

Monitoring Activation: SIEM monitoring and any provider-specific threat intelligence subscriptions are activated.

## 6.2  Annual Vendor Risk Assessment Renewal Procedure

The following procedure governs the annual renewal of VRAs for TIER 1 and TIER 2 providers:

Scheduling: The Procurement/Vendor Management team generates the annual VRA renewal schedule for all TIER 1 and TIER 2 providers in Q1 each year. VRAs are scheduled to complete at least sixty (60) days before the contract renewal date to allow adequate time for risk-based contract renegotiation if required.

Change Impact Review: IT Security reviews the Service Provider Inventory record for any material changes since the last VRA — changes in data access scope, service criticality, sub-processor changes, or known security incidents — that may require a tier re-classification or targeted assessment.

Updated Security Questionnaire: The provider completes an updated BFS Security Questionnaire addressing: changes since the last assessment, current certification and audit report status, any security incidents in the prior year, and any changes to their sub-processor ecosystem.

Evidence Review: IT Security reviews updated third-party audit reports (ISO 27001, SOC 2 Type II, PCI ROC). For TIER 1 providers, any material audit findings are assessed for impact on BFS.

Finding Classification and Remediation Tracking: New or unresolved findings are classified by risk level. HIGH and CRITICAL findings are communicated to the provider with remediation timelines. Unresolved findings from prior VRAs that remain open are escalated.

VRA Renewal Report: IT Security produces an updated VRA Report documenting findings, changes, remediation status, and an overall risk rating. The report is reviewed by the CISO and stored in the Service Provider Inventory.

Contract Review Trigger: If the VRA renewal identifies significant new risks or unresolved critical findings, Legal is notified to assess whether contract amendment or termination notice is appropriate.

## 6.3  Service Provider Security Incident Response Procedure

When BFS receives notification of a security incident from a service provider, or independently becomes aware of a security event at a provider:

Notification Receipt: The BFS Relationship Owner receives the incident notification from the provider (or learns of the incident through threat intelligence). The CISO is notified immediately, regardless of the initial severity assessment.

Impact Assessment (within 4 hours of notification): The CISO and IT Security team assess: Is BFS data confirmed or suspected as involved? Has BFS system access been compromised? Is the provider's service to BFS affected? What is the worst-case data exposure?

BFS Incident Response Activation: If BFS data or system access is confirmed or suspected, the BFS incident response procedure is activated. Evidence preservation, network monitoring enhancement, and access review are initiated.

BSP Notification Assessment: The CISO and Compliance Officer assess whether the incident triggers BSP Circular 1048 notification obligations — significant cybersecurity incidents affecting BSP-supervised institutions' operations or customer data must be reported to BSP within defined timelines.

NPC Notification Assessment: If personal data of customers or employees may have been exposed, the DPO assesses whether the 72-hour NPC breach notification obligation is triggered. The 72-hour clock runs from BFS's awareness, not from the provider's notification.

Provider Escalation: BFS escalates formally to the provider, requesting: current incident status and impact assessment; data exposure confirmation; remediation timeline; and the provider's breach notification to their own regulatory authorities where applicable.

Access Review and Potential Suspension: BFS reviews the provider's current access to BFS systems. If the provider's environment is compromised and the risk of lateral access to BFS systems exists, the provider's access credentials are suspended pending investigation.

Post-Incident Review: Within thirty (30) days of incident closure, a formal post-incident review is conducted assessing the adequacy of the provider's response, the adequacy of contractual protections, and whether engagement continuity, enhanced monitoring, or contract action is appropriate.

## 6.4  Vendor Offboarding Execution Procedure

The following procedure ensures complete and secure disengagement from a departing service provider:

Offboarding Initiation: Upon contract termination notice or expiry notification, the Procurement/Vendor Management team initiates the Offboarding Checklist and assigns a named BFS officer as Offboarding Coordinator.

Data Inventory: IT Security and the business unit owner jointly compile an inventory of all BFS data held by the provider — including data location (cloud, on-premise, backup media), data category, volume, and classification.

Access Revocation Plan: IT Security generates the access revocation plan covering all provider personnel accounts, API keys, service accounts, VPN credentials, and physical access. For TIER 1 providers, access revocation is phased to avoid operational disruption while maintaining the 90-day transition plan.

Enhanced Monitoring Activation: SIEM monitoring of all provider access sessions is escalated during the offboarding period. Any access outside the agreed transition scope generates immediate alerts.

Data Return or Destruction: On or before the agreed data return/destruction date, the provider returns all BFS data or provides a data destruction certificate. IT Security verifies the completeness of data return/destruction against the data inventory.

Access Revocation Execution: All provider accounts and credentials are disabled and then deleted. Access revocation is confirmed by IT Operations and recorded in the IAM system.

Offboarding Certification: The BFS Offboarding Coordinator signs a Vendor Offboarding Completion Certificate confirming: data confirmed returned or destroyed, all access revoked, all infrastructure/components transitioned or decommissioned, and contract commercially closed.

Service Provider Inventory Update: The provider's record in the Service Provider Inventory is updated with offboarding date, data destruction confirmation, and access revocation confirmation. The record is retained for three (3) years.

# 7.  GUIDELINES

## 7.1  Security Questionnaire Design Guidelines

Tiered Questionnaire: BFS shall maintain separate questionnaire tiers — a comprehensive questionnaire for TIER 1 providers covering all security domains, a standard questionnaire for TIER 2 providers, and a simplified checklist for TIER 3 providers. One-size questionnaires generate excessive burden on low-risk vendors and insufficient depth for high-risk ones.

Evidence Requirements: The questionnaire for TIER 1 providers shall specify the evidence required to support each answer — not merely assertions. Acceptable evidence formats: ISO 27001 certificate with audit scope, SOC 2 Type II report (not Type I — Type I only tests design, not operational effectiveness), PCI DSS Attestation of Compliance, and penetration test executive summaries from reputable firms within the past twelve months.

Industry Standards Alignment: BFS shall align the Security Questionnaire with recognized industry standards — the Shared Assessments Standardized Information Gathering (SIG) questionnaire or the Cloud Security Alliance CAIQ — to reduce vendor questionnaire fatigue and leverage existing responses providers may have prepared for other clients.

Annual Refresh: The Security Questionnaire content shall be reviewed annually by IT Security and updated to address new threat scenarios, regulatory changes, and lessons from prior assessments.

## 7.2  Concentration Risk Management Guidelines

Single-Provider Dependency Review: BFS shall annually assess whether any critical operational function is dependent on a single service provider with no viable alternative. Critical single-provider dependencies shall be reported to the Board Risk Committee as a concentration risk.

Exit Strategy: For every TIER 1 provider, BFS shall maintain a documented exit strategy describing how BFS would transition the service to an alternative provider or in-house capability within the defined RTO if the current provider experienced a business failure, regulatory sanction, or security compromise making continued engagement impossible.

Geographic Concentration: BFS shall assess whether multiple TIER 1 providers share the same data center facility, cloud region, or geographic area, creating correlated resilience risks. Provider geographic diversification shall be a factor in TIER 1 provider selection.

## 7.3  Supply Chain Software Security Guidelines

Software Bill of Materials (SBOM): TIER 1 software vendors (those supplying software deployed in BFS production environments) shall be required to provide an SBOM for their product upon request, enabling BFS to assess the impact of newly disclosed CVEs in the vendor's software components (cross-reference: BFS-ISP-002 and BFS-ISP-007).

Software Update Security: Service providers supplying software updates or patches to BFS shall authenticate update packages cryptographically — BFS shall verify the integrity and authenticity of all software updates from TIER 1 and TIER 2 vendors before deployment to production.

Development Security Practices: TIER 1 software vendors shall be required to demonstrate secure software development lifecycle practices — including SAST, DAST, SCA, and penetration testing of released products — either through direct evidence or by reference to their SOC 2 Type II SD-related controls.

Open Source in Vendor Products: Where a vendor's product includes significant open-source components (as revealed by SBOM or disclosed in contract negotiation), BFS shall assess whether the vendor has a documented open-source vulnerability management program and tracks CVE disclosures for embedded components.

## 7.4  AI and Emerging Technology Service Provider Guidelines

AI/ML Service Providers: Service providers offering AI, machine learning, or large language model services that process BFS data require enhanced due diligence beyond standard VRA, covering: model training data governance (ensuring BFS data is not used to train external models without explicit consent), data retention and deletion policies for inference-time data, explainability and auditability of AI decisions affecting BFS customers, and compliance with any forthcoming Philippine AI regulatory guidance.

SaaS AI Tools: Browser-based and API-based AI productivity tools that employees use for BFS work must be assessed and approved before use with any BFS INTERNAL or higher classified data. Employees shall not input BFS CONFIDENTIAL data into unapproved AI tools or public LLM services.

Cloud-Native AI Services: Where BFS uses cloud-native AI services (e.g., AWS Bedrock, AWS SageMaker) from existing TIER 1 CSPs, the AI service is considered an extension of the CSP engagement and falls within the existing TIER 1 assessment — provided the data processing is within the same cloud account and region scope already assessed.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board of Directors / Board Audit & Risk Committee | Provides governance oversight of BFS outsourcing and third-party risk management program. Reviews significant third-party risks, concentration risks, and material outsourcing arrangements as required by BSP Circular 144. Reviews quarterly Third-Party Risk Register summary. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise service provider management program from an IT perspective. Approves TIER 1 engagements jointly with CISO. Reviews BSP Outsourcing Register. Approves TIER 1 provider offboarding and transition plans. Ensures adequate internal capability exists to manage critical third-party relationships. |

| Chief Information Security Officer (CISO) | Responsible for design, implementation, and enforcement of this policy. Approves security requirements in vendor contracts. Reviews all VRA outcomes for TIER 1 and TIER 2 providers. Approves risk acceptances for VRA findings. Signs off on TIER 1 provider engagement and offboarding. Oversees the Third-Party Risk Register. Manages provider incident response. Co-approves TIER 1 engagements. |

| Chief Risk Officer | Maintains the Third-Party Risk Register. Reviews and approves risk acceptances for VRA findings. Reports third-party risk posture to the Board Risk Committee quarterly. Manages concentration risk assessment and escalation. |

| Data Privacy Officer (DPO) | Reviews and approves Data Processing Agreements with all service providers processing personal data. Assesses cross-border data transfer implications of cloud service arrangements. Manages NPC notification obligations in provider incident events. Reviews data privacy provisions in the Security Questionnaire. |

| Chief Compliance Officer | Maintains the BSP Outsourcing Register. Manages BSP notification and approval for material outsourcing arrangements under BSP Circular 144. Coordinates regulatory examination evidence related to service provider management. |

| Procurement / Vendor Management Team | Owns and maintains the Service Provider Inventory. Manages the end-to-end vendor engagement lifecycle — from request through onboarding, contract management, performance review, and offboarding. Coordinates VRA scheduling. Maintains contract register. Manages commercial and contractual relationships with all service providers. |

| IT Security Team | Conducts Vendor Risk Assessments for TIER 1, TIER 2, and TIER 3 providers. Develops and maintains the Security Questionnaire. Reviews and approves security provisions in vendor contracts. Monitors threat intelligence for provider-specific threats. Manages provider access governance in conjunction with IAM. |

| Legal Team | Reviews contracts for security and privacy provisions. Negotiates Security Schedule and DPA terms. Advises on liability and indemnification provisions for third-party incidents. Manages data return or destruction certification review. Advises on regulatory notification obligations. |

| Business Unit and IT Relationship Owners | Serve as the primary operational contact for their assigned service providers. Monitor day-to-day service performance. Report service concerns or security observations to IT Security. Participate in periodic performance reviews. Initiate vendor offboarding when contracts end. |

| Security Operations Center (SOC) | Monitors SIEM for service provider access events, anomalies, and alerts. Escalates unusual service provider activity. Activates enhanced monitoring during offboarding periods. |

| Internal Audit | Independently assesses the adequacy of the service provider risk management program, VRA quality, contract compliance, access governance, and offboarding completeness. Reports findings to the Audit and Risk Committee annually. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circular 1140 and BSP Circular 144 (Outsourcing Guidelines)

BSP Circular 144 (Amended Guidelines on Outsourcing) and the MORB establish specific requirements for outsourcing by BSP-supervised institutions. BFS's service provider management program directly addresses these requirements:

Board-approved outsourcing policy: This policy, as approved by the Board Audit and Risk Committee, fulfills the BSP requirement for a Board-approved outsourcing governance framework;

BSP Outsourcing Register: The BSP Outsourcing Register maintained by Compliance (Section 5.9.2) fulfills the BSP requirement for a register of material outsourcing arrangements;

Pre-engagement due diligence: The TIER 1 and TIER 2 VRA process fulfills BSP expectations for pre-engagement assessment of outsourced service providers;

Contractual protections: The Security Schedule requirements (Section 5.3) fulfill BSP requirements that outsourcing contracts contain adequate security, audit rights, and termination provisions;

Ongoing oversight: Annual VRA renewal and quarterly performance reviews fulfill BSP's expectation of continuous oversight of outsourced functions;

Business continuity for outsourced functions: Exit strategy requirements (Section 7.2) and TIER 1 contract continuity provisions (Section 5.3.4) fulfill BSP's requirement that outsourcing arrangements not impair BFS's ability to fulfill its regulatory obligations.

## 9.2  PCI DSS v4.0 Compliance

PCI DSS v4.0 Requirement 12.8 (Third-party service providers are managed with appropriate security practices) is directly implemented by this policy:

PCI DSS Requirement 12.8.1 — Maintain a list of all TSPs: Implemented by the Service Provider Inventory (Section 5.1) with identification of all PCI-in-scope service providers;

PCI DSS Requirement 12.8.2 — Written agreements with TSPs including acknowledgement of responsibility for security: Implemented by the Security Schedule requirement and shared responsibility documentation (Section 5.3 and 5.8.2);

PCI DSS Requirement 12.8.3 — Established process for engaging TSPs including due diligence: Implemented by the pre-engagement due diligence procedure (Section 6.1) and VRA process (Section 5.2);

PCI DSS Requirement 12.8.4 — Program to monitor TSP compliance with security requirements at least annually: Implemented by annual VRA renewal (Section 5.4.2 and 6.2);

PCI DSS Requirement 12.8.5 — Maintained information about which PCI DSS requirements are managed by each TSP and which by the entity: Implemented by the Shared Responsibility Model documentation requirement (Section 5.8.2).

## 9.3  Philippine Data Privacy Act (RA 10173)

Service provider management is a critical component of BFS's RA 10173 compliance program:

Section 20(f) (Security of Personal Information — Use of third parties): BFS as a personal information controller must ensure that third parties processing personal data on its behalf comply with RA 10173. The DPA requirement (Section 5.3.3) and privacy provisions in the VRA fulfill this obligation;

Section 22 (Principle of Accountability): BFS remains accountable for personal data processed by its service providers. The monitoring and oversight program (Section 5.4) and the incident notification requirements (Section 5.5.3) implement this accountability;

Section 21 (Security of Sensitive Personal Information): Service providers processing SPI must implement organizational, physical, and technical measures equivalent to those required of BFS itself. The Security Schedule must reflect these requirements for SPI-processing providers;

NPC Circular 16-01 (Security of Personal Data in Government Agencies): While BFS is a private sector entity, this circular establishes industry-relevant standards for personal data processor accountability that BFS applies through its third-party risk management program.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Quarterly reconciliation of Service Provider Inventory against accounts payable and contract registers to identify unregistered providers;

Monthly review of service provider access account currency — accounts for expired contracts flagged for immediate revocation;

Quarterly Third-Party Risk Register review by CISO and Chief Risk Officer;

Annual VRA completion tracking and reporting to CISO (TIER 1 and TIER 2 only);

Annual BSP Outsourcing Register review by Compliance;

Annual Internal Audit assessment of the service provider risk management program;

Monthly reporting of Third-Party Risk KPIs to the CISO and CIO.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Service Provider Inventory completeness (registered vs. active providers) | 100% | Quarterly |

| TIER 1 providers with current VRA (within 12 months) | 100% | Monthly |

| TIER 2 providers with current VRA (within 12 months) | 100% | Monthly |

| TIER 1 and TIER 2 providers with executed Security Schedule | 100% | Monthly |

| TIER 1 and TIER 2 personal data processors with executed DPA | 100% | Monthly |

| TIER 1 engagement approval with CISO and CIO sign-off | 100% | Per engagement |

| New TIER 1 engagement commenced without completed VRA (target: zero) | 0 | Per engagement |

| TIER 1 provider security incident notification within 4 hours (contractual) | 100% | Per incident |

| BFS response to provider incident notification within 4 hours (CISO notification) | 100% | Per incident |

| Service provider access accounts revoked within 24 hours of contract expiry | 100% | Per offboarding |

| TIER 1 offboarding: data return or destruction certificate received | 100% | Per offboarding |

| BSP Outsourcing Register current (updated within 30 days of change) | 100% | Monthly |

| TIER 1 providers with documented exit strategy | 100% | Annual |

| Concentration risk: critical functions with single-provider dependency (no exit strategy) | 0 | Annual |

| VRA HIGH/CRITICAL findings unresolved beyond agreed remediation timeline | 0 | Monthly |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Late registration of a new service provider; failure to schedule VRA renewal by required date; late update to BSP Outsourcing Register. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Engaging a TIER 3 provider without any security assessment; sharing BFS INTERNAL data with a service provider without a contract; failing to initiate offboarding access revocation within 24 hours of contract expiry. | Formal warning; immediate remediation; IT Security review of all access granted to the provider; CISO notification. |

| Serious | Engaging a TIER 1 or TIER 2 provider without completing a VRA or executing a Security Schedule; using an unapproved SaaS provider for CONFIDENTIAL BFS data; failing to notify CISO of a provider security incident notification; delaying provider access revocation after confirmed contract termination. | Suspension pending investigation; formal disciplinary action; immediate remediation; CISO and CRO escalation; Board notification if the omission creates material risk. |

| Critical / Legal | Sharing BFS CONFIDENTIAL or TOP SECRET data with an unapproved external party; deliberately concealing a service provider security incident from the CISO or DPO; engaging a sanctioned entity or an entity on a regulatory blacklist. | Immediate termination; referral to law enforcement; mandatory NPC notification if personal data is involved; mandatory BSP notification; regulatory sanctions risk. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Service provider management exceptions — situations where a provider cannot meet the standard VRA, contract, or monitoring requirements — represent accepted increases in third-party risk. Every exception must be formally justified, risk-assessed, approved at the appropriate authority level, and compensated by alternative risk reduction measures. Exceptions that result in BFS processing personal data with a provider who has not executed a DPA are not permissible under RA 10173 and cannot be approved as policy exceptions — they require legal remediation.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Condition / Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| Deferred VRA | Provider engaged before full VRA complete due to urgent operational need. | 30 days to complete VRA | CISO; engagement limited to minimum required access |

| Reduced Due Diligence | TIER 3 provider relying on standard checklist instead of questionnaire. | Permanent (annual review) | IT Security Manager |

| Missing Security Certification | TIER 2 provider lacks ISO 27001 or SOC 2; compensating controls documented. | 12 months; provider must obtain cert | CISO; compensating controls required |

| VRA Renewal Deferral | Annual VRA renewal delayed due to provider or BFS operational constraint. | 30 days maximum | CISO / IT Security Manager; enhanced monitoring required |

| Right-to-Audit Limitation | Provider contractually limits right-to-audit scope; third-party report accepted instead. | Permanent (annual review of adequacy) | CISO + Legal |

| Sub-processor Disclosure Delay | Provider discloses new sub-processor after contract execution. | 30 days to assess and approve/reject | IT Security Manager |

| Offboarding Timeline Extension | TIER 1 provider transition requires extended access beyond contract end. | 60 days maximum | CIO + CISO; enhanced monitoring mandatory |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) engaging a TIER 1 or TIER 2 provider to process personal data without an executed DPA (RA 10173 legal requirement — not a policy exception subject to waiver); (b) engaging a service provider who has been placed on a BSP sanctions list or a Philippine government prohibited vendor register; (c) allowing a service provider to retain BFS data after the contractually agreed data return/destruction deadline without CISO and Legal approval and a new written agreement. |

| --- |

## 11.3  Exception Process

Business unit or IT function submits a Vendor Management Exception Request via the ITSM portal, providing: specific policy requirement, provider name and tier, justification, risk assessment, compensating controls, and planned resolution date.

IT Security reviews compensating controls for adequacy. CISO approves all exceptions affecting TIER 1 and TIER 2 providers. DPO must be consulted for any exception involving personal data processing.

Approved exceptions logged in the Service Provider Inventory and central Exception Register with approval date, expiry, and compensating controls.

All exceptions reviewed quarterly by the CISO Office. Expired exceptions treated as policy violations.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon:

Significant changes to BFS's service provider landscape — new material outsourcing arrangements, major vendor replacements, or a significant service provider security incident;

New or amended BSP circulars (particularly outsourcing guidelines), NPC issuances affecting personal data processor obligations, or PCI DSS requirement updates affecting third-party management;

A significant third-party security incident demonstrating gaps in current VRA, contract, or monitoring controls;

Material changes to the ICT supply chain threat landscape — emergence of novel supply chain attack techniques or regulatory guidance on supply chain security;

Internal Audit or regulatory examination findings identifying material gaps in the service provider risk management program.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Aligned with CIS Controls v8 Control 15, ISO/IEC 27001:2022, PCI DSS v4.0 Req. 12.8, RA 10173, NIST SP 800-161, and BSP Circulars 1140 and 144. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 15 safeguards to ISO/IEC 27001:2022 Annex A controls, with PCI DSS v4.0 and RA 10173 cross-references.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 15.1 | Establish and Maintain an Inventory of Service Providers | A.5.19 | Information security in supplier relationships | IG1 |

| 15.2 | Establish and Maintain a Service Provider Management Policy | A.5.19 | Information security in supplier relationships | IG1 |

| 15.3 | Classify Service Providers | A.5.19 | Information security in supplier relationships | IG2 |

| 15.4 | Ensure Service Provider Contracts Include Security Requirements | A.5.20 | Addressing information security within supplier agreements | IG2 |

| 15.5 | Assess Service Providers | A.5.22 | Monitoring, review and change management of supplier services | IG2 |

| 15.6 | Monitor Service Providers | A.5.22 | Monitoring, review and change management of supplier services | IG2 |

| 15.7 | Securely Decommission Service Providers | A.5.19 | Information security in supplier relationships | IG2 |

| N/A | ICT supply chain security — software and hardware supply chain risks | A.5.21 | Managing information security in the ICT supply chain | All |

| N/A | Changes to supplier services — change management governance | A.5.23 | Information security for use of cloud services | IG2/3 |

| N/A | Cloud service security — shared responsibility, data residency | A.5.23 | Information security for use of cloud services | All |

| N/A | Data Processing Agreement — RA 10173 personal data processor obligations | A.5.34 | Privacy and protection of PII | All |

| N/A | Access control for service provider personnel | A.5.18 | Access rights | All |

| N/A | Audit logging of service provider access events | A.8.15 | Logging | All |

| N/A | Incident notification — contractual provider security incident reporting | A.5.26 | Response to information security incidents | All |

| N/A | Vulnerability management — patching obligations in provider contracts | A.8.8 | Management of technical vulnerabilities | All |

| N/A | Business continuity — service provider resilience and exit planning | A.5.30 | ICT readiness for business continuity | All |

| N/A | PCI DSS Req. 12.8.1 — TSP list and descriptions | A.5.19 | Information security in supplier relationships | All |

| N/A | PCI DSS Req. 12.8.2 — written agreements with TSPs | A.5.20 | Addressing information security within supplier agreements | All |

| N/A | PCI DSS Req. 12.8.3 — due diligence before engaging TSPs | A.5.22 | Monitoring, review and change management of supplier services | All |

| N/A | PCI DSS Req. 12.8.4 — annual TSP compliance monitoring program | A.5.22 | Monitoring, review and change management of supplier services | All |

| N/A | PCI DSS Req. 12.8.5 — shared responsibility for PCI DSS controls | A.5.19 | Information security in supplier relationships | All |

| N/A | BSP Circular 144 — outsourcing governance and BSP Outsourcing Register | A.5.19 | Information security in supplier relationships | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate maturity; IG3 = Advanced. BFS targets full IG2 compliance with IG3 controls (SBOM requirements from TIER 1 software vendors, AI/ML provider enhanced due diligence, continuous threat intelligence monitoring for provider incidents) deployed for CRITICAL and PCI CDE-relevant service providers.

# APPENDIX B:  Service Provider Inventory — Required Attributes

Each service provider registered in the BFS Service Provider Inventory shall include the following attributes at minimum. Completeness of inventory records is tracked as a KPI and audited quarterly by Procurement/Vendor Management.

| Attribute | Description / Example Values |

| --- | --- |

| Provider ID | Unique internal identifier (e.g., BFS-VND-0087) |

| Provider Legal Name | Full registered legal entity name |

| Primary Service Description | Summary of the services provided to BFS |

| Service Category | Technology / Data Processing / Operational / Professional Services |

| Risk Tier | TIER 1 CRITICAL / TIER 2 HIGH / TIER 3 MEDIUM / TIER 4 LOW |

| Data Classification Accessed | TOP SECRET / CONFIDENTIAL / INTERNAL / PUBLIC / None |

| Personal Data Processing | Yes / No. If Yes: categories of personal data and estimated volume |

| PCI DSS Scope | In-scope / Out-of-scope for Cardholder Data Environment |

| BFS Relationship Owner | Named BFS employee responsible for managing the relationship |

| IT Security Owner | Named IT Security contact for VRA and monitoring activities |

| Primary Provider Contact | Provider account manager or security contact details |

| Contract Reference | Contract ID and document management system location |

| Contract Start Date | Date of initial contract execution |

| Contract Expiry Date | Date of contract expiry or renewal decision date |

| Security Schedule Executed | Yes / No. If Yes: date of execution and version reference |

| DPA Executed | Yes / No / Not Applicable. If Yes: DPA reference and execution date |

| BSP Outsourcing Register Entry | Yes / No. If Yes: BSP registration reference |

| Last VRA Date | Date of most recent Vendor Risk Assessment completion |

| VRA Outcome | Low / Medium / High / Critical (overall risk rating from last VRA) |

| Outstanding VRA Findings | Number and highest severity of unresolved VRA findings |

| Next VRA Due Date | Scheduled date for next VRA renewal |

| Security Certification | ISO 27001 (certificate number and expiry); SOC 2 Type II (report date); PCI DSS Attestation of Compliance (date); other certifications |

| Sub-processors Disclosed | Yes / No. If Yes: list reference in supporting documentation |

| Access Type | Remote privileged / Remote non-privileged / On-site / No direct access |

| Active IAM Accounts | Number of currently active service provider user accounts in BFS IAM |

| Incident History | Date and brief description of any security incidents reported since engagement commencement |

| Last Performance Review Date | Date of most recent formal SLA and security performance review |

| Exit Strategy Reference | Document reference for TIER 1 exit strategy (required for TIER 1) |

| Engagement Status | Active / Renewal Pending / Offboarding / Offboarded |

| Offboarding Date | If offboarded: date offboarding was certified complete |

| Record Retention Expiry | Date after which the record may be archived (offboarding date + 3 years) |

# APPENDIX C:  Quick Reference Card

## C.1  Risk Tier Quick Reference

| Tier | Key Criteria | VRA Depth | Review Frequency | Approval Authority |

| --- | --- | --- | --- | --- |

| TIER 1 | CONFIDENTIAL PCI CDE data; core banking criticality; privileged admin access | Full VRA + audit report review + sub-processor assessment | Annual VRA + continuous monitoring | CISO + CIO |

| TIER 2 | CONFIDENTIAL (non-CDE) data; high operational criticality; remote admin access | Standard VRA + certification review | Annual VRA + quarterly performance review | CISO |

| TIER 3 | INTERNAL data only; moderate operational impact; non-privileged access | Simplified VRA / checklist | Biennial VRA + annual performance review | IT Security Manager |

| TIER 4 | No data or system access; low criticality | Onboarding check only | No periodic VRA | Procurement Manager |

## C.2  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| New vendor engagement requests | Procurement / Vendor Management | ITSM Portal \| procurement@bfs.com.ph |

| Vendor Risk Assessment | IT Security Team | security@bfs.com.ph |

| Contract Security Schedule review | IT Security + Legal | security@bfs.com.ph \| legal@bfs.com.ph |

| Data Processing Agreement | Data Privacy Officer | dpo@bfs.com.ph |

| Provider security incident notification | CISO Office (URGENT) | ciso@bfs.com.ph \| 24/7 hotline |

| BSP Outsourcing Register | Chief Compliance Officer | compliance@bfs.com.ph |

| Vendor offboarding initiation | Procurement / Relationship Owner | ITSM Portal — Vendor Offboarding Request |

| Service provider access issues | IT Operations / IAM Team | ITSM Portal \| iam@bfs.com.ph |

| Third-party risk escalation | Chief Risk Officer | risk@bfs.com.ph |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

## C.3  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| Provider incident notification to BFS — confirmed BFS data affected | Within 4 hours of provider's confirmation |

| Provider incident notification to BFS — suspected but unconfirmed | Within 24 hours of provider's awareness |

| BFS CISO notification upon receipt of provider incident notification | Immediately (same day) |

| NPC breach notification (if personal data affected) | Within 72 hours of BFS's awareness of probable breach |

| TIER 1 and TIER 2 VRA renewal | Annual |

| TIER 3 VRA renewal | Biennial |

| TIER 1 annual audit report review (ISO 27001/SOC 2/PCI ROC) | Annual |

| TIER 1 quarterly performance review | Quarterly |

| VRA HIGH/CRITICAL finding communication to provider | Within 30 days of VRA completion |

| Service provider access revocation after contract expiry | Within 24 hours |

| TIER 1 offboarding advance planning period | Minimum 90 days before contract expiry |

| Data return or destruction certificate receipt from offboarded provider | On or before agreed date (contract term) |

| Service Provider Inventory quarterly reconciliation with AP records | Quarterly |

| BSP Outsourcing Register update after new engagement or material change | Within 30 days |

| New TIER 1 engagement risk tier assignment | Before any data access is granted |

| TIER 1 engagement VRA completion | Before engagement commencement |

| Sub-processor disclosure review upon notification | Within 30 days of disclosure |

| Annual service provider risk register review — CISO and CRO | Quarterly |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-015  |  Service Provider Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
