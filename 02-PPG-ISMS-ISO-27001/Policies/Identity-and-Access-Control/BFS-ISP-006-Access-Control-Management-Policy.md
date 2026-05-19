---
title: "BFS-ISP-006-Access-Control-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Identity-and-Access-Control/BFS-ISP-006-Access-Control-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Identity-and-Access-Control"
aliases:
  - "BFS-ISP-006-Access-Control-Management-Policy"
creator: "Un-named"
created: "2026-04-11T03:47:00Z"
modified: "2026-04-12T02:28:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>ACCESS CONTROL<br>MANAGEMENT POLICY<br>Network, Application, Remote, Wireless, and Data Access Control<br>Policy Reference: BFS-ISP-006<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 6)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140  \|  PCI DSS v4.0<br>Companion to BFS-ISP-001 \| BFS-ISP-003 \| BFS-ISP-004 \| BFS-ISP-005 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Access Control Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-006 |

| Policy Owner | IT Head) |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to network architecture, cloud posture, or regulatory landscape |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-003 (Data Protection); BFS-ISP-004 (Secure Configuration); BFS-ISP-005 (Account and Access Management); BFS-ISP-007 (Incident Response); BFS-ISP-010 (Change Management); BFS-ISP-020 (Acceptable Use) |

| Framework Alignment | CIS Controls v8 (Control 6); ISO/IEC 27001:2022 (A.5.15, A.8.3, A.8.15, A.8.20, A.8.21, A.8.22, A.8.23, A.8.26, A.6.7, A.8.20) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirements 1, 2, 7, 9); NIST SP 800-207 (Zero Trust Architecture); RA 10175 (Cybercrime Prevention Act) |

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

This policy establishes the mandatory requirements, technical standards, and governance framework for managing and enforcing access controls across all BFS Financial Services (hereinafter "the Organization" or "BFS") network, application, data, cloud, wireless, and remote access environments. Access control management is the technical enforcement layer through which the identity and access decisions defined in BFS-ISP-005 are implemented and continuously maintained.

While BFS-ISP-005 governs who is authorized to access what — defining account types, provisioning workflows, MFA requirements, and access reviews — this policy governs how that access is technically enforced through network segmentation, application access controls, data-level access restrictions, remote access architecture, wireless security, and the monitoring and audit controls that provide assurance that access controls are functioning as intended.

This policy directly implements CIS Controls v8, Control 6 (Access Control Management), encompassing safeguards 6.1 through 6.8. It is anchored in ISO/IEC 27001:2022 Annex A controls governing access control policy, information access restrictions, network controls, network segregation, web filtering, application security, and remote working security.

The specific objectives of this policy are to:

Establish and enforce a comprehensive, defense-in-depth access control architecture protecting all BFS systems, networks, applications, and data from unauthorized access;

Define and enforce network segmentation and traffic filtering standards that limit lateral movement and confine the blast radius of any security incident;

Govern application-layer access controls, including API security, web application firewalls, and application-level authentication enforcement;

Establish secure remote access standards ensuring that personnel working from outside BFS premises access BFS resources through encrypted, authenticated, and monitored channels;

Define and enforce wireless network security standards across all BFS locations, including guest network isolation and rogue access point detection;

Implement data access controls that enforce classification-proportionate restrictions on access to BFS data at the point of consumption;

Deploy and maintain web filtering and DNS security controls to limit the attack surface from web-based threats;

Ensure that all access control enforcement activities generate audit-quality logs enabling detection, investigation, and regulatory compliance demonstration;

Integrate access control enforcement with the BFS Zero Trust architecture principles, ensuring that access decisions are continuously verified based on identity, device posture, and contextual risk.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all personnel, processes, and systems involved in the design, implementation, operation, and monitoring of access controls within BFS, including:

All full-time and part-time BFS employees who access BFS systems from any location or device;

Contractors, consultants, managed service providers, and third-party vendors accessing BFS networks, applications, or data;

Network engineers, security engineers, application developers, cloud architects, and system administrators responsible for designing and maintaining access control infrastructure;

Remote workers, mobile workers, and personnel accessing BFS systems from non-BFS-managed locations or devices;

All BFS locations — corporate headquarters, branch offices, data centers, co-location facilities, and home offices.

## 2.2  Technical Scope

This policy applies to all access control enforcement points and mechanisms within the BFS environment, including:

### 2.2.1  Network Access Control

Physical and logical network perimeter controls — firewalls, NGFWs, IPS/IDS, and DMZ architectures;

Internal network segmentation — VLANs, subnets, micro-segmentation, and inter-VLAN routing controls;

Network Access Control (NAC) systems governing endpoint admission to BFS network segments;

Software-Defined Networking (SDN) and Software-Defined Perimeter (SDP) implementations;

Cloud network controls — Security Groups, Network Access Control Lists (NACLs), VPC configurations, and transit gateway policies.

### 2.2.2  Application Access Control

Web Application Firewalls (WAF) protecting BFS internet-facing and internal web applications;

API gateways governing access to BFS internal and external APIs;

Application-level authentication and authorization enforcement (OAuth 2.0, OIDC, SAML, RBAC within applications);

Database access controls — connection restrictions, query-level access, row-level security, and column masking;

Middleware and integration platform access controls.

### 2.2.3  Remote Access

VPN infrastructure — site-to-site VPN and remote access VPN for employee and third-party access;

Zero Trust Network Access (ZTNA) solutions;

Remote Desktop Protocol (RDP), SSH, and web-based remote access portals;

Third-party and vendor remote access channels.

### 2.2.4  Wireless Access

Corporate wireless networks at all BFS premises;

Guest wireless networks;

Wireless intrusion detection and prevention systems (WIDS/WIPS).

### 2.2.5  Data Access Control

File system and document management access controls;

Cloud storage access policies and bucket-level restrictions;

Database object-level access controls and data masking enforcement;

Email and collaboration platform access and sharing controls;

Data Loss Prevention (DLP) enforcement points.

### 2.2.6  Web and Internet Access Control

Secure web gateway (SWG) and proxy infrastructure controlling outbound internet access;

DNS filtering and DNS security extensions;

URL and content category filtering policies;

SSL/TLS inspection infrastructure.

## 2.3  Environmental Scope

This policy applies to all BFS environments — production, pre-production, development, testing, disaster recovery, and training — across on-premise, co-location, public cloud, private cloud, hybrid, and remote hosting models.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Access Control | The selective restriction of access to a resource, system, or environment. Access controls ensure that only authorized entities can access protected resources under defined conditions. |

| Network Segmentation | The practice of dividing a network into isolated sub-networks (segments or zones) to limit lateral movement of threats, contain incidents, and enforce traffic controls between segments based on security requirements. |

| Defense in Depth | A layered security strategy that employs multiple independent access control mechanisms so that the failure of any single control does not result in a compromise of the entire environment. |

| Zero Trust Network Access (ZTNA) | An access model in which no user, device, or network location is inherently trusted. Every access request is evaluated dynamically against identity, device posture, and contextual risk signals before access is granted, and access is strictly scoped to the minimum required resources. |

| Network Access Control (NAC) | A solution that enforces security policies on endpoints attempting to connect to a network, verifying compliance with defined security standards (e.g., EDR active, OS patched, encryption enabled) before granting network access. |

| DMZ (Demilitarized Zone) | A perimeter network segment physically or logically separated from both the internal network and the public internet, used to host publicly accessible services while isolating them from sensitive internal systems. |

| VLAN (Virtual Local Area Network) | A logical subdivision of a physical network, creating isolated broadcast domains that separate traffic between different network segments without requiring separate physical infrastructure. |

| Micro-Segmentation | A fine-grained network segmentation approach that creates security perimeters around individual workloads, applications, or services, enforcing East-West traffic controls within the data center or cloud environment. |

| Web Application Firewall (WAF) | A security control that monitors, filters, and blocks HTTP/HTTPS traffic to and from web applications based on security rule sets, protecting against OWASP Top 10 attacks (SQL injection, XSS, CSRF, etc.). |

| API Gateway | A management layer that sits between API consumers and backend services, enforcing authentication, authorization, rate limiting, input validation, and traffic monitoring for all API calls. |

| VPN (Virtual Private Network) | An encrypted tunnel established over a public network (typically the internet) that enables secure, private communication between a remote user or site and the BFS network. |

| Split Tunneling | A VPN configuration in which only traffic destined for BFS resources is routed through the encrypted VPN tunnel, while other internet-bound traffic exits directly to the internet. Split tunneling introduces security risks and is subject to the controls defined in Section 5.8. |

| Secure Web Gateway (SWG) | A proxy-based security solution that inspects and controls outbound internet traffic, enforcing URL filtering, malware scanning, SSL/TLS inspection, and data loss prevention policies. |

| SSL/TLS Inspection | The process of intercepting, decrypting, inspecting, and re-encrypting SSL/TLS-encrypted web traffic to detect and block threats that would otherwise be hidden within encrypted traffic. |

| Network Access Control List (ACL) | A list of rules applied to network interfaces or cloud resources that permit or deny traffic based on source/destination IP address, port, and protocol. |

| Security Group | A cloud-native, stateful virtual firewall applied to compute instances and services, controlling inbound and outbound traffic based on rules defined by the cloud administrator. |

| East-West Traffic | Network traffic that flows between systems within the same network or data center environment (server-to-server, application-to-database). Traditionally less inspected than North-South traffic but increasingly targeted in lateral movement attacks. |

| North-South Traffic | Network traffic that flows between internal systems and external networks (internet, partner networks). Subject to perimeter security controls. |

| Rogue Access Point | An unauthorized wireless access point connected to the BFS network, intentionally or unintentionally, that poses a security risk by providing unauthorized network access. |

| WIDS/WIPS | Wireless Intrusion Detection/Prevention System — a system that monitors the wireless environment for rogue access points, unauthorized clients, and wireless attacks, and can take action to prevent unauthorized wireless access. |

| OWASP Top 10 | The Open Web Application Security Project's list of the ten most critical web application security risks, used as a reference for WAF rule sets and application security testing. |

| Ingress / Egress Filtering | Network controls that inspect and restrict traffic entering (ingress) or leaving (egress) a network segment or the enterprise perimeter, preventing unauthorized data flows in either direction. |

| Proxy Server | An intermediary server that sits between clients and destination servers, forwarding requests on behalf of clients. Used for caching, content filtering, anonymization, and security inspection. |

| Network Flow Data | Metadata about network communications (source IP, destination IP, port, protocol, byte count, duration) collected from network devices and used for traffic analysis, anomaly detection, and forensic investigation. |

| Lateral Movement | A technique used by attackers who have gained initial access to a network to progressively move through the environment, accessing additional systems, escalating privileges, and exfiltrating data. Segmentation and East-West controls limit lateral movement. |

# 4.  ACCESS CONTROL ARCHITECTURE FRAMEWORK

BFS's access control architecture is structured as a layered, defense-in-depth model aligned with Zero Trust principles. Access is enforced at multiple independent layers, ensuring that no single control failure results in unrestricted access to BFS resources.

| Layer | Control Plane | Primary Enforcement Mechanism | BFS Implementation |

| --- | --- | --- | --- |

| L1 — Perimeter | External boundary | Firewall / NGFW / IPS / WAF | Internet-facing perimeter with stateful NGFW, WAF for web apps, IPS/IDS inline, and DMZ for public-facing services. |

| L2 — Network | Internal segmentation | VLANs / ACLs / NAC / SDN | Zone-based segmentation (User, Server, Management, PCI, DMZ, Cloud). NAC enforces endpoint compliance before network admission. |

| L3 — Endpoint | Device posture | EDR / Host firewall / MDM / NAC posture | Every endpoint assessed via NAC before network access; host firewall default-deny; EDR required for managed devices. |

| L4 — Identity | Authentication and AuthZ | IdP / MFA / PAM / RBAC / ABAC | Centralized IdP enforces SSO and MFA; PAM governs privileged access; RBAC enforced within applications. |

| L5 — Application | API and app security | API gateway / WAF / AppAuth / OAuth | API gateway enforces auth/authz on all APIs; WAF protects web apps; OAuth 2.0/OIDC for delegated authorization. |

| L6 — Data | Information access | ACLs / DB controls / DLP / Encryption | Data classified per BFS-ISP-003; access enforced via file/DB ACLs; DLP monitors and blocks unauthorized transfer. |

| L7 — Monitoring | Visibility and response | SIEM / NDR / UEBA / NetFlow | All layers forward logs to SIEM; NetFlow analysis for anomaly detection; UEBA for behavioral risk scoring. |

## 4.1  Network Zone Architecture

BFS's network is structured into the following security zones, with strict inter-zone traffic controls enforced at all zone boundaries:

| Network Zone | Purpose | Permitted Inbound Sources | Security Controls |

| --- | --- | --- | --- |

| INTERNET / UNTRUSTED | External public internet; partner networks; cloud-to-internet egress. | None (blocked by default) | NGFW; IPS; WAF (for web services); DDoS mitigation |

| DMZ — Public | Internet-facing services: web portal, API gateway, email gateway. | Internet (controlled); Internal (restricted) | WAF; reverse proxy; TLS termination; content scanning |

| DMZ — Partner | Controlled B2B connectivity; payment network interconnects. | Specific partner IPs/VPNs only | Dedicated firewall zone; mutual TLS; IPS monitoring |

| USER LAN | Employee workstations and BFS-issued endpoints. | User LAN only (outbound to Server, Internet via proxy) | NAC posture; VLAN isolation; web proxy; DNS filter |

| SERVER / CORE | Production application servers, APIs, core banking systems. | User LAN (restricted ports); DMZ (restricted); Management | Micro-segmentation; host firewall; DB firewall; SIEM |

| DATABASE | Production databases and data stores. | Server zone only (specific application IPs) | DB firewall; query monitoring; connection rate limits; TDE |

| MANAGEMENT / OOB | Administrative management network; jump servers; PAM platform. | Dedicated PAW devices only | Strict ACLs; no internet; MFA required; full logging |

| PCI / CARDHOLDER DATA | Cardholder Data Environment (CDE): payment processing, card management. | Tightly restricted; PCI-specific rules only | PCI DSS-compliant controls; quarterly pen test; QSA scoped |

| CLOUD (AWS VPC) | AWS infrastructure — compute, storage, managed services. | VPN/Direct Connect from on-premise; internal VPC routing | Security Groups; NACLs; VPC Flow Logs; GuardDuty; CSPM |

| GUEST / VISITOR | Internet access for visitors, contractors without BFS device. | None (internet-only via isolated link) | Completely isolated from all BFS zones; captive portal; rate-limited |

| DR / BACKUP | Disaster recovery infrastructure and backup systems. | Production zone (replication only); Management | Encrypted replication; isolated from production user access |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, systems, and environments within the scope of this policy. Non-compliance is subject to enforcement as defined in Section 10.

## 5.1  General Access Control Principles

PS-1.1  Access to all BFS systems, networks, applications, and data shall be controlled and enforced through technically implemented controls aligned with the BFS Access Control Architecture Framework (Section 4). Reliance solely on administrative or procedural controls — without technical enforcement — is insufficient for any access control requirement.

PS-1.2  The principle of default-deny shall be applied at all access control enforcement points: all access shall be denied unless explicitly permitted by an approved, documented rule or policy. Access shall not be permitted by default, by omission, or through misconfiguration.

PS-1.3  All access control rules, policies, and configurations shall be documented, version-controlled, and subject to formal change management in accordance with BFS-ISP-010. Undocumented or informal access rules are prohibited.

PS-1.4  Access controls shall be proportionate to the classification of the data or system being protected. Controls applied to TOP SECRET and CRITICAL systems shall be the most restrictive, with progressively less restrictive controls applied to CONFIDENTIAL, INTERNAL, and PUBLIC environments.

PS-1.5  Access control enforcement shall generate comprehensive audit logs at all layers, captured in real time and forwarded to the BFS SIEM platform. Audit logs shall be protected against modification or deletion.

## 5.2  Network Access Control (NAC)

PS-2.1  All devices — whether BFS-issued, BYOD, or third-party — must comply with defined BFS security posture requirements before being granted access to any BFS internal network segment. NAC-enforced posture checks shall verify at minimum: EDR agent active, OS patch level within policy, full-disk encryption enabled, and MDM enrollment status (for mobile devices).

PS-2.2  Devices failing NAC posture assessment shall be placed in a quarantine VLAN providing access only to remediation resources (patch distribution, EDR enrollment) and the IT Service Desk. Quarantined devices shall not have access to any BFS data or application systems.

PS-2.3  Guest devices — including personal devices of visitors and contractors without BFS-managed status — shall be isolated to the Guest Network and shall have no access to any BFS internal network segment, application, or data. The Guest Network shall operate on a completely separate, internet-only network path.

PS-2.4  MAC address filtering shall be implemented on all managed switch ports as a supplementary control. Unknown MAC addresses on switch ports shall be blocked or placed in the isolation VLAN and generate an alert.

PS-2.5  All NAC policy decisions and network access events shall be logged in the SIEM. Repeated NAC failures from a single device or location shall trigger an automated security alert for SOC investigation.

## 5.3  Network Segmentation and Perimeter Controls

PS-3.1  BFS shall maintain a formally documented and approved network segmentation architecture defining all network zones, the assets hosted in each zone, the permitted inter-zone traffic flows, and the enforcement mechanism at each zone boundary. This architecture document shall be reviewed and approved by the CISO annually and upon any significant infrastructure change.

PS-3.2  All traffic crossing zone boundaries shall pass through an inspecting control — firewall, NGFW, IPS, or WAF as applicable — with explicit permit rules. Any traffic not explicitly permitted shall be denied. Implicit 'permit any' rules are prohibited on any zone boundary firewall.

PS-3.3  The Production Server and Database zones shall be segregated from the User LAN zone. Direct user access to production server or database resources shall not be permitted. All user access to production services shall occur through application presentation layers.

PS-3.4  The PCI Cardholder Data Environment shall be maintained as an isolated network segment meeting PCI DSS Requirement 1 network segmentation requirements. The CDE boundary shall be documented, regularly reviewed, and validated annually through penetration testing or network segmentation validation.

PS-3.5  The Management / Out-of-Band network shall be strictly isolated from all user and server network segments. Administrative access to production systems shall occur exclusively from dedicated devices connected to the Management network (PAWs or jump servers), routed through the PAM platform.

PS-3.6  Ingress and egress filtering shall be implemented at the internet perimeter to prevent IP spoofing attacks. Ingress filtering shall block traffic with source IP addresses that cannot legitimately originate from the internet (RFC 1918 private addresses, loopback, APIPA). Egress filtering shall block outbound traffic with spoofed source addresses.

PS-3.7  Micro-segmentation controls shall be implemented within the Server zone to prevent unrestricted East-West traffic between application servers, database servers, and security systems. Application-to-database communication shall be restricted to specific, documented application IP addresses and ports.

PS-3.8  Network Flow data (NetFlow, IPFIX, or VPC Flow Logs) shall be collected from all network segments and cloud VPCs and forwarded to the SIEM for traffic analysis, anomaly detection, and forensic investigation.

## 5.4  Firewall and Traffic Filtering

PS-4.1  All BFS internet-facing network boundaries shall be protected by a Next-Generation Firewall (NGFW) providing stateful packet inspection, application-layer traffic identification, intrusion prevention, and SSL/TLS decryption capabilities.

PS-4.2  Firewall rules shall be written with the minimum specificity required: rules shall specify source IP range, destination IP range, protocol, and port. Wildcard or overly broad rules (e.g., 'permit any any', 'permit any to server-zone') are prohibited in production environments.

PS-4.3  All firewall rule changes shall be processed through the BFS Change Management process and subject to the Firewall Rule Management Procedure defined in BFS-ISP-004. Emergency firewall rule changes shall be documented and submitted for retrospective approval within twenty-four (24) hours.

PS-4.4  A full review of all firewall rules across all BFS firewalls shall be conducted annually. Rules without a documented, current business justification shall be removed. Rule review records shall be retained as audit evidence.

PS-4.5  Intrusion Prevention System (IPS) signatures shall be updated at least weekly and verified to be current. IPS shall be deployed in inline blocking mode for all internet-facing traffic and in detection mode as a minimum for internal segment boundary traffic, with critical detections generating immediate SIEM alerts.

PS-4.6  All outbound internet-destined traffic from BFS endpoints and servers shall be routed through the BFS Secure Web Gateway (SWG) proxy. Direct internet access that bypasses the SWG is prohibited for all BFS-managed devices and servers, except for approved exceptions documented in Section 11.

## 5.5  Application Access Control and API Security

PS-5.1  All BFS web applications that are internet-facing or that process CONFIDENTIAL or higher-classified data shall be protected by a Web Application Firewall (WAF). The WAF shall be configured with a rule set covering at minimum the OWASP Top 10 attack categories, and shall operate in blocking mode for production applications.

PS-5.2  All BFS APIs — whether internal, partner-facing, or public — shall be exposed exclusively through an API gateway. Direct access to backend services bypassing the API gateway is prohibited in production environments. The API gateway shall enforce authentication, authorization, rate limiting, input validation, and audit logging for all API calls.

PS-5.3  Authentication and authorization for web applications and APIs shall use BFS-approved modern, standards-based protocols: OAuth 2.0 with PKCE for delegated authorization, OpenID Connect (OIDC) for authentication, and SAML 2.0 for enterprise SSO federations. Legacy authentication protocols (HTTP Basic Authentication over unencrypted channels, NTLM for web applications) are prohibited.

PS-5.4  Applications shall enforce authorization checks at the server side for every request. Client-side authorization controls are insufficient and shall not be used as the primary enforcement mechanism. Server-side authorization shall verify that the authenticated identity has the required permission for the specific resource and action being requested.

PS-5.5  Database connections from applications shall be made using dedicated application service accounts with the minimum required database permissions. Applications shall not connect to production databases using database administrator accounts. Connection pooling credentials shall be stored in the BFS-approved secrets management platform.

PS-5.6  API rate limiting shall be implemented on all public and partner-facing APIs to prevent abuse, enumeration attacks, and denial-of-service conditions. Rate limit thresholds shall be reviewed and adjusted based on observed legitimate traffic patterns.

PS-5.7  Input validation and output encoding shall be implemented at the application layer for all web applications and APIs, consistent with OWASP secure coding guidelines. The WAF provides supplementary protection but shall not be relied upon as the sole defense against injection attacks.

## 5.6  Remote Access Controls

PS-6.1  All remote access to BFS internal network resources, applications, and systems by employees, contractors, or third parties shall be conducted exclusively through BFS-approved, encrypted remote access channels. Unapproved remote access methods — including personal cloud storage-based file transfer, consumer remote desktop tools (TeamViewer, AnyDesk used without BFS approval), or direct internet-facing RDP — are prohibited.

PS-6.2  BFS shall maintain a remote access infrastructure based on one or a combination of the following approved technologies: (a) IPsec or SSL VPN with MFA enforcement and posture assessment; (b) Zero Trust Network Access (ZTNA) solution providing application-specific, identity-aware, posture-checked access; (c) BFS-managed VDI or DaaS platform providing browser-based access to a remote desktop without transferring data to the endpoint.

PS-6.3  All remote access connections shall require Multi-Factor Authentication as defined in BFS-ISP-005. The remote access platform shall enforce MFA at the connection level — not only at the application level — for all users.

PS-6.4  Remote access connections shall be subject to endpoint posture assessment before the connection is established. Devices failing posture assessment shall be denied remote access. The minimum posture requirements are: BFS-managed device or MDM-enrolled BYOD device; EDR agent active and current; OS patch level within defined threshold; disk encryption confirmed active.

PS-6.5  Remote access sessions shall be subject to a maximum idle timeout of thirty (30) minutes. Sessions exceeding the timeout shall be automatically disconnected, requiring the user to re-authenticate.

PS-6.6  Split tunneling shall be disabled for VPN connections by default. All remote access traffic — including internet browsing — shall be routed through BFS security controls (SWG, firewall) during an active BFS VPN session, except where a specific, CISO-approved split tunneling exception exists. Split tunneling exceptions shall be reviewed quarterly.

PS-6.7  Third-party and vendor remote access shall be subject to the following additional requirements beyond standard remote access controls: (a) access shall be brokered through the BFS PAM platform for privileged vendor access; (b) sessions shall be time-limited and terminated upon completion of the specific support task; (c) vendor access shall occur only during agreed maintenance windows unless an emergency exception is authorized; (d) all vendor remote access sessions shall be recorded.

PS-6.8  Remote access infrastructure shall be deployed in a high-availability configuration with redundant capacity. The remote access platform shall be included in the BFS Business Continuity and DR planning.

## 5.7  Wireless Access Controls

PS-7.1  All BFS corporate wireless networks shall use WPA3-Enterprise authentication with 802.1X and RADIUS, authenticating users via the BFS corporate IdP or machine certificates. WEP, WPA, and WPA2-Personal (PSK) are prohibited on corporate wireless networks. Transition to WPA3 shall be completed for all BFS premises by the date specified in the BFS Technology Roadmap.

PS-7.2  The corporate wireless network (SSID) and the guest wireless network (SSID) shall be on completely isolated VLANs with no cross-VLAN traffic permitted. The guest wireless SSID shall provide internet-only access with no routing to any BFS internal resource. Clients connected to the guest SSID shall be isolated from one another using client isolation settings.

PS-7.3  A Wireless Intrusion Detection and Prevention System (WIDS/WIPS) shall be deployed at all BFS premises and continuously monitored by the SOC. The WIDS/WIPS shall automatically detect and alert on: rogue access points, evil-twin attacks, unauthorized clients, deauthentication attacks, and other wireless anomalies.

PS-7.4  Rogue access points — any wireless access point broadcasting within BFS premises that is not authorized and registered in the BFS asset inventory — shall be investigated within four (4) hours of detection. Where possible, rogue APs connected to the BFS wired network shall be automatically blocked via NAC / WIPS. All rogue AP incidents shall be logged as security events.

PS-7.5  Wireless access points shall be positioned and their transmit power configured to minimize wireless signal leakage beyond BFS premises boundaries. Periodic signal surveys shall be conducted during building access reviews.

PS-7.6  BFS employees shall not establish personal wireless hotspots or portable access points connected to the BFS corporate network without written CISO approval. Tethering from personal devices to BFS-managed devices is subject to the controls in BFS-ISP-020.

## 5.8  Web and Internet Access Control

PS-8.1  All outbound internet access from BFS-managed endpoints and servers shall be proxied through the BFS Secure Web Gateway (SWG), which shall enforce URL categorization filtering, malware scanning, and data loss prevention inspection. The SWG shall operate in a default-deny mode for high-risk URL categories.

PS-8.2  The following internet content categories shall be blocked by default for all BFS-managed devices: malware distribution sites, phishing sites, hacking tools and exploit repositories, illegal content, anonymizing proxies and VPNs (not BFS-approved), peer-to-peer file sharing, and cryptocurrency mining. The approved block category list shall be reviewed and updated quarterly by the CISO Office.

PS-8.3  SSL/TLS inspection shall be implemented on the SWG to enable deep content inspection of encrypted web traffic. The SWG certificate used for TLS inspection shall be managed as a trusted internal CA and distributed to all managed endpoints via MDM or Group Policy. TLS inspection shall not apply to legally protected categories (financial services sites, healthcare, legal counsel) defined in the TLS inspection bypass list.

PS-8.4  DNS filtering shall be enforced for all BFS-managed endpoints and servers, resolving requests through BFS-approved, security-aware DNS resolvers that block queries to known malicious domains. DNS query logs shall be forwarded to the SIEM for threat intelligence correlation and detection of DNS-based attacks (tunneling, DGA).

PS-8.5  Domain Generation Algorithm (DGA) detection and DNS tunneling detection shall be implemented as SIEM correlation rules applied to DNS query logs. Endpoints generating anomalous DNS query patterns shall be automatically isolated and investigated.

## 5.9  Cloud Access Controls

PS-9.1  All access to BFS cloud resources (AWS and any future cloud platforms) shall be governed by cloud-native access controls — Security Groups, NACLs, IAM policies, and VPC configurations — aligned with the applicable CIS Benchmark and the BFS network zone architecture.

PS-9.2  Cloud Security Groups shall follow a default-deny-inbound posture. Security group rules shall be scoped to specific, documented source IP ranges or security group references. Permissive rules allowing all-source (0.0.0.0/0) access to sensitive ports are prohibited in production environments and shall generate automated CSPM alerts.

PS-9.3  VPC Flow Logs shall be enabled for all BFS VPCs and their contents forwarded to the SIEM for traffic analysis and anomaly detection. Disabled VPC Flow Logs in production accounts shall generate a CSPM alert and be remediated within twenty-four (24) hours.

PS-9.4  All BFS cloud production workloads shall connect to the BFS on-premise network via AWS Direct Connect or equivalent dedicated, encrypted connectivity — not over the public internet. VPN-over-internet connections to cloud shall be approved only as a failover mechanism, not as the primary connectivity path for production workloads.

PS-9.5  Cloud Workload Protection Platform (CWPP) controls shall be deployed on all cloud compute instances (EC2 and equivalent), enforcing host-based access controls, runtime threat detection, and configuration compliance consistent with BFS-ISP-004.

PS-9.6  Access to cloud management consoles shall be restricted to named, authorized personnel and shall require MFA. Cloud accounts shall be governed under the BFS IAM framework (BFS-ISP-005), with no anonymous or shared console access permitted.

## 5.10  Data Access Control Enforcement

PS-10.1  Access to data stores — file shares, databases, cloud storage, document management systems, and analytics platforms — shall be enforced through technical Access Control Lists (ACLs) or equivalent mechanisms aligned with the BFS data classification framework (BFS-ISP-003). Data access rights shall be reviewed as part of the access review program defined in BFS-ISP-005.

PS-10.2  Database access shall be restricted to authorized application service accounts and authorized human users with documented business justification. Direct database access by end users (SQL clients connecting to production databases) is prohibited without CISO approval. All authorized direct database access sessions shall be brokered through the PAM platform and session-recorded.

PS-10.3  Row-level security (RLS) and column-level security (CLS) shall be implemented in production databases and data warehouses where different user roles require access to subsets of data within the same table or dataset. This prevents horizontal privilege escalation within data platforms.

PS-10.4  Cloud storage resources (S3 buckets, Azure Blob containers, GCS buckets) shall enforce bucket-level access policies denying public access by default. Access to cloud storage shall require authenticated, authorized requests. All cloud storage access events shall be logged via server access logging and forwarded to the SIEM.

PS-10.5  Sharing of BFS-internal files and documents via collaboration platforms (SharePoint, Teams, or equivalent) shall be restricted to internal BFS users by default. External sharing shall require Data Owner approval and, for CONFIDENTIAL data, CISO approval. External links shall be time-limited and require authentication of the recipient.

## 5.11  Access Control Monitoring and Alerting

PS-11.1  All access control enforcement events — permit and deny decisions — at the network, application, and data layers shall generate audit log entries. Log entries shall capture at minimum: timestamp, source identity, source IP, destination resource, action attempted, access decision (permit/deny), and rule or policy applied.

PS-11.2  The SIEM shall maintain active correlation rules for the following access control security events, generating immediate SOC alerts: successful access to TOP SECRET data outside of business hours; multiple consecutive access denials from a single identity or IP; access from a new geographic location for a privileged account; firewall rule violations on the Management network; direct database access bypassing the application layer; rogue wireless AP detection; NAC quarantine events for known BFS devices.

PS-11.3  Network Detection and Response (NDR) tooling shall be deployed to analyze network flow data and detect anomalous traffic patterns indicative of lateral movement, command-and-control communication, or data exfiltration. NDR alerts shall be investigated by the SOC within the SLAs defined in BFS-ISP-007.

PS-11.4  Access control audit logs shall be retained for a minimum of twelve (12) months online and three (3) years in long-term archive, with tamper-evident storage, in compliance with BSP Circular 1140 and the BFS Audit Log Retention Policy.

# 6.  PROCEDURES

## 6.1  Network Zone Change and Firewall Rule Management Procedure

All changes to the network zone architecture, inter-zone routing, and firewall rules shall follow this procedure:

Change Request: The requesting team submits a Network Access Change Request via the ITSM portal, providing: source zone, destination zone, source IP/range, destination IP/range, protocol and port, business justification, data classification of the data flow, duration (permanent or temporary), and requesting system/data owner's approval.

Security Review: IT Security and Network Engineering review the request against the BFS network segmentation policy, the data classification of the systems involved, and the least-privilege principle. The risk rating of the change is assigned.

Approval: Firewall rule approvals follow the authority matrix: standard inter-zone rules — IT Security Manager; rules enabling inbound access to Server or Database zones from User LAN — CISO approval; rules enabling any inbound internet access to production servers — CISO + CIO approval; PCI CDE boundary rule changes — CISO + QSA notification.

Implementation: Approved rules are implemented by the Network Engineering team in the change management window. Configuration is backed up before and after implementation.

Post-Implementation Testing: The requesting team confirms the required connectivity is functioning. Network Engineering confirms no unintended connectivity has been introduced by running an access test against adjacent, unexpectedly reachable hosts.

CMDB and Rule Documentation Update: The firewall rule register and network topology documentation are updated. The rule expiry date (if temporary) is scheduled for automated review.

Annual Review: All firewall rules are reviewed annually. Rules flagged as no longer required are removed within thirty (30) business days.

## 6.2  Remote Access Provisioning and Deprovisioning Procedure

Remote access rights shall be provisioned and managed through the following controlled process:

Remote Access Request: Submitted via ITSM by the employee's manager or HR, specifying: user identity, remote access type required (VPN, ZTNA, VDI), systems to be accessed, justification, and duration (permanent role requirement or temporary project need).

Eligibility and Compliance Check: IAM and IT Security verify the user has a valid BFS account, MFA enrolled, and that their device meets the remote access posture requirements (managed device or approved BYOD).

Access Provisioning: The IAM team provisions the remote access profile in the VPN/ZTNA platform, applying the appropriate access scope (full tunnel vs. application-specific). Access is limited to the systems/applications required by the role.

User Communication: The user receives secure communication confirming their remote access activation, including security usage obligations and the BFS-ISP-020 Acceptable Use Policy requirements for remote access.

Deprovisioning: Remote access is automatically deprovisioned upon account deprovisioning (triggered by departure or role change per BFS-ISP-005). Temporary remote access grants expire automatically at the defined date.

Quarterly Review: All active remote access grants are reviewed quarterly by system owners and the IAM team. Grants without justified active business need are revoked.

## 6.3  WAF Ruleset Management Procedure

The WAF protecting BFS web applications and APIs shall be managed through the following governance process:

WAF Rule Baseline: The WAF shall be deployed with the vendor-recommended OWASP Core Rule Set (CRS) as the baseline. Additional BFS-specific rules are layered on the CRS based on application-specific threats and findings from security assessments.

New Application Onboarding: When a new web application or API is placed behind the WAF, a dedicated WAF policy is created for that application. The WAF is initially deployed in detection mode, and WAF logs are reviewed by the security team for a minimum of thirty (30) days before switching to blocking mode.

False Positive Management: WAF blocking events are reviewed by the IT Security team in conjunction with application owners. Where blocking rules cause false positives affecting legitimate traffic, rules are tuned (not disabled) following a documented exception process requiring CISO approval.

Signature Updates: WAF signature and rule updates are applied at minimum weekly. Critical rule updates addressing active exploitation are applied within forty-eight (48) hours of vendor release.

Penetration Test Integration: WAF effectiveness is tested during annual application penetration testing. Findings identifying WAF bypass techniques are remediated within the timelines defined in BFS-ISP-005 vulnerability management SLAs.

## 6.4  Rogue Access Point Response Procedure

The following procedure shall be enacted upon detection of a rogue wireless access point:

Detection: WIDS/WIPS or manual network scan detects an unregistered wireless access point broadcasting within or near BFS premises. SOC is alerted automatically via SIEM.

Classification: SOC analyst classifies the rogue AP: (a) External rogue — neighboring business or personal AP detected due to signal spillover; low risk; logged and monitored. (b) Connected rogue — AP connected to the BFS wired network; HIGH RISK; immediate response required.

Containment (Connected Rogue): For connected rogue APs, the network port the AP is connected to is immediately disabled via the network management system. NAC posture checks should have already quarantined the AP's traffic.

Investigation: Network Engineering traces the physical port to the AP location. Security team investigates whether the AP was connected intentionally (insider threat) or accidentally. Forensic preservation of the AP and associated network logs.

Incident Logging: The event is logged as a security incident in the ITSM. Where intentional unauthorized access is suspected, the CISO is notified immediately and the incident is escalated per BFS-ISP-007.

Resolution: The rogue AP is physically removed. Root cause is documented and preventive measures are implemented (e.g., NAC rule tightening, physical access review).

# 7.  GUIDELINES

## 7.1  Zero Trust Implementation Guidelines

Never Trust, Always Verify: Access decisions shall be made dynamically per request, based on the current state of the requesting identity, device, and context. A previously authenticated session does not grant automatic trust for subsequent requests to different resources.

Verify Explicitly: All access control enforcement points shall verify identity (via the IdP token), device posture (via NAC or MDM signal), and request context (time, location, risk score) for each access request. Access control decisions shall be based on all three dimensions, not just identity alone.

Least-Privilege Access: Network access granted via ZTNA or VPN shall be scoped to the minimum applications and services required for the user's current task. Full network access to all BFS resources from a single VPN session is the legacy model to be progressively replaced by application-specific ZTNA access.

Assume Breach: Access controls shall be designed on the assumption that the perimeter has already been breached. Micro-segmentation, East-West controls, session recording, and behavioral monitoring provide detection and containment capability even after initial access is gained.

ZTNA Roadmap: BFS shall progressively migrate from traditional VPN-based remote access to a Zero Trust Network Access (ZTNA) architecture, targeting ZTNA for all remote access to CONFIDENTIAL and CRITICAL systems within the BFS technology roadmap timeline.

## 7.2  Network Segmentation Design Guidelines

Zone Trust Levels: When designing connectivity between zones, start with full denial and explicitly add only required flows. Document the data classification of traffic flowing between zones to ensure proportionate controls are applied.

Minimum Connectivity: Application servers shall only have connectivity to the specific database instances, APIs, and services they require. Applications shall not have broad access to all servers in the server zone. Each application's network connectivity requirements shall be documented in the application's architecture record.

Blast Radius Limitation: Segmentation design shall be evaluated for its ability to limit the blast radius of a compromise. A compromise of a single application server should not provide lateral movement access to the core banking database without traversing additional, independently enforced access controls.

Segmentation Testing: The effectiveness of network segmentation boundaries shall be validated at least annually through internal penetration testing or segmentation testing tools, verifying that unauthorized cross-zone connectivity does not exist.

## 7.3  Secure Remote Access Design Guidelines

ZTNA Preferred over VPN: For new remote access implementations and where technically feasible, ZTNA shall be preferred over traditional full-tunnel VPN, as ZTNA provides application-specific, context-aware access without exposing the full internal network.

VPN Concentrator Hardening: VPN concentrators shall be hardened per BFS-ISP-004, placed in the DMZ with restrictive firewall rules allowing only VPN protocol traffic, and have their management interfaces accessible only from the Management network.

Remote Access for Privileged Users: Privileged access from remote locations shall always be brokered through the PAM platform session broker, in addition to the standard VPN/ZTNA connection. PAM-brokered privileged sessions from remote locations provide an additional layer of control and session recording.

Bandwidth and Performance: The remote access infrastructure shall be capacity-planned to support the concurrent user load required by the BFS Business Continuity Plan, including scenarios where the majority of staff work remotely.

## 7.4  Cloud Access Control Design Guidelines

Private Endpoints: Where cloud services support private endpoints (AWS PrivateLink, VPC Endpoints), BFS shall use private endpoints to route service traffic within the VPC, avoiding public internet exposure of traffic to managed cloud services (S3, RDS, Secrets Manager, etc.).

Cloud Egress Control: All egress traffic from BFS cloud workloads to the internet shall be routed through a centralized egress control point (NAT Gateway with restrictive Security Groups, or a cloud-hosted SWG), not permitted directly from compute instances. Unrestricted internet egress from production cloud instances is prohibited.

Cross-Account Access: Where BFS operates multiple AWS accounts, cross-account access shall be governed through IAM roles with explicit trust policies — not through sharing IAM user credentials across accounts. Cross-account access shall be logged and reviewed as part of the quarterly IAM access review.

Service Control Policies (SCPs): AWS Organizations SCPs shall enforce baseline network security guardrails across all BFS AWS accounts, preventing members from disabling VPC Flow Logs, creating internet-facing resources in restricted regions, or removing required security group rules.

## 7.5  Application Security Integration Guidelines

OWASP ASVS Alignment: BFS web applications and APIs shall be developed and tested against the OWASP Application Security Verification Standard (ASVS) Level 2 at minimum, with Level 3 targeted for applications processing TOP SECRET or cardholder data.

Secure Headers: All BFS web applications shall implement HTTP security headers: Content-Security-Policy (CSP), X-Frame-Options (DENY or SAMEORIGIN), X-Content-Type-Options (nosniff), Strict-Transport-Security (HSTS with preloading), and Referrer-Policy.

Session Management: Application session tokens shall be generated with sufficient entropy, transmitted only over TLS, not logged, invalidated upon logout, and subject to server-side session timeout consistent with BFS-ISP-004 session lock requirements.

CORS Policy: Cross-Origin Resource Sharing (CORS) policies on BFS APIs shall be configured with explicit, minimal origin allowlists. Wildcard (*) CORS policies are prohibited on APIs serving authenticated requests.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of the access control program. Reviews annual compliance metrics, access control incident statistics, and segmentation testing results. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise access control program. Ensures adequate investment in access control infrastructure (NGFW, WAF, NAC, ZTNA, SWG). Co-approves this policy. Approves high-risk firewall rule exceptions and major network architecture changes. |

| Chief Information Security Officer (CISO) | Responsible for design, implementation, and enforcement of this policy and the BFS access control architecture. Approves firewall rules for sensitive zones. Oversees WAF governance, remote access security, wireless security, and cloud access controls. Reviews NDR and SIEM access control alerts. |

| Chief Technology Officer (CTO) | Ensures access control requirements are embedded in technology architecture decisions. Reviews and approves network zone architecture changes and major application access control design decisions. Maintains alignment between access control architecture and the BFS technology roadmap. |

| Network Engineering Team | Designs, implements, and operates network segmentation, firewalls, switches, VLANs, routing, and remote access infrastructure. Implements approved firewall rule changes. Maintains network device configurations and network flow collection. Conducts rogue AP response. |

| Enterprise Architecture Team | Designs the BFS access control architecture framework. Defines cloud network architecture standards (VPC design, Security Groups, SCPs). Maintains application API and WAF integration architecture. Embeds access control requirements in solution designs. |

| IT Security / Security Engineering | Manages WAF rule sets, IPS signatures, SWG policies, DNS filtering, and SSL/TLS inspection. Operates NAC. Conducts access control effectiveness testing. Reviews firewall rule requests and approves on behalf of the CISO where delegated. Manages WIDS/WIPS. |

| Cloud Infrastructure Team | Implements and maintains cloud Security Groups, NACLs, VPC configurations, SCPs, and cloud IAM policies. Monitors CSPM alerts. Ensures VPC Flow Logs are active. Manages cloud egress controls and private endpoint configurations. |

| Security Operations Center (SOC) | Monitors SIEM for access control alerts (rogue AP, firewall violations, unauthorized data access, remote access anomalies). Responds to NDR alerts. Executes the rogue AP response procedure. Correlates access control events with threat intelligence. |

| Application Development / DevSecOps | Implements application-layer access controls (server-side authorization, OAuth/OIDC integration, input validation, CORS policy, security headers) in accordance with OWASP ASVS. Integrates APIs with the BFS API gateway. Ensures WAF compatibility during application development. |

| Compliance and Risk Officers | Validates access control compliance through internal audits. Ensures PCI CDE segmentation requirements are met. Maintains regulatory mapping for access control evidence. Coordinates pen testing and segmentation validation for PCI and regulatory purposes. |

| Internal Audit | Independently assesses the effectiveness of access controls, including network segmentation effectiveness, firewall rule governance, remote access security, wireless security, and cloud access control compliance. Reports to the Audit and Risk Committee. |

| All Employees and Third Parties | Access BFS resources only through approved channels and within authorized scope. Report suspected unauthorized access, unusual network behavior, or suspicious wireless activity to the IT Service Desk or SOC immediately. Do not attempt to circumvent network access controls or use unapproved remote access methods. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circular 1140 (MORB IT Risk Management)

Access control management is a fundamental IT risk management requirement under BSP Circular 1140. BFS's implementation directly supports BSP compliance through:

Documented and enforced network segmentation architecture, producible during BSP IT risk examinations;

Firewall and access control change management records demonstrating controlled, audited changes to access control rules;

Perimeter security controls and intrusion prevention systems for internet-facing systems, including ATM and payment systems;

Remote access security controls ensuring secure connectivity for BFS personnel and vendors;

Access control log retention meeting BSP minimum requirements.

## 9.2  PCI DSS v4.0 Compliance

BFS's access control controls directly implement the following PCI DSS v4.0 requirements for in-scope systems:

PCI DSS Requirement 1 (Install and Maintain Network Security Controls): Network segmentation, firewall governance, and CDE boundary controls are directly implemented by Sections 5.3 and 5.4 of this policy;

PCI DSS Requirement 1.2: BFS maintains documented network security control configurations for all firewalls in the CDE scope, reviewed at least every six months;

PCI DSS Requirement 1.3: Network security controls restrict inbound and outbound traffic to that which is necessary for the CDE — implemented by the zone architecture and default-deny firewall policy;

PCI DSS Requirement 1.5: Risks from computing devices that connect to both untrusted networks and the CDE are managed through NAC posture assessment and split-tunneling controls;

PCI DSS Requirement 9 (Restrict Physical Access to Cardholder Data): Physical access controls and wireless security for the CDE are covered by Sections 5.7 and the BFS Physical Security Policy.

## 9.3  Philippine Data Privacy Act (RA 10173)

Access control is a primary technical safeguard for personal data protection under RA 10173. This policy supports DPA compliance through:

Network segmentation and data access controls that restrict access to personal data systems to authorized personnel only;

Application-level access controls ensuring that personal data is presented to users only within the scope of their authorized role;

Remote access security ensuring that personal data accessed remotely is transmitted only through encrypted, authenticated channels;

Access control logging providing forensic capability for personal data breach investigation and NPC notification support;

WAF and API security controls reducing the risk of web-based attacks that could result in unauthorized personal data access or exfiltration.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous CSPM monitoring of cloud Security Group and NACL configurations with automated alerts for public access misconfigurations;

Daily SIEM correlation rule execution for access control violations and anomalous access patterns;

Weekly IPS and WAF alert review by the IT Security team;

Monthly NAC compliance report confirming all devices on the BFS network have passed posture assessment;

Quarterly firewall rule review progress tracking and SWG URL category policy review;

Annual formal access control audit and network segmentation penetration test;

Monthly KRI reporting to the CISO covering the KPIs defined below.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Devices on BFS network passing NAC posture assessment | 100% | Daily |

| CRITICAL or HIGH firewall misconfiguration findings remediated within SLA | 100% | Per finding |

| Cloud Security Group public-access violations (target: zero in production) | 0 | Daily (CSPM) |

| WAF in blocking mode for all internet-facing production applications | 100% | Monthly |

| Rogue wireless AP detection-to-investigation within 4 hours | 100% | Per incident |

| Remote access sessions with MFA enforced | 100% | Daily |

| Split-tunneling VPN exceptions reviewed quarterly | 100% reviewed | Quarterly |

| IPS signature update currency (within 7 days of release) | 100% | Weekly |

| WAF signature update currency (within 48 hrs for critical; 7 days for standard) | 100% | Per update |

| Annual firewall rule review completed on schedule | 100% of rulesets | Annual |

| Network segmentation penetration test completed on schedule | Annual | Annual |

| VPC Flow Logs enabled across all production VPCs | 100% | Daily |

| NDR alert investigation within defined SLA | 100% | Per alert |

| DNS filtering enforced on all managed endpoints | 100% | Daily |

| Direct internet egress from production servers (target: zero) | 0 | Daily |

| WIDS/WIPS coverage at all BFS premises | 100% of premises | Monthly |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Late firewall rule review; incomplete network flow log coverage; undocumented temporary access exception. | Formal written notice; mandatory remediation within defined timeframe; supervisory follow-up. |

| Moderate | Using an unapproved remote access tool to access BFS systems; connecting a personal wireless access point to the BFS wired network; bypassing the SWG proxy for internet access from a managed device. | Formal warning; immediate access revocation and device isolation pending review; mandatory security training; access privilege review. |

| Serious | Intentional misconfiguration of firewall rules to permit unauthorized access; deliberate disabling of WIDS/WIPS monitoring; persistent use of unapproved remote access bypassing MFA and security controls; circumventing NAC posture controls. | Suspension pending investigation; formal disciplinary action up to termination; CISO escalation; forensic investigation. |

| Critical / Legal | Connecting a rogue device to the BFS network to intercept traffic; deliberately reconfiguring network controls to enable unauthorized exfiltration; exploiting access control vulnerabilities for personal gain or to facilitate external attack. | Immediate termination; referral to law enforcement; prosecution under RA 10175; mandatory regulatory reporting to BSP and NPC (if data breach involved). |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Exceptions to access control requirements shall be rare, formally justified, risk-assessed, time-limited, subject to compensating controls, and reviewed at defined intervals. The default-deny principle means that access not explicitly permitted is not a gap to be closed by exception — it is the intended state. Exceptions shall expand access beyond what is normally permitted and must therefore be justified by a compelling business need.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| Firewall Rule Exception | Rule permitting access broader than the standard zone policy. | 6 months (reviewed semi-annually) | CISO (standard zones); CISO + CIO (CDE / Management zones) |

| SWG Bypass | Server or process requiring direct internet access without SWG proxy. | Permanent with quarterly review | CISO |

| Split Tunneling | Specific user population requiring split tunnel VPN for performance. | 6 months (reviewed semi-annually) | CISO |

| Remote Access Protocol | Use of an approved but non-standard remote access tool for specific integration. | 90 days; migration plan required | CISO |

| Direct Database Access | Developer or DBA requiring direct SQL access to production database. | Per task; max 8-hour session via PAM | CISO / IT Security Manager |

| WAF Detection Mode | Application entering WAF detection-only mode during development/rollout. | 30 days maximum | CISO / IT Security Manager |

| Guest Network Access | Contractor device requiring scoped access to a specific internal system. | Duration of engagement; max 90 days | CISO + System Owner |

| TLS Inspection Bypass | Category or domain excluded from SSL/TLS inspection for legal/privacy reasons. | Permanent (annual review) | CISO + Legal / Compliance |

| NAC Quarantine Bypass | Legacy device unable to meet NAC posture requirements. | 90 days; migration plan required | CISO + IT Operations Manager |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) permitting direct internet access to production database servers; (b) disabling WAF blocking mode for internet-facing applications processing cardholder data or customer PII without CISO + CIO approval and compensating control documentation; (c) permitting unencrypted remote access to any BFS system; (d) allowing guest network devices access to BFS internal resources; (e) disabling WIDS/WIPS at any BFS premises. These restrictions are non-negotiable. |

| --- |

## 11.3  Exception Process

Requestor submits an Access Control Policy Exception Request Form via the ITSM portal, providing: specific policy section, justification, systems/zones affected, duration, risk assessment, and proposed compensating controls.

Network Engineering or IT Security (depending on exception type) performs technical risk assessment and proposes compensating controls.

CISO Office reviews and approves or escalates per the authority matrix above.

Approved exceptions are logged in the Exception Register with: approval date, authority, expiry, compensating controls, and monitoring configuration.

All active exceptions are reviewed monthly by the CISO Office and reported quarterly to the Audit and Risk Committee.

Expired exceptions not renewed are automatically treated as policy violations and escalated to the CISO.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon any of the following triggering events:

Significant changes to BFS network architecture — including new data centers, cloud platform adoption, network infrastructure refresh, or major topology changes;

Introduction of new remote access technologies, ZTNA platforms, or major WAF / SWG platform changes;

Material access control security incidents — including successful network segmentation bypass, significant unauthorized access events, or major rogue AP incidents;

New or amended BSP circulars, PCI DSS versions, or NPC issuances affecting network or application access control requirements;

Publication of updated CIS Controls versions, NIST SP 800-207 (Zero Trust), or ISO/IEC 27001 that materially changes access control requirements;

Material findings from Internal Audit, external audit, penetration testing, or regulatory examination relating to access controls.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. New policy aligned with CIS Controls v8 Control 6, ISO/IEC 27001:2022, PCI DSS v4.0, NIST SP 800-207, and BSP Circular 1140. | IY Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 6 safeguards to their ISO/IEC 27001:2022 Annex A controls and relevant supplementary standards. Additional supporting controls are included where they reinforce the access control management program.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 6.1 | Establish an Access Granting Process | A.5.15 | Access control | IG1 |

| 6.2 | Establish an Access Revoking Process | A.5.18 | Access rights | IG1 |

| 6.3 | Require MFA for Externally-Exposed Applications | A.8.5 | Secure authentication | IG1 |

| 6.4 | Require MFA for Remote Network Access | A.8.5 | Secure authentication | IG2 |

| 6.5 | Require MFA for Administrative Access | A.8.5 | Secure authentication | IG2 |

| 6.6 | Establish and Maintain an Inventory of Authentication and Authorization Systems | A.5.15 | Access control | IG2 |

| 6.7 | Centralize Access Control | A.5.15 | Access control | IG2 |

| 6.8 | Define and Maintain Role-Based Access Control | A.8.2 | Privileged access rights | IG3 |

| N/A | Information access restriction — data-level controls | A.8.3 | Information access restriction | All |

| N/A | Network security controls — perimeter and segmentation | A.8.20 | Networks security | All |

| N/A | Network service security — API and application security | A.8.21 | Security of network services | All |

| N/A | Network segregation — zone architecture and micro-segmentation | A.8.22 | Segregation in networks | All |

| N/A | Web filtering — SWG, URL categorization, DNS security | A.8.23 | Web filtering | All |

| N/A | Remote working access controls | A.6.7 | Remote working | All |

| N/A | Application security — WAF, API gateway, OAuth | A.8.26 | Application security requirements | All |

| N/A | Audit logging — access control events | A.8.15 | Logging | All |

| N/A | Monitoring of access control events — NDR, SIEM | A.8.16 | Monitoring activities | All |

| N/A | Data leakage prevention at access control points | A.8.12 | Data leakage prevention | IG2/3 |

| N/A | Network connection control — wireless security | A.8.20 | Networks security | All |

| N/A | Clock synchronization for access control log integrity | A.8.17 | Use of clock synchronization | All |

| N/A | Secure coding — application-level access controls | A.8.28 | Secure coding | All |

| N/A | PCI DSS Req. 1 — network security controls and CDE segmentation | A.8.22 | Segregation in networks | All |

| N/A | PCI DSS Req. 9 — physical access and wireless for CDE | A.8.20 | Networks security | All |

| N/A | NIST SP 800-207 — Zero Trust Architecture implementation | A.5.15 | Access control | IG3 |

| N/A | Supplier / third-party network access controls | A.5.19 | Information security in supplier relationships | All |

| N/A | Data Privacy Act (RA 10173) — technical safeguards for PII access | A.5.34 | Privacy and protection of PII | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate security maturity; IG3 = Advanced/highest maturity. BFS targets full IG2 compliance enterprise-wide, with IG3 controls (ZTNA, UEBA, micro-segmentation, ABAC) applied to CRITICAL systems, PCI CDE, and personal data processing environments as part of the Zero Trust maturity roadmap.

# APPENDIX B:  Network Zone Traffic Control Matrix

The matrix below defines the default inter-zone traffic posture. 'Restricted' means only explicitly approved protocol/port combinations are permitted. 'Prohibited' means no traffic is permitted by default, regardless of protocol. 'N/A' means not applicable (same zone or no path). All 'Restricted' flows require documented firewall rules reviewed annually.

| FROM \ TO → | Internet | DMZ-Pub | User LAN | Server | Database | Mgmt/OOB | PCI/CDE | Cloud VPC |

| --- | --- | --- | --- | --- | --- | --- | --- | --- |

| Internet | N/A | Restricted | Prohibited | Prohibited | Prohibited | Prohibited | Prohibited | Prohibited |

| DMZ-Public | Restricted | N/A | Prohibited | Restricted | Prohibited | Prohibited | Prohibited | Restricted |

| User LAN | Via SWG only | Restricted | N/A | Restricted | Prohibited | Prohibited | Prohibited | Via VPN/ZTNA |

| Server | Prohibited | Restricted | Prohibited | Restricted | Restricted | Prohibited | Restricted | Restricted |

| Database | Prohibited | Prohibited | Prohibited | Restricted | N/A | Prohibited | Prohibited | Prohibited |

| Mgmt/OOB | Prohibited | Restricted | Prohibited | Restricted | Restricted | N/A | Restricted | Restricted |

| PCI/CDE | Prohibited | Restricted | Prohibited | Restricted | Restricted | Restricted | N/A | Prohibited |

| Cloud VPC | Via egress ctrl | Restricted | Prohibited | Via DX/VPN | Prohibited | Restricted | Prohibited | N/A |

Legend: PROHIBITED = No traffic permitted by default. RESTRICTED = Only explicitly approved and documented traffic flows permitted. Via SWG only = Outbound internet traffic must pass through the Secure Web Gateway. Via DX/VPN = Traffic routed through Direct Connect or Site-to-Site VPN. Via egress ctrl = Egress through NAT Gateway with Security Group restrictions.

# APPENDIX C:  Quick Reference Card

## C.1  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| Firewall / network rule change requests | Network Engineering / IT Security | ITSM Portal – Network Change Request |

| Remote access provisioning | IAM Team | ITSM Portal – Access Request |

| Rogue AP / wireless incident | SOC + Network Engineering | soc@bfs.com.ph \| 24/7 hotline |

| Suspicious access / NDR alert | Security Operations Center (SOC) | soc@bfs.com.ph \| 24/7 hotline |

| WAF / API gateway queries | IT Security / DevSecOps | security@bfs.com.ph |

| Cloud access control / CSPM alerts | Cloud Infrastructure Team | ITSM Portal \| cloud-sec@bfs.com.ph |

| NAC posture / quarantine queries | IT Security / Endpoint Mgmt | IT Service Desk \| ext. 8000 |

| Policy exceptions (access control) | CISO Office | ciso@bfs.com.ph |

| PCI CDE network queries | IT Compliance / PCI PM | compliance@bfs.com.ph |

| DNS filtering / SWG bypass queries | IT Security | security@bfs.com.ph |

## C.2  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| Rogue AP detection-to-investigation | Within 4 hours |

| Connected rogue AP port disable | Immediately on confirmation |

| CRITICAL firewall misconfiguration remediation | Within 24 hours |

| HIGH firewall misconfiguration remediation | Within 7 days |

| Cloud public-access misconfiguration remediation | Within 24 hours of detection |

| IPS signature update | Weekly (critical: within 48 hours) |

| WAF signature update (critical) | Within 48 hours of vendor release |

| WAF signature update (standard) | Weekly |

| Emergency firewall rule — retrospective approval | Within 24 hours |

| Firewall rule review (full annual review) | Annual |

| Firewall rule temporary exception review | Semi-annual |

| PCI CDE segmentation penetration test / validation | Annual |

| Network segmentation penetration test (general) | Annual |

| SWG URL category policy review | Quarterly |

| Split tunneling exception review | Quarterly |

| Remote access grant quarterly review | Quarterly |

| VPC Flow Log remediation on disable detection | Within 24 hours |

| WIDS/WIPS coverage verification | Monthly |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-006  |  Access Control Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
