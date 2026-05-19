---
title: "BFS-ISP-012-Network-Infrastructure-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Network-and-Infrastructure-Security/BFS-ISP-012-Network-Infrastructure-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:40Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Network-and-Infrastructure-Security"
aliases:
  - "BFS-ISP-012-Network-Infrastructure-Management-Policy"
creator: "Un-named"
created: "2026-04-12T01:13:00Z"
modified: "2026-04-23T06:13:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>NETWORK INFRASTRUCTURE<br>MANAGEMENT POLICY<br>Device Lifecycle, Architecture Governance, Segmentation, OOB Management, and Network Monitoring<br>Policy Reference: BFS-ISP-012<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 12)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140  \|  PCI DSS v4.0<br>Companion to BFS-ISP-001 \| BFS-ISP-004 \| BFS-ISP-005 \| BFS-ISP-006 \| BFS-ISP-008 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Network Infrastructure Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-012 |

| Policy Owner | Chief Information Officer (CIO) / Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to network architecture, technology refresh, or regulatory requirements |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-004 (Secure Configuration); BFS-ISP-005 (Account and Access Management); BFS-ISP-006 (Access Control Management); BFS-ISP-007 (Vulnerability Management); BFS-ISP-008 (Audit Log Management); BFS-ISP-010 (Change Management); BFS-ISP-011 (Data Recovery) |

| Framework Alignment | CIS Controls v8 (Control 12); ISO/IEC 27001:2022 (A.8.20, A.8.21, A.8.22, A.8.15, A.8.16, A.8.17, A.8.9, A.8.32) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirements 1, 2, 6); NIST SP 800-41 (Guidelines on Firewalls); CIS Benchmarks (Network Device); RFC 5424 (Syslog); NIST CSF (PR.AC, PR.DS, DE.CM) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the mandatory requirements, governance framework, and operational standards for managing the network infrastructure of BFS Financial Services (hereinafter "the Organization" or "BFS") throughout its complete lifecycle — from design and procurement through deployment, operation, maintenance, and end-of-life decommissioning — ensuring that the network remains secure, resilient, well-documented, and continuously aligned with BFS security standards and regulatory requirements.

The network is the connective tissue of the BFS enterprise: it carries every customer transaction, every administrative command, every security event, and every piece of operational data. A poorly managed network infrastructure — with undocumented devices, expired software, inconsistent security configurations, unreviewed firewall rules, and gaps in monitoring — is an environment that threat actors actively exploit through lateral movement, network reconnaissance, and exploitation of unpatched devices. Network infrastructure devices — firewalls, routers, switches, wireless controllers, load balancers, and VPN gateways — are themselves high-value attack targets because their compromise provides pervasive visibility and control over the entire network they manage.

This policy directly implements CIS Controls v8, Control 12 (Network Infrastructure Management), encompassing all safeguards from 12.1 through 12.8. It is anchored in ISO/IEC 27001:2022 Annex A controls governing network security, network service security, network segregation, logging, monitoring activities, clock synchronization, configuration management, and change management.

The specific objectives of this policy are to:

Ensure that all network infrastructure devices are inventoried, classified, and managed throughout their full lifecycle within the BFS CMDB;

Enforce security hardening baselines on all network infrastructure consistent with CIS Benchmarks, vendor security guides, and BFS-defined standards, as governed by BFS-ISP-004;

Establish out-of-band management (OOB) as the mandatory administration model for all CRITICAL network infrastructure, separating management traffic from data-plane traffic;

Define and maintain a comprehensive, documented network architecture with approved network diagrams, zone definitions, traffic flow records, and configuration version control;

Ensure that network infrastructure device configurations are backed up, version-controlled, and recoverable within defined timeframes following a failure or security incident;

Mandate that all network infrastructure generates comprehensive audit logs forwarded to the BFS SIEM, providing visibility into administrative access, configuration changes, and traffic anomalies;

Govern the full network change management lifecycle, ensuring that all network changes are planned, reviewed, approved, tested, and documented;

Establish network device lifecycle standards ensuring timely patching, vendor support maintenance, and EOL management;

Ensure compliance with BSP Circular 1140, PCI DSS v4.0 Requirements 1 and 2, and all applicable regulatory network security obligations.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all personnel involved in the design, procurement, deployment, configuration, operation, monitoring, or decommissioning of BFS network infrastructure, including:

Network Engineering and Network Operations teams;

IT Operations teams managing network-connected systems;

Enterprise Architecture teams designing network solutions;

IT Security teams governing network security controls;

Managed service providers, third-party contractors, and vendors performing network work on behalf of BFS.

## 2.2  Device and Infrastructure Scope

This policy governs all network infrastructure devices and components, including:

### 2.2.1  Core Network Infrastructure

Routers and layer 3 switching infrastructure — campus, data center, and WAN;

Layer 2 switches — core, distribution, and access layer across all BFS premises;

Network firewalls — perimeter NGFWs, internal zone firewalls, and DMZ firewalls;

Intrusion Prevention Systems (IPS) and Intrusion Detection Systems (IDS);

Load balancers, application delivery controllers (ADC), and reverse proxies;

Wide Area Network (WAN) edge devices and SD-WAN components;

VPN gateways — site-to-site and remote access concentrators.

### 2.2.2  Wireless and Access Infrastructure

Wireless LAN controllers (WLC) and managed access points at all BFS premises;

Network Access Control (NAC) appliances and 802.1X enforcement infrastructure;

Guest network isolation devices and captive portal systems.

### 2.2.3  Out-of-Band and Management Infrastructure

Out-of-band (OOB) management network and console server infrastructure;

Jump servers and privileged access workstations (PAWs) for network administration;

Network management platforms (NMS, SNMP pollers, configuration management systems);

Network Time Protocol (NTP) infrastructure — Stratum 1 and Stratum 2 servers.

### 2.2.4  Cloud Networking

AWS Virtual Private Cloud (VPC) configurations — subnets, route tables, internet gateways;

AWS Security Groups and Network Access Control Lists (NACLs);

AWS Direct Connect and Site-to-Site VPN connections;

AWS Transit Gateway and inter-VPC routing configurations;

Cloud-native firewall and WAF configurations managed through AWS or third-party platforms.

## 2.3  Environmental Scope

This policy applies to network infrastructure across all BFS environments — production, DR, staging, development, and training — and all premises including headquarters, branch offices, data centers, co-location facilities, and any remote network extensions. Cloud network infrastructure is in scope regardless of the cloud-native management interface used.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Network Infrastructure Device | Any hardware or software component that participates in routing, switching, filtering, or management of network traffic. Includes routers, switches, firewalls, wireless access points, load balancers, VPN gateways, and network management platforms. |

| Management Plane | The portion of a network device's functionality responsible for device management: CLI access, SNMP, configuration management, and administrative control. The management plane is logically separated from the data plane (forwarding traffic) and control plane (routing protocol operations) to limit administrative exposure. |

| Data Plane | The portion of a network device responsible for forwarding user traffic according to the routing and switching tables established by the control plane. Data-plane traffic is user-generated and untrusted. |

| Out-of-Band (OOB) Management | A dedicated, physically or logically isolated management network used exclusively for administrative access to network infrastructure, separate from the data networks that carry user traffic. OOB management prevents compromise of user data traffic from affecting or being used to access administrative interfaces. |

| Console Server | A device providing serial console access to network infrastructure (routers, switches, firewalls) through the physical console port, independent of the device's in-band network interfaces. Console servers are a key OOB management component enabling recovery access when network connectivity is lost. |

| Network Diagram | A formal, version-controlled graphical representation of the network topology, including device roles, IP addressing, VLAN assignments, inter-zone connectivity, and traffic flows. Network diagrams are essential for operations, incident response, and audit. |

| Network Baseline | The approved, version-controlled configuration state of a network device, representing the known-good, hardened configuration against which drift is detected and changes are managed. |

| Configuration Drift | Unauthorized or unintended deviation from the approved network device baseline configuration — caused by unauthorized changes, software updates, or administrative actions outside the change management process. |

| Network Flow Data | Metadata about network communications collected from network devices (routers, switches, firewalls) providing source/destination IP, port, protocol, byte count, and session duration. Used for traffic analysis, anomaly detection, and forensic investigation. Common formats: NetFlow, IPFIX, sFlow. |

| SNMP (Simple Network Management Protocol) | A protocol for monitoring and managing network devices. SNMPv3 with authentication and encryption is the only approved SNMP version at BFS — SNMPv1 and SNMPv2c transmit community strings in plaintext and are prohibited. |

| Network Topology | The physical and logical arrangement of network devices, links, and connections, including the relationships between segments, zones, and devices. |

| Spanning Tree Protocol (STP) | A Layer 2 protocol preventing bridge loops in switched networks. STP misconfigurations (rogue root bridges, topology changes) are a common source of network outages and a potential attack vector. STP hardening (BPDU Guard, Root Guard, Loop Guard) is mandatory on user-facing ports. |

| BGP (Border Gateway Protocol) | The inter-domain routing protocol used on the internet and within large enterprise networks. BGP misconfigurations can cause route leaks or route hijacking, redirecting traffic. BGP authentication (MD5 or TCP-AO) is required for all BFS external BGP peerings. |

| SD-WAN (Software-Defined WAN) | A technology overlay for WAN that abstracts the underlying transport (MPLS, broadband, LTE) and centrally manages routing, security policies, and quality of service. SD-WAN components must meet the same security standards as traditional WAN devices. |

| Network EOL (End-of-Life) | Network infrastructure hardware or software that has reached end-of-support from the manufacturer — no longer receiving security patches, firmware updates, or technical support. EOL network devices are a material vulnerability. |

| ACL (Access Control List) | A set of ordered rules applied to a network interface or routing construct that permit or deny traffic based on source/destination IP, protocol, and port. ACLs are the primary tool for implementing network segmentation policies on router and switch platforms. |

| VLAN (Virtual LAN) | A logical subdivision of a physical switched network, creating isolated broadcast domains without requiring separate physical infrastructure. VLANs are the primary mechanism for network segmentation at the Layer 2 level. |

| Trunk Port | A switch port configured to carry traffic from multiple VLANs simultaneously, typically used for uplinks between switches and connections to routers. Trunk ports that are not explicitly needed shall not be configured on access-layer switch ports facing endpoints. |

| Port Security | A Layer 2 switch feature that restricts which MAC addresses can communicate on a switch port, limiting the number of MAC addresses per port and triggering security actions (shutdown, restrict) when unauthorized MAC addresses attempt to connect. |

| Network Monitoring | The continuous collection, analysis, and alerting on network device health metrics (CPU, memory, interface utilization, error rates) and network flow data, providing operational visibility and early warning of failures, anomalies, and security events. |

| Change Freeze | A designated period during which no network changes are permitted — typically before and during critical business events (year-end processing, major product launches, regulatory examination periods). Change freezes protect network stability during high-risk operational windows. |

# 4.  NETWORK INFRASTRUCTURE GOVERNANCE FRAMEWORK

BFS's network infrastructure is governed through a structured framework covering four interconnected domains. Effective network infrastructure management requires that all four domains operate consistently and in coordination.

| Governance Domain | Core Requirements | Key Controls | Policy Section |

| --- | --- | --- | --- |

| Inventory and Lifecycle | All network devices in CMDB; EOL management; vendor support currency. | CMDB registration; EOL tracking; procurement standards; decommissioning procedure. | Section 5.1 |

| Configuration and Hardening | Approved baselines; configuration backup; version control; drift detection. | CIS Benchmarks applied; config backups weekly; SIEM config change alerting; quarterly review. | Sections 5.2–5.3 |

| Architecture and Documentation | Current diagrams; documented zones; traffic flow records; change-controlled topology. | Formal network diagrams; zone matrix; topology version control; architecture review board. | Section 5.4 |

| Management Access | OOB management; encrypted protocols only; PAM-brokered admin access; MFA. | Dedicated OOB VLAN; console servers; SSHv2 only; Telnet/SNMPv1/v2c prohibited; PAM required. | Section 5.5 |

| Monitoring and Telemetry | SIEM integration; flow data collection; device health monitoring; NTP sync. | NetFlow/IPFIX to SIEM; SNMP traps to NMS; syslog-TLS to SIEM; NTP policy enforced. | Sections 5.6–5.7 |

| Change Governance | Formal change management; emergency process; post-change verification; freeze periods. | Change Management process (BFS-ISP-010); CAB approval; rollback plans; config diff review. | Section 5.8 |

## 4.1  Network Infrastructure Device Inventory Classification

Network infrastructure devices shall be classified in the BFS CMDB according to their role, criticality, and impact on BFS operations:

| Class | Description | Examples | Management Requirements |

| --- | --- | --- | --- |

| CRITICAL | Devices whose failure or compromise causes immediate, enterprise-wide network disruption or exposes all BFS data. | Core routers; data center core switches; perimeter NGFWs; internet gateway; WAN edge. | OOB management mandatory; PAM-brokered access; session recording; dual redundancy; 4-hour patch SLA for CRITICAL CVEs. |

| HIGH | Devices whose failure causes significant segment outage or impacts multiple business functions. | Distribution switches; internal zone firewalls; wireless LAN controllers; VPN gateways. | OOB management required; MFA for admin access; 7-day patch SLA; configuration backup on every change. |

| MEDIUM | Devices whose failure affects a single office floor, department, or application. | Access layer switches; branch routers; load balancers; proxy servers. | Standard admin controls; weekly configuration backup; 30-day patch SLA. |

| LOW | Non-critical devices supporting isolated functions; failure impact is limited. | Lab switches; training network devices; redundant test appliances. | Standard admin controls; monthly configuration backup; best-effort patching. |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, systems, and environments within the scope of this policy.

## 5.1  Network Device Inventory and Lifecycle Management

PS-1.1  All network infrastructure devices within the scope of this policy shall be registered in the BFS CMDB (BFS-ISP-001) before deployment. The CMDB record for each network device shall include at minimum: device hostname, management IP address, device type and model, manufacturer and firmware version, physical location, network role and criticality classification, asset owner, device support status (in-support / approaching EOL / EOL), and hardware warranty expiry date.

PS-1.2  The Network Engineering team shall maintain a network device EOL register, tracking the vendor-announced end-of-support dates for all network hardware and firmware versions deployed at BFS. Devices within twelve (12) months of vendor EOL shall be flagged in the CMDB, and a migration or replacement plan shall be developed and approved within ninety (90) days of the EOL flag.

PS-1.3  Network infrastructure devices that have reached vendor EOL — no longer receiving security firmware updates — shall not be operated in production environments without a CISO-approved risk acceptance, documented compensating controls (network isolation, enhanced monitoring, IPS coverage), and an active replacement plan with a defined target date. EOL network devices without an approved exception shall be escalated to the CIO and CISO as a critical network risk.

PS-1.4  All network device hardware and firmware shall be sourced from authorized vendors and official distribution channels. Network equipment from untrusted third-party resellers or with tamper evidence shall not be deployed. For CRITICAL network infrastructure, BFS shall apply supply chain security practices including firmware integrity verification before deployment.

PS-1.5  When a network device is decommissioned, its configuration shall be archived in the configuration management system, the device shall be removed from all management platforms (NMS, SIEM, OOB system), and the CMDB record updated to reflect decommissioning. Before disposal or reassignment, all configuration data shall be securely wiped using factory reset procedures.

## 5.2  Network Device Secure Configuration and Hardening

PS-2.1  All network infrastructure devices shall be configured in accordance with the applicable BFS-approved hardening baseline before deployment. Hardening baselines for network devices are derived from CIS Benchmarks for the specific platform (CIS Cisco, CIS Juniper, CIS Palo Alto, and equivalents) as defined in BFS-ISP-004, supplemented by BFS-specific requirements.

PS-2.2  Default vendor credentials on all network devices — including default passwords, community strings, SNMP v1/v2 communities, and API keys — shall be changed before the device is connected to any BFS network. Generic, shared, or trivially guessable credentials are prohibited on all network infrastructure.

PS-2.3  Unnecessary services, protocols, and interfaces shall be disabled on all network devices before deployment. Specifically, the following shall be disabled on all BFS network infrastructure unless explicitly required and documented: Telnet, HTTP (unencrypted management), SNMPv1 and SNMPv2c, rsh/rlogin/rexec, CDP/LLDP on untrusted or user-facing ports, IP source routing, IP directed broadcast, proxy ARP on untrusted interfaces, finger, chargen, echo, and discard services.

PS-2.4  All network management plane access shall use encrypted, authenticated protocols: SSH version 2 for CLI access; HTTPS with TLS 1.2 minimum for web-based management; SNMPv3 with AuthPriv (authentication and encryption) for SNMP monitoring. Telnet, HTTP, SNMPv1, and SNMPv2c are unconditionally prohibited for management access on any BFS network device.

PS-2.5  Network infrastructure devices shall enforce login banners warning that unauthorized access is prohibited and that sessions may be monitored. Login banners shall not disclose system details (OS type, version, internal IP ranges) that could aid an attacker.

PS-2.6  Absolute timeouts shall be configured for all management sessions on network devices. Idle CLI sessions shall be terminated after a maximum of ten (10) minutes of inactivity. Console and VTY sessions shall enforce session timeouts regardless of the management protocol used.

## 5.3  Network Device Configuration Management

PS-3.1  The running configuration of all network devices shall be backed up at the following minimum frequencies: CRITICAL devices — on every configuration change and at least weekly; HIGH devices — on every configuration change and at least weekly; MEDIUM and LOW devices — at least monthly. Configuration backups shall be stored in an encrypted, access-controlled, version-controlled configuration management repository separate from the network devices themselves.

PS-3.2  Configuration backups shall be stored in a system that retains at minimum the last twenty (20) versions of each device's configuration, enabling rollback to any recent known-good state. The configuration repository shall be protected with access controls preventing modification or deletion by non-authorized personnel, including network engineers who are not configuration repository administrators.

PS-3.3  Network device configurations shall be version-controlled with each change tagged with: the initiating engineer's identity, the associated change record ID, the change date and time, and a description of what was changed. Version control enables forensic reconstruction of the sequence of changes leading to any network incident.

PS-3.4  Configuration compliance scanning — automated comparison of device running configurations against the approved baseline — shall be performed at least monthly for all network devices and after every significant configuration change. Configuration deviations shall generate alerts in the SIEM and be investigated within twenty-four (24) hours for CRITICAL and HIGH devices.

PS-3.5  The startup configuration (saved to NVRAM or equivalent persistent storage) shall match the running configuration after any configuration change is validated and approved. Discrepancies between running and startup configurations — indicating a change that has not been saved or that will not survive a reboot — shall be treated as a configuration management finding.

## 5.4  Network Architecture Documentation

PS-4.1  BFS shall maintain a current, accurate, and formally approved network architecture documentation set, comprising: logical network topology diagrams, physical network topology diagrams, IP addressing and VLAN assignment records, network zone definitions (aligned with BFS-ISP-006), inter-zone traffic flow matrices, and WAN and cloud connectivity documentation.

PS-4.2  Network diagrams and documentation shall be version-controlled and updated within ten (10) business days of any material network change. Outdated network documentation is a material operational and security risk — it impedes incident response, misrepresents the actual network posture to auditors and regulators, and prevents accurate network risk assessment.

PS-4.3  Network architecture documentation shall be classified as CONFIDENTIAL and stored in an access-controlled document repository. Network diagrams shall not be stored on shared drives accessible to general staff, emailed externally without encryption, or stored on publicly accessible systems.

PS-4.4  A formal network architecture review shall be conducted at least annually by the Network Engineering team, IT Security, and Enterprise Architecture to assess the network's alignment with current business requirements, security standards, regulatory obligations, and the BFS Zero Trust roadmap. Findings from the architecture review shall be tracked as an improvement backlog.

PS-4.5  Any proposed change to the network architecture — including new network segments, new zone definitions, changes to firewall zoning, new WAN circuits, or cloud network architecture changes — shall be reviewed and approved by the Enterprise Architecture team and CISO before implementation. Architecture changes without prior approval are a policy violation.

## 5.5  Out-of-Band (OOB) Management

PS-5.1  All CRITICAL and HIGH classified network devices shall be managed exclusively through the BFS Out-of-Band (OOB) management network. The OOB network is a dedicated, physically or logically isolated management VLAN with no connectivity to user or server data networks, accessible only from designated Privileged Access Workstations (PAWs) or jump servers over encrypted protocols.

PS-5.2  Console server infrastructure shall be deployed at all BFS data centers and premises hosting CRITICAL or HIGH network devices, providing serial console access to all managed devices independent of in-band network connectivity. Console servers enable recovery access when in-band management is unavailable due to misconfiguration or network failure.

PS-5.3  Administrative access to network device management interfaces — whether via SSH, HTTPS, or console — shall be restricted to: (a) specific, named source IP addresses on the OOB management network; (b) authenticated by individual named credentials (shared administrative accounts are prohibited on network devices); (c) protected by MFA where the management platform supports it; and (d) brokered through the BFS PAM platform for CRITICAL and HIGH devices.

PS-5.4  All administrative sessions on CRITICAL network devices shall be logged by the PAM platform (or the OOB console server) and forwarded to the SIEM. Session logs shall include: authenticating user identity, session start time, commands executed, session end time, and source IP. Network device session recordings for CRITICAL devices shall be retained for twelve (12) months.

PS-5.5  Remote administrative access to network devices from outside the BFS premises (e.g., on-call engineers accessing from home) shall be permitted only over the BFS approved VPN, and shall terminate at the OOB management network — not directly to device management interfaces. Direct remote access to network device management interfaces from the internet is prohibited without an explicit, CISO-approved exception.

## 5.6  Network Device Logging and SIEM Integration

PS-6.1  All network infrastructure devices shall forward audit logs to the BFS SIEM platform in real time using syslog over TLS (RFC 5425) or equivalent encrypted forwarding. Unencrypted syslog forwarding (UDP syslog) is prohibited for CRITICAL and HIGH devices. Log forwarding shall be configured before the device is placed into production service.

PS-6.2  At minimum, the following log event types shall be generated and forwarded to the SIEM for all network devices: administrator authentication (success and failure); configuration changes; interface state changes (up/down); routing adjacency changes; security policy matches (firewall permit/deny); system restarts and hardware alerts; SNMP authentication failures; AAA authentication events.

PS-6.3  Network flow data (NetFlow, IPFIX, or sFlow as supported by the device) shall be exported from all CRITICAL and HIGH network devices and ingested into a flow analysis platform integrated with the SIEM. Network flow data is essential for detecting lateral movement, C2 communications, data exfiltration, and traffic anomalies that individual log events may not reveal.

PS-6.4  Network device log coverage shall be monitored continuously. CRITICAL or HIGH devices that have not forwarded any logs within fifteen (15) minutes shall generate an automated SIEM alert for SOC investigation. Log gaps from network devices may indicate device compromise, OOB channel disruption, or deliberate log suppression.

PS-6.5  All BFS network devices shall synchronize their clocks using the BFS NTP infrastructure defined in BFS-ISP-008. Consistent, accurate timestamps are essential for correlating network device logs with endpoint, application, and cloud logs during incident investigation. Network devices with clock skew exceeding one hundred milliseconds (100 ms) from the authoritative NTP source shall be investigated.

## 5.7  Network Performance and Health Monitoring

PS-7.1  All network devices shall be monitored for operational health metrics — CPU utilization, memory utilization, interface packet loss, interface error rates, and fan/power status — using the BFS Network Management System (NMS). Health alerts for CRITICAL devices shall generate SIEM-correlated alerts for SOC awareness.

PS-7.2  Network capacity utilization shall be monitored for all CRITICAL and HIGH network links. Sustained link utilization exceeding eighty percent (80%) on CRITICAL links shall trigger capacity review and planning action. Network capacity planning shall be performed at least semi-annually, anticipating twelve (12) months of traffic growth.

PS-7.3  Network availability metrics — uptime, MTBF (Mean Time Between Failures), and MTTR (Mean Time to Recovery) for network devices — shall be tracked and reported monthly. CRITICAL device availability targets shall be defined in the BFS service level framework and monitored against those targets.

PS-7.4  Redundancy configurations — including HSRP/VRRP failover, spanning tree topology, and link aggregation (LACP/PAGP) — shall be tested at least annually to confirm failover operates within expected parameters. Redundancy failures discovered during testing shall be remediated before the test is closed.

## 5.8  Network Change Management

PS-8.1  All changes to network device configurations — including firewall rule additions or modifications, routing policy changes, VLAN additions or deletions, ACL modifications, and software/firmware upgrades — shall be processed through the BFS Change Management process (referenced in related policies). Unauthorized network configuration changes are prohibited and constitute a security incident.

PS-8.2  Network change requests shall include a rollback plan specifying the exact commands or procedures required to revert the change if it causes an unintended impact. Changes to CRITICAL network devices without a documented, tested rollback plan shall not be approved.

PS-8.3  Configuration changes on CRITICAL network devices shall require a two-engineer review — the implementing engineer and a peer reviewer — before deployment. This dual-person review prevents single points of human error on the most impactful devices.

PS-8.4  Emergency network changes — made outside the standard change management process due to an active security incident, outage, or imminent threat — shall be authorized by the CISO or Network Engineering Manager and documented in the ITSM within two (2) hours of implementation. Emergency changes shall be reviewed retrospectively by the Change Advisory Board (CAB) within twenty-four (24) hours.

PS-8.5  Post-change verification shall be performed for all network changes, confirming: the intended change has taken effect (configuration diff verified), no unintended traffic impact has occurred (monitoring check), no configuration syntax errors exist, and the configuration has been saved to startup configuration and backed up to the configuration repository.

PS-8.6  Change freeze periods shall be defined in the BFS change management calendar and enforced by the Network Engineering team and CAB. During change freezes, only emergency changes approved by the CIO and CISO are permitted on CRITICAL and HIGH network infrastructure. Change freeze periods shall include: year-end and quarter-end financial processing windows, major regulatory examination periods, and any period designated by the CIO or CISO.

## 5.9  Network Device Patching and Firmware Management

PS-9.1  Network infrastructure firmware and software versions shall be included in the BFS vulnerability management program (BFS-ISP-007). Known CVEs affecting deployed network firmware shall be remediated within the SLAs defined in BFS-ISP-007, which for CRITICAL vulnerabilities on CRITICAL network devices is twenty-four (24) hours.

PS-9.2  Firmware upgrades on CRITICAL and HIGH network devices shall be scheduled during defined maintenance windows, tested in a lab or staging environment where feasible, and require a documented rollback procedure. Before upgrading production firmware, the upgrade shall be validated on a lower-criticality device or in a lab environment.

PS-9.3  Firmware integrity shall be verified before installation. BFS shall verify the cryptographic hash (SHA-256 or equivalent) of downloaded firmware files against the manufacturer-published hash values before applying firmware to any production network device. Unverified firmware shall not be installed.

PS-9.4  All deployed network device firmware versions shall be tracked in the CMDB with their current patch level and the date of the last firmware update. The Network Engineering team shall review firmware currency monthly and maintain a firmware roadmap identifying devices requiring upgrades in the next ninety (90) days.

## 5.10  Wireless Network Infrastructure Management

PS-10.1  All wireless LAN controllers and access points shall be managed through a centralized wireless management platform that enforces consistent security policies, monitors RF environment health, and provides WIDS/WIPS capabilities as defined in BFS-ISP-006. Standalone, unmanaged access points are prohibited on the BFS corporate network.

PS-10.2  Wireless infrastructure configurations — including SSID configurations, authentication policies, VLAN mappings, and transmit power settings — shall be version-controlled and backed up following the same schedule as other CRITICAL and HIGH network devices.

PS-10.3  Access point firmware shall be managed centrally through the wireless LAN controller and updated within the same patching SLAs as other network devices. Rogue firmware on access points is a significant threat vector — firmware integrity verification shall be enforced by the wireless management platform.

## 5.11  Cloud Network Infrastructure Management

PS-11.1  Cloud network infrastructure configurations — VPC configurations, Security Group rules, NACL rules, route tables, Transit Gateway configurations, and Direct Connect settings — shall be managed through Infrastructure-as-Code (IaC) templates subject to version control, code review, and security scanning as defined in BFS-ISP-002. Manual ad-hoc changes to production cloud network configurations via the AWS console without an associated IaC change and approved change record are prohibited.

PS-11.2  Cloud Security Posture Management (CSPM) tooling shall continuously monitor cloud network configurations for deviations from approved baselines, including: overly permissive Security Group rules (0.0.0.0/0 on sensitive ports), publicly exposed management interfaces, disabled flow logging, and unauthorized route table changes. CSPM findings rated CRITICAL or HIGH shall be remediated within twenty-four (24) hours.

PS-11.3  AWS VPC Flow Logs shall be enabled for all BFS VPCs and all network interfaces. Flow logs shall be delivered to a centralized S3 bucket with Object Lock protection and ingested into the SIEM. Disabling or deleting VPC Flow Logs on any production VPC is a CRITICAL security event triggering immediate SIEM alert.

PS-11.4  AWS Service Control Policies (SCPs) at the organization level shall enforce network security guardrails across all BFS AWS accounts: preventing deletion of VPC Flow Logs, restricting the creation of overly permissive Security Group rules, requiring encryption for all data in transit, and enforcing approved region constraints on resource creation.

# 6.  PROCEDURES

## 6.1  Network Device Onboarding Procedure

All new network infrastructure devices shall complete the following procedure before being placed into production service:

CMDB Pre-Registration: Network Engineering submits a CMDB registration request before deploying the device, recording: device type, model, intended role, criticality classification, physical location, and planned management IP.

Baseline Configuration Application: The approved hardening baseline (BFS-ISP-004) is applied to the device. The configuration is prepared off-line or in a staging environment before the device is connected to the production network. All default credentials are changed.

Security Review: IT Security reviews the device configuration against the applicable CIS Benchmark and BFS hardening standard. A configuration compliance report is produced. All CRITICAL and HIGH severity findings are remediated before production deployment.

OOB Management Registration: The device is registered in the OOB management system — console server access configured, management IP assigned on the OOB VLAN, SNMP credentials configured (SNMPv3 only), and SSH host keys recorded.

Logging Configuration: Syslog-TLS forwarding to the SIEM is configured and tested. NetFlow export to the flow analysis platform is configured (for eligible device types). SNMP trap destination is set to the NMS.

NTP Configuration: NTP is configured to sync from the BFS internal Stratum 2 servers. Clock synchronization is verified before the device enters production.

Configuration Backup: The initial production baseline configuration is backed up to the configuration management repository. The CMDB record is updated with the device status set to 'Active'.

Change Record Closure: The onboarding change record in the ITSM is closed with documentation confirming all onboarding steps were completed and verified.

## 6.2  Network Configuration Change Procedure

All network configuration changes shall follow this procedure to ensure controlled, documented, and reversible changes:

Change Request Submission: Network engineer submits a Change Request in the ITSM, documenting: device(s) affected, change description, business justification, configuration commands to be executed, expected impact, rollback procedure, and maintenance window request.

Peer Review: A second Network Engineer (not the change requester) reviews the proposed configuration for technical correctness, security compliance, and completeness of the rollback procedure. Review outcome is recorded in the change record.

CAB Review and Approval: Standard changes are approved by the CAB. High-risk changes (affecting CRITICAL devices, perimeter firewalls, or routing infrastructure) require CISO review before CAB approval.

Pre-Change Backup: Immediately before implementing the change, the current running configuration of all affected devices is backed up to the configuration repository, tagged with the change record ID.

Change Implementation: The change is implemented during the approved maintenance window. All commands are executed exactly as documented. Any deviation from the documented commands requires the engineer to halt and re-seek approval.

Post-Change Verification: The engineer verifies: intended change is reflected in the running configuration; no unintended connectivity changes have occurred; the configuration has been saved to startup-config; monitoring shows no unexpected health events on the changed device.

Configuration Backup (post-change): The updated running configuration is backed up to the configuration repository, tagged with the change record ID and marked as post-change.

Change Record Closure: The change record is closed in the ITSM with confirmation that verification passed. If verification failed, the rollback procedure is executed and the change record is marked as 'Rolled Back' with the reason documented.

## 6.3  Network Device EOL Management Procedure

The following procedure governs the management of network devices approaching or at end-of-life:

EOL Identification: Network Engineering reviews vendor announcements and compares against the CMDB firmware version records. Devices within 12 months of EOL are flagged in the CMDB with an 'EOL Warning' status.

Impact Assessment: Network Engineering and IT Security assess the risk posed by the approaching EOL: criticality classification of the device, availability of a supported replacement, risk of unpatched CVEs post-EOL, and complexity of replacement.

Migration Plan Development: A replacement or migration plan is developed within 90 days of the EOL flag, including: replacement device specifications, network impact assessment, migration timeline, testing plan, and approved budget allocation.

CIO and CISO Approval: The migration plan is approved by the CIO and CISO. Devices reaching EOL without an approved migration plan are escalated to the Board Risk Committee.

Compensating Controls (if EOL before replacement): Where a device will remain in service past its EOL date, compensating controls are implemented: network isolation (restrict accessible services), enhanced IPS coverage, increased monitoring frequency, and no exposure to untrusted networks.

Replacement Execution: The replacement device is deployed following the standard device onboarding procedure (Section 6.1). The EOL device is decommissioned following the standard decommissioning procedure.

CMDB Update: The CMDB record is updated to reflect the replacement. The decommissioned device's record is archived.

## 6.4  Unauthorized Network Change Investigation Procedure

When an unauthorized or unexplained network configuration change is detected — via SIEM alert, configuration compliance scan, or manual discovery — the following procedure applies:

Detection: SIEM correlation rule or configuration compliance scan detects a configuration change not associated with an approved change record. Alert generated.

SOC Initial Triage (within 1 hour for CRITICAL devices): SOC analyst reviews the SIEM alert, identifies the device(s) affected, and attempts to correlate the change with an approved change record. If no change record exists, escalate immediately to IT Security Manager.

Network Engineering Verification: Network Engineering reviews the device's configuration history and change log to identify when and how the change occurred. Device access logs (SIEM, OOB system) are examined for the session that made the change.

Security Incident Declaration: If the change cannot be attributed to an authorized engineer acting under an approved change record, the event is declared a Security Incident in the ITSM and the CISO is notified.

Containment: If the unauthorized change represents an ongoing security risk (e.g., a new firewall rule permitting unauthorized access), the change is rolled back immediately under emergency change authority. If the change may be evidence of a broader compromise, the device is isolated pending forensic investigation.

Forensic Preservation: Device logs, session recordings, and configuration diffs are preserved as forensic evidence before any rollback or remediation.

Root Cause Analysis: IT Security investigates the root cause — unauthorized internal change, compromised admin credentials, or external attack. Findings are documented in a post-incident report to the CISO within five (5) business days.

# 7.  GUIDELINES

## 7.1  Network Security Hardening Guidelines by Device Type

### 7.1.1  Routers

Control Plane Policing (CoPP): Implement CoPP on all routers to rate-limit and protect the router CPU from traffic-based denial-of-service attacks. CoPP policy classes shall cover: ICMP, BGP, OSPF, SSH, SNMP, and all other traffic destined for the router's own interfaces.

Routing Protocol Authentication: All routing protocol peerings (OSPF, BGP, EIGRP, IS-IS) shall use cryptographic authentication — MD5 or SHA-based authentication at minimum, with OSPF SHA-256 (HMAC) preferred. Unauthenticated routing protocol peerings are prohibited.

BGP Security: External BGP sessions shall use BGP prefix filtering (prefix-lists and route-maps), BGP Maximum Prefix limits, and BGP RPKI (Resource Public Key Infrastructure) origin validation where feasible to prevent route injection and route leak events.

Unicast Reverse Path Forwarding (uRPF): Enable uRPF strict mode on all interfaces connected to end-user networks to prevent IP source address spoofing from those segments.

### 7.1.2  Switches

STP Hardening: Enable BPDU Guard on all access-layer ports to prevent rogue switches from influencing the spanning tree topology. Enable Root Guard on all distribution uplinks. Enable Loop Guard on all non-designated ports. PortFast shall only be enabled on ports confirmed to connect to end devices, not infrastructure.

DHCP Snooping: Enable DHCP snooping on all VLANs across all access-layer switches. Define trusted ports (uplinks to distribution layer) and untrusted ports (all access ports). DHCP snooping prevents rogue DHCP servers from poisoning client address assignments.

Dynamic ARP Inspection (DAI): Enable DAI for all VLANs on access-layer switches. DAI validates ARP packets against the DHCP snooping binding table, preventing ARP cache poisoning attacks.

IP Source Guard: Enable IP Source Guard on access-layer switch ports to restrict IP traffic to the specific IP-MAC binding in the DHCP snooping table, preventing IP address spoofing from endpoint ports.

802.1X Port Authentication: All access-layer switch ports shall enforce 802.1X authentication via NAC, requiring devices to authenticate before being granted network access. Ports without 802.1X support (legacy devices) shall be placed in a restricted VLAN with compensating controls.

### 7.1.3  Firewalls and NGFWs

Asymmetric Routing Prevention: Ensure firewall state tables are consistent with routing — asymmetric routing through firewalls causes session state mismatches and may silently permit traffic that should be denied. Routing design shall route all traffic for a session through the same firewall pair.

Application-Layer Visibility: NGFW application identification shall be enabled for CRITICAL zone boundary traffic to provide application-level traffic visibility beyond port-based rules. Application-based policies shall supplement (not replace) port-based rules.

IPS Inline Mode: IPS/IDS shall operate in inline prevention mode (not passive detection mode) on all internet-facing firewall segments. IPS signature profiles shall be tuned based on the threat profile applicable to financial services infrastructure.

High Availability: Perimeter and critical internal firewalls shall be deployed in active/standby or active/active HA pairs. Failover time shall be defined and tested annually. HA synchronization links shall be dedicated and not shared with data traffic interfaces.

## 7.2  Network Documentation Best Practices

Living Documentation: Network diagrams and topology records shall be treated as living documents — updated whenever the network changes, not retrospectively. An outdated network diagram is operationally dangerous during incident response.

Diagram Standards: All BFS network diagrams shall use a consistent notation standard (industry-standard symbols, consistent color coding for device types and security zones, consistent level of detail per diagram type). Network Engineering shall maintain a BFS network diagram style guide.

IP Address Management (IPAM): BFS shall operate a centralized IP Address Management (IPAM) system that records all subnet allocations, VLAN assignments, gateway addresses, and device management IPs across all environments. IPAM shall be the authoritative source for network addressing and shall be kept current.

Network Change Log: A rolling network change log shall be maintained in the configuration management system, providing a complete audit trail of all changes made to the network — who made the change, when, what was changed, and which ITSM change record it is associated with.

## 7.3  Network Monitoring and Analytics Guidelines

Baseline Traffic Profiles: IT Security and Network Engineering shall establish and maintain traffic baseline profiles for CRITICAL network segments. Significant deviations from baseline (e.g., a 10x increase in DNS query volume, unexpected traffic on new port) shall trigger SOC investigation.

Network Detection and Response (NDR): A Network Detection and Response platform shall analyze NetFlow/IPFIX data to detect behavioral anomalies indicative of: lateral movement, command-and-control communications, data exfiltration patterns, and credential-based attacks. NDR findings shall be ingested into the SIEM for correlation with endpoint and application events.

SNMP Polling vs. Streaming Telemetry: For network devices supporting streaming telemetry (gNMI/gRPC), streaming telemetry is preferred over SNMP polling for operational health monitoring, providing more granular, real-time data. SNMP v3 shall be maintained as a fallback monitoring protocol.

Alert Tuning: Network monitoring alerts shall be tuned quarterly to reduce false positive rates. Alerts with a false positive rate exceeding 20% shall be reviewed and refined. High false positive rates erode SOC alert triage effectiveness.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of network infrastructure risk posture. Reviews significant network incidents, EOL device escalations, and network vulnerability posture. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise network infrastructure management program. Ensures adequate investment in network refresh, OOB infrastructure, and network monitoring tooling. Reviews network EOL escalations and significant network change requests. Co-approves this policy. |

| Chief Information Security Officer (CISO) | Responsible for network security governance. Approves network architecture changes, OOB management exceptions, and firewall rule changes for CRITICAL systems. Reviews SIEM network alerts and configuration drift findings. Signs off on annual network architecture review outcomes. |

| Chief Technology Officer (CTO) | Ensures network infrastructure requirements are embedded in technology architecture decisions. Reviews and approves major network architecture changes. Manages the network technology roadmap including EOL planning and Zero Trust network evolution. |

| Network Engineering Team | Designs, deploys, configures, and operates all BFS network infrastructure. Maintains network documentation and configuration version control. Implements approved network changes. Manages EOL tracking and migration planning. Executes network device onboarding and decommissioning procedures. |

| Network Operations Team | Monitors network health via the NMS. Responds to network availability alerts. Coordinates network maintenance windows. Manages network monitoring platform and SNMP infrastructure. Tracks network capacity utilization and escalates capacity concerns. |

| IT Security Team | Develops and maintains network device hardening baselines. Conducts configuration compliance scanning. Reviews network architecture for security implications. Manages SIEM correlation rules for network events. Reviews firewall rule change requests. |

| Cloud Infrastructure Team | Manages cloud network configurations (VPCs, Security Groups, NACLs, Transit Gateway). Implements and monitors cloud CSPM findings for network issues. Manages IaC templates for cloud network provisioning. Enforces SCPs for network security guardrails. |

| Security Operations Center (SOC) | Monitors SIEM for network configuration changes, log gaps, unauthorized access events, and flow data anomalies. Responds to NDR alerts. Investigates unauthorized network configuration changes. Correlates network events with endpoint and application security events. |

| Enterprise Architecture Team | Defines network architecture standards and design patterns. Reviews major network architecture proposals. Maintains the BFS network technology roadmap. Ensures network architecture aligns with Zero Trust principles and security best practices. |

| Change Advisory Board (CAB) | Reviews and approves network change requests. Enforces change freeze periods. Reviews emergency network changes retrospectively. Escalates high-risk network changes to CISO for additional review. |

| Compliance and Risk Officers | Validates network infrastructure compliance through internal audits. Maintains PCI DSS Requirement 1 evidence for CDE network controls. Coordinates regulatory examination evidence requests related to network security. |

| Internal Audit | Independently assesses network device inventory accuracy, configuration management effectiveness, OOB management compliance, log coverage, and network change governance. Reports to the Audit and Risk Committee. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circular 1140 (MORB IT Risk Management)

Network infrastructure management is a fundamental IT risk management control under BSP Circular 1140:

Network architecture documentation and segmentation controls are required components of BFS's IT risk management framework, demonstrating appropriate separation of critical banking systems from general IT and internet-facing systems;

Network device EOL management is a required element of IT asset risk management — BSP expects supervised institutions to maintain current, vendor-supported infrastructure for critical banking operations;

Network change management records provide evidence of controlled operations required for BSP technology risk examinations;

OOB management infrastructure supports the availability and resilience requirements for critical IT systems under the MORB framework.

## 9.2  PCI DSS v4.0 Compliance

BFS's network infrastructure management directly implements PCI DSS v4.0 requirements for CDE-scoped systems:

PCI DSS Requirement 1 (Install and Maintain Network Security Controls): Implemented by the network segmentation architecture, firewall governance, and network change management procedures in this policy and BFS-ISP-006;

PCI DSS Requirement 1.2.1 — All network security control configurations maintained and kept current: Implemented by Section 5.3 (configuration management) and Section 5.8 (change management);

PCI DSS Requirement 1.3 — Restrict inbound and outbound traffic to CDE: Implemented by the zone architecture and firewall rule governance in BFS-ISP-006 and this policy's configuration management requirements;

PCI DSS Requirement 2.2 — System components configured and managed with configuration standards: Implemented by Section 5.2 (hardening) and Section 5.3 (configuration management);

PCI DSS Requirement 6.3.3 — All system components protected from known vulnerabilities through patch management: Implemented by Section 5.9 (firmware management).

## 9.3  Philippine Data Privacy Act (RA 10173)

Network infrastructure management supports BFS's DPA obligations through:

Network segmentation controls that physically or logically isolate systems processing personal data from general-access networks, implementing the DPA's organizational and technical safeguard requirements;

Network flow monitoring that provides visibility into anomalous data transfers that may indicate personal data breach in progress, supporting the 72-hour NPC notification obligation;

OOB management controls that prevent unauthorized administrative access to network devices that could be used to redirect or intercept personal data traffic;

Network documentation that enables forensic reconstruction of network activity patterns during personal data breach investigations.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous SIEM monitoring for unauthorized network configuration changes, log gaps, and OOB access anomalies;

Monthly configuration compliance scanning of all network devices against approved baselines;

Monthly firmware currency review and EOL register update by Network Engineering;

Monthly network flow anomaly review by IT Security;

Quarterly network device configuration backup integrity verification;

Annual network architecture review by Network Engineering, IT Security, and Enterprise Architecture;

Annual network infrastructure penetration test and segmentation validation;

Monthly KRI reporting to the CISO and CIO covering the KPIs below.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Network device CMDB coverage (registered vs. active devices) | 100% | Monthly |

| CRITICAL / HIGH devices with OOB management configured | 100% | Monthly |

| Network device configuration backup currency (within required window) | 100% | Weekly |

| Configuration compliance scan coverage (% of devices scanned monthly) | 100% | Monthly |

| CRITICAL device configuration drift findings investigated within 24 hours | 100% | Per finding |

| Network device log forwarding to SIEM (% active sources) | ≥ 99% | Daily |

| CRITICAL / HIGH device log gap investigation within 15 minutes | 100% | Per gap |

| Network device NTP synchronization compliance (within 100ms) | ≥ 99% | Daily |

| EOL devices in production without approved risk acceptance | 0 | Monthly |

| CRITICAL device firmware patch within 24-hour SLA (for CRITICAL CVEs) | 100% | Per CVE |

| Unauthorized network configuration changes investigated within 1 hour | 100% | Per event |

| Network change requests with rollback plans (CRITICAL devices) | 100% | Per change |

| Annual network architecture review completed | Annual | Annual |

| Annual network penetration test / segmentation validation completed | Annual | Annual |

| Cloud network CSPM CRITICAL findings remediated within 24 hours | 100% | Per finding |

| VPC Flow Logs enabled on all production VPCs | 100% | Daily |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Late CMDB update after device deployment; failure to back up device configuration after a change; late submission of change record. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Making a network configuration change without an approved change record; deploying a network device without hardening baseline; using SNMPv2c on a production device. | Formal warning; immediate rollback of unauthorized change; CISO notification; access review. |

| Serious | Making a material network change to a CRITICAL device without authorization; deliberately bypassing OOB management controls; disabling network device logging without CISO approval; sharing network device admin credentials. | Suspension pending investigation; formal disciplinary action up to termination; forensic investigation of all activity during the violation period; CISO escalation. |

| Critical / Legal | Deliberately misconfiguring network devices to create unauthorized access paths; tampering with network device logs to conceal unauthorized activity; making network changes to enable data exfiltration. | Immediate termination; referral to law enforcement; prosecution under RA 10175; mandatory BSP and NPC regulatory notification. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Network infrastructure exceptions create operational and security gaps. Every exception must be formally justified, risk-assessed, approved at the appropriate authority level, subject to compensating controls, time-limited, and reviewed at regular intervals.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Condition / Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| EOL Device in Production | Device past vendor EOL; active migration plan in place. | 90 days (renewable once with Board notification) | CIO + CISO |

| OOB Management Not Available | Legacy device technically incompatible with OOB; isolated network segment. | 90 days; compensating controls required | CISO |

| SNMPv2c Use | Legacy device not supporting SNMPv3; isolated monitoring path. | 90 days; migration plan required | CISO |

| Unencrypted Management Protocol | Legacy device not supporting SSHv2 or HTTPS (extreme legacy only). | 30 days; network isolation required | CISO |

| Configuration Backup Frequency Gap | Backup system unavailable; temporary operational constraint. | 72 hours | Network Engineering Manager + CISO notification |

| Change Freeze Exception | Critical security patch or active incident response. | Duration of incident | CIO + CISO dual authorization |

| Cloud Network Manual Change | Emergency cloud network fix without IaC; incident response scenario. | 24 hours; retrospective IaC update required | CISO (verbal; documented within 24 hours) |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) operating CRITICAL perimeter firewalls without OOB management; (b) allowing Telnet or SNMPv1 on any internet-facing network device; (c) deploying network devices without any logging configuration forwarding to SIEM; (d) making configuration changes to CRITICAL network devices without any change record; (e) disabling VPC Flow Logs on production AWS accounts handling cardholder data or customer PII. |

| --- |

## 11.3  Exception Process

Network Engineering or IT Operations submits a Network Infrastructure Exception Request via the ITSM portal, providing: specific policy requirement, affected device(s), technical justification, risk assessment, compensating controls, duration, and planned remediation date.

IT Security reviews compensating controls for adequacy. CISO approves all exception types.

Approved exceptions logged in the Exception Register with: approval date, expiry, compensating controls, and monitoring requirements.

All exceptions reviewed monthly by the CISO Office. Expired exceptions treated as policy violations.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon:

Significant changes to BFS's network architecture — new data centers, cloud platform adoption, major infrastructure refresh, or WAN technology changes;

Material network security incidents — unauthorized network changes, network device compromises, or significant segmentation failures;

New or amended BSP circulars or PCI DSS requirements affecting network security or network management obligations;

Major updates to CIS Benchmarks for network devices used at BFS, or publication of material NIST SP 800-41 revisions;

Material findings from Internal Audit, network penetration testing, or regulatory examination relating to network infrastructure management.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Aligned with CIS Controls v8 Control 12, ISO/IEC 27001:2022, PCI DSS v4.0, NIST SP 800-41, and BSP Circular 1140. | IT Head & Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 12 safeguards to ISO/IEC 27001:2022 Annex A controls, with PCI DSS cross-references.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 12.1 | Ensure Network Infrastructure is Up-to-Date | A.8.8 | Management of technical vulnerabilities | IG1 |

| 12.2 | Establish and Maintain a Secure Network Architecture | A.8.20 | Networks security | IG2 |

| 12.3 | Securely Manage Network Infrastructure | A.8.9 | Configuration management | IG2 |

| 12.4 | Establish and Maintain Architecture Diagram(s) | A.8.20 | Networks security | IG2 |

| 12.5 | Centralize Network Authentication, Authorization, and Auditing | A.8.15 | Logging | IG2 |

| 12.6 | Use of Secure Network Management and Communication Protocols | A.8.21 | Security of network services | IG2 |

| 12.7 | Ensure Remote Devices Utilize a VPN and are Connecting to an Enterprise's AAA Infrastructure | A.6.7 | Remote working | IG2 |

| 12.8 | Establish and Maintain Dedicated Computing Resources for All Administrative Work | A.8.2 | Privileged access rights | IG3 |

| N/A | Network segmentation — zone architecture and inter-zone traffic control | A.8.22 | Segregation in networks | All |

| N/A | Network service security — secure protocols and service hardening | A.8.21 | Security of network services | All |

| N/A | Logging — network device audit events to SIEM | A.8.15 | Logging | All |

| N/A | Monitoring — network traffic analysis, NDR, flow data | A.8.16 | Monitoring activities | All |

| N/A | Clock synchronization — NTP for network devices | A.8.17 | Use of clock synchronization | All |

| N/A | Configuration management — network device config backup and version control | A.8.9 | Configuration management | All |

| N/A | Change management — network change governance | A.8.32 | Change management | All |

| N/A | Information backup — network device configuration backups | A.8.13 | Information backup | All |

| N/A | Vulnerability management — firmware patching SLAs | A.8.8 | Management of technical vulnerabilities | All |

| N/A | Privileged access management — PAM for network admin sessions | A.8.2 | Privileged access rights | All |

| N/A | Supplier security — network device supply chain integrity | A.5.21 | Managing information security in ICT supply chain | All |

| N/A | Privacy — network controls protecting PII systems (RA 10173) | A.5.34 | Privacy and protection of PII | All |

| N/A | PCI DSS Req. 1 — network security controls for CDE | A.8.20 | Networks security | All |

| N/A | PCI DSS Req. 2 — secure configurations for CDE network devices | A.8.9 | Configuration management | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate maturity; IG3 = Advanced / highest maturity. BFS targets full IG2 compliance with IG3 controls (dedicated PAWs for all admin work, streaming telemetry, automated IaC-enforced cloud network governance) deployed for CRITICAL infrastructure and cloud environments.

# APPENDIX B:  Network Device CMDB — Required Attributes

Each network infrastructure device registered in the BFS CMDB shall include at minimum the following attributes. Completeness of network device CMDB records is tracked as a KPI and audited quarterly.

| Attribute | Description / Example Values |

| --- | --- |

| Device ID | Unique CMDB identifier (e.g., BFS-NET-0042) |

| Hostname / Device Name | Fully Qualified hostname (e.g., fw-core-01.bfs.local) |

| Device Type | Router / L3 Switch / L2 Switch / Firewall / NGFW / WAF / IPS / Wireless Controller / Access Point / VPN Gateway / Load Balancer / OOB Console Server |

| Manufacturer | Cisco / Palo Alto / Juniper / Fortinet / F5 / Aruba / etc. |

| Model | Hardware model (e.g., Cisco Catalyst 9300, Palo Alto PA-5200) |

| Criticality Classification | CRITICAL / HIGH / MEDIUM / LOW |

| Physical Location | Data center, floor, rack, rack unit |

| Management IP Address | OOB management IP (not data-plane IP) |

| Data-Plane IP Address(es) | All in-band interface IPs |

| Network Role | Core switch / Access switch / Perimeter NGFW / Internal firewall / etc. |

| Connected Zones | Network zones this device enforces or connects (e.g., DMZ / User LAN / Server Zone) |

| Operating System / NOS | IOS-XE 17.9 / JUNOS 22.4 / PAN-OS 10.2 / FortiOS 7.4 / etc. |

| Firmware / Software Version | Current running firmware version |

| Vendor Support Status | In-Support / Approaching EOL (< 12 months) / EOL |

| Vendor EOL Date | Date manufacturer ceases security updates |

| Hardware Warranty Expiry | Date hardware warranty expires |

| Configuration Backup Location | Path in configuration management repository |

| Last Configuration Backup Date | Date of most recent successful configuration backup |

| Last Firmware Update Date | Date of last firmware/software upgrade |

| OOB Management Method | Console server port / IPMI / iDRAC / iLO / Out-of-Band IP |

| Logging Status | SIEM forwarding: Active / Not configured / Exception approved |

| NetFlow Export Status | Enabled / Not supported / Disabled (exception) |

| NTP Sync Status | Synchronized / Drifting / Not configured |

| Asset Owner | Network Engineering team lead or named engineer |

| Last Configuration Review Date | Date of last configuration compliance review |

| Open CVEs | Number and severity of unresolved CVEs on current firmware |

| Related Incidents | Links to ITSM incidents involving this device |

| Decommission Date | If decommissioned: date, method, and configuration archive reference |

# APPENDIX C:  Quick Reference Card

## C.1  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| Network change requests | Network Engineering / CAB | ITSM Portal – Network Change Request |

| Unauthorized network change alert | SOC + IT Security | soc@bfs.com.ph \| 24/7 hotline |

| Network outage / availability | Network Operations | ITSM Portal \| net-ops@bfs.com.ph |

| OOB management access | Network Engineering | OOB Management Platform (restricted) |

| Network configuration backups | Network Engineering | Config Management System (restricted) |

| Network device EOL / lifecycle | Network Engineering | net-eng@bfs.com.ph |

| Cloud network / VPC issues | Cloud Infrastructure Team | cloud-ops@bfs.com.ph |

| Network architecture queries | Enterprise Architecture Team | architecture@bfs.com.ph |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

| PCI network queries | IT Compliance | compliance@bfs.com.ph |

## C.2  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| Unauthorized network change — SOC initial investigation | Within 1 hour of detection |

| Unauthorized network change — CISO notification | Concurrent with investigation |

| CRITICAL device configuration drift — investigation | Within 24 hours |

| Emergency network change — ITSM documentation | Within 2 hours of implementation |

| Emergency network change — CAB retrospective review | Within 24 hours |

| Post-change verification completion | Before change record closure |

| Network device configuration backup (CRITICAL / HIGH devices) | On every change + weekly |

| Network device configuration backup (MEDIUM / LOW devices) | Monthly |

| CRITICAL device CRITICAL CVE firmware patch | Within 24 hours |

| HIGH device HIGH CVE firmware patch | Within 7 days |

| EOL device migration plan development | Within 90 days of EOL flag |

| Network device log gap — CRITICAL device alert and investigation | Within 15 minutes |

| CMDB update after new device deployment | Before production service |

| CMDB update after device decommissioning | Within 2 business days |

| Network architecture documentation update after material change | Within 10 business days |

| Configuration compliance scan (all devices) | Monthly |

| Network architecture review | Annual |

| Network infrastructure penetration test | Annual |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-012  |  Network Infrastructure Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
