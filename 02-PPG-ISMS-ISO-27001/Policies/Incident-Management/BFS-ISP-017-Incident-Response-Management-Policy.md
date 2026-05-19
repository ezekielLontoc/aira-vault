---
title: "BFS-ISP-017-Incident-Response-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Incident-Management/BFS-ISP-017-Incident-Response-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Incident-Management"
aliases:
  - "BFS-ISP-017-Incident-Response-Management-Policy"
creator: "Un-named"
created: "2026-04-23T01:57:00Z"
modified: "2026-04-24T01:18:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>INCIDENT RESPONSE<br>MANAGEMENT POLICY<br>IR Team, Severity Framework, Playbooks, Evidence Handling, Regulatory Notification, Tabletop Exercises<br>Policy Reference: BFS-ISP-017<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 17)  \|  ISO/IEC 27001:2022  \|  NIST SP 800-61 Rev.2<br>BSP Circular 1048  \|  RA 10173 (72-hour NPC Breach Notification)  \|  PCI DSS v4.0 Req. 12.10<br>Companion to BFS-ISP-003 \| BFS-ISP-008 \| BFS-ISP-010 \| BFS-ISP-011 \| BFS-ISP-013 \| BFS-ISP-015 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Incident Response Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-017 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to threat landscape, regulatory requirements, major incidents requiring lessons-learned updates, or material changes to BFS infrastructure |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-003 (Data Protection); BFS-ISP-008 (Audit Log Management); BFS-ISP-010 (Malware Defenses); BFS-ISP-011 (Data Recovery); BFS-ISP-013 (Network Monitoring and Defense); BFS-ISP-014 (Security Awareness and Training); BFS-ISP-015 (Service Provider Management); BFS-ISP-016 (Application Software Security) |

| Framework Alignment | CIS Controls v8 (Control 17); ISO/IEC 27001:2022 (A.5.24, A.5.25, A.5.26, A.5.27, A.5.28, A.6.8, A.5.29, A.5.30); NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide); MITRE ATT&CK Framework |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); BSP Circular 1048 (Cybersecurity Risk Management — Incident Reporting); Philippine Data Privacy Act RA 10173 (Section 20(f) — 72-hour NPC Breach Notification); PCI DSS v4.0 Requirement 12.10 (Incident Response Plan); RA 10175 (Cybercrime Prevention Act); NPC Circular 16-03 (Personal Data Breach Management) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Compliance Officer |  |  |  |

| Chief Legal Counsel |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the mandatory requirements, governance framework, and operational procedures for the detection, containment, eradication, recovery from, and learning from information security incidents affecting BFS Financial Services (hereinafter "the Organization" or "BFS"). It defines the structure, authority, responsibilities, and operational playbooks of the BFS Incident Response program — ensuring that when security events occur (and they will), BFS responds in a manner that is rapid, coordinated, legally defensible, regulator-compliant, and focused on minimizing harm to customers, the organization, and the broader financial system.

Incident response is the discipline that determines whether a security event becomes a contained operational issue or a catastrophic business event. The difference between these two outcomes is rarely determined by the sophistication of the attack — it is almost always determined by the speed and quality of the defender's response. An organization that detects a compromise within hours, isolates affected systems within minutes, preserves forensic evidence while stopping the bleeding, notifies regulators within mandated timeframes, and communicates honestly with affected customers will survive and recover. An organization that discovers a breach months later, panics, destroys evidence in the rush to remediate, misses regulatory notification windows, and loses customer trust through unclear communication will suffer existential damage — regardless of how robust its preventive controls were before the incident.

For BFS as a BSP-supervised financial institution processing customer personal data and payment transactions, the incident response function carries acute regulatory weight. BSP Circular 1048 imposes cybersecurity incident reporting obligations. RA 10173 Section 20(f) imposes a 72-hour NPC notification obligation for personal data breaches. PCI DSS v4.0 Requirement 12.10 requires a documented and tested incident response plan. NPC Circular 16-03 establishes the specific content and timing of personal data breach notifications. These are not aspirational standards — they are mandatory obligations with regulatory consequences for non-compliance.

This policy directly implements CIS Controls v8, Control 17 (Incident Response Management), encompassing all safeguards from 17.1 through 17.9. It is anchored in ISO/IEC 27001:2022 Annex A controls governing information security incident management planning, assessment and decision-making, response, learning, evidence collection, use of evidence, reporting of security events, and business continuity linkage.

The specific objectives of this policy are to:

Establish a designated, competent, and trained Incident Response Team with defined authority to direct BFS's response to security incidents across all business units, systems, and geographies;

Define the Incident Response lifecycle — Preparation, Detection and Analysis, Containment, Eradication, Recovery, and Post-Incident Activity — in operational detail that allows responders to execute without hesitation during high-pressure events;

Establish incident classification and severity frameworks ensuring proportionate response and appropriate executive engagement based on incident impact and scope;

Mandate documented playbooks for the incident categories most likely to affect BFS — ransomware, data breach, ATM/payment fraud, insider threat, DDoS, supply chain compromise, and AI-specific attacks — enabling consistent response quality regardless of which responder is on duty;

Ensure forensic evidence is preserved and chain of custody maintained in every incident, supporting potential law enforcement action, regulatory reporting, and legal proceedings;

Establish regulatory notification obligations (BSP, NPC, and where applicable SEC, BIR) are met within mandated timeframes, regardless of incident complexity or operational pressure;

Mandate regular tabletop exercises, red team engagements, and purple team activities that stress-test the IR program and build institutional muscle memory before real incidents demand it;

Integrate incident lessons learned back into the BFS security program — driving improvements to detective controls, preventive controls, awareness training, and architecture.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all BFS personnel and entities involved in or potentially affected by security incidents:

The BFS Incident Response Team (IRT), Security Operations Center (SOC), and all supporting IT Security functions;

Executive Leadership including the CIO, CISO, CRO, DPO, CCO, Chief Legal Counsel, and Board-level Risk Committee;

All BFS IT functions: infrastructure, application operations, network operations, database administration, cloud platform teams, and helpdesk;

Business unit leaders whose operations may be affected by incidents or whose data may be implicated;

HR, Corporate Communications, Legal, and Compliance functions with incident response roles;

Third-party service providers whose contracts obligate them to participate in BFS incident response (per BFS-ISP-015);

External incident response retainer firms, forensic partners, and legal counsel engaged during incident response.

## 2.2  Incident Scope

This policy applies to the full spectrum of information security incidents that may affect BFS, including:

### 2.2.1  Confidentiality Incidents

Unauthorized disclosure of customer personal data (PII or SPI) — triggering RA 10173 NPC notification assessment;

Unauthorized disclosure of payment card data (CHD) — triggering PCI DSS incident response and card brand notification;

Unauthorized disclosure of BFS proprietary or confidential business information;

Insider data exfiltration, whether deliberate or accidental;

Third-party breach affecting BFS data held by service providers.

### 2.2.2  Integrity Incidents

Unauthorized modification of customer account balances, transaction records, or audit trails;

Malicious or unauthorized changes to critical system configurations;

Data corruption from ransomware or destructive malware;

Unauthorized code modifications to production applications (supply chain or insider).

### 2.2.3  Availability Incidents

DDoS attacks affecting customer-facing services (internet banking, mobile banking, payment endpoints);

Ransomware encryption of production systems or backup infrastructure;

Critical infrastructure failure with security-relevant root cause (e.g., failure attributable to compromise);

ATM network disruption with security or fraud implications.

### 2.2.4  Fraud and Financial Crime Incidents

Unauthorized payment transactions, wire fraud, or account takeover;

ATM jackpotting, black-box attacks, or physical ATM tampering with electronic components;

Card cloning, skimming, or PAN harvesting;

Business Email Compromise (BEC) resulting in or attempting unauthorized fund transfers;

SWIFT or interbank messaging fraud.

### 2.2.5  Emerging Incident Categories

AI/LLM-specific incidents: prompt injection leading to unauthorized action, model data poisoning, AI agent exploitation, deepfake-enabled social engineering resulting in confirmed fraud or attempted fraud;

Supply chain compromises: malicious software updates, vendor credential compromise with lateral access to BFS, compromised open-source dependencies;

Cloud-native incidents: cloud credential compromise, cloud misconfiguration exposing data, cross-tenant incidents at CSPs.

## 2.3  Environmental Scope

This policy applies to incidents affecting any BFS environment: production, pre-production, disaster recovery, development, and test environments; on-premise data centers, branch offices, ATM networks, cloud environments (AWS), and any co-location or hosting arrangement; employee workstations, mobile devices, and BYOD devices accessing BFS systems; and the systems of third parties processing BFS data on behalf of BFS.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Security Event | An observable occurrence within a system or network that may indicate a potential security issue. Events are the raw material from which incidents are identified — most events are benign and require no response; some escalate to incidents. Common event sources: SIEM alerts, EDR detections, user reports, threat intelligence, anomaly alerts. |

| Security Incident | A security event (or series of events) that has been confirmed to involve actual or imminent unauthorized access, compromise, disclosure, modification, or destruction of information or information systems — or otherwise adversely affects the confidentiality, integrity, or availability of BFS information assets. |

| Personal Data Breach | A security incident resulting in the unauthorized or accidental destruction, loss, alteration, disclosure, or access to personal data under BFS's custody. Personal data breaches trigger specific notification obligations under RA 10173 Section 20(f) and NPC Circular 16-03. |

| Reportable Incident | An incident meeting the criteria for mandatory notification to a regulator: BSP under Circular 1048 for significant cybersecurity incidents affecting supervised institutions; NPC for personal data breaches under RA 10173; card brands for CHD compromise under PCI DSS. |

| Incident Response Team (IRT) | The designated, trained, and authorized team responsible for responding to security incidents at BFS. Includes core technical responders (SOC, IT Security, IT Operations), leadership (CISO as IR Commander), and extended members (Legal, Communications, HR, DPO) activated based on incident nature. |

| Incident Commander (IC) | The single individual with overall authority and accountability for directing incident response activities for a specific incident. The Incident Commander role is typically held by the CISO or a designated IR Lead for CRITICAL or HIGH incidents, and by the SOC Shift Lead for LOW and MEDIUM incidents. |

| IR Lifecycle | The structured phases of incident response per NIST SP 800-61: (1) Preparation, (2) Detection and Analysis, (3) Containment, Eradication, and Recovery, (4) Post-Incident Activity. BFS IR operations are organized around this lifecycle. |

| Containment | Actions taken to limit the scope and impact of an incident, preventing further damage without necessarily eliminating the root cause. Short-term containment (e.g., network isolation) buys time for proper investigation; long-term containment prepares for eradication. |

| Eradication | Actions taken to remove the root cause and all artifacts of a security incident from affected systems — deleting malware, closing exploited vulnerabilities, disabling compromised accounts, rebuilding compromised systems. |

| Recovery | Actions taken to restore normal operations after an incident is contained and eradicated — restoring systems from clean backups, resuming services, validating that controls are functional before returning to production. |

| Post-Incident Activity | Formal activities following incident closure: root cause analysis, lessons learned, playbook updates, control improvements, regulatory reporting finalization, and documentation retention. |

| Indicator of Compromise (IoC) | Forensic artifact observed in an incident that can be used to detect the same or related malicious activity elsewhere — IP addresses, domain names, file hashes, registry keys, process names, network patterns. IoCs are shared internally and (where appropriate) externally with the financial sector community. |

| Tactics, Techniques, and Procedures (TTPs) | The higher-level behavioral patterns used by a threat actor, as catalogued in frameworks such as MITRE ATT&CK. TTPs are more durable than IoCs (attackers change infrastructure frequently but rarely change methodology). |

| Chain of Custody | The documented and unbroken record of evidence handling — who collected evidence, when, how, and every subsequent transfer — establishing that evidence has not been altered and is admissible in legal or regulatory proceedings. |

| Forensic Image | A bit-for-bit copy of a storage medium (disk, memory, container layer) created using forensically sound tools that preserve the original data without modification. Forensic images enable investigation without contaminating the original evidence. |

| Playbook | A documented, step-by-step procedure for responding to a specific category of incident (e.g., Ransomware Playbook, BEC Playbook, DDoS Playbook). Playbooks enable rapid, consistent response without requiring responders to design the approach under pressure. |

| Tabletop Exercise | A facilitated discussion-based exercise in which incident response participants walk through a hypothetical incident scenario, making decisions and identifying gaps — without actually executing technical actions. Tabletops test processes, communication, and decision-making. |

| Purple Team Exercise | A collaborative exercise where an attack team (red) and defense team (blue) work together, with the attack team executing tradecraft while the defense team observes detection capability and refines response — directly exercising detection and response workflows. |

| Recovery Time Objective (RTO) | The maximum tolerable time within which a system, service, or process must be restored following an incident. Defined in BFS-ISP-011 and referenced here for incident response planning purposes. |

| Dwell Time | The interval between the initial compromise of a system or environment and its detection by the defender. Short dwell time is a primary indicator of IR program effectiveness. |

| Mean Time to Detect (MTTD) | The average time from incident occurrence to incident detection, measured across incidents over a reporting period. |

| Mean Time to Respond (MTTR) | The average time from incident detection to incident containment (or, in some definitions, to full resolution). |

| War Room | A dedicated physical or virtual space (e.g., Slack/Teams channel with video bridge) where the IRT coordinates during active response to a CRITICAL or HIGH incident. The war room provides shared situational awareness, rapid decision-making, and documented coordination. |

# 4.  INCIDENT RESPONSE FRAMEWORK

## 4.1  Incident Severity Classification

Every incident shall be classified into one of four severity levels upon initial confirmation. The severity determines the required response speed, executive notification, resource commitment, and regulatory notification assessment. Severity may be reclassified as investigation reveals additional scope — typically upward.

| Severity | Definition | Examples | Response SLA | Executive Tier |

| --- | --- | --- | --- | --- |

| CRITICAL (SEV-1) | Incident with actual or imminent severe impact on BFS: material customer data breach confirmed; core banking unavailable; ransomware in production; confirmed nation-state intrusion; material financial loss in progress. | Confirmed PII breach >1,000 records; core banking encrypted; ATM network compromised; active wire fraud in progress; internet banking offline due to attack; confirmed APT presence. | 15 min detect-to-IRT activation | CEO, CIO, CISO, CRO, DPO, Board Chair notified |

| HIGH (SEV-2) | Significant security incident with major operational or compliance impact but scope not yet confirmed as CRITICAL, or contained CRITICAL event. | Ransomware contained to single segment; suspected PII breach under investigation; significant DDoS affecting a channel; insider data exfil attempt detected; successful BEC attempt (funds recoverable). | 1 hour detect-to-IRT activation | CIO, CISO, CRO, DPO, business unit head |

| MEDIUM (SEV-3) | Moderate incident affecting BFS operations or representing elevated risk; typically contained within a single system or small scope. | Single endpoint malware infection (non-spreading); limited unauthorized access to internal system; small-scale DDoS (mitigated by WAF); failed BEC attempt; unpatched critical vulnerability being exploited. | 4 hours detect-to-response | CISO notified; IT Security Manager coordinates |

| LOW (SEV-4) | Minor security event requiring investigation and documentation but limited business impact. | Suspicious login from unusual location (false positive likely); unsuccessful phishing campaign; routine policy violation; malware blocked by EDR; minor configuration drift. | 24 hours detect-to-response | SOC handles; no executive notification required unless pattern emerges |

## 4.2  NIST-Aligned IR Lifecycle

BFS incident response is organized around the NIST SP 800-61 Rev. 2 lifecycle, adapted for the specific threat landscape and regulatory environment of a Philippine financial institution.

| Phase | Key Activities | BFS-Specific Considerations |

| --- | --- | --- |

| 1. Preparation | IRT organization; playbook maintenance; tools and tooling readiness; training and exercises; evidence handling procedures; retainer agreements; regulatory contact list. | Maintain current BSP, NPC, SEC, card brand, and law enforcement contact information. Maintain retainer with external forensics and IR firms experienced with Philippine financial sector. Maintain legal hold procedures with external counsel. |

| 2. Detection and Analysis | Alert triage; incident declaration; initial scoping; severity classification; evidence collection initiation; IC assignment; war room activation (if warranted). | SOC as primary detection source; correlate SIEM, EDR, NDR, and DLP alerts. Assess personal data exposure early to start the RA 10173 72-hour clock correctly. Card data exposure triggers card brand early notification discussion. |

| 3. Containment, Eradication, Recovery | Short-term containment (isolate); long-term containment (harden while investigating); eradicate root cause; restore from clean backups; verify restoration; monitor for recurrence. | For ransomware: follow BFS-ISP-011 recovery using immutable backups. For insider incidents: coordinate with HR and Legal before taking action that might alert subject. For supply chain: coordinate with vendor per BFS-ISP-015. |

| 4. Post-Incident Activity | Root cause analysis; lessons learned meeting; playbook updates; control improvements; regulatory notification finalization; evidence retention; final report to leadership and Board. | Formal report to Board Audit & Risk Committee for CRITICAL and HIGH incidents. Update BFS threat intelligence database with confirmed IoCs. Share (anonymized) lessons with BSP financial sector ISAC if material. |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, systems, and environments within scope of this policy.

## 5.1  IR Team Structure and Authority

PS-1.1  BFS shall maintain a designated Incident Response Team (IRT) with defined membership, documented authority, and formal activation procedures. The IRT is the authoritative body for directing BFS's response to security incidents, with authority derived from this policy and the Board-delegated authority of the CIO and CISO.

PS-1.2  The IRT shall comprise three tiers of membership, activated based on incident severity:

Core IRT (always activated for MEDIUM and above): CISO or designated IR Lead as Incident Commander; SOC representatives; IT Security analysts; IT Operations representatives;

Extended IRT (activated for HIGH and CRITICAL, and for any incident touching their domain): DPO (personal data incidents); Legal Counsel (all HIGH/CRITICAL); Corporate Communications (HIGH/CRITICAL with external visibility); HR (insider incidents); Business Unit heads (incidents affecting their operations); Specific technical specialists (cloud, database, application, network) as needed;

Executive IRT (activated for CRITICAL and material HIGH): CIO, CRO, Chief Compliance Officer, and for CRITICAL events with material impact: CEO and Board Audit & Risk Committee Chair.

PS-1.3  The Incident Commander (IC) shall have single-point authority and accountability for directing response activities during the incident. The IC's instructions are to be followed by all participants in the response. Disagreements with IC decisions shall be escalated to the CISO (or CIO if the IC is the CISO) rather than debated during active response. This is essential to maintain coordinated action during high-pressure events.

PS-1.4  The IC shall have pre-authorized authority to take the following actions without further approval during an active CRITICAL or HIGH incident: isolate affected systems from the network; disable compromised user accounts or service accounts; block malicious IP addresses or domains at the firewall or SWG; invoke disaster recovery procedures; engage external retained incident response firms; initiate chain of custody for forensic evidence. Actions with broader business impact (shutting down customer-facing services, cutting off connectivity to critical vendors) require CIO or CISO approval.

PS-1.5  IRT members shall have documented training and maintain currency through regular exercises. New IRT members shall complete formal IR training within thirty (30) days of assignment. All IRT members shall participate in at least one tabletop exercise and one live IR engagement (real or exercised) annually.

## 5.2  Incident Detection and Reporting

PS-2.1  BFS shall maintain multiple, independent incident detection mechanisms: SIEM correlation and alerting (per BFS-ISP-008); Endpoint Detection and Response (per BFS-ISP-010); Network Detection and Response (per BFS-ISP-013); Data Loss Prevention; fraud monitoring in payment systems; user reporting channels; third-party notifications from service providers or customers; and threat intelligence alerts.

PS-2.2  All BFS employees and contractors shall have a clear, simple, non-punitive mechanism to report suspected security events: the BFS SOC hotline (24/7); a dedicated email address (soc@bfs.com.ph); and the integrated phishing-report mechanism (BFS-ISP-009). User-reported events shall be triaged within the same SLAs as automated detection alerts based on initial severity assessment.

PS-2.3  The SOC shall be the primary 24/7 detection and initial triage function. SOC personnel shall triage alerts, perform initial incident analysis, classify severity, declare incidents, activate the appropriate IRT tier, and maintain the incident record in the ITSM platform from declaration through closure.

PS-2.4  Incident detection mechanisms shall be continuously monitored for coverage and health. Any detection mechanism failure (EDR offline on a CRITICAL asset, SIEM rule disabled, SOC hotline unreachable) shall be treated as a CRITICAL operational security issue requiring immediate remediation, separate from any incident in progress.

PS-2.5  All confirmed incidents shall be assigned a unique Incident Tracking Number in the ITSM platform and recorded in the BFS Incident Register maintained by the CISO Office. The register is the single source of truth for incident history, retained for a minimum of seven (7) years (aligning with BSP record retention expectations).

## 5.3  Incident Classification and Escalation

PS-3.1  Every incident shall be classified by severity (SEV-1 CRITICAL, SEV-2 HIGH, SEV-3 MEDIUM, SEV-4 LOW) per the framework in Section 4.1. Initial classification is performed by the SOC at incident declaration based on known facts; severity shall be reviewed and potentially reclassified at each major scope development during investigation.

PS-3.2  SEV-1 CRITICAL incidents shall trigger immediate Executive IRT activation: CISO, CIO, CRO, DPO, and (for material incidents) CEO and Board Chair notified within fifteen (15) minutes of severity classification. Notification shall use multiple channels (phone call + SMS + secure messaging) to ensure delivery outside business hours.

PS-3.3  SEV-2 HIGH incidents shall trigger Extended IRT activation within one (1) hour: CIO and CISO notified; DPO notified if personal data potentially involved; Legal notified; business unit head of affected function notified.

PS-3.4  Severity upgrade (e.g., from HIGH to CRITICAL) shall trigger the upgrade-level notification cascade immediately. Severity downgrade shall not occur without written IC decision recorded in the incident record explaining the justification.

PS-3.5  The Incident Commander shall maintain continuous situational awareness during active incidents and shall provide written situation updates to the Executive IRT at minimum every four (4) hours during active SEV-1 response, and every twelve (12) hours during active SEV-2 response, until the incident is contained.

## 5.4  Incident Response Playbooks

PS-4.1  BFS shall maintain documented Incident Response Playbooks for the following incident categories, at minimum. Playbooks shall be reviewed and updated at least annually and following any significant incident in the category or significant change in the threat landscape:

Ransomware / Destructive Malware;

Customer Personal Data Breach (with RA 10173 notification workflow);

Payment Card Data Compromise (with PCI DSS / card brand workflow);

Business Email Compromise (BEC) and Wire Fraud;

Account Takeover / Credential Compromise (customer and employee);

Distributed Denial of Service (DDoS);

ATM Attack (jackpotting, black-box, logical attack);

Insider Threat / Data Exfiltration;

Supply Chain / Third-Party Compromise (per BFS-ISP-015 coordination);

Application Exploitation (web, API, mobile);

Cloud Security Incident (credential compromise, misconfiguration exploitation);

AI/LLM-Specific Incident (prompt injection causing action, model abuse, deepfake-enabled fraud);

Nation-State / APT Intrusion;

Physical Security Incident with IT Impact (premises breach, device theft with data).

PS-4.2  Each playbook shall include, at minimum: scope and triggering conditions; initial triage and scoping actions; containment options (short-term and long-term) with decision factors; eradication steps; recovery validation steps; evidence preservation checklist; regulatory notification decision tree; internal and external communication guidance; and lessons learned capture template.

PS-4.3  Playbooks shall be stored in the BFS IR Runbook Repository (ITSM-linked), accessible to all IRT members from any location. Playbooks shall be reviewed for currency and tested during tabletop exercises per Section 5.8. Playbooks considered 'stale' (not tested or reviewed in the past 18 months) shall be flagged and updated as a priority.

## 5.5  Evidence Preservation and Chain of Custody

PS-5.1  Forensic evidence shall be preserved for all incidents of SEV-2 HIGH or higher severity, for any incident potentially involving criminal activity, and for any incident potentially involving legal or regulatory proceedings. Evidence preservation is a legal and regulatory obligation — premature destruction of evidence during remediation can render subsequent prosecution or regulatory defense impossible.

PS-5.2  Evidence preservation shall include, as applicable to the incident: memory images of affected systems (captured before reboot or remediation); disk images or forensic snapshots (for virtual machines); full packet capture data covering the incident timeframe (per BFS-ISP-013); SIEM log exports for the incident timeframe; EDR telemetry exports; email server artifacts; authentication logs; and physical evidence (e.g., devices, ATM skimmers). Evidence shall be captured using forensically sound tools and procedures before any action that might alter the evidence.

PS-5.3  Chain of custody shall be documented for all preserved evidence: who collected the evidence, when, how, and where it is stored; every subsequent access or transfer, with date, time, and purpose; cryptographic hashes of evidence (SHA-256 minimum) recorded at collection and verified at every handling to confirm integrity. Chain of custody documentation shall be retained with the evidence for a minimum of seven (7) years or the duration of any related legal hold, whichever is longer.

PS-5.4  Evidence shall be stored in an access-controlled Evidence Repository maintained by the CISO Office. Access to evidence is restricted to authorized personnel with documented investigation need. Evidence related to personal data incidents shall be handled per BFS-ISP-003 data classification requirements, typically as CONFIDENTIAL or CRITICAL.

PS-5.5  Remediation and containment activities shall, wherever feasible, be conducted on copies or isolated systems rather than on original evidence sources. When original systems must be altered during containment (e.g., rebuilding a compromised server), forensic images must be captured first.

## 5.6  Regulatory Notification Obligations

PS-6.1  The CISO and DPO shall jointly assess every SEV-2 and SEV-1 incident for applicable regulatory notification obligations at the earliest confirmed scope. Regulatory notification timelines run from BFS awareness of the potentially reportable event, not from final confirmation of scope — conservative early assessment is mandatory to preserve notification windows.

PS-6.2  Personal data breach notifications to the National Privacy Commission (NPC) shall be made within seventy-two (72) hours of BFS's awareness of a personal data breach, in accordance with RA 10173 Section 20(f) and NPC Circular 16-03. The 72-hour clock begins when BFS has reasonable grounds to believe a personal data breach has occurred — not when final investigation is complete. The DPO shall lead NPC notifications with CISO and Legal support.

PS-6.3  Significant cybersecurity incidents affecting BSP-supervised operations shall be reported to BSP per BSP Circular 1048 and related BSP incident reporting issuances. Reportable events include: successful compromise of core banking systems; material disruption to banking services; significant fraud events; and incidents affecting payment infrastructure. The Chief Compliance Officer shall lead BSP notifications with CISO support.

PS-6.4  Payment card data incidents shall trigger card brand notification per PCI DSS v4.0 Requirement 12.10 and individual card scheme rules (Visa, Mastercard, JCB, Amex). Notification timelines vary by brand but typically range from 24 to 72 hours. The CISO, CCO, and Card Operations lead shall coordinate card brand notifications.

PS-6.5  Customer notification of personal data breaches, where required by NPC Circular 16-03, shall be made in coordination with the DPO, Legal, Corporate Communications, and affected business unit heads. Customer notifications shall be clear, complete, actionable, and delivered through the communication channels most likely to reach affected customers (email, SMS, mobile app push, account dashboard notice).

PS-6.6  All regulatory notifications and communications with regulators during an incident shall be coordinated through the DPO (for NPC), Chief Compliance Officer (for BSP and other financial regulators), and Legal Counsel. Ad hoc or uncoordinated communications with regulators are prohibited; informal calls from regulators during an incident shall be routed to the designated coordinator.

PS-6.7  Incidents involving criminal activity (unauthorized access under RA 10175 Cybercrime Prevention Act, fraud, insider theft) shall be assessed for law enforcement reporting. Law enforcement referrals shall be approved by Legal Counsel and the CISO. The specific law enforcement agency (NBI Cybercrime Division, PNP-ACG) is determined based on incident nature and geography.

## 5.7  Communication During Incidents

PS-7.1  A Communications Plan shall be activated for every SEV-1 CRITICAL and material SEV-2 HIGH incident, coordinated by Corporate Communications with CISO and Legal input. The plan shall address: internal communication cadence and audience; regulatory communication per Section 5.6; customer communication (if applicable); media communication (if applicable); and coordination with external IR partners and counsel.

PS-7.2  A dedicated secure war room shall be established for SEV-1 and material SEV-2 incidents, typically a secured video bridge and Slack/Teams channel restricted to IRT members. The war room provides: shared situational awareness; rapid decision-making; centralized documentation; and a single information flow path to avoid conflicting narratives.

PS-7.3  Incident-specific communications shall use appropriately secure channels. Communications about incidents involving active threat actor presence in BFS systems shall NOT use the potentially compromised systems — alternate out-of-band channels (dedicated IR communication platform, personal phones with encryption, in-person meetings) shall be used until the threat is fully contained.

PS-7.4  Employees shall not discuss incidents in progress on social media, with unauthorized parties, or in uncontrolled channels (personal email, public forums, messaging apps without enterprise control). Violations of incident communication discipline during active response are serious policy violations.

PS-7.5  Customer-facing external communications during an incident (customer notices, public statements, press releases) shall be approved by the CISO, CEO (for CRITICAL material incidents), Legal, and Corporate Communications jointly before release. Release of unapproved external communications is prohibited.

## 5.8  Tabletop Exercises and IR Readiness Validation

PS-8.1  BFS shall conduct incident response tabletop exercises at least quarterly, rotating through the major incident scenarios (Section 5.4). Each tabletop shall exercise a specific scenario, involve realistic constraints, and produce documented findings and action items.

PS-8.2  At least one tabletop exercise annually shall involve Executive IRT participation (CEO, CIO, CISO, CRO, DPO, Board representative) to exercise decision-making at the executive level — communication approval, business continuity invocation, regulatory engagement, and reputation management decisions.

PS-8.3  BFS shall conduct at least one full-scale incident response exercise annually — a Purple Team or Red Team engagement that executes realistic attacker tradecraft and validates detection, response, and containment capabilities end-to-end.

PS-8.4  At least one tabletop exercise annually shall specifically exercise a ransomware recovery scenario in conjunction with BFS-ISP-011 Data Recovery — validating that the backup-based recovery plan works operationally and that the team can meet RTO targets.

PS-8.5  Tabletop exercise results shall be documented including: scenario description, participants, decisions made, decisions that should have been different, gaps identified, action items with owners and deadlines, and an overall assessment of IR readiness for that scenario. Action items from exercises shall be tracked to closure with the same rigor as incident-driven findings.

## 5.9  Post-Incident Activity and Continuous Improvement

PS-9.1  Every SEV-2 HIGH and SEV-1 CRITICAL incident shall undergo a formal Post-Incident Review (PIR) within ten (10) business days of incident closure. The PIR shall produce a Post-Incident Report documenting: timeline of detection, response, containment, and resolution; root cause analysis using the Five Whys or similar methodology; contributing factors (technical, process, human); actions taken and their effectiveness; lessons learned; specific recommendations; and owner assignments for remediation.

PS-9.2  Post-Incident Reports for SEV-1 CRITICAL incidents shall be presented to the Board Audit & Risk Committee at the next scheduled meeting. Reports for SEV-2 HIGH incidents shall be presented to the CISO and CIO for review and escalation decision. All Post-Incident Reports are classified CONFIDENTIAL and retained for seven (7) years minimum.

PS-9.3  Lessons learned shall be incorporated into the broader BFS security program through specific action items: SIEM correlation rule additions or tuning (BFS-ISP-008); awareness training content updates (BFS-ISP-014); IR playbook updates; architectural control enhancements; process refinements. Each action item shall have an owner, target date, and tracking through to validated completion.

PS-9.4  Indicators of Compromise (IoCs) from incidents shall be added to the BFS internal threat intelligence database and integrated into SIEM detection rules, DNS block lists (per BFS-ISP-013), EDR custom detection rules, and email security policies (per BFS-ISP-009). Anonymized IoCs may be shared with sector information sharing communities (BSP-ISAC, FS-ISAC) where appropriate and approved by the CISO.

PS-9.5  Incident trends shall be tracked and analyzed quarterly: incident frequency by category; severity distribution; dwell time trends; detection source distribution; remediation effectiveness. Trend analysis informs risk management reporting to the Board and strategic security program planning.

# 6.  PROCEDURES

## 6.1  Incident Declaration and Initial Response Procedure

The following procedure governs the transition from a security event (observable occurrence) to a declared incident (confirmed issue requiring coordinated response):

Event Detection: SOC receives alert from SIEM, EDR, NDR, user report, or third-party notification. SOC analyst assigns an initial Event Record in the ITSM with source, indicators, and affected systems.

Initial Triage (within alert SLA): SOC analyst investigates the event — correlates with other signals, reviews relevant logs, validates whether the activity is benign, a false positive, or genuine security concern. Triage shall complete within the detection alert SLA.

Incident Declaration Decision: If the event is confirmed as a genuine security issue requiring coordinated response, the SOC analyst declares an Incident and assigns an initial severity (SEV-1 through SEV-4) based on known facts. The event record is converted to an Incident Record with a unique Incident Tracking Number.

Incident Commander Assignment: Based on severity: SEV-1 and SEV-2 — CISO or designated IR Lead is paged and assumes IC role; SEV-3 — SOC Shift Lead serves as IC; SEV-4 — SOC analyst handles as routine investigation. IC assumes authority per Section 5.1.3.

IRT Activation: Based on severity and category, the IC activates the appropriate IRT tier: Core IRT (always for SEV-3+); Extended IRT (for SEV-2+ and for specialized incidents touching specific domains); Executive IRT (for SEV-1 and material SEV-2).

War Room Establishment: For SEV-1 and material SEV-2, the IC establishes a dedicated war room (virtual or physical) as the coordination point. All IR communications and decisions flow through or are recorded in the war room.

Initial Scoping: IC directs initial scoping activities — what systems are affected, what data may be involved, what is the likely scope, what immediate containment actions are needed. Scoping findings update severity classification if warranted.

Evidence Preservation Activation: For SEV-2 and above, the IC directs evidence preservation per Section 5.5 — memory capture, disk imaging, log exports, network capture extraction. Evidence preservation begins before any containment action that might alter evidence.

Initial Executive Notification: For SEV-1 CRITICAL: CEO, CIO, CISO, CRO, DPO, Board Chair notified within 15 minutes via multiple channels. For SEV-2 HIGH: CIO, CISO, DPO, Legal notified within 1 hour.

Regulatory Notification Clock Assessment: IC and DPO jointly assess potential regulatory notification obligations — particularly the 72-hour NPC clock for personal data incidents. If a clock is running, the clock start time and target deadlines are recorded in the incident record.

## 6.2  Containment Decision-Making Procedure

Containment decisions during incident response require weighing competing objectives: stopping active harm, preserving evidence, minimizing business impact, and avoiding tipping off adversaries. The following procedure guides containment decisions:

Containment Options Analysis: IC and technical responders identify possible containment options — network isolation, account disabling, service shutdown, firewall rule changes, session termination, workflow suspension. Each option is analyzed for effectiveness, business impact, evidence preservation implications, and adversary detection risk.

Short-Term Containment Selection: Select the containment approach that provides fastest harm reduction with acceptable business impact. For ongoing active compromise: immediate network isolation is typical. For contained malware: quarantine is typical. For insider incidents: covert preservation of activity may be more valuable than immediate action.

Authorization for Containment: Routine containment (isolating a single endpoint, disabling a single account) is pre-authorized to the IC (Section 5.1.4). Containment with broad business impact (disabling production services, blocking a major partner IP range) requires CIO or CISO approval for SEV-2, and CEO awareness for SEV-1.

Execution and Verification: Containment action is executed by appropriate technical responder under IC direction. Verification that the containment is effective (e.g., SIEM confirms attacker traffic stopped, EDR confirms process terminated) is required before proceeding to eradication.

Long-Term Containment Planning: Parallel to short-term containment, long-term containment is designed — how to keep the threat contained while proper investigation, forensics, and eradication planning proceed without rushing. Long-term containment typically involves enhanced monitoring, segmentation, or temporary architecture changes.

Communication of Containment Actions: IC communicates containment actions and their business impact to Executive IRT, affected business unit heads, and (for external-facing impact) Corporate Communications.

## 6.3  Personal Data Breach Notification Procedure

When an incident is confirmed or strongly suspected to involve personal data, the NPC 72-hour notification obligation is triggered. The following procedure governs the notification workflow:

Initial Assessment (within first hour of incident declaration): DPO, CISO, and Legal jointly assess whether the incident involves personal data and, if so, whether the incident meets the NPC Circular 16-03 criteria for a reportable personal data breach. Assessment considers: nature of data involved, number of data subjects, exposure likelihood, harm potential.

72-Hour Clock Recording: If a reportable breach is assessed, the clock start time is formally recorded — typically the earliest moment BFS had reasonable grounds to believe a personal data breach had occurred. Target notification deadline (72 hours from start) is recorded in the incident record and tracked.

Breach Scope Investigation: Parallel to ongoing IR activities, a dedicated investigation thread scopes the breach: affected data categories, number of data subjects, systems involved, exposure duration, likelihood of actual unauthorized access versus theoretical exposure.

NPC Notification Drafting: DPO leads drafting of the NPC notification per NPC Circular 16-03 content requirements: description of breach; categories and approximate number of data subjects; categories and approximate number of personal data records; likely consequences; measures taken or proposed. Drafting starts immediately, not at hour 71.

Legal and CISO Review: Legal Counsel and CISO review the NPC notification draft for accuracy, completeness, legal exposure, and consistency with the evolving investigation. Draft is refined but not delayed beyond hour 48 waiting for complete information — the obligation is to notify what is known by hour 72, with supplementary notification as more facts emerge.

Executive Approval: The NPC notification is approved by CISO, DPO, Legal, and (for material breaches) CEO before submission. Approval authority is documented.

NPC Notification Submission: DPO submits the notification to NPC through the prescribed channel (NPC online system or formal letter) before the 72-hour deadline. Submission confirmation is retained in the incident record.

Supplementary Notifications: As investigation yields additional information (revised data subject count, identified cause, remediation progress), supplementary notifications are submitted to NPC at reasonable intervals.

Customer Notification Assessment: DPO, Legal, CISO, Corporate Communications, and business unit heads jointly assess whether direct customer notification is required (per NPC Circular 16-03 criteria — typically required when there is a real risk of harm to data subjects). If required, customer notifications are drafted, approved, and delivered through appropriate channels.

## 6.4  Post-Incident Review Procedure

Every SEV-1 and SEV-2 incident shall undergo a formal Post-Incident Review (PIR) through the following structured procedure:

PIR Scheduling: Within two (2) business days of incident closure, the CISO Office schedules the PIR meeting. Participants: IC, technical responders involved in the incident, affected business unit representatives, Legal (for regulatory-impacting incidents), DPO (for personal data incidents), CIO/CISO.

Timeline Reconstruction: Facilitator builds a detailed incident timeline: initial compromise vector (if identified), attacker activities, detection point, declaration, containment actions, eradication, recovery, closure. Timeline is built from authoritative sources (SIEM, EDR, IR logs) rather than memory.

Root Cause Analysis: Facilitator leads Five Whys analysis to identify root cause(s) beyond the proximate cause. Multiple root causes may exist across technical (e.g., missing patch), process (e.g., change management gap), and human (e.g., phishing click) dimensions.

What Went Well / What Went Poorly: Structured discussion of response effectiveness: where was detection timely and where was it delayed; where was containment effective and where did it fail; where was communication strong and where did coordination break down; where was external support effective.

Action Item Identification: Specific, actionable improvements identified across: detective controls (new SIEM rules, EDR signatures, DLP policies); preventive controls (configuration hardening, patch expedite, architecture changes); process controls (playbook updates, notification procedure refinements); awareness (training content for observed human error patterns).

Action Item Ownership and Deadlines: Each action item is assigned an owner (named individual or function), target completion date, and acceptance criteria. Action items are entered into the engineering work management system for tracking.

Post-Incident Report Authoring: Facilitator drafts the Post-Incident Report incorporating timeline, root cause, effectiveness assessment, and action items. Report is classified CONFIDENTIAL.

Report Review and Approval: CISO reviews and approves the Post-Incident Report. For SEV-1 incidents, CIO also approves. Report is stored in the Incident Register.

Board Presentation (SEV-1): Post-Incident Reports for SEV-1 CRITICAL incidents are presented to the Board Audit & Risk Committee at the next scheduled meeting, with CISO and CIO briefing.

Action Item Tracking: Action items are tracked to completion by the CISO Office. Monthly reports to CISO on incident action item progress. Stale items escalated.

# 7.  GUIDELINES

## 7.1  Ransomware Response Guidelines

Do Not Pay the Ransom Without Board and Law Enforcement Consultation: Paying ransoms funds criminal enterprise, provides no guarantee of data recovery, and may violate sanctions regulations if the threat actor is on sanctions lists. Any ransom payment consideration requires CEO, Board, Legal, and law enforcement (NBI, potentially FBI/OFAC if cross-border) consultation.

Isolate Before Investigating: Ransomware spreads aggressively. Immediate network isolation of infected systems is the priority, even before full investigation. The evidence lost through rapid isolation is less than the additional encryption that occurs during deliberation.

Use Immutable Backups (Section 5 of BFS-ISP-011): The immutable / air-gapped backup copy is the recovery lifeline for ransomware events. Recovery planning assumes the production backup infrastructure is also compromised — only the immutable copy is safe.

Credential Segregation Verification: Before using backup credentials to access recovery systems, verify that those credentials have not been harvested by the attacker. If any possibility exists that backup credentials are known to the attacker, rotate before use.

Regulatory Notification Trigger: Ransomware events involving CONFIDENTIAL or personal data are reportable events — the 72-hour NPC clock typically starts at ransomware detection, not at confirmed data exfiltration. Modern ransomware operators commonly exfiltrate data before encryption as a double extortion tactic, so exposure should be assumed unless clearly ruled out.

## 7.2  Insider Threat Response Guidelines

Coordinate with HR and Legal Before Overt Action: Insider incidents (suspected data theft, fraud, policy violation) require coordinated response with HR and Legal to preserve evidence, protect legal position, and ensure employee rights are respected. Direct confrontation by IT Security without HR/Legal coordination can destroy evidence and create legal exposure.

Covert Preservation Before Containment: For active insider threats under investigation, maintaining monitoring while gathering evidence may be more valuable than immediate containment. This decision requires CISO, HR, and Legal joint approval and clear scope definition.

Immediate Containment When Harm Is Occurring: When evidence clearly shows active exfiltration, fraud in progress, or imminent material harm, immediate containment (access revocation, device seizure, escort) is warranted — coordinated with HR and Physical Security if employee is on premises.

Full Chain of Custody Rigor: Insider incidents frequently result in legal proceedings (criminal prosecution, civil recovery, employment disputes). Chain of custody discipline from the start is essential. Document everything; assume every action will be scrutinized in court.

Preserve Dignity and Confidentiality: Insider investigations damage the subject's career and reputation regardless of ultimate outcome. Limit access to investigation details to need-to-know. Assume the subject may be innocent until evidence proves otherwise. Treat with professional dignity throughout.

## 7.3  BEC (Business Email Compromise) and Wire Fraud Response

Minutes Matter for Funds Recovery: Once a fraudulent wire transfer is initiated, the window for funds recovery is measured in hours, not days. Priority one upon BEC detection: contact the BFS Treasury operations team to attempt SWIFT recall or payment reversal before funds are collected by the fraudster.

Engage Correspondent Banks Immediately: For international wires, correspondent bank engagement is often required to halt or recover funds. Treasury and the IR team coordinate to contact correspondent banks through SWIFT recall messages and direct calls.

Law Enforcement Notification for Large Losses: Material wire fraud cases warrant NBI Cybercrime Division or PNP-ACG notification. For international transfers, FBI (US), Interpol, or Europol may assist with international coordination. The window for law enforcement effectiveness is also narrow.

Investigate the Email Compromise Root Cause: BEC typically starts with a compromised executive or finance staff email account. Investigation must determine how the account was compromised — phishing, credential reuse, session hijacking — and remediate to prevent recurrence.

Customer Notification if Customer Is Affected: If a customer was the fraud victim via a compromised BFS-issued account, customer notification and account remediation is priority. If the fraud affected BFS treasury operations, NPC notification may be required if customer data was involved in the attacker's access.

## 7.4  AI/LLM-Specific Incident Response Guidelines

Prompt Injection Detection Indicators: Unexpected agent actions not matching user intent; model outputs revealing system prompt contents; elevated privilege tool invocations from standard user inputs; patterns matching known prompt injection techniques (role-play manipulation, instruction override claims, multi-turn social engineering within chat).

Isolation and Session Termination: Upon suspected prompt injection, immediately terminate the affected LLM agent session, preserve the full conversation history as evidence, and disable tool access pending investigation. Monitor for similar patterns across other sessions.

Model Abuse Patterns: Monitor for: bulk queries attempting to extract training data; coordinated queries attempting denial-of-service through expensive operations; queries attempting to bypass content filters through encoding, language switching, or multi-step manipulation; queries correlating with external threat intelligence on AI model attacks.

Deepfake Fraud Response: When deepfake audio or video is used in fraud attempts (e.g., deepfake call claiming to be CEO authorizing wire), the incident response shares much with BEC — immediate funds recall, investigate compromise of communication channel, assess broader exposure of executive likeness or voice data.

Coordination with MSAMS Governance: AI-specific incidents in the MSAMS platform (per the consolidated architecture blueprint) shall engage the AI governance function alongside standard IR — NeMo Guardrails tuning, LiteLLM policy updates, Hermes Agent capability restrictions may be part of remediation.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of the IR program. Receives Post-Incident Reports for SEV-1 CRITICAL incidents. Reviews annual IR program effectiveness, tabletop exercise results, and incident trends. Approves this policy. For material CRITICAL incidents, Board Chair receives immediate notification and may participate in Executive IRT decisions. |

| Chief Executive Officer (CEO) | Notified of all SEV-1 CRITICAL incidents. Makes final decisions on material customer notifications, media statements, and ransom payment considerations. Represents BFS to regulators at the most senior level during material incidents. Approves this policy jointly with CIO and CISO. |

| Chief Information Officer (CIO) | Accountable for the enterprise IR program. Ensures adequate investment in IR tooling, personnel, and training. Reviews monthly IR metrics. Co-approves major containment actions with broad business impact. Approves this policy jointly with CISO. |

| Chief Information Security Officer (CISO) | Owns the IR program design and execution. Serves as Incident Commander for SEV-1 and material SEV-2 incidents, or designates a qualified IR Lead. Approves IR playbooks. Reviews and signs off on Post-Incident Reports. Approves law enforcement and regulatory notifications. Maintains the Incident Register. Reports IR posture to the Board quarterly. |

| Chief Risk Officer (CRO) | Notified of all SEV-1 and SEV-2 incidents. Assesses enterprise risk implications and ensures incidents are reflected in enterprise risk reporting. Coordinates with CISO on risk-based remediation prioritization. Participates in Executive IRT for material incidents. |

| Data Privacy Officer (DPO) | Leads assessment of personal data breach implications for every SEV-2 and SEV-1 incident. Owns NPC 72-hour notification workflow. Coordinates customer notifications for personal data breaches. Reviews Post-Incident Reports for privacy dimensions. Provides regulatory guidance to IC during active response. |

| Chief Compliance Officer (CCO) | Leads BSP notification workflow for reportable cybersecurity incidents under BSP Circular 1048. Coordinates with other regulators (SEC, BIR) where incidents touch their jurisdiction. Reviews Post-Incident Reports for regulatory compliance implications. |

| Chief Legal Counsel | Participates in Executive IRT for SEV-1 and material SEV-2 incidents. Advises on legal strategy, evidence preservation for legal proceedings, regulatory exposure, and customer/counterparty communications. Approves law enforcement referrals. Manages external counsel engagement. |

| Incident Response Team (IRT) — Core | Technical responders who execute IR actions: SOC analysts (detection, triage, initial response); IT Security engineers (investigation, forensics); IT Operations (containment execution, system rebuild, recovery); infrastructure and application specialists (deep technical response per incident category). |

| IRT — Extended | Functional specialists activated for specific incident types: DPO for personal data incidents; Legal for all HIGH/CRITICAL; Corporate Communications for external-facing; HR for insider incidents; business unit heads for their affected operations; cloud specialists, database specialists, network specialists, application specialists as needed. |

| Corporate Communications | Manages internal and external communications during incidents. Drafts customer notifications, media statements, and internal updates. Coordinates communication timing with Legal and CISO. Maintains media monitoring during active incidents. |

| Human Resources | Participates in insider threat investigations. Coordinates employee actions during personnel-involved incidents. Manages confidentiality of internal investigations. Ensures employee rights are respected during IR actions. |

| Treasury Operations | Responds to wire fraud and BEC incidents — attempts payment recall, coordinates with correspondent banks, manages financial recovery actions. Coordinates with CISO and Legal on fraud incidents. |

| Business Unit Heads | Represent their business units during incidents affecting their operations. Approve or coordinate business-impact decisions (service shutdown, customer communication for their customer base, business process changes). Participate in Post-Incident Reviews. |

| Security Operations Center (SOC) | Operates 24/7 as the primary detection and initial triage function. Declares incidents and assigns initial severity. Activates IRT per the framework. Maintains incident records. Escalates to CISO per procedure. |

| External IR Partners | Retained forensics firms, external counsel, and specialized IR consultancies engaged during incidents exceeding internal capacity. Governed by pre-negotiated retainer agreements. Activated by CISO with CIO approval for material engagements. |

| All Employees | Report suspected security events promptly through established channels (SOC hotline, reporting email). Cooperate with IR investigations. Maintain confidentiality about incidents in progress. Do not attempt self-remediation of suspected security issues — report and defer to IRT. |

| Internal Audit | Independently assesses IR program maturity, playbook currency, exercise effectiveness, notification timeliness, and action item completion. Reports findings to the Audit and Risk Committee annually. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circular 1048 — Cybersecurity Incident Reporting

BSP Circular 1048 and related BSP issuances impose specific cybersecurity incident reporting obligations on BSP-supervised institutions:

Reportable cybersecurity incidents must be reported to BSP within the timelines specified in applicable BSP issuances, typically within 2 hours for major cybersecurity incidents affecting BFS's ability to deliver banking services or protecting customer data;

Reports shall include: incident nature and timeline, affected systems and services, preliminary impact assessment, containment actions taken, and recovery timeline;

Follow-up reports shall be submitted as the incident investigation progresses and upon resolution, including root cause and remediation confirmation;

Implemented by Section 5.6.3 of this policy, with the CCO leading BSP notifications and the CISO providing technical support.

## 9.2  Philippine Data Privacy Act (RA 10173) — 72-Hour NPC Notification

RA 10173 Section 20(f) and NPC Circular 16-03 establish the personal data breach notification framework:

Personal information controllers shall notify NPC within 72 hours from knowledge of a personal data breach that: (a) affects sensitive personal information or other information that may be used to enable identity fraud; or (b) when breach is likely to give rise to real risk of serious harm to data subjects;

The 72-hour clock runs from when BFS has reasonable grounds to believe a personal data breach has occurred — not from confirmation of all facts;

Notification content is specified in NPC Circular 16-03: description of nature of breach, categories and approximate number of data subjects concerned, categories and approximate number of personal data records concerned, likely consequences of the breach, measures taken or proposed to address the breach;

Data subject notification is required when the breach is likely to give rise to real risk of serious harm to data subjects;

Implemented by Sections 5.6.2, 5.6.5, and Procedure 6.3 of this policy, with the DPO leading NPC notifications.

## 9.3  PCI DSS v4.0 Requirement 12.10 — Incident Response Plan

PCI DSS v4.0 Requirement 12.10 mandates a documented, tested incident response plan:

Requirement 12.10.1 — Incident response plan is documented: implemented by this policy and referenced IR playbooks;

Requirement 12.10.2 — Incident response plan is tested at least annually: implemented by Section 5.8 tabletop and full-scale exercise requirements;

Requirement 12.10.3 — Specific personnel are designated to be available 24/7 for incident response: implemented by the 24/7 SOC and IRT on-call rotation;

Requirement 12.10.4 — Appropriate training to staff with incident response responsibilities: implemented by Section 5.1.5 and integration with BFS-ISP-014;

Requirement 12.10.5 — Alerts from security monitoring systems are included in the incident response plan: implemented by Section 5.2 detection integration;

Requirement 12.10.6 — Incident response plan is modified per lessons learned and industry developments: implemented by Section 5.9 continuous improvement.

## 9.4  RA 10175 (Cybercrime Prevention Act) — Criminal Referrals

RA 10175 criminalizes various cyber offenses including illegal access, data interference, system interference, misuse of devices, cyber-squatting, computer-related fraud, identity theft, and cybersex;

BFS incidents involving criminal activity under RA 10175 may warrant law enforcement referral — to NBI Cybercrime Division or PNP Anti-Cybercrime Group as appropriate;

Referrals require Legal Counsel and CISO approval per Section 5.6.7;

Evidence preservation standards (Section 5.5) ensure that potential criminal evidence is admissible in prosecutions.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous SOC monitoring of detection mechanism health;

Daily review of open incident tickets and SLA status by SOC Shift Lead;

Weekly IR metrics review by CISO Office (incident counts by severity, MTTD, MTTR, notification compliance);

Monthly IR Program Status report to CIO and CISO;

Quarterly tabletop exercise completion tracking;

Quarterly Post-Incident Report action item closure review;

Quarterly incident trend analysis presented to Executive IRT;

Annual IR Program effectiveness review by Internal Audit;

Annual playbook review for currency and completeness.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| SEV-1 CRITICAL IRT activation within 15 minutes of severity classification | 100% | Per incident |

| SEV-2 HIGH IRT activation within 1 hour | 100% | Per incident |

| Executive IRT notification within defined SLA by severity | 100% | Per incident |

| Mean Time to Detect (MTTD) for malicious activity | < 4 hours | Quarterly |

| Mean Time to Respond (MTTR) — detection to containment | < 24 hours (overall); < 4 hours SEV-1 | Quarterly |

| NPC 72-hour notification compliance (personal data breaches) | 100% | Per breach |

| BSP notification compliance (reportable incidents) | 100% | Per incident |

| Post-Incident Review completion within 10 business days (SEV-1/SEV-2) | 100% | Per incident |

| Quarterly tabletop exercise completion | Quarterly | Quarterly |

| Annual Executive IRT tabletop completion | Annual | Annual |

| Annual ransomware recovery tabletop completion | Annual | Annual |

| Annual full-scale Purple/Red Team exercise completion | Annual | Annual |

| IRT member annual IR training completion | 100% | Annual |

| Playbook currency (review within 18 months) | 100% of mandatory playbooks | Quarterly |

| Post-Incident Review action item closure within target date | ≥ 90% | Monthly |

| Evidence chain of custody complete for SEV-2+ incidents | 100% | Per incident |

| SOC detection mechanism health (SIEM/EDR/NDR uptime) | ≥ 99.9% | Monthly |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Late submission of incident documentation; failure to attend scheduled tabletop exercise without deferral; late delivery of Post-Incident Report action items. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Failure to report a known security event through proper channels; unauthorized remediation attempt of a suspected incident by non-IRT personnel; breach of incident confidentiality discipline (discussing active incident with unauthorized parties). | Formal warning; mandatory retraining; documented in performance review. |

| Serious | Delaying or failing to activate Executive IRT for SEV-1 incident; making external communications about an active incident without approval; tampering with or destroying evidence during incident response; bypassing Incident Commander authority during active response. | Suspension pending investigation; formal HR disciplinary process up to termination; CISO escalation; potential removal from IR responsibilities. |

| Critical / Legal | Deliberately concealing a reportable incident to avoid regulatory notification; destroying forensic evidence with intent to obstruct investigation; unauthorized disclosure of ongoing incident to external parties including media; coordination with threat actors; misuse of IR authority to cause harm. | Immediate termination; referral to NBI Cybercrime Division or PNP-ACG; prosecution under RA 10175; civil action for damages; mandatory regulatory notification of employee conduct. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Incident response is a time-critical, regulatory-bound activity where exceptions represent acute risk — to BFS's regulatory position, to evidence integrity, and to recovery outcomes. Exceptions to IR requirements are narrowly scoped, tightly time-bounded, and subject to the highest approval authority. Regulatory notification timelines (NPC 72-hour, BSP timelines) are legal obligations and cannot be waived by internal exception.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Condition / Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| Tabletop Exercise Deferral | Critical operational constraint preventing quarterly tabletop on schedule (regulatory examination period, major production event). | 30 days maximum; make-up required | CISO |

| IRT Staffing Gap | Temporary unavailability of specific IRT member due to leave or departure. | Duration of absence; backup designated | CISO Office; named alternate IRT member |

| Playbook Deviation During Active Response | IC determines playbook approach is not optimal for specific incident circumstances. | Duration of incident | IC authority; documented in incident record |

| Evidence Preservation Scope Reduction | Incident scope determined to not warrant full evidence preservation (low severity, no legal/regulatory implications). | Per incident | IC + Legal joint approval; documented |

| Extended IRT Activation Deferral | Specific Extended IRT member unavailable immediately; incident proceeds with Core IRT only. | Initial response phase only | IC authority; Extended member activated when available |

| Post-Incident Report Extension | Complex SEV-1 investigation requires additional time beyond 10 business days. | Extension to 20 business days max | CIO + CISO |

| ABSOLUTE RESTRICTIONS:  No exception may be granted that waives or extends the NPC 72-hour personal data breach notification obligation under RA 10173 Section 20(f); that waives BSP incident reporting obligations under Circular 1048; that waives chain of custody requirements for evidence in incidents involving actual or potential criminal activity; that permits unauthorized external communication about active incidents without CISO and Legal approval; or that permits paying a ransom without CEO, Board, Legal, and law enforcement consultation. |

| --- |

## 11.3  Exception Process

IC or IRT member submits an IR Exception Request via the ITSM portal (during active incidents, via direct CISO communication with subsequent documentation), specifying: specific requirement, justification, alternative controls, duration, and recovery plan.

CISO approves all IR exceptions. During active incidents, CISO may delegate to IC with subsequent review.

Approved exceptions are logged in the incident record and the IR Exception Register.

All exceptions reviewed monthly by CISO Office. Patterns of exceptions indicate program improvement needs.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon:

Significant changes to BFS infrastructure, technology stack, or business operations affecting incident response scope;

Material changes to the threat landscape requiring new playbooks or revised response approaches — emerging ransomware families, novel AI-specific attacks, new regulatory threat guidance;

New or amended BSP circulars, NPC issuances, PCI DSS requirements, or other regulatory requirements affecting incident reporting or response obligations;

Any SEV-1 CRITICAL incident revealing material gaps in the current IR framework (lessons-learned-driven review);

Findings from tabletop exercises, red team engagements, Internal Audit, or regulatory examination identifying material program gaps.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Aligned with CIS Controls v8 Control 17, ISO/IEC 27001:2022, NIST SP 800-61 Rev. 2, PCI DSS v4.0 Req. 12.10, RA 10173 Section 20(f), NPC Circular 16-03, and BSP Circulars 1140 and 1048. | IT Head and Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 17 safeguards to ISO/IEC 27001:2022 Annex A controls, with PCI DSS v4.0 and RA 10173 cross-references.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 17.1 | Designate Personnel to Manage Incident Handling | A.5.24 | Information security incident management planning and preparation | IG1 |

| 17.2 | Establish and Maintain Contact Information for Reporting Security Incidents | A.5.24 | Information security incident management planning and preparation | IG1 |

| 17.3 | Establish and Maintain an Enterprise Process for Reporting Incidents | A.6.8 | Information security event reporting | IG1 |

| 17.4 | Establish and Maintain an Incident Response Process | A.5.24 | Information security incident management planning and preparation | IG2 |

| 17.5 | Assign Key Roles and Responsibilities | A.5.24 | Information security incident management planning and preparation | IG2 |

| 17.6 | Define Mechanisms for Communicating During Incident Response | A.5.26 | Response to information security incidents | IG2 |

| 17.7 | Conduct Routine Incident Response Exercises | A.5.24 | Information security incident management planning and preparation | IG3 |

| 17.8 | Conduct Post-Incident Reviews | A.5.27 | Learning from information security incidents | IG2 |

| 17.9 | Establish and Maintain Security Incident Thresholds | A.5.25 | Assessment and decision on information security events | IG3 |

| N/A | Evidence collection and preservation — chain of custody | A.5.28 | Collection of evidence | All |

| N/A | Use of evidence in legal and disciplinary proceedings | A.5.28 | Collection of evidence | All |

| N/A | Business continuity integration during incident response | A.5.29 | Information security during disruption | All |

| N/A | ICT readiness linkage to incident response | A.5.30 | ICT readiness for business continuity | All |

| N/A | Personal data breach notification — RA 10173 Section 20(f) and NPC Circular 16-03 | A.5.34 | Privacy and protection of PII | All |

| N/A | BSP Circular 1048 — cybersecurity incident reporting | A.5.26 | Response to information security incidents | All |

| N/A | PCI DSS Req. 12.10.1 — documented incident response plan | A.5.24 | Information security incident management planning and preparation | All |

| N/A | PCI DSS Req. 12.10.2 — annual testing of incident response plan | A.5.24 | Information security incident management planning and preparation | All |

| N/A | PCI DSS Req. 12.10.3 — 24/7 designated personnel | A.5.24 | Information security incident management planning and preparation | All |

| N/A | PCI DSS Req. 12.10.4 — incident response training | A.6.3 | Information security awareness, education and training | All |

| N/A | PCI DSS Req. 12.10.5 — detection system integration | A.8.16 | Monitoring activities | All |

| N/A | PCI DSS Req. 12.10.6 — continuous improvement | A.5.27 | Learning from information security incidents | All |

| N/A | RA 10175 — criminal incident law enforcement referrals | A.5.28 | Collection of evidence | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate maturity; IG3 = Advanced. BFS targets full IG2 compliance with IG3 controls (routine IR exercises including Purple Team engagements, defined severity thresholds with executive escalation, integrated continuous improvement cycle) implemented across the IR program.

# APPENDIX B:  Incident Response Playbook Catalog

The following playbook catalog lists all mandatory IR playbooks maintained by BFS. Each playbook is maintained in the IR Runbook Repository and reviewed at the frequency specified. Playbooks are classified CONFIDENTIAL.

| Playbook | Incident Category | Review Frequency | Key Integrations |

| --- | --- | --- | --- |

| PB-001 Ransomware / Destructive Malware | Availability / Integrity | Annual + post-incident | BFS-ISP-010 (Malware); BFS-ISP-011 (Data Recovery) |

| PB-002 Customer Personal Data Breach | Confidentiality | Annual + post-incident | BFS-ISP-003 (Data Protection); NPC Circular 16-03 |

| PB-003 Payment Card Data Compromise | Confidentiality | Annual + post-incident | PCI DSS v4.0; Card brand incident response |

| PB-004 Business Email Compromise / Wire Fraud | Fraud | Annual + post-incident | Treasury ops; BFS-ISP-009 (Email) |

| PB-005 Account Takeover (Customer) | Fraud / Confidentiality | Annual + post-incident | Fraud monitoring; BFS-ISP-005 (IAM); BFS-ISP-006 (Access) |

| PB-006 Account Takeover (Employee) | Confidentiality / Integrity | Annual + post-incident | BFS-ISP-005; BFS-ISP-006; HR |

| PB-007 Distributed Denial of Service (DDoS) | Availability | Annual + post-incident | BFS-ISP-012 (Network); ISP scrubbing service |

| PB-008 ATM Attack | Fraud / Physical | Annual + post-incident | Physical security; BFS-ISP-010; BSP ATM oversight |

| PB-009 Insider Threat / Data Exfiltration | Confidentiality / Integrity | Annual + post-incident | HR; Legal; BFS-ISP-008 (Audit); BFS-ISP-013 (NDR) |

| PB-010 Supply Chain / Third-Party Compromise | Multi-category | Annual + post-incident | BFS-ISP-015 (Service Providers) |

| PB-011 Web / API Application Exploitation | Confidentiality / Integrity | Annual + post-incident | BFS-ISP-016 (AppSec); WAF operations |

| PB-012 Cloud Security Incident | Multi-category | Annual + post-incident | BFS-ISP-006 (Access); AWS security response; GuardDuty |

| PB-013 AI/LLM-Specific Incident | Emerging | Semi-annual (evolving) | MSAMS governance; NeMo Guardrails; LiteLLM policy |

| PB-014 Nation-State / APT Intrusion | Multi-category | Annual + threat-driven | External IR retainer; law enforcement; FS-ISAC |

| PB-015 Physical Security with IT Impact | Confidentiality / Availability | Annual | Physical security; BFS-ISP-003 (Data); device MDM |

| PB-016 Cryptographic Key Compromise | Confidentiality / Integrity | Annual + post-incident | BFS-ISP-003; BFS-ISP-008; HSM operations |

| PB-017 SWIFT / Interbank Fraud | Fraud / Integrity | Annual + post-incident | Treasury; BSP; SWIFT CSP |

| PB-018 Disaster Recovery Activation | Availability | Annual + post-incident | BFS-ISP-011 (Data Recovery); BCP |

# APPENDIX C:  Quick Reference Card

## C.1  Severity Response Quick Reference

| Severity | Activation SLA | IRT Tier | Initial Executive Notification |

| --- | --- | --- | --- |

| SEV-1 CRITICAL | 15 min detect-to-IRT | Core + Extended + Executive | CEO, CIO, CISO, CRO, DPO, Board Chair (multi-channel) |

| SEV-2 HIGH | 1 hour detect-to-IRT | Core + Extended | CIO, CISO, CRO, DPO, Legal |

| SEV-3 MEDIUM | 4 hours detect-to-response | Core | CISO (summary notification) |

| SEV-4 LOW | 24 hours | SOC only | None unless pattern emerges |

## C.2  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| Security incident reporting — primary | Security Operations Center (24/7) | soc@bfs.com.ph \| 24/7 hotline |

| Incident Commander — CRITICAL/HIGH | CISO Office | ciso@bfs.com.ph \| CISO mobile |

| Personal data breach assessment | Data Privacy Officer | dpo@bfs.com.ph |

| BSP incident reporting | Chief Compliance Officer | compliance@bfs.com.ph |

| Legal and evidence handling | Chief Legal Counsel | legal@bfs.com.ph |

| Executive notification — SEV-1 | CISO or delegated IC | Via executive notification procedure |

| External IR retainer activation | CISO with CIO approval | Via IR retainer agreement |

| Law enforcement referral — NBI | Legal Counsel | NBI Cybercrime Division |

| Law enforcement referral — PNP | Legal Counsel | PNP Anti-Cybercrime Group (ACG) |

| Corporate Communications | Head of Communications | communications@bfs.com.ph |

| Treasury (wire fraud recovery) | Treasury Operations | treasury@bfs.com.ph \| 24/7 |

| Card brand notification | Card Operations + CCO | card-ops@bfs.com.ph |

## C.3  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| SEV-1 CRITICAL — IRT activation from severity classification | Within 15 minutes |

| SEV-1 CRITICAL — Executive notification (CEO, Board Chair) | Within 15 minutes |

| SEV-2 HIGH — IRT activation | Within 1 hour |

| SEV-2 HIGH — Executive notification (CIO, CISO, CRO, DPO, Legal) | Within 1 hour |

| SEV-3 MEDIUM — Response initiation | Within 4 hours |

| NPC personal data breach notification | Within 72 hours of BFS awareness |

| BSP major cybersecurity incident notification | Within 2 hours (per BSP issuance) |

| Card brand PCI notification | 24–72 hours (per card scheme) |

| SEV-1 situation updates to Executive IRT | Every 4 hours during active response |

| SEV-2 situation updates | Every 12 hours during active response |

| Post-Incident Review completion (SEV-1/SEV-2) | Within 10 business days of closure |

| Post-Incident Report to Board (SEV-1) | At next scheduled Audit & Risk Committee |

| Evidence preservation initiation (SEV-2+) | Before containment actions altering evidence |

| Tabletop exercise frequency | Quarterly minimum |

| Executive IRT tabletop | Annual |

| Ransomware recovery tabletop | Annual |

| Full-scale Purple/Red Team exercise | Annual |

| IRT member annual IR training | Annual |

| Playbook review cycle | Annual (18 months max) |

| Incident Register retention | 7 years minimum |

| Evidence retention (chain of custody) | 7 years minimum or duration of legal hold |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-017  |  Incident Response Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
