---
title: "BFS-ISP-011-DRP-IT-Disaster-Recovery-Plan"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Business-Continuity-and-Resilience/BFS-ISP-011-DRP-IT-Disaster-Recovery-Plan.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:38Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Business-Continuity-and-Resilience"
aliases:
  - "BFS-ISP-011-DRP-IT-Disaster-Recovery-Plan"
creator: "Un-named"
created: "2026-05-01T08:11:17.869Z"
modified: "2026-05-01T08:11:17.870Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>IT DISASTER<br>RECOVERY PLAN<br>Technical Recovery Procedures for BFS Information Technology Infrastructure, Systems, Applications, and Data Following Disruption — The Operational IT Recovery Companion to BFS-ISP-011-BCP<br>Policy Reference: BFS-ISP-011-DRP<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2025<br>Review Cycle: Annual + After Material Events<br>Closes ISO/IEC 27001:2022 Annex A.5.30 (Operational IT Component)<br>Aligned with BSP Circular 1140 IT Continuity Expectations and BFS-ISP-011-BCP Companion<br>The Final ISMS Document — Completing BFS Annex A Coverage |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | IT Disaster Recovery Plan |

| --- | --- |

| Policy Reference | BFS-ISP-011-DRP |

| Policy Owner | Chief Information Officer (CIO) / Chief Information Security Officer (CISO) — joint ownership |

| Document Author | IT Operations / Enterprise Architecture and Security Team / CISO Office / Infrastructure Engineering |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2025 |

| Review Date | April 2026 |

| Review Cycle | Annual baseline review with mandatory review after: material disruptive events affecting BFS IT, material technology architecture changes, material regulatory changes, or accumulated lessons from DR exercises |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-011 (Data Recovery Policy — backup foundation); BFS-ISP-011-BCP (Business Continuity Policy and Plan — companion document); BFS-ISP-013 (Network Infrastructure — network DR); BFS-ISP-019 (Physical and Environmental Security — facility resilience); BFS-ISP-017 (Incident Response — incident-to-disaster escalation); BFS-ISP-023 (Cryptography — DR cryptographic operations); BFS-ISP-029 (Test/Dev Environment — DR test environments) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.5.30 (ICT readiness for business continuity) — operational IT component; ISO/IEC 27031 (ICT continuity); ISO 22301:2019 (BCMS); BSP Circular 951 (BCM); BSP Circular 1140 (IT continuity); CIS Controls v8 elements; ITIL Continuity Management |

| Regulatory Reference | BSP Circular 1140 (IT Risk Management — IT continuity); BSP Circular 1048 (Cybersecurity — recovery capability); BSP Circular 951 (Business Continuity Management); BSP Circular 808 (Outsourcing — vendor IT continuity); RA 10173 §28 (Personal data continuity); PCI DSS v4.0 Requirement 12.10 (incident response and recovery elements) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| Chief Information Officer |  |  |  |

| Chief Information Security Officer |  |  |  |

| Head of IT Operations |  |  |  |

| Head of Infrastructure Engineering |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services IT Disaster Recovery Plan operationalizing the IT-specific component of ISO/IEC 27001:2022 Annex A.5.30 (ICT readiness for business continuity). It is the technical companion to BFS-ISP-011-BCP Business Continuity Policy and Plan, providing the detailed IT recovery procedures that enable business continuity. Where BCP defines what business activities require continuity and at what RTO/RPO, DRP defines how IT capability is recovered to enable that continuity.

IT disaster recovery is operationally significant because BFS is fundamentally an IT-enabled business. Every BFS critical activity depends on IT — customer transactions through banking systems, payment processing through payment infrastructure, AML monitoring through analytics platforms, regulatory reporting through specialized applications. IT disruption therefore translates directly to business disruption. Effective IT disaster recovery is the operational mechanism enabling business continuity.

BFS as an AI-native platform development organization has IT recovery considerations beyond traditional banking IT. Container-based microservices, AI/ML model serving, cloud-native deployments, and continuous deployment pipelines all introduce DR considerations beyond the traditional data center recovery model. The BFS DR architecture reflects modern cloud-native and AI-native patterns alongside traditional infrastructure recovery.

Beyond ISO 27001 closure, this document addresses BSP Circular 1140 specific IT continuity expectations, BSP Circular 1048 cybersecurity recovery capability, BSP Circular 951 BCM IT components, and PCI DSS v4.0 §12.10 recovery elements. IT DR is regulatory expectation that BSP examines specifically through IT risk examinations.

This document is operational in nature — distinct from policy documents. While it includes policy-level provisions per Section 3, the substantive content is operational procedures, recovery sequences, system-specific recovery details, and exercise programs. The audience includes IT operations personnel executing recovery, IT leadership coordinating recovery, and auditors verifying capability.

The specific objectives of this DRP are to:

Establish IT recovery framework supporting BFS-ISP-011-BCP business activity RTO and RPO requirements;

Document data center disaster recovery architecture including primary and alternate data center capabilities;

Establish system-tier recovery framework with calibrated recovery procedures per system criticality;

Document data recovery procedures coordinated with BFS-ISP-011 backup framework;

Address cloud disaster recovery for BFS cloud workloads;

Address application recovery for BFS application portfolio;

Establish recovery sequence — order of system recovery during major events;

Establish DR testing program validating capability;

Address vendor IT recovery dependencies;

Provide audit-friendly documentation supporting ISO 27001 certification, BSP IT examinations, PCI QSA assessments, and external IT audit reviews;

Complete the BFS ISMS document portfolio — this is the final forthcoming policy closing remaining Annex A coverage in the BFS roadmap.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| IT Disaster Recovery (DR) | Capability and process for restoring IT services following disruption. Distinct from but coordinated with broader Business Continuity Management. |

| Disaster Recovery Plan (DRP) | Documented technical procedures for IT recovery — this document. |

| Primary Data Center | Main BFS data center hosting normal production operations. |

| Alternate Data Center | Secondary data center capable of supporting production operations during primary disruption. May be hot, warm, or cold. |

| Hot Site | Alternate site fully operational and ready to assume production within minutes — typically through active-active deployment or rapid failover. |

| Warm Site | Alternate site partially operational — infrastructure ready but applications and data need activation. Recovery in hours. |

| Cold Site | Alternate site with basic facilities — substantial setup required. Recovery in days. Generally inadequate for Tier 1 BFS systems. |

| Recovery Time Objective (RTO) | Maximum time to restore IT service following disruption. Per BFS-ISP-011-BCP §3.2 calibration. |

| Recovery Point Objective (RPO) | Maximum acceptable data loss. Per BFS-ISP-011-BCP §3.2 calibration. |

| Failover | Process of switching production from primary to alternate. May be automated, manual-initiated automated, or fully manual depending on system. |

| Failback | Process of returning production from alternate back to primary after disruption resolution. |

| Replication | Continuous or periodic data copying from primary to alternate site supporting RPO requirements. Synchronous (zero RPO), near-synchronous (low RPO), or asynchronous (higher RPO). |

| Active-Active | Architecture pattern with primary and alternate both serving production simultaneously — disruption to one does not interrupt service. |

| Active-Passive | Architecture pattern with primary serving production while alternate stands by — failover required to engage alternate. |

| Pilot Light | Cloud DR pattern with minimal alternate environment running, scaling up on activation. |

| Multi-Region Cloud | Cloud architecture deploying across multiple cloud provider regions for geographic resilience. |

| Data Restoration | Process of restoring data from backups per BFS-ISP-011 — distinct from system restoration. |

| System Recovery | Process of restoring system operational capability — operating system, applications, configurations, integrations. |

| Recovery Sequence | Order of system recovery during major events — recognizing dependencies and prioritization per RTO. |

## 2.2  Scope

### 2.2.1  In-Scope IT Components

BFS data centers — primary and alternate facilities;

BFS network infrastructure — internal networks, network connectivity to external parties, internet connectivity;

BFS server infrastructure — physical and virtual servers, container infrastructure, hypervisors;

BFS storage infrastructure — block storage, file storage, object storage, backup storage;

BFS database infrastructure — relational databases, NoSQL databases, data warehouses;

BFS applications — banking core, channels, supporting applications, AI/ML platforms, analytics platforms;

BFS cloud workloads across cloud providers used by BFS;

BFS specialized infrastructure — payment systems, HSMs, ATM infrastructure, card systems;

BFS endpoint infrastructure — workstation management, mobile device management;

BFS security infrastructure — IAM, security tools, monitoring infrastructure.

### 2.2.2  Out-of-Scope Items

Business activity continuity — addressed by BFS-ISP-011-BCP;

Personnel-specific continuity arrangements — addressed by BFS-ISP-011-BCP §5.1 and BFS-ISP-022;

Facility-level continuity beyond IT — addressed by BFS-ISP-019 and BFS-ISP-011-BCP §5.3;

Vendor company continuity — vendor BCM addressed through BFS-ISP-015; this DRP addresses BFS technical recovery from vendor disruption.

## 2.3  ISO 27001:2022 Annex A.5.30 Coverage

| Annex A Control | Title | Section in This Document |

| --- | --- | --- |

| A.5.30 | ICT readiness for business continuity — ICT readiness shall be planned, implemented, maintained and tested based on business continuity objectives and ICT continuity requirements. | This entire document operationalizes the IT/ICT operational component of A.5.30. Section 3 (DR Framework); Section 4 (Data Center DR); Section 5 (System Recovery Tiers); Section 6 (Data Recovery); Section 7 (Cloud DR); Section 8 (Application Recovery); Section 9 (Recovery Sequence and Activation); Section 10 (DR Testing Program). BFS-ISP-011-BCP addresses the broader BCM dimension; this DRP addresses the operational IT recovery component. |

# 3.  DR FRAMEWORK

## 3.1  DR Principles

Business-Driven: DR capability driven by business RTO/RPO requirements per BFS-ISP-011-BCP — not IT preferences in isolation;

Tier-Calibrated: DR investment calibrated to system tier — Tier 1 systems receive comprehensive DR; lower tiers receive proportionate capability;

Tested Capability: DR capability validated through testing — untested DR cannot be assumed effective;

Automation Preferred: Automated DR where feasible — reducing recovery time and human error during high-stress situations;

Documented Procedures: All DR activities documented enabling execution by appropriate personnel even if specific individuals unavailable;

Coordinated with Security: DR includes security verification — recovered systems verified for security posture before normal operations resumed;

Coordinated with BCP: DR coordinated with BCP — joint exercises, aligned RTO/RPO, integrated activation;

Continuous Improvement: DR evolves through testing lessons, real event lessons, and changing technology landscape.

## 3.2  DR System Tier Framework

DR investment calibrated to system tier mapped from BFS-ISP-011-BCP §3.2 business activity tiers:

| System Tier | DR Architecture | RTO Target | RPO Target |

| --- | --- | --- | --- |

| Tier 1 (Critical) | Active-active or hot-standby with automated failover; multi-data-center; near-zero data loss replication | ≤ 4 hours | ≤ 15 minutes |

| Tier 2 (Important) | Hot or warm standby with rapid failover; replicated data | ≤ 24 hours | ≤ 1 hour |

| Tier 3 (Standard) | Warm standby or backup-restoration; periodic replication | ≤ 72 hours | ≤ 4 hours |

| Tier 4 (Non-Critical) | Backup-restoration to fresh infrastructure | ≤ 7 days | ≤ 24 hours |

## 3.3  DR Activation Framework

DR activation coordinated with BFS-ISP-011-BCP §8 crisis management framework:

Automated Failover: Some Tier 1 systems failover automatically — health monitoring detects primary failure and initiates failover without human action;

Manual-Initiated Automated: Human-initiated automated procedures — operations personnel decide to failover, system performs failover automatically;

Manual Procedures: Some systems require manual failover steps — documented procedures executed by operations personnel;

DR Activation Authority: Material DR activation requires appropriate authority — typically CIO or designate; CISO involvement for security-related activations; CMT awareness per BFS-ISP-011-BCP §8.2.

## 3.4  DR Recovery Operations

DR recovery follows established phases:

Detection: Disruption detected through monitoring or report

Assessment: Disruption scope and recovery needs assessed

Activation: DR activated per appropriate authority

Failover/Recovery: Systems failed over or recovered per procedures

Verification: Recovered systems verified — functional verification, security verification

Service Resumption: Business service resumed on recovered IT capability

Stabilization: Operations stabilized on alternate; monitoring intensified

Failback Planning: Plan for return to primary developed

Failback Execution: Return to primary executed when appropriate

Post-Recovery Review: Per BFS-ISMS-010 — root cause, lessons learned, improvements

# 4.  DATA CENTER DISASTER RECOVERY

Data center disaster recovery is the foundation of BFS DR — facility-level resilience supporting system-level recovery.

## 4.1  Data Center Architecture

Primary Data Center: Per BFS-ISP-019 §3 facility tier framework — TIER 1 facility (Tier 3+ certification level) hosting normal production operations;

Alternate Data Center: Geographically separated alternate facility — sufficient distance to provide independence from regional disasters (typhoon, earthquake) while maintaining acceptable network latency;

Geographic Considerations: Philippine geographic risk profile drives separation — primary and alternate not in same earthquake fault zone, not in same typhoon path corridor where avoidable;

Multi-Site Future: Future architecture may include third site or cloud regions for additional resilience — particularly for Tier 1 systems.

## 4.2  Network Architecture for DR

Multi-Site Network: BFS network spans primary and alternate data centers with high-bandwidth, low-latency interconnection;

Independent Network Paths: Network connectivity to internet, partners, and customer networks resilient — multiple paths preventing single network failure isolating data center;

Replication Network: Dedicated network capacity for data replication between sites supporting RPO requirements;

DNS and Load Balancing: DNS and load balancing infrastructure supporting failover — automatic or rapid manual switching of traffic between sites;

BGP and Routing: BGP routing arrangements supporting failover — internet traffic redirected to alternate during primary disruption.

## 4.3  Data Center Failover Procedures

PS-3.1  Data center failover triggers shall include: catastrophic primary facility damage, extended primary facility unavailability, infrastructure failures preventing primary operations, or proactive failover for anticipated events (typhoon approach).

PS-3.2  Data center failover shall be authorized by CIO or designated authority — material decision requiring senior IT authority.

PS-3.3  Data center failover shall execute per documented Failover Runbook — sequenced procedures supporting orderly transition.

PS-3.4  Customer-facing service continuity prioritized — customer access to BFS services maintained through failover with minimal interruption where possible.

PS-3.5  Status communication during failover — operations team status, executive status, customer impact assessment per BFS-ISP-011-BCP §8.3.

PS-3.6  Failback to primary requires explicit decision and planning — automatic failback prohibited; failback executed during low-impact window with verification.

## 4.4  Facility-Specific Disaster Considerations

Specific Philippine geographic disaster types warrant specific data center considerations:

Typhoon: Primary and alternate data centers ideally not in same typhoon path corridor; pre-typhoon proactive failover where appropriate; post-typhoon recovery considering regional infrastructure damage;

Earthquake: Data centers in different seismic zones where feasible; structural assessment after earthquakes; recovery considering regional infrastructure;

Flooding: Data centers above flood-prone zones; pre-flood proactive measures where appropriate;

Volcanic: Geographic separation from active volcanic zones (Taal, Mayon, etc. depending on data center locations);

Power Grid: Independent power grid sources between primary and alternate;

Telecommunications Infrastructure: Independent telecommunications providers between sites preventing single carrier failure affecting both.

# 5.  SYSTEM RECOVERY TIERS AND PROCEDURES

System recovery follows tier-calibrated framework per Section 3.2.

## 5.1  Tier 1 System Recovery

Tier 1 critical systems include: customer-facing transaction processing, payment system interfaces, AML monitoring during open hours, treasury operations, ATM authorization, card networks, customer authentication.

Active-Active Architecture: Tier 1 systems deployed active-active across primary and alternate data centers — load distributed normally, full capacity available from either site;

Automated Failover: Health monitoring detects primary failure; traffic redirected to alternate without manual intervention;

Near-Zero RPO: Synchronous or near-synchronous data replication achieving RPO ≤ 15 minutes;

Application-Level Resilience: Stateless application design where feasible enabling load distribution and failover without state preservation issues;

Database Replication: Primary-secondary replication with automated promotion or active-active database technology;

Comprehensive Monitoring: Tier 1 systems with comprehensive monitoring detecting issues quickly enabling rapid response;

Verification: Recovered Tier 1 systems verified for both functional capability and security posture before normal traffic restored.

## 5.2  Tier 2 System Recovery

Tier 2 important systems include: internal banking applications, branch systems, internal reporting, compliance monitoring, internal collaboration platforms.

Hot-Standby Architecture: Standby instance ready for failover with current data through replication;

Manual-Initiated Failover: Operations personnel initiate failover after disruption assessment — automated procedures execute the failover;

Low RPO: Replication achieving RPO ≤ 1 hour;

Functional Recovery: Recovery focuses on functional capability — performance optimization may follow initial recovery;

Verification before Service Restoration.

## 5.3  Tier 3 System Recovery

Tier 3 standard systems include: development tools, training systems, internal applications without time-sensitivity, periodic reporting systems.

Warm Standby or Backup-Restore: Periodic replication or backup-restore approach;

Manual Recovery: Operations personnel execute recovery procedures from documented runbooks;

Acceptable RPO: Up to 4 hours data loss tolerable;

Recovery during business hours generally acceptable.

## 5.4  Tier 4 System Recovery

Tier 4 non-critical systems may include: archived applications, training environments, low-traffic internal tools.

Backup-Restore: Recovery from backup to fresh infrastructure;

Best-Effort Recovery: Recovery within 7-day window acceptable;

May Be Deferred: During major disruption affecting Tier 1 priorities, Tier 4 recovery may be deferred.

## 5.5  System Recovery Documentation

Each in-scope system has documented recovery procedures including:

System identification and tier assignment;

Recovery architecture (active-active, hot/warm/cold standby, backup-restore);

Specific recovery procedures with sequenced steps;

Required dependencies (other systems, infrastructure, vendors);

Recovery personnel — primary contact and backup contacts;

Verification procedures confirming recovery success;

Known issues and special considerations;

Last test date and outcomes.

System recovery documentation maintained in DR runbook repository with controlled access. Documentation kept current — material system changes trigger documentation updates.

# 6.  DATA RECOVERY

Data recovery operationalizes BFS-ISP-011 backup framework in DR context. Backup discipline enables data recovery; DR adds operational procedures for recovery during disruption.

## 6.1  Data Recovery Principles

Backup-Driven: Data recovery driven by BFS-ISP-011 backup framework — backups must exist for recovery to be possible;

RPO-Compliant: Backup frequency designed to achieve RPO targets per Section 3.2 system tiers;

Recovery Tested: Backup recovery tested per Section 10 — backups not tested cannot be assumed recoverable;

Multi-Version: Multiple backup versions retained enabling recovery from various points in time;

Geographic Resilience: Backups stored at alternate location ensuring availability when primary unavailable;

Encryption Maintained: Backup encryption per BFS-ISP-023 maintained; encryption keys recoverable for DR scenarios.

## 6.2  Data Recovery Procedures

PS-2.1  Data recovery from backups shall use documented procedures specific to data type — database recovery, file system recovery, object storage recovery, message queue recovery.

PS-2.2  Recovery shall verify data integrity — recovered data validated against expected state through application-level verification, checksums, or other appropriate methods.

PS-2.3  Partial recoveries (specific tables, specific files) supported through backup architecture — not requiring full restoration to recover specific data.

PS-2.4  Recovery cryptographic operations per BFS-ISP-023 — encryption keys recoverable; cryptographic verification of restored data integrity where applicable.

PS-2.5  Recovered data subjected to security verification before normal operations — confirming integrity, authorization controls, audit logging restoration.

## 6.3  Data Recovery Time Considerations

Data recovery time depends on backup architecture and data volume:

Snapshot/Replication: Near-instantaneous — for systems using snapshot or replication backup;

Online Backup: Hours to days — depending on data volume and backup storage performance;

Offline/Tape Backup: Hours to days plus retrieval time — primarily for older or compliance-driven backups;

Cloud Backup: Variable — depending on cloud egress capacity and data volume;

Recovery time considered in RTO calculation — backup architecture appropriate to RTO requirements per system tier.

## 6.4  Recovery from Cyber Attack (Special Consideration)

Recovery from cyber attack — particularly ransomware — has specific considerations:

Backup Integrity: Backups verified for ransomware contamination — restoring from compromised backup propagates the attack;

Air-Gapped Backups: Critical backups maintained with air-gap or immutable storage protecting against backup attack;

Clean Recovery Environment: Recovery to clean environment rather than potentially-compromised primary infrastructure;

Multiple Restore Points: Multiple restore points available enabling recovery before attack initiation;

Coordinated with Incident Response per BFS-ISP-017.

| RANSOMWARE RESILIENCE:  Ransomware attacks specifically target backups — preventing recovery and forcing ransom payment. Modern BFS backup discipline includes air-gapped backups, immutable backup storage, multiple restore points, and verification of backup integrity. Recovery from ransomware requires both technical capability and disciplined response — restoring before fully understanding attack scope can re-introduce the malware. BFS coordination of DR with BFS-ISP-017 incident response addresses this. |

| --- |

# 7.  CLOUD DISASTER RECOVERY

BFS cloud workloads have DR considerations distinct from traditional data center DR. Cloud DR leverages cloud provider capabilities while maintaining BFS DR objectives.

## 7.1  Cloud DR Patterns

| Pattern | Definition | BFS Application |

| --- | --- | --- |

| Multi-AZ | Workloads deployed across multiple Availability Zones within single region | Foundation for cloud workloads; addresses AZ-level disruption |

| Multi-Region | Workloads deployed across multiple cloud provider regions | Tier 1 cloud workloads; addresses region-level disruption |

| Pilot Light | Minimal alternate environment running, scaling on activation | Cost-effective for systems with longer RTO tolerance |

| Warm Standby | Scaled-down alternate environment running, scaling up on activation | Tier 2 cloud workloads with moderate RTO |

| Active-Active Multi-Region | Full deployment across regions with traffic distribution | Tier 1 cloud workloads requiring zero RTO; highest cost but highest resilience |

## 7.2  Cloud DR Implementation

Infrastructure as Code: Cloud infrastructure defined as code enabling rapid recreation in DR scenarios;

Automated Deployment: Deployment automation enabling rapid environment standup;

Cross-Region Data: Data replicated cross-region for Tier 1/2 workloads;

Cross-Region Networking: Cross-region connectivity supporting failover scenarios;

DNS-Based Failover: Cloud-native DNS failover (Route 53, Cloud DNS, Azure Traffic Manager) supporting automated traffic redirection;

Multi-Cloud Considerations: Where appropriate, multi-cloud strategy provides resilience against cloud provider failure — though increases complexity.

## 7.3  Cloud DR Vendor Considerations

Cloud Provider SLAs: Cloud provider SLAs reviewed and aligned with BFS RTO requirements;

Cloud Provider DR Capability: Cloud provider DR capabilities evaluated — multi-AZ availability, cross-region capabilities, recovery support;

Vendor Lock-In Awareness: Recovery dependencies on specific cloud provider services considered — preferred patterns minimize switch cost;

Cloud Cost in DR: Cloud DR cost can be significant — reserved capacity for DR vs on-demand; cost optimization through pilot light vs warm standby vs active-active calibrated to tier.

## 7.4  AI/ML Workload DR

AI/ML workloads have specific DR considerations:

Model Recovery: Trained models stored in DR-protected model registries — recoverable to alternate inference environments;

Inference Capability: Production inference deployed across regions for Tier 1 model serving;

Training Continuity: Training environments may have longer RTO acceptability — in-progress training may restart rather than continue;

Feature Store Recovery: Feature stores recovered as part of overall data recovery;

MLOps Pipeline Recovery: MLOps pipelines and CI/CD recovered enabling continued model lifecycle.

# 8.  APPLICATION RECOVERY

Application recovery is the operational manifestation of system recovery — applications back online serving business needs.

## 8.1  Application Recovery Categories

| Application Category | DR Approach | Notes |

| --- | --- | --- |

| Core Banking | Active-active across data centers or hot-standby; comprehensive replication | Tier 1 — fastest recovery; highest investment |

| Customer Channels (Online, Mobile) | Active-active or hot-standby; CDN-cached static content; near-zero RTO | Tier 1 — direct customer impact |

| Payment Systems | Active-active or hot-standby with regulatory and SWIFT/BSP integration recovery | Tier 1 — payment continuity critical |

| AI/ML Inference | Multi-region cloud deployment; model recovery from registry | Tier 1 for production inference; lower for training |

| Internal Banking Applications | Hot or warm standby | Tier 2 — important but not customer-facing |

| Branch Systems | Branch resilience through online access; central system DR | Tier 2 — branch closure tolerable short-term |

| Reporting and Analytics | Warm standby or backup-restore | Tier 3 typically — periodic reports |

| Development/Test Environments | Backup-restore or rebuild from IaC | Tier 4 — recoverable but not urgent |

## 8.2  Application Recovery Procedures

PS-2.1  Each in-scope application shall have documented recovery procedure — specific to that application, regularly tested, kept current.

PS-2.2  Application recovery procedures shall include: pre-conditions, recovery steps in sequence, verification steps, rollback procedure if recovery fails, escalation contacts.

PS-2.3  Application owners shall maintain recovery procedures — updated for material application changes.

PS-2.4  Application dependencies documented — understanding what other systems must be recovered before specific application can recover.

PS-2.5  Application data restoration coordinated with overall data recovery per Section 6.

## 8.3  Application Recovery Verification

Functional verification — application performs expected functions;

Integration verification — application communicates with dependencies properly;

Performance verification — application performance acceptable for use;

Security verification — security controls operational, audit logging functional, authentication working;

Business verification — business functions enabled by application work end-to-end.

# 9.  RECOVERY SEQUENCE AND ACTIVATION

During major disruption, IT recovery follows planned sequence respecting dependencies and prioritization.

## 9.1  Recovery Sequence Principles

Foundation First: Recovery proceeds from foundational infrastructure outward — network, identity/authentication, then systems depending on these;

Dependencies Respected: Systems with dependencies recovered after their dependencies;

Tier Prioritization: Within feasibility, Tier 1 systems prioritized;

Parallel Where Possible: Recovery activities parallelized where resources permit;

Verification Before Service: Each system verified before placed in service rather than batch verification at end.

## 9.2  Recovery Sequence Framework

| Phase | Components | Notes |

| --- | --- | --- |

| Phase 1 | Network connectivity, DNS, foundational services | Without network and DNS, nothing else works |

| Phase 2 | Identity and authentication infrastructure (IAM, AD, MFA) | Required for personnel access to recovered systems |

| Phase 3 | Core data infrastructure (databases, storage, message queues) | Application recovery depends on data layer |

| Phase 4 | Tier 1 customer-facing systems and payment systems | Highest customer and regulatory impact |

| Phase 5 | Tier 1 supporting systems (treasury, AML, etc.) | Internal Tier 1 functions |

| Phase 6 | Tier 2 systems | Important but not Tier 1 |

| Phase 7 | Tier 3 and Tier 4 systems | As capacity permits during recovery |

This sequence is general framework. Specific disruption may warrant deviation — for example, isolated application failure may require only that application's recovery without broader sequence.

## 9.3  DR Activation Decision Framework

Activation decisions involve trade-offs:

Failover Cost: Failover itself has cost — service interruption during failover, complexity of operating from alternate, eventual failback effort;

Disruption Severity: Severe disruption with extended primary unavailability favors failover; transient issues may resolve faster than failover;

Recovery Confidence: Confidence in alternate site readiness affects decision;

Business Impact Trajectory: If business impact escalating rapidly, earlier failover better;

Authority Decision: Per Section 3.3 — appropriate authority makes decision based on circumstances.

## 9.4  Communication During Recovery

Operations Status: Continuous operations status — what is recovered, what is in-progress, what is pending;

Executive Status: Executive briefing per BFS-ISP-011-BCP §8.3;

Customer Communication: Customer-facing service status communicated through Communications;

Regulatory Communication: Material disruption notification per BSP requirements;

Vendor Coordination: Critical vendors coordinated as needed.

# 10.  DR TESTING PROGRAM

DR capability validated through systematic testing program. The fundamental DR principle: untested capability cannot be assumed effective.

## 10.1  DR Test Types

| Test Type | Definition | Frequency |

| --- | --- | --- |

| Component Test | Specific component recovery tested in isolation (single backup restore, single system failover) | Continuous — automated where possible; manual quarterly minimum |

| System Recovery Test | Complete system recovery tested including all components | Annually for Tier 1 and 2 systems |

| Failover Test | Production failover from primary to alternate | Annually for Tier 1 systems |

| Failback Test | Return from alternate to primary tested | Per failover test (testing both directions) |

| DR Tabletop | Discussion-based exercise walking through DR scenarios | Semi-annually |

| DR Functional Exercise | Operational exercise simulating disaster | Annually |

| DR Full-Scale Exercise | Comprehensive exercise simulating major disaster | Annually (coordinated with BCP per BFS-ISP-011-BCP §9) |

| Backup Verification | Backup integrity and restorability verified | Continuous through scheduled restores |

| Cyber Recovery Test | Recovery from simulated cyber attack | Annually |

## 10.2  Test Outcomes and Improvement

Test outcomes documented including issues identified, lessons learned, remediation actions;

Material issues addressed through corrective action per BFS-ISMS-010;

DR procedures updated based on test lessons;

RTO and RPO validated through testing — actual recovery times measured against targets;

Test reporting to BCM Steering Committee and Board Audit & Risk Committee.

## 10.3  Vendor Coordination in Testing

Vendor recovery capability tested — particularly cloud provider DR capability and critical vendor recovery;

Joint exercises with critical vendors annually;

Vendor performance against contractual continuity commitments verified;

Vendor exercise results integrated into BFS DR program review.

# 11.  ROLES AND RESPONSIBILITIES

| Role | DR Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this DRP. Reviews DR strategy. Oversight through quarterly reporting and material event reporting. |

| Chief Information Officer | Document co-owner. Operationally accountable for DR program. Activation authority for major DR events. CMT member per BFS-ISP-011-BCP. |

| Chief Information Security Officer | Document co-owner. Information security in DR per A.5.29. Security verification of recovered systems. Coordination with BCP. CMT member per BFS-ISP-011-BCP. |

| Head of IT Operations | Co-approver. Operational accountability for DR execution including failover operations, recovery procedures, and DR testing program. |

| Head of Infrastructure Engineering | Co-approver. DR architecture maintenance — data center DR, cloud DR, network resilience, system architecture for recovery. |

| Chief Risk Officer | Co-approver. Coordination with broader BCM per BFS-ISP-011-BCP. CMT member. |

| Chief Compliance Officer | Co-approver. Regulatory compliance during DR — BSP notification, PCI considerations, regulatory examination support. |

| IT Operations Personnel | Execute DR procedures during events. Maintain DR runbook currency. Participate in DR testing. |

| Application Owners | Maintain application-specific recovery procedures. Verify application recovery during tests and events. |

| Database Administrators | Database DR — replication operations, failover, recovery from backup. |

| Network Engineers | Network DR — failover routing, DNS management during events, connectivity verification. |

| Cloud Engineers | Cloud DR — multi-AZ/multi-region operations, infrastructure recovery, cloud provider coordination. |

| Security Operations | Security verification of recovered systems. Continued security monitoring during DR events. |

| Internal Audit | Independent verification of DR per BFS-ISMS-008 — DR procedures currency, test program effectiveness, recovery capability validation. |

# 12.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

DR effectiveness measured through KPIs reviewed quarterly by IT Operations and CISO Office jointly and reported to Information Security Steering Committee and Board Audit & Risk Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| DR runbook currency for in-scope systems | 100% | Quarterly |

| Tier 1 systems with active-active or hot-standby | 100% | Quarterly |

| Tier 1 RTO validated through testing | ≥ 90% meeting targets | Annual |

| Tier 1 RPO validated through testing | ≥ 90% meeting targets | Annual |

| Tier 2 RTO validated through testing | ≥ 85% meeting targets | Annual |

| Component test execution (quarterly cadence) | ≥ 90% | Quarterly |

| System recovery test (annual cadence per Tier 1/2) | 100% | Annual |

| Failover test (annual cadence per Tier 1) | 100% | Annual |

| Full-scale exercise (annual cadence) | 100% | Annual |

| Backup verification (continuous) | Continuous | Continuous |

| Cyber recovery test (annual cadence) | 100% | Annual |

| Material disruption events with successful recovery | 100% within RTO | Per event |

| DR documentation accessibility during events | 100% | Per event |

| Recovery sequence followed per framework | Per documented exceptions | Per event |

| Vendor DR capability verification | Annual for critical vendors | Annual |

| BSP IT examination findings on DR | Zero material findings | Per examination |

| Internal Audit findings on DR | Track and remediate per BFS-ISMS-010 | Per audit |

# 13.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2025 | Initial release. Establishes BFS IT Disaster Recovery Plan operationalizing the IT operational component of ISO/IEC 27001:2022 Annex A.5.30 (ICT readiness for business continuity). Joint CIO/CISO ownership reflecting cross-functional governance. The final forthcoming policy completing BFS Annex A coverage. Companion to BFS-ISP-011-BCP. 4-tier system framework calibrated to BCM business activity tiers (Tier 1 RTO 4hrs/RPO 15min through Tier 4 RTO 7 days/RPO 24hrs). Comprehensive Data Center DR including Philippine geographic disaster considerations (typhoon, earthquake, flooding, volcanic). System Recovery Tiers with calibrated procedures. Data Recovery coordinated with BFS-ISP-011 backup framework including ransomware resilience. Cloud DR with 5 cloud DR patterns (Multi-AZ, Multi-Region, Pilot Light, Warm Standby, Active-Active Multi-Region) and AI/ML workload DR. Application Recovery with 8-category approach. Recovery Sequence and Activation framework. Comprehensive DR Testing Program with 9 test types. BSP Circular 1140 IT continuity expectations and BSP Circular 951 BCM IT components alignment. | IT Operations / EA & Security Team / CISO Office / Infrastructure Engineering | CIO/CISO/HITO/HIE/CRO/CCO/Board |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A.5.30 IT Operational Mapping

Direct mapping of A.5.30 IT operational component to specific provisions, providing certification audit evidence. BFS-ISP-011-BCP addresses the broader BCM dimension of A.5.30; this DRP addresses the operational IT recovery component.

| Control | Title and Requirement | How This DRP Operationalizes |

| --- | --- | --- |

| A.5.30 | ICT readiness for business continuity — ICT readiness shall be planned, implemented, maintained and tested based on business continuity objectives and ICT continuity requirements. | Comprehensive operationalization across 10 substantive sections: Section 3 (DR Framework with 8 principles, 4-tier system framework calibrated to BCM tiers, activation framework, recovery operations 10-phase framework); Section 4 (Data Center DR with primary/alternate architecture, network architecture, failover procedures with 6 PS statements, Philippine geographic disaster considerations); Section 5 (System Recovery Tiers with tier-specific procedures and recovery documentation); Section 6 (Data Recovery operationalizing BFS-ISP-011 backup framework with ransomware resilience considerations); Section 7 (Cloud DR with 5 cloud DR patterns including Multi-AZ, Multi-Region, Pilot Light, Warm Standby, Active-Active Multi-Region, and AI/ML workload DR); Section 8 (Application Recovery with 8-category framework and 5 PS statements); Section 9 (Recovery Sequence and Activation with 7-phase framework); Section 10 (DR Testing Program with 9 test types). Coordinated with BFS-ISP-011-BCP companion document addressing BCM dimension. |

# APPENDIX B:  IT Disaster Recovery Quick Reference

Single-page reference for IT operations personnel, application owners, and IT leadership.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What's my system tier? | Per BCM tier mapping: Tier 1 (Critical, RTO 4hrs, active-active or hot-standby), Tier 2 (Important, RTO 24hrs, hot/warm standby), Tier 3 (Standard, RTO 72hrs, warm standby or backup-restore), Tier 4 (Non-Critical, RTO 7 days, backup-restore). See §3.2. |

| What's the difference between BCP and DRP? | BCP (BFS-ISP-011-BCP) defines business activity criticality, RTO/RPO requirements, recovery strategy. DRP (this document) defines technical recovery procedures — IT infrastructure, application recovery, data recovery operations. They coordinate; DRP enables BCP. See §1. |

| When does DR activate? | Material disruption affecting Tier 1 systems beyond normal operational response; multiple system disruption; major incident escalation per BFS-ISP-017; pre-emptive activation for anticipated events. CIO or designated authority. See §3.3. |

| How do I find my system's recovery procedure? | DR runbook repository with controlled access. Each in-scope system has documented procedure including recovery architecture, sequenced steps, dependencies, contacts, verification, last test date. See §5.5. |

| What about failover decisions? | Trade-offs: failover cost vs disruption severity vs recovery confidence vs business impact trajectory. Authority decision per Section 3.3. Operations team status throughout. See §9.3. |

| What about recovery from ransomware? | Special considerations: backup integrity verification (avoid restoring contaminated backups); air-gapped/immutable backups; clean recovery environment; multiple restore points; coordinated with incident response per BFS-ISP-017. See §6.4. |

| What about cloud DR patterns? | Multi-AZ (foundation), Multi-Region (Tier 1), Pilot Light (cost-effective for longer RTO), Warm Standby (Tier 2), Active-Active Multi-Region (highest resilience, highest cost). Pattern selection per tier. Infrastructure-as-Code enables rapid recreation. See §7. |

| What about AI/ML workload DR? | Models stored in DR-protected registries; production inference deployed multi-region for Tier 1; training environments may have longer RTO; feature store recovery; MLOps pipeline recovery. See §7.4. |

| What's the recovery sequence? | 7-phase framework: Phase 1 Network/DNS, Phase 2 Identity/Authentication, Phase 3 Core data infrastructure, Phase 4 Tier 1 customer-facing/payment, Phase 5 Tier 1 supporting, Phase 6 Tier 2, Phase 7 Tier 3 and 4. Foundation first, dependencies respected, tier prioritization, parallel where possible. See §9.2. |

| How is DR tested? | 9 test types: Component (continuous/quarterly), System Recovery (annually for Tier 1/2), Failover (annually for Tier 1), Failback (per failover), DR Tabletop (semi-annually), DR Functional Exercise (annually), DR Full-Scale Exercise (annually with BCP), Backup Verification (continuous), Cyber Recovery (annually). See §10.1. |

| What about Philippine disaster types? | Data center geographic separation considering typhoon paths, seismic zones, volcanic zones, flooding. Pre-typhoon proactive failover where appropriate. Post-disaster recovery considering regional infrastructure damage. Independent power grid and telecommunications between sites. See §4.4. |

| This is the final BFS ISMS document? | Yes — BFS-ISP-011-DRP completes the BFS forthcoming policy roadmap closing remaining ISO/IEC 27001:2022 Annex A coverage. BFS ISMS document portfolio is now complete: 10 BFS-ISMS framework documents + 18 BFS-ISP CIS Control series + 11 BFS-ISP Annex A gap closures (BFS-ISP-019 through BFS-ISP-029, BFS-ISP-011-BCP, BFS-ISP-011-DRP) = comprehensive ISO 27001 ISMS coverage. |

BFS-ISP-011-DRP  |  IT Disaster Recovery Plan  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.5.30 IT Operational Component. Companion to BFS-ISP-011-BCP.

The Final ISMS Document — Completing BFS Annex A Coverage
