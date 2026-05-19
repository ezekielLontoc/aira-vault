---
title: "BFS-ISP-008-Audit-Log-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Logging-Monitoring-and-Detection/BFS-ISP-008-Audit-Log-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Logging-Monitoring-and-Detection"
aliases:
  - "BFS-ISP-008-Audit-Log-Management-Policy"
creator: "Un-named"
created: "2026-04-11T04:12:00Z"
modified: "2026-04-12T02:36:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>AUDIT LOG MANAGEMENT<br>POLICY<br>Log Collection, Centralized Management, Integrity, Retention, Review, and Forensic Readiness<br>Policy Reference: BFS-ISP-008<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 8)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140  \|  PCI DSS v4.0<br>Companion to BFS-ISP-001 \| BFS-ISP-003 \| BFS-ISP-005 \| BFS-ISP-006 \| BFS-ISP-007 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Audit Log Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-008 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to technology architecture, regulatory requirements, or SIEM platform |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-003 (Data Protection); BFS-ISP-004 (Secure Configuration); BFS-ISP-005 (Account and Access Management); BFS-ISP-006 (Access Control Management); BFS-ISP-007 (Vulnerability Management); BFS-ISP-009 (Incident Response); BFS-ISP-010 (Change Management) |

| Framework Alignment | CIS Controls v8 (Control 8); ISO/IEC 27001:2022 (A.8.15, A.8.16, A.8.17, A.5.33, A.5.34, A.8.9) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirement 10); RA 10175 (Cybercrime Prevention Act); BSP Circular 1048 (MORB Chapter on Cybersecurity); NIST SP 800-92 (Guide to Computer Security Log Management) |

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

This policy establishes the mandatory requirements, governance framework, and operational standards for the collection, centralization, protection, review, retention, and forensic use of audit logs across all BFS Financial Services (hereinafter "the Organization" or "BFS") systems, applications, networks, and environments.

Audit logs are the digital record of events across the BFS enterprise — the foundational evidence base from which threats are detected, security incidents are investigated, regulatory compliance is demonstrated, and fraudulent or unauthorized activity is reconstructed. Without comprehensive, reliable, tamper-evident, and promptly reviewed audit logs, BFS cannot effectively detect security events in real time, conduct credible forensic investigations, demonstrate compliance with regulatory requirements, or hold individuals accountable for their actions on BFS systems.

Critically, the value of audit logs is not merely archival — it is operational. Logs that are collected but never reviewed, that are stored without integrity protection, or that are retained for insufficient periods provide false assurance. This policy mandates not only that logs are collected and retained, but that they are complete, accurate, centralized, protected against tampering, actively reviewed through automated correlation and human analysis, and immediately available for forensic use when required.

This policy directly implements CIS Controls v8, Control 8 (Audit Log Management), encompassing all safeguards from 8.1 through 8.12. It is anchored in ISO/IEC 27001:2022 Annex A controls governing logging, monitoring activities, clock synchronization, protection of records, and privacy protection.

The specific objectives of this policy are to:

Define mandatory log source coverage requirements ensuring that all security-relevant events across all asset types and environments are captured in audit logs;

Establish standards for audit log content — the minimum set of fields and event types that must be present in every log entry to enable effective investigation and correlation;

Mandate centralized log collection and management through a SIEM platform, eliminating log silos and enabling cross-source correlation for threat detection;

Ensure the integrity and tamper-evidence of all audit logs through technical controls preventing modification, deletion, or unauthorized access to log data;

Define mandatory retention schedules for all log categories, aligned with BSP Circular 1140, PCI DSS v4.0, RA 10173, and BFS operational requirements;

Establish time synchronization standards ensuring all log sources use accurate, synchronized time enabling reliable event correlation and forensic reconstruction;

Define log review and alert response procedures ensuring that audit logs are actively used for threat detection, not merely collected;

Support forensic investigation and regulatory examination through audit-quality log records available on demand with documented chain of custody;

Ensure compliance with all applicable regulatory log management obligations, including PCI DSS Requirement 10, BSP Circular 1140, and RA 10173 processing records requirements.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all BFS personnel, systems, and third parties involved in the generation, collection, transmission, storage, review, or analysis of audit logs, including:

All BFS employees in IT Operations, Information Security, Application Development, DevSecOps, and Compliance functions;

Contractors, managed service providers, and cloud service providers hosting or managing BFS systems that generate audit logs;

Third-party Security Operations Center (SOC) or SIEM service providers where BFS has outsourced log management functions;

All BFS personnel involved in security investigations, compliance audits, or regulatory examinations that require access to audit log data.

## 2.2  Log Source Scope

This policy requires audit log generation and collection from all of the following source categories:

### 2.2.1  Operating Systems and Endpoints

Windows servers: Security Event Log (authentication, account management, privilege use, process creation, object access, policy change, system events);

Linux/Unix servers: syslog, auth.log, audit daemon (auditd) — authentication, sudo usage, file access, process execution;

macOS endpoints: Unified Log, security events via EDR agent;

All managed endpoints via EDR agent telemetry.

### 2.2.2  Network Infrastructure

Firewalls and NGFWs: permit/deny events, session establishment, rule hits, administrator actions;

Routers and switches: configuration changes, authentication events, interface state changes;

VPN gateways: connection establishment, disconnection, authentication success/failure, MFA events;

Wireless infrastructure: association, authentication, WIDS/WIPS events, rogue AP detection;

Network Access Control (NAC): posture assessment results, quarantine events, admission decisions;

Load balancers and proxies: request logs, TLS inspection events.

### 2.2.3  Applications and Middleware

Core banking system: all transaction events, administrative actions, user session events, configuration changes;

Internet banking and mobile banking platforms: user authentication, transaction initiation, session events, failed access attempts;

Payment processing systems and ATM management platforms: all financial transactions, administrative events, fault and error events;

Enterprise applications (ERP, HRIS, CRM): user logon/logoff, access to sensitive records, data export events, administrative changes;

Web application servers: HTTP access logs, error logs, WAF events;

API gateways: all API calls — request, response code, authentication result, rate limit events;

Database management systems: authentication, DDL and privileged DML statements, failed queries, administrative actions.

### 2.2.4  Security Tools and Platforms

PAM platform: privileged session start/end, credential checkout, session recording metadata, break-glass activations;

Identity Provider (IdP): authentication attempts, MFA events, SSO sessions, user provisioning events;

EDR platform: detections, quarantine events, policy changes, agent health status;

DLP platform: policy match events, blocking decisions, exceptions;

Vulnerability scanner: scan executions, finding summaries, credential usage events;

CSPM platform: compliance findings, configuration changes, policy violations.

### 2.2.5  Cloud Platforms

AWS CloudTrail: all AWS API calls across all accounts and all regions — management events, data events for sensitive resources (S3, RDS, Secrets Manager);

AWS CloudWatch Logs: application logs, Lambda function logs, EKS/container logs;

AWS VPC Flow Logs: all VPC network flow records;

AWS Config: configuration change records and compliance evaluation results;

AWS GuardDuty: threat detection findings;

Cloud IAM events: role assumption, policy changes, key creation/deletion.

### 2.2.6  Physical and Access Control Systems

Physical access control systems (badge readers): entry/exit events, access denials, door forced-open alarms;

CCTV systems: camera health status, motion detection events (metadata only; video footage governed separately);

Data center access logs: physical rack and cage access events.

## 2.3  Environmental Scope

This policy applies to all BFS environments — production, pre-production, development, testing, disaster recovery, and training — across all hosting models. Production environments have the highest log priority; non-production environments must generate and retain logs sufficient to support security incident investigation and audit requirements applicable to that environment.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Audit Log | A chronological, tamper-evident record of events and actions performed by users, systems, applications, or processes, captured for the purposes of security monitoring, compliance demonstration, forensic investigation, and accountability. |

| Log Source | Any system, application, device, or service that generates audit log records. Each log source has defined event types, log formats, and forwarding configurations. |

| Log Entry | A single record within an audit log, representing one discrete event. A complete log entry contains: timestamp, event type, source identity, source IP/asset, target resource, action performed, and outcome (success/failure). |

| Log Aggregation | The process of collecting log records from multiple distributed log sources and consolidating them into a centralized repository for unified storage, search, and analysis. |

| Log Normalization | The process of converting log records from diverse source formats (syslog, Windows Event Log, CEF, JSON, etc.) into a standardized, consistent schema that enables cross-source correlation and analysis. |

| SIEM (Security Information and Event Management) | A platform that aggregates, normalizes, correlates, and analyzes log data from across the enterprise in real time, enabling detection of security threats, generation of alerts, and forensic investigation. The SIEM is the authoritative centralized log management platform for BFS. |

| Correlation Rule | A logic-based rule within the SIEM that analyzes patterns across multiple log events to detect security-relevant conditions that individual events would not reveal — for example, multiple failed authentication attempts followed by a successful login (brute force indicator). |

| Log Integrity | The assurance that audit log records have not been modified, deleted, or tampered with after creation. Log integrity is maintained through technical controls including write-once storage, cryptographic hashing, and access controls preventing log modification. |

| WORM Storage | Write Once, Read Many — a storage technology that prevents modification or deletion of stored data after initial write, providing tamper-evident storage for audit logs and other immutable records. |

| Log Retention | The defined minimum and maximum periods for which audit log records must be preserved before they may be securely disposed of, determined by regulatory, legal, forensic, and operational requirements. |

| Log Forwarding | The transmission of log records from a log source to the centralized SIEM or log management platform, using secure, encrypted, and authenticated channels. |

| Log Collector / Agent | Software deployed on endpoints, servers, or network devices to collect log events locally and forward them to the SIEM in real time or near-real time. Agents provide more reliable coverage than network-based log collection. |

| NTP (Network Time Protocol) | A protocol used to synchronize the clocks of computer systems across a network. Accurate, synchronized time is essential for correlating log events across sources and establishing forensically sound event timelines. |

| Time Skew | The difference between a system's clock and the authoritative time source. Excessive time skew (typically greater than one second for security purposes) causes log timestamps to be unreliable for event correlation and forensic analysis. |

| Log Review | The active examination of audit log records — whether through automated SIEM correlation, rule-based alerting, or human analysis — to identify security-relevant events, anomalies, or indicators of compromise. |

| Alert | A notification generated by the SIEM (or another monitoring tool) when a correlation rule or threshold is triggered, indicating a potentially security-relevant event requiring analyst investigation. |

| False Positive | An alert or detection that incorrectly identifies benign activity as a security event. A high false positive rate degrades analyst effectiveness and may cause genuine threats to be missed. |

| Chain of Custody | The documented, unbroken record of who has had possession of, or access to, forensic evidence (including audit logs) from the time of collection through analysis and legal use, establishing the evidence's integrity and admissibility. |

| Log Enrichment | The process of augmenting raw log data with additional contextual information — such as asset classification, user identity details, threat intelligence, geolocation, and vulnerability data — to improve the investigative and detection value of log records. |

| Syslog | A standard protocol (RFC 5424) for transmitting event notification messages from network devices, servers, and applications to a centralized log management system. Syslog over TLS (RFC 5425) provides encrypted log forwarding. |

| CEF (Common Event Format) | A standardized log format developed by ArcSight, widely used to express security event data in a consistent structure facilitating interoperability between security tools and SIEM platforms. |

| Log Gap | A period during which log data from a source is absent from the SIEM — due to agent failure, network disruption, configuration error, or deliberate tampering. Log gaps are security-relevant events requiring investigation. |

| Privileged Log Access | Access to raw audit log data, SIEM search capabilities, or log export functions. Privileged log access is itself subject to logging and access control, as adversaries may attempt to access or delete logs to cover their tracks. |

| Legal Hold | A directive requiring that specified log records be preserved beyond normal retention periods due to active or anticipated legal proceedings, regulatory investigation, or regulatory examination. |

# 4.  AUDIT LOG MANAGEMENT ARCHITECTURE

BFS's audit log management architecture is built on a centralized, layered model that ensures complete coverage, real-time collection, integrity protection, and active use of log data for security operations and compliance.

| Layer | Component | Function | BFS Implementation |

| --- | --- | --- | --- |

| L1 — Generation | Log Sources | Every asset generates comprehensive audit log events covering all security-relevant activity. | Mandatory log source coverage per Section 2.2; EDR agents; OS audit policy; application logging frameworks. |

| L2 — Collection | Log Agents / Forwarders | Lightweight agents on endpoints and servers collect and forward logs to the SIEM in real time. Agentless syslog forwarding used where agents are not supported. | Deployed on all managed servers and endpoints; syslog-TLS for network devices and appliances. |

| L3 — Transport | Secure Log Channel | Encrypted, authenticated transport of log data from sources to the SIEM, preventing interception or tampering in transit. | TLS 1.2+ encrypted log forwarding; agent authentication via certificate; network-level isolation for log traffic. |

| L4 — Aggregation | Log Collector / Indexer | Receives, parses, normalizes, and indexes log data from all sources into a unified, searchable data store. | SIEM platform with dedicated log indexing infrastructure; hot-warm-cold storage tiering. |

| L5 — Enrichment | Context Engine | Augments log records with asset classification, user identity details, threat intelligence, geolocation, and vulnerability data. | CMDB integration; IdP identity enrichment; threat intel feed integration; EPSS/CVE correlation. |

| L6 — Correlation | SIEM Rules Engine | Applies correlation rules across enriched log data to detect security events, behavioral anomalies, and policy violations in real time. | Active correlation rule library (Section 5.7); UEBA behavioral analytics; alert escalation to SOC. |

| L7 — Storage | Log Archive | Long-term, immutable storage of all log records for retention periods defined in Section 5.6. Protected against modification and deletion. | WORM-compliant storage for CRITICAL and compliance logs; encrypted cold storage; integrity checksumming. |

| L8 — Access | Log Access Control | Strict, role-based access to log data; all log access events are themselves logged and auditable. | RBAC on SIEM; read-only access for analysts; privileged access for SIEM admins via PAM; access logged. |

## 4.1  Mandatory Log Event Types by Source Category

The following table defines the mandatory event types that must be captured and forwarded to the SIEM for each log source category. This represents the minimum required coverage; additional event types may be configured based on risk assessment and threat intelligence.

| Source Category | Mandatory Event Types |

| --- | --- |

| Operating Systems | User logon / logoff (all types); failed authentication (all types); account creation, modification, deletion, lockout; privilege escalation and sudo/RunAs events; process creation (with command line); service installation and changes; system startup / shutdown / restart; security policy changes; scheduled task creation/modification; remote logon events; file/object access (for sensitive paths); registry modification (Windows). |

| Network Devices | Administrator logon / logoff / failed authentication; configuration changes (with before/after state); interface up/down; ACL / firewall rule changes; routing table changes; VPN session establishment and termination; SNMP authentication failures; NTP synchronization events. |

| Firewalls and NGFW | All permit and deny decisions for inter-zone traffic; connection state events for CRITICAL system traffic; IPS / IDS alert triggers; administrator authentication and configuration changes; firmware updates; rule base modifications. |

| Web Applications | User authentication (success and failure); session creation, termination, and timeout; authorization failures (403 errors); administrative actions within the application; data export and bulk download events; password change and reset events; input validation failures (WAF events); API authentication and authorization decisions. |

| Databases | User authentication (success and failure); DDL statements (CREATE, DROP, ALTER, TRUNCATE); privileged DML statements (INSERT, UPDATE, DELETE on sensitive tables); stored procedure execution; administrative commands; failed queries above threshold; user creation, alteration, deletion; grant and revoke privilege events; database link activity; bulk data export events. |

| PAM Platform | Credential checkout and check-in (user, account, timestamp, duration); privileged session start and end; session recording metadata; break-glass account activation; failed authentication to PAM vault; PAM policy changes; credential rotation events; just-in-time access approval and activation. |

| Identity Provider (IdP) | All authentication events (success and failure); MFA events (challenge, success, failure, bypass); SSO session initiation and termination; user account provisioning and deprovisioning; role and group assignment changes; conditional access policy decisions; password resets and changes; token issuance and revocation. |

| Cloud Platform (AWS) | All AWS API calls via CloudTrail (all management events, data events for S3/RDS/Secrets Manager); IAM policy changes; root account usage; Security Group and NACL changes; CloudTrail configuration changes (any disable attempt generates CRITICAL alert); S3 bucket policy changes; KMS key usage and management events; VPC Flow Logs for all interfaces; GuardDuty findings. |

| Email Systems | User authentication; email delivery, rejection, and quarantine events; DLP policy matches on email content; auto-forward rule creation; mass email events; administrative configuration changes; email gateway rule modifications. |

| ATM and Payment Systems | All financial transaction events (successful and failed); administrative logon and configuration access; hardware fault and tamper events; cash cassette access; communication events between ATM and switch; card reader events; all privileged management actions; remote management sessions. |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, systems, and environments within scope. Non-compliance is subject to enforcement as defined in Section 10.

## 5.1  Mandatory Log Generation

PS-1.1  All systems, applications, devices, and platforms within the scope of this policy shall be configured to generate audit logs covering the mandatory event types defined in Section 4.1. Log generation shall be enabled before the system is deployed into any BFS environment and shall remain continuously active throughout the system's operational life.

PS-1.2  Audit logging shall not be disabled, suspended, or reduced in scope on any production system without a formal, CISO-approved exception. Any attempt to disable, modify, or suppress logging on a production system without authorization shall generate an immediate SIEM alert and be investigated as a security incident.

PS-1.3  Application development teams shall ensure that all BFS-developed applications include comprehensive audit logging from their initial release, with logging requirements defined during the design phase of the Secure Software Development Lifecycle (SSDLC). Logging shall not be treated as a post-deployment enhancement.

PS-1.4  Log verbosity levels on all production systems shall be set to capture all security-relevant events as defined in Section 4.1. Logging levels shall not be reduced from their approved baseline without CISO approval, even in response to storage capacity or performance concerns — the appropriate remediation is to increase logging capacity or optimize log forwarding, not to reduce coverage.

## 5.2  Mandatory Log Content — Required Fields

PS-2.1  Every audit log entry shall contain, at minimum, the following fields to support forensic investigation and event correlation:

Timestamp: accurate to the millisecond, in UTC or with explicit timezone offset, synchronized to the BFS NTP authority;

Event Type / Category: standardized event identifier enabling correlation across sources;

Source Identity: the authenticated user account, service account, or system identity responsible for the action;

Source Host / IP Address: the hostname or IP address from which the action originated;

Target Resource: the system, file, record, application, or service that was accessed or modified;

Action / Operation: the specific action performed (logon, read, write, delete, execute, modify, etc.);

Outcome: success or failure of the action;

Additional Context: where available — process ID, session ID, transaction ID, command line, and request parameters (sanitized of credential data).

PS-2.2  Log entries shall not contain cleartext passwords, authentication credentials, encryption keys, full payment card numbers (PAN), or full Sensitive Personal Information (SPI) as defined under RA 10173. Applications shall sanitize log output to exclude sensitive data fields before log records are written. Log sanitization mechanisms shall be tested during development and verified during security testing.

PS-2.3  Where a log source cannot natively produce all required fields, log enrichment shall be applied during ingestion into the SIEM to supplement missing fields from authoritative sources (CMDB, IdP, asset inventory).

## 5.3  Centralized Log Collection and SIEM

PS-3.1  All log sources within the scope of this policy shall forward their audit logs to the BFS centralized SIEM platform in real time or near-real time. Log silos — where audit logs are retained only on the originating system with no forwarding to the SIEM — are prohibited for any system classified as CONFIDENTIAL or higher, or any system generating security-relevant events.

PS-3.2  Log forwarding shall be implemented using encrypted channels (TLS 1.2 minimum). Log transmission shall be authenticated — log sources shall authenticate to the log collector using approved credentials or certificates. Unauthenticated, unencrypted syslog forwarding is prohibited for all systems except where technical constraints make it unavoidable and the network path is fully isolated (documented exception required).

PS-3.3  The SIEM platform shall be configured to alert on log source inactivity — specifically, when a previously active log source has not forwarded any events within a defined inactivity threshold. Log source inactivity is a security-relevant event that may indicate: logging suppression, agent failure, system compromise, or network disruption. SIEM inactivity alerts shall be investigated within four (4) hours.

PS-3.4  Log coverage metrics — the percentage of in-scope log sources actively forwarding to the SIEM — shall be monitored continuously and reported monthly. Log coverage below ninety-five percent (95%) shall generate an escalation to the CISO.

PS-3.5  The SIEM platform shall be sized, architected, and capacity-planned to ingest and process the full log volume from all in-scope sources without data loss, queuing delays exceeding five (5) minutes, or forced throttling of critical log sources. SIEM capacity shall be reviewed semi-annually.

PS-3.6  The SIEM platform shall be subject to the same security controls as a CRITICAL system — including hardening per BFS-ISP-004, privileged access management, session recording for administrator access, and its own logs forwarded to a secondary log repository for tamper-evidence.

## 5.4  Time Synchronization

PS-4.1  All BFS systems generating audit logs shall synchronize their clocks to BFS-approved, authoritative NTP sources at all times. Systems with unsynchronized clocks generate unreliable log timestamps, undermining correlation and forensic analysis. Clock synchronization is not optional.

PS-4.2  BFS shall maintain a hierarchical NTP infrastructure: Stratum 1 NTP servers synchronized to GPS or atomic clock sources serve as the authoritative time base; Stratum 2 BFS-internal NTP servers distribute time to all BFS assets. All BFS assets shall be configured to synchronize only to BFS-internal NTP sources — not to public NTP servers — except for the Stratum 2 servers themselves.

PS-4.3  Maximum permissible time skew between any BFS system's clock and the authoritative NTP source is one hundred milliseconds (100 ms) for servers and five hundred milliseconds (500 ms) for endpoints. Systems exceeding these thresholds shall generate a SIEM alert and be investigated. Systems with clock skew exceeding five (5) seconds shall be quarantined from network access pending clock correction, as their logs cannot be reliably correlated.

PS-4.4  NTP synchronization status shall be monitored continuously for all CRITICAL and CONFIDENTIAL systems, and at least daily for all other in-scope systems. NTP failures shall generate SIEM alerts.

PS-4.5  All log entries shall record timestamps in UTC format with millisecond precision. Where a system natively records in local time, the log forwarding agent shall convert timestamps to UTC before ingestion into the SIEM. Mixing of timezones within the SIEM is prohibited.

## 5.5  Log Integrity and Tamper Evidence

PS-5.1  Audit logs shall be stored in a manner that prevents unauthorized modification, deletion, or tampering. Log integrity protection shall be implemented using one or more of the following mechanisms, applied proportionate to the log classification:

WORM (Write Once, Read Many) storage for logs from CRITICAL systems and all compliance-required logs (PCI CDE, core banking, payment systems);

Cryptographic hashing of log files upon collection (SHA-256 minimum) with hash values stored separately and independently, enabling detection of any post-collection modification;

Log forwarding to an immutable, write-restricted centralized repository where log source systems do not have write access after initial forwarding;

Blockchain or distributed ledger-based log integrity solutions where technically feasible and operationally appropriate.

PS-5.2  Access to raw log storage (the SIEM data store and log archives) shall be strictly controlled and limited to: SIEM administrators (via PAM with session recording), authorized security analysts (read-only), and Internal Audit (read-only for compliance purposes). Write or delete access to stored log data is prohibited except for automated lifecycle management (archival, tier migration) under documented system processes.

PS-5.3  SIEM administrator actions — including configuration changes, rule modifications, user account management, and data deletion or archival operations — shall themselves be logged and stored in a separate, independently protected log repository inaccessible to SIEM administrators. This prevents SIEM administrators from covering their tracks by modifying SIEM configuration logs.

PS-5.4  Any attempt to access, modify, export, delete, or disable log storage shall generate an immediate SIEM alert. Confirmed unauthorized log access or modification events shall be treated as CRITICAL security incidents and escalated to the CISO immediately.

PS-5.5  Log integrity verification — confirming that stored log files match their recorded checksums — shall be performed at least monthly for all archived log files. Integrity verification failures shall be investigated as potential evidence tampering events.

## 5.6  Log Retention

PS-6.1  Audit logs shall be retained for the periods defined in the BFS Log Retention Schedule (Appendix B), which represents the minimum periods. The overall retention principle is: twelve (12) months of online (hot/warm) storage for all logs, plus long-term archive (cold) storage for the periods specified by log category. Log archives shall be encrypted and stored in geographically separated facilities or cloud regions.

PS-6.2  The following minimum retention periods are mandatory for all BFS log categories:

Authentication and access logs (all systems): 12 months online; 36 months archive;

Privileged access and PAM session logs: 12 months online; 36 months archive;

Core banking and payment system transaction logs: 12 months online; 84 months (7 years) archive;

Network firewall and perimeter logs: 12 months online; 36 months archive;

Cloud platform audit logs (AWS CloudTrail, VPC Flow Logs): 12 months online; 36 months archive;

Security tool logs (EDR, IDS/IPS, DLP, SIEM): 12 months online; 36 months archive;

ATM and card management system logs: 12 months online; 84 months (7 years) archive;

Physical access control logs: 12 months online; 36 months archive.

PS-6.3  Log retention periods shall not be reduced below the minimum periods defined in Section 5.6.2, even where storage costs create pressure. Storage cost management shall be achieved through log tiering (hot/warm/cold), compression, and deduplication — not through premature log deletion.

PS-6.4  Legal holds shall suspend all automated log disposal for specified log sources and time periods. The Legal and Compliance function shall notify the SIEM/log management team of legal hold requirements, and the SIEM team shall confirm preservation within twenty-four (24) hours of notification.

PS-6.5  Upon expiry of the defined retention period (or legal hold), logs shall be securely disposed of using cryptographic erasure (for cloud and encrypted storage) or physical media destruction (for offline storage). Log disposal shall be logged as an administrative event in the SIEM.

## 5.7  SIEM Correlation Rules and Alert Management

PS-7.1  The SIEM shall be configured with an active library of correlation rules designed to detect security-relevant events and behavioral patterns across the log data. The correlation rule library shall be maintained by the IT Security team, reviewed quarterly, and updated in response to threat intelligence, penetration test findings, and incident post-mortems.

PS-7.2  At minimum, the SIEM shall include active correlation rules covering the following threat categories:

Authentication attacks: brute force (multiple failed logins in a defined window), credential stuffing, password spraying, impossible travel (authentication from geographically improbable successive locations), and first-time login from a new country;

Privilege escalation and account abuse: use of privileged accounts outside approved hours, privilege escalation not via PAM, use of dormant accounts, new local administrator account creation;

Lateral movement: logon events from unexpected source systems, abnormal SMB traffic, pass-the-hash/pass-the-ticket indicators, unusual process spawning patterns;

Data exfiltration indicators: large outbound data transfers, access to bulk data outside normal working hours, DLP policy triggers, unusual database query volumes or exports;

Persistence mechanisms: new scheduled tasks, new services, registry run-key modifications, abnormal startup items;

Command and control indicators: DNS tunneling signatures, anomalous outbound connection patterns, connections to threat intelligence-flagged IPs/domains;

Log tampering indicators: log source inactivity, SIEM configuration changes, audit policy changes, log file deletion events;

Cloud-specific threats: CloudTrail disabled, root account usage, unusual IAM policy changes, S3 bucket policy changes, mass data download from cloud storage;

ATM and payment threats: unusual transaction volumes, off-hours ATM maintenance access, repeated card PIN failures, ATM tamper events, communication anomalies;

Physical security: forced door events, access outside approved hours for sensitive areas, badge replay events (same badge two entries without exit).

PS-7.3  SIEM alerts shall be classified into severity tiers (CRITICAL, HIGH, MEDIUM, LOW) based on the risk posed by the detected event. The SOC shall respond to alerts within the timeframes defined in Section 6.3. False positive rates shall be monitored — correlation rules with a false positive rate exceeding twenty percent (20%) shall be reviewed and tuned within ten (10) business days.

PS-7.4  SIEM correlation rules shall be tested for effectiveness at least quarterly using purple team exercises or synthetic event injection. Rules that fail to detect their intended threat scenario shall be remediated. New detection requirements identified from penetration tests or security incidents shall be implemented as SIEM rules within thirty (30) business days.

## 5.8  Log Review and Active Monitoring

PS-8.1  Audit logs shall be actively reviewed through a combination of automated SIEM correlation (continuous) and human analyst review (scheduled and on-demand). Audit logs shall not be considered a compliance artifact only — they are an operational security tool requiring continuous, active use.

PS-8.2  The Security Operations Center (SOC) shall monitor SIEM alerts continuously (24 hours per day, 7 days per week, 365 days per year). SOC coverage shall be maintained through staffed shifts or an outsourced/co-managed SOC arrangement meeting the continuous coverage requirement.

PS-8.3  The following log review activities shall be conducted at minimum at the defined frequencies:

Real-time: automated SIEM correlation rule alerts — investigated within SLAs defined in Section 6.3;

Daily: SOC analyst review of the previous day's high-priority alerts not auto-closed; log source health check for coverage gaps;

Weekly: IT Security Manager review of weekly threat summary report; review of new CRITICAL and HIGH alerts; firewall rule hit analysis for anomalous patterns;

Monthly: CISO review of VM KRI report including log coverage metrics; access log review for CRITICAL systems; privileged account activity summary;

Quarterly: full correlation rule effectiveness review; false positive rate analysis; log coverage gap assessment; log retention compliance verification.

PS-8.4  Log review activities shall be documented. SOC analysts shall record their findings from alert investigation in the ITSM incident management system, even for alerts determined to be benign, to provide a documented trail of analyst activity.

## 5.9  Forensic Log Use and Chain of Custody

PS-9.1  Audit logs shall be maintained in a state of forensic readiness — capable of being produced on demand for security incident investigation, internal audit, regulatory examination, or legal proceedings without delay. Forensic readiness requires that logs are complete, indexed, searchable, integrity-verified, and retained per the schedules in Section 5.6.

PS-9.2  When audit logs are required for a security investigation, regulatory examination, or legal proceeding, a documented request shall be submitted to the SIEM administrator. Log extraction shall be authorized by the CISO or designate, performed with dual-person oversight, and the extraction event logged.

PS-9.3  Extracted log records shall be accompanied by a Chain of Custody document recording: extraction date and time, extracted data scope (source, date range, event types), extracted file hash values, the identity of the extracting officer, and the purpose of extraction. Chain of Custody documentation shall be retained with the extracted log evidence.

PS-9.4  Audit logs produced for regulatory examinations (BSP, NPC, PCI QSA) shall be provided in a format specified by the regulator, with supporting documentation of the log management system's configuration, integrity controls, and chain of custody.

PS-9.5  BFS shall designate a SIEM Forensic Officer role (assigned to a named individual or team) with defined responsibilities for log evidence production, chain of custody maintenance, and liaison with law enforcement or regulatory investigators where required.

## 5.10  Log Data Privacy

PS-10.1  Audit logs may contain personal data and Sensitive Personal Information (SPI) of customers, employees, and third parties — including usernames, IP addresses, transaction records, access events, and communication metadata. Log data containing personal information shall be treated as CONFIDENTIAL and subject to all applicable data protection requirements of BFS-ISP-003 and RA 10173.

PS-10.2  Access to audit logs containing personal data shall be limited to personnel with a documented security, compliance, or legal need. Bulk log exports containing personal data shall require CISO and DPO approval.

PS-10.3  Log data containing personal data shall not be used for purposes other than those for which it was collected (security monitoring, incident investigation, compliance demonstration, legal proceedings) without DPO approval confirming a compatible secondary purpose. Log data shall not be used for HR performance monitoring, marketing, or business analytics without separate explicit legal basis and DPO sign-off.

PS-10.4  Log retention periods shall not exceed what is necessary for the defined security and compliance purpose. Where log data contains personal data, retention periods shall be reviewed by the DPO to confirm alignment with RA 10173 data minimization and storage limitation principles.

# 6.  PROCEDURES

## 6.1  New Log Source Onboarding Procedure

Every new system or application deployed into the BFS environment shall complete the following log onboarding procedure before going into production:

Log Requirements Definition: During the design phase, the application or system owner, in consultation with IT Security, defines the required log event types, log format, forwarding method, and enrichment requirements for the new source.

Logging Configuration: IT Operations or the DevSecOps team configures logging on the new asset at the approved verbosity level, generating all mandatory event types defined in Section 4.1 for the asset category.

Log Forwarding Configuration: A log forwarding agent is deployed (or syslog-TLS forwarding configured for agentless sources). The forwarding channel is tested end-to-end — from source to SIEM ingestion.

SIEM Parsing Rule: IT Security or SIEM Engineering creates or validates a parsing rule to correctly extract structured fields from the new source's log format. The parsing rule is tested against sample log events.

Coverage Verification: IT Security confirms that the new source is appearing in the SIEM, that logs are being received in real time, that all mandatory event types are present, and that timestamps are correctly synchronized.

Source Registration: The new log source is registered in the SIEM Log Source Inventory with: source name, asset CMDB ID, log format, event types, forwarding method, expected events per day, and assigned owner.

Alerting Configuration: Relevant SIEM correlation rules are updated or enabled for the new source. Source-specific alerting thresholds are configured.

Baseline Establishment: A seven (7) day baseline observation period is run for the new source to establish normal event volume and pattern baselines for anomaly detection.

## 6.2  Log Gap Investigation Procedure

The following procedure applies when a log coverage gap is detected — a period during which a log source has stopped forwarding events to the SIEM:

Detection: SIEM inactivity alert fires when a registered log source has not forwarded events within the defined inactivity threshold (typically 15 minutes for CRITICAL sources; 1 hour for standard sources).

Initial Triage (within 30 minutes): SOC analyst determines whether the gap is due to: (a) expected scheduled maintenance (change record present — close alert); (b) expected network maintenance; (c) unexpected technical failure; or (d) potentially malicious suppression.

Technical Investigation: IT Operations investigates the log forwarding agent or syslog configuration on the affected source. Common causes: agent service stopped, network partition, disk full on source system, firewall rule change blocking log traffic.

Security Assessment: If no technical cause is identified, IT Security treats the gap as a potential security incident — adversaries may disable logging to cover their tracks. The affected asset is placed under enhanced monitoring and the CISO is notified.

Gap Documentation: The gap period (start time, end time, affected source), root cause, and any security assessment performed are documented in the ITSM as a log coverage incident.

Remediation: Log forwarding is restored. The affected system is reviewed for security events during the gap period using alternative detection methods (EDR telemetry, network flow data, application logs from adjacent systems).

Gap Analysis Report: For gaps exceeding two (2) hours on CRITICAL or CONFIDENTIAL systems, a formal gap analysis report is submitted to the CISO within twenty-four (24) hours.

## 6.3  SOC Alert Response SLAs and Procedure

| Alert Severity | Definition | Initial Response SLA | Response Actions |

| --- | --- | --- | --- |

| CRITICAL | Confirmed or highly probable active attack; exploited vulnerability; account compromise in progress; critical system breach indicator; active data exfiltration; log tampering attempt. | Immediate (within 15 minutes) | Escalate to CISO within 15 minutes; initiate incident response (BFS-ISP-009); isolate affected asset if required; begin evidence preservation; notify on-call security engineer. |

| HIGH | Probable attack activity; suspicious privileged access; unusual data access pattern; significant policy violation; active malware indicator; anomalous lateral movement. | Within 1 hour | Analyst investigation; escalation to IT Security Manager; open ITSM incident; conduct initial containment assessment; document findings. |

| MEDIUM | Possible attack preparation; policy violation without confirmed malicious intent; anomalous user behavior; reconnaissance indicators; unusual access pattern. | Within 4 hours | Analyst investigation; document findings in ITSM; escalate to HIGH if investigation reveals attack indicators; notify system owner if account-related. |

| LOW | Informational security event; minor policy deviation; benign anomaly; single isolated event with low risk context. | Within 24 hours | Analyst review; document outcome (benign/false positive/noted); tune rule if false positive; close ticket. |

## 6.4  Log Retention Lifecycle Procedure

The following procedure governs the full lifecycle of audit log data from collection through disposal:

Hot Storage (0–12 months): All log data is stored in the SIEM's primary indexed storage, fully searchable and available for real-time correlation and analyst investigation.

Warm Storage Migration (months 7–12): Logs older than six (6) months that are not subject to active investigation or legal hold are automatically migrated to compressed, lower-cost warm storage, remaining searchable but with slightly increased query latency.

Cold Archive Migration (month 13 onward): At twelve (12) months, logs are migrated to cold archive storage (encrypted, WORM-compliant). Cold archive logs are not directly searchable from the SIEM interface — retrieval requires a formal extraction request.

Archive Integrity Verification: Upon archival, log files are checksummed (SHA-256). Checksums are stored in a separate integrity database. Monthly integrity checks compare stored log files against their checksums.

Legal Hold Override: If a legal hold applies, automated archival and disposal workflows are suspended for the specified scope. The log management system maintains a legal hold registry. Logs under legal hold are flagged and excluded from all disposal processing.

Retention Expiry: At the defined retention expiry date (Appendix B), logs not under legal hold are scheduled for secure disposal. Disposal is authorized by the CISO or designate. The disposal event is logged in the SIEM administrative log.

Secure Disposal: Log files are disposed of using cryptographic erasure (for cloud or encrypted storage) or certified physical destruction (for tape or physical media). Disposal certificates are retained for three (3) years.

## 6.5  Log Evidence Production Procedure

When audit log records are required for a security investigation, regulatory examination, legal proceeding, or audit:

Formal Request: The requesting party (CISO, Internal Audit, Legal, BSP examiner, PCI QSA) submits a formal Log Evidence Request to the SIEM Forensic Officer, specifying: the log sources required, the time range, the event types, the format required, and the purpose.

Authorization: The CISO or designate reviews and authorizes the request. Authorization is recorded in the SIEM administrative log.

Dual-Person Extraction: The SIEM Forensic Officer, with a witness present (IT Security Manager or Internal Audit representative), performs the log extraction from the SIEM or cold archive.

Integrity Verification: Before providing the extracted logs, the SIEM Forensic Officer verifies the integrity of the extracted log files by comparing file hashes against the stored checksums. Hash verification results are documented.

Chain of Custody Documentation: A Chain of Custody document is completed recording: extraction date/time, extracted scope, file hashes, extracting officer identity, witness identity, and the purpose of extraction.

Secure Handover: The extracted log evidence is provided to the requesting party via a secure, encrypted channel or physical secure media. The Chain of Custody document accompanies the evidence.

Access Event Logging: The entire evidence production event is logged in the SIEM administrative log and the ITSM incident or audit record.

# 7.  GUIDELINES

## 7.1  SIEM Architecture and Capacity Planning Guidelines

Hot/Warm/Cold Tiering: BFS shall implement log storage tiering — hot (immediately searchable, full indexing), warm (compressed, searchable with latency), and cold (archived, integrity-protected, retrievable on request). Tiering reduces cost while maintaining forensic availability within defined retrieval SLAs.

Events Per Second (EPS) Capacity: The SIEM shall be sized to handle peak EPS load (expected peak plus 100% headroom) without throttling critical log sources. EPS capacity shall be reviewed semi-annually, with particular attention to anticipated infrastructure growth.

High Availability: The SIEM platform shall be deployed in a high-availability configuration, with no single point of failure in the log collection and indexing pipeline. Log collector infrastructure shall be geographically distributed where possible to maintain collection during a site outage.

Cloud-Native Logging: For cloud workloads, BFS shall leverage cloud-native logging services (AWS CloudTrail, AWS CloudWatch, VPC Flow Logs) as supplementary log sources, with all cloud logs forwarded to the centralized SIEM. Cloud-only log retention is insufficient — SIEM centralization is required.

SIEM Backup: SIEM configuration — correlation rules, parsing rules, dashboards, user accounts — shall be backed up at least weekly to a separate, secured repository.

## 7.2  Log Quality and Enrichment Guidelines

Log Normalization: All log sources shall be normalized to a consistent field schema in the SIEM. Consistent field naming (e.g., 'src_ip', 'dst_ip', 'username', 'event_type') across all sources enables cross-source correlation and simplifies analyst investigation.

Asset Context Enrichment: Every log entry shall be enriched with asset classification and criticality from the CMDB. A log event from a server carrying CRITICAL classification shall be treated differently from the same event on a LOW-criticality asset. CMDB integration with the SIEM is mandatory.

Identity Enrichment: User account identifiers in log entries shall be enriched with full name, department, role, and manager from the IdP/HR system, enabling analysts to quickly understand the business context of a suspicious action.

Threat Intelligence Enrichment: IP addresses, domains, and file hashes observed in log events shall be automatically cross-referenced against threat intelligence feeds to flag known malicious indicators without requiring analyst manual lookup.

Log Volume Baselining: BFS shall maintain per-source event volume baselines and use volume anomaly detection to flag sources generating significantly higher or lower than normal event volumes — both can indicate security events (attack or suppression respectively).

## 7.3  Correlation Rule Development Guidelines

Threat-Model-Driven Rules: Correlation rules shall be developed based on the BFS threat model and mapped to MITRE ATT&CK tactics and techniques. Every relevant ATT&CK technique applicable to the financial services sector shall have at least one detection rule in the SIEM.

Tuning and Noise Reduction: New correlation rules shall be deployed in monitor-only mode for a minimum of two weeks before alert mode is activated. This allows tuning to reduce false positive rates before analyst workload increases.

Rule Documentation: Every active correlation rule shall be documented with: its name, description, mapped MITRE ATT&CK technique, logic, data sources required, expected false positive scenarios, tuning guidance, and response playbook reference.

Use Case Library: IT Security shall maintain a prioritized use case library defining the security scenarios BFS aims to detect, aligned with the BFS threat profile. New use cases are added quarterly based on threat intelligence and incident learnings.

## 7.4  Log Management for Cloud and DevOps Environments

Ephemeral Workloads: For short-lived cloud compute instances, containers, and serverless functions, logs shall be forwarded to a persistent log destination before or as workloads are terminated. Ephemeral workloads that terminate without forwarding their logs violate this policy. Log forwarding shall be a mandatory component of all BFS container and function deployment patterns.

IaC Log Configuration: Infrastructure-as-Code templates shall include logging configuration as a mandatory component. Deployment of cloud resources without logging enabled shall fail policy-as-code gates in the CI/CD pipeline.

Kubernetes Logging: All Kubernetes pods running in BFS environments shall forward stdout/stderr to a centralized log aggregator. Node-level logs (kubelet, kube-apiserver audit logs) shall be forwarded to the SIEM.

Pipeline and Build Logs: CI/CD pipeline logs recording build events, code deployments, security gate results, and deployment authorizations shall be retained and forwarded to the SIEM. Pipeline log retention shall be a minimum of twelve (12) months.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of the audit log management program. Reviews log coverage metrics, SOC performance, and any log integrity incidents. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise log management program. Ensures adequate SIEM capacity, tooling, and staffing. Reviews monthly log coverage and SOC performance metrics. Co-approves this policy. |

| Chief Information Security Officer (CISO) | Responsible for design, implementation, and enforcement of this policy. Approves the SIEM correlation rule library. Reviews CRITICAL and HIGH alerts escalated by SOC. Authorizes log evidence production. Manages log gap investigations on CRITICAL systems. Signs off on log coverage and SOC performance reports. |

| Data Privacy Officer (DPO) | Reviews and approves log data containing personal data for compliance with RA 10173. Confirms log retention periods align with data minimization principles. Approves bulk log exports containing personal data. Advises on log data subject rights implications. |

| SIEM Engineering / Log Management Team | Deploys, configures, and maintains the SIEM platform. Develops and maintains log parsing rules and normalization schemas. Manages log source onboarding. Monitors SIEM capacity and health. Implements correlation rule changes approved by IT Security. Manages log storage tiering and archival. |

| SIEM Forensic Officer | Designated role responsible for log evidence production under chain of custody. Manages log extraction requests. Maintains the Chain of Custody documentation framework. Liaises with legal and regulatory investigators. Manages integrity verification of archived logs. |

| Security Operations Center (SOC) | Monitors SIEM alerts continuously (24x7x365). Investigates and responds to alerts within defined SLAs. Documents findings in ITSM. Escalates CRITICAL and HIGH alerts. Conducts daily log source health checks. Participates in correlation rule review. Conducts log gap triage. |

| IT Security Team | Maintains the SIEM correlation rule library. Performs threat-model-driven rule development. Manages SIEM user access. Reviews weekly threat summary reports. Conducts quarterly correlation rule effectiveness reviews. Manages log data privacy controls. |

| IT Operations / System Administrators | Configures logging on all managed systems at the approved verbosity level. Deploys and maintains log forwarding agents. Monitors agent health. Investigates and resolves log forwarding failures. Implements NTP configuration on all managed assets. |

| DevSecOps / Development Teams | Implements application-level audit logging in all BFS-developed applications. Includes log configuration in IaC templates. Ensures logging is included in CI/CD pipeline gates. Ensures application logs do not contain sensitive data in cleartext. |

| Enterprise Architecture Team | Defines logging architecture standards for new system designs. Ensures SIEM integration requirements are included in solution architecture specifications. Defines cloud-native logging patterns and IaC log configuration standards. |

| Legal and Compliance | Issues legal hold directives to the log management team. Reviews log retention schedule for regulatory compliance. Accesses logs (read-only) for audit and compliance investigations. Coordinates regulatory examiner access to log data. |

| Internal Audit | Independently assesses log coverage, SIEM configuration, alert response SLA compliance, log integrity controls, and retention compliance. Has read-only access to SIEM for audit purposes. Reports findings to the Audit and Risk Committee. |

| All Employees | Do not attempt to access, modify, delete, or disable logging on BFS systems. Report any discovered log gaps, log access events, or suspected log tampering to the IT Service Desk or SOC immediately. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circular 1140 and BSP Circular 1048 (MORB IT Risk and Cybersecurity)

Audit log management is a fundamental IT risk and cybersecurity control under BSP regulations. BFS's implementation directly supports BSP compliance through:

Maintenance of audit trails for all critical system events including authentication, transaction processing, administrative actions, and configuration changes as required by the MORB IT risk framework;

Audit log retention periods meeting or exceeding BSP minimum requirements (generally five years for banking transaction records);

SIEM-based real-time monitoring for cybersecurity threats as required by BSP Circular 1048 (Cybersecurity Risk Management Guidelines);

Log evidence producible during BSP technology risk and cybersecurity examinations, with documented chain of custody;

NTP-synchronized log timestamps enabling reliable forensic reconstruction of events required for BSP incident reporting.

## 9.2  PCI DSS v4.0 Compliance (Requirement 10)

PCI DSS Requirement 10 (Log and Monitor All Access to System Components and Cardholder Data) is directly implemented by this policy:

PCI DSS 10.2 — Audit logs capture all individual user access to cardholder data, all actions taken by root or administrators, all access to audit trails themselves, invalid logical access attempts, use of identification/authentication mechanisms, initialization/stopping/pausing of audit logs, and creation and deletion of system-level objects: implemented by Section 4.1 mandatory event types;

PCI DSS 10.3 — Audit logs are protected from modification and unauthorized access: implemented by Section 5.5 (integrity and tamper evidence);

PCI DSS 10.3.3 — Audit log files are promptly backed up to a centralized log server or media that is difficult to modify: implemented by WORM storage and centralized SIEM architecture;

PCI DSS 10.4 — Audit logs are reviewed to identify anomalies or suspicious activity: implemented by Section 5.8 (log review) and Section 5.7 (SIEM correlation rules);

PCI DSS 10.5 — Retain audit log history for at least twelve months, with at least the most recent three months available for immediate analysis: implemented by Section 5.6 (retention — 12 months online, 36 months archive, exceeding PCI minimum);

PCI DSS 10.6 — Time synchronization technology is in use and current: implemented by Section 5.4 (NTP standards).

## 9.3  Philippine Data Privacy Act (RA 10173)

Audit log management supports BFS's DPA obligations through:

Processing records: audit logs of access to personal data systems provide evidence of lawful processing activities as required by RA 10173 Article 12 (Criteria for Lawful Processing of Personal Information);

Security incident investigation: audit logs provide the forensic evidence base required for NPC breach notification and investigation support;

Data subject rights: access logs enable BFS to demonstrate what personal data was accessed, by whom, and when — supporting data subject access requests under Section 16 of the DPA;

Log data privacy: audit logs containing personal data are themselves subject to the DPA's processing principles — purpose limitation, proportionality, and retention limits apply to log data, as addressed in Section 5.10 of this policy.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous SIEM health monitoring with automated alerts for log source inactivity, coverage gaps, and ingestion pipeline failures;

Daily SOC log source health check and coverage report;

Weekly IT Security Manager review of alert backlog, false positive rates, and log coverage metrics;

Monthly CISO review of log management KPI report;

Quarterly correlation rule effectiveness review and log retention compliance audit;

Annual formal log management program audit by Internal Audit;

Semi-annual SIEM capacity and architecture review.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| SIEM log source coverage (active sources / total registered sources) | ≥ 99% | Daily |

| CRITICAL system log source coverage | 100% | Continuous |

| Log forwarding latency — CRITICAL sources to SIEM (hot storage) | ≤ 5 minutes | Continuous |

| NTP synchronization compliance (% of systems within 100ms skew) | ≥ 99% | Daily |

| Log integrity verification — archived files checksummed | 100% | Monthly |

| Log integrity check failures investigated (target: same day) | 100% | Per failure |

| CRITICAL SIEM alert initial response within 15 minutes | 100% | Per alert |

| HIGH SIEM alert initial response within 1 hour | ≥ 98% | Monthly |

| MEDIUM SIEM alert initial response within 4 hours | ≥ 95% | Monthly |

| Correlation rule false positive rate (per rule) | < 20% | Quarterly |

| Log gap incidents on CRITICAL systems — gap analysis within 24 hours | 100% | Per incident |

| Log retention compliance — logs retained per defined schedule | 100% | Quarterly |

| Legal hold logs preserved — zero disposal under active hold | 100% | Continuous |

| Log evidence production with chain of custody documentation | 100% of requests | Per request |

| SIEM availability / uptime | ≥ 99.9% | Monthly |

| Unauthorized log access or modification incidents (target: zero) | 0 | Monthly |

| New detection use cases implemented from pen test / incidents within 30 days | 100% | Per finding |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Failure to deploy a log forwarding agent before production deployment; log source not registered in SIEM log source inventory; NTP misconfiguration causing minor clock skew. | Formal written notice; mandatory remediation within defined timeframe; supervisory follow-up. |

| Moderate | Disabling application logging without authorization; log forwarding configured without encryption; using non-approved NTP sources; unauthorized access to SIEM with read access. | Formal warning; immediate remediation; mandatory security training; access review. |

| Serious | Deliberately disabling audit logging on a production system; modifying log verbosity to reduce coverage without CISO approval; unauthorized access to SIEM with write access; accessing log data outside of authorized investigation scope. | Suspension pending investigation; formal disciplinary action up to termination; CISO escalation; forensic investigation of what was accessed or suppressed. |

| Critical / Legal | Deleting audit log records to conceal unauthorized activity; tampering with SIEM configuration to prevent detection of specific activity; accessing, exporting, or leaking customer log data for unauthorized purposes. | Immediate termination; referral to law enforcement; prosecution under RA 10175; mandatory NPC notification (if personal data involved); mandatory BSP notification. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Log management exceptions — situations where a system cannot meet full log coverage, retention, or integrity requirements — are among the most operationally sensitive exceptions in the BFS security program. Every exception creates a visibility blind spot that adversaries may exploit. Exceptions shall be rare, narrowly scoped, time-limited, and subject to compensating detective controls.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Condition / Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| Log Source Coverage Gap | System technically unable to forward logs to SIEM (no agent support, network isolation). | 90 days; alternative detection required | CISO |

| Reduced Log Verbosity | Performance-constrained system where full logging causes unacceptable impact. | 30 days; performance remediation plan required | CISO + System Owner |

| Unencrypted Log Forwarding | Legacy device unable to support TLS log forwarding; restricted to isolated management network. | 90 days; migration plan required | CISO |

| Retention Reduction | Non-critical system where storage constraints prevent minimum retention (non-PCI, non-BSP-regulated). | Not applicable for PCI/BSP systems; others: CISO | CISO + DPO (if personal data) |

| Delayed SIEM Onboarding | New system deployed before log onboarding complete; compensating logging in place locally. | 14 days maximum | IT Security Manager |

| WORM Storage Exception | System where WORM-compliant storage is not technically feasible. | 90 days; alternative integrity controls required | CISO |

| NTP Synchronization Exception | Isolated OT/IoT system unable to reach NTP servers; GPS-synchronized local time used. | Permanent (with quarterly review) | CISO |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) disabling audit logging on any system processing cardholder data, customer personal data, or financial transactions; (b) retaining PCI CDE logs for less than 12 months online and 12 months archive (PCI DSS Requirement 10.5); (c) storing logs without any integrity protection (no hashing, no WORM, no access controls) for CRITICAL system logs; (d) preventing CISO access to audit logs of any BFS system under any circumstances. |

| --- |

## 11.3  Exception Process

System owner or IT Operations submits a Log Management Exception Request Form via the ITSM portal, providing: affected source, specific requirement that cannot be met, technical justification, compensating detection controls, duration, and risk assessment.

IT Security reviews the compensating controls for adequacy (e.g., does enhanced EDR telemetry compensate for absence of OS authentication logs?).

Exception is approved by the CISO (all categories). DPO review required for any exception affecting logs containing personal data.

Compensating controls are implemented and verified before the exception is active. The SIEM is updated to reflect the gap and to enhance monitoring of adjacent sources.

All open exceptions reviewed monthly by the IT Security Manager and reported quarterly to the CISO. Expired exceptions treated as policy violations.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon:

Major SIEM platform changes, including platform migrations, significant version upgrades, or architectural redesign;

Significant changes to the BFS technology landscape generating new log source categories not currently covered;

New or amended BSP circulars, NPC issuances, or PCI DSS versions affecting log management, retention, or monitoring obligations;

Material log management failures — including significant log gaps on CRITICAL systems, log tampering incidents, or SIEM outages — revealed during investigations or audits;

Publication of updated CIS Controls versions or NIST SP 800-92 that materially change log management requirements.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Aligned with CIS Controls v8 Control 8, ISO/IEC 27001:2022, PCI DSS v4.0 Req. 10, NIST SP 800-92, and BSP Circulars 1140 and 1048. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 8 safeguards to their ISO/IEC 27001:2022 Annex A controls, with PCI DSS v4.0 Requirement 10 cross-referenced.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 8.1 | Establish and Maintain an Audit Log Management Process | A.8.15 | Logging | IG1 |

| 8.2 | Collect Audit Logs | A.8.15 | Logging | IG1 |

| 8.3 | Ensure Adequate Audit Log Storage | A.8.15 | Logging | IG1 |

| 8.4 | Standardize Time Synchronization | A.8.17 | Use of clock synchronization | IG1 |

| 8.5 | Collect Detailed Audit Logs | A.8.15 | Logging | IG2 |

| 8.6 | Collect DNS Query Audit Logs | A.8.15 | Logging | IG2 |

| 8.7 | Collect URL Request Audit Logs | A.8.15 | Logging | IG2 |

| 8.8 | Collect Command-Line Audit Logs | A.8.15 | Logging | IG2 |

| 8.9 | Centralize Audit Logs | A.8.15 | Logging | IG2 |

| 8.10 | Retain Audit Logs | A.5.33 | Protection of records | IG2 |

| 8.11 | Conduct Audit Log Reviews | A.8.16 | Monitoring activities | IG2 |

| 8.12 | Collect Service Provider Logs | A.5.19 | Information security in supplier relationships | IG3 |

| N/A | Log integrity — WORM, hashing, tamper protection | A.5.33 | Protection of records | All |

| N/A | Log access control — privileged and audited access to logs | A.8.15 | Logging | All |

| N/A | Monitoring activities — SIEM correlation, UEBA, NDR | A.8.16 | Monitoring activities | All |

| N/A | Protection of records — log retention and legal hold | A.5.33 | Protection of records | All |

| N/A | Privacy protection — log data containing PII (RA 10173) | A.5.34 | Privacy and protection of PII | All |

| N/A | Configuration management — logging configuration as a baseline element | A.8.9 | Configuration management | All |

| N/A | Change management — logging configuration change governance | A.8.32 | Change management | All |

| N/A | Information backup — log archive backup and integrity | A.8.13 | Information backup | All |

| N/A | PCI DSS Req. 10.2 — specific audit events for CDE systems | A.8.15 | Logging | All |

| N/A | PCI DSS Req. 10.3 — audit log protection from modification | A.5.33 | Protection of records | All |

| N/A | PCI DSS Req. 10.4 — log review for anomalies and suspicious activity | A.8.16 | Monitoring activities | All |

| N/A | PCI DSS Req. 10.5 — retain logs 12 months, 3 months immediately available | A.5.33 | Protection of records | All |

| N/A | PCI DSS Req. 10.6 — time synchronization for CDE systems | A.8.17 | Use of clock synchronization | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate maturity; IG3 = Advanced / highest maturity. BFS targets full IG2 compliance enterprise-wide, with IG3 controls (service provider log collection, UEBA, behavioral analytics, full command-line logging) applied to CRITICAL systems, PCI CDE, and the AI-native platform.

# APPENDIX B:  Log Retention Schedule

The following table defines minimum retention periods for each log category. These are minimum periods — logs shall not be disposed of before the defined minimum without CISO and Legal approval. Legal holds override all retention schedules and prevent disposal until the hold is lifted.

| Log Category | Online (Hot/Warm) | Archive (Cold) | Total Minimum Retention | Regulatory Basis | Integrity Requirement |

| --- | --- | --- | --- | --- | --- |

| Core banking transactions | 12 months | 84 months (7 yrs) | 7 years | BSP / RA 8791 | WORM + encryption |

| ATM and card management logs | 12 months | 84 months (7 yrs) | 7 years | BSP / PCI DSS | WORM + encryption |

| Payment processing logs | 12 months | 84 months (7 yrs) | 7 years | BSP / PCI DSS | WORM + encryption |

| Authentication and access logs | 12 months | 24 months | 3 years | BSP / PCI Req. 10 | Hash + immutable |

| Privileged access / PAM logs | 12 months | 24 months | 3 years | BSP / PCI Req. 10 | WORM + encryption |

| Network firewall / perimeter logs | 12 months | 24 months | 3 years | BSP / PCI Req. 10 | Hash + immutable |

| AWS CloudTrail / cloud audit logs | 12 months | 24 months | 3 years | BSP / PCI Req. 10 | S3 MFA Delete + WORM |

| AWS VPC Flow Logs | 12 months | 24 months | 3 years | BSP / PCI Req. 10 | Hash + immutable |

| Security tool logs (EDR/IPS/DLP) | 12 months | 24 months | 3 years | BSP Circular 1140 | Hash + immutable |

| Web application logs (WAF/API GW) | 12 months | 24 months | 3 years | BSP / PCI Req. 10 | Hash + immutable |

| Database activity logs | 12 months | 24 months | 3 years | BSP / PCI Req. 10 | WORM for CDE |

| Email gateway logs | 12 months | 12 months | 2 years | Business/legal | Hash |

| Physical access control logs | 12 months | 24 months | 3 years | BSP / Security | Hash |

| CI/CD pipeline logs | 12 months | 12 months | 2 years | SDLC audit | Hash |

| SIEM administrative logs | 12 months | 24 months | 3 years | Chain of custody | WORM + separate store |

| Incident response evidence logs | Duration + 36 months | As needed | Per case | Legal / BSP | WORM + chain of custody |

| Legal hold logs | Duration of hold | Hold + 36 months | Per case | Legal directive | WORM + legal custody |

| NOTE:  Retention periods shown are minimums. Legal, Compliance, or Internal Audit may require extended retention for specific log categories based on ongoing investigations, regulatory examination requirements, or litigation holds. The SIEM Forensic Officer maintains the current legal hold registry and shall be consulted before any log disposal action. |

| --- |

# APPENDIX C:  Quick Reference Card

## C.1  SOC Alert Response Quick Reference

| Alert Level | Initial Response | Escalation | Key Actions |

| --- | --- | --- | --- |

| CRITICAL | Within 15 minutes | CISO within 15 min | Initiate IR; isolate if warranted; evidence preserve |

| HIGH | Within 1 hour | IT Security Manager within 1 hour | Open ITSM incident; initial containment assessment |

| MEDIUM | Within 4 hours | Escalate to HIGH if indicators found | Investigate; document; notify system owner if account-related |

| LOW | Within 24 hours | No escalation (unless upgraded) | Review; document outcome; tune if false positive |

## C.2  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| SIEM alerts and log coverage | Security Operations Center (SOC) | soc@bfs.com.ph \| 24/7 hotline |

| Log source onboarding | SIEM Engineering / Log Management Team | ITSM Portal \| siem-eng@bfs.com.ph |

| Log evidence production / forensics | SIEM Forensic Officer | ciso@bfs.com.ph \| ITSM Evidence Request |

| Legal hold notification | SIEM Forensic Officer + Legal | legal@bfs.com.ph \| ITSM Legal Hold |

| NTP and time sync issues | IT Operations | IT Service Desk \| ext. 8000 |

| Log data privacy queries | Data Privacy Officer | dpo@bfs.com.ph |

| SIEM capacity / architecture | SIEM Engineering / EA Team | siem-eng@bfs.com.ph |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

| Correlation rule queries | IT Security Team | security@bfs.com.ph |

## C.3  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| CRITICAL SIEM alert initial SOC response | Within 15 minutes |

| HIGH SIEM alert initial SOC response | Within 1 hour |

| MEDIUM SIEM alert initial SOC response | Within 4 hours |

| Log source inactivity alert investigation | Within 4 hours |

| Log gap analysis report (CRITICAL/CONFIDENTIAL systems, >2 hours) | Within 24 hours |

| New log source SIEM onboarding (before production deployment) | Before production go-live |

| Log source baseline establishment (new source) | 7-day observation period |

| NTP maximum time skew — servers | 100 milliseconds |

| NTP maximum time skew — endpoints | 500 milliseconds |

| Systems with clock skew > 5 seconds — quarantine | Immediate |

| SIEM correlation rule false positive tuning (> 20% FP rate) | Within 10 business days |

| New detection rule from pen test / incident | Within 30 business days |

| Log archive integrity verification | Monthly |

| Legal hold preservation confirmed to requester | Within 24 hours |

| Log evidence production with chain of custody | Per request timeline (max 3 business days for regulatory) |

| Log retention compliance audit | Quarterly |

| SIEM capacity review | Semi-annual |

| Correlation rule library quarterly review | Quarterly |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-008  |  Audit Log Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
