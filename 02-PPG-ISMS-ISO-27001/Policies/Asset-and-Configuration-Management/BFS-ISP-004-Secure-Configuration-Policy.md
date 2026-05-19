---
title: "BFS-ISP-004-Secure-Configuration-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Asset-and-Configuration-Management/BFS-ISP-004-Secure-Configuration-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:37Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Asset-and-Configuration-Management"
aliases:
  - "BFS-ISP-004-Secure-Configuration-Policy"
creator: "Un-named"
created: "2026-04-11T03:24:00Z"
modified: "2026-04-12T02:24:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>SECURE CONFIGURATION OF<br>ENTERPRISE ASSETS AND SOFTWARE<br>Hardening Standards, Baseline Governance, and Configuration Control<br>Policy Reference: BFS-ISP-004<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 4)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140<br>Companion to BFS-ISP-001 \| BFS-ISP-002 \| BFS-ISP-003 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Secure Configuration of Enterprise Assets and Software |

| --- | --- |

| Policy Reference | BFS-ISP-004 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to technology landscape, regulatory requirements, or material audit findings |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-002 (Software Asset Inventory); BFS-ISP-003 (Data Protection); BFS-ISP-005 (Vulnerability Management); BFS-ISP-010 (Change Management); BFS-ISP-020 (Acceptable Use) |

| Framework Alignment | CIS Controls v8 (Control 4); ISO/IEC 27001:2022 (A.8.9, A.8.7, A.8.1, A.8.8, A.8.19, A.8.20, A.8.21, A.8.22, A.8.32) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); Philippine Data Privacy Act RA 10173; RA 10175 (Cybercrime Prevention Act); PCI DSS v4.0 (where applicable); CIS Benchmarks (applicable versions) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Security Administrator |  |  |  |

| Compliance Officer |  |  |  |

| Risk Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the mandatory requirements, standards, and governance framework for the secure configuration of all enterprise assets and software within BFS Financial Services (hereinafter "the Organization" or "BFS"). Secure configuration — the practice of establishing and enforcing hardened, security-optimized settings across all hardware, software, and network infrastructure — is a foundational pillar of BFS's defense-in-depth security architecture.

Default configurations shipped by vendors are designed for ease of deployment, not for security. Without deliberate hardening, enterprise assets expose unnecessary services, retain default credentials, permit overly permissive access, and present exploitable attack surfaces. The majority of successful cyberattacks against enterprise environments exploit misconfigured systems, unnecessary services, and default settings — risks that systematic hardening directly and measurably reduces.

This policy directly implements CIS Controls v8, Control 4 (Secure Configuration of Enterprise Assets and Software), encompassing all twelve safeguards from 4.1 through 4.12. It is anchored in ISO/IEC 27001:2022 Annex A controls governing configuration management, malware protection, endpoint security, network security, software installation controls, vulnerability management, and change management.

The specific objectives of this policy are to:

Establish a comprehensive secure configuration process and governance model applicable to all categories of enterprise assets;

Define, maintain, and enforce security hardening baselines aligned with industry-recognized standards (CIS Benchmarks, DISA STIGs, and vendor security guides) for all asset types in the BFS environment;

Prevent the deployment of misconfigured, default-configured, or insufficiently hardened assets into any BFS environment;

Ensure that configuration changes are managed through a formal, controlled process that preserves the security integrity of hardened systems;

Enforce host-based firewall controls, session locking, automatic device lockout, and remote wipe capabilities across all endpoint and server populations;

Reduce the attack surface of BFS infrastructure by disabling or removing unnecessary services, protocols, accounts, and software components;

Maintain continuous configuration compliance monitoring to detect and remediate configuration drift in a timely manner;

Ensure compliance with applicable regulatory requirements from BSP Circular 1140, the Philippine Data Privacy Act (RA 10173), PCI DSS v4.0, and other relevant frameworks.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all personnel involved in the procurement, design, deployment, configuration, maintenance, or decommissioning of BFS enterprise assets, including:

All full-time and part-time BFS employees across all departments;

Contractors, system integrators, managed service providers, and vendors who configure, deploy, or maintain BFS assets;

Development and DevSecOps teams responsible for infrastructure provisioning, configuration management, and CI/CD pipeline management;

Cloud platform administrators and infrastructure engineers managing BFS cloud environments.

## 2.2  Asset Scope

This policy governs the secure configuration of all asset categories tracked in the BFS CMDB (BFS-ISP-001), including:

### 2.2.1  End-User Devices

Desktops, laptops, workstations (Windows, macOS, Linux);

Mobile devices — smartphones and tablets (iOS, Android) — whether BFS-issued or BYOD enrolled under MDM;

Thin clients, virtual desktops (VDI), and remote desktop environments.

### 2.2.2  Servers and Virtualization Infrastructure

Physical and virtual servers (Windows Server, Linux — all distributions);

Hypervisor platforms (VMware vSphere, Microsoft Hyper-V, KVM);

Container orchestration platforms (Kubernetes, Docker Swarm) and container hosts.

### 2.2.3  Network Infrastructure

Routers, switches, and layer 3 network devices;

Firewalls, next-generation firewalls (NGFW), and unified threat management (UTM) appliances;

Wireless access points and wireless controllers;

Load balancers, proxies, reverse proxies, and web application firewalls (WAF);

VPN gateways and remote access concentrators.

### 2.2.4  Cloud and Hybrid Infrastructure

Cloud compute instances, managed container services, and serverless function configurations;

Cloud network security groups, virtual private cloud (VPC) configurations, and cloud firewall rules;

Cloud storage configurations (bucket/object access policies, encryption settings);

Cloud identity and access management (IAM) policies, roles, and permission boundaries;

Infrastructure-as-Code (IaC) templates used to provision and configure cloud resources.

### 2.2.5  Application and Middleware Software

Web servers, application servers, and API gateway platforms;

Database management systems (DBMS) and caching platforms;

Authentication and directory services (Active Directory, LDAP, identity providers);

Security tooling (EDR, SIEM, PAM, vulnerability scanners, DLP platforms).

### 2.2.6  Operational Technology and Specialized Devices

ATM terminals, POS devices, and payment processing hardware;

Physical access control systems, IP cameras, and building management systems;

IoT and OT devices connected to BFS networks.

## 2.3  Environmental Scope

This policy applies to all BFS operational environments: production, pre-production (staging/UAT), development, testing, disaster recovery (DR), and training environments, regardless of hosting model — on-premise, co-location, public cloud, private cloud, or hybrid.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Secure Configuration | The practice of establishing security-optimized settings on hardware, software, and network devices to minimize the attack surface and reduce the risk of exploitation. Secure configurations enforce least-functionality, remove defaults, and apply security hardening standards. |

| Hardening Baseline | A documented, approved, and version-controlled set of security configuration settings that define the minimum security standard for a specific asset type, operating system, application, or platform. Baselines are derived from CIS Benchmarks, DISA STIGs, vendor security guides, or BFS-defined standards. |

| Configuration Drift | The unintended or unauthorized deviation of an asset's configuration from its approved hardening baseline, caused by unauthorized changes, software updates, administrative actions, or system failures. |

| CIS Benchmark | A prescriptive, consensus-based security configuration guide published by the Center for Internet Security (CIS) for specific operating systems, applications, cloud platforms, and network devices. Used as the primary baseline reference for BFS hardening standards. |

| DISA STIG | Defense Information Systems Agency Security Technical Implementation Guide — a U.S. Department of Defense security configuration standard used as a supplementary hardening reference for high-security environments. |

| Attack Surface | The sum of all accessible entry points (services, ports, protocols, interfaces, accounts) through which a threat actor could attempt to access or compromise an asset. Secure configuration minimizes the attack surface. |

| Default Configuration | The out-of-the-box settings shipped by a hardware or software vendor. Default configurations are designed for usability and broad compatibility, and typically include unnecessary services, open ports, default credentials, and permissive access settings that must be disabled or changed before deployment. |

| Least Functionality | A security principle requiring that a system be configured to provide only the capabilities required for its intended function. All other services, protocols, accounts, features, and ports not required for the system's defined purpose shall be disabled or removed. |

| Configuration Management Database (CMDB) | The authoritative repository of configuration records for all enterprise assets, as defined in BFS-ISP-001. Secure configuration compliance status is recorded in the CMDB. |

| Host-Based Firewall | A software firewall operating on an individual endpoint or server, controlling inbound and outbound network traffic based on defined rules. Provides an additional layer of network segmentation and protection independent of network perimeter controls. |

| Network Access Control (NAC) | A solution that enforces security policies on devices seeking to connect to the BFS network, verifying compliance with configuration baselines (e.g., patch level, EDR status, encryption) before granting network access. |

| Mobile Device Management (MDM) | A platform used to centrally manage, configure, monitor, and enforce security policies on mobile devices (smartphones, tablets) enrolled in BFS's device management program. |

| Infrastructure-as-Code (IaC) | The practice of managing and provisioning infrastructure through machine-readable configuration files (e.g., Terraform, AWS CloudFormation, Ansible). IaC enables consistent, repeatable, version-controlled, and security-reviewed infrastructure deployments. |

| Configuration Compliance Scanning | The automated assessment of an asset's current configuration against its approved hardening baseline, identifying deviations (failures) that require remediation. |

| Golden Image / Standard Build | A pre-hardened, BFS-approved base image for an operating system or platform from which new deployments are created. Golden images incorporate the approved hardening baseline and are version-controlled. |

| Change Management | The formal process for requesting, reviewing, approving, implementing, testing, and documenting changes to IT assets and configurations, as governed by BFS-ISP-010. |

| Session Lock | An automatic security control that locks a device's user interface after a defined period of inactivity, requiring re-authentication to resume use. |

| Remote Wipe | The capability to remotely erase data from a mobile or portable device, used in the event of loss, theft, or decommissioning to prevent unauthorized access to BFS data. |

| Privileged Account | An account with elevated rights and permissions beyond those of a standard user, including administrator, root, service account, and database administrator accounts. Privileged accounts are subject to enhanced configuration and access controls. |

| SIEM | Security Information and Event Management — a platform that collects, correlates, and analyzes security and configuration event data. Used to detect configuration drift and unauthorized changes. |

| DevSecOps | An approach that integrates security practices — including secure configuration enforcement and compliance scanning — into the software development and operations pipeline (CI/CD), shifting security validation left toward development. |

| CSPM | Cloud Security Posture Management — automated tooling that continuously assesses cloud infrastructure configurations for compliance with security baselines and detects misconfigurations. |

# 4.  SECURE CONFIGURATION FRAMEWORK

BFS's Secure Configuration Framework defines the structure, governance, and standards by which all enterprise assets are hardened, deployed, monitored for drift, and maintained in a continuously compliant configuration state throughout their lifecycle.

## 4.1  Baseline Hierarchy

BFS hardening baselines are derived from the following priority-ordered sources and adapted to BFS's specific operational requirements:

| Priority | Source | Description | Applicability | Review Cycle |

| --- | --- | --- | --- | --- |

| 1 | CIS Benchmarks (Level 1 & 2) | Consensus-based, vendor-neutral hardening guides. Level 1 = minimum baseline; Level 2 = high-security/sensitive environments. | All OS, applications, network devices, cloud platforms | Annual + on new release |

| 2 | DISA STIGs | U.S. DoD hardening standards. Used as supplementary reference for high-security BFS systems (e.g., CRITICAL data environments). | Critical servers, payment systems, core banking | Annual |

| 3 | Vendor Security Guides | Official hardening recommendations from hardware/software vendors where CIS/STIG coverage is unavailable. | IoT, OT, specialized appliances, niche platforms | Per vendor release |

| 4 | BFS-Defined Standards | BFS-specific configuration requirements layered over CIS baselines to address organizational, regulatory, or operational needs unique to BFS. | All BFS environments | Semi-annual review |

| 5 | Regulatory Standards | PCI DSS v4.0 Requirements 1–3 (network, default settings); BSP Circular 1140 IT controls; RA 10173 technical safeguards. | In-scope regulatory environments | Per regulatory update |

## 4.2  Asset Type to Baseline Mapping

The following table maps each major asset category to its applicable hardening baseline and implementation group target:

| Asset Category | Primary Baseline Reference | BFS IG Target | Supplementary Reference |

| --- | --- | --- | --- |

| Windows Endpoints (workstations) | CIS Microsoft Windows Benchmark (Level 1) | IG2 | MS Security Baseline |

| Windows Servers | CIS Microsoft Windows Server Benchmark (Level 2) | IG2 | DISA Windows STIG (for CRITICAL env.) |

| Linux Servers (all distributions) | CIS Linux Benchmark (applicable distro, Level 2) | IG2 | DISA Linux STIG (for CRITICAL env.) |

| macOS Endpoints | CIS Apple macOS Benchmark (Level 1) | IG2 | Apple Platform Security Guide |

| Network Devices (Cisco, Juniper, HP) | CIS Cisco / Juniper / applicable vendor Benchmark | IG2 | DISA Network STIG |

| Firewalls (NGFW) | Vendor hardening guide + CIS (if available) | IG2 | NIST SP 800-41 (Guidelines on Firewalls) |

| AWS Cloud (EC2, S3, RDS, IAM, etc.) | CIS Amazon Web Services Benchmark (Level 1 + Level 2) | IG2 | AWS Security Hub / Well-Architected Framework |

| VMware vSphere / Hypervisors | CIS VMware ESXi Benchmark (Level 1) | IG2 | VMware Security Configuration Guide |

| Kubernetes / Container Platforms | CIS Kubernetes Benchmark | IG3 | NSA/CISA Kubernetes Hardening Guide |

| MS SQL Server / Oracle DB | CIS Database Benchmark (applicable version) | IG2 | Vendor security guide |

| Active Directory / Identity Services | CIS Microsoft AD / Azure AD Benchmark | IG2 | Microsoft Identity Security Best Practices |

| Web/Application Servers (Apache, Nginx, IIS) | CIS Web Server Benchmarks | IG2 | OWASP Server Hardening Guide |

| iOS Mobile Devices | CIS Apple iOS Benchmark (Level 1) | IG2 | Apple iOS Security Guide |

| Android Mobile Devices | CIS Google Android Benchmark (Level 1) | IG2 | Android Enterprise Security Guide |

| ATM / POS / Payment Terminals | PCI DSS v4.0 Req 2; Vendor security guide | IG2 | PCI SSC POI Device Security Requirements |

| IaC Templates (Terraform/CFN) | CIS cloud benchmarks + BFS IaC security standards | IG3 | Checkov / tfsec / KICS policy sets |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, assets, and environments within the scope of this policy. Non-compliance is subject to enforcement as defined in Section 10.

## 5.1  Secure Configuration Process Governance

PS-1.1  BFS shall establish, maintain, and enforce a formal Secure Configuration Process governing the development, approval, implementation, monitoring, and review of hardening baselines for all categories of enterprise assets.

PS-1.2  No enterprise asset shall be deployed into any BFS environment — production, pre-production, development, or DR — without having been configured in accordance with its applicable approved hardening baseline.

PS-1.3  Hardening baselines shall be documented, version-controlled, stored in a secure and access-controlled configuration repository, and updated at least annually or upon the release of a materially updated CIS Benchmark or relevant vendor security guide.

PS-1.4  The CISO Office shall maintain a Configuration Compliance Register, recording the current compliance status of all asset types against their approved hardening baselines. This register shall be reviewed monthly and reported to the CIO.

PS-1.5  Configuration compliance scanning shall be performed on all assets at least monthly. Assets failing compliance scans shall be flagged for remediation, and critical non-compliance issues shall be escalated to the CISO within twenty-four (24) hours.

## 5.2  Golden Images and Standard Builds

PS-2.1  BFS shall develop and maintain pre-hardened Golden Images (standard builds) for all standard operating system platforms deployed in the BFS environment. All new server and endpoint deployments shall be provisioned from an approved Golden Image.

PS-2.2  Golden Images shall incorporate the applicable approved hardening baseline, BFS-mandated software agents (EDR, logging, vulnerability scanner, MDM agent as applicable), and required configuration settings before being published as an approved image.

PS-2.3  Golden Images shall be version-controlled. Each image shall have a defined review and refresh cycle (at minimum: annually, or upon a significant OS update, major vulnerability disclosure, or baseline revision). Retired image versions shall be removed from all deployment systems.

PS-2.4  Deployment of operating system instances that were not provisioned from an approved Golden Image requires a formal exception approved by the CISO, with a documented remediation plan.

## 5.3  Network Infrastructure Secure Configuration

PS-3.1  All network infrastructure devices — routers, switches, firewalls, wireless access points, load balancers, and VPN gateways — shall be configured in accordance with the applicable CIS Benchmark or BFS-approved vendor hardening guide before deployment.

PS-3.2  Default vendor-supplied credentials on all network devices shall be changed before the device is connected to any BFS network segment. Generic, shared, or trivially guessable credentials are prohibited on all network infrastructure.

PS-3.3  Management access to network infrastructure (including out-of-band management) shall be restricted to dedicated management interfaces and networks (OOB management plane), separated from user data traffic. Remote management shall require encrypted protocols (SSHv2 minimum; Telnet and SNMPv1/v2c are prohibited).

PS-3.4  Unused physical ports on switches and routers shall be administratively disabled and assigned to an isolated VLAN. Unused network services and protocols shall be disabled.

PS-3.5  Network device configurations shall be backed up at a minimum weekly and upon any configuration change. Configuration backups shall be stored in an encrypted, access-controlled repository and tested for restorability at least annually.

PS-3.6  All network device configurations shall be version-controlled in a configuration management system. Configuration changes shall be processed through the BFS Change Management process and logged in the SIEM.

## 5.4  Host-Based Firewall Controls

PS-4.1  A BFS-approved host-based firewall shall be enabled and enforced on all managed servers and endpoint devices. The firewall shall be configured to deny all inbound connections by default, permitting only explicitly required services.

PS-4.2  Host-based firewall rules shall be defined and maintained by the IT Security team. Requests for new firewall rule exceptions shall be submitted through the Change Management process, with documented business justification, and reviewed by the CISO Office.

PS-4.3  Users shall not be permitted to disable, modify, or bypass host-based firewall configurations on BFS-managed devices. Any attempt to do so shall generate a SIEM alert and be investigated as a security incident.

PS-4.4  On servers, host-based firewalls shall be configured to restrict inter-service and inter-application communications to only those explicitly required for the defined service's function (application-layer micro-segmentation).

## 5.5  Session Locking and Automatic Lockout

PS-5.1  All BFS-managed endpoints and servers shall be configured to automatically lock the user session after a maximum of fifteen (15) minutes of inactivity. Resuming a locked session requires re-authentication.

PS-5.2  Portable end-user devices (laptops, mobile phones, tablets) shall enforce automatic screen lock after a maximum of five (5) minutes of inactivity. For mobile devices classified as processing CONFIDENTIAL data, this shall be reduced to two (2) minutes.

PS-5.3  Automatic device lockout (account lockout) shall be enforced after a maximum of ten (10) consecutive failed authentication attempts for standard user accounts. For privileged accounts, the threshold shall not exceed five (5) failed attempts. Locked accounts shall require administrator intervention or a defined unlock timeout period before being re-enabled.

PS-5.4  Session timeout controls shall also be enforced for web-based administrative interfaces, SSH sessions, privileged access workstation sessions, and database administrative sessions.

## 5.6  Default Account Management

PS-6.1  All default accounts provided by vendors on hardware, operating systems, applications, databases, and network devices — including 'admin', 'root', 'sa', 'guest', and equivalent accounts — shall be handled as follows before deployment: (a) renamed or disabled if not operationally required; (b) if required, their passwords must be changed to a complex, unique credential meeting the BFS password standard.

PS-6.2  Default or well-known service accounts embedded in applications by vendors shall be reviewed, and their default credentials changed, disabled, or replaced with BFS-managed service accounts before deployment.

PS-6.3  Guest accounts shall be disabled on all operating systems and applications. Where guest access is a legitimate business requirement, it must be explicitly authorized, time-limited, and scoped to the minimum required access.

PS-6.4  An inventory of all privileged and service accounts for each asset shall be maintained in the Privileged Access Management (PAM) system and cross-referenced with the CMDB. Unaccounted privileged accounts discovered on any system shall be treated as a security incident.

## 5.7  Disabling Unnecessary Services and Software

PS-7.1  The principle of least functionality shall be applied to all enterprise assets. Before deployment, all services, protocols, daemons, ports, features, and software components not required for the asset's defined operational purpose shall be disabled, removed, or uninstalled.

PS-7.2  A service inventory shall be maintained for each asset type, documenting required services and the business justification for each. Services not appearing in the approved service inventory shall be removed from operational systems.

PS-7.3  Network protocols with known security weaknesses — including but not limited to Telnet, FTP, rsh, rlogin, rexec, NetBIOS over TCP/IP (where not required), LLMNR, mDNS (where not required), and WS-Management without TLS — shall be disabled on all assets unless a documented exception exists.

PS-7.4  Autorun and autoplay functionality shall be disabled on all Windows endpoints to prevent malware propagation via removable media.

PS-7.5  Unnecessary browser plugins, extensions, and ActiveX controls shall be disabled or removed from managed endpoints. The approved browser extension list (per BFS-ISP-002) governs permitted browser extensions.

## 5.8  Secure Management of Enterprise Assets

PS-8.1  Administrative and privileged access to all enterprise assets shall be managed through the BFS Privileged Access Management (PAM) solution, enforcing just-in-time access, session recording, and credential vaulting for all privileged accounts.

PS-8.2  All administrative activities on CONFIDENTIAL and CRITICAL systems shall be performed from designated Privileged Access Workstations (PAWs) or jump servers — dedicated, hardened, and isolated systems used exclusively for administrative tasks.

PS-8.3  Remote administration of BFS assets shall be performed exclusively over encrypted channels (SSHv2, HTTPS with TLS 1.2 minimum, or BFS-approved VPN). Clear-text remote administration protocols (Telnet, HTTP, RDP without TLS) are prohibited.

PS-8.4  Time synchronization shall be enforced across all BFS assets using BFS-approved NTP sources. Accurate and consistent time is critical for log correlation, incident investigation, and compliance evidence. Deviation from authorized NTP sources is prohibited.

## 5.9  DNS Security Configuration

PS-9.1  All BFS-managed enterprise assets shall be configured to use only BFS-approved, internally managed or vetted DNS resolvers. The use of public DNS resolvers (e.g., Google 8.8.8.8, Cloudflare 1.1.1.1) on production assets is prohibited without explicit CISO approval.

PS-9.2  DNS Security Extensions (DNSSEC) shall be implemented for all BFS-controlled DNS zones to prevent DNS spoofing and cache poisoning attacks. DNS over HTTPS (DoH) or DNS over TLS (DoT) shall be evaluated and implemented where operationally feasible.

PS-9.3  DNS query logging shall be enabled and DNS logs ingested into the SIEM platform for monitoring, threat intelligence correlation, and detection of DNS-based attacks (tunneling, data exfiltration, C2 communication).

PS-9.4  Split-DNS architecture shall be maintained to prevent internal BFS DNS information from being exposed to external parties.

## 5.10  Portable and Mobile Device Configuration

PS-10.1  All BFS-issued mobile devices (smartphones and tablets) shall be enrolled in the BFS MDM platform prior to being used for any BFS business purpose. Enrollment in MDM is a prerequisite for accessing BFS systems from a mobile device.

PS-10.2  MDM-enforced policies shall include at minimum: device encryption, screen lock with defined timeout, minimum PIN/passcode complexity, remote wipe capability, prohibition of jailbroken/rooted devices, and approved application allowlist.

PS-10.3  Remote wipe capability shall be maintained and tested for all enrolled mobile devices. Remote wipe shall be initiated within four (4) hours of confirmed loss or theft of a BFS-issued device.

PS-10.4  BFS enterprise workspaces (email, applications, data) on mobile devices shall be containerized and separated from personal applications and data using MDM-enforced workspace isolation. The BFS enterprise container shall be independently encrypted and remotely wipeable.

PS-10.5  BYOD devices enrolled in MDM under a BFS-approved BYOD arrangement shall be subject to the same MDM security policies for the BFS enterprise container as BFS-issued devices. Full-device management (outside the enterprise container) shall respect applicable privacy obligations.

## 5.11  Cloud and IaC Secure Configuration

PS-11.1  All cloud infrastructure provisioned for BFS purposes shall comply with the applicable CIS Benchmark for the cloud provider (e.g., CIS AWS Foundations Benchmark). CSPM tooling shall provide continuous automated assessment of cloud configuration compliance.

PS-11.2  Cloud network security groups, VPC configurations, and firewall rules shall follow a default-deny posture. Overly permissive rules (0.0.0.0/0 on sensitive ports) are prohibited in production environments and shall generate an automated alert and be remediated within twenty-four (24) hours.

PS-11.3  All cloud infrastructure shall be provisioned via approved, security-reviewed IaC templates. Manual provisioning of infrastructure in production environments is prohibited except under an emergency change process approved by the CISO. IaC templates shall undergo security scanning (policy-as-code checks) before deployment.

PS-11.4  Cloud root/master accounts shall not be used for day-to-day operations. Root credentials shall be secured with MFA, stored in the PAM vault, and access events logged and alerted. IAM roles and policies shall follow the least-privilege principle.

PS-11.5  Public access to cloud storage resources (buckets, blobs, containers) shall be blocked by default. Any public access configuration requires documented business justification, Data Owner approval, and CISO concurrence, and shall be reviewed quarterly.

## 5.12  Configuration Change Control

PS-12.1  All changes to the configuration of BFS enterprise assets — including operating system settings, application configurations, firewall rules, network device configurations, and IaC template modifications — shall be processed through the BFS Change Management process (BFS-ISP-010).

PS-12.2  Configuration changes to CRITICAL or CONFIDENTIAL data environment assets shall require CISO review and approval before implementation, in addition to standard Change Advisory Board (CAB) approval.

PS-12.3  All configuration changes shall be logged with: the initiating individual, authorization details, before-state, after-state, change date/time, and rollback procedure. Logs shall be retained in accordance with the BFS Audit Log Retention Policy.

PS-12.4  Emergency configuration changes made outside the standard change management process shall be documented and submitted for retrospective review and approval within twenty-four (24) hours. The CISO shall be notified of emergency changes to CRITICAL systems within two (2) hours.

PS-12.5  Configuration changes shall be verified against the applicable hardening baseline post-implementation. Compliance scanning shall be run within twenty-four (24) hours of a significant configuration change.

# 6.  PROCEDURES

## 6.1  Secure Configuration Deployment Procedure

All new assets shall complete the following procedure before deployment into any BFS environment:

| Step | Activity | Output | Responsible Party |

| --- | --- | --- | --- |

| 1 | Baseline Selection: Identify the applicable hardening baseline for the asset type from the BFS Configuration Baseline Register. | Baseline version confirmed | IT Security / EA Team |

| 2 | Golden Image / Template Provisioning: Deploy from the approved Golden Image (for OS deployments) or approved IaC template (for cloud). Document any deviations from the standard image. | Image or template version recorded in CMDB | IT Operations / DevSecOps |

| 3 | Hardening Application: Apply the approved hardening baseline settings to the asset. This includes: disabling unnecessary services, removing defaults, configuring host firewall, applying encryption settings, configuring logging and NTP, and installing mandatory agents (EDR, logging, vulnerability scanner). | Hardening checklist completed and signed | System Administrator / IT Operations |

| 4 | Compliance Scan: Execute a configuration compliance scan against the approved baseline. Document all findings. | Compliance scan report generated | IT Security / Vulnerability Management Team |

| 5 | Findings Remediation: Remediate all CRITICAL and HIGH severity findings from the compliance scan before deployment. MEDIUM and LOW findings must have a documented remediation plan with a defined deadline. | Remediation documented; residual findings risk-accepted with deadline | System Administrator (remediation); IT Security Manager (acceptance) |

| 6 | Security Review Sign-Off: IT Security reviews the compliance scan results and signed hardening checklist, confirms acceptability for deployment. | IT Security sign-off recorded | IT Security Manager / CISO (for CRITICAL systems) |

| 7 | CMDB Registration: Asset is registered in the CMDB (BFS-ISP-001) with configuration compliance status, baseline version, and scan date recorded. | CMDB record created/updated | IT Asset Management |

| 8 | Deployment Authorization: Deployment is authorized by the appropriate Change Management authority. Asset is deployed and post-deployment compliance scan executed. | Change record closed; post-deployment scan completed | Change Advisory Board / IT Operations |

## 6.2  Hardening Baseline Development and Maintenance

Source Review: The IT Security team reviews the latest version of the applicable CIS Benchmark (or other primary baseline source) upon each release and assesses the delta from the currently deployed baseline.

BFS Customization: BFS-specific configuration requirements are layered on the base CIS recommendation, documented with rationale, and reviewed by the CISO Office and EA team for technical feasibility and operational impact.

Stakeholder Review: The proposed updated baseline is circulated to system owners, IT Operations, and relevant business stakeholders for a minimum of ten (10) business days for review and comment.

Approval: The updated baseline is approved by the CISO and CTO (or designates). The approved baseline is version-controlled and published to the Configuration Baseline Register.

Implementation Rollout: A deployment plan is developed specifying the rollout timeline, testing approach, and rollback procedure. Baselines are rolled out to non-production environments first, then production.

Validation: Post-rollout, compliance scans confirm the new baseline is correctly implemented. Exceptions are documented.

Baseline Archival: Previous baseline versions are archived for audit reference. The current version is clearly identified as the authoritative standard.

## 6.3  Configuration Drift Detection and Remediation

Configuration drift — unauthorized or unintentional deviation from the approved hardening baseline — shall be detected and remediated through the following process:

| Step | Action | Timeframe | Responsible Party |

| --- | --- | --- | --- |

| 1 | Detection: Automated configuration compliance scan or SIEM alert detects configuration deviation from approved baseline. | Continuous / scheduled (minimum monthly) | Vulnerability Management / SOC |

| 2 | Alert Triage: SOC or Vulnerability Management team reviews finding to determine severity, asset criticality, and whether change was authorized. | Within 4 hours of detection | SOC Analyst / IT Security Team |

| 3 | Authorized Change Verification: Cross-check against the Change Management log. If the change is authorized (associated with an approved change record), update the CMDB and close the finding. | Within 8 hours | IT Security / Change Management |

| 4 | Unauthorized Drift — Escalation: If the drift is NOT associated with an authorized change, escalate as a security incident. The asset is flagged for immediate remediation. | Within 8 hours (concurrent with Step 3) | IT Security Manager / CISO |

| 5 | Remediation: Asset configuration is restored to the approved baseline by the assigned custodian, within the SLA defined by severity. | See SLA table (Section 6.4) | IT Operations / System Administrator |

| 6 | Verification Scan: Post-remediation compliance scan confirms the deviation has been resolved. | Within 24 hours of remediation | Vulnerability Management Team |

| 7 | Root Cause Analysis: For unauthorized drift, root cause is documented and corrective action implemented to prevent recurrence. | Within 5 business days | IT Security Manager |

## 6.4  Configuration Compliance Remediation SLAs

| Severity | Description | Remediation SLA | Escalation If Missed |

| --- | --- | --- | --- |

| CRITICAL | Exploit-ready misconfiguration; known active exploitation in the wild; auth bypass; cleartext transmission of secrets; publicly exposed admin interface. | 24 hours | Immediate CIO + CISO escalation; emergency change process |

| HIGH | Serious misconfiguration with high exploitation potential; disabled host firewall; default credentials present; unnecessary privileged service exposed. | 7 days | IT Security Manager + CISO escalation |

| MEDIUM | Moderate security risk; policy deviation without immediate exploit; non-compliant but mitigated by other controls. | 30 days | IT Security Manager notification |

| LOW | Minor configuration deviation; best-practice gap; low direct security impact. | 90 days | Tracked in compliance register; reported in monthly KRI |

| INFORMATIONAL | Observation; no direct security impact; advisory for future improvement. | Next baseline refresh cycle | No escalation required |

## 6.5  Firewall Rule Management Procedure

Request Submission: Business unit or technical team submits a Firewall Rule Change Request via the ITSM portal, providing: source, destination, port/protocol, justification, data classification, and asset owner approval.

Security Review: IT Security evaluates the request against BFS network segmentation policy, the principle of least privilege, and data classification requirements. Risk rating is assigned.

Approval: Firewall rule changes are approved per the following matrix: standard rule additions — IT Security Manager; rules permitting inbound access to CONFIDENTIAL or CRITICAL systems — CISO approval; rules permitting inbound internet access to production servers — CISO + CIO approval.

Implementation: Approved rules are implemented via the approved network change management process. Configuration is tested and documented.

Post-Implementation Review: Rules are reviewed ninety (90) days post-implementation to confirm continued necessity. Unused or superseded rules are removed.

Annual Firewall Rule Review: All firewall rules across all BFS firewalls are reviewed annually. Rules without documented justification or expired business cases are removed.

## 6.6  Mobile Device Enrollment and Configuration Procedure

Device Enrollment Request: Employee or manager submits an MDM enrollment request via the ITSM portal, specifying device type (BFS-issued or BYOD), intended use, and user identity.

MDM Enrollment: IT Operations enrolls the device in the BFS MDM platform. The MDM platform pushes the BFS configuration profile, which enforces: encryption, screen lock, PIN complexity, app allowlist, enterprise container setup (for BYOD), and remote wipe registration.

Compliance Verification: MDM reports on initial compliance status. Non-compliant settings must be resolved before the device is granted access to BFS systems.

Network Access Grant: Network Access Control (NAC) verifies MDM compliance status before permitting the device to connect to BFS Wi-Fi or remote access resources.

Ongoing Compliance Monitoring: MDM continuously monitors enrolled devices. Non-compliant devices are automatically quarantined from BFS resources.

Unenrollment / Decommissioning: Upon employee departure or device replacement, remote enterprise wipe is performed and the device is unenrolled from MDM within one (1) business day.

# 7.  GUIDELINES

## 7.1  Hardening Implementation Guidelines by Asset Type

### 7.1.1  Windows Endpoints and Servers

Enable Windows Defender or the approved BFS EDR solution; disable conflicting third-party AV if EDR replaces it.

Configure AppLocker or Windows Defender Application Control (WDAC) to enforce the software allowlist on all Windows endpoints.

Disable SMBv1, LM authentication, NTLM authentication (where Kerberos is available), and WDigest credential caching.

Enable Credential Guard, Device Guard, and Secure Boot on all hardware that supports it.

Configure Windows Defender Firewall in 'block all' mode for inbound connections by default on all profiles (Domain, Private, Public).

Disable PowerShell v2.0 and enforce PowerShell Constrained Language Mode or Transcription logging. All PowerShell execution shall be logged and ingested into the SIEM.

Enable Windows Event Log auditing for: logon/logoff, account management, policy changes, privilege use, process creation, and object access on all managed endpoints and servers.

### 7.1.2  Linux Servers

Remove all unnecessary packages and services at the OS level. Use minimal/base installation profiles.

Configure auditd for comprehensive system call auditing. Logs must be forwarded to the SIEM in real time.

Disable root SSH login. Use key-based authentication only; disable password-based SSH authentication on production servers.

Implement and configure SELinux (enforcing mode) or AppArmor on all Linux servers.

Configure iptables/nftables or equivalent host firewall rules following a default-deny inbound posture.

Apply UMASK 027 or more restrictive for all users. Ensure no world-writable files outside of designated temporary directories.

### 7.1.3  Network Devices

Implement Control Plane Policing (CoPP) on all routers to protect against CPU-targeted attacks.

Disable CDP/LLDP on user-facing ports (enable only on infrastructure-to-infrastructure links). Disable VTP on edge switches; use fixed VLAN mode.

Implement Dynamic ARP Inspection (DAI), DHCP snooping, and IP Source Guard on all access-layer switches.

Disable unused routing protocols. Authenticate all routing protocol peerings (OSPF/BGP MD5 or SHA authentication).

Ensure SNMP is either disabled or uses SNMPv3 with authentication and encryption. SNMPv1 and SNMPv2c are prohibited.

### 7.1.4  Cloud Infrastructure (AWS Focus)

Enable AWS CloudTrail in all accounts and regions. Ensure CloudTrail logs are ingested into SIEM and protected from deletion (S3 MFA delete).

Enable AWS Config with all relevant Config Rules active and integrated with AWS Security Hub for compliance posture reporting.

Enable VPC Flow Logs on all VPCs. Enable GuardDuty for threat detection across all BFS AWS accounts.

Enforce S3 bucket policies with explicit Deny for public access at both the bucket and account level using S3 Block Public Access settings.

Enforce MFA on all IAM users with console access. Enforce password policies meeting BFS complexity requirements on all IAM accounts.

Use AWS Organizations Service Control Policies (SCPs) to enforce guardrails (e.g., prevent disabling CloudTrail, enforce encryption, restrict to approved regions) across all BFS AWS accounts.

## 7.2  Secure Configuration in the Development Pipeline

Policy-as-Code: IaC templates (Terraform, CloudFormation, Ansible) shall be scanned using automated policy-as-code tools (e.g., Checkov, tfsec, OPA/Conftest) as part of the CI/CD pipeline. Templates failing security policy checks shall not be merged or deployed.

Container Image Hardening: Container images shall be built from approved, minimal base images. Image scanning for vulnerabilities and configuration issues shall be performed at build time and at registry admission. Only images passing security gates shall be promoted to production.

Secrets Management in Pipelines: CI/CD pipelines shall use approved secrets management integrations (AWS Secrets Manager, HashiCorp Vault) to inject credentials. Credentials shall never be stored in pipeline configuration files, environment variables in source code, or logs.

Immutable Infrastructure: Production infrastructure shall be treated as immutable where possible. Configuration changes shall be implemented by replacing instances (from updated Golden Images) rather than modifying running systems in place.

## 7.3  Configuration Monitoring and Alerting

SIEM Integration: Configuration change events — including OS configuration changes, application setting changes, firewall rule modifications, and privilege escalations — shall be forwarded to the SIEM and subject to correlation rules for unauthorized change detection.

Baseline Deviation Alerting: CRITICAL and HIGH severity configuration compliance findings shall generate SIEM alerts requiring SOC triage within four (4) hours.

Change Correlation: Configuration change events detected by the SIEM shall be automatically correlated against the Change Management system to distinguish authorized changes from unauthorized drift.

Configuration Compliance Dashboard: A real-time configuration compliance dashboard shall be maintained and made available to the CISO Office, IT Security team, and Internal Audit.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of the secure configuration program. Reviews annual compliance metrics and configuration risk posture. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise secure configuration program. Ensures adequate resources, tooling, and staffing. Reviews significant configuration compliance failures and exception approvals. Co-approves policy with CISO. |

| Chief Information Security Officer (CISO) | Responsible for design, implementation, and enforcement of this policy. Approves hardening baselines. Oversees configuration compliance scanning, SOC change monitoring, and CSPM. Reports configuration risk posture to CIO and Board. |

| Chief Technology Officer (CTO) | Ensures secure configuration standards are embedded in technology architecture decisions. Reviews configuration security requirements for new technology platforms and vendors. Co-approves hardening baseline changes with CISO. |

| Enterprise Architecture Team | Develops and maintains hardening baselines and Golden Images in collaboration with IT Security. Ensures configuration requirements are embedded in solution design and IaC templates. Maintains policy-as-code rules in CI/CD pipelines. |

| IT Operations / System Administrators | Implements hardening baselines on all managed assets during deployment and maintenance. Maintains compliance with approved configurations throughout asset lifecycle. Executes configuration remediation within defined SLAs. Manages Golden Image lifecycle. |

| Network Engineering Team | Responsible for the secure configuration of all network infrastructure. Maintains network device configuration backups. Implements and reviews firewall rules. Enforces network segmentation and access control configurations. |

| DevSecOps / Development Teams | Implements and enforces secure configuration in CI/CD pipelines. Ensures IaC templates comply with hardening requirements. Performs policy-as-code scanning. Applies container hardening standards. Manages IaC template security reviews. |

| Security Operations Center (SOC) | Monitors SIEM for configuration change events, unauthorized drift alerts, and CSPM findings. Triages and escalates configuration compliance alerts. Correlates configuration events with threat intelligence. |

| Vulnerability Management Team | Executes scheduled and on-demand configuration compliance scans. Manages the Configuration Compliance Register. Tracks remediation SLA compliance. Produces monthly compliance reports for CISO. |

| Mobile / Endpoint Management Team | Administers the MDM platform. Enforces mobile device configuration policies. Monitors MDM compliance. Executes remote wipe procedures. Manages Golden Image updates for endpoints. |

| Compliance and Risk Officers | Validates policy compliance through internal audits. Maintains the exception register. Ensures configuration controls are included in the IT Risk Assessment. Coordinates external audit and regulatory examination evidence. |

| Internal Audit | Independently assesses the effectiveness of the secure configuration program, including hardening baseline adherence, drift detection, change control compliance, and Golden Image governance. Reports to the Audit and Risk Committee. |

| All Employees and Third Parties | Do not modify asset configurations outside of authorized and approved channels. Report observed or suspected unauthorized configuration changes to the IT Service Desk or SOC immediately. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circular 1140 (MORB IT Risk Management)

Secure configuration is a fundamental IT risk management control required under BSP Circular 1140. BFS's compliance with this policy directly supports BSP examination readiness through:

Maintenance of documented security configuration standards for all IT assets as required by the MORB IT Risk section;

Evidence of configuration compliance scanning, drift detection, and remediation processes producible during BSP IT examinations;

Configuration change management records demonstrating that changes to critical systems are controlled and auditable;

Hardened configuration of ATM, core banking, and payment processing systems per BSP cybersecurity guidelines.

## 9.2  PCI DSS v4.0 Compliance

For BFS systems within the PCI DSS Cardholder Data Environment (CDE) scope:

PCI DSS Requirement 2 (Apply Secure Configurations to All System Components) is directly addressed by this policy. BFS's hardening baselines for CDE systems must meet or exceed the PCI DSS Requirement 2 specifications.

All CDE assets must be included in configuration compliance scanning at least quarterly, in addition to BFS's standard monthly scan cadence.

Default accounts and vendor-supplied default passwords on CDE systems must be managed in strict accordance with PCI DSS Requirement 2.3.

Wireless technology in the CDE requires specific hardening per PCI DSS Requirement 1 (network controls) and Requirement 2.

## 9.3  Philippine Data Privacy Act (RA 10173)

Secure configuration directly supports BFS's DPA compliance obligations by:

Ensuring systems processing personal data are hardened to reduce the risk of unauthorized access, data breach, and data leakage;

Host-based firewalls and network segmentation controls limit exposure of personal data processing systems to unauthorized network access;

Session locking and automatic lockout controls reduce the risk of unauthorized access to personal data from unattended workstations;

Configuration audit logging supports forensic investigation in the event of a personal data breach, supporting BFS's NPC notification obligations.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Monthly automated configuration compliance scans across all managed assets, with results recorded in the Configuration Compliance Register;

Daily SIEM monitoring for unauthorized configuration changes and critical compliance deviations;

Quarterly review of firewall rule sets and network device configurations by the Network Engineering and IT Security teams;

Semi-annual review of Golden Image currency and hardening baseline versions;

Annual formal secure configuration audit conducted by IT Security and validated by Internal Audit;

Monthly KRI reporting to the CISO and CIO covering the KPIs below.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Assets deployed from approved Golden Image / IaC template | 100% | Per deployment |

| Configuration compliance scan coverage (% of assets scanned monthly) | 100% | Monthly |

| CRITICAL configuration findings remediated within 24-hour SLA | 100% | Per finding |

| HIGH configuration findings remediated within 7-day SLA | ≥ 98% | Monthly |

| Assets with host-based firewall enabled and enforced | 100% | Daily |

| Endpoints with screen lock (≤15 min) configured | 100% | Daily |

| Mobile devices enrolled in MDM | 100% of BFS-issued | Daily |

| Default credentials remediated before deployment | 100% | Per deployment |

| Network device configurations backed up weekly | 100% | Weekly |

| Cloud resources with public access misconfiguration (target: zero) | 0 | Daily (CSPM) |

| Firewall rule review completed annually | 100% of rulesets | Annual |

| Unauthorized configuration changes detected and investigated within SLA | 100% within 8 hrs | Per incident |

| IaC templates failing policy-as-code checks deployed to production (target: zero) | 0 | Per pipeline run |

| Golden Images refreshed within defined review cycle | 100% | Per review cycle |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Failure to update CMDB after configuration change; late compliance scan; late Golden Image refresh. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Deploying an asset without applying the approved hardening baseline; making unauthorized minor configuration changes; disabling session lock on managed device. | Formal warning; immediate remediation; mandatory security training; access privilege review. |

| Serious | Deploying systems with default credentials into production; disabling host-based firewall on a production server; bypassing the change management process for network configuration changes; persistent non-compliance with configuration SLAs. | Suspension pending investigation; disciplinary action up to termination; CISO notification; mandatory remediation under audit. |

| Critical / Legal | Deliberate misconfiguration to enable unauthorized access; tampering with configuration compliance scanning tools; deliberately circumventing firewall controls to exfiltrate data. | Immediate termination; referral to law enforcement; prosecution under RA 10175; mandatory regulatory reporting. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

BFS recognizes that specific technical, legacy, or operational constraints may prevent full compliance with certain hardening baseline requirements. All exceptions must be formally documented, risk-assessed, approved at the appropriate authority level, compensating controls implemented, and the exception reviewed at regular intervals.

## 11.2  Exception Categories

| Exception Type | Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| Hardening Baseline Deviation | Legacy application incompatible with specific CIS hardening requirement. | 90 days (renewable) | CISO + System Owner |

| EOL OS / Software in Production | Legacy OS no longer receiving security patches; pending migration. | 90 days; migration plan required | CISO + CIO |

| Service Enablement Exception | Required service not in the standard approved service list. | Permanent (reviewed annually) | CISO |

| Default Credential Exception | System where vendor does not permit credential change pre-deployment. | 30 days; vendor escalation required | CISO |

| Protocol Exception | Use of a deprecated protocol required for legacy integration. | 90 days (renewable with justification) | CISO |

| Firewall Rule Exception | Rule permitting broader-than-policy access for a specific integration. | 6 months (reviewed semi-annually) | CISO / IT Security Manager |

| MDM Enrollment Exception | Approved device unable to support MDM enrollment. | 30 days; alternative controls required | CISO / IT Operations Manager |

| Non-Golden Image Deployment | Deployment from non-standard image where no Golden Image exists yet. | 30 days; hardening must be manually verified | CISO / IT Security Manager |

## 11.3  Exception Process

Requestor submits a Secure Configuration Exception Request Form via the ITSM portal, specifying: the specific baseline requirement, asset(s) affected, technical justification, duration, risk assessment, and proposed compensating controls.

IT Security reviews the request, assesses residual risk with compensating controls, and assigns a risk rating. Exceptions rated HIGH or CRITICAL risk require CISO approval regardless of exception type.

Approved exceptions are logged in the Configuration Exception Register with: approval date, authority, expiry, compensating controls, and assigned monitoring requirements.

All active exceptions are reviewed monthly by the CISO Office and reported quarterly to the Audit and Risk Committee.

Expired exceptions not renewed are automatically treated as policy violations and escalated to the CISO.

| ABSOLUTE RESTRICTION:  No exception may be granted that permits: (a) deployment of CRITICAL or CONFIDENTIAL data environment systems with known CRITICAL-severity vulnerabilities; (b) default vendor credentials on internet-facing or production systems; (c) disabled host-based firewalls on servers processing customer financial data; (d) network infrastructure with Telnet or unencrypted SNMP enabled in production. These restrictions are non-negotiable. |

| --- |

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon:

Release of a major updated version of the CIS Controls or a significantly updated CIS Benchmark for a platform in use at BFS;

Introduction of a new significant technology platform, cloud service, or asset category not currently covered by the policy;

Material changes to the BFS technology architecture or infrastructure;

Significant configuration-related security incidents or material findings from audits or regulatory examinations;

New or amended BSP circulars, NPC issuances, or PCI DSS requirements that affect configuration management obligations.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. New policy document aligned with CIS Controls v8 Control 4 and ISO/IEC 27001:2022. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 4 safeguards to their ISO/IEC 27001:2022 Annex A controls. Additional supporting ISO controls are included where they reinforce the secure configuration program.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 4.1 | Establish and Maintain a Secure Configuration Process | A.8.9 | Configuration management | IG1 |

| 4.2 | Establish and Maintain a Secure Configuration Process for Network Infrastructure | A.8.20 | Networks security | IG1 |

| 4.3 | Configure Automatic Session Locking on Enterprise Assets | A.8.1 | User endpoint devices | IG1 |

| 4.4 | Implement and Manage a Firewall on Servers | A.8.20 | Networks security | IG1 |

| 4.5 | Implement and Manage a Firewall on End-User Devices | A.8.1 | User endpoint devices | IG1 |

| 4.6 | Securely Manage Enterprise Assets and Software | A.8.9 | Configuration management | IG1 |

| 4.7 | Manage Default Accounts on Enterprise Assets and Software | A.8.9 | Configuration management | IG1 |

| 4.8 | Uninstall or Disable Unnecessary Services on Enterprise Assets and Software | A.8.8 | Management of technical vulnerabilities | IG1 |

| 4.9 | Configure Trusted DNS Servers on Enterprise Assets | A.8.20 | Networks security | IG2 |

| 4.10 | Enforce Automatic Device Lockout on Portable End-User Devices | A.8.1 | User endpoint devices | IG2 |

| 4.11 | Enforce Remote Wipe Capability on Portable End-User Devices | A.8.1 | User endpoint devices | IG2 |

| 4.12 | Separate Enterprise Workspaces on Mobile End-User Devices | A.8.1 | User endpoint devices | IG3 |

| N/A | Configuration management database (CMDB) integration | A.8.9 | Configuration management | All |

| N/A | Malware protection (hardening against malware ingress) | A.8.7 | Protection against malware | All |

| N/A | Software installation controls — only authorized software | A.8.19 | Installation of software on operational systems | All |

| N/A | Vulnerability management integration | A.8.8 | Management of technical vulnerabilities | All |

| N/A | Network service security | A.8.21 | Security of network services | All |

| N/A | Network segregation | A.8.22 | Segregation in networks | All |

| N/A | Change management for configuration changes | A.8.32 | Change management | All |

| N/A | Capacity and performance management | A.8.6 | Capacity management | All |

| N/A | Audit logging of configuration change events | A.8.15 | Logging | All |

| N/A | Monitoring of configuration changes | A.8.16 | Monitoring activities | All |

| N/A | Privileged access management and PAW controls | A.8.2 | Privileged access rights | All |

| N/A | Time synchronization (NTP) | A.8.17 | Use of clock synchronization | All |

| N/A | Cryptography — secure protocol enforcement (TLS, SSHv2) | A.8.24 | Use of cryptography | All |

| N/A | Supplier / third-party configuration standards | A.5.21 | Managing information security in the ICT supply chain | All |

| N/A | Backup of network device configurations | A.8.13 | Information backup | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate maturity; IG3 = Advanced/highest maturity. BFS targets full IG2 compliance enterprise-wide with IG3 controls applied to CRITICAL and CONFIDENTIAL environments, PCI CDE systems, core banking infrastructure, and AI-native platform components.

# APPENDIX B:  Pre-Deployment Hardening Checklist Reference

The following checklist summarizes the mandatory pre-deployment verification categories for all asset types. Detailed checklists for each platform are maintained in the BFS Configuration Baseline Register (IT Security controlled repository).

| Hardening Verification Category | Applicable Asset Types | Priority | Verification Method |

| --- | --- | --- | --- |

| Default credentials changed or account disabled | All asset types | CRITICAL | Manual + scan |

| Unnecessary services and ports disabled | Servers, endpoints, network devices | CRITICAL | Port scan + config review |

| Host-based firewall enabled and configured (default deny inbound) | Servers, endpoints | CRITICAL | Compliance scan |

| Full-disk or volume encryption enabled | Endpoints, laptops, mobile, servers | HIGH | Compliance scan / MDM |

| Approved EDR agent installed, active, and reporting | Servers, endpoints | CRITICAL | EDR console |

| Logging agent installed and forwarding to SIEM | Servers, network devices | HIGH | SIEM log receipt |

| Vulnerability scanner agent installed | Servers, endpoints | HIGH | VM console |

| NTP configured to BFS-approved sources | All network-connected assets | HIGH | Config review |

| Approved DNS resolvers configured | All network-connected assets | HIGH | Config review |

| SSH / RDP / admin protocols: encrypted and non-default port where feasible | Servers, network devices | HIGH | Config review + scan |

| Autorun/autoplay disabled (Windows endpoints) | Windows endpoints | HIGH | Compliance scan |

| PowerShell v2 disabled; transcription logging enabled (Windows) | Windows servers and endpoints | HIGH | Compliance scan |

| SELinux / AppArmor in enforcing mode (Linux servers) | Linux servers | HIGH | Config review |

| Session lock timeout configured (≤15 min workstations; ≤5 min mobile) | Endpoints, mobile devices | HIGH | Compliance scan / MDM |

| BIOS/UEFI password set; Secure Boot enabled (where supported) | Laptops, workstations, servers | MEDIUM | Physical/manual check |

| MDM enrollment completed and compliance verified | Mobile devices | CRITICAL | MDM console |

| Remote wipe capability confirmed | Mobile devices, laptops | HIGH | MDM console |

| Cloud storage public access blocked (S3 Block Public Access) | Cloud resources | CRITICAL | CSPM / AWS Config |

| IaC template policy-as-code scan passed | Cloud / IaC deployments | HIGH | CI/CD pipeline report |

| CMDB record created with all required attributes | All assets | HIGH | CMDB verification |

| Post-deployment compliance scan executed; findings documented | All assets | HIGH | Compliance scan report |

# APPENDIX C:  Quick Reference Card

## C.1  Key Contacts

| Function | Role | Contact |

| --- | --- | --- |

| Hardening baseline queries | Enterprise Architecture / IT Security | EA team via ITSM portal |

| Configuration compliance scanning | Vulnerability Management Team | ITSM portal \| vuln-mgmt@bfs.com.ph |

| Unauthorized change alerts | Security Operations Center (SOC) | soc@bfs.com.ph \| 24/7 hotline |

| Firewall rule change requests | Network Engineering / IT Security | ITSM portal – Network Change Request |

| Mobile device / MDM issues | Endpoint Management Team | IT Service Desk \| mdm@bfs.com.ph |

| IaC / cloud config queries | Enterprise Architecture / DevSecOps | EA team via ITSM portal |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

| Change Management | Change Advisory Board | ITSM portal – Change Request |

## C.2  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| Hardening baseline applied before deployment | Before first deployment |

| CRITICAL configuration finding remediation | Within 24 hours |

| HIGH configuration finding remediation | Within 7 days |

| MEDIUM configuration finding remediation | Within 30 days |

| LOW configuration finding remediation | Within 90 days |

| Unauthorized configuration change investigation | Within 8 hours of detection |

| Emergency config change — retrospective approval submission | Within 24 hours |

| CRITICAL system emergency change — CISO notification | Within 2 hours |

| Post-change compliance scan execution | Within 24 hours of change |

| Network device configuration backup | Weekly + on every change |

| Firewall rule review | Annually |

| Configuration compliance scan (full) | Monthly |

| Golden Image review and refresh | Annually (or on major OS update) |

| Hardening baseline review | Annually (or on new CIS Benchmark release) |

| Remote wipe — lost/stolen device | Within 4 hours of confirmed loss |

| MDM unenrollment on employee departure | Within 1 business day |

| Cloud public access misconfiguration remediation | Within 24 hours of detection |

BFS-ISP-004  |  Secure Configuration of Enterprise Assets and Software  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. This document is classified CONFIDENTIAL and intended for authorized internal use only.
