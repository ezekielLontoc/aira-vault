---
title: "BFS-ISP-011-BCP-Business-Continuity-Policy-and-Plan"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Business-Continuity-and-Resilience/BFS-ISP-011-BCP-Business-Continuity-Policy-and-Plan.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:38Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Business-Continuity-and-Resilience"
aliases:
  - "BFS-ISP-011-BCP-Business-Continuity-Policy-and-Plan"
creator: "Un-named"
created: "2026-05-01T04:38:27.352Z"
modified: "2026-05-01T04:38:27.353Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>BUSINESS CONTINUITY<br>POLICY AND PLAN<br>Maintaining BFS Critical Operations Through Disruption — Business Impact Analysis, Continuity Strategies, Crisis Management, Pandemic Response, and Information Security Continuity<br>Policy Reference: BFS-ISP-011-BCP<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2025<br>Review Cycle: Annual + After Material Events<br>Closes ISO/IEC 27001:2022 Annex A.5.29 and A.5.30<br>Aligned with ISO 22301:2019 BCMS, BSP Circular 951 BCM Expectations, and Philippine Geographic Risk Profile<br>Operating BFS Through Disruption While Protecting Information Assets |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Business Continuity Policy and Plan |

| --- | --- |

| Policy Reference | BFS-ISP-011-BCP |

| Policy Owner | Chief Risk Officer (CRO) / Chief Information Security Officer (CISO) — joint ownership |

| Document Author | Risk Management / Enterprise Architecture and Security Team / CISO Office / Business Continuity Office |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2025 |

| Review Date | April 2026 |

| Review Cycle | Annual baseline review with mandatory review after: material disruptive events affecting BFS, material organizational changes affecting BCM scope, material regulatory changes (BSP, NPC), or accumulated lessons from BCM exercises |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-011 (Data Recovery Policy — backup/recovery foundation); BFS-ISP-011-DRP (IT Disaster Recovery Plan — companion document); BFS-ISP-017 (Incident Response — incident-to-disruption escalation); BFS-ISP-019 (Physical and Environmental Security — facility resilience); BFS-ISP-021 (HR Security — personnel availability); BFS-ISP-022 (Remote Working — distributed work continuity); BFS-ISP-015 (Service Provider Management — vendor continuity) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.5.29 (Information security during disruption); A.5.30 (ICT readiness for business continuity); ISO 22301:2019 (Business continuity management systems); ISO 22313:2020 (Guidance for ISO 22301); ISO/TS 22317:2021 (Business impact analysis); BCM Institute Good Practice Guidelines |

| Regulatory Reference | BSP Circular 951 (Business Continuity Management); BSP Circular 1140 (IT continuity expectations); BSP Manual of Regulations for Banks BCM provisions; RA 10173 §28 (Personal data continuity considerations); RA 10121 (Philippine Disaster Risk Reduction and Management Act); SEC Code of Corporate Governance BCM expectations; PCI DSS v4.0 Requirement 12.10 (Incident response and BCM elements) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| Chief Executive Officer |  |  |  |

| Chief Information Officer |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Information Security Officer |  |  |  |

| Chief Operating Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Business Continuity Policy and Plan operationalizing ISO/IEC 27001:2022 Annex A.5.29 (Information security during disruption) and A.5.30 (ICT readiness for business continuity) in unified Business Continuity Management (BCM) framework. It establishes how BFS maintains critical operations through disruption — preserving customer service, regulatory commitments, and information security through the spectrum of disruption from minor incidents to catastrophic events.

Business continuity is foundational to BFS's role as financial intermediary. BFS customers depend on BFS for access to their funds, transaction processing, and financial services. BFS regulatory commitments require operational availability — payment system participation, settlement obligations, supervisory reporting. BFS counterparties depend on BFS performance per agreements. Disruption affecting BFS therefore cascades to customers, counterparties, and the broader financial system. The Bank for International Settlements and BSP supervisory framework explicitly recognize banks' systemic role and corresponding continuity obligations.

The Philippine geographic risk profile makes BCM particularly critical for BFS. The Philippines experiences typhoons (multiple per year, with some causing material damage), earthquakes (particularly the West Valley Fault threat to Metro Manila), volcanic activity, flooding, and other natural hazards at frequencies exceeding most jurisdictions. Beyond natural hazards, technology disruptions (cyber attacks, infrastructure failures), pandemic events (COVID-19 demonstrated the reality), supply chain disruptions, and operational events all challenge continuity. BFS BCM must address this full spectrum.

Beyond ISO 27001 closure, this policy addresses BSP Circular 951 specific BCM expectations for supervised banks, BSP Circular 1140 IT continuity expectations, RA 10121 Philippine Disaster Risk Reduction and Management Act expectations, and broader regulatory expectations for financial institution operational resilience. BCM is regulatory expectation that BSP examines specifically and that BFS Board has fiduciary obligation to maintain.

This policy is companion to BFS-ISP-011-DRP (IT Disaster Recovery Plan) which addresses IT-specific disaster recovery in technical depth. BCP and DRP together provide the comprehensive BFS continuity framework — BCP provides business and organizational continuity; DRP provides IT and infrastructure recovery enabling BCP.

The specific objectives of this policy are to:

Establish BFS BCM framework integrating with ISO 22301 BCMS practices;

Operationalize Business Impact Analysis (BIA) identifying critical activities and dependencies;

Define Recovery Time Objectives (RTO) and Recovery Point Objectives (RPO) per business activity tier;

Establish continuity strategies for the spectrum of disruption types affecting BFS;

Address information security continuity per A.5.29 — maintaining security posture during disruption when normal controls may be stressed;

Address ICT readiness per A.5.30 — IT capability to support continuity through coordinated DRP per BFS-ISP-011-DRP;

Establish crisis management and incident escalation framework;

Address pandemic response — recognizing COVID-19 lessons and preparing for future pandemic events;

Establish BCM exercise and testing program supporting continuity capability;

Provide audit-friendly documentation supporting ISO 27001 certification, BSP examinations, and external audit reviews of BCM discipline.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Business Continuity Management (BCM) | Holistic management process identifying potential threats, building resilience, and providing capability for effective response safeguarding interests of stakeholders, reputation, brand, and value-creating activities. (ISO 22301) |

| Business Continuity Plan (BCP) | Documented procedures guiding BFS to respond, recover, resume, and restore predefined level of operations following disruption. (ISO 22301) |

| Business Impact Analysis (BIA) | Process of analyzing activities and effect that disruption might have on them. Identifies critical activities and dependencies, establishing RTO/RPO. |

| Recovery Time Objective (RTO) | Maximum time within which critical business activities must resume following disruption. Calibrated to activity criticality. |

| Recovery Point Objective (RPO) | Maximum acceptable data loss measured in time — for example, RPO of 1 hour means up to 1 hour of data may be lost in disruption recovery. |

| Maximum Tolerable Period of Disruption (MTPD) | Maximum time disruption can continue before consequences become unacceptable. RTO is typically less than MTPD. |

| Critical Activity | Activity essential to BFS operations whose disruption would cause material adverse impact — customer service unavailability, financial loss, regulatory breach, reputational damage. |

| Crisis Management Team (CMT) | Senior-level team activated during major disruptions making strategic decisions about response and continuity. |

| Crisis Management | Capability to make critical decisions during disruption — typically through Crisis Management Team with established authorities and procedures. |

| Incident | Disruption event that may escalate to require BCM activation per defined criteria. Initial response per BFS-ISP-017 incident response. |

| Disruption | Event that interrupts normal BFS operations affecting critical activities. |

| Disaster | Severe disruption typically involving facility loss, infrastructure failure, or major event triggering DRP per BFS-ISP-011-DRP. |

| Recovery Strategy | Approach for restoring critical activities — typically including alternate location, alternate technology, or alternate processes. |

| Alternate Site | Pre-established location capable of supporting critical activities when primary location unavailable. May be cold (basic facility), warm (partial readiness), or hot (full readiness). |

| Pandemic Plan | Specific BCM provisions for pandemic events — recognizing distinct characteristics including extended duration, personnel impact, geographic scope. |

| Information Security Continuity (A.5.29) | Maintenance of information security posture during disruption — recognizing that normal controls may be stressed and compensating controls may be required. |

## 2.2  Scope

### 2.2.1  In-Scope Operations

All BFS business operations including treasury, payments, lending, deposit operations, customer transactions, and customer-facing services;

All BFS support operations including IT operations, finance, HR, compliance, audit;

All BFS facilities including head office, branches, data centers, alternate sites;

All BFS personnel and personnel-dependent activities;

All BFS customer commitments including service availability and regulatory commitments;

All BFS critical vendor and supplier relationships;

Information security continuity throughout all in-scope activities.

### 2.2.2  In-Scope Disruption Types

Natural hazards — typhoons, earthquakes, flooding, volcanic activity, fires;

Technology disruptions — cyber attacks (ransomware, DDoS), data center failures, network outages, application failures;

Infrastructure disruptions — power failures, telecommunications failures, transportation disruptions;

Pandemic events — COVID-19 lessons applied; future pandemic preparedness;

Supply chain disruptions — vendor failures, third-party service disruptions, critical dependency failures;

Operational events — material errors, personnel events, security incidents escalating to disruption;

Geopolitical events — material regional or national events affecting BFS operations.

## 2.3  ISO 27001:2022 Annex A Coverage

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.5.29 | Information security during disruption | §3 (BCM Framework); §6 (Information Security Continuity); §8 (Crisis Management) |

| A.5.30 | ICT readiness for business continuity | §3 (BCM Framework); §7 (ICT Readiness — coordinated with BFS-ISP-011-DRP); §8 (Crisis Management) |

# 3.  BCM FRAMEWORK

## 3.1  BCM Principles

Customer-First: BCM prioritizes maintenance of customer service — recognizing customer dependence on BFS access to funds and services;

Regulatory Compliance: BCM maintains regulatory commitments — supervisory reporting, payment system participation, settlement obligations continue through disruption to extent possible;

Information Security Maintained: BCM does not relax information security — disruption is when adversaries are most active; security posture maintained through compensating controls if normal controls stressed;

Risk-Based Calibration: BCM resources calibrated to risk — critical activities receive comprehensive BCM; less critical activities receive proportionate attention;

Tested Capability: BCM capability is tested through exercises — paper plans without exercise are paper plans; tested plans demonstrate capability;

Continuous Improvement: BCM evolves through lessons learned, exercises, and changing risk landscape;

Integration with Operations: BCM integrated into BFS operations — not separate emergency function; operational personnel know their BCM roles;

All-Hazards Approach: BCM addresses spectrum of disruption types rather than scenario-specific plans alone.

## 3.2  Business Activity Tier Framework

| Tier | Definition | RTO | RPO |

| --- | --- | --- | --- |

| Tier 1: Critical | Activities whose disruption causes severe customer impact, regulatory breach, or material financial impact | Resume within 4 hours | Maximum 15 minutes data loss |

| Tier 2: Important | Activities whose disruption causes significant impact requiring rapid recovery | Resume within 24 hours | Maximum 1 hour data loss |

| Tier 3: Standard | Activities whose disruption causes manageable impact tolerable during short-term continuity operations | Resume within 72 hours | Maximum 4 hours data loss |

| Tier 4: Non-Critical | Activities that can be deferred during continuity operations without material impact | Resume within 7 days | Maximum 24 hours data loss |

Specific BFS activities are mapped to tiers in BIA per Section 4. Examples: Tier 1 includes payment system operations, customer-facing transaction processing, AML monitoring during open hours, regulatory reporting near deadlines. Tier 4 includes routine operations, periodic reporting, training activities.

## 3.3  BCM Governance

Board Audit & Risk Committee: Approves BCM policy and material revisions. Receives quarterly BCM reporting. Reviews material disruption events. Approves BCM strategy.

Crisis Management Team (CMT): Senior-level team activated during major disruptions per Section 8. Composition: CEO (or delegate), CRO, CISO, CIO, COO, CCO, Chief Legal Counsel, Communications. Authority for strategic decisions during disruption.

BCM Steering Committee: Operational governance of BCM program. Quarterly review of BCM status, exercise outcomes, BIA updates, material issues. Composition: CRO (chair), CISO, CIO, business unit heads.

Business Continuity Office: Day-to-day BCM operations. Maintains BIA, BCP, DRP. Coordinates exercises. Supports business units in BCM activities.

Business Unit BCM Coordinators: Designated personnel within business units coordinating BCM activities specific to their units.

Internal Audit: Independent verification of BCM per BFS-ISMS-008 — including BCP currency, exercise effectiveness, lessons learned implementation.

## 3.4  BCM Lifecycle

BFS BCM operates per ISO 22301 lifecycle:

Establishment: BCM policy, scope, governance

Risk Assessment: Threats, vulnerabilities, impact analysis (BIA)

Strategy: Recovery strategies for each critical activity

Plans: Documented BCP, DRP, related plans

Implementation: Resources, capabilities, training

Validation: Exercises, tests, reviews

Improvement: Lessons learned, plan updates, capability development

# 4.  BUSINESS IMPACT ANALYSIS

Business Impact Analysis (BIA) is the foundational BCM activity identifying what matters and how badly disruption affects BFS. BIA outputs drive recovery strategies and plan development.

## 4.1  BIA Process

Activity Inventory: BFS activities catalogued — business operations, support operations, customer-facing activities;

Impact Assessment: Disruption impact assessed across dimensions — customer impact, financial impact, regulatory impact, reputational impact, operational impact;

Time-Based Impact: Impact escalation over time — disruption acceptable for short period may be unacceptable extended;

Dependency Mapping: Each activity's dependencies identified — IT systems, personnel, vendors, facilities, information;

Tier Assignment: Activities assigned to tiers per Section 3.2 framework;

RTO/RPO Confirmation: Per-activity RTO and RPO confirmed reflecting tier and specific activity characteristics.

## 4.2  BIA Maintenance

PS-2.1  BIA shall be reviewed annually at minimum and updated for material changes in BFS operations including new activities, organizational changes, regulatory changes, or technology changes affecting activity profiles.

PS-2.2  BIA outputs shall be reviewed by business unit heads confirming their understanding of activity tiers, RTO/RPO, and dependencies.

PS-2.3  BIA shall be approved by BCM Steering Committee with material changes escalated to Board Audit & Risk Committee.

PS-2.4  BIA documentation shall be retained per BFS-ISMS-006 supporting audit and regulatory examination.

## 4.3  Critical Activity Examples

Representative Tier 1 critical activities at BFS:

Customer transaction processing (deposits, withdrawals, transfers, payments) during business hours;

Payment system participation — RTGS, BSP-PhilPaSS, SWIFT, ATM network, card payment networks;

AML transaction monitoring with regulatory deadlines;

BSP supervisory reporting near deadlines;

Customer-facing channels — branches during operating hours, online banking, mobile banking, call center;

Treasury operations during market hours;

Settlement operations including same-day settlement obligations;

Card authorization and clearing services;

Cybersecurity monitoring and incident response capability.

## 4.4  Dependencies

Critical activity dependencies fall into categories:

People — specific personnel skills, key person concentrations, minimum staffing levels;

Technology — IT systems, applications, infrastructure, data, telecommunications;

Facilities — workspace, branch locations, data centers, vault facilities;

Information — records, documents, knowledge, data assets;

Suppliers — vendors providing critical services, technology, supplies;

External — utilities, transportation, financial market infrastructure, regulatory connections.

# 5.  CONTINUITY STRATEGIES

Continuity strategies are pre-established approaches for restoring critical activities. Strategies vary by activity, dependency, and disruption type.

## 5.1  Personnel Continuity

Cross-Training: Critical roles have multiple trained personnel — preventing single-person dependencies;

Succession Planning: Critical roles have documented succession — enabling rapid leadership during disruption;

Remote Work Capability: Personnel equipped for remote work per BFS-ISP-022 — enabling continuity when facilities unavailable;

Distributed Locations: Critical functions distributed across locations — preventing single-location dependency;

Personnel Welfare: Personnel welfare during disruption — communication, support, health and safety considerations;

Mutual Aid: Where appropriate, mutual aid arrangements with peer institutions or industry bodies.

## 5.2  Technology Continuity

Technology continuity coordinated with BFS-ISP-011-DRP IT Disaster Recovery Plan:

Active-Active Architecture: Critical systems with active-active deployment across data centers — disruption to one site does not interrupt service;

Active-Passive Failover: Active-passive arrangements with documented failover for systems where active-active not appropriate;

Cloud Resilience: Cloud workloads with multi-region or multi-availability-zone deployment for resilience;

Backup and Recovery: Per BFS-ISP-011 ensuring data recoverability;

Data Replication: Real-time or near-real-time replication for data with low RPO requirements;

Alternate Data Center: Documented alternate data center per BFS-ISP-011-DRP;

Vendor Cloud Continuity: Cloud providers with documented continuity capabilities and BFS-aligned RTO/RPO.

## 5.3  Facility Continuity

Distributed Branch Network: Customer service distributed across branches — single branch unavailability handled through customer redirection;

Alternate Sites: Pre-established alternate sites for critical functions — typically warm or hot sites for Tier 1 functions;

Remote Work as Continuity: Remote work capability per BFS-ISP-022 enables continuity when facilities affected;

Mutual Aid: Where appropriate, facility-sharing arrangements with peer institutions for catastrophic facility loss;

Mobile Banking: Customer self-service through online and mobile banking continues when physical facilities affected.

## 5.4  Information Continuity

Critical Records: Critical records identified and replicated per BFS-ISMS-006;

Documentation: Critical operational documentation accessible during disruption — including from alternate sites and remote work;

Knowledge Preservation: Critical knowledge documented preventing single-person dependencies;

Communication Continuity: Communication channels for personnel, customers, regulators, vendors operational during disruption.

## 5.5  Vendor Continuity

Critical Vendor BCM: Critical vendors per BFS-ISP-015 with documented BCM capability and BFS-aligned commitments;

Vendor BCM Verification: BCM capability verified through vendor attestations, vendor audit, or independent verification;

Alternate Vendors: For critical services, alternate vendor arrangements where feasible — preventing single-vendor catastrophic dependency;

Vendor Concentration Risk: Concentration risk assessed and managed — multiple critical functions through same vendor warrant attention;

Vendor Disruption Response: Documented response procedures for vendor disruption affecting BFS critical activities.

## 5.6  Pandemic-Specific Continuity

COVID-19 demonstrated pandemic distinct characteristics requiring specific continuity provisions:

Extended Duration: Pandemic disruption lasts months/years rather than days/weeks — sustained continuity operations required;

Personnel Impact: Pandemic affects personnel availability through illness, quarantine, family obligations — workforce continuity strategies critical;

Geographic Scope: Pandemic affects operations broadly rather than localized — alternate site strategies based on geography may be ineffective;

Remote Work Primary: Remote work moves from contingency to primary operating mode — capabilities sustained for extended periods;

Customer Channel Shift: Customer service shifts to digital channels — capacity and capability for elevated digital service required;

Health and Safety: Personnel health and safety addressed including PPE, distancing, vaccination support, mental health;

Regulatory Coordination: Regulators may issue specific guidance during pandemic — BFS coordination ensures aligned response;

Phased Return: Pandemic recovery typically phased return to normal operations rather than instant restoration.

| PANDEMIC LESSONS:  BFS pandemic response framework reflects substantial lessons from COVID-19 — including the criticality of pre-established remote work capability, importance of customer-facing digital channels, value of vendor diversification, mental health and personnel welfare considerations, and regulatory coordination importance. Future pandemic preparedness builds on these lessons rather than addressing pandemic from scratch. |

| --- |

# 6.  INFORMATION SECURITY CONTINUITY (A.5.29)

This section operationalizes ISO/IEC 27001:2022 Annex A.5.29 — Information security during disruption. Information security must be maintained through disruption when adversaries are most active and normal controls may be stressed.

## 6.1  Security Continuity Principles

Security Maintained: Information security posture maintained during disruption — disruption is not justification for relaxed security;

Adversary Awareness: Disruption attracts adversaries — natural disasters, pandemics, and other crises see increased phishing, ransomware, and other attacks targeting weakened defenses;

Compensating Controls: When normal controls stressed, compensating controls activated maintaining equivalent risk posture;

Security in Continuity Operations: Continuity operations themselves secured — alternate sites, remote work, manual procedures all subject to appropriate security.

## 6.2  Security During Common Disruption Types

| Disruption Type | Security Stress | Compensating Controls |

| --- | --- | --- |

| Natural Disaster (Typhoon, Earthquake) | Facility damage, personnel disruption, focus on recovery may reduce security attention | Increased monitoring; security personnel surge; rapid security review of recovery operations |

| Cyber Attack (Major) | Active adversary in environment; trust assumptions challenged | Enhanced monitoring; potential network segmentation/isolation; access reviews; potential rebuild from clean state |

| Data Center Failure | Failover to alternate site; environment changes | Verify alternate site security baseline; verify access controls; monitor for opportunistic activity |

| Pandemic | Distributed remote work at scale; reduced facility security; potential personnel impact on security operations | Enhanced remote work security; security operations resilience; phishing awareness emphasis given pandemic-themed attacks |

| Personnel Disruption | Key personnel unavailable; reduced security operations capacity | Cross-trained personnel; vendor surge support; documented procedures enabling broader execution |

| Vendor Disruption | Loss of vendor security services; potential security gaps | Vendor BCM verification; alternate vendor capability; in-house compensating capability |

## 6.3  Security Operations During Disruption

PS-3.1  Security operations capability shall be maintained through disruption — security monitoring, incident response, vulnerability management continue.

PS-3.2  Security operations shall have continuity arrangements — alternate location capability, distributed personnel, vendor surge support.

PS-3.3  Security incident response per BFS-ISP-017 shall continue through disruption — disruption may itself include or precipitate security incidents.

PS-3.4  Material disruption with potential security implications shall trigger CISO Office assessment — determining whether disruption is or may include security incident.

PS-3.5  Recovery operations shall include security verification — recovered systems verified for security posture before normal operations resumed.

## 6.4  Personal Data Continuity

Personal data protection per RA 10173 maintained through disruption;

Personal data breach notification obligations continue per BFS-ISP-017 §3.3 — 72-hour NPC notification regardless of broader disruption circumstances;

DPO function continues during disruption with appropriate continuity arrangements;

Personal data subject rights addressed per RA 10173 with reasonable accommodation for disruption circumstances.

# 7.  ICT READINESS FOR BUSINESS CONTINUITY (A.5.30)

This section operationalizes ISO/IEC 27001:2022 Annex A.5.30 — ICT readiness for business continuity. ICT capability is essential to most BFS continuity strategies; ICT readiness is therefore foundational. Detailed IT recovery procedures are documented in BFS-ISP-011-DRP IT Disaster Recovery Plan.

## 7.1  ICT Continuity Capability

ICT continuity capability sized to support BFS BCM — recovery capability for Tier 1 critical activities within their RTO;

ICT continuity coordinated through BFS-ISP-011-DRP — DRP provides operational detail for ICT recovery;

ICT continuity tested per Section 9 exercise program;

ICT continuity capability evolves with BFS technology and business changes.

## 7.2  Critical ICT Capabilities

Data Center Resilience: Primary and alternate data centers per BFS-ISP-019 §3 facility tier framework — Tier 3+ certification level for primary; documented alternate;

Network Resilience: Network paths through BFS-ISP-013 with redundant connectivity — preventing network single-point-of-failure;

System Recovery: Critical systems with documented recovery procedures per BFS-ISP-011-DRP;

Data Recovery: Backup and recovery per BFS-ISP-011 enabling RPO compliance;

Cloud Continuity: Cloud workload continuity with multi-region or multi-AZ deployment;

Workplace ICT: ICT supporting remote work per BFS-ISP-022 and alternate site operations.

## 7.3  ICT Continuity Tests

ICT continuity capability validated through testing per Section 9:

Component Tests: Individual ICT component recovery tested — backup restore, system failover, network rerouting;

System Tests: System-level recovery tested — applications recovered with database, dependencies, integrations;

End-to-End Tests: Full ICT continuity tested — from BFS perspective of business activity recovery;

Coordinated with DRP: ICT tests coordinate with DRP exercise program per BFS-ISP-011-DRP.

## 7.4  ICT Recovery Coordination with DRP

This BCP and BFS-ISP-011-DRP work together:

BCP defines: business activity criticality, RTO/RPO requirements, business recovery strategy, business resource needs;

DRP defines: technical recovery procedures, IT infrastructure recovery, application recovery, data recovery operations;

Coordination: BCP RTO/RPO drives DRP capability requirements; DRP capability informs BCP feasible RTO/RPO;

Joint Exercises: BCP and DRP exercises coordinated — testing combined capability rather than only operational silos.

# 8.  CRISIS MANAGEMENT AND ACTIVATION

## 8.1  Activation Criteria

BCM activation triggered by:

Major Disruption: Disruption affecting Tier 1 critical activities beyond normal operational response;

Multiple-Tier Disruption: Disruption affecting multiple activities even if not Tier 1;

Major Incident Escalation: Security incidents or operational incidents per BFS-ISP-017 §4.1 escalating to disruption requiring BCM response;

External Trigger: Material external events (typhoon warnings, regulatory directives, etc.) requiring proactive BCM activation;

Anticipated Disruption: Pre-emptive activation when disruption anticipated — typhoon approaching, public health emergency declared, etc.

## 8.2  Crisis Management Team Activation

Crisis Management Team (CMT) activated by:

Activation Authority: CEO or designated delegate; CISO for security incident escalation; CRO for risk-event escalation;

Activation Notification: All CMT members notified through pre-established channels;

Initial Assembly: CMT initial meeting within 1 hour of activation (in-person or virtual);

CMT Authority: Strategic decisions about disruption response, including recovery strategy selection, resource allocation, communications, regulator notification;

CMT Operations: CMT operates throughout disruption with regular meetings calibrated to event tempo;

CMT Records: CMT decisions and rationale documented supporting later review and learning.

## 8.3  Communication Framework

Internal Communications: Personnel notified of disruption and BCM activation through pre-established channels — emergency notification system, email, intranet;

Customer Communications: Customer-facing communications coordinated through Communications function — public statements, channel-specific notifications, customer service responses;

Regulator Communications: BSP notified of material disruption per regulatory requirements — typically immediate notification for material events affecting customer service;

Vendor Communications: Critical vendors notified of disruption affecting their service delivery to BFS;

Media Communications: Through Communications function only — preventing inconsistent messaging;

Specific Stakeholders: Investors, partners, others as applicable per disruption circumstances.

## 8.4  Recovery Operations

Recovery operations follow established framework:

Stabilization: Initial stabilization preventing disruption escalation;

Assessment: Disruption scope and impact assessment;

Recovery Strategy Selection: CMT selection of recovery strategy from pre-established options;

Recovery Execution: Recovery operations per selected strategy;

Service Restoration: Critical activities restored per RTO targets;

Normal Operations: Phased return to normal operations as situation permits;

Post-Incident Review: Per BFS-ISMS-010 — root cause analysis, lessons learned, BCM improvements.

# 9.  BCM EXERCISE AND TESTING PROGRAM

BCM capability is validated through systematic exercise and testing program. Untested plans cannot be assumed effective; tested plans demonstrate capability.

## 9.1  Exercise Types

| Exercise Type | Definition | Frequency |

| --- | --- | --- |

| Plan Walkthrough | Tabletop review of plan documents and procedures | Quarterly per major plan area |

| Tabletop Exercise | Discussion-based exercise with scenario walkthrough | Semi-annually for major scenarios |

| Functional Exercise | Operational exercise with simulated activity | Annually for critical functions |

| Full-Scale Exercise | Comprehensive exercise simulating major disruption | Annually for BCM as a whole |

| Component Test | Specific BCM component tested (failover, backup restore, etc.) | Per component frequency |

| Crisis Communication Test | Communication channels tested | Quarterly |

| Personnel Notification Test | Mass notification to personnel tested | Quarterly |

| Vendor Test Coordination | Critical vendor exercises coordinated | Annually with critical vendors |

## 9.2  Exercise Outcomes

Exercise Outcomes Documented: Each exercise produces documented outcomes including issues identified, lessons learned, remediation actions;

Issue Tracking: Issues from exercises tracked through resolution per BFS-ISMS-010;

Plan Updates: Lessons learned drive plan updates — plans evolve through exercise experience;

Capability Assessment: Exercises provide capability assessment — material gaps identified and addressed;

Reporting: Exercise outcomes reported to BCM Steering Committee and Board Audit & Risk Committee.

## 9.3  Real Event Lessons

Real disruption events provide unique learning opportunity beyond exercises;

Post-event review per Section 8.4 captures lessons;

Lessons applied to BCM improvement — plans updated, capabilities developed, training enhanced;

Major events may trigger external review — independent assessment of BFS response and improvement opportunities.

## 9.4  Exercise Program Management

Annual Exercise Plan: Documented exercise program for the year — what exercises, when, who participates, what scenarios;

Exercise Calendar: Exercise schedule integrated with operations preventing exercise burden during peak periods;

Exercise Variety: Exercise types and scenarios varied — preventing exercise familiarity reducing learning value;

Realism Calibration: Exercise realism calibrated — sufficient realism for genuine learning; manageable burden for participating personnel.

# 10.  ROLES AND RESPONSIBILITIES

| Role | BCM Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Reviews BCM strategy. Oversight of BCM through quarterly reporting and material event reporting. Approval of BCM resource allocation. |

| Chief Executive Officer | Activation authority for major disruption. Crisis Management Team chair. Strategic decisions during disruption. Public face of BFS during major events. |

| Chief Risk Officer | Document co-owner. Operationally accountable for BCM program including BIA, BCP maintenance, exercise program, and BCM governance. CMT member. |

| Chief Information Security Officer | Document co-owner. Information security continuity per A.5.29. ICT continuity coordination per A.5.30 with BFS-ISP-011-DRP. Security operations through disruption. CMT member. |

| Chief Information Officer | Co-approver. ICT readiness for continuity. DRP coordination with BCP. CMT member. |

| Chief Operating Officer | Co-approver. Operations continuity. Branch and operations recovery. CMT member. |

| Chief Compliance Officer | Co-approver. Regulatory compliance during disruption. Regulatory communication and notification. CMT member. |

| Chief Legal Counsel | Legal aspects of disruption. Regulatory and legal communications. Litigation considerations. CMT member. |

| Communications | Internal and external communications during disruption. Media and customer communications. CMT member. |

| Business Continuity Office | Day-to-day BCM operations. BIA maintenance. Plan documentation. Exercise program execution. CMT support. |

| Business Unit Heads | BCM within their units. Activity tier confirmation. Recovery strategy execution for unit critical activities. |

| BCM Coordinators | Designated personnel within business units coordinating BCM activities. |

| All Personnel | BCM awareness through training. Role execution per personnel BCM responsibilities. Reporting of BCM-related issues. |

| Internal Audit | Independent verification of BCM per BFS-ISMS-008 — including BCP currency, exercise effectiveness, and BCM program operation. |

# 11.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

BCM effectiveness measured through KPIs reviewed quarterly by Risk Management and reported to Board Audit & Risk Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| BIA currency (annual review completion) | 100% | Annual |

| BCP currency (annual review completion) | 100% | Annual |

| Critical activities with documented recovery strategy | 100% | Quarterly |

| Exercise program execution per plan | ≥ 95% | Quarterly |

| Tabletop exercises completed (semi-annual cadence) | 100% | Semi-annual |

| Functional exercises completed (annual cadence) | 100% | Annual |

| Full-scale exercise completed (annual cadence) | 100% | Annual |

| Component tests completed per schedule | ≥ 95% | Quarterly |

| Critical vendor BCM verification | 100% within annual cycle | Annual |

| RTO targets validated through testing | ≥ 90% of Tier 1 activities | Annual |

| RPO targets validated through testing | ≥ 90% of Tier 1 activities | Annual |

| Personnel BCM training completion | ≥ 95% | Annual |

| BCM-relevant disruption events | Track and analyze | Per event |

| Material disruption with regulatory notification | Per applicable cases | Per event |

| Issues from exercises addressed within target timeline | ≥ 90% | Quarterly |

| BSP examination findings on BCM | Zero material findings | Per examination |

| Internal Audit findings on BCM | Track and remediate per BFS-ISMS-010 | Per audit |

# 12.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2025 | Initial release. Establishes BFS Business Continuity Policy and Plan operationalizing ISO/IEC 27001:2022 Annex A.5.29 (Information security during disruption) and A.5.30 (ICT readiness for business continuity) in unified BCM framework. Joint CRO/CISO ownership reflecting cross-functional governance. ISO 22301:2019 BCMS aligned with 8 foundational principles. 4-tier business activity framework (Tier 1 Critical RTO 4hrs/RPO 15min through Tier 4 Non-Critical RTO 7 days/RPO 24hrs). Comprehensive BIA framework. Continuity strategies across 6 dimensions (Personnel / Technology / Facility / Information / Vendor / Pandemic-Specific with COVID-19 lessons). Information Security Continuity per A.5.29 with security stress-compensating control framework. ICT Readiness per A.5.30 coordinated with BFS-ISP-011-DRP companion document. Crisis Management Team activation framework. 8-type exercise and testing program. BSP Circular 951 BCM expectations and Philippine geographic risk profile (typhoon, earthquake, volcanic) reflected. | Risk Management / EA & Security Team / CISO Office / BCO | CEO/CIO/CRO/CISO/COO/CCO/Board |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A Controls Mapping

Direct mapping of A.5.29 and A.5.30 controls to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.5.29 | Information security during disruption — The organization shall plan how to maintain information security at an appropriate level during disruption. | Section 6 (Information Security Continuity) operationalizes — 4 security continuity principles, security stress matrix across 6 disruption types with compensating controls, Security Operations During Disruption with 5 PS statements, Personal Data Continuity per RA 10173. Coordinated throughout policy: Section 3 BCM principles include 'Information Security Maintained'; Section 5 continuity strategies maintain security; Section 8 crisis management framework includes CISO as CMT member; Section 9 exercise program tests security continuity. |

| A.5.30 | ICT readiness for business continuity — ICT readiness shall be planned, implemented, maintained and tested based on business continuity objectives and ICT continuity requirements. | Section 7 (ICT Readiness for Business Continuity) operationalizes — ICT continuity capability sized to BCM requirements, 6 critical ICT capabilities (data center, network, system, data, cloud, workplace), ICT continuity tests with 4 test types, ICT Recovery Coordination with BFS-ISP-011-DRP companion document. Throughout: Section 3 BCM framework drives ICT requirements; Section 4 BIA defines ICT recovery requirements through RTO/RPO; Section 5.2 Technology Continuity strategies; Section 9 Exercise Program tests ICT capability. |

# APPENDIX B:  Business Continuity Quick Reference

Single-page reference for personnel, business unit heads, and crisis response.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What's my activity tier? | Tier 1 (Critical, RTO 4hrs/RPO 15min): payments, customer transactions, AML monitoring near deadlines. Tier 2 (Important, RTO 24hrs/RPO 1hr): significant operations needing rapid recovery. Tier 3 (Standard, RTO 72hrs/RPO 4hrs). Tier 4 (Non-Critical, RTO 7 days/RPO 24hrs). See §3.2 and §4.3. |

| What's an RTO and RPO? | RTO = Recovery Time Objective: maximum time within which activity must resume. RPO = Recovery Point Objective: maximum acceptable data loss measured in time. Driven by activity tier and business analysis. See §2.1. |

| When is BCM activated? | Major disruption affecting Tier 1 activities; multiple-tier disruption; major incident escalation per BFS-ISP-017; external triggers (typhoon warnings, regulatory directives); anticipated disruption (pre-emptive activation). See §8.1. |

| Who's on the Crisis Management Team? | CEO (or delegate) chair; CRO, CISO, CIO, COO, CCO, Chief Legal Counsel, Communications. Strategic decisions during disruption. Activated by CEO, CISO (security), or CRO (risk). See §3.3 and §8.2. |

| What about pandemic preparedness? | Distinct characteristics — extended duration, personnel impact, geographic scope, remote work primary, customer channel shift, health and safety, regulatory coordination, phased return. COVID-19 lessons applied. See §5.6. |

| What about typhoons and earthquakes? | Philippine geographic risk profile drives BCM design. Multiple data centers, alternate sites, distributed branches, remote work capability. See §5.3 and §5.2 (Technology Continuity). |

| What about cyber attacks? | Per Section 6.2 — security stress and compensating controls. Enhanced monitoring; potential network segmentation; access reviews; potential rebuild from clean state. Coordinated with BFS-ISP-017 incident response. |

| What about my role in BCM? | Per Section 10. Business unit heads ensure BCM in their units. Personnel know their roles through training. BCM Coordinators in each unit. Cross-trained personnel for critical roles. See §5.1 and §10. |

| What's the difference between BCP and DRP? | BCP defines business activity criticality, RTO/RPO requirements, business recovery strategy. DRP (BFS-ISP-011-DRP companion) defines technical recovery procedures, IT infrastructure recovery, application recovery. They coordinate. See §7.4. |

| How is BCM tested? | Plan walkthroughs (quarterly), tabletop exercises (semi-annually), functional exercises (annually), full-scale exercise (annually), component tests, crisis communication test (quarterly), personnel notification (quarterly), vendor coordination (annually). See §9.1. |

| What information do I have during disruption? | Internal communications through emergency notification system, email, intranet. Customer-facing communications coordinated through Communications. See §8.3. |

| How is information security maintained? | Information security maintained through disruption per A.5.29. Adversaries are most active during disruption. Compensating controls when normal controls stressed. Per Section 6 — security operations capability through DR; security incident response continues; recovery includes security verification. |

BFS-ISP-011-BCP  |  Business Continuity Policy and Plan  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.5.29 and A.5.30. ISO 22301:2019 Aligned. Companion to BFS-ISP-011-DRP.
