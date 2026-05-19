---
title: "BFS-ISP-028-Equipment-and-Media-Disposal-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Asset-and-Configuration-Management/BFS-ISP-028-Equipment-and-Media-Disposal-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:37Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Asset-and-Configuration-Management"
aliases:
  - "BFS-ISP-028-Equipment-and-Media-Disposal-Policy"
creator: "Un-named"
created: "2026-05-01T02:51:00Z"
modified: "2026-05-02T13:36:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>EQUIPMENT AND MEDIA<br>DISPOSAL POLICY<br>Secure Disposal, Sanitization, and Destruction of BFS Equipment, Storage Media, and Physical Records — Preventing Information Disclosure Through Decommissioned Assets<br>Policy Reference: BFS-ISP-028<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.7.14 and A.8.10<br>Aligned with NIST SP 800-88 Rev. 1, RA 9003 Solid Waste Management, and Philippine E-Waste Regulations<br>The Last Line of Defense Against Information Disclosure Through Decommissioned Assets |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Equipment and Media Disposal Policy |

| --- | --- |

| Policy Reference | BFS-ISP-028 |

| Policy Owner | Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team / CISO Office / IT Operations / Facilities Management |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS technology stack, sanitization standards (NIST SP 800-88 revisions), environmental regulations, or accumulated lessons from disposal operations |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-001 (Asset Inventory — disposal lifecycle); BFS-ISP-003 (Data Protection — classification driving disposal method); BFS-ISP-019 (Physical Security — disposal pickup); BFS-ISP-021 (HR Security — asset return at termination); BFS-ISP-023 (Cryptography — cryptographic erasure) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.7.14 (Secure disposal or re-use of equipment); A.8.10 (Information deletion); ISO/IEC 27002:2022 implementation guidance; NIST SP 800-88 Rev. 1 (Guidelines for Media Sanitization); PCI DSS v4.0 Requirements 3.2 and 9.8 (cardholder data destruction); CIS Controls v8 elements |

| Regulatory Reference | BSP Circular 1140 (Asset disposal expectations); RA 10173 Data Privacy Act §11 and §28 (Personal data disposal); RA 9003 (Ecological Solid Waste Management Act); RA 6969 (Toxic Substances and Hazardous Waste Act — e-waste); RA 11898 (Extended Producer Responsibility on plastic packaging — peripheral to e-waste); DENR Administrative Orders on e-waste handling; PCI DSS v4.0 §3.2 and §9.8 cardholder data destruction |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Head of IT Operations |  |  |  |

| Head of Facilities Management |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Equipment and Media Disposal Policy operationalizing ISO/IEC 27001:2022 Annex A.7.14 (Secure disposal or re-use of equipment) and A.8.10 (Information deletion) in unified framework. It is the policy that governs how BFS equipment, storage media, and physical records are disposed of, sanitized, or destroyed at end of useful life — preventing information disclosure through decommissioned assets.

Equipment and media disposal is the often-overlooked last line of defense in BFS information protection. Equipment retired from service still contains BFS information until properly sanitized; storage media discarded without sanitization can be recovered through forensic techniques; printed records discarded in routine trash are easily harvested. Adversaries actively target decommissioned assets — purchasing used equipment from auction sites, accessing recycling facilities, scavenging dumpsters of regulated institutions. Disposal failures have produced material data breaches at peer financial institutions.

BFS as a regulated financial institution operates with elevated disposal expectations. PCI DSS v4.0 Requirements 3.2 and 9.8 mandate specific cardholder data destruction; RA 10173 expectations include personal data disposal at end of retention; BSP supervisory expectations include asset lifecycle integrity through disposal; environmental regulations (RA 9003 Solid Waste Management, RA 6969 Toxic Substances) impose specific e-waste handling obligations. Disposal compliance is regulatory expectation, not optional supplementary discipline.

Beyond ISO 27001 closure, this policy addresses the operational reality of BFS equipment lifecycle — every BFS-issued laptop, mobile device, server, network equipment, removable storage device, paper record, and printed material eventually reaches end of useful life. The disposal pipeline at scale represents continuous BFS operational discipline; failure of disposal discipline at any point creates information disclosure risk.

The specific objectives of this policy are to:

Establish disposal categories with calibrated sanitization or destruction methods per data classification and equipment type;

Operationalize NIST SP 800-88 sanitization standards — Clear, Purge, Destroy with appropriate selection per use case;

Address all material asset categories — computing equipment, storage media, network equipment, mobile devices, paper records, peripherals;

Govern disposal pathway — internal processing, vendor processing, certified destruction services;

Establish certificates of destruction discipline supporting audit and regulatory examination;

Address environmental compliance — e-waste handling per RA 9003, RA 6969, and DENR regulations;

Coordinate with BFS-ISP-001 asset inventory for disposal tracking;

Coordinate with BFS-ISP-021 personnel termination for equipment recovery;

Provide audit-friendly documentation supporting ISO 27001 certification, BSP examinations, NPC compliance verification, and PCI QSA assessments.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Disposal | Final removal of equipment, media, or records from BFS operational use. Disposal pathway may include reuse, sale, donation, recycling, or destruction depending on circumstances. |

| Sanitization | Process of removing information from media such that recovery is infeasible. NIST SP 800-88 defines three sanitization levels: Clear, Purge, Destroy. |

| Clear (NIST SP 800-88) | Logical sanitization removing information from user-accessible storage. Resists recovery through standard interfaces. Appropriate for non-sensitive data and reuse within same organization. |

| Purge (NIST SP 800-88) | Physical or logical sanitization rendering recovery infeasible using state-of-the-art laboratory techniques. Appropriate for sensitive data and reuse outside organization. Includes cryptographic erase, secure overwrite per NIST 800-88 specifications. |

| Destroy (NIST SP 800-88) | Physical destruction rendering recovery impossible and media unusable. Includes shredding, disintegration, incineration, melting, pulverization. Required for highest-sensitivity data. |

| Cryptographic Erase | Sanitization technique using encryption — destroying encryption keys renders encrypted data effectively unrecoverable. Fast and effective for self-encrypting drives. Per NIST 800-88 may qualify as Purge if implementation meets specifications. |

| Secure Overwrite | Sanitization technique writing patterns over storage media multiple times. Effectiveness depends on storage technology — works for magnetic media; less effective for SSDs requiring TRIM-aware overwrite or other techniques. |

| Degaussing | Sanitization of magnetic media using strong magnetic field disrupting magnetic patterns. Effective for tapes and traditional hard drives; not applicable to SSDs (no magnetism). |

| Physical Destruction | Disposal pathway rendering equipment or media physically unusable — typically through shredding, crushing, drilling, incineration. |

| Certificate of Destruction | Documented attestation that disposal occurred per specified standard — typically including item identifiers, destruction date, destruction method, destruction party, and certifying signature. |

| E-Waste | Electronic waste — discarded electronic equipment subject to specific environmental regulation. Includes computers, mobile devices, network equipment, monitors, peripherals. |

| Hazardous Materials | Materials subject to specific handling per RA 6969 — includes batteries, certain electronic components, certain chemicals. E-waste generally contains hazardous materials requiring proper handling. |

| Asset Disposal Form | BFS internal documentation initiating asset disposal — identifying asset, classification, destination, and authorization. |

| Disposal Vendor | External party providing disposal services — typically certified for environmental handling and information sanitization. |

| NAID Certification | National Association for Information Destruction certification of secure destruction service providers — common standard for disposal vendors. |

## 2.2  Scope

### 2.2.1  In-Scope Assets and Materials

All BFS computing equipment — laptops, desktops, servers, workstations;

All BFS mobile devices — smartphones, tablets, specialized mobile equipment;

All BFS network equipment — routers, switches, firewalls, access points, network appliances;

All BFS storage media — hard drives, SSDs, tapes, removable storage, USB drives, memory cards;

All BFS peripherals containing storage — printers/copiers with storage, scanners with storage, fax machines, point-of-sale terminals;

All BFS paper records, printed materials, microfiche containing BFS information;

All BFS specialized equipment with information storage — ATMs, security cameras with storage, card personalization equipment;

All BFS HSMs and cryptographic equipment per BFS-ISP-023 §6.1.2;

BFS information regardless of medium when disposal is required.

### 2.2.2  Out-of-Scope Items

Routine trash without BFS information — standard waste disposal applies;

Personal items of personnel not affecting BFS information;

Customer disposal of customer-owned equipment — not BFS responsibility;

Vendor-owned equipment in BFS facilities under vendor disposal responsibility per service contracts.

## 2.3  ISO 27001:2022 Annex A Coverage

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.7.14 | Secure disposal or re-use of equipment | §3 (Disposal Framework); §4 (Equipment-Specific Disposal); §5 (Disposal Pathways) |

| A.8.10 | Information deletion | §3 (Disposal Framework with NIST 800-88 sanitization); §6 (Specific Information Deletion Scenarios) |

# 3.  DISPOSAL FRAMEWORK

## 3.1  Disposal Principles

Sanitization Before Disposal: All BFS equipment and media containing information shall be sanitized before disposal regardless of disposal pathway. No equipment leaves BFS control with recoverable BFS information;

Classification-Driven Methods: Sanitization method calibrated to highest information classification ever stored on the equipment — recognizing that historical data may persist even if current data is non-sensitive;

Certificates of Destruction: Material disposal documented through certificates of destruction — supporting audit, regulatory examination, and incident investigation;

Environmental Responsibility: Disposal complies with environmental regulations — RA 9003, RA 6969, DENR e-waste handling;

Chain of Custody: Equipment in disposal pipeline maintains documented chain of custody — preventing diversion or unauthorized access during disposal;

Verification: Sanitization and destruction operations verified — sample verification for routine batches, individual verification for highest-sensitivity items;

Vendor Discipline: Disposal vendors subject to BFS-ISP-015 service provider management with disposal-specific security expectations.

## 3.2  NIST SP 800-88 Sanitization Levels

BFS adopts NIST SP 800-88 Rev. 1 'Guidelines for Media Sanitization' as authoritative standard. Sanitization level selection per NIST decision flow:

| Level | Definition | BFS Application |

| --- | --- | --- |

| Clear | Logical sanitization through standard interfaces — typically operating system delete commands followed by overwrite or factory reset | INTERNAL or PUBLIC data only; reuse within BFS only; not appropriate for sensitive data or external reuse |

| Purge | Physical or logical sanitization resistant to laboratory recovery — cryptographic erase for self-encrypting drives, NIST-specified secure overwrite, degaussing for magnetic media | CONFIDENTIAL data; reuse outside BFS (sale, donation, recycling); transitioning to lower-classification environment |

| Destroy | Physical destruction rendering media unusable — shredding, disintegration, incineration, melting, pulverization | RESTRICTED data; cardholder data per PCI DSS; failed media that cannot be sanitized through other means; HSM cryptographic boundaries |

## 3.3  Sanitization Method Selection

Sanitization method selection per data classification and equipment reuse plan:

| Highest Classification Stored | Reuse Within BFS | Reuse Outside BFS | Final Disposal |

| --- | --- | --- | --- |

| RESTRICTED | Purge minimum | Destroy required | Destroy required |

| CONFIDENTIAL | Clear acceptable | Purge minimum | Purge minimum |

| INTERNAL | Clear acceptable | Clear acceptable | Clear minimum |

| PUBLIC | Standard reset | Standard reset | Standard reset |

When in doubt about historical data classification, treat at higher classification level. The cost of stronger sanitization is small; the cost of inadequate sanitization disclosing information is potentially material.

# 4.  EQUIPMENT-SPECIFIC DISPOSAL

This section establishes disposal requirements for specific equipment categories. Categories warrant distinct treatment based on storage characteristics and operational considerations.

## 4.1  Computing Equipment (Laptops, Desktops, Workstations)

PS-1.1  BFS-issued laptops and desktops shall be sanitized before disposal — full disk encryption keys destroyed for self-encrypting drives (cryptographic erase); secure overwrite or destruction for non-self-encrypting drives.

PS-1.2  Storage media shall be removed and processed separately when equipment chassis disposal differs from media disposal — e.g., chassis donated/recycled while drives destroyed.

PS-1.3  Equipment-resident credentials shall be revoked before disposal — domain-joined system removed from domain; cloud authentication removed; embedded credentials extracted and revoked where applicable.

PS-1.4  BIOS/UEFI passwords reset to default before disposal supporting subsequent reuse if applicable.

PS-1.5  Disposal documented in asset inventory per BFS-ISP-001 — asset transition from active to disposed status with disposal record.

## 4.2  Servers and Network Equipment

PS-2.1  Server storage media shall be sanitized using Purge or Destroy methods per data classification — typically Destroy for production servers handling CONFIDENTIAL or RESTRICTED data.

PS-2.2  Server BMC/IPMI credentials shall be reset and stored credentials cleared before disposal.

PS-2.3  Network equipment configurations shall be sanitized — factory reset clearing configurations, credentials, certificates, and any cached information.

PS-2.4  Network equipment with non-volatile storage of credentials, certificates, or configurations requires verification that sanitization removed these — vendor-specific procedures may apply.

PS-2.5  Routers, switches, firewalls, and load balancers shall be reset to factory defaults with verification — preventing residual configurations exposing BFS network architecture or credentials.

## 4.3  Mobile Devices

PS-3.1  BFS-issued mobile devices shall be remotely wiped through MDM before disposal where device is recoverable for normal disposal pathway.

PS-3.2  Lost or stolen mobile devices have remote wipe initiated immediately per BFS-ISP-022 §8.

PS-3.3  Mobile devices for disposal shall be additionally factory reset with verification — confirming no residual data.

PS-3.4  Mobile device SIM cards and storage cards (microSD) shall be removed and processed separately — destruction typical for cards containing BFS information.

PS-3.5  BYOD devices exiting BYOD program have BFS container/applications selectively wiped per BFS-ISP-022 §4.5.3 — BFS information removed without affecting personal data.

## 4.4  Storage Media

PS-4.1  Hard disk drives shall be sanitized by NIST 800-88 method appropriate to classification — secure overwrite (multiple passes) for HDD or destruction; cryptographic erase for self-encrypting HDDs.

PS-4.2  Solid-state drives (SSDs) require SSD-aware sanitization — TRIM-aware secure erase, ATA Secure Erase, or destruction. Standard secure overwrite may be ineffective due to wear leveling.

PS-4.3  Magnetic tapes shall be degaussed using NIST-specified degausser or destroyed — degaussing effective for magnetic media.

PS-4.4  Optical media (CDs, DVDs, Blu-ray) shall be physically destroyed — shredding to small fragments preventing recovery.

PS-4.5  Removable storage media (USB drives, memory cards, external drives) follow same classification-driven method selection — typically destroyed for sensitive content given small size and ease of destruction.

PS-4.6  Failed media that cannot be reliably sanitized shall be physically destroyed — failure does not justify reduced sanitization.

## 4.5  Peripherals with Storage

Many peripherals contain non-obvious storage warranting attention:

PS-5.1  Multifunction printers, copiers, and scanners typically contain hard drives caching documents — hard drives shall be removed and sanitized per Section 4.4 before peripheral disposal.

PS-5.2  Fax machines may contain storage of received and sent documents — sanitized through factory reset and storage extraction where applicable.

PS-5.3  Point-of-sale terminals contain transaction data — sanitized per PCI DSS and vendor procedures; PCI HSMs require HSM-specific sanitization.

PS-5.4  Security cameras with local storage shall have storage sanitized — DVR/NVR equipment storage processed per Section 4.4.

PS-5.5  ATMs and card personalization equipment contain significant cardholder data — disposal through certified vendors with PCI compliance verification.

## 4.6  Paper Records and Physical Materials

PS-6.1  Paper records containing BFS information shall be disposed through secure shredding — minimum cross-cut shredding (P-4 or higher per DIN 66399); micro-cut for highest sensitivity.

PS-6.2  Routine paper disposal in BFS facilities through dedicated secure shred bins — not standard trash receptacles.

PS-6.3  Bulk paper disposal through certified shredding service — on-site shredding for highest sensitivity; pickup service with chain of custody for routine volumes.

PS-6.4  Microfiche, microfilm, and similar legacy media require physical destruction — incineration or industrial destruction services.

PS-6.5  Customer documents at branch facilities follow dedicated branch disposal procedures — secure bins, regular pickup, branch staff awareness.

# 5.  DISPOSAL PATHWAYS

Disposal pathway selection depends on equipment value, classification, and BFS arrangement preferences.

## 5.1  Internal Sanitization and Reuse

Equipment with continuing useful life may be sanitized and reused within BFS:

Laptop refresh — retiring equipment from senior personnel may be reused by other BFS personnel after sanitization to factory baseline;

Server reuse — production servers may be reused for development/test environments after sanitization;

Network equipment reuse — equipment may be reused in less-critical positions after configuration sanitization;

Internal reuse requires Clear sanitization minimum; Purge for higher classifications;

Internal reuse does not eliminate requirement for sanitization — equipment moving within BFS still requires appropriate sanitization;

Asset inventory updated reflecting reuse rather than disposal.

## 5.2  Vendor Disposal Services

BFS uses certified disposal vendors for material volumes:

Vendor selection per BFS-ISP-015 service provider management with disposal-specific evaluation criteria;

Required vendor certifications: NAID AAA Certification (or equivalent) for information destruction; environmental certifications (DENR-accredited e-waste handler);

Vendor security requirements: chain of custody during transport; physical security of disposal facility; personnel screening; audit trail of disposal operations;

Service-level agreements: timing requirements, certificate provision, audit access;

Vendor operations may be witnessed for highest-sensitivity material — particularly cardholder data destruction;

Periodic vendor audit per BFS-ISP-015 — including site visits and process verification.

## 5.3  Sale, Donation, or Recycling (Non-Sensitive Equipment)

Equipment may be sold, donated, or recycled after appropriate sanitization;

Sale/donation/recycling permitted only after Clear or Purge sanitization per Section 3.3 matrix;

Equipment for external pathways shall include verification of sanitization — independent verification appropriate for material volumes;

Donation or sale of BFS equipment shall include documented disclaimer that BFS information has been sanitized — preventing recipient claims of recovered information;

Recycling vendors shall meet environmental and information security expectations;

Material exchanges (e.g., trade-in for new equipment) include sanitization before transfer.

## 5.4  Certificates of Destruction

Certificates of destruction document disposal supporting audit and verification:

Required for: all CONFIDENTIAL and RESTRICTED equipment; all cardholder data containing equipment per PCI DSS; all HSMs and cryptographic equipment; bulk paper disposal;

Certificate content: list of items destroyed (with serial numbers or other identifiers); destruction method; destruction date; destruction party with responsible personnel signature; reference to applicable destruction standard;

Certificate retention per BFS-ISMS-006 — typically 7 years supporting audit and regulatory examination;

Certificates aggregated in disposal records linked to asset inventory per BFS-ISP-001;

Sample verification of certificates by Internal Audit per BFS-ISMS-008 — confirming actual destruction of representative items.

# 6.  SPECIFIC INFORMATION DELETION SCENARIOS (A.8.10)

This section addresses specific information deletion scenarios beyond equipment disposal — operationalizing ISO/IEC 27001:2022 Annex A.8.10 (Information deletion) which addresses information deletion regardless of media.

## 6.1  Database Record Deletion

Database records identified for deletion (per data subject deletion requests, retention schedule expiration, or other triggers) shall be deleted with appropriate method per data classification;

Logical deletion (soft delete) acceptable for shorter retention transitions but actual deletion required for retention expiration;

Backup retention awareness — deleted records may persist in backups; backup retention policy aligned with data lifecycle;

Replication awareness — deleted records propagated to replicas, secondary databases, archives;

Deletion verification — sample verification confirming deletion across all expected locations;

Right to erasure under RA 10173 — operationalized through specific procedures coordinating with DPO.

## 6.2  Cloud Storage Deletion

Cloud storage deletion through cloud provider native deletion mechanisms;

Cloud provider data residency — deletion verification considering data residency in cloud provider regions;

Cloud snapshots and backups — deletion considering snapshot lifecycle and cloud-side backup retention;

Cloud cryptographic erase — for cloud storage with customer-managed keys, key destruction provides cryptographic erase if implementation supports;

Cloud disposal verification — vendor attestations or audit verification that deletion completed.

## 6.3  Email and Messaging Deletion

Email deletion through standard email system mechanisms — moving to deleted items, then permanent deletion;

Email retention per BFS-ISMS-006 — automated deletion of older messages per retention schedule;

Message backup awareness — email backups may persist beyond message deletion;

Personal data in email — specific handling for personal data deletion requests under RA 10173;

Litigation hold awareness — emails subject to litigation hold preserved despite normal deletion schedule.

## 6.4  Backup and Archive Deletion

Backup retention per backup retention policy — typically calibrated to RPO/RTO and regulatory requirements;

Backup encryption keys management — destroying encryption keys provides cryptographic erase of backups encrypted with those keys;

Long-term archives — deletion considering archive media format and any specialized retrieval mechanisms;

Backup deletion verification — confirmation that backups removed from all storage locations including off-site.

## 6.5  RA 10173 Right to Erasure Coordination

Data subject erasure requests under RA 10173 require specific operational response;

Coordination with DPO determines applicability — erasure may not apply where retention required by law or other lawful basis;

Erasure operationalized through specific procedures — locating personal data across BFS systems, executing deletion, providing confirmation;

Erasure scope includes backups within reasonable timeframe — typically synchronized with backup retention cycles;

Erasure documentation supports compliance verification.

# 7.  ENVIRONMENTAL COMPLIANCE

Equipment disposal involves environmental considerations beyond information security. BFS approach integrates information security with environmental responsibility.

## 7.1  E-Waste Handling

E-waste subject to RA 6969 Toxic Substances and Hazardous Waste Act and DENR Administrative Orders;

E-waste shall be processed through DENR-accredited e-waste handlers — preventing improper disposal contaminating environment;

E-waste includes: computers, mobile devices, network equipment, monitors, peripherals, batteries, certain electronic components;

Hazardous components (batteries, mercury-containing items, certain components) require specific handling per RA 6969;

E-waste disposal documented including environmentally appropriate handling — supporting both information security audit and environmental compliance.

## 7.2  Solid Waste Management

Paper disposal through secure destruction routes to recycling — combining information security with paper recycling;

Bulk equipment containing recyclable materials processed through certified recyclers after sanitization;

RA 9003 Solid Waste Management Act compliance through proper waste segregation;

Disposal pathways selected considering environmental impact alongside information security.

## 7.3  Vendor Environmental Compliance

Disposal vendors shall hold appropriate environmental certifications and permits;

Environmental compliance verification per vendor evaluation — including DENR accreditation, applicable permits;

Periodic vendor environmental audit complementing security audit;

BFS environmental responsibility extends through vendor — improper vendor disposal can implicate BFS.

## 7.4  ESG and Sustainability

BFS disposal practices contribute to BFS Environmental, Social, and Governance (ESG) reporting;

Sustainability metrics — equipment reuse rate, materials recycled, hazardous waste properly handled;

Continuous improvement — disposal practices evolved per environmental best practice.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Disposal Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Oversight of disposal program through KPI reporting and Internal Audit findings. |

| Chief Information Officer | Co-approver. Ensures IT operations supports disposal pipeline. Champions disposal as IT lifecycle component. |

| Chief Information Security Officer | Document owner. Operationally accountable for sanitization standards, certificate of destruction discipline, and disposal program effectiveness. |

| Head of IT Operations | Co-approver. Operationally responsible for IT equipment disposal including sanitization performance, vendor coordination, and certificate management. |

| Head of Facilities Management | Co-approver. Responsible for paper records disposal, secure shred bin operations, and physical disposal pathways. |

| Chief Compliance Officer | Co-approver. Disposal compliance with regulatory expectations including PCI DSS, RA 10173, environmental regulations. |

| IT Operations Personnel | Perform sanitization operations. Coordinate with disposal vendors. Maintain disposal records integrated with asset inventory. |

| Procurement | Disposal vendor selection per BFS-ISP-015. Contract management for disposal services. Vendor performance monitoring. |

| Asset Owners | Notify of equipment ready for disposal. Confirm appropriate sanitization for their classification of data. Verify completion. |

| Personnel | Use secure shred bins for paper disposal. Surrender BFS-issued equipment for proper disposal at termination per BFS-ISP-021. Do not dispose of BFS equipment through personal channels. |

| Internal Audit | Independently verify disposal program effectiveness per BFS-ISMS-008 — sample verification of disposal records, sanitization verification, vendor compliance, environmental compliance. |

# 9.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Disposal effectiveness is measured through the following KPIs reviewed quarterly by CISO Office and IT Operations jointly and reported to the Information Security Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Sanitization performed per classification before disposal | 100% | Quarterly |

| Certificates of destruction obtained for required disposal | 100% | Per disposal |

| Asset inventory updated reflecting disposal | ≥ 98% within 30 days | Quarterly |

| Disposal vendor compliance with NAID or equivalent certification | 100% of in-use vendors | Annual |

| Disposal vendor environmental compliance (DENR accreditation) | 100% of in-use vendors | Annual |

| Time from equipment retirement to disposal completion | Median ≤ 90 days | Quarterly |

| Equipment with confirmed sanitization before reuse within BFS | 100% | Quarterly |

| Paper records disposed through secure shredding | 100% of identified secure shredding volume | Continuous |

| Cardholder data containing equipment destroyed per PCI DSS | 100% | Per applicable disposal |

| RA 10173 right to erasure requests completed within timing | 100% | Per request |

| Disposal incidents — recoverable BFS information found in disposed equipment | Zero target | Per occurrence |

| Sample verification of disposal completion | ≥ 5% sample | Quarterly |

| Vendor audit findings on disposal | Track and remediate | Per audit |

| Internal Audit findings on disposal program | Track and remediate per BFS-ISMS-010 | Per audit |

| Environmental compliance findings | Zero material findings | Per inspection |

# 10.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Equipment and Media Disposal Policy operationalizing ISO/IEC 27001:2022 Annex A.7.14 (Secure disposal or re-use of equipment) and A.8.10 (Information deletion) in unified framework. NIST SP 800-88 Rev. 1 sanitization standard adoption with 3-level framework (Clear/Purge/Destroy). Classification-driven sanitization method matrix. Equipment-specific disposal across 6 categories (Computing equipment / Servers and network / Mobile devices / Storage media / Peripherals with storage / Paper records) totaling 27 PS statements. Disposal pathways framework with internal reuse, vendor services, sale/donation/recycling, and certificate of destruction discipline. Specific information deletion scenarios per A.8.10 (database, cloud storage, email, backups, RA 10173 erasure). Environmental compliance per RA 9003, RA 6969, and DENR regulations. Aligned with PCI DSS v4.0 §3.2 and §9.8. | IT Head / Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A Controls Mapping

Direct mapping of A.7.14 and A.8.10 controls to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.7.14 | Secure disposal or re-use of equipment — Items of equipment containing storage media shall be verified to ensure that any sensitive data and licensed software has been removed or securely overwritten prior to disposal or re-use. | Section 3 (Disposal Framework with 7 disposal principles + NIST SP 800-88 sanitization levels + classification-driven sanitization method matrix); Section 4 (Equipment-Specific Disposal across 6 categories — Computing Equipment 5 PS, Servers and Network 5 PS, Mobile Devices 5 PS, Storage Media 6 PS, Peripherals with Storage 5 PS, Paper Records and Physical Materials 5 PS — totaling 31 PS statements with category-specific sanitization requirements); Section 5 (Disposal Pathways including internal reuse, vendor services with NAID certification, sale/donation/recycling discipline, and Certificate of Destruction framework with content schema and retention). |

| A.8.10 | Information deletion — Information stored in information systems, devices or in any other storage media shall be deleted when no longer required. | Section 3 (Sanitization framework with NIST SP 800-88 levels addressing information deletion); Section 6 (Specific Information Deletion Scenarios — 5 sub-areas: Database Record Deletion, Cloud Storage Deletion, Email and Messaging Deletion, Backup and Archive Deletion, RA 10173 Right to Erasure Coordination — addressing information deletion across BFS technology stack with specific operational considerations including backup retention, replication awareness, and right to erasure operationalization). |

# APPENDIX B:  Equipment and Media Disposal Quick Reference

Single-page reference for personnel and IT operations.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What sanitization level do I need? | Per NIST SP 800-88: Clear (logical, INTERNAL/PUBLIC, internal reuse only); Purge (resists lab recovery, CONFIDENTIAL, external reuse); Destroy (physical destruction, RESTRICTED, cardholder data, failed media). Method calibrated to highest classification ever stored. See §3.2 and §3.3 matrix. |

| My laptop is being retired — what happens? | Sanitization through full disk encryption key destruction (cryptographic erase) for self-encrypting drives; secure overwrite or destruction otherwise. Credentials revoked. Asset inventory updated. Disposal through approved pathway per classification. See §4.1. |

| What about my mobile device? | Remote wipe through MDM. Factory reset with verification. SIM cards and storage cards removed and processed separately. BYOD selectively wiped removing BFS container. See §4.3. |

| Why are SSDs treated differently? | SSDs use wear leveling making standard secure overwrite ineffective. Need TRIM-aware secure erase, ATA Secure Erase, or physical destruction. Cryptographic erase effective for self-encrypting SSDs. See PS-4.2. |

| Where do I dispose of paper with BFS info? | Secure shred bins at BFS facilities — never standard trash. Cross-cut shredding minimum (P-4 DIN 66399); micro-cut for highest sensitivity. Bulk through certified shredding service. See §4.6. |

| What about the printer/copier? | Multifunction printers, copiers, scanners typically contain hard drives caching documents. Hard drives removed and sanitized per Section 4.4 before peripheral disposal. See §4.5 PS-5.1. |

| When do I need a Certificate of Destruction? | Required for: all CONFIDENTIAL and RESTRICTED equipment; cardholder data containing equipment per PCI DSS; HSMs and cryptographic equipment; bulk paper disposal. Certificates retained 7 years. See §5.4. |

| Can I sell or donate retired BFS equipment? | After Clear or Purge sanitization per Section 3.3 matrix and verification. Sanitization disclaimer documented. Vendor must meet environmental and information security expectations. See §5.3. |

| What about cloud-stored data deletion? | Through cloud provider native deletion. Awareness of cloud snapshots and backups. Cryptographic erase available for customer-managed-key encrypted storage. Vendor attestations. See §6.2. |

| What if there's a Right to Erasure request? | Coordinate with DPO to determine applicability (may not apply if retention required by law). Operationalized through specific procedures locating personal data across BFS systems. Includes backups within reasonable timeframe. See §6.5. |

| What e-waste regulations apply? | RA 6969 Toxic Substances and Hazardous Waste Act + DENR Administrative Orders. Process through DENR-accredited e-waste handlers. Hazardous components require specific handling. RA 9003 Solid Waste Management. See §7.1. |

| How do I qualify a disposal vendor? | Per BFS-ISP-015 service provider management. Required: NAID AAA Certification or equivalent for information destruction; DENR accreditation for environmental. Chain of custody, audit access, periodic vendor audit. See §5.2. |

BFS-ISP-028  |  Equipment and Media Disposal Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.7.14 and A.8.10. NIST SP 800-88 Rev. 1 Aligned.
