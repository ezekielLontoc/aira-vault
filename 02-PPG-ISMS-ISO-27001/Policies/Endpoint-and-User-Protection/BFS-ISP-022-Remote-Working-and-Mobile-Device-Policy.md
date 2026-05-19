---
title: "BFS-ISP-022-Remote-Working-and-Mobile-Device-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Endpoint-and-User-Protection/BFS-ISP-022-Remote-Working-and-Mobile-Device-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Endpoint-and-User-Protection"
aliases:
  - "BFS-ISP-022-Remote-Working-and-Mobile-Device-Policy"
creator: "Un-named"
created: "2026-04-30T00:57:00Z"
modified: "2026-05-02T13:39:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>REMOTE WORKING AND<br>MOBILE DEVICE POLICY<br>Information Security for Off-Premises Work — Home Working, Mobile Working, BFS-Issued Devices, BYOD, and Off-Premises BFS Assets Across the Hybrid Work Reality<br>Policy Reference: BFS-ISP-022<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.6.7 and A.7.9<br>Aligned with BSP Telecommuting Expectations and RA 11165 Telecommuting Act<br>The Policy Closing the BYOD and Remote Working References from BFS-ISP-019 and BFS-ISP-020 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Remote Working and Mobile Device Policy |

| --- | --- |

| Policy Reference | BFS-ISP-022 |

| Policy Owner | Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team / CISO Office / IT Operations / HR |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS work arrangements, mobile device technology, threat landscape affecting remote/mobile environments, or regulatory expectations |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-005 (Account and Access Management — credentials and MFA for remote access); BFS-ISP-006 (Access Control); BFS-ISP-009 (Email and Browser Protections); BFS-ISP-010 (Malware Defenses — endpoint security); BFS-ISP-012 (Network Infrastructure — VPN, secure remote access); BFS-ISP-019 (Physical and Environmental Security — off-premises asset reference §5.9); BFS-ISP-020 (Acceptable Use Policy — referenced for BYOD); BFS-ISP-021 (HR Security — applies to remote workers) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.6.7 (Remote working); A.7.9 (Security of assets off-premises); ISO/IEC 27002:2022 implementation guidance for both controls; CIS Controls v8 — remote work elements; PCI DSS v4.0 Requirements 1, 8, 11 (remote access security) |

| Regulatory Reference | RA 11165 Telecommuting Act of 2018 and IRR; BSP Circular 1140 (Remote work IT controls); BSP Circular 1048 (Cybersecurity in remote contexts); RA 10173 (Personal data in remote work); RA 11058 OSH (Workplace safety extending to telecommuting); Department of Labor and Employment (DOLE) telecommuting guidelines |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| Chief Human Resources Officer |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Human Resources Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Chief Risk Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Remote Working and Mobile Device Policy governing information security for personnel work conducted outside BFS-controlled premises and for the use of mobile devices in BFS work. It is the policy that operationalizes ISO/IEC 27001:2022 Annex A.6.7 (Remote working) and A.7.9 (Security of assets off-premises) in unified framework, closing the BYOD and remote working references previously identified as forthcoming in BFS-ISP-019 §5.9 and BFS-ISP-020 §2.2.2.

Remote working is now a standard component of BFS work arrangements. The COVID-19 pandemic accelerated work-from-home adoption that has substantially persisted as hybrid arrangements; mobile device use is universal across BFS personnel; off-premises customer engagements (relationship management, audit fieldwork, training delivery) have always been part of BFS operations. The traditional information security model assuming personnel are physically inside BFS facilities with BFS-managed network connectivity no longer reflects operational reality. This policy establishes the security framework for that hybrid reality.

Beyond ISO 27001 closure, this policy fulfills RA 11165 Telecommuting Act expectations for telecommuting arrangements, Department of Labor and Employment (DOLE) guidelines for telecommuting, BSP supervisory expectations for IT controls in remote work contexts under BSP Circular 1140, BSP cybersecurity expectations under Circular 1048 extended to remote contexts, RA 10173 personal data protection extending to remote work environments, and RA 11058 Occupational Safety and Health extending to telecommuting workplaces.

The specific objectives of this policy are to:

Establish remote working categories with calibrated security requirements per category — recognizing that home-based work, off-premises customer engagement, and mobile work present different risk profiles;

Specify BFS-issued device requirements for personnel who work remotely or use mobile devices for BFS work;

Establish the BYOD framework — the conditions under which personally-owned devices may be used for BFS purposes and the security controls required when permitted;

Operationalize secure remote access — VPN, MFA, network security, and similar controls that protect BFS systems accessed from outside BFS networks;

Establish off-premises physical security expectations for BFS-issued equipment in personnel custody outside BFS facilities;

Address mobile device specifics — smartphones, tablets, and other portable computing platforms with their unique security considerations;

Govern lost or stolen device response — the most common off-premises information security incident type;

Ensure RA 11165 Telecommuting Act compliance — the Philippine legal framework specifically governing telecommuting arrangements;

Provide audit-friendly documentation supporting ISO 27001 certification, BSP examinations, and DOLE compliance reviews.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

For the purposes of this document, the following definitions apply.

| Term | Definition |

| --- | --- |

| Remote Working | Work conducted by BFS personnel from locations outside BFS-controlled facilities — including home-based work, mobile work, work from temporary alternate locations, and similar arrangements. |

| Telecommuting | Per RA 11165, work from an alternative workplace using telecommunications and/or computer technologies. Subset of remote working with specific Philippine legal framework applying. |

| Hybrid Work | Work arrangement combining on-premises and remote working — the typical BFS arrangement post-2022. |

| Home Working | Remote working conducted from personnel's residence — the most common remote working location. |

| Mobile Work | Remote working conducted from variable locations — customer sites, travel, public spaces, alternate offices. |

| BFS-Issued Device | Computing device (laptop, mobile phone, tablet) provided by BFS to personnel for BFS work; remains BFS property; subject to BFS device management. |

| BYOD (Bring Your Own Device) | Use of personally-owned device for BFS purposes per documented arrangement permitted by BFS. |

| Mobile Device | Portable computing device including smartphones, tablets, and similar form factors. Includes both BFS-issued and personally-owned devices used for BFS purposes. |

| Mobile Device Management (MDM) | Technology platform enabling BFS centralized management of mobile devices including configuration enforcement, application management, security policy application, and remote actions (lock, wipe, locate). |

| Mobile Application Management (MAM) | Technology platform enabling BFS management of specific applications and the BFS data within them — distinct from full device management; appropriate for BYOD contexts where BFS does not manage the entire device. |

| Remote Access | Network access to BFS internal systems from outside BFS networks — typically via VPN with MFA. |

| Virtual Private Network (VPN) | Encrypted network tunnel from remote device to BFS internal network providing secure access; enables BFS network policies to apply to remote-connected devices. |

| Remote Desktop / VDI | Virtual desktop infrastructure — BFS-controlled desktop environment accessed from any compatible device with appropriate authentication; data resides on BFS infrastructure rather than the access device. |

| Personal Hotspot | Mobile device function sharing internet connectivity to other devices; BFS personnel may use as alternative connectivity but with awareness of bandwidth costs and security considerations. |

| Public WiFi | WiFi networks in public locations (cafes, airports, hotels) typically without strong access control or encryption; subject to specific use restrictions per Section 6. |

| Remote Work Agreement | Documented agreement between BFS and personnel establishing telecommuting arrangement per RA 11165 — including work location, work hours, equipment provisions, performance expectations, and security obligations. |

| Container / Workspace | Logically isolated environment on a device (typically BYOD) containing BFS applications and data, separated from personal applications and data; supports BYOD without commingling BFS and personal information. |

| Geofencing | Technical mechanism restricting device or application use based on geographic location — for example, restricting access to specific systems when devices are detected outside permitted geographic regions. |

## 2.2  Scope

### 2.2.1  In-Scope Persons and Activities

All BFS personnel performing any work outside BFS-controlled premises;

All BFS personnel using mobile devices (BFS-issued or personally-owned) for BFS work;

Contractors and external parties under BFS control who work remotely or use mobile devices for BFS engagements;

BFS-issued equipment in personnel custody outside BFS facilities — laptops, mobile phones, tablets, peripherals, removable media containing BFS information;

Use of personally-owned devices for BFS purposes per BYOD arrangements;

Remote access to BFS systems including VPN access, web-based access to BFS applications, mobile application access;

Off-premises storage and handling of BFS information regardless of device or medium.

### 2.2.2  Out-of-Scope Items

Personal use of personally-owned devices for purposes unrelated to BFS — outside policy scope;

BFS facility-based work — governed by other BFS policies (BFS-ISP-019 physical security, etc.);

Customer use of BFS customer-facing applications from customer devices — governed by Customer Terms of Service;

Vendor company premises and operations — governed by BFS-ISP-015 service provider management;

Personal residence physical security beyond what affects BFS work — BFS does not regulate personnel residence security except where it affects BFS-issued asset protection.

## 2.3  ISO 27001:2022 Annex A Coverage

This policy operationalizes two Annex A controls in unified framework. Coverage mapping:

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.6.7 | Remote working | §3 (Remote Working Categories); §5 (Remote Working Operational Requirements); §6 (Remote Access Controls) |

| A.7.9 | Security of assets off-premises | §4 (Device Framework); §7 (Off-Premises Asset Protection); §8 (Lost/Stolen Device Response) |

# 3.  REMOTE WORKING CATEGORIES

This section establishes BFS remote working categories. Categorization calibrates security requirements to actual remote working profile — recognizing that occasional home work differs materially from sustained remote employment which differs from mobile customer-facing work.

## 3.1  Remote Working Category Framework

| Category | Definition | Typical Profile |

| --- | --- | --- |

| On-Premises Default | Personnel whose primary work location is BFS facility with occasional remote work (≤ 1 day per week typical) | Standard office personnel with occasional home work for personal reasons or specific project needs |

| Hybrid | Personnel formally arranged to work partially remote and partially on-premises (typically 2-3 days remote per week) | Standard hybrid arrangement; sustained remote pattern; documented arrangement |

| Predominantly Remote | Personnel whose primary work location is remote with periodic on-premises presence (typically ≤ 1 day per week on-premises) | Sustained remote work; documented arrangement; specific roles where remote is operationally appropriate |

| Fully Remote | Personnel working exclusively remote without regular on-premises presence | Specific role arrangements; geographic separation; documented arrangement; potentially distributed contractors |

| Mobile / Field | Personnel whose work involves variable locations — customer sites, branch travel, audit fieldwork, training delivery | Relationship managers, internal audit, training delivery, technical field service |

| Off-Premises Customer Engagement | Personnel temporarily at customer locations for specific engagements | Investment banking client engagement, audit fieldwork, training, consulting |

## 3.2  Telecommuting Arrangements per RA 11165

Personnel in Hybrid, Predominantly Remote, or Fully Remote categories operate under telecommuting arrangements per RA 11165 (Telecommuting Act of 2018). Specific RA 11165 requirements:

Voluntary Arrangement: Telecommuting is a voluntary arrangement requiring agreement of both BFS and personnel; not unilaterally imposed except as may apply during specific emergencies (e.g., declared public health emergencies);

Equal Treatment: Telecommuting personnel receive treatment equivalent to comparable on-premises personnel — including compensation, benefits, opportunities for advancement, and rights;

Written Agreement: Telecommuting arrangements are documented in writing per Remote Work Agreement (Section 3.3) covering required elements;

Workload and Performance: Telecommuting workload and performance standards are equivalent to comparable on-premises work; not used to impose additional burden;

Right to Disconnect: Telecommuting personnel have right to disconnect outside agreed working hours per Philippine labor law principles;

Equipment Provision: BFS provides equipment necessary for telecommuting per Section 4; alternatively, BYOD arrangements with appropriate compensation per RA 11165 IRR;

Reversibility: Telecommuting arrangements may be modified or reverted to on-premises work by mutual agreement; specific reversibility provisions per Remote Work Agreement;

Occupational Safety: BFS responsibility for telecommuting workplace safety per RA 11058 OSH extending to telecommuting locations — primarily through guidance, equipment provision, and ergonomic considerations rather than physical site inspection.

## 3.3  Remote Work Agreement

Personnel in Hybrid, Predominantly Remote, Fully Remote, or sustained Mobile categories execute Remote Work Agreement documenting the arrangement. Required content:

Personnel name, role, business unit, and employment status;

Remote working category and typical schedule (days remote, days on-premises if hybrid);

Primary remote work location — typically personnel residence; alternative arrangements (co-working space, satellite location) documented if applicable;

Working hours expectations including core hours where applicable;

Equipment provided by BFS or BYOD designation per Section 4;

Network connectivity expectations (BFS connectivity allowance if applicable, minimum bandwidth requirements);

Information security obligations specifically applicable to remote context per Sections 5-7;

Performance expectations and measurement;

Communication expectations (availability, response times, regular check-ins);

Workplace safety attestations per RA 11058 expectations;

Personnel signature acknowledging the arrangement and specific remote working obligations;

Manager and HR approval signatures;

Effective date and review date (typically annual).

Remote Work Agreements are reviewed annually with personnel and updated as arrangements evolve. Material changes (location change, category change, BYOD/BFS device change) trigger agreement update.

# 4.  DEVICE FRAMEWORK

This section establishes the device framework for remote working and mobile work — covering BFS-issued devices (the standard approach) and BYOD (the conditional alternative). Device choice has material security implications: BFS-issued devices enable comprehensive BFS management; BYOD requires careful balance of personnel device autonomy and BFS information protection.

## 4.1  Device Provision Approach

BFS approach to device provision for remote work and mobile work:

BFS-Issued Devices Are Standard: For personnel in Hybrid, Predominantly Remote, Fully Remote, or sustained Mobile categories, BFS-issued devices are the standard provision — enabling full BFS management and consistent security posture;

BYOD Permitted with Conditions: BYOD is permitted for specific use cases per Section 4.5 with required security controls;

Hybrid Approach: Some personnel may have both BFS-issued laptop (primary work) and personally-owned mobile phone with BYOD email/messaging access (secondary); this hybrid approach is common and supported;

VDI / Remote Desktop Alternative: Personnel may access BFS environments through VDI from any compatible device (BFS-issued or personally-owned), with BFS information remaining on BFS infrastructure rather than the access device — reducing device-side security requirements;

No Personal Devices for Privileged Access: Privileged system access (system administration, security operations, payment system administration) is not permitted from personally-owned devices regardless of BYOD enrollment — privileged access requires BFS-issued and BFS-managed devices.

## 4.2  BFS-Issued Device Requirements

BFS-issued devices used for remote and mobile work shall meet standard BFS device security configuration:

Full Disk Encryption: All BFS-issued laptops shall employ full disk encryption (BitLocker for Windows, FileVault for macOS, equivalent for other platforms);

Mobile Device Encryption: BFS-issued mobile devices (smartphones, tablets) shall employ device encryption per platform standard;

Mobile Device Management (MDM): All BFS-issued mobile devices shall be enrolled in BFS MDM enabling configuration enforcement, application management, security policy application, and remote actions;

Endpoint Detection and Response (EDR): BFS-issued laptops shall have current EDR agent operational per BFS-ISP-010;

Authentication: Strong authentication required for device unlock — biometric (fingerprint, face) or PIN/password meeting complexity requirements;

Auto-Lock: Devices shall auto-lock after configured inactivity period (typically 5-10 minutes for mobile devices, 10-15 minutes for laptops);

Operating System Currency: Devices shall run currently-supported operating system versions with current security patches per BFS-ISP-007 patching standards;

Application Control: Application installation restricted per BFS device management — typically requiring IT approval or limited to BFS approved application catalog;

Browser Security: Browser configuration per BFS-ISP-009 with current versions and security extensions;

Remote Wipe Capability: Devices shall support remote wipe for use in lost/stolen scenarios per Section 8;

Device Tracking: Devices shall support location tracking for use in lost device recovery — disabled in normal use; activated for specific lost device scenarios.

## 4.3  Privileged Device Requirements

Personnel with privileged system access (system administrators, database administrators, security operations, executives) operating remotely have enhanced device requirements:

Privileged Access Workstation (PAW): Dedicated BFS-issued device for privileged operations — separate from general productivity device where feasible;

Hardware-Backed Authentication: FIDO2 / WebAuthn hardware tokens required for privileged authentication per BFS-ISP-005;

Network Restrictions: Privileged operations may be restricted to specific network paths (e.g., VPN with specific endpoint verification);

Geographic Restrictions: Privileged access may be restricted by geofencing — preventing privileged access from unexpected geographic locations;

Enhanced Monitoring: Privileged access activities subject to enhanced monitoring per BFS-ISP-008 audit logging;

Reduced BYOD Tolerance: BYOD not permitted for privileged operations regardless of other personnel's BYOD enrollment.

## 4.4  Device Lifecycle for Off-Premises Devices

Device lifecycle stages with off-premises specific considerations per BFS-ISP-019 §7 with remote working overlay:

Issuance: Device issued to personnel with documented receipt; device security configuration verified before issuance; personnel briefing on care and security obligations;

Active Use: Personnel custody with security obligations per Section 7;

Service: Device service performed by BFS or authorized vendors; remote service via management tools where possible; on-site service per arrangement;

Replacement: Aged or failing devices replaced with retrieval of failed device for proper disposition;

Recovery at Termination: Per BFS-ISP-021 §7.4, BFS-issued devices recovered at personnel termination; specific arrangements for devices with personnel located far from BFS facilities (courier return, return to nearest BFS branch, etc.);

Disposal: Devices at end of useful life undergo disposal per BFS-ISP-019 §5.14 — data sanitization or destruction before reuse or external disposal.

## 4.5  BYOD (Bring Your Own Device) Framework

BYOD is permitted for specific use cases under specific conditions. BYOD is not unrestricted permission to use any personal device for any BFS purpose — it is a conditional framework balancing personnel device autonomy with BFS information protection:

### 4.5.1  Permitted BYOD Use Cases

Mobile Email and Messaging: BFS email and messaging access on personally-owned smartphones via BFS Mobile Application Management (MAM) — common BYOD use case;

Tablet Use: Limited BFS application use on personally-owned tablets per MAM;

Web-Based Access: Access to specific BFS web applications from personal devices through browser with appropriate authentication — typically read-only or limited functionality;

VDI Access: Access to BFS VDI from personal devices — minimal device-side data residence;

Specific Approved Use Cases: Specific BYOD arrangements per documented approval for personnel circumstances where BFS-issued device is impractical or specifically inappropriate.

### 4.5.2  BYOD Prohibited Use Cases

Privileged System Access: Privileged operations require BFS-issued device per Section 4.3;

CONFIDENTIAL or RESTRICTED Information Storage: Information at these classification levels not permitted on BYOD devices except through MAM-managed containers;

PCI Cardholder Data Handling: Per PCI DSS expectations, cardholder data not permitted on personally-owned devices;

Bulk Data Operations: Bulk customer data download, large-scale data manipulation not permitted on BYOD;

Software Development on BFS Code: BFS source code not permitted on personally-owned devices except through specific approved arrangements (typically limited to specific contractors with documented arrangements per BFS-ISP-015).

### 4.5.3  BYOD Required Controls

BYOD Enrollment: Personnel BYOD use requires enrollment in BFS BYOD program with executed BYOD Agreement;

MAM Installation: Mobile Application Management profile installed on personally-owned mobile devices providing BFS application management without managing the entire device;

Container/Workspace Separation: BFS applications and data in MAM-managed container separated from personal applications and data — preventing commingling;

Authentication: Strong authentication required for BFS application access — typically biometric or PIN at app launch in addition to device unlock;

Selective Wipe Capability: BFS reserves right to selectively wipe BFS container/applications without affecting personal data — used for lost/stolen device, BYOD program exit, or termination;

Device Security Posture Verification: BFS may verify device security posture (current OS version, no jailbreak/root, basic security settings) before permitting BFS application access;

No BFS Information Outside Container: Personnel agreement that BFS information shall not be moved outside MAM container to general device storage;

Personnel Privacy Respect: BFS does not access personal applications, personal data, personal communications outside BFS container; MAM management is limited to BFS-managed scope;

BYOD Agreement Execution: Personnel sign BYOD Agreement acknowledging the framework, granting BFS specific management rights, and accepting BFS information protection obligations.

| BYOD BALANCE:  BYOD frameworks must balance two legitimate interests: personnel device autonomy and BFS information protection. Heavy-handed BYOD requirements that effectively manage personal devices like BFS-issued devices defeat the purpose and create personnel resistance. Insufficient BYOD requirements expose BFS information through inadequately protected personal devices. BFS approach uses MAM (managing only the BFS container) rather than MDM (managing the entire device) for BYOD — preserving personnel autonomy over their personal device while protecting BFS information within the BFS container. This approach respects RA 10173 personal data protection of personnel personal data while providing appropriate BFS information protection. |

| --- |

# 5.  REMOTE WORKING OPERATIONAL REQUIREMENTS (A.6.7)

This section establishes operational requirements for remote working operationalizing ISO/IEC 27001:2022 Annex A.6.7. These are policy statements binding on personnel performing remote work.

## 5.1  Workspace Requirements

PS-1.1  Personnel performing sustained remote work shall maintain a workspace appropriate for BFS work — including adequate privacy preventing observation of BFS information by unauthorized persons (family members, household visitors, casual passers-by); adequate physical security for BFS-issued equipment; and adequate environmental conditions for safe and effective work.

PS-1.2  BFS confidential conversations (calls, video conferences) shall be conducted in private workspace where conversations are not audible to unauthorized persons. Public spaces (cafes, restaurants, common areas of multi-occupant residences) are not appropriate for BFS confidential conversations.

PS-1.3  BFS-issued equipment in remote workspace shall be reasonably secured — not left in public-accessible areas; secured during personnel absence; protected from household risks (food and drink, children, pets where relevant).

PS-1.4  Workspace shall enable clear desk and clear screen practices per BFS-ISP-019 §5.7 and BFS-ISP-020 §5.8 — confidential documents secured when not in active use; screens not visible to unauthorized persons; workspace cleared at end of work session.

PS-1.5  BFS-issued equipment displays shall be oriented to minimize unauthorized observation — particularly important in shared residences and locations where family members or visitors may be present.

## 5.2  Working Hours and Availability

PS-2.1  Remote working hours shall align with personnel role expectations and Remote Work Agreement provisions — including core hours where applicable for collaboration.

PS-2.2  Personnel availability during agreed working hours through agreed channels (email response time, instant messaging presence, phone availability) shall support team collaboration and customer responsiveness.

PS-2.3  Personnel right to disconnect outside working hours respected per Philippine labor law principles — managers shall not expect routine off-hours availability except for agreed on-call arrangements.

PS-2.4  Sustained off-hours BFS system access patterns warrant evaluation — may indicate work-life balance concerns or potential security concerns; addressed constructively through manager engagement.

## 5.3  Information Security in Remote Context

PS-3.1  All BFS information security policies apply equally in remote work context — remote work does not relax security expectations. BFS-ISP-003 (Data Protection), BFS-ISP-005 (Account Management), BFS-ISP-009 (Email/Browser), BFS-ISP-010 (Malware), BFS-ISP-020 (Acceptable Use) apply equally to remote work.

PS-3.2  BFS information shall not be processed using personal-account services (personal email, personal cloud storage, personal AI tools) regardless of work location. The convenience of personal accounts in remote context does not override information protection requirements.

PS-3.3  Printing of BFS information in remote workspace shall be limited to legitimate business need; printed materials shall be appropriately secured (not left at home printer; not disposed of in household trash without secure disposal); confidential printing should typically be performed in BFS facilities.

PS-3.4  BFS information shall not be photographed or screenshot for personal retention regardless of work location. Standard prohibitions per BFS-ISP-020 apply equally in remote context.

PS-3.5  Household members shall not have access to BFS systems through personnel BFS-issued devices — credential sharing prohibited; device left logged in and unattended creates similar exposure.

## 5.4  Network Connectivity

PS-4.1  Remote working network connectivity shall meet minimum bandwidth and reliability requirements supporting BFS work — typically minimum 25 Mbps for general work; higher for video-intensive roles. Specific minimums per Remote Work Agreement.

PS-4.2  Home network used for sustained BFS remote work shall employ basic security — current router firmware; non-default administrator credentials; WPA3 (preferred) or WPA2 wireless encryption; firewall enabled. BFS provides guidance but does not directly manage personnel home networks.

PS-4.3  Public WiFi shall be used for BFS work only with VPN connection per Section 6 — public WiFi without VPN is not permitted for BFS system access.

PS-4.4  Personal hotspot connectivity (using mobile data) is acceptable alternative to home WiFi or public WiFi when other options unavailable; bandwidth costs are personnel consideration unless covered by BFS allowance.

PS-4.5  Network connectivity issues affecting BFS work shall be reported to manager and IT — sustained connectivity issues may warrant temporary on-premises work or alternative arrangements.

## 5.5  Personnel Wellbeing in Remote Work

Remote work has wellbeing dimensions affecting effectiveness and indirectly affecting security:

Workspace ergonomics — appropriate seating, screen positioning, lighting; BFS may provide guidance and equipment allowances per HR;

Work-life boundary maintenance — physical separation of work and personal space where feasible; clear start/end times;

Social connection — remote work isolation can affect wellbeing; managers maintain regular team interaction;

Mental health — remote work mental health support available through Employee Assistance Programs;

Family considerations — remote work may interact with family responsibilities; reasonable accommodation per HR;

Productivity expectations — productivity-by-presence assumptions inappropriate for remote work; outcome-based assessment with reasonable expectations.

# 6.  REMOTE ACCESS CONTROLS

This section establishes the technical controls protecting BFS systems accessed from outside BFS networks. These controls are the operational defense between off-premises devices and BFS internal environments.

## 6.1  Virtual Private Network (VPN)

PS-1.1  Remote access to BFS internal systems shall use BFS-managed VPN with strong encryption (typically AES-256) and current protocol versions.

PS-1.2  VPN authentication shall include MFA per BFS-ISP-005 — typically combining password with hardware token, mobile authenticator, or FIDO2 credential.

PS-1.3  VPN connections shall route all BFS-system traffic through BFS network — split-tunneling (where some traffic bypasses VPN) is restricted to specifically authorized scenarios with documented justification.

PS-1.4  VPN concentrators shall be highly available with capacity sufficient for peak remote work demand; capacity monitoring per BFS-ISP-013 with proactive scaling.

PS-1.5  VPN session policies shall enforce idle timeout (typically 30-60 minutes for general access; shorter for privileged) and maximum session duration (typically 12-24 hours requiring re-authentication).

PS-1.6  VPN access logs shall be retained per BFS-ISP-008 — supporting incident investigation and access pattern analysis.

## 6.2  Multi-Factor Authentication (MFA)

MFA per BFS-ISP-005 applies with specific remote access considerations:

MFA required for all BFS system access from outside BFS networks regardless of access method (VPN, web, mobile);

MFA factor types acceptable per BFS-ISP-005 — strong factors preferred (FIDO2 hardware tokens, mobile authenticator app push notifications); SMS-based MFA permitted only as fallback;

MFA enrollment performed before remote access privileges granted;

Lost MFA factor recovery process documented and implemented — preventing personnel lockout while maintaining security;

MFA bypass attempts logged and investigated.

## 6.3  Network Access Control

Remote access permitted only from devices meeting security posture requirements — endpoint health verification before VPN connection completion;

Geographic access controls applied where appropriate — sensitive systems may restrict access by source country or region;

Access from anonymizing services (Tor, anonymous proxies) blocked or treated with elevated suspicion;

Anomalous access patterns (unexpected geography, unusual times, unusual access targets) trigger automated investigation per BFS-ISP-013;

Access denied attempts patterns analyzed for indication of credential compromise or attack attempts.

## 6.4  Web-Based Access

BFS applications accessible via web from outside BFS networks (typically through BFS reverse proxy or cloud-based BFS applications):

HTTPS-only with current TLS versions (1.2 minimum, 1.3 preferred);

Strong authentication including MFA;

Application-level security controls per BFS-ISP-016 SSDLC;

Session management with appropriate timeout and re-authentication;

WAF protection per BFS-ISP-013 for web-facing BFS applications.

## 6.5  Mobile Application Access

BFS mobile applications accessed from BFS-issued or BYOD mobile devices:

Strong authentication including biometric where supported;

Application-level encryption of stored data;

Certificate pinning preventing man-in-the-middle attacks;

Jailbreak / root detection — applications detect compromised device states and respond appropriately;

Selective wipe capability for BFS applications and data per Section 8.

# 7.  OFF-PREMISES ASSET PROTECTION (A.7.9)

This section operationalizes ISO/IEC 27001:2022 Annex A.7.9 for protection of BFS assets in personnel custody outside BFS facilities. Off-premises assets face elevated physical security risk compared to facility-based assets — theft, loss, environmental damage, and unauthorized observation are all materially higher risk.

## 7.1  Personnel Custody Obligations

PS-1.1  BFS-issued equipment in personnel custody outside BFS facilities is personnel responsibility — including reasonable physical security, environmental protection, and prevention of unauthorized access.

PS-1.2  Equipment shall not be left in unattended public locations — including hotel rooms during outings, vehicles in public parking, public transportation, restaurants, conference venues. Equipment in vehicles shall be in trunk or otherwise out of sight; vehicle storage shall not be sustained (overnight in unsecured location).

PS-1.3  Equipment shall not be left in checked baggage during travel — equipment shall accompany personnel as carry-on. Lost or damaged checked baggage carries unacceptable equipment risk.

PS-1.4  Equipment shall not be lent to other persons including family members, colleagues, or other parties. Personal use of equipment by household members is not permitted given device security configuration and BFS information presence.

PS-1.5  Equipment shall be reasonably protected from environmental damage — temperature extremes, water exposure, physical impact. Personnel exercise reasonable care comparable to care for own valuable property.

## 7.2  Travel-Specific Considerations

Personnel traveling with BFS-issued equipment have specific considerations:

Pre-Travel: Equipment backup verified; sensitive material removal where feasible; travel-specific security configuration where applicable; personnel awareness of destination-specific risks (high-risk jurisdictions, hostile threat environments);

During Travel: Equipment as carry-on; physical security in lodging (room safe where appropriate; do-not-disturb to prevent unauthorized cleaning access; valuables visible to personnel);

Border Crossings: Awareness of destination customs / immigration practices regarding device inspection; specific guidance for high-risk destinations may include sanitized travel devices rather than primary work devices;

Hostile Environments: Specific arrangements for travel to destinations with material technical surveillance or device inspection risk — typically through CISO Office and Legal Counsel coordination;

Loss / Theft During Travel: Immediate reporting per Section 8 regardless of travel location; remote wipe initiated; local police report where appropriate;

Post-Travel: Equipment integrity verification; potential device sanitization for high-risk destinations; security event review.

## 7.3  Storage Media Off-Premises

Removable storage media (USB drives, external hard drives) used in off-premises contexts:

BFS information on removable storage in off-premises contexts shall be encrypted regardless of classification;

Removable storage in transit warrants additional protection — physical security; documented chain of custody for sensitive content;

Personally-owned storage media not permitted for BFS information transport regardless of work location;

Lost removable storage with BFS information shall be reported immediately as potential breach per Section 8.

## 7.4  Off-Premises Disposal

Equipment disposal in off-premises context (e.g., personal device decommissioning during BYOD program exit):

BFS information removal verification before personal device repurposing or disposal — typically through MAM selective wipe;

BFS-issued equipment retired in remote contexts returned to BFS for proper disposal — not disposed of locally by personnel;

Hardware destruction services if used in off-premises context per BFS-ISP-015 vendor expectations.

# 8.  LOST OR STOLEN DEVICE RESPONSE

Lost or stolen device is the most common off-premises information security incident type. This section establishes the response framework — fast, effective response materially limits exposure.

## 8.1  Immediate Reporting

PS-1.1  Lost or stolen BFS-issued device shall be reported immediately to Corporate Security and IT — within 1 hour of personnel discovery if practicable; in any case as soon as personnel becomes aware. Reporting timeline materially affects exposure mitigation effectiveness.

PS-1.2  Lost or stolen personally-owned device with BFS BYOD enrollment shall be reported with similar urgency — selective BFS application/data wipe initiated.

PS-1.3  Reporting includes: device type and identifier; circumstances of loss/theft; estimated time of loss; location; whether device was powered on; whether device was unlocked at time of loss; police report status; assessment of potentially exposed information.

## 8.2  Containment Actions

Standard containment actions on lost device report:

| Action | Timing | Notes |

| --- | --- | --- |

| Remote Lock | Immediate | Device locked preventing further access if currently unlocked |

| Credential Reset | Within 1 hour | User credentials reset preventing reuse if extracted from device |

| MFA Token Revocation | Within 1 hour | Hardware MFA tokens revoked; mobile authenticator deregistered |

| VPN Access Revocation | Within 1 hour | Device certificates revoked; VPN access blocked from device |

| Remote Wipe Initiation | Within 4 hours | Full device wipe (BFS-issued) or selective BFS container wipe (BYOD) initiated; effectiveness depends on device connectivity |

| Location Tracking Activation | Immediate | Device location tracking activated supporting potential recovery |

| Police Report Coordination | Same day | Personnel files police report; report number documented; supports potential recovery and insurance |

| Incident Response Activation | Within 24 hours | Per BFS-ISP-017 — formal incident response if exposure assessment indicates material risk |

| Information Exposure Assessment | Within 48 hours | Assessment of information potentially exposed via the lost device — determining breach notification requirements |

| Breach Notification Assessment | Per BFS-ISP-017 timelines | If material personal data exposed, NPC notification per RA 10173; customer notification if applicable; regulatory notification per applicable rules |

## 8.3  Recovery

Devices recovered after loss/theft shall not be returned to active use without security verification — examination for tampering, malware insertion, or other compromise;

Recovered devices may be sanitized and re-imaged before return to use as alternative to detailed forensic examination;

Recovery scenarios documented in incident records — supporting analysis of loss patterns and recovery effectiveness.

## 8.4  Personnel Considerations

Personnel reporting lost/stolen device shall not face disciplinary action solely for the loss — the priority is rapid reporting enabling effective response. Disciplinary consideration applies only where loss involved policy violations (e.g., device left unattended in clearly inappropriate location);

Personnel inability to immediately report (loss occurred during travel, vacation, etc.) is mitigated through alternative reporting channels — out-of-hours IT support, family member reporting, etc.;

Replacement device provisioning expedited for personnel critical roles to minimize work disruption;

Insurance coverage and BFS replacement policy clearly communicated — reducing personnel anxiety about reporting.

# 9.  ROLES AND RESPONSIBILITIES

| Role | Remote Working and Mobile Device Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy and material revisions. Receives reporting on remote work security KPIs, lost device incidents, and trends. Provides oversight of remote work program effectiveness. |

| Chief Information Officer | Co-approver. Ensures IT capabilities support remote work — VPN capacity, MDM/MAM platforms, remote support capabilities. Approves material technology investments for remote work. |

| Chief Information Security Officer | Document owner. Operationally accountable for remote work security architecture, controls implementation, and incident response. Coordinates lost device response. Maintains BYOD framework and approved arrangements. |

| Chief Human Resources Officer | Co-approver. Operationally accountable for telecommuting arrangements per RA 11165. Manages Remote Work Agreements. Coordinates personnel wellbeing aspects of remote work. |

| Chief Compliance Officer | Co-approver. Ensures remote work compliance with RA 11165, RA 11058 OSH, BSP expectations, and labor law. Coordinates regulatory examination on remote work topics. |

| Chief Risk Officer | Co-approver. Integrates remote work risk into enterprise risk. Reviews material remote work incidents. |

| IT Operations | Operates remote work technology infrastructure — VPN, MDM, MAM, support tools. Provisions BFS-issued devices. Performs lost device response actions. |

| IT Service Desk | First-line support for remote work technology issues. Initiates lost device reporting workflow. Coordinates with Corporate Security. |

| Corporate Security | Coordinates lost device incident response. Coordinates with police where applicable. Maintains stolen device watchlists. |

| HR Business Partners | Support telecommuting arrangements. Address remote work employment matters. Coordinate Remote Work Agreement execution and updates. |

| Managers | Approve telecommuting arrangements for direct reports. Maintain team communication and coordination across remote and on-premises personnel. Address performance and conduct issues consistently regardless of work location. |

| All Personnel | Comply with this policy when working remotely or using mobile devices. Execute Remote Work Agreement when applicable. Maintain BFS-issued and BYOD device security. Report lost/stolen devices immediately. Practice clear desk and clear screen in remote workspace. |

| Internal Audit | Independently audits remote work and mobile device security per BFS-ISMS-008 — including BYOD program operation, remote access controls, lost device response effectiveness, telecommuting agreement compliance. |

# 10.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Remote working and mobile device security effectiveness is measured through the following KPIs reviewed quarterly by CISO Office and HR jointly and reported to the Information Security Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| BFS-issued devices with current MDM enrollment | 100% | Monthly |

| BFS-issued laptops with full disk encryption operational | 100% | Monthly |

| BFS-issued mobile devices with device encryption operational | 100% | Monthly |

| BFS-issued devices with current EDR agent | ≥ 99% | Monthly |

| BFS-issued devices with current OS and patches | ≥ 95% within 30 days of patch release | Monthly |

| Remote Work Agreements current for telecommuting personnel | 100% | Quarterly |

| VPN authentication failures (potential attack indicators) | Track and trend | Monthly |

| MFA enrollment for remote-access personnel | 100% | Monthly |

| BYOD enrollments with MAM operational | 100% | Quarterly |

| Lost/stolen device reports — time from loss to BFS report | Median ≤ 4 hours | Per incident |

| Lost/stolen device reports — containment actions completed within target timelines | ≥ 95% | Per incident |

| Remote wipe success rate (when device connectivity available) | ≥ 90% | Per incident |

| Information exposure assessment completed within 48 hours of lost device report | 100% | Per incident |

| Breach notifications triggered by lost devices — completed within regulatory timelines | 100% | Per applicable case |

| VPN concentrator capacity utilization (peak) | < 75% | Monthly |

| Remote work productivity (manager assessment) | Equivalent to on-premises | Annual |

| Personnel wellbeing in remote work (engagement survey) | Track and trend | Annual |

| RA 11165 compliance audit findings | Zero material findings | Annual |

| BSP examination findings on remote work IT controls | Zero material findings | Per examination |

| Internal Audit findings on remote work and mobile device policy | Track and remediate per BFS-ISMS-010 | Per audit |

## 10.2  Internal Audit Verification

Internal Audit (per BFS-ISMS-008) verifies remote working and mobile device security through:

Sample-based BFS-issued device security configuration verification;

BYOD program enrollment and MAM operational verification;

VPN access logs review for anomalous patterns;

Lost device incident response effectiveness review;

Remote Work Agreement completeness and currency review;

Telecommuting arrangement RA 11165 compliance verification.

# 11.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Remote Working and Mobile Device Policy operationalizing ISO/IEC 27001:2022 Annex A.6.7 (Remote working) and A.7.9 (Security of assets off-premises) in unified framework. Closes BYOD and remote working forward references from BFS-ISP-019 §5.9 and BFS-ISP-020 §2.2.2. Six remote working categories with calibrated requirements (On-Premises Default / Hybrid / Predominantly Remote / Fully Remote / Mobile-Field / Off-Premises Customer Engagement). Comprehensive BYOD framework with permitted/prohibited use cases and required controls (MAM, container separation, selective wipe). Telecommuting arrangements aligned with RA 11165 Telecommuting Act. Remote access controls (VPN, MFA, NAC, web/mobile application access). Off-premises asset protection per A.7.9. Lost/stolen device response framework with 10 standard containment actions and timing. | IT Head / Infrastructure Team / HR | IT Head / HR Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A Controls Mapping

This appendix provides direct mapping of the two Annex A controls closed by this policy to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.6.7 | Remote working — Security measures shall be implemented when personnel are working remotely to protect information accessed, processed or stored outside the organization's premises. | Section 3 (Remote Working Categories) establishes 6-category framework with calibrated requirements. Section 5 (Remote Working Operational Requirements) provides 19 PS statements across workspace requirements (5 PS), working hours (4 PS), information security in remote context (5 PS), network connectivity (5 PS), and personnel wellbeing. Section 6 (Remote Access Controls) operationalizes VPN, MFA, NAC, web/mobile access controls. RA 11165 Telecommuting Act compliance through Section 3.2. Remote Work Agreement framework per Section 3.3. |

| A.7.9 | Security of assets off-premises — Off-site assets shall be protected. | Section 4 (Device Framework) establishes BFS-issued device requirements (Section 4.2 — 11 controls) and BYOD framework (Section 4.5). Section 7 (Off-Premises Asset Protection) provides personnel custody obligations (5 PS in Section 7.1), travel-specific considerations (Section 7.2), storage media off-premises (Section 7.3), and off-premises disposal (Section 7.4). Section 8 (Lost/Stolen Device Response) establishes 10-action containment framework with calibrated timing. |

# APPENDIX B:  Remote Working and Mobile Device Quick Reference

Single-page reference for personnel working remotely or using mobile devices for BFS work.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What remote working category am I in? | Six categories per §3.1: On-Premises Default (≤1 day/week remote); Hybrid (2-3 days remote); Predominantly Remote (≤1 day/week on-premises); Fully Remote (no regular on-premises); Mobile/Field; Off-Premises Customer Engagement. Documented in your Remote Work Agreement if applicable. |

| Do I need a Remote Work Agreement? | Yes if you're in Hybrid, Predominantly Remote, Fully Remote, or sustained Mobile categories. Per RA 11165 Telecommuting Act. Documents arrangement, equipment, security obligations. Manager + HR coordination. See §3.3. |

| Can I use my personal laptop for BFS work? | Generally no — BFS-issued devices are standard for sustained remote work. Limited BYOD permitted per §4.5 for specific use cases (mobile email, tablet limited use, web access, VDI). Privileged operations require BFS-issued device. CONFIDENTIAL data not on personal devices outside MAM container. See §4.5. |

| Can I use BFS email on my personal phone? | Yes through BYOD MAM enrollment. Personal phone with BFS Mobile Application Management providing BFS email and apps in container separated from personal data. Selective BFS-only wipe possible. Personal data not accessed by BFS. See §4.5.3. |

| What network do I need for remote work? | Minimum 25 Mbps typical for general work (higher for video roles). Home network with current router firmware, non-default credentials, WPA2/WPA3 encryption. VPN required for BFS internal system access. Public WiFi only with VPN. See §5.4. |

| Can I work from a coffee shop or airport? | Yes for general work with VPN. Private workspace required for confidential calls/video. Not appropriate for sustained remote work or sensitive material handling. Public WiFi only with VPN per PS-4.3. See §5.1 and §5.4. |

| Can family members use my BFS laptop? | No. BFS-issued device is for personnel use only. Credential sharing prohibited per BFS-ISP-020. Household members do not have BFS system access through your device. See §5.3 PS-3.5. |

| What do I do if I lose my BFS laptop or phone? | Report immediately to Corporate Security and IT — within 1 hour if practicable. BFS will lock device, reset credentials, revoke MFA, initiate remote wipe, and assess information exposure. File police report. You will not face disciplinary action solely for the loss — fast reporting matters. See §8. |

| Can I take my BFS laptop on international travel? | Yes generally, with carry-on transport (not checked baggage), reasonable physical security at destinations. Specific guidance for high-risk destinations through CISO Office. Border crossing customs/inspection awareness. See §7.2. |

| Can I print BFS documents at home? | Limited to legitimate business need; printed materials secured (not at home printer; not in household trash without secure disposal). Confidential printing typically performed at BFS facilities. See PS-3.3. |

| What if my home internet is down? | Report to manager and IT. Use mobile hotspot temporarily if practicable. Sustained connectivity issues may warrant temporary on-premises work. See PS-4.4 and PS-4.5. |

| Do my work hours change when remote? | No — same role expectations apply. Remote Work Agreement specifies arrangement. Right to disconnect outside agreed hours per Philippine labor law. Sustained off-hours BFS access patterns trigger evaluation. See §5.2. |

BFS-ISP-022  |  Remote Working and Mobile Device Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.6.7 and A.7.9. RA 11165 Telecommuting Act Aligned.
