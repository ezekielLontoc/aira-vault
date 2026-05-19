---
title: "BFS-ISP-019-Physical-and-Environmental-Security-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Physical-and-Environmental-Security/BFS-ISP-019-Physical-and-Environmental-Security-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:40Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Physical-and-Environmental-Security"
aliases:
  - "BFS-ISP-019-Physical-and-Environmental-Security-Policy"
creator: "Un-named"
created: "2026-04-28T01:18:00Z"
modified: "2026-05-02T13:40:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>PHYSICAL AND<br>ENVIRONMENTAL SECURITY<br>Physical Security Perimeters, Entry Controls, Surveillance, Environmental Protection, Equipment Siting and Disposal — Across BFS Head Office, Branches, Data Centers, and ATM Network<br>Policy Reference: BFS-ISP-019<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.7 (All 14 Physical Controls)<br>Calibrated for Philippine Geographic Risk Profile — Earthquakes, Typhoons, Volcanic Activity<br>The largest single Annex A gap closure — comprehensive physical security framework for a regulated banking institution |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Physical and Environmental Security Policy |

| --- | --- |

| Policy Reference | BFS-ISP-019 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS facility footprint, threat landscape (e.g., natural disaster events, security incidents at peer institutions), regulatory expectations, or technology platforms supporting physical security |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-001 (Asset Inventory — physical assets); BFS-ISP-003 (Data Protection — physical media); BFS-ISP-010 (Malware Defenses — endpoint physical security); BFS-ISP-011 (Data Recovery — DR site physical security); BFS-ISP-012 (Network Infrastructure — physical network security); BFS-ISP-022 forthcoming (Remote Working — off-premises); BFS-ISP-028 forthcoming (Equipment Disposal); BFS-ISP-014 (Awareness Training — physical security awareness) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.7 (Physical Controls) — all 14 controls A.7.1 through A.7.14; ISO/IEC 27002:2022 Section 7 (Physical controls implementation guidance); CIS Controls v8 — physical security elements; PCI DSS v4.0 Requirement 9 (Restrict physical access to cardholder data) |

| Regulatory Reference | BSP Circular 1140 (IT facility expectations); BSP Circular 1048 (Cybersecurity — physical and environmental); RA 8791 General Banking Law (banking premises); RA 10173 (Physical safeguards for personal data); PCI DSS v4.0 Req. 9 (Cardholder data physical access controls); Bureau of Fire Protection Code; National Building Code of the Philippines; Occupational Safety and Health Standards |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Physical and Environmental Security Policy governing the physical protection of BFS facilities, equipment, and information assets across the entire BFS facility footprint — head office, branches, data centers, ATM network, and supporting facilities. It is the single policy closing all 14 controls of ISO/IEC 27001:2022 Annex A.7 (Physical Controls) and represents the largest single Annex A gap closure in the BFS-ISMS-004 implementation roadmap.

Physical security is foundational for a banking institution. While information security increasingly emphasizes logical and cyber controls, a financial institution that fails physical security has failed comprehensively — vault breaches, unauthorized data center access, ATM physical attacks, theft of equipment containing customer data, and natural disaster damage to critical systems all bypass logical controls regardless of how sophisticated those logical controls may be. BFS treats physical security with the rigor appropriate to a regulated banking institution operating in the Philippine geographic and regulatory environment.

This policy addresses the BFS facility footprint comprehensively:

BFS Head Office — executive offices, treasury operations, payment operations, IT operations, server rooms, document storage, executive board areas;

BFS Branches — customer-facing banking operations across the BFS branch network with branch-specific security profiles calibrated to size, location, and operational profile;

BFS Data Centers — primary and disaster recovery data centers hosting BFS core banking platforms, including the AI-native core banking platform under construction;

BFS ATM Network — automated teller machines deployed in branch and off-branch locations with specialized physical security requirements addressing vandalism, attack, and tampering;

Supporting Facilities — training centers, archive storage, third-party hosting environments under BFS contractual control.

The Philippine geographic environment imposes specific physical security considerations distinct from peer environments in less seismically and meteorologically active regions. BFS operates in an environment subject to: earthquakes (Philippines is on the Pacific Ring of Fire with frequent seismic activity); typhoons (typically 20+ tropical cyclones per year with several making landfall); volcanic activity (e.g., Taal Volcano disruption history); flooding (urban Metro Manila and other urban centers); and combined events (typhoon-triggered flooding, seismic-triggered tsunami concerns for coastal facilities). This policy addresses these region-specific environmental risks alongside generic physical security threats.

Beyond ISO 27001 Annex A.7 closure, this policy fulfills BSP supervisory expectations for banking premises security under BSP Circular 1140 and physical aspects of cybersecurity under BSP Circular 1048, RA 8791 General Banking Law expectations for banking premises operations, RA 10173 Section 25 physical safeguards for personal data, PCI DSS v4.0 Requirement 9 for restricting physical access to cardholder data, Bureau of Fire Protection Code requirements, National Building Code of the Philippines, and Occupational Safety and Health Standards applicable to BFS facilities.

The specific objectives of this policy are to:

Establish the BFS facility classification scheme (Tier 1 through Tier 4) calibrated to facility sensitivity and supporting operational criticality;

Mandate physical security perimeters, entry controls, and surveillance appropriate to each facility tier;

Specify equipment siting, protection, and disposal requirements ensuring physical security throughout asset lifecycle;

Address environmental threats specific to the Philippine context — seismic, meteorological, volcanic, flood, and combined events;

Establish supporting utilities reliability — power, cooling, communications — at levels appropriate to facility criticality;

Govern personnel access — employees, contractors, visitors, vendors — with structured authorization and tracking;

Operationalize ATM network physical security including anti-skimming, anti-vandalism, and attack-resistance requirements;

Address third-party facilities under BFS contractual control with appropriate verification mechanisms;

Provide audit-friendly documentation supporting ISO 27001 certification of A.7 controls, BSP examinations, NPC compliance verification, and PCI QSA assessments;

Operationalize all 14 ISO/IEC 27001:2022 Annex A.7 controls (A.7.1 through A.7.14) — closing the entire physical theme in a single policy.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

For the purposes of this document, the following definitions apply. ISO 27002:2022 terminology is controlling where conflict exists with general usage.

| Term | Definition |

| --- | --- |

| Physical Security Perimeter | Defined boundary protecting an area containing BFS information assets, with controlled entry points and physical barriers preventing unauthorized access. Multiple concentric perimeters are common — facility perimeter, internal zone perimeters, and asset-specific perimeters. |

| Secure Area | Area within BFS facilities subject to enhanced physical security — typically including data centers, payment operations rooms, treasury operations, vault, executive boardroom, server rooms, and dedicated specialized facilities. |

| Physical Access Control | Mechanisms controlling personnel entry to BFS facilities and secure areas — including access cards, biometrics, security personnel, mantrap arrangements, and visitor management. Distinct from logical access control (BFS-ISP-005, BFS-ISP-006) though often integrated. |

| Mantrap / Airlock | Physical access control arrangement requiring entry through one door before the next can be opened — preventing tailgating and creating choke point for individual identification and authorization. |

| Tailgating | Unauthorized entry through a secure access point by following an authorized person who is opening the access point. A primary vector for physical access security failure. |

| Surveillance | Continuous or scheduled observation of BFS facilities through CCTV, security personnel patrols, sensors, and electronic monitoring systems. |

| Environmental Threat | Threat to BFS facilities and equipment originating from environmental factors — fire, flood, seismic activity, meteorological events, temperature, humidity, dust, electromagnetic interference, and similar conditions. |

| Supporting Utility | Services supporting BFS facility operations — electrical power, water, climate control, communications, lighting, fire suppression. Failure of supporting utilities can cause facility availability failure. |

| UPS (Uninterruptible Power Supply) | Battery-backed power system providing continuous power during utility power outages. Calibrated to either bridge to generator backup or provide sufficient runtime for orderly shutdown. |

| Generator Backup | On-site electrical generation (typically diesel-fueled) providing power during extended utility outages. Sized to support critical facility loads. |

| Equipment Siting | Physical positioning of equipment within BFS facilities considering security, environmental protection, and operational accessibility factors. |

| Cabling Security | Protection of network and power cabling from interception, damage, and interference — including structured cabling pathways, separation of power and data, monitoring of physical layer integrity. |

| Storage Media | Physical media containing information — including hard drives, solid-state drives, removable storage devices, backup tapes, optical media, paper documents, and any other physical form of information storage. |

| Visitor | Person at BFS facility who is not a BFS employee, contractor, or vendor with regular access — typically including business visitors, customers visiting non-customer-facing areas, regulators, auditors, and similar parties. |

| Cleaning Personnel | Staff (typically third-party service provider personnel) performing janitorial and maintenance functions within BFS facilities, often during off-hours when other personnel are absent. |

| Secure Disposal | Physical destruction or sanitization of equipment and storage media containing or potentially containing BFS information at end of useful life — preventing data recovery from disposed assets. |

| Tampering | Unauthorized physical interference with BFS equipment intended to compromise its operation, intercept information, or facilitate subsequent compromise. Examples: ATM skimming devices; unauthorized cabling additions; unauthorized hardware installation. |

| Anti-Skimming | Technical and procedural measures preventing or detecting attachment of card-reading or PIN-capture devices to ATMs, point-of-sale terminals, or card-reading equipment. |

## 2.2  Scope

### 2.2.1  In-Scope Facilities and Assets

BFS Head Office facilities including all floors, executive offices, operational areas, server rooms, document storage, and supporting spaces;

BFS Data Centers (primary and disaster recovery) hosting core banking platforms, payment systems, customer databases, and supporting infrastructure;

BFS Branch Network including all branch locations regardless of size, format, or location;

BFS ATM Network including ATMs in branch locations, off-branch BFS-controlled locations, and partner-hosted locations under BFS contractual security expectations;

BFS-controlled training, archive, and auxiliary facilities;

Off-site BFS-managed equipment — including delivery and pickup logistics for equipment in transit between facilities, equipment at vendor service locations under BFS contractual control;

Supporting infrastructure — electrical, communications, climate control, fire suppression, security systems supporting any in-scope facility.

### 2.2.2  Out-of-Scope Items

Customer premises — BFS does not control physical security of customer locations. Customer responsibility for protecting BFS-issued cards, devices, and credentials addressed through customer awareness;

Personal devices (BYOD) used for BFS purposes outside BFS premises — addressed by BFS-ISP-022 forthcoming Remote Working Policy;

Public infrastructure — power utility, telecommunications utility, water utility — beyond BFS contractual relationship; failure of public infrastructure addressed through redundancy and BCM rather than direct BFS control;

Personnel residences — including BFS executives' residences except where specific arrangements (executive secure transport, residence security) exist for specifically identified threat profiles;

Vendor facilities not under BFS contractual physical security control — addressed by BFS-ISP-015 (Service Provider Management) where vendors process BFS information;

General BFS business facilities physical security not affecting information security — e.g., generic landlord-managed lobby areas where no BFS information assets are located.

## 2.3  ISO 27001:2022 Annex A.7 Coverage

This single policy operationalizes all 14 ISO 27001:2022 Annex A.7 controls. Coverage mapping:

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.7.1 | Physical security perimeters | §3 (Facility Tiers and Perimeters); §5.1 (Perimeter Policy Statements) |

| A.7.2 | Physical entry | §4 (Access Control); §5.2 (Entry Control Policy Statements) |

| A.7.3 | Securing offices, rooms and facilities | §5.3 (Secure Areas Policy Statements) |

| A.7.4 | Physical security monitoring | §5.4 (Surveillance and Monitoring Policy Statements) |

| A.7.5 | Protecting against physical and environmental threats | §6 (Environmental Protection); §5.5 (Environmental Policy Statements) |

| A.7.6 | Working in secure areas | §5.6 (Secure Area Operations Policy Statements) |

| A.7.7 | Clear desk and clear screen | §5.7 (Clear Desk/Clear Screen Policy Statements) |

| A.7.8 | Equipment siting and protection | §7 (Equipment Lifecycle); §5.8 (Equipment Siting Policy Statements) |

| A.7.9 | Security of assets off-premises | §5.9 (Off-Premises Assets Policy Statements) |

| A.7.10 | Storage media | §5.10 (Storage Media Policy Statements) |

| A.7.11 | Supporting utilities | §6 (Environmental Protection); §5.11 (Supporting Utilities Policy Statements) |

| A.7.12 | Cabling security | §5.12 (Cabling Security Policy Statements) |

| A.7.13 | Equipment maintenance | §7 (Equipment Lifecycle); §5.13 (Maintenance Policy Statements) |

| A.7.14 | Secure disposal or re-use of equipment | §7 (Equipment Lifecycle); §5.14 (Disposal Policy Statements) |

# 3.  FACILITY TIER CLASSIFICATION AND PERIMETERS

This section establishes the BFS facility tier classification scheme and the physical security perimeter structure applied to each tier. Tier classification calibrates physical security investment to facility sensitivity and operational criticality — applying maximum protection where loss consequence is greatest while ensuring proportionate protection across the BFS facility footprint.

## 3.1  Facility Tier Classification

BFS facilities are classified into four tiers based on their information security sensitivity and operational criticality. Tier classification drives physical security perimeter requirements, access control rigor, surveillance intensity, environmental protection, and supporting utility redundancy.

| Tier | Examples | Sensitivity Profile | Compromise Consequence |

| --- | --- | --- | --- |

| TIER 1 | Primary Data Center; DR Data Center; Vault | Highest sensitivity — failure or compromise threatens BFS continued operation; contains critical infrastructure and most sensitive information | Existential — sustained service outage; material customer impact; significant regulatory enforcement; potential institutional viability concerns |

| TIER 2 | Head Office Floors; Payment Operations; Treasury Operations; Executive Offices; Server Rooms | High sensitivity — significant operations and information; failure or compromise has material impact | Material — significant service disruption; substantial customer impact; regulatory findings; reputation damage |

| TIER 3 | Branches; Larger ATM Locations; Training Centers | Moderate sensitivity — customer-facing operations; important but not unique; multiple comparable instances | Moderate — local service disruption; specific customer impact; manageable regulatory implications; localized reputation impact |

| TIER 4 | Off-Site ATMs; Auxiliary Storage; Limited-Function Facilities | Lower sensitivity — limited operations or information; specific failures have contained impact | Limited — localized impact; specific customer service issues; regulatory implications proportionate to incident scope |

Specific facility classifications are documented in the BFS Facility Register maintained by Corporate Security with quarterly updates reflecting facility changes. The Facility Register integrates with the BFS Asset Inventory (BFS-ISP-001) ensuring consistency between facility classification and physical asset classification within those facilities.

## 3.2  Physical Security Perimeter Architecture

BFS facilities employ layered physical security perimeters — concentric perimeters with progressively stronger controls as one moves toward the most sensitive areas. This defense-in-depth approach ensures that physical perimeter failure at one layer does not result in compromise of the most sensitive assets.

| Perimeter Layer | Definition | Typical Controls |

| --- | --- | --- |

| Outer Perimeter | Property boundary or building envelope — first line of physical defense | Walls, fences, vehicular barriers; perimeter lighting; CCTV coverage; perimeter intrusion detection; controlled vehicular and pedestrian gates |

| Building Entry | Building main entrance and any other authorized building entry points | Reception/security personnel during operating hours; access card control; visitor registration; CCTV coverage; mantrap or airlock for higher-tier facilities |

| Floor / Zone Perimeter | Boundary between building common areas and restricted floors or zones | Access card control; CCTV coverage; alarm on unauthorized access attempts; segregation between general business areas and secure operations |

| Secure Area Perimeter | Boundary of specifically secured areas — server rooms, data centers, vault, treasury operations | Two-factor authentication (card + biometric); mantrap; dedicated CCTV; intrusion detection; restricted personnel list with explicit authorization |

| Asset-Specific Perimeter | Innermost perimeter protecting specific high-value assets | Locked equipment racks; safe; vault structures; tamper-evident seals; specialized access for specific equipment categories |

## 3.3  Tier-Specific Perimeter Requirements

Each tier has specific requirements for the layered perimeter architecture. The matrix below specifies minimum requirements per tier; specific facilities may exceed these based on local risk assessment.

| Perimeter Element | TIER 1 | TIER 2 | TIER 3 | TIER 4 |

| --- | --- | --- | --- | --- |

| Outer Perimeter | Hardened physical perimeter; vehicle barriers; 24/7 personnel | Standard physical perimeter; building security | Building security per branch standards | Equipment-housing-level perimeter (kiosk/cabinet) |

| Building Entry / Main Access | Mantrap; biometric + card; 24/7 personnel | Mantrap or controlled entry; card + visitor mgmt | Receptionist + card during hours; alarm system off-hours | Equipment access door; tamper detection |

| Floor/Zone Perimeter | Multiple zoned access; biometric + card | Card + biometric for sensitive zones | Card access where applicable | N/A (single-zone equipment) |

| Secure Area Perimeter | Two-factor + dedicated CCTV + intrusion detection | Two-factor + CCTV (sensitive areas only) | Card access (secure storage if any) | Tamper-evident seals on critical components |

| Operating Hours | 24/7 | Extended hours + secure off-hours | Branch hours + secure off-hours | Operational availability with monitoring |

| Surveillance | Continuous CCTV with retention; intrusion detection; security operations monitoring | CCTV with retention; alarm systems | CCTV with retention | Anti-tamper monitoring; network-connected status |

| Surveillance Retention | ≥ 90 days | ≥ 60 days | ≥ 30 days (or per regulatory minimum) | ≥ 30 days for ATM transactional surveillance |

| PERIMETER INTEGRITY:  Physical perimeters are only as strong as their weakest point. A hardened front entrance is not effective if a service entrance has weaker controls; a robust building perimeter is not effective if internal floor segregation is absent. Periodic physical security assessment (per Section 9 KPIs) verifies perimeter integrity end-to-end — including assessment of bypassing approaches that would not be obvious from individual perimeter element examination. |

| --- |

# 4.  PERSONNEL ACCESS CONTROL

This section establishes how personnel — employees, contractors, vendors, visitors, cleaning staff — gain authorized physical access to BFS facilities. Personnel access control is the primary defense against unauthorized human presence within BFS facilities; effective access control prevents attackers from reaching sensitive areas where logical controls may not be sufficient defense.

## 4.1  Personnel Access Categories

| Category | Definition | Access Provisioning |

| --- | --- | --- |

| Permanent Employee | BFS direct-hire employee with regular access need | Access card issued at onboarding per role-based facility access matrix; HR-CISO Office reconciliation; quarterly review |

| Contractor / Long-Term | Engaged contractor with regular access need typically extending 30+ days | Access card issued with explicit authorization; access matrix calibrated to specific role; expires on contract end date |

| Vendor / Maintenance | Vendor personnel with periodic access for maintenance, deliveries, or specific service activities | Visitor pass issued per visit OR scheduled-access card for high-frequency vendors with explicit authorization; escort required for sensitive areas |

| Cleaning Personnel | Janitorial/cleaning staff (typically third-party service provider) | Specific access cards with limited zones and time periods; supervised access for sensitive areas; background check requirement; identified personnel list maintained |

| Visitor | Person at BFS facility for a specific purpose (business meeting, customer service, regulator, auditor) | Visitor registration on arrival; identification verification; visitor pass; host accountability; escort requirement for non-public areas |

| Regulatory / Audit | Regulators (BSP, NPC, others) and external auditors with examination or audit-related access | Specific protocol per regulatory or audit engagement; identification verification; access calibrated to engagement scope; documentation retained |

| Emergency Responders | Police, fire, medical, BFP responding to incidents at BFS facilities | Standard emergency response protocols; identification verification when situation permits; documented post-incident |

## 4.2  Access Card Management

Physical access cards are the primary authentication credential for BFS facility access. Card management discipline directly determines physical access security effectiveness:

Card Issuance: Cards issued only on documented authorization with photo identification; card encoded with role-based access matrix specifying authorized zones and time periods;

Card Activation: Cards activated only on verified personnel arrival; not pre-activated for future personnel;

Access Matrix Review: Quarterly review of every cardholder's access matrix verifying continued appropriateness — analogous to logical access review per BFS-ISP-005 §5.5;

Card Revocation: Immediate card revocation on termination, role change requiring different access, or identified misuse. HR system integration enables automated revocation on personnel record changes;

Lost / Stolen Cards: Reported immediately to Corporate Security; affected card de-activated within 1 hour; replacement card issued with new credential; investigation if pattern of losses suggests organizational issue;

Card Sharing Prohibited: Cards are personal credentials and shall not be shared. Card sharing is treated as policy violation per BFS-ISMS-001 §11 disciplinary framework;

Tailgating Prevention: Cardholders are responsible for not allowing unauthorized persons to follow them through access-controlled entries; cardholders observed permitting tailgating receive coaching escalating to disciplinary action for repeated incidents;

Audit Logging: All access card events (entry, exit, denied entry attempts) logged centrally per BFS-ISP-008; logs retained for incident investigation and access reviews.

## 4.3  Visitor Management

Visitors are non-BFS personnel granted temporary BFS facility access. Visitor management ensures that visitor presence is documented, authorized, supervised, and limited in scope:

### 4.3.1  Visitor Registration

Pre-Registration: Visitors are pre-registered by their host BFS personnel before arrival when feasible — allowing security personnel to anticipate and verify visit purpose;

Identification Verification: Government-issued photo identification verified on arrival; identification details recorded;

Visitor Badge: Visible visitor badge issued; badge color/design distinguishes visitors from BFS personnel; badge expires at end of visit;

Host Notification: Host BFS personnel notified of visitor arrival; host responsible for visitor while in facility;

Visitor Log: Visit details recorded — name, organization, purpose, host, arrival time, departure time. Log retained per record retention requirements;

NDA/Confidentiality: For visitors with potential exposure to confidential information (auditors, vendors, regulators), confidentiality acknowledgment obtained per Legal Counsel templates;

Photography Restrictions: Visitor briefed on photography restrictions in BFS facilities; in sensitive areas, visitor devices may be required to be secured during visit;

Departure: Visitor formally signs out; visitor badge returned; departure time recorded.

### 4.3.2  Escort Requirements

Visitors do not have unsupervised facility access except in designated public-facing areas (reception, customer service for customer visitors). Escort requirements:

All visitors escorted in non-public BFS areas — including office floors, server rooms, secure operations areas;

Escort by host or designated alternate; escort chain documented if visitor is handed off between BFS personnel;

Escort responsible for visitor compliance with facility expectations — appropriate areas, photography restrictions, confidential information protection;

Visitors in TIER 1 facilities (data centers, vault) receive enhanced escort — typically dedicated escort personnel from Corporate Security or operational management rather than general business host;

Visitor activities documented for sensitive facility visits — purpose, areas accessed, work performed, evidence collected (auditors), equipment touched (technicians).

## 4.4  Cleaning and Janitorial Personnel

Cleaning personnel pose a specific access security challenge — typically third-party service provider personnel, often working off-hours, with broad facility access for cleaning purposes. Specific controls address this profile:

Background Verification: Cleaning service provider personnel subject to background verification per their service contract per BFS-ISP-015; verification commensurate with access scope;

Identified Personnel List: Cleaning service maintains current list of authorized personnel; personnel changes notified to BFS Corporate Security in advance;

Specific Access Cards: Cleaning personnel issued specific access cards with restricted zones; sensitive areas (data center, server rooms, executive offices) typically excluded from general cleaning access — cleaning of these areas performed by supervised arrangement;

Access Time Restrictions: Cleaning access limited to specific shifts (typically off-hours or before/after main business hours);

Supervised Access for Sensitive Areas: Cleaning of TIER 1/2 sensitive areas performed under BFS personnel supervision rather than independently;

Confidentiality Obligations: Cleaning personnel receive briefing on confidentiality expectations; cleaning service contracts include explicit confidentiality clauses;

Equipment and Document Protection: Cleaning protocols specify that equipment displays are not photographed, documents on desks are not read, and trash is collected without examination of contents;

Reporting Obligations: Cleaning personnel briefed on reporting suspicious findings — propped-open doors, unauthorized equipment, evidence of intrusion, abandoned personal items in sensitive areas.

## 4.5  Vendor and Maintenance Personnel

Vendor and maintenance personnel access is calibrated to engagement scope and frequency:

Scheduled Maintenance: Pre-arranged maintenance visits (e.g., HVAC service, network equipment maintenance) scheduled in advance; technician identification verified; work scope documented; supervision per facility tier and area sensitivity;

Emergency Maintenance: Out-of-hours emergency calls follow expedited but documented process — verification with vendor company; identification on arrival; supervision proportionate to urgency and area sensitivity;

Hardware Vendors: Equipment installation, replacement, or service performed by hardware vendor personnel under specific authorization; sensitive equipment (network, security, critical servers) maintenance supervised by BFS technical personnel;

Construction / Facilities Work: Construction or facilities work in BFS premises follows specific procedures — pre-engagement approval, work scope documentation, area cordoning, end-of-work cleanup verification, sensitive area exclusion or supervision;

Long-Term Vendor Personnel: Long-term embedded vendor personnel (e.g., managed service personnel) treated as contractors per Section 4.1 with appropriate access cards and access matrices.

## 4.6  Emergency Responders

Emergency responders may require expedited facility access during incidents. Standard protocols:

Police, fire, medical, BFP, or other emergency responders responding to incidents at BFS facilities receive immediate access for response purposes;

Identification verification when situation permits — typically through visible insignia, vehicles, and identification cards;

Access logged post-incident — date, responding agency, response purpose, areas accessed, BFS personnel involved;

BFS personnel cooperate with response while protecting sensitive information — for example, providing facility tour to fire response without exposing customer information areas unless directly relevant;

Post-incident review of emergency response includes assessment of whether emergency access controls operated appropriately and identifies any process improvements;

Drill exercises with emergency responders — typically annual fire drill — verify emergency response protocols and identify improvements before actual emergency.

# 5.  POLICY STATEMENTS

This section contains the policy statements operationalizing all 14 ISO 27001:2022 Annex A.7 controls. Each subsection addresses a specific control with explicit policy statements (PS) that BFS personnel and external parties must comply with.

## 5.1  Physical Security Perimeters (A.7.1)

PS-1.1  All BFS facilities shall have defined physical security perimeters per the layered architecture in Section 3.2 calibrated to facility tier per Section 3.3. Perimeter requirements shall be documented in facility-specific security plans maintained by Corporate Security.

PS-1.2  Perimeter integrity shall be inspected at minimum quarterly for TIER 1 facilities, semi-annually for TIER 2, and annually for TIER 3/4 — verifying that physical barriers, access points, surveillance coverage, and intrusion detection remain operationally effective.

PS-1.3  Identified perimeter weaknesses (e.g., damaged fencing, malfunctioning cameras, blocked sight lines, propped-open doors) shall be remediated within timelines calibrated to severity — CRITICAL weaknesses within 24 hours; HIGH within 7 days; MEDIUM within 30 days.

PS-1.4  Construction or modification of BFS facilities shall include physical security perimeter requirements at design stage; security review is required before construction commencement and before facility operational acceptance.

PS-1.5  Vendor and contractor personnel performing construction or facilities work shall not compromise perimeter integrity during work — work zones shall be appropriately segregated; perimeter restoration shall be verified at work completion.

## 5.2  Physical Entry Controls (A.7.2)

PS-2.1  All BFS facility entries shall be controlled per the personnel access control framework in Section 4. Unauthorized entry shall be prevented through physical barriers, access control technology, security personnel, and surveillance monitoring.

PS-2.2  Access cards or other primary access credentials shall not be shared. Card sharing constitutes a policy violation per BFS-ISMS-001 §11 disciplinary framework.

PS-2.3  Tailgating prevention is mandatory at all access-controlled entries. Cardholders shall not allow unauthorized persons to follow them through controlled access points; observed tailgating shall be reported to Corporate Security.

PS-2.4  Visitor access shall comply with the visitor management procedures in Section 4.3 including registration, identification verification, badge issuance, escort, and departure recording. Unrecorded visitor access is prohibited.

PS-2.5  Mantraps shall be operational at TIER 1 facility entries and at all data center secure area entries. Mantrap defeat (e.g., simultaneous opening of both doors) shall trigger alarm and security response.

PS-2.6  Access denied attempts shall be logged centrally and monitored for patterns indicating attempted unauthorized access — repeated denied attempts at the same location, denied attempts following recent termination, or denied attempts during off-hours shall be investigated.

## 5.3  Securing Offices, Rooms, and Facilities (A.7.3)

PS-3.1  Specific BFS rooms and facilities housing sensitive operations shall be designated Secure Areas with enhanced physical security per facility tier. Secure Area designations shall be documented in the BFS Facility Register.

PS-3.2  Secure Areas shall have access restricted to specifically authorized personnel listed in the Secure Area Access Roster maintained by Corporate Security. Roster reviewed monthly.

PS-3.3  Secure Area boundaries shall be physically delineated and not co-located with general business operations — for example, server rooms shall not be located in spaces shared with general office workspace.

PS-3.4  Signage indicating Secure Area boundaries and access restrictions shall be posted at appropriate locations — typically on entry doors and within general business areas approaching Secure Area boundaries.

PS-3.5  Photography and recording within Secure Areas is prohibited unless specifically authorized — for example, vendor maintenance documentation requiring photography requires advance approval and documented work scope.

## 5.4  Physical Security Monitoring (A.7.4)

PS-4.1  CCTV coverage shall be deployed at all BFS facilities per the tier-specific requirements in Section 3.3. CCTV footage shall be retained per regulatory minimums and Section 3.3 standards.

PS-4.2  Intrusion detection systems shall be deployed at all TIER 1 and TIER 2 facilities; intrusion detection alarms shall trigger 24/7 security response — either internal Corporate Security or contracted security service provider response.

PS-4.3  Surveillance system effectiveness shall be verified periodically — including verification of camera coverage of intended areas, recording quality, retention compliance, and alarm system operational status. Verification per facility tier — TIER 1 monthly; TIER 2 quarterly; TIER 3/4 semi-annually.

PS-4.4  Surveillance footage may be reviewed for security investigations, incident response, audit support, and routine quality verification. Privacy-respecting protocols shall apply — footage of customer transactions and personnel personal moments shall be handled per RA 10173 expectations.

PS-4.5  Surveillance system operational status shall be monitored continuously — failures (camera offline, recording gaps, alarm system fault) shall trigger maintenance dispatch within timelines calibrated to facility tier — TIER 1 within 4 hours; TIER 2 within 24 hours; TIER 3/4 within 72 hours.

PS-4.6  Surveillance system access shall be controlled — viewing of live or recorded surveillance footage shall be limited to authorized personnel for legitimate purposes with logged access.

## 5.5  Protecting Against Physical and Environmental Threats (A.7.5)

PS-5.1  BFS facilities shall be protected against environmental threats appropriate to the Philippine geographic risk profile per Section 6 — including seismic, meteorological, volcanic, flood, and combined event threats.

PS-5.2  Fire detection and suppression shall comply with Bureau of Fire Protection Code requirements; data centers and other equipment-intensive Secure Areas shall employ appropriate fire suppression systems calibrated to equipment type (clean agent for electronic equipment areas to prevent water damage).

PS-5.3  Flood risk shall be addressed through facility siting (above flood-prone elevations where feasible), structural water resistance for critical areas, sump and drainage systems for below-grade facilities, and emergency response procedures for flood events.

PS-5.4  Seismic risk shall be addressed through structural building design meeting Philippine seismic building code, equipment securing (anchored racks, securing of falling-hazard items), and post-seismic event inspection protocols.

PS-5.5  Typhoon and severe weather risk shall be addressed through wind-resistant building design, emergency facility securing (window protection where appropriate), pre-event facility securing protocols, and post-event facility assessment.

PS-5.6  Volcanic activity risk (specifically affecting facilities within volcanic ash range) shall be addressed through air filtration capabilities, equipment protection from ash infiltration, and emergency response protocols including potential temporary facility closure.

## 5.6  Working in Secure Areas (A.7.6)

PS-6.1  Personnel working in Secure Areas shall comply with specific working procedures including access logging, supervision requirements (where applicable), prohibition on unauthorized devices (cameras, recording devices, USB drives in data centers), and confidentiality expectations.

PS-6.2  Devices brought into Secure Areas shall be limited to those required for the work being performed. Personal mobile phones may be permitted but with photography prohibition; USB storage devices prohibited in data centers without explicit authorization for specific maintenance purposes.

PS-6.3  Lone working in Secure Areas shall be discouraged; TIER 1 Secure Area work shall typically involve at least two personnel for safety and security accountability — recognizing that exceptional circumstances may require lone work with documented authorization.

PS-6.4  Activities within Secure Areas shall be documented when consequential — equipment changes, configuration work, vendor maintenance, audit examination. Activity logs support post-event reconstruction if subsequent issues arise.

PS-6.5  No-work periods (e.g., during specific operational windows requiring uninterrupted system operation) shall be respected — entry to Secure Areas during no-work periods requires explicit authorization.

## 5.7  Clear Desk and Clear Screen (A.7.7)

PS-7.1  BFS personnel shall maintain clear desks during off-hours and when away from workstations for extended periods. Confidential and Restricted documents shall be secured (locked drawer, secured workspace) when not actively in use.

PS-7.2  Workstation screens shall be locked when personnel are away from workstations. Automated screen lock shall activate after a maximum of 10 minutes of inactivity per BFS-ISP-005.

PS-7.3  Confidential information shall not be visible to passers-by, casual observers, or visitors. Workstation orientation shall avoid screen visibility from public areas; document handling in customer-facing areas shall be controlled to prevent customer view of other customer information.

PS-7.4  Printed materials shall be retrieved promptly from printers; confidential printing shall use secure print release (printing only released when authorized user authenticates at the printer); abandoned print materials shall be collected and securely disposed of.

PS-7.5  Whiteboards and physical document boards displaying sensitive information shall be erased or covered when not in use; meeting room cleanup shall include removing displayed sensitive information at meeting end.

## 5.8  Equipment Siting and Protection (A.7.8)

PS-8.1  BFS equipment shall be sited considering security, environmental protection, and operational accessibility factors. Sensitive equipment shall be sited within Secure Areas appropriate to its sensitivity per the BFS-ISP-001 Asset Inventory tier.

PS-8.2  ATMs shall be sited considering vandalism resistance, attack resistance, customer safety, and surveillance coverage. Specific ATM siting standards apply per ATM Operations specifications including bollard installation where vehicle-borne attacks are credible threat.

PS-8.3  Equipment displays shall be positioned to prevent unauthorized observation — avoiding window-side positioning, public-area visibility, or shoulder-surfing exposure for sensitive operations.

PS-8.4  Equipment positioning shall protect against environmental damage — minimum elevation above flood-prone surfaces; protection from water sources (overhead piping, sprinklers in non-clean-agent areas); protection from physical interference (cleaning fluids, food and beverage); protection from theft (secured to building structure where appropriate).

PS-8.5  Public-area equipment (ATMs, customer kiosks, publicly accessible POS) shall employ tamper-evident features and tamper detection — alerting BFS to attempts to attach skimming devices, modify equipment, or access internal components.

## 5.9  Security of Assets Off-Premises (A.7.9)

PS-9.1  BFS assets used outside BFS premises shall be protected through device security controls, encryption, remote management, and acceptable use requirements per BFS-ISP-022 forthcoming Remote Working Policy.

PS-9.2  Laptops and portable devices issued to personnel shall employ full disk encryption; remote wipe capability; device tracking; mandatory device return on personnel termination or role change requiring different equipment.

PS-9.3  Equipment temporarily off-premises for vendor service shall be subject to chain-of-custody documentation; equipment containing sensitive information shall have data sanitized before vendor service or vendor service shall occur under BFS supervision.

PS-9.4  Equipment in transit between BFS facilities shall be protected through appropriate transport arrangements — secure courier for high-value or high-sensitivity equipment; documented chain of custody; tamper-evident packaging where appropriate.

PS-9.5  Off-premises equipment loss or theft shall be reported immediately to Corporate Security and CISO Office; remote wipe initiated for capable devices; investigation initiated; affected information assessed for breach notification implications.

## 5.10  Storage Media (A.7.10)

PS-10.1  Storage media (hard drives, SSDs, removable storage, backup tapes, optical media) containing BFS information shall be handled per the classification of the contained information per BFS-ISP-003.

PS-10.2  Removable storage media use shall be controlled — USB drives, external hard drives, and similar devices shall not be connected to BFS systems without explicit authorization; use in TIER 1 facilities (data centers) prohibited except under specific authorized procedures.

PS-10.3  Storage media transport between facilities shall employ secure transport — encryption of data on transported media; physical security of media during transport; chain of custody documentation.

PS-10.4  Backup tapes and offsite media shall be protected at the offsite facility per BFS-ISP-011 (Data Recovery) — including physical security, environmental protection, access controls, and retrieval verification.

PS-10.5  Storage media at end of useful life shall be sanitized or destroyed per Section 5.14 (Disposal Policy Statements) calibrated to media classification — preventing data recovery from disposed media.

## 5.11  Supporting Utilities (A.7.11)

PS-11.1  BFS facilities shall have supporting utilities — electrical power, climate control, communications — available at reliability levels appropriate to facility tier per Section 6.3.

PS-11.2  TIER 1 facilities (data centers) shall have redundant electrical power feeds (typically dual utility feeds), UPS coverage with battery runtime sufficient for orderly shutdown or generator transfer, and on-site generator backup with fuel supply for 72 hours minimum runtime.

PS-11.3  TIER 2 facilities shall have UPS coverage for critical equipment; generator backup may be provided based on facility-specific BCM analysis.

PS-11.4  Climate control (HVAC) shall maintain operational ranges appropriate to equipment specifications — temperature and humidity within manufacturer specifications for data center equipment; redundant cooling for TIER 1 facilities.

PS-11.5  Supporting utility failures shall trigger automated alerts to facilities management and operations teams; failure response calibrated to facility tier and severity.

PS-11.6  Supporting utility maintenance (UPS battery testing, generator runs, HVAC maintenance) shall be performed on documented schedules; maintenance records retained supporting utility reliability verification.

## 5.12  Cabling Security (A.7.12)

PS-12.1  Network and power cabling shall be protected from interception, damage, and interference through structured cabling pathways, dedicated routes for power and data separation, and physical access controls to cabling pathways.

PS-12.2  Cabling within publicly accessible areas (under raised floors, in dropped ceilings of public spaces, in cable trays in shared utility spaces) shall be physically protected — conduit, secured cable trays, or otherwise restricted access.

PS-12.3  Critical cabling (data center backbone, external WAN connectivity, payment system connectivity) shall employ redundant paths where feasible — alternate physical routes preventing single points of cable failure.

PS-12.4  Cabling shall be labeled identifying purpose and connectivity — supporting maintenance and troubleshooting while not exposing security-sensitive information through publicly visible labels.

PS-12.5  Unused network ports and cable connections shall be disabled or physically secured to prevent unauthorized network access through abandoned connections.

## 5.13  Equipment Maintenance (A.7.13)

PS-13.1  Equipment maintenance shall be performed by authorized personnel — internal IT/Facilities staff or specifically authorized vendor maintenance personnel per Section 4.5.

PS-13.2  Equipment leaving BFS premises for vendor service shall have data sanitized before transport where feasible; equipment containing sensitive data that cannot be sanitized shall be serviced under BFS supervision or with vendor security verification.

PS-13.3  Maintenance work in Secure Areas shall be supervised per Section 5.6 working procedures — vendor work in TIER 1 Secure Areas shall be supervised by BFS technical personnel.

PS-13.4  Maintenance records shall be maintained — equipment serviced, work performed, personnel involved, parts replaced, work completion verification. Records support equipment lifecycle management and provide evidence trail for audit and incident investigation.

PS-13.5  Returned equipment after vendor service shall be verified — confirming work performed, examining for unauthorized additions, and verifying operational status before return to production use.

## 5.14  Secure Disposal or Re-Use of Equipment (A.7.14)

PS-14.1  Equipment containing storage media shall be sanitized or destroyed before disposal or re-use, preventing data recovery from disposed assets. Sanitization standards calibrated to data classification per BFS-ISP-028 forthcoming Equipment Disposal Policy.

PS-14.2  Cryptographic erasure (where data was encrypted) or secure overwriting (DoD 5220.22-M or equivalent multi-pass overwrite) shall be applied to digital storage media at end of useful life.

PS-14.3  Physical destruction shall be applied to storage media that cannot be reliably sanitized through software methods — including failed drives, drives with bad sectors that cannot be overwritten, and media with high-classification data where defense-in-depth physical destruction provides additional assurance.

PS-14.4  Disposal performed by external service providers shall be subject to BFS-ISP-015 (Service Provider Management) controls including security obligations, audit rights, and documented disposal evidence.

PS-14.5  Certificate of Destruction shall be obtained for CONFIDENTIAL and RESTRICTED equipment disposed of by external service providers; certificate retained per BFS-ISMS-006 retention requirements.

PS-14.6  Equipment intended for re-use within BFS shall undergo sanitization before re-issuance — preventing residual information from prior user from being exposed to subsequent user.

PS-14.7  Disposal records shall be maintained — equipment disposed of, disposal date, sanitization or destruction method used, disposal personnel, certificate references where applicable. Records retained for 7 years supporting audit verification of disposal compliance.

# 6.  ENVIRONMENTAL PROTECTION

This section addresses physical environmental threats to BFS facilities and equipment. The Philippine geographic environment imposes specific environmental considerations that distinguish BFS's environmental protection requirements from peer institutions in less seismically and meteorologically active regions. This section establishes the BFS environmental protection framework calibrated to those region-specific considerations.

## 6.1  Philippine Environmental Risk Profile

BFS operates in an environment subject to multiple categories of environmental risk. Physical security planning addresses each category and the interaction effects when multiple events occur simultaneously.

| Threat Category | Philippine Profile | BFS Mitigation Approach |

| --- | --- | --- |

| Seismic Activity | Philippines on Pacific Ring of Fire; multiple active fault systems including the West Valley Fault traversing Metro Manila; periodic significant earthquakes (e.g., 7.2+ magnitude events) | Building structural design per Philippine seismic code; equipment securing (anchored racks, falling-hazard mitigation); post-event inspection protocols; backup data center geographic separation |

| Tropical Cyclones | 20+ tropical storms annually with several typhoon-strength making landfall; particularly active during June-November typhoon season | Wind-resistant building design; pre-event facility securing protocols (window protection, equipment securing); typhoon response procedures; communication continuity through alternate channels |

| Flooding | Urban Metro Manila flood-prone areas; rural flooding from typhoon rainfall; combined typhoon-flood events common | Facility siting above flood-prone elevations where feasible; structural water resistance; sump and drainage; below-grade equipment elevation; flood event response and recovery procedures |

| Volcanic Activity | Multiple active volcanoes including Taal, Mayon, Pinatubo; periodic eruption events with regional ash impact | Air filtration capability; equipment protection from ash infiltration; volcanic alert level monitoring; emergency response protocols including potential temporary closure |

| Tsunami (Coastal Facilities) | Coastal facilities subject to tsunami risk from regional seismic events | Coastal facility evaluation; evacuation protocols; equipment relocation procedures for high-risk facilities |

| Heat and Humidity | Tropical climate with high baseline temperature and humidity; equipment cooling demand higher than temperate climates | HVAC sizing for tropical climate loads; redundant cooling for critical facilities; humidity control particularly for equipment-sensitive areas |

| Power Reliability | Philippine grid reliability variable by region; brownouts and outages periodic; voltage variations possible | UPS coverage; generator backup; voltage regulation; redundant feeds where available |

| Combined Events | Compound events common — typhoon + flooding; seismic + structural damage requiring evacuation; multi-day events stressing recovery | Multi-event scenario planning in BCM; redundant capabilities; mutual aid arrangements; documented recovery procedures |

## 6.2  Fire Safety

Fire safety compliance addresses both regulatory requirements (Bureau of Fire Protection Code, National Building Code) and equipment-specific considerations:

Fire detection systems shall be deployed throughout BFS facilities meeting BFP Code requirements; detection includes smoke detection in occupied areas and aspirating smoke detection in data centers and equipment-intensive Secure Areas;

Fire suppression systems calibrated to area type — water sprinkler systems in office areas; clean agent systems (FM-200, NOVEC 1230, or equivalent) in data centers and electronic equipment areas to prevent water damage to operating equipment;

Fire response procedures documented and trained — evacuation routes, assembly points, accountability procedures, equipment shutdown where appropriate, coordination with BFP responders;

Annual fire drill exercises verify response procedures; drills include data center evacuation scenarios with equipment shutdown decisions;

Fire safety equipment (extinguishers, alarm systems, suppression systems) maintained per manufacturer specifications and BFP Code requirements; maintenance records retained;

Hot work permits required for any work involving flame, sparks, or heat sources within BFS facilities — minimizing fire risk from maintenance, construction, or equipment installation activities.

## 6.3  Supporting Utility Reliability

Supporting utility reliability requirements are calibrated to facility tier:

| Utility | TIER 1 | TIER 2 | TIER 3 | TIER 4 |

| --- | --- | --- | --- | --- |

| Electrical Power | Dual utility feeds; UPS for critical loads; on-site generator with 72hr fuel runtime | UPS for critical equipment; generator backup based on BCM analysis | Single utility feed; UPS for limited critical equipment | Single utility feed; UPS for ATM operations |

| UPS Battery Runtime | Sufficient for orderly shutdown OR generator transfer (typical 15+ minutes) | Sufficient for orderly shutdown of critical systems | Limited duration (5+ minutes) for transient outages | ATM-specific UPS for transaction completion |

| Climate Control | Redundant cooling (N+1 or 2N); temperature and humidity monitoring with alerts | Adequate cooling for equipment; monitoring with alerts | Standard HVAC; equipment-specific cooling where needed | Equipment-housing climate appropriate |

| Communications | Redundant providers; redundant physical paths; out-of-band capability | Primary + backup communications | Primary communications with backup option | Communications appropriate to ATM operations |

| Lighting | Emergency lighting throughout; backup lighting for critical areas | Emergency lighting per code; backup for sensitive areas | Standard emergency lighting per code | ATM-area lighting for safety and surveillance |

| Fire Suppression | Clean agent in data center; sprinkler in non-equipment areas | Sprinkler with equipment-specific clean agent where applicable | Sprinkler per code | ATM-housing fire safety per ATM specifications |

## 6.4  Environmental Monitoring

Environmental conditions in equipment-intensive Secure Areas shall be monitored continuously with alerts for out-of-range conditions:

Temperature monitoring with alerts at upper and lower thresholds calibrated to equipment specifications;

Humidity monitoring with alerts at upper and lower thresholds preventing condensation and static buildup;

Water detection in below-grade facilities and below raised floors; water alerts trigger immediate facilities response;

Air quality monitoring in facilities subject to ash, smoke, or chemical infiltration risks;

Power quality monitoring detecting voltage variations, frequency deviations, and other power quality issues that affect equipment operation;

Smoke and fire alarm integration with facility management for prompt response;

Monitoring data retained for trend analysis identifying gradually developing issues before they cause failures.

## 6.5  Pre-Event and Post-Event Procedures

Anticipated environmental events (typhoon approach, raised volcanic alert) trigger pre-event procedures; events that occur trigger post-event procedures:

### 6.5.1  Typhoon Pre-Event

PAGASA storm warnings monitored continuously during typhoon season; storm signal escalations trigger pre-event response;

Window protection installed for windows facing exposed wind directions where structurally appropriate;

Outdoor equipment, signage, and items secured or relocated;

Critical drainage and sump systems verified operational;

Generator fuel verified at full capacity;

Personnel safety messaging — work-from-home or facility closure decisions based on storm signal level;

Emergency contact lists and out-of-band communication channels verified.

### 6.5.2  Seismic Post-Event

After significant seismic event, BFS facilities undergo damage inspection by Facilities Management before re-occupancy;

Equipment status verification — physically secured, no displacement, operational status checks;

Structural assessment for facilities exposed to significant shaking;

Personnel accountability and safety verification before facility resumption;

Service restoration prioritized per BCM — TIER 1 first, then TIER 2, etc.

### 6.5.3  Volcanic Activity Response

Phivolcs alert level monitored for facilities within volcanic ash range;

Air filtration enhanced during ash events;

Outdoor equipment protection — covers, sealing where feasible;

Personnel safety guidance — respiratory protection, indoor work where outdoor work not essential;

Post-ash cleanup performed by appropriate equipment-safe methods (avoiding water introduction to electrical equipment).

### 6.5.4  Flood Response

Pre-event facility securing for facilities in flood-prone areas — equipment elevation, sandbag deployment, drainage verification;

During event response — power shutdown if water proximity threatens electrical safety; personnel evacuation if facility safety degrades;

Post-event recovery — water removal, drying, electrical inspection before re-energization, equipment damage assessment.

# 7.  EQUIPMENT LIFECYCLE PHYSICAL SECURITY

This section addresses physical security throughout the equipment lifecycle — from acquisition through deployment, operation, maintenance, and disposal. Equipment physical security is not a one-time concern at deployment; it requires ongoing attention through the lifecycle to prevent compromise.

## 7.1  Acquisition and Receiving

Equipment acquired from authorized vendors per BFS-ISP-015 (Service Provider Management) — including supply chain security expectations preventing tampered equipment from entering BFS;

Equipment receiving inspected for tampering evidence — packaging integrity, tamper-evident seals, signs of physical interference between vendor and BFS receipt;

Critical equipment (network, security, payment systems) received in BFS-controlled receiving areas with security personnel oversight; not delivered to general loading docks unattended;

Receiving documentation retained — vendor, model, serial numbers, receipt date, condition, receiving personnel — supporting equipment lifecycle traceability;

Suspicious receiving findings (apparent tampering, mismatched serial numbers, unexpected modifications) trigger immediate quarantine and investigation before equipment introduction to BFS production environments.

## 7.2  Deployment and Installation

Equipment installation in production environments performed by authorized personnel — internal IT/Facilities staff or specifically authorized vendor personnel with supervision per facility tier;

Installation locations verified per equipment siting requirements per Section 5.8;

Equipment registration in BFS-ISP-001 Asset Inventory at deployment — supporting tracking through subsequent lifecycle stages;

Equipment operational acceptance verification — including security configuration verification per BFS-ISP-004 before production use;

Installation documentation retained — installation date, personnel involved, configuration applied, acceptance verification.

## 7.3  Operation and Periodic Inspection

Operational equipment subject to periodic physical inspection — verifying continued operational status, no unauthorized modifications, no tampering evidence;

Inspection frequency calibrated to equipment criticality and exposure — TIER 1 critical equipment inspected monthly; less critical equipment quarterly or per equipment-specific schedules;

ATM physical inspection particularly important — visual inspection for skimming devices, tampering, or modifications. ATM inspection frequency typically daily by branch personnel and weekly by ATM Operations;

Inspection findings documented; tampering evidence triggers immediate response per BFS-ISP-017 incident response procedures;

Tamper-evident features (seals, security stickers) replaced after authorized maintenance; presence and integrity verified during periodic inspection.

## 7.4  Maintenance

Maintenance procedures previously addressed in §5.13 are operationalized through:

Pre-maintenance authorization documenting work scope, personnel, expected duration, equipment affected;

Vendor maintenance personnel verified per Section 4.5 visitor/vendor procedures;

Sensitive equipment maintenance supervised per facility tier expectations;

Post-maintenance verification — work performed as authorized, no unauthorized additions, equipment operational status verified;

Maintenance records retained supporting equipment lifecycle and audit verification.

## 7.5  Decommissioning and Disposal

Equipment at end of useful life undergoes structured decommissioning and disposal per Section 5.14 policy statements and BFS-ISP-028 forthcoming Equipment Disposal Policy:

| Stage | Activities | Documentation |

| --- | --- | --- |

| Decommissioning Authorization | Equipment retirement decision; BFS-ISP-001 Asset Inventory marked for disposal; data classification of stored data identified | Decommissioning approval record; disposal authorization |

| Data Sanitization | Cryptographic erasure (encrypted data); secure overwrite (DoD 5220.22-M for non-encrypted data); physical destruction for media that cannot be reliably sanitized | Sanitization record with method, personnel, verification |

| Physical Destruction (where applicable) | Shredding, degaussing, or other destruction methods calibrated to media type and classification | Destruction record; Certificate of Destruction from external service provider |

| Disposal Routing | Reuse within BFS (after sanitization); donation/sale (if permitted by data sanitization completeness); recycling per environmental regulations; secure destruction | Disposal route documentation; destination party (if applicable) |

| Asset Inventory Update | BFS-ISP-001 Asset Inventory updated to reflect disposal; entry retained with disposal disposition | Inventory record updated |

| Records Retention | Disposal records retained for 7 years supporting audit verification | Records per BFS-ISMS-006 retention |

## 7.6  ATM-Specific Lifecycle Considerations

ATM physical security warrants specific attention given exposure to public access, attack risk, and customer impact:

ATM Acquisition: ATMs acquired from authorized vendors with supply chain integrity expectations; receiving inspected with attention to tampering evidence;

ATM Deployment: ATM siting per ATM Operations standards considering security, customer safety, accessibility, surveillance coverage; bollards or vehicle barriers where vehicle-borne attacks credible threat;

ATM Operations: Daily visual inspection for skimming devices, tampering, or modifications; surveillance coverage of ATM and approach areas; cash management procedures separate from this physical security policy;

ATM Maintenance: Vendor maintenance under documented procedures; tamper-evident features verified after maintenance; cash replenishment under specific dual-control procedures (referenced from this policy but operationalized in cash management policies);

ATM Decommissioning: ATM retirement involves data sanitization (cryptographic keys, transaction logs, configuration), physical removal, and secure disposal. Particular attention to PIN encryption keys and other security-sensitive ATM components.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Physical and Environmental Security Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy and material revisions. Receives reporting on physical security incidents and KPI status. Oversees physical security investment decisions for material capital projects (data center construction, branch security upgrades). Engages on material physical security concerns affecting customer or operational risk. |

| Chief Information Officer | Co-owner of this policy. Champions integration of physical and information security. Ensures IT operations support physical security technology infrastructure (access control systems, surveillance, monitoring). Approves IT-domain physical security investment. |

| Chief Information Security Officer | Co-owner of this policy with Head of Corporate Security. Operational accountability for physical-information security integration. Ensures physical security supports broader ISMS objectives. Coordinates physical security with logical security architecture. |

| Head of Corporate Security | Co-owner of this policy with CISO. Operational accountability for physical security operations across BFS facility footprint. Manages security personnel (BFS internal or contracted). Operates surveillance and monitoring infrastructure. Coordinates with law enforcement and emergency responders. |

| Head of Facilities Management | Operational accountability for facility infrastructure supporting physical security — building systems, supporting utilities, environmental systems, fire safety. Ensures facility maintenance preserves physical security effectiveness. |

| Chief Risk Officer | Integrates physical risk into enterprise risk management. Reviews physical risk assessments. Coordinates BCM aspects affected by physical events. |

| Chief Compliance Officer | Ensures physical security compliance with regulatory requirements (BSP, BFP, NPC, building codes). Coordinates regulatory examination of physical security. |

| Branch Managers | Operational accountability for physical security within their branches — including daily ATM inspection, branch entry control, customer-facing area security, after-hours security, incident reporting. Implement branch-specific physical security per facility tier expectations. |

| Data Center Operations | Operational accountability for data center physical security — entry control, supervision of vendor maintenance, environmental monitoring, equipment lifecycle within data centers. |

| IT Operations / Infrastructure Engineers | Equipment-specific physical security responsibilities — secure equipment installation, periodic inspection, maintenance supervision, decommissioning execution. |

| ATM Operations | Operational accountability for ATM physical security across the network — inspection programs, anti-skimming verification, vandalism response, ATM lifecycle physical security. |

| Corporate Security Personnel (Internal or Contracted) | Front-line operations — facility entry control, surveillance monitoring, incident response, visitor management, security patrols, after-hours security operations. |

| Cleaning Service Provider | Compliance with BFS physical security expectations — restricted area access, supervised access where required, confidentiality, reporting suspicious findings, personnel verification. |

| Vendors / Contractors | Compliance with BFS visitor and vendor procedures during BFS facility access. Maintenance work performed per documented procedures. Equipment installation per BFS authorization. |

| All BFS Personnel | Personal access card responsibility. Tailgating prevention. Visitor escort responsibilities when hosting visitors. Clear desk and clear screen compliance. Reporting suspicious physical security findings. Cooperation with security personnel. |

| Internal Audit | Independently audits physical security operations per BFS-ISMS-008. Verifies policy compliance through facility inspections, access record review, surveillance system testing, equipment lifecycle traceability. |

# 9.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Physical and environmental security effectiveness is measured through the following KPIs reviewed quarterly by the CISO Office and Head of Corporate Security and reported to the Information Security Steering Committee. KPIs feed into BFS-ISMS-005 operational objectives and BFS-ISMS-009 Management Review.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| TIER 1 facility perimeter inspections completed per schedule | 100% quarterly | Quarterly |

| TIER 2 facility perimeter inspections completed per schedule | 100% semi-annually | Semi-annually |

| TIER 3/4 facility perimeter inspections completed per schedule | 100% annually | Annually |

| CRITICAL perimeter weaknesses remediated within 24 hours | 100% | Per finding |

| HIGH perimeter weaknesses remediated within 7 days | ≥ 95% | Per finding |

| Access cards reconciled with HR active personnel | 100% quarterly | Quarterly |

| Lost/stolen access cards de-activated within 1 hour of report | 100% | Per incident |

| Tailgating incidents reported and investigated | Track and trend | Quarterly |

| Visitor registration completeness (all visitors recorded) | 100% | Continuous |

| CCTV operational availability across BFS facility footprint | ≥ 99% TIER 1; ≥ 98% TIER 2; ≥ 95% TIER 3/4 | Monthly |

| CCTV recording retention compliance per Section 3.3 standards | 100% | Quarterly |

| Surveillance system maintenance dispatched within tier-specific timelines | ≥ 95% | Per fault |

| Fire detection and suppression system maintenance per schedule | 100% | Annually |

| BFP fire safety inspection certification current | 100% facilities current | Annually |

| UPS battery testing per schedule | 100% | Quarterly |

| Generator runs (TIER 1 facilities) | Monthly per schedule | Monthly |

| Annual fire drill exercises completed | 100% facilities | Annually |

| Environmental monitoring alerts responded within calibrated timelines | 100% | Per alert |

| Pre-typhoon facility securing executed for storm signal events | 100% applicable facilities | Per storm event |

| Post-seismic event facility inspections completed before re-occupancy | 100% applicable facilities | Per significant seismic event |

| ATM daily physical inspections (branch ATMs) | ≥ 95% completed daily | Daily aggregated weekly |

| ATM tampering/skimming incidents detected and responded | Track and trend | Per incident |

| Equipment disposal Certificates of Destruction obtained for CONFIDENTIAL/RESTRICTED disposals | 100% | Per disposal |

| Cleaning service personnel verification current | 100% | Quarterly |

| Physical security incidents (unauthorized access, theft, tampering, environmental events affecting operations) | Track and trend | Quarterly |

| Internal Audit physical security findings remediated within targeted timelines | ≥ 90% | Per finding |

## 9.2  Internal Audit Verification

Internal Audit (per BFS-ISMS-008) verifies physical and environmental security through:

Facility inspections — sampling-based physical inspection of facilities verifying policy compliance;

Access record review — verifying access provisioning, periodic review, and revocation discipline;

Surveillance system testing — verifying camera coverage, recording quality, retention compliance;

Visitor management testing — examining visitor logs, escort discipline, identification verification;

Equipment lifecycle traceability — sampling equipment from inventory and verifying physical security throughout lifecycle;

Environmental monitoring verification — testing alert generation and response;

Disposal verification — examining disposal records and Certificates of Destruction.

## 9.3  External Verification

Physical and environmental security is examined through multiple external verification mechanisms:

ISO 27001 certification body audit examines all 14 A.7 controls during initial certification and surveillance audits;

BSP examinations include physical security review of regulated banking premises;

PCI QSA assessments include PCI DSS Requirement 9 cardholder data physical access controls;

BFP fire safety inspections verify fire safety compliance per Bureau of Fire Protection Code;

Insurance carrier site inspections may include physical security assessment as input to coverage and pricing;

Penetration testing per BFS-ISP-018 may include physical security testing components.

# 10.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Physical and Environmental Security Policy operationalizing all 14 ISO/IEC 27001:2022 Annex A.7 controls (A.7.1 through A.7.14). Single-policy closure of the entire physical theme — largest single Annex A gap closure in the BFS-ISMS-004 implementation roadmap. Establishes 4-tier facility classification (TIER 1 Data Center/Vault through TIER 4 Off-Site ATMs); 5-layer perimeter architecture (Outer / Building Entry / Floor-Zone / Secure Area / Asset-Specific); personnel access framework covering 7 categories (Permanent Employee, Contractor, Vendor, Cleaning, Visitor, Regulatory, Emergency Responder); environmental protection calibrated to Philippine geographic risk profile (seismic, typhoon, flood, volcanic, combined events); equipment lifecycle physical security from acquisition through disposal. Specifically addresses ATM network physical security with anti-skimming and tampering detection. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A.7 Controls Mapping

This appendix provides comprehensive mapping of all 14 ISO/IEC 27001:2022 Annex A.7 controls to specific provisions in this policy, providing direct evidence for ISO 27001 certification audit examination.

| Control | Title | How This Policy Operationalizes |

| --- | --- | --- |

| A.7.1 | Physical security perimeters | Section 3 (Facility Tier Classification and Perimeters); §3.2 (5-layer perimeter architecture); §3.3 (tier-specific requirements); §5.1 (Perimeter Policy Statements PS-1.1 through PS-1.5) |

| A.7.2 | Physical entry | Section 4 (Personnel Access Control); §4.2 (access card management); §4.3 (visitor management); §5.2 (Entry Control Policy Statements PS-2.1 through PS-2.6) |

| A.7.3 | Securing offices, rooms and facilities | §5.3 (Secure Areas Policy Statements PS-3.1 through PS-3.5); §3.1 facility tier classification driving Secure Area identification |

| A.7.4 | Physical security monitoring | §5.4 (Surveillance and Monitoring Policy Statements PS-4.1 through PS-4.6); tier-specific surveillance requirements §3.3 |

| A.7.5 | Protecting against physical and environmental threats | Section 6 (Environmental Protection); §6.1 (Philippine Environmental Risk Profile); §6.2 (Fire Safety); §6.5 (Pre-Event and Post-Event Procedures); §5.5 (Environmental Policy Statements PS-5.1 through PS-5.6) |

| A.7.6 | Working in secure areas | §5.6 (Secure Area Operations Policy Statements PS-6.1 through PS-6.5) |

| A.7.7 | Clear desk and clear screen | §5.7 (Clear Desk/Clear Screen Policy Statements PS-7.1 through PS-7.5) |

| A.7.8 | Equipment siting and protection | Section 7 (Equipment Lifecycle Physical Security); §5.8 (Equipment Siting Policy Statements PS-8.1 through PS-8.5); §7.6 ATM-specific siting |

| A.7.9 | Security of assets off-premises | §5.9 (Off-Premises Assets Policy Statements PS-9.1 through PS-9.5); coordination with BFS-ISP-022 forthcoming Remote Working |

| A.7.10 | Storage media | §5.10 (Storage Media Policy Statements PS-10.1 through PS-10.5); coordination with BFS-ISP-003 (Data Protection) classification |

| A.7.11 | Supporting utilities | Section 6 (Environmental Protection); §6.3 (Supporting Utility Reliability tier-specific matrix); §6.4 (Environmental Monitoring); §5.11 (Supporting Utilities Policy Statements PS-11.1 through PS-11.6) |

| A.7.12 | Cabling security | §5.12 (Cabling Security Policy Statements PS-12.1 through PS-12.5) |

| A.7.13 | Equipment maintenance | Section 7 (Equipment Lifecycle Physical Security §7.4); §5.13 (Maintenance Policy Statements PS-13.1 through PS-13.5); §4.5 vendor and maintenance personnel |

| A.7.14 | Secure disposal or re-use of equipment | Section 7 (Equipment Lifecycle Physical Security §7.5); §5.14 (Disposal Policy Statements PS-14.1 through PS-14.7); coordination with BFS-ISP-028 forthcoming Equipment Disposal Policy |

# APPENDIX B:  Physical Security Quick Reference

Single-page reference for personnel involved in physical security operations or potentially affected by physical security incidents. Detailed provisions in the body of this policy.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What tier is my facility? | See Section 3.1 — TIER 1 Data Center/Vault; TIER 2 Head Office/Critical Operations; TIER 3 Branches/Larger ATMs; TIER 4 Off-Site ATMs/Auxiliary. Specific facility classifications in BFS Facility Register maintained by Corporate Security. |

| I need to bring a visitor to BFS. What do I do? | Pre-register through the visitor management system if feasible; meet visitor at reception; verify identification; ensure visitor badge issued; escort throughout non-public areas; ensure formal sign-out at departure. See Section 4.3. |

| I lost my access card. What do I do? | Report immediately to Corporate Security — affected card de-activated within 1 hour. Replacement card will be issued. Do not delay reporting; lost cards are a security risk while active. See PS-2 series. |

| Someone followed me through the access door. What do I do? | Politely ask the person to badge in separately. If they cannot or will not, report to Corporate Security immediately. Tailgating is a security violation regardless of who is involved. See §5.2 PS-2.3. |

| I see a suspicious device on an ATM (e.g., possibly skimming). What do I do? | Do not use the ATM. Report immediately to Corporate Security and ATM Operations. Take a photograph if safe to do so. See §7.3 and §7.6. |

| I see something odd in a Secure Area (open door, equipment displaced, unfamiliar personnel). What do I do? | Report to Corporate Security or the area supervisor immediately. Do not investigate alone. Out-of-place observations are exactly what we need reported. See §5.6. |

| A typhoon is approaching. What is my facility doing? | PAGASA storm warnings monitored continuously during typhoon season. Pre-event procedures triggered on storm signal escalation per §6.5.1 — including personnel safety messaging about work-from-home or facility closure decisions. |

| My desk has confidential documents. What's my responsibility? | Clear desk required when away for extended periods or off-hours. Confidential and Restricted documents secured (locked drawer or secure workspace). See §5.7 PS-7.1. |

| I'm hosting a vendor for maintenance. What do I do? | Vendor pre-registered through visitor management; identification verified at arrival; vendor badge issued; escort to work location; supervise as appropriate to facility tier and area sensitivity; verify work scope before leaving vendor unattended (if permitted by facility tier); verify completion before vendor departs. See §4.5 and §5.13. |

| A laptop assigned to me was stolen. What do I do? | Report immediately to Corporate Security and CISO Office. Remote wipe will be initiated. Police report filed for the theft itself. Affected information assessed for potential breach notification. See §5.9 PS-9.5. |

| Cleaning is happening in our area. Anything special? | Cleaning personnel have specific access cards with restricted zones. Sensitive areas typically excluded from cleaning access. Confidential documents should be secured before cleaning. Report any unusual cleaning behavior. See §4.4. |

| I need to dispose of an old laptop. What do I do? | Do not simply discard. Submit to IT for proper decommissioning per BFS-ISP-028 Equipment Disposal procedures — including data sanitization, asset inventory update, secure disposal. See §5.14 PS-14 series and §7.5. |

BFS-ISP-019  |  Physical and Environmental Security Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 Annex A.7 (All 14 Physical Controls). Authorized Internal and Audit Use Only.
