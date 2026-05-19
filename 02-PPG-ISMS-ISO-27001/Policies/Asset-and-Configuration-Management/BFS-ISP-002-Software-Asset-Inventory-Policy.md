---
title: "BFS-ISP-002-Software-Asset-Inventory-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Asset-and-Configuration-Management/BFS-ISP-002-Software-Asset-Inventory-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:37Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Asset-and-Configuration-Management"
aliases:
  - "BFS-ISP-002-Software-Asset-Inventory-Policy"
creator: "Un-named"
created: "2026-04-10T10:14:00Z"
modified: "2026-04-12T02:13:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>INVENTORY AND CONTROL OF<br>SOFTWARE ASSETS<br>Policy Reference: BFS-ISP-002<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2025<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 2)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140<br>Companion to BFS-ISP-001: Inventory and Control of Enterprise Assets |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Inventory and Control of Software Assets |

| --- | --- |

| Policy Reference | BFS-ISP-002 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant regulatory, technological, or organizational change |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-020 (Acceptable Use); BFS-ISP-005 (Vulnerability Management); BFS-ISP-010 (Change Management) |

| Framework Alignment | CIS Controls v8 (Control 2); ISO/IEC 27001:2022 (A.5.9, A.5.10, A.8.8, A.8.19, A.8.20) |

| Regulatory Reference | Philippine Data Privacy Act RA 10173; BSP Circular 1140 (MORB); RA 10175 (Cybercrime Prevention Act) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Risk Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the governance framework, requirements, and operational procedures for the systematic identification, tracking, classification, authorization, and lifecycle management of all software assets used within or on behalf of BFS Financial Services (hereinafter "the Organization" or "BFS").

Software assets — spanning commercial off-the-shelf (COTS) applications, open-source components, internally developed code, cloud-hosted SaaS platforms, firmware, operating systems, middleware, and AI/ML models — represent both the operational backbone and a primary attack surface of the enterprise. Unmanaged, unauthorized, or unlicensed software introduces significant risks including malware propagation, exploitation of known vulnerabilities, regulatory non-compliance, and financial exposure through license penalties.

This policy directly implements CIS Controls v8, Control 2 (Inventory and Control of Software Assets), which establishes that only authorized software is installed and executed within the enterprise, and actively prevents the installation and execution of unauthorized software. It is further anchored in ISO/IEC 27001:2022 Annex A controls governing asset management, acceptable use, vulnerability management, and software installation on operational systems.

The specific objectives of this policy are to:

Establish and maintain a complete, accurate, and continuously updated inventory of all software assets authorized for use within the BFS environment;

Ensure that only authorized, licensed, and security-reviewed software is permitted to execute on BFS systems;

Define a formal allowlist governance model to prevent the execution of unauthorized, unapproved, or malicious software;

Assign clear accountability for software asset ownership, classification, and lifecycle management;

Integrate software inventory management with vulnerability scanning, patch management, and endpoint security controls to enable risk-based prioritization;

Maintain a Software Bill of Materials (SBOM) for all internally developed and third-party integrated software to support supply chain security and regulatory audit readiness;

Ensure compliance with all applicable software licensing agreements and intellectual property obligations;

Support compliance with the Philippine Data Privacy Act (RA 10173), BSP Circular 1140, and all applicable information security standards and regulations.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all individuals who install, deploy, operate, develop, procure, or otherwise interact with software on BFS-managed systems or networks, including:

All full-time and part-time employees of BFS across all departments and business units;

Contractors, consultants, managed service providers, system integrators, and software vendors with access to or delivering software into the BFS environment;

Development teams, architects, and engineers responsible for internally developed applications and platforms;

Third-party personnel operating under a BFS-issued device or remote access arrangement.

## 2.2  Software Asset Scope

This policy governs all categories of software assets, including but not limited to:

### 2.2.1  System Software

Operating systems (Windows, Linux, macOS, Unix, mobile OS);

Firmware and BIOS/UEFI software on hardware devices;

Hypervisors and virtualization platforms (VMware, Hyper-V, KVM);

Container runtime environments (Docker, containerd, Kubernetes distributions).

### 2.2.2  Application Software

Commercial off-the-shelf (COTS) enterprise applications (ERP, CRM, HRIS, banking core systems);

Productivity and collaboration tools (Microsoft 365, Zoom, Slack, and equivalents);

Security tools (EDR, SIEM, vulnerability scanners, DLP, IAM platforms);

Database management systems (DBMS) and data analytics platforms;

Development tools, IDEs, CI/CD platforms, and build toolchains.

### 2.2.3  Internally Developed Software

Bespoke applications, microservices, APIs, and integrations developed by BFS engineering teams;

AI-native platforms, machine learning models, inference engines, and associated data pipelines;

Automation scripts, RPA workflows, Infrastructure-as-Code (IaC) modules, and configuration templates;

Internally developed security tools, dashboards, and monitoring utilities.

### 2.2.4  Open-Source Software (OSS)

OSS libraries, frameworks, packages, and dependencies used within BFS-developed or integrated software;

OSS components embedded in COTS products, as disclosed through vendor SBOMs;

Container base images and OS packages sourced from public registries.

### 2.2.5  Cloud and SaaS Software

Software-as-a-Service (SaaS) platforms accessed by BFS personnel on BFS-managed or BYOD devices;

Cloud-native services with embedded software components (e.g., AWS Lambda, managed databases, AI services);

API-accessed third-party software services integrated into BFS systems.

### 2.2.6  Mobile and Endpoint Software

Mobile applications installed on BFS-issued or BYOD devices under MDM management;

Browser extensions, plug-ins, and add-ins installed on managed endpoints.

### 2.2.7  AI and Emerging Technology Software

Large Language Model (LLM) runtimes, inference servers, and AI/ML frameworks;

AI model weights and associated configuration artifacts deployed in production;

Generative AI tools and AI-assisted development platforms accessed by BFS personnel.

## 2.3  Environmental Scope

This policy covers software deployed or operated in all BFS environments: production, pre-production (staging/UAT), development, testing, disaster recovery, and training environments, whether hosted on-premise, in co-location facilities, on public cloud platforms (including AWS), or accessed remotely.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Software Asset | Any software program, application, script, library, package, firmware, model, or digital code artifact that is installed, executed, developed, or otherwise used on BFS systems or in the course of BFS business operations. |

| Authorized Software | Software that has been formally reviewed, approved, licensed (where applicable), and registered in the BFS Software Asset Inventory, and is therefore permitted to execute within the BFS environment. |

| Unauthorized Software | Any software present on or executing within the BFS environment that has not been formally approved and registered in the Software Asset Inventory, including pirated, expired-license, shadow IT, or personally installed software. |

| Software Allowlist (SAL) | The definitive list of software authorized for installation and execution on BFS endpoints and servers. Only software on the SAL is permitted to run; all other software execution is blocked or requires explicit approval. |

| Software Denylist | A list of software applications, packages, or categories explicitly prohibited from installation or execution within the BFS environment due to security, legal, compliance, or operational risk. |

| Software Asset Inventory (SAI) | The centralized, authoritative register of all software assets authorized for use within BFS, including version, licensing, owner, classification, and lifecycle status information. Maintained within or integrated with the CMDB. |

| Software Bill of Materials (SBOM) | A formal, machine-readable inventory of all software components, libraries, dependencies, and their versions that comprise a given application or system. Used for supply chain security, vulnerability tracking, and audit purposes. |

| Software License | The legal agreement governing the terms under which software may be used, copied, distributed, and modified. Unlicensed use of commercial software constitutes a legal violation and a policy breach. |

| Software Asset Manager (SAM) | The role or team responsible for managing the software license register, performing compliance reconciliations, and maintaining software inventory records. |

| Software Owner | An individual or role formally accountable for a software asset, responsible for its security classification, licensing compliance, update currency, and authorized use. |

| Shadow IT | Software, applications, or cloud services procured, installed, or used by individuals or teams without the knowledge or approval of the IT department and CISO Office. |

| End-of-Life (EOL) Software | Software for which the vendor has ceased providing security updates, patches, or technical support, resulting in a materially elevated security risk. |

| SBOM | Software Bill of Materials – a nested inventory of components within a software product. See definition above. |

| CVE | Common Vulnerabilities and Exposures – a publicly disclosed list of known cybersecurity vulnerabilities, maintained by MITRE. CVE identifiers are used in vulnerability management to track and prioritize remediation. |

| Open-Source Software (OSS) | Software with source code made available under a license that grants users the rights to use, study, modify, and distribute the software. OSS components require formal review, dependency tracking, and license compliance assessment before use in BFS systems. |

| SaaS | Software-as-a-Service – a software delivery model where applications are hosted by a third-party provider and accessed by users over the internet. SaaS platforms used for BFS business purposes are within scope of this policy. |

| CI/CD Pipeline | Continuous Integration / Continuous Delivery – an automated software build, test, and deployment pipeline. All software deployed through CI/CD pipelines into BFS environments must comply with this policy. |

| AI/ML Model | A trained algorithmic artifact deployed as part of a software system to perform inference, prediction, classification, or generation tasks. Treated as a software asset requiring inventory, classification, and lifecycle management. |

| EDR | Endpoint Detection and Response – security software deployed on endpoints to monitor, detect, and respond to threats. EDR also enforces application allowlisting on managed endpoints. |

| IaC | Infrastructure-as-Code – software-defined infrastructure templates (e.g., Terraform, CloudFormation) used to provision and configure cloud and on-premise resources. IaC modules are treated as software assets. |

# 4.  POLICY STATEMENTS

The following policy statements are mandatory. All personnel and third parties within the scope of this policy must comply. Non-compliance is subject to enforcement as described in Section 9.

## 4.1  Software Asset Inventory

PS-1.1  BFS shall establish, maintain, and continuously update a complete and accurate Software Asset Inventory (SAI) encompassing all software authorized for installation and use on BFS systems, networks, and cloud environments.

PS-1.2  The SAI shall be integrated with or maintained as a component of the BFS CMDB as defined in BFS-ISP-001. The SAI is the authoritative source of truth for all software asset records and shall be referenced for all security, compliance, and operational decisions.

PS-1.3  Software discovery tools shall be deployed on all managed endpoints, servers, and cloud environments to perform continuous, automated discovery and reconciliation of installed software against the SAI. Discovery results shall be reviewed for unauthorized software on a daily basis.

PS-1.4  All software present on BFS systems that is not registered in the SAI shall be treated as unauthorized software and subject to the response procedure defined in Section 5.4.

## 4.2  Software Authorization and Allowlist Governance

PS-2.1  Only software formally registered in the Software Asset Inventory and listed on the BFS Software Allowlist (SAL) is permitted to be installed on or execute within BFS-managed systems and endpoints.

PS-2.2  Application allowlist controls shall be enforced on all managed endpoints and servers through approved endpoint security and EDR tooling. Any attempt to execute software not on the allowlist shall be blocked and logged.

PS-2.3  All new software — including updates, upgrades, and new versions of existing authorized software — must undergo the formal software authorization process described in Section 5.1 before deployment into any BFS environment.

PS-2.4  The installation of unlicensed, pirated, personal, or unapproved software on any BFS-owned or BFS-managed device is strictly prohibited. Violations shall be subject to immediate remediation and disciplinary action.

PS-2.5  Shadow IT — the use of cloud services, SaaS applications, or software tools procured without IT and CISO Office approval — is prohibited. All cloud-based software services used for BFS business purposes must be formally authorized and registered in the SAI.

## 4.3  Software Licensing and Intellectual Property Compliance

PS-3.1  BFS shall maintain a software license register as a component of the SAI, recording for each software asset: the license type, license count or entitlements, license keys, vendor support status, and expiry or renewal dates.

PS-3.2  A software license compliance reconciliation shall be performed at least quarterly, comparing actual installed instances against license entitlements. Unlicensed instances shall be remediated within fifteen (15) business days of detection.

PS-3.3  Open-source software must be used only in accordance with its applicable license terms (e.g., MIT, Apache 2.0, GPL). OSS components with copyleft licenses (e.g., GPL, AGPL) that could affect the licensing of BFS intellectual property must be reviewed and approved by the Legal and Compliance function before incorporation into BFS products.

PS-3.4  BFS shall not circumvent, modify, or misuse software license protection mechanisms. Any suspected license violation must be reported to the IT Asset Management team and Compliance Officer immediately.

## 4.4  Software Classification

PS-4.1  All software assets shall be classified based on their criticality to BFS operations, the sensitivity of data they process, and the potential business impact of their compromise or unavailability.

PS-4.2  Software classification shall directly govern the security controls applied to the software, including: patch priority, access controls, monitoring requirements, secure coding requirements, and disposal obligations.

PS-4.3  Software assets that process, store, or transmit personal data or Sensitive Personal Information (SPI) as defined under RA 10173 shall be classified at a minimum as CONFIDENTIAL and subject to applicable data privacy controls including Privacy Impact Assessment (PIA).

## 4.5  Secure Software Development and Deployment

PS-5.1  All software developed by or on behalf of BFS shall be developed in accordance with the BFS Secure Software Development Lifecycle (SSDLC) Policy, which mandates security requirements from design through retirement.

PS-5.2  A Software Bill of Materials (SBOM) shall be produced and maintained for all internally developed software and for all third-party software integrated into BFS systems. The SBOM shall be stored in the SAI and updated with each significant software release.

PS-5.3  Software shall not be deployed from a development or testing environment into production without completing the required security testing gates, code review, and deployment authorization as defined in the BFS Change Management and SSDLC policies.

PS-5.4  All software deployed to BFS production environments shall be deployed via approved, automated CI/CD pipelines incorporating security scanning (SAST, DAST, SCA, and secret detection). Manual deployments bypassing the approved pipeline are prohibited except under an emergency change process with CISO concurrence.

## 4.6  Vulnerability and Patch Management Integration

PS-6.1  The SAI shall be continuously integrated with the BFS vulnerability management platform to enable automated mapping of known CVEs to installed software versions across all environments.

PS-6.2  Software assets with known exploitable vulnerabilities (as rated Critical or High in the CVSS scale) shall be prioritized for patching in accordance with the BFS Vulnerability and Patch Management Policy. Patch SLAs shall be tracked against the SAI.

PS-6.3  End-of-Life (EOL) software for which vendor security patches are no longer available shall not be used in production without a documented and CISO-approved risk acceptance and compensating controls plan. An EOL software migration plan shall be developed and implemented within ninety (90) days of EOL announcement.

PS-6.4  Software version data in the SAI shall be updated automatically following patch deployment, and reconciled against vulnerability scan results to confirm patch effectiveness.

## 4.7  Third-Party and Open-Source Software Supply Chain Security

PS-7.1  All third-party software and OSS components incorporated into BFS systems shall be sourced exclusively from verified, trusted sources (vendor websites, official package registries). Software sourced from unofficial or unknown repositories is prohibited.

PS-7.2  A formal vendor software security assessment shall be conducted before onboarding any new critical software vendor, and reviewed annually thereafter or upon material changes to the software or vendor's security posture.

PS-7.3  OSS components shall be reviewed for known CVEs, license compliance, maintenance status (active vs. abandoned), and security posture prior to approval. Abandoned or unmaintained OSS components shall not be used in production systems.

PS-7.4  Software integrity shall be verified before installation. Where available, digital signatures, checksums, or signed package manifests shall be validated to confirm that software has not been tampered with in transit or at rest.

## 4.8  AI and Emerging Technology Software Governance

PS-8.1  AI/ML models, LLM runtimes, and associated AI software components deployed within BFS systems shall be treated as first-class software assets and fully inventoried in the SAI, including model version, training data provenance, inference framework, and intended use case.

PS-8.2  AI software assets shall be subject to the same authorization, classification, vulnerability management, and SBOM requirements as all other software assets under this policy, with additional governance requirements as defined in the BFS AI Governance Policy.

PS-8.3  Generative AI tools and AI-assisted development platforms (including AI coding assistants) must be approved and registered before use by BFS personnel on BFS systems or for BFS work. Use of unapproved AI tools constitutes unauthorized software use.

## 4.9  Software Decommissioning and Disposal

PS-9.1  Software that is decommissioned or replaced shall be formally uninstalled from all systems, removed from the SAI allowlist, and its license entitlements reclaimed or terminated in accordance with the license agreement.

PS-9.2  Before decommissioning any software that stores or processes data, the Asset Owner shall confirm that all associated data has been migrated to an approved successor system or securely deleted in accordance with the BFS Data Retention and Disposal Policy.

PS-9.3  The SAI shall be updated to reflect decommissioned software status within two (2) business days of confirmed removal, with the decommission date, method, and approver recorded.

# 5.  PROCEDURES

## 5.1  Software Authorization and Onboarding Procedure

All software — whether new, an upgrade, or a new deployment of existing software — must complete the following authorization workflow before installation in any BFS environment:

| Step | Activity | Criteria / Output | Responsible Party |

| --- | --- | --- | --- |

| 1 | Software Request: Requestor submits a Software Authorization Request (SAR) via the ITSM portal, providing: software name, version, vendor, business justification, intended environment, license type, and proposed owner. | Completed SAR in ITSM | Requesting business unit / developer |

| 2 | License Review: IT Asset Management verifies license compliance, confirms adequate license entitlements exist or initiates procurement, and logs license details in the Software License Register. | License entitlement confirmed | IT Asset Management / Procurement |

| 3 | Security Assessment: IT Security reviews the software for known vulnerabilities (CVE check), vendor security posture, supply chain risks, and compliance with BFS security standards. OSS components require SBOM review. | Security assessment report; risk rating assigned | IT Security / CISO Office |

| 4 | Privacy Impact Review: DPO or privacy team reviews software that will process personal data or SPI, confirming DPA compliance and completing a Privacy Impact Assessment (PIA) if required. | PIA completed (if required); data processing agreement in place | Data Privacy Officer |

| 5 | Technical Review: IT Operations or EA team validates technical compatibility with existing infrastructure, confirms security baseline applicability, and identifies any integration dependencies. | Technical compatibility confirmed | IT Operations / Enterprise Architecture |

| 6 | Approval: Software is approved by the designated authority based on classification (see 5.1.1) and added to the SAI and Software Allowlist. | Approval recorded in ITSM; SAI and SAL updated | IT Security Manager / CISO (per authority matrix) |

| 7 | Secure Deployment: Software is deployed via the approved CI/CD pipeline or a controlled deployment workflow. Pre-deployment security scan completed. EDR allowlist rule added (if endpoint software). | Software deployed; SAI status updated to 'Active' | IT Operations / DevSecOps |

| 8 | Post-Deployment Verification: IT Security confirms software is registered in monitoring tools (SIEM, vulnerability scanner), EDR coverage is active, and SAI record is complete. | Post-deployment checklist signed off | IT Security / Asset Management |

### 5.1.1  Software Approval Authority Matrix

| Software Classification | Approving Authority | Additional Requirements |

| --- | --- | --- |

| CRITICAL | CISO + CIO (dual approval) | Board-level risk notification for new Critical systems. Mandatory full security assessment. |

| CONFIDENTIAL | CISO approval | Privacy Impact Assessment required if processing PII/SPI. Vendor security assessment required. |

| INTERNAL USE | IT Security Manager | Standard security assessment. License review mandatory. |

| PUBLIC / LOW RISK | IT Operations Manager | License review mandatory. Basic security check. |

| Emergency / Temporary | CISO (expedited) | 30-day temporary authorization. Full process must be completed within 30 days. |

## 5.2  Software Asset Inventory (SAI) – Required Attributes

Each SAI record shall contain, at minimum, the following attributes:

| Attribute | Description / Example Values |

| --- | --- |

| Software ID | Unique SAI identifier (e.g., BFS-SW-0123) |

| Software Name | Full product or component name |

| Software Category | OS / Application / Library / Firmware / SaaS / AI-ML / IaC / OSS |

| Version / Build Number | Specific installed version and build (e.g., v4.2.1 build 20240918) |

| Vendor / Publisher | Software vendor name; 'Open Source' for OSS; 'BFS Internal' for in-house |

| Software Owner (Role & Name) | Accountable individual or role (aligned with BFS-ISP-001 asset ownership) |

| Software Custodian | Operational responsible party for patching and maintenance |

| Business Unit / Function | Primary business unit using the software |

| Criticality Level | Critical / High / Medium / Low |

| Data Classification | Top Secret / Confidential / Internal / Public |

| Processes Personal Data? | Yes / No; if Yes, link to PIA record |

| License Type | Commercial / Perpetual / Subscription / OSS (license name) / Freeware |

| License Count / Entitlements | Number of licensed users, seats, or instances |

| License Key / Reference | License key or contract reference (stored in secure vault) |

| License Expiry / Renewal Date | Date license expires or must be renewed |

| Installed Environments | Prod / Pre-Prod / Dev / DR / Test (multi-select) |

| Installed Hosts / Assets | Link to associated CMDB CI records from BFS-ISP-001 |

| Allowlist Status | Approved / Pending / Denied / Exception / Decommissioned |

| SBOM Reference | Link to SBOM document or record (for custom and integrated software) |

| Last Vulnerability Scan Date | Date and result of most recent CVE/vulnerability scan |

| Open CVEs | Number and severity of unresolved CVEs (auto-populated from vuln mgmt tool) |

| Patch / Update Status | Current / Patch pending / EOL / Exception |

| Vendor EOL Date | Date vendor ceases security support |

| Acquisition / Onboard Date | Date software was authorized and registered |

| Decommission Date | Date software was formally decommissioned (if applicable) |

| Related Policy Exceptions | Link to any active exception records |

| Regulatory Tags | e.g., PII processing, PCI-DSS in scope, BSP-regulated function |

| Last Review Date | Date of last annual software asset review |

## 5.3  Software Allowlist (SAL) Management

The Software Allowlist is maintained by the CISO Office and IT Security team, and enforced through endpoint management and EDR tooling. The following procedures govern SAL operations:

SAL Maintenance: The SAL shall be reviewed and updated within one (1) business day of any software authorization approval or revocation. The SAL is version-controlled and changes are logged with approver and timestamp.

SAL Enforcement: All managed endpoints shall have allowlist enforcement active at all times. Any endpoint where allowlist enforcement is disabled requires a documented exception with CISO approval.

SAL Audit: A full reconciliation of the SAL against the SAI shall be performed monthly. Discrepancies (software on SAL not in SAI, or vice versa) shall be resolved within five (5) business days.

SAL Exceptions: Requests to temporarily permit software not on the SAL shall follow the exception process in Section 10.

SAL Retirement: Software removed from the SAL shall have associated EDR rules and endpoint installation entries removed within two (2) business days.

## 5.4  Unauthorized Software Detection and Response

The following mandatory response procedure applies upon detection of unauthorized software within the BFS environment:

| Step | Action | Timeframe | Responsible Party |

| --- | --- | --- | --- |

| 1 | Detection: EDR, software discovery tool, or SIEM alert identifies software not present on the SAL or SAI. | Automated / real-time | EDR / SOC |

| 2 | Triage: SOC analyst confirms the software is genuinely unauthorized (not a false positive, pending approval, or recently licensed). | Within 2 hours | SOC Analyst |

| 3 | Blocking / Quarantine: Unauthorized executable is blocked from running (via EDR allowlist) and the affected endpoint is isolated from sensitive network segments if warranted by risk level. | Within 4 hours | SOC / IT Operations |

| 4 | Investigation: IT Security determines: origin of software (user-installed, supply chain, malware dropper), duration present, any data access or exfiltration, and whether other systems are affected. | Within 24 hours | IT Security Team |

| 5 | Disposition: Software is either (a) fast-tracked through the authorization process and added to the SAI/SAL, or (b) permanently removed and the affected system remediated. | Within 48 hours | IT Security Manager |

| 6 | Incident Logging: The event is logged as a security incident in the ITSM and escalated as an information security incident if data exposure is possible. | Concurrent | SOC / CISO Office |

| 7 | Root Cause and Corrective Action: Root cause is identified (e.g., gap in controls, user behavior, supply chain issue) and remediation actions documented and tracked to closure. | Within 5 business days | IT Security Manager / CISO |

## 5.5  Software Bill of Materials (SBOM) Procedure

SBOM Generation: An SBOM shall be generated for all new software releases deployed to BFS production environments. SBOMs shall be produced in a machine-readable format (SPDX or CycloneDX) using automated tooling integrated into the CI/CD pipeline.

SBOM Storage: SBOMs shall be stored in a secure, versioned repository accessible to the IT Security and Enterprise Architecture teams. Each SBOM shall be linked to the corresponding SAI record.

SBOM Vulnerability Analysis: Upon SBOM generation, an automated CVE scan shall be performed against all listed components. Results shall be reviewed by the security team and findings tracked in the vulnerability management platform.

Third-Party SBOM: BFS shall request SBOMs from critical software vendors at contract initiation and upon each major release. Vendors unable to provide SBOMs shall be flagged as elevated supply chain risk in the vendor risk register.

SBOM Refresh: SBOMs shall be regenerated and rescanned upon every significant software release, or at a minimum quarterly for software with frequent dependency updates.

## 5.6  EOL Software Management Procedure

Identification: The IT Asset Management team shall maintain a current EOL tracking register, monitoring vendor announcements and comparing against SAI version data. The CMDB/SAI shall be tagged with EOL status and vendor EOL date for all software assets.

Notification: When a software asset is identified as approaching EOL (within twelve (12) months), the Software Owner is formally notified and required to develop a migration or replacement plan.

Risk Assessment: The CISO Office shall perform a risk assessment for any EOL software still in use after the vendor EOL date, identifying exploitable vulnerabilities and the effectiveness of available compensating controls.

Compensating Controls: Approved compensating controls for EOL software in production shall include, as a minimum: network isolation or segmentation, enhanced monitoring via SIEM, vulnerability scanning at increased frequency, and restricted access.

Migration and Retirement: The Software Owner is accountable for executing the EOL software migration plan within the approved timeframe and formally decommissioning the EOL software in the SAI.

Escalation: EOL software in production without an approved risk acceptance and migration plan shall be escalated to the CIO and Board Audit & Risk Committee as a critical risk item.

## 5.7  Open-Source Software (OSS) Governance Procedure

OSS Approval: Before incorporating any OSS component into BFS systems, the developer or team must submit an OSS Approval Request identifying the component name, version, source repository, license type, and intended use.

License Review: Legal and Compliance review the OSS license to confirm compatibility with BFS's intended use and proprietary software obligations. Copyleft licenses (GPL, AGPL, LGPL) require additional legal review.

Security Review: IT Security assesses the OSS component for known CVEs, maintenance activity (commit frequency, last release, maintainer responsiveness), and supply chain risks.

SBOM Registration: Approved OSS components are added to the SBOM of the consuming application and registered in the SAI.

Ongoing Monitoring: Approved OSS components are monitored for new CVE disclosures and new releases. Components that become unmaintained or are found to have unresolvable high-severity vulnerabilities shall be replaced.

# 6.  GUIDELINES

## 6.1  Software Discovery and Inventory Tooling

Automated software discovery agents shall be deployed on all managed endpoints and servers to continuously enumerate installed software, versions, and installation paths. Discovery data shall feed automatically into the SAI for reconciliation.

For cloud environments, cloud-native configuration scanning tools (e.g., AWS Config, CSPM platforms) shall be used to enumerate software packages and container images deployed across all cloud accounts.

Container environments: All container images deployed in BFS shall be built from approved base images, scanned for vulnerabilities prior to deployment, and registered in the SAI. Use of non-approved public container images in production is prohibited.

Discovery scan results shall be reconciled against the SAI daily. Discrepancies (software discovered but not in SAI, or in SAI but not discovered) shall generate automated alerts for investigation.

## 6.2  Secure Software Development Guidelines

All BFS software developers must complete secure coding training at least annually. The SSDLC policy establishes mandatory security checkpoints at design, development, pre-release, and post-deployment stages.

Dependency management: Project teams shall use dependency management tools (e.g., npm audit, pip-audit, OWASP Dependency-Check, Snyk) integrated into the CI/CD pipeline to scan OSS dependencies for CVEs at every build.

Secrets management: Credentials, API keys, certificates, and secrets must never be hard-coded in source code. BFS-approved secrets management tooling (e.g., AWS Secrets Manager, HashiCorp Vault) shall be used for all credential storage and injection.

Code signing: All software artifacts deployed to production shall be digitally signed using BFS-managed code signing certificates. Unsigned artifacts shall be rejected by the deployment pipeline.

Developers shall not use personal accounts, personal repositories (e.g., personal GitHub), or unauthorized cloud storage for BFS source code or software artifacts.

## 6.3  SaaS and Cloud Software Management Guidelines

Business units seeking to procure SaaS applications must initiate a Software Authorization Request via the ITSM portal before signing any vendor contract or initiating free trials that involve BFS data.

IT and Security shall assess all SaaS vendors against the BFS Vendor Security Assessment framework, including review of SOC 2 Type II reports or equivalent certifications, data residency, encryption standards, and breach notification procedures.

Data classification shall drive SaaS approval: SaaS platforms processing CONFIDENTIAL or CRITICAL data require CISO approval and must meet enhanced security requirements including SSO integration, MFA enforcement, and audit log access.

Approved SaaS applications shall be integrated with BFS Identity and Access Management (IAM) / Single Sign-On (SSO) wherever technically feasible, to enable centralized access governance and deprovisioning.

## 6.4  Endpoint Software Management Guidelines

Software deployment to endpoints shall be performed through the approved endpoint management platform (e.g., SCCM, Intune, Jamf). Employees shall not self-install software; all software requests must be submitted via the ITSM portal.

Browser extensions and plug-ins installed on managed browsers are treated as software assets and must be on the SAL. IT Security shall review and curate the approved browser extension list quarterly.

Portable / executable software run from removable media without installation (e.g., USB-boot tools, portable executables) must be authorized and registered in the SAI before use on BFS systems.

## 6.5  AI Software and Model Governance Guidelines

AI models deployed in production shall be versioned, signed, and have their model card (describing purpose, training data, performance, and known limitations) stored alongside the SBOM in the SAI.

AI coding assistants (e.g., GitHub Copilot, Cursor, or similar tools) used by BFS developers must be approved under this policy. Developers must ensure AI-suggested code does not introduce unlicensed components or OSS with incompatible licenses.

Output artifacts generated by AI tools that are incorporated into BFS software (generated code, generated IaC, generated scripts) are considered software assets and must be reviewed, tested, and authorized before deployment.

# 7.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of the software asset management program. Reviews annual compliance metrics and KPIs. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise software asset management program. Ensures resources, tooling, and staffing are adequate. Co-approves policy with CISO. Reviews EOL software escalations. |

| Chief Information Security Officer (CISO) | Responsible for design, implementation, and enforcement of this policy. Approves the Software Allowlist and software classification framework. Oversees SOC software monitoring, SBOM program, and supply chain security. Reports software risk posture to the CIO and Board. |

| IT Asset Management / SAM Team | Maintains the SAI and Software License Register as the authoritative day-to-day operational function. Performs reconciliation, licensing compliance reviews, EOL tracking, and produces software inventory reports. |

| Software Owners (Business / Technical Leads) | Formally accountable for assigned software assets. Responsible for classification, licensing compliance, authorized use oversight, update currency, and decommissioning of their software assets. |

| IT Operations / System Administrators | Operationally responsible for deploying, patching, and maintaining software on systems under their management. Enforces deployment standards. Removes unauthorized software upon detection. |

| Enterprise Architecture Team | Ensures software asset management requirements are embedded in solution design and technology standards. Maintains approved technology stacks, IaC templates, approved base images, and CI/CD security gates. |

| Security Operations Center (SOC) | Monitors SAI and endpoint telemetry for unauthorized software, policy violations, and software-related security events. Responds to unauthorized software alerts. Maintains software-related SIEM correlation rules. |

| DevSecOps / Software Engineering Teams | Comply with SSDLC requirements. Maintain SBOMs for all software they develop. Use only approved dependencies. Integrate security scanning in CI/CD pipelines. Report OSS and dependency risks. |

| Data Privacy Officer (DPO) | Reviews software processing personal data or SPI. Ensures Privacy Impact Assessments are completed for applicable software. Maintains alignment with RA 10173 requirements. |

| Legal and Compliance | Reviews OSS licensing for copyleft implications. Validates vendor software contracts and data processing agreements. Supports regulatory compliance mapping. |

| Internal Audit | Independently assesses SAI accuracy, allowlist effectiveness, license compliance, and SBOM program maturity. Reports to the Audit and Risk Committee. |

| All Employees and Third Parties | Use only authorized software on BFS systems. Submit software requests via the ITSM portal. Do not install personal software, use shadow IT, or circumvent software controls. Report discovered unauthorized software to the IT Service Desk. |

# 8.  COMPLIANCE AND ENFORCEMENT

## 8.1  Compliance Monitoring

Compliance with this policy shall be monitored continuously and formally reported through the following mechanisms:

Daily automated reconciliation of software discovery results against the SAI and SAL, with alerts generated for unauthorized software;

Weekly SOC review of software-related SIEM alerts and EDR enforcement logs;

Quarterly software license compliance reconciliation and SAI accuracy audit;

Annual formal software asset management audit conducted by the IT Asset Management team and validated by Internal Audit;

Continuous integration of CVE data with the SAI to maintain a current software risk register, reported monthly to the CISO;

Monthly KRI reporting to the CISO and CIO, covering the KPIs defined below.

## 8.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| SAI Coverage Rate (authorized vs. discovered software) | ≥ 99% | Daily |

| SAL Enforcement Rate (endpoints with allowlist active) | 100% | Daily |

| Unauthorized Software Detection-to-Block Time | ≤ 4 hours | Per incident |

| Critical CVE Patch Compliance within SLA | ≥ 98% | Monthly |

| EOL Software in Production (without approved exception) | 0 | Monthly |

| Software License Compliance Rate | 100% | Quarterly |

| SBOM Coverage for In-House and Critical Third-Party Software | 100% of in-scope apps | Quarterly |

| OSS Dependency Vulnerability Scan Coverage | 100% of CI/CD pipelines | Per build |

| SAI Attribute Completeness Rate | ≥ 95% | Monthly |

| Unauthorized SaaS / Shadow IT Incidents | 0 tolerance; trend ↓ | Monthly |

| Overdue Software Asset Reviews | 0% | Monthly |

| Vendor SBOM Received for Critical Vendors | 100% | Annual |

## 8.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Failure to update SAI within required timeframe; incomplete software record attributes; late license renewal notification. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Installing personal or unlicensed software on a BFS device; subscribing to an unapproved SaaS service for BFS work; using an unapproved AI coding tool. | Formal warning; removal of software and affected account review; mandatory security awareness training; access privilege review. |

| Serious | Deliberate circumvention of software allowlist controls; repeated unauthorized software use; concealment of unauthorized software installations; deploying unvetted software to production. | Suspension pending formal investigation; disciplinary action up to termination of employment or contract; incident report to CISO. |

| Critical / Legal | Deliberate installation of malware, spyware, or data exfiltration tools; software license fraud; software piracy; unauthorized deployment of software to harvest customer data. | Immediate termination; referral to law enforcement; civil and criminal prosecution under RA 10175 (Cybercrime) and applicable Philippine law. |

# 9.  DATA PRIVACY COMPLIANCE

This policy directly supports BFS's obligations under the Philippine Data Privacy Act (Republic Act No. 10173) and its Implementing Rules and Regulations. The following requirements apply specifically to software assets:

Software Inventory as a Privacy Control: The SAI is a key input to the BFS Data Privacy program, enabling the Data Privacy Officer to identify all systems processing personal data or Sensitive Personal Information and to ensure appropriate controls are in place.

Privacy Impact Assessments (PIA): Any software authorized for use that will process personal data or SPI requires a PIA prior to deployment. The PIA shall assess collection purpose, data minimization, access controls, retention, and cross-border data transfer risks.

Data Processing Agreements: SaaS and third-party software vendors processing personal data on behalf of BFS must execute a Data Sharing Agreement or Data Processing Agreement that complies with NPC regulations and BFS's data privacy standards.

Data Subject Rights Support: Software systems processing personal data shall be capable of supporting data subject access, correction, deletion, and portability requests in accordance with the DPA. This capability shall be documented in the software's SAI record.

Breach Notification Linkage: In the event of a software-related security incident involving personal data, the Data Privacy Officer shall be immediately notified to assess breach notification obligations under the DPA (72-hour NPC notification rule for notifiable breaches).

AI and Data Privacy: AI/ML software processing personal data shall undergo enhanced privacy review, including assessment of automated decision-making implications, model explainability, and potential for discriminatory outcomes, consistent with NPC guidance.

| REGULATORY NOTE:  BFS, as a BSP-supervised financial institution, is also subject to BSP Circular 1140 (MORB Chapter on IT Risk Management), which requires maintaining an accurate IT asset inventory including software. Software asset records must be producible upon request during BSP examinations. |

| --- |

# 10.  EXCEPTIONS HANDLING

## 10.1  Exception Principles

BFS acknowledges that specific operational, technical, or business requirements may necessitate deviations from this policy. All exceptions must be formally requested, risk-assessed, approved by the appropriate authority, documented, time-bound, and subject to compensating controls.

## 10.2  Exception Categories

Temporary Allowlist Exception: Permission to temporarily execute software not on the SAL (e.g., vendor support tools, penetration testing tools). Maximum duration: thirty (30) days. Requires CISO approval.

EOL Software Exception: Permission to continue operating EOL software pending migration. Requires documented risk acceptance, compensating controls, and a migration plan. Maximum duration: ninety (90) days. Requires CISO + CIO approval.

License Compliance Exception: Temporary over-deployment of licensed software while procurement is completed. Maximum duration: thirty (30) days. Requires SAM team and Procurement approval.

SSDLC Gate Exception: Permission to deploy software that has not completed all SSDLC security gates. Requires CISO approval, documented residual risk, and a defined remediation plan. Prohibited for CRITICAL classification deployments.

## 10.3  Exception Process

Requestor submits a Software Policy Exception Request Form via the ITSM portal, specifying the policy section, justification, duration, risk assessment, and proposed compensating controls.

CISO Office performs risk assessment and determines approval authority based on risk level and exception type.

Approved exceptions are logged in the Exception Register with: approval date, approving authority, expiry date, compensating controls, and monitoring requirements.

All active exceptions are reviewed monthly by the CISO Office and reported quarterly to the Audit and Risk Committee.

Expired exceptions not renewed are automatically treated as policy violations and subject to enforcement action.

| WARNING:  No exception may be granted for software on the BFS Software Denylist. No exception may waive regulatory obligations under RA 10173, RA 10175, or BSP regulations without the written concurrence of the Compliance Officer and, where required, the relevant regulatory authority. |

| --- |

# 11.  REVIEW AND REVISION HISTORY

## 11.1  Policy Review Schedule

This policy shall be formally reviewed annually or upon:

Significant changes to software delivery models (e.g., adoption of new cloud platforms, shift to AI-native development);

Major updates to CIS Controls v8 or ISO/IEC 27001;

New or amended regulatory guidance from the BSP, NPC, or other applicable regulator;

Material findings from an internal or external audit, regulatory examination, or significant software-related security incident;

Introduction of significant new software categories (e.g., AI platforms, new programming languages, new IaC frameworks) not covered by current policy provisions.

## 11.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. New policy document aligned with CIS Controls v8 Control 2 and ISO/IEC 27001:2022. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps CIS Controls v8, Control 2 safeguards to their corresponding ISO/IEC 27001:2022 Annex A controls. Additional controls from adjacent CIS domains are included where they reinforce the software asset management program.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 2.1 | Establish and Maintain a Software Inventory | A.5.9 | Inventory of information and other associated assets | IG1 |

| 2.2 | Ensure Authorized Software is Currently Supported | A.8.8 | Management of technical vulnerabilities | IG1 |

| 2.3 | Address Unauthorized Software | A.8.19 | Installation of software on operational systems | IG1 |

| 2.4 | Utilize Automated Software Inventory Tools | A.5.9 | Inventory of information and other associated assets | IG2 |

| 2.5 | Allowlist Authorized Software | A.8.19 | Installation of software on operational systems | IG2 |

| 2.6 | Allowlist Authorized Libraries | A.8.28 | Secure coding | IG2 |

| 2.7 | Allowlist Authorized Scripts | A.8.28 | Secure coding | IG3 |

| N/A | Acceptable use of software assets | A.5.10 | Acceptable use of information and other associated assets | All |

| N/A | Software classification and labeling | A.5.12 | Classification of information | All |

| N/A | Vulnerability management – software CVEs | A.8.8 | Management of technical vulnerabilities | All |

| N/A | Secure software development lifecycle (SSDLC) | A.8.25 | Secure development life cycle | All |

| N/A | Security testing (SAST, DAST, SCA) | A.8.29 | Security testing in development and acceptance | IG2/3 |

| N/A | Outsourced development security | A.8.30 | Outsourced development | All |

| N/A | Separation of development, test, and production environments | A.8.31 | Separation of development, test and production environments | All |

| N/A | Change management for software | A.8.32 | Change management | All |

| N/A | Protection from malware / malicious code | A.8.7 | Protection against malware | All |

| N/A | Software supply chain / third-party security | A.5.21 | Managing information security in the ICT supply chain | All |

| N/A | Audit logging of software installation and execution | A.8.15 | Logging | All |

| N/A | Software configuration management | A.8.9 | Configuration management | All |

| N/A | Capacity management for software environments | A.8.6 | Capacity management | All |

| N/A | Data privacy – software processing PII/SPI (RA 10173) | A.5.34 | Privacy and protection of PII | All |

| N/A | Backup of software configurations and source code | A.8.13 | Information backup | All |

| N/A | Intellectual property rights and licensing | A.5.32 | Intellectual property rights | All |

| N/A | AI software governance (emerging – aligned with ISO/IEC 42001) | A.5.10 | Acceptable use / emerging technology controls | IG3 |

Legend: IG1 = Implementation Group 1 (foundational, all organizations); IG2 = Implementation Group 2 (intermediate); IG3 = Implementation Group 3 (advanced, highest security maturity). BFS targets IG2 as the baseline with selected IG3 safeguards applied to Critical and Confidential software environments.

# APPENDIX B:  Software Classification Matrix and Security Controls

| Classification | Criteria | Min. Security Controls | Patch SLA (Critical CVE) | Audit Frequency |

| --- | --- | --- | --- | --- |

| CRITICAL | Core banking, payment processing, ATM/card systems; unavailability or breach causes severe business impact. | EDR, allowlist, SIEM, SBOM, quarterly pen test, network isolation, MFA on all access | 48 hours | Monthly |

| CONFIDENTIAL | Systems processing customer PII/SPI, financial records, authentication systems, audit platforms. | EDR, allowlist, DLP, SIEM, SBOM, annual pen test, PIA | 7 days | Quarterly |

| INTERNAL USE | Internal business applications, productivity tools, internal reporting. | EDR, allowlist, SIEM monitoring | 14 days | Annual |

| PUBLIC | Public-facing website, marketing platforms; no sensitive data processing. | Standard OS/app hardening, SIEM, WAF for web-facing apps | 30 days | Annual |

| DEVELOPMENT | Dev/test environments; lower risk but must not contain production data. | Isolated from production; SAST scanning required; no real PII | As available | Annual |

# APPENDIX C:  Quick Reference Card

## C.1  Key Contacts

| Function | Role / Team | Contact / Channel |

| --- | --- | --- |

| Software Authorization Requests | IT Asset Management | ITSM Portal – Software Request |

| SAI / SAL Queries | IT Asset Management Team | ITSM Portal or it-assets@bfs.com.ph |

| Unauthorized Software Alerts | Security Operations Center | soc@bfs.com.ph \| 24/7 hotline |

| OSS License Review | Legal and Compliance | legal@bfs.com.ph |

| PIA / Data Privacy Review | Data Privacy Officer | dpo@bfs.com.ph |

| Policy Exceptions | CISO Office | ciso@bfs.com.ph |

| Vendor Security Assessment | IT Security Team | security@bfs.com.ph |

| SBOM / Supply Chain | Enterprise Architecture | EA Team via ITSM |

## C.2  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| New software SAI registration (before deployment) | Before first deployment |

| SAL update after software authorization approval | Within 1 business day |

| Unauthorized software block after detection | Within 4 hours |

| Unauthorized software investigation completion | Within 48 hours |

| License compliance reconciliation | Quarterly |

| Unlicensed software remediation after detection | Within 15 business days |

| Critical CVE patch SLA (CRITICAL software) | Within 48 hours |

| Critical CVE patch SLA (CONFIDENTIAL software) | Within 7 days |

| EOL software migration plan development | Within 90 days of EOL announcement |

| SAI update after decommissioning | Within 2 business days |

| SBOM generation (per production release) | Per CI/CD pipeline build |

| Software asset annual review | Annually (Q1 preferred) |

| Policy exception review cycle | Every 30–90 days (by exception type) |

BFS-ISP-002  |  Inventory and Control of Software Assets  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. This document is classified CONFIDENTIAL and intended for authorized internal use only.
