---
title: "BFS-ISP-013-Network-Monitoring-Defense-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Logging-Monitoring-and-Detection/BFS-ISP-013-Network-Monitoring-Defense-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:40Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Logging-Monitoring-and-Detection"
aliases:
  - "BFS-ISP-013-Network-Monitoring-Defense-Policy"
creator: "Un-named"
created: "2026-04-12T01:30:00Z"
modified: "2026-04-23T06:12:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>NETWORK MONITORING AND<br>DEFENSE POLICY<br>NDR, Traffic Analytics, DNS Defense, Threat Hunting, and Network SOC Operations<br>Policy Reference: BFS-ISP-013<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 13)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140  \|  PCI DSS v4.0<br>Companion to BFS-ISP-006 \| BFS-ISP-007 \| BFS-ISP-008 \| BFS-ISP-010 \| BFS-ISP-012 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Network Monitoring and Defense Policy |

| --- | --- |

| Policy Reference | BFS-ISP-013 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to network monitoring architecture, threat landscape, or regulatory requirements |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-006 (Access Control Management); BFS-ISP-007 (Vulnerability Management); BFS-ISP-008 (Audit Log Management); BFS-ISP-009 (Incident Response — referenced via BFS-ISP-011); BFS-ISP-010 (Malware Defenses); BFS-ISP-012 (Network Infrastructure Management) |

| Framework Alignment | CIS Controls v8 (Control 13); ISO/IEC 27001:2022 (A.8.16, A.8.15, A.8.20, A.8.21, A.8.22, A.5.7, A.8.23) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); BSP Circular 1048 (Cybersecurity Risk Management); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirements 10, 11); NIST SP 800-94 (Guide to IDS/IPS); MITRE ATT&CK Framework (Network-based TTPs) |

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

This policy establishes the mandatory requirements, technical standards, and governance framework for the continuous monitoring, detection, and active defense of BFS Financial Services (hereinafter "the Organization" or "BFS") network environments against threats that operate at the network layer — traversing network segments, communicating with external command-and-control infrastructure, exfiltrating data, and moving laterally between systems using network protocols.

While BFS-ISP-012 (Network Infrastructure Management) governs the secure configuration and lifecycle of the network infrastructure itself, this policy governs how the network is actively used as a detection and defense medium. The network is the most comprehensive and reliable source of threat visibility available: unlike endpoint events that adversaries can suppress by disabling agents, network traffic cannot be completely hidden from a well-instrumented monitoring infrastructure. Attackers must communicate — whether to receive commands, exfiltrate data, or move laterally — and that communication traverses the network and is observable to a well-positioned monitoring program.

This policy directly implements CIS Controls v8, Control 13 (Network Monitoring and Defense), encompassing all safeguards from 13.1 through 13.11. It is anchored in ISO/IEC 27001:2022 Annex A controls governing monitoring activities, logging, network security, network service security, network segregation, threat intelligence, and web filtering.

The specific objectives of this policy are to:

Deploy and maintain Network Detection and Response (NDR) capabilities providing continuous, behavioral analysis of all network traffic across all BFS network segments — including east-west (internal) traffic, which is the primary lateral movement channel for post-compromise adversaries;

Operate a continuous DNS monitoring and defense capability that detects domain generation algorithm (DGA) activity, DNS tunneling, command-and-control (C2) communication, and data exfiltration over DNS;

Establish traffic flow analytics providing baseline-driven anomaly detection for network behavioral deviations indicating reconnaissance, lateral movement, data staging, or exfiltration;

Define and enforce active network defense measures — including network sensor coverage requirements, traffic interception architecture, and automated response capabilities;

Integrate network monitoring telemetry with the BFS SIEM to enable cross-layer correlation of network, endpoint, application, and identity events for comprehensive threat detection;

Mandate proactive network threat hunting exercises that use network telemetry to discover threats that automated detection rules have not yet identified;

Establish cloud network monitoring requirements ensuring that the visibility achieved on-premise is replicated in BFS cloud environments;

Ensure compliance with BSP Circulars 1140 and 1048, PCI DSS v4.0 Requirements 10 and 11, and all applicable regulatory network monitoring obligations.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all personnel involved in designing, operating, or using network monitoring and defense capabilities, including:

Security Operations Center (SOC) analysts and engineers responsible for network alert triage and investigation;

Network Engineering and IT Security teams responsible for deploying and maintaining network monitoring infrastructure;

Threat hunting teams conducting proactive network-based investigation;

Cloud Infrastructure teams responsible for cloud network visibility;

Enterprise Architecture teams designing network monitoring architectures for new systems.

## 2.2  Technical Scope

This policy governs the monitoring and defense of all BFS network traffic and network environments:

### 2.2.1  On-Premise Network Segments

Internet perimeter traffic — all north-south traffic crossing the BFS internet boundary;

Internal east-west traffic — traffic between BFS network zones (server-to-server, workstation-to-server, database traffic);

DMZ traffic — traffic to and from public-facing services;

Management network traffic — administrative communications on the OOB management network;

Payment and ATM network traffic — specialized monitoring for PCI CDE and ATM network segments.

### 2.2.2  Cloud Network Traffic

AWS VPC traffic — monitored via VPC Flow Logs and cloud-native threat detection (GuardDuty);

Cloud-to-on-premise traffic — traffic crossing Direct Connect and Site-to-Site VPN connections;

Cloud egress traffic — outbound internet traffic from cloud workloads;

Inter-service traffic — communication between cloud services and microservices.

### 2.2.3  Remote and Wireless Traffic

VPN tunnel traffic — remote access sessions;

Wireless network traffic — corporate and guest WLAN;

SD-WAN traffic — branch office connectivity.

## 2.3  Environmental Scope

This policy applies to all BFS environments — production, pre-production, and DR — and covers network monitoring in on-premise, cloud, co-location, and hybrid environments. Development environments shall maintain network monitoring proportionate to their risk profile and their connectivity to production networks.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Network Detection and Response (NDR) | A security platform that monitors network traffic in real time — analyzing packet headers, flow metadata, and (where SSL inspection is active) payload content — using machine learning, behavioral analytics, and threat intelligence to detect malicious activity that endpoint and log-based controls may miss. NDR provides east-west visibility within the network, not only at the perimeter. |

| Network Flow Data | Metadata records summarizing network communications: source IP, destination IP, source port, destination port, protocol, byte count, packet count, and session duration. Flow data (NetFlow, IPFIX, sFlow, VPC Flow Logs) does not include packet payload content but provides comprehensive communication pattern visibility for behavioral analysis. |

| Full Packet Capture (FPC) | The capture and storage of complete network packets — including headers and payload — for a defined network segment or time period. FPC provides the richest possible forensic network evidence but requires significant storage infrastructure and raises privacy considerations that must be carefully managed. |

| East-West Traffic | Network traffic flowing between systems within the same internal network environment — server-to-server, workstation-to-server, and application-to-database communications. East-west traffic is the primary channel for lateral movement following an initial compromise and is often insufficiently monitored compared to north-south (internet-facing) traffic. |

| North-South Traffic | Traffic flowing between the internal network and external networks — internet-bound traffic and inbound internet connections. North-south traffic is typically inspected by perimeter firewalls and IPS but does not capture internal lateral movement. |

| Command and Control (C2) | The communication channel between malware on a compromised endpoint and the threat actor's infrastructure, used to receive commands, exfiltrate data, and coordinate attack activity. C2 channels are a primary network-layer detection target — identifying C2 communication allows detection of compromised systems even when endpoint agents are evaded. |

| DNS Tunneling | A technique used to encapsulate non-DNS data (C2 communications, data exfiltration) within DNS queries and responses, exploiting the fact that DNS traffic is typically permitted through firewalls without deep inspection. DNS tunneling produces characteristic patterns — high query frequency, unusual subdomain lengths, excessive TXT record queries — detectable by DNS behavioral analytics. |

| Domain Generation Algorithm (DGA) | A technique used by malware to generate large numbers of pseudo-random domain names algorithmically, making it difficult to blocklist all C2 domains in advance. DGA-generated domains have characteristic statistical properties detectable by machine learning models applied to DNS query logs. |

| Network Behavioral Analytics (NBA) | The application of statistical modeling and machine learning to network flow data and DNS logs to establish normal behavioral baselines and detect deviations that may indicate threats — unusual data volumes, unexpected communication patterns, new protocols, or anomalous connection frequencies. |

| Lateral Movement | Post-compromise adversary activity involving traversal through internal network systems — moving from the initially compromised host to additional targets (privileged accounts, data repositories, critical systems). Lateral movement generates characteristic east-west network patterns detectable by NDR and SIEM correlation. |

| Beaconing | A network behavioral pattern in which malware communicates with C2 infrastructure at regular, periodic intervals — creating a recognizable heartbeat pattern in network flow data. Beaconing detection is a key NDR and flow analytics use case. |

| Sensor | A network monitoring component (hardware appliance or virtual) deployed at a strategic network chokepoint — typically connected to a SPAN port, network tap, or inline — that captures network traffic for analysis by the NDR or IDS/IPS platform. |

| SPAN Port (Switch Port Analyzer) | A switch port configured to mirror traffic from one or more other ports or VLANs to a monitoring sensor. SPAN ports enable passive network capture without impacting production traffic flow. |

| Network Tap | A hardware device inserted inline in a network link that passively copies all traffic to a monitoring sensor without impacting the monitored traffic. Taps provide higher fidelity traffic copies than SPAN ports (no dropped frames, full duplex capture) and are preferred for high-priority monitoring points. |

| Threat Intelligence Integration | The consumption of curated, external threat intelligence data — including malicious IP addresses, malicious domains, C2 infrastructure indicators, and attacker TTPs — by network monitoring platforms to enrich detections with real-world threat context and enable detection of known-bad network indicators. |

| Network Threat Hunting | The proactive, hypothesis-driven investigation of network telemetry (flow data, DNS logs, packet captures) by skilled security analysts seeking to discover threats that automated detection rules have not flagged — including novel attack techniques, long-dwell adversaries, and low-and-slow exfiltration campaigns. |

| Traffic Baseline | A statistical model of normal network communication patterns for a given segment, asset, or user population — including typical connection volumes, peak traffic periods, common destination IPs/domains, and protocol distribution. Deviations from baseline indicate anomalous activity requiring investigation. |

| SSL/TLS Inspection | The process of decrypting, inspecting, and re-encrypting SSL/TLS-encrypted network traffic to enable deep content inspection for threats that would otherwise be hidden within encryption. SSL/TLS inspection is performed by the SWG or NGFW and raises privacy considerations requiring a defined bypass list. |

| PCAP (Packet Capture) | A file containing captured network packets, typically produced by tools such as tcpdump, Wireshark, or network tap recorders. PCAPs are essential forensic evidence for network incident investigation. |

| GuardDuty | An AWS-native threat detection service that analyzes CloudTrail, VPC Flow Logs, and DNS logs to identify malicious activity in AWS environments — including credential compromise, cryptocurrency mining, C2 communication, and reconnaissance activities. |

| Sinkholing | A technique in which DNS queries for known malicious domains are redirected to a controlled BFS-managed IP address rather than the actual malicious destination, preventing C2 communication while enabling identification of infected endpoints by their queries. |

# 4.  NETWORK MONITORING ARCHITECTURE

BFS's network monitoring architecture is built on the principle that every network segment that carries security-relevant traffic must be visible to the security monitoring program. Visibility gaps — network segments or traffic flows not captured by any monitoring sensor — are potential adversary safe havens. The architecture is designed to provide complete east-west and north-south coverage across all BFS environments.

| Layer | Technology | Coverage Target | BFS Deployment |

| --- | --- | --- | --- |

| Perimeter Traffic | NGFW / IPS / SSL Inspection | All north-south internet traffic | Inline NGFW with IPS and SSL/TLS inspection at all internet egress points. |

| Internal East-West | NDR sensors on SPAN/tap | All inter-zone traffic flows | NDR sensors at data center core, server zone, PCI CDE boundary, and management network. |

| DNS Analytics | DNS sinkhole + behavioral analytics | All DNS queries from all managed devices | Centralized DNS resolver with full query logging; DGA and tunneling detection models. |

| Flow Analysis | NetFlow/IPFIX collection | All network segments generating flow data | Flow collector ingesting all device exports; stored in SIEM and flow analytics platform. |

| Wireless Traffic | WIDS/WIPS + flow data | All corporate WLAN traffic | WIDS/WIPS on all wireless controllers; wireless client flow data exported. |

| Cloud Traffic | GuardDuty + VPC Flow Logs | All AWS VPC traffic | GuardDuty active in all AWS accounts and regions; VPC Flow Logs to SIEM. |

| Remote Access | VPN log analysis + flow | All VPN tunnel traffic | VPN gateway logs and flow data forwarded to SIEM; behavioral analysis of remote sessions. |

| Full Packet Capture | Network taps at critical points | Selected high-value segments | Taps at internet perimeter and PCI CDE boundary; rolling 72-hour PCAP retention. |

## 4.1  Mandatory Sensor Coverage Points

The following network locations are mandatory NDR sensor deployment points. Coverage gaps at these points represent critical visibility deficiencies requiring immediate remediation:

| Monitoring Point | Traffic Captured | Sensor Type | Priority |

| --- | --- | --- | --- |

| Internet perimeter — inbound | All inbound traffic from internet to DMZ and internal | Inline IPS + NDR tap | P1 — CRITICAL |

| Internet perimeter — outbound | All outbound traffic to internet from all zones | SWG + NGFW + NDR tap | P1 — CRITICAL |

| Data center core switch | All inter-zone east-west traffic between server/DB/user zones | NDR SPAN or tap | P1 — CRITICAL |

| PCI CDE boundary | All traffic entering and leaving CDE segment | Dedicated NDR sensor + IPS | P1 — CRITICAL |

| Core banking server segment | Traffic to/from core banking application and database servers | NDR tap or SPAN | P1 — CRITICAL |

| Payment network gateway | SWIFT / payment processing traffic | Dedicated monitoring sensor | P1 — CRITICAL |

| Management / OOB network | All administrative traffic | NDR SPAN | P2 — HIGH |

| DMZ segment | Traffic between DMZ hosts and to/from internet | NDR sensor + firewall logs | P2 — HIGH |

| Branch office WAN links | Traffic over WAN/SD-WAN from branches to HQ | SD-WAN flow export | P2 — HIGH |

| AWS VPC — all production VPCs | All intra-VPC and inter-VPC traffic | VPC Flow Logs + GuardDuty | P1 — CRITICAL |

| VPN gateway — remote access | All VPN session traffic | VPN logs + flow data | P2 — HIGH |

| Wireless LAN — corporate SSID | Corporate wireless client traffic | WLAN controller flow export | P2 — HIGH |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, systems, and environments within scope.

## 5.1  Network Detection and Response (NDR)

PS-1.1  BFS shall deploy and operate an NDR platform providing continuous, real-time behavioral analysis of network traffic across all mandatory sensor coverage points defined in Section 4.1. The NDR platform shall use machine learning and behavioral analytics — not solely signature-based detection — to identify threats that evade signature matching, including fileless C2 communications, encrypted malware traffic, and slow-and-low exfiltration.

PS-1.2  NDR sensors shall be deployed passively (out-of-band via SPAN or tap) at all priority P1 and P2 coverage points defined in Section 4.1. Active inline NDR deployment may be used at internet perimeter points in conjunction with IPS. All sensor deployments shall be documented in the CMDB.

PS-1.3  The NDR platform shall be integrated with the BFS SIEM, forwarding all detections, flow metadata, and behavioral alerts to the SIEM in real time. NDR detections rated HIGH or CRITICAL shall generate immediate SOC alerts. NDR telemetry shall be enriched with CMDB asset context and IdP identity data before ingestion into the SIEM.

PS-1.4  NDR detection models, behavioral baselines, and threat intelligence integrations shall be updated at least weekly and upon the availability of major model updates from the NDR vendor. The IT Security team shall review and apply NDR platform updates within fourteen (14) days of release.

PS-1.5  NDR sensor health — uptime, traffic visibility percentage, and data feed status — shall be monitored continuously. Sensor failures shall generate SIEM alerts within fifteen (15) minutes. Coverage gaps at P1 CRITICAL monitoring points shall be escalated to the CISO within one (1) hour of detection.

## 5.2  Network Flow Analytics

PS-2.1  Network flow data (NetFlow v9, IPFIX, or sFlow as supported by each device) shall be exported from all network devices capable of flow export and ingested into a centralized flow analytics platform integrated with the SIEM. Flow data shall be retained online for a minimum of thirty (30) days and archived for twelve (12) months.

PS-2.2  Flow-based behavioral analytics shall be applied continuously to detect deviations from established traffic baselines. Baselines shall be developed over a minimum observation period of thirty (30) days for each network segment before anomaly detection is activated. Baseline models shall be reviewed and updated quarterly.

PS-2.3  The following flow-based behavioral detection use cases shall be implemented and actively monitored as a minimum:

Unusual large data transfers — sustained high-volume outbound traffic to external destinations not matching known business data flows;

Beaconing behavior — regular, periodic connections from internal hosts to external IPs or domains at fixed intervals;

Port scanning and network reconnaissance — systematic connection attempts across multiple ports or to a large number of hosts;

Lateral movement patterns — unusual east-west connections between hosts that do not normally communicate, particularly involving administrative protocols (SMB, WMI, RDP, SSH) on non-standard paths;

New external communications — internal hosts establishing connections to external IPs or domains not previously observed in BFS traffic;

Protocol anomalies — use of unexpected protocols on well-known ports (e.g., non-HTTP traffic on port 80) or traffic on unusual high-numbered ports;

ATM and payment network anomalies — unexpected traffic on payment network segments, unusual ATM communication patterns, or connections between ATM network and non-payment systems.

PS-2.4  Flow analytics alerts rated HIGH or CRITICAL shall be forwarded to the SIEM and investigated by the SOC within the response SLAs defined in Section 6.2. All flow analytics alert investigations shall be documented in the ITSM.

## 5.3  DNS Monitoring and Defense

PS-3.1  All DNS queries from BFS-managed endpoints, servers, and cloud resources shall be resolved through BFS-controlled, centrally managed DNS resolvers. DNS resolvers shall generate comprehensive query logs — including querying host identity, queried domain, query type, response, and timestamp — and forward all logs to the SIEM in real time.

PS-3.2  DNS behavioral analytics shall be continuously applied to all DNS query logs to detect:

Domain Generation Algorithm (DGA) activity — high-frequency queries to algorithmically generated domains with no legitimate resolution;

DNS tunneling — unusually long subdomain labels, excessive TXT record queries, high DNS query entropy, or disproportionate DNS traffic volume from a single host;

Newly registered domain queries — queries to domains registered within the last thirty (30) days, which are disproportionately used for phishing and malware C2;

Fast-flux domains — domains whose IP resolutions change at high frequency (characteristic of botnet C2 infrastructure);

Lookalike domain queries — queries to domains closely resembling BFS, partner, or trusted service domains (homograph, typosquatting indicators);

Queries to known malicious domains — domains on threat intelligence block lists.

PS-3.3  DNS sinkholing shall be implemented for known malicious domains on the threat intelligence block list. Queries to sinkholed domains shall be redirected to a BFS-controlled sinkhole IP address, preventing C2 communication while enabling identification of infected endpoints by their queries. Sinkhole hits shall generate immediate SIEM alerts for SOC investigation.

PS-3.4  The DNS threat intelligence block list shall be updated at least daily from BFS-subscribed threat intelligence feeds and within two (2) hours of confirmed C2 domain identification during an active security incident. The DNS block list update process shall be automated and verified.

PS-3.5  DNS query logging shall never be disabled on BFS-controlled DNS resolvers. Any gap in DNS query log forwarding to the SIEM shall generate an automated alert and be treated as a coverage incident requiring immediate investigation.

## 5.4  Full Packet Capture

PS-4.1  Full packet capture (FPC) shall be deployed at the following minimum locations using hardware taps or high-fidelity SPAN configurations: (a) the internet perimeter — capturing all north-south traffic at the point of entry/exit; (b) the PCI CDE network boundary — capturing all traffic crossing the CDE perimeter.

PS-4.2  FPC data shall be retained for a minimum of seventy-two (72) hours in rolling storage. For incidents under active investigation, relevant PCAP data shall be extracted and preserved as forensic evidence before it is overwritten in the rolling buffer, following the chain of custody procedure defined in BFS-ISP-008.

PS-4.3  Access to raw PCAP data shall be strictly controlled and limited to authorized IT Security personnel and the SIEM Forensic Officer. PCAP data may contain sensitive payload content including personal data, financial information, and credentials in transit — it shall be classified as CONFIDENTIAL and subject to BFS-ISP-003 data handling requirements.

PS-4.4  FPC infrastructure shall not be accessible from production networks. FPC capture devices and storage shall be managed via the OOB management network. Captured traffic data shall not be exfiltrated or shared outside BFS without CISO authorization and documented chain of custody.

## 5.5  Cloud Network Monitoring

PS-5.1  AWS GuardDuty shall be enabled in all BFS AWS accounts and all AWS regions in which BFS resources are deployed. GuardDuty findings rated HIGH or CRITICAL shall be forwarded to the SIEM in real time and shall generate SOC alerts within the response SLAs defined in Section 6.2. GuardDuty shall not be disabled or suppressed without CISO approval.

PS-5.2  VPC Flow Logs shall be enabled for all BFS VPCs and all EC2 network interfaces. Flow logs shall be delivered to a centralized, WORM-protected S3 bucket and ingested into the SIEM flow analytics platform. VPC Flow Log analysis shall apply the same behavioral analytics use cases as on-premise flow analytics (Section 5.2), adapted for cloud traffic patterns.

PS-5.3  AWS CloudTrail shall be enabled in all BFS AWS accounts and all regions, capturing all management-plane API calls. CloudTrail logs shall be forwarded to the SIEM and subject to the correlation rules defined in BFS-ISP-008. Specifically, the following CloudTrail events shall generate immediate SIEM alerts: GuardDuty disabled; CloudTrail logging stopped; root account API calls; Security Group overly permissive rule creation; S3 bucket public access enabled.

PS-5.4  Cloud network threat detection shall be supplemented by a Cloud Security Posture Management (CSPM) tool providing continuous evaluation of cloud network configurations for security policy violations, as governed by BFS-ISP-006 and BFS-ISP-012.

## 5.6  IPS/IDS Operations

PS-6.1  Intrusion Prevention System (IPS) sensors shall be deployed inline at all internet-facing network boundaries, operating in active blocking mode. IPS shall be the primary network-layer malware and exploit blocking control for internet-ingress traffic, complementing NGFW application-layer filtering.

PS-6.2  IPS signature databases shall be updated at least weekly. For critical signatures addressing actively exploited vulnerabilities affecting financial sector infrastructure, updates shall be applied within forty-eight (48) hours of release. The IPS management team shall subscribe to vendor security advisories for all deployed IPS platforms.

PS-6.3  IPS alerts shall be classified by severity and forwarded to the SIEM. CRITICAL IPS alerts — indicating confirmed exploitation attempts, malware delivery blocking, or anomaly detection of high-confidence threats — shall generate immediate SOC alerts. All IPS blocking events shall be logged with sufficient detail for forensic reconstruction.

PS-6.4  IPS false positive rates shall be monitored quarterly. Rules with high false positive rates shall be tuned, not disabled. Any IPS rule disabled due to false positives shall be documented in the IPS configuration register with the CISO's approval. The total number of disabled IPS rules shall be reported as a KRI.

## 5.7  SIEM Correlation for Network Threats

PS-7.1  The BFS SIEM shall maintain an active correlation rule library specifically targeting network-based attack techniques, organized by MITRE ATT&CK tactic. Network-specific correlation rules shall address at minimum the following tactic categories:

Initial Access (TA0001): exploit delivery via network, drive-by download indicators, phishing link clicks correlating with subsequent C2 communication;

Execution (TA0002): suspicious process spawning network connections, living-off-the-land network communication patterns;

Persistence (TA0003): new outbound connections from typically non-communicating servers, scheduled task C2 patterns;

Lateral Movement (TA0008): SMB/WMI/RDP connections between non-standard host pairs, pass-the-hash network patterns, remote service creation;

Collection (TA0009): large internal data transfer from data repositories to staging hosts;

Exfiltration (TA0010): large outbound transfers, DNS tunneling, ICMP exfiltration, HTTP POST to unusual destinations;

Command and Control (TA0011): beaconing detection, DGA queries, encrypted C2 over non-standard ports, domain fronting indicators.

PS-7.2  SIEM correlation rules for network threats shall be enriched with asset criticality from the CMDB. The same network pattern detected involving a CRITICAL asset shall generate a higher-priority alert than the same pattern involving a LOW-criticality asset, enabling risk-proportionate SOC response prioritization.

PS-7.3  SIEM network correlation rules shall be reviewed and validated at least quarterly through Purple Team exercises or synthetic event injection, confirming that rules correctly detect their intended threat patterns. Rules failing detection tests shall be remediated within thirty (30) business days.

## 5.8  Network Threat Hunting

PS-8.1  The BFS IT Security team shall conduct proactive network threat hunting exercises at least monthly, using network flow data, DNS query logs, NDR telemetry, and PCAP data to search for threats not yet identified by automated detection rules. Threat hunts shall be hypothesis-driven, based on current threat intelligence applicable to financial sector organizations.

PS-8.2  Network threat hunting hypotheses shall be documented before each hunting exercise, drawn from the MITRE ATT&CK framework's network-relevant techniques and BFS-specific threat model. Hunting findings — whether clean (no threat found) or confirmed (threat identified) — shall be documented in the ITSM with findings and any new detection rules developed from the hunt.

PS-8.3  When a network threat hunt identifies a previously undetected threat or attack pattern, the finding shall be escalated to the CISO immediately and a new SIEM correlation rule or NDR detection model shall be developed within thirty (30) business days to provide automated detection of the identified technique going forward.

PS-8.4  Network threat hunting results — number of hunts conducted, hypotheses tested, threats identified, and new rules created — shall be reported monthly to the CISO as part of the Network Monitoring KRI report.

## 5.9  Network Security Monitoring Data Privacy

PS-9.1  Network monitoring activities — including flow data collection, DNS query logging, PCAP capture, and NDR analysis — may capture personal data and sensitive financial information in transit. All network monitoring data shall be classified as CONFIDENTIAL and subject to the data handling requirements of BFS-ISP-003.

PS-9.2  Access to raw network monitoring data — particularly PCAP files that may contain payload-level personal data — shall be restricted to named IT Security personnel with a documented security investigation need. Bulk access to network monitoring data for non-security purposes (analytics, research) requires DPO approval confirming a compatible processing purpose under RA 10173.

PS-9.3  Network monitoring data shall be retained only for the periods required for security monitoring, incident investigation, and regulatory compliance as defined in BFS-ISP-008. PCAP data, which has the highest personal data exposure potential, shall be subject to the shortest retention period consistent with operational security needs (seventy-two (72) hours rolling, with preserved evidence for active investigations).

PS-9.4  SSL/TLS inspection — which enables reading of encrypted traffic payload — shall be governed by the TLS inspection bypass list (BFS-ISP-006) that excludes legally sensitive categories. SSL/TLS inspection shall never apply to communications with Philippine government systems, legal counsel, financial regulators, or healthcare providers, in accordance with RA 10173 and applicable professional privilege laws.

# 6.  PROCEDURES

## 6.1  NDR Sensor Deployment and Baseline Establishment Procedure

The following procedure governs the deployment of new NDR sensors and the establishment of traffic baselines:

Sensor Planning: Network Engineering and IT Security identify the monitoring point, determine SPAN or tap requirements, and plan the sensor deployment without impacting production traffic. For tap deployments, a maintenance window is scheduled.

Physical/Virtual Sensor Deployment: The NDR sensor appliance or virtual machine is deployed, hardened per BFS-ISP-004, and connected to the monitoring port (SPAN receiver or tap port). The sensor is registered in the CMDB.

SIEM Integration: The sensor is configured to forward all detections, flow metadata, and health status to the SIEM in real time. Forwarding is tested and verified.

Initial Traffic Capture Verification: IT Security confirms the sensor is receiving the expected traffic types from the target monitoring point. A traffic capture sample is reviewed to confirm completeness (both directions, all expected protocols).

Baseline Learning Period: The NDR platform is set to learning/baseline mode for thirty (30) days. During this period, anomaly alerts are suppressed (or reviewed only, not actioned) to allow behavioral models to learn normal traffic patterns without alert noise.

Tuning and Threshold Setting: After the baseline period, IT Security reviews the baseline profiles and sets anomaly detection thresholds. Rules that generate excessive false positives during a two-week validation period are tuned before full alerting is activated.

Full Alerting Activation: The sensor is placed into full production monitoring mode. SOC is notified of the new sensor's coverage area and expected alert types. Coverage metrics are updated.

## 6.2  Network Alert Triage and Response SLAs

| Severity | Detection Examples | SOC Response SLA | Required Actions |

| --- | --- | --- | --- |

| CRITICAL | Active C2 communication confirmed; DGA beaconing to known threat actor infrastructure; large-scale exfiltration in progress; IPS exploit blocking for CRITICAL CVE; DNS sinkhole hits from CRITICAL systems; payment network traffic anomaly. | Within 15 minutes | Immediate network isolation of confirmed-compromised hosts; CISO notification; open ITSM incident; forensic PCAP preservation; threat hunt initiated across related assets; coordinate with endpoint IR. |

| HIGH | Beaconing indicators (moderate confidence); lateral movement pattern between servers; unusual outbound data volume; IPS HIGH severity block; new unknown external communication from CRITICAL asset; GuardDuty HIGH finding. | Within 1 hour | Analyst investigation; cross-correlate with EDR and identity logs; open ITSM incident; escalate to IT Security Manager; potential host isolation if investigation confirms threat. |

| MEDIUM | Port scanning behavior; unusual protocol on standard port; single new external connection from non-CRITICAL asset; mildly anomalous DNS query pattern; GuardDuty MEDIUM finding. | Within 4 hours | Analyst investigation; document findings; escalate to HIGH if investigation reveals additional indicators; notify asset owner if specific host implicated. |

| LOW | Minor traffic anomaly below baseline; informational NDR alert; low-confidence behavioral indicator; benign new connection. | Within 24 hours | Review; document outcome; tune rule if false positive; close if benign; maintain trend tracking for recurrence. |

## 6.3  DNS Threat Investigation Procedure

When a DNS-based threat indicator is detected — DGA activity, tunneling pattern, sinkhole hit, or malicious domain query — the following procedure applies:

Detection: SIEM DNS correlation rule or DNS analytics platform generates an alert for a specific querying host and domain pattern.

SOC Triage: SOC analyst reviews the alert, identifies the querying host (via CMDB and IdP identity enrichment), examines the query pattern (frequency, entropy, subdomain length), and assesses whether it matches DGA, tunneling, or known-bad domain indicators.

Host Context Enrichment: SOC queries EDR platform for the identified host — confirming current process state, recent file activity, and whether EDR has any concurrent detections. NDR is queried for other anomalous traffic from the same host.

Sinkhole Hit Follow-Up: For sinkhole hits, the specific malware family and C2 infrastructure are identified from threat intelligence. The infected host is isolated if an active C2 session is confirmed.

DNS Tunneling Confirmation: For suspected DNS tunneling, IT Security performs statistical analysis of the query data — query length distribution, entropy scores, query frequency, and TXT record volumes — to confirm or rule out active tunneling.

Escalation and Containment: If malicious DNS activity is confirmed, the host is isolated, the domain is added to the DNS block list (if not already present), and the incident is escalated to the CISO per BFS-ISP-009 (Incident Response).

Indicator Sharing: Confirmed malicious domains and IPs are added to BFS's internal threat intelligence database and shared with subscribed threat intelligence sharing communities where appropriate.

## 6.4  Network Threat Hunt Execution Procedure

Network threat hunting exercises shall follow a structured methodology to ensure consistent, documented, and actionable outputs:

Hypothesis Definition: The hunt leader documents the hunt hypothesis — the specific threat technique being investigated, the relevant MITRE ATT&CK technique ID(s), the data sources to be queried, and the indicators or patterns that would confirm the hypothesis.

Data Source Preparation: Required data sets are confirmed accessible — flow data for the target time window, DNS query logs, NDR alerts, relevant PCAP captures. Data completeness is verified before the hunt begins.

Query Development: Hunt analysts develop SIEM queries, flow analytics queries, or NDR threat hunt queries to surface data relevant to the hypothesis. Queries are validated against known-benign traffic to calibrate expected results.

Data Analysis: Hunt analysts execute queries and review results, focusing on statistical outliers, unexpected patterns, and indicators consistent with the hunt hypothesis. Analysis is iterative — initial findings drive additional queries.

Findings Classification: Results are classified as: Clean (no threat indicators found), Inconclusive (insufficient data), or Confirmed Threat (threat indicators found requiring escalation).

Escalation (Confirmed Threats): Confirmed threats are escalated immediately to the CISO and actioned as security incidents. The hunt is suspended for the affected assets until the incident is resolved.

Documentation: Hunt results — including hypothesis, data queried, analysis approach, findings, and recommendations — are documented in the ITSM Threat Hunt record regardless of outcome. Clean hunt results are as valuable as threat findings; they confirm coverage and reduce future investigation scope.

Detection Rule Development: For each hunt that identifies a previously undetected technique, a new SIEM correlation rule or NDR model is developed within thirty (30) business days to automate future detection.

# 7.  GUIDELINES

## 7.1  NDR Sensor Placement Best Practices

Strategic Chokepoints: NDR sensors are most effective at network chokepoints — locations where significant volumes of east-west or north-south traffic must pass. Core switch SPAN ports and data center aggregation switches are typically the highest-value sensor placement points for east-west visibility.

Tap vs. SPAN: Network taps are preferred over SPAN ports for high-priority monitoring points (P1 CRITICAL). Taps provide complete, full-duplex captures without frame drops, even under high traffic load. SPAN ports may drop packets when the switch CPU is under stress and do not always capture all packet types. Taps are passive and have no performance impact.

Sensor Redundancy: P1 CRITICAL sensor deployments shall have redundant monitoring capability — if a single sensor fails, coverage at that point must be maintained either by a secondary sensor or by enhanced logging on adjacent devices. Single-point-of-failure in monitoring coverage is unacceptable at P1 points.

Out-of-Band Sensor Management: NDR sensors shall be managed via the OOB management network, consistent with BFS-ISP-012. Production networks shall not have management access to monitoring sensors — this prevents a compromised production host from disabling monitoring.

## 7.2  Flow Analytics Optimization Guidelines

Sampling Rate Awareness: NetFlow/IPFIX sampling (where used to reduce CPU load) reduces visibility proportionally. A 1-in-100 sampling rate means 99% of connections are not recorded in flow data. For high-value network segments, unsampled (1:1) flow export shall be used even at higher CPU cost. Sampled flow data shall be labeled in the SIEM to prevent over-confidence in coverage.

Baseline Segmentation: Traffic baselines shall be maintained at the network segment level (per VLAN/subnet), not only at the device level. An anomaly that is normal for one segment (e.g., high database traffic from application servers) may be highly suspicious from another (user workstation segment).

Time-of-Day Modeling: Flow baselines shall incorporate time-of-day and day-of-week patterns. A large outbound transfer at 02:00 on a Sunday is significantly more suspicious than the same transfer at 14:00 on a weekday and shall trigger higher-confidence alerts.

Peer Group Modeling: For assets in similar operational roles (e.g., all web application servers), peer group behavioral modeling shall be applied — deviations from the behavior of the peer group (one web server communicating differently from all others) shall trigger investigation, even if the absolute communication volume seems normal.

## 7.3  Threat Intelligence Integration for Network Defense

Indicator Freshness: Network-based threat intelligence indicators (malicious IPs, domains, hashes) have varying lifespans. IP addresses can be reassigned quickly; domains may be abandoned and re-registered. BFS shall track the age and confidence level of each indicator and automatically retire indicators that have exceeded their valid lifespan (typically thirty (30) days for IP indicators without re-confirmation, unless designated as long-lived infrastructure).

False Positive Management: Threat intelligence-based blocking (DNS sinkholing, IP blocking) that generates false positives can disrupt legitimate business communications. Threat intelligence feeds shall be evaluated for false positive rate before deployment in blocking mode. New feeds shall be run in detection-only mode for thirty (30) days before blocking is activated.

Internal Intelligence Generation: Confirmed incident IoCs from BFS security incidents — C2 domains, attacker IPs, malware infrastructure — shall be added to BFS's internal threat intelligence database and applied to all network monitoring platforms within two (2) hours of confirmation, ahead of their availability in commercial feeds.

Financial Sector Intelligence: BFS shall prioritize threat intelligence sources that specialize in financial sector threats — FS-ISAC, SWIFT ISAC, and BFS/banking-specific threat feeds — as these provide the most contextually relevant indicators for BFS's threat profile.

## 7.4  Cloud Network Monitoring Best Practices

GuardDuty Threat Levels: AWS GuardDuty finding categories shall be mapped to BFS severity levels: GuardDuty HIGH → BFS HIGH; GuardDuty MEDIUM → BFS MEDIUM; GuardDuty LOW → BFS LOW. GuardDuty findings indicating credential compromise, backdoor activity, or crypto-mining shall be treated as BFS CRITICAL regardless of GuardDuty's own severity rating.

VPC Flow Log Enrichment: VPC Flow Log analysis shall be enriched with AWS resource metadata — instance tags, security group names, and VPC names — to provide asset context equivalent to on-premise CMDB enrichment. Flow log analysis without asset context is significantly less effective.

Multi-Account Visibility: Where BFS operates multiple AWS accounts, GuardDuty shall be deployed in delegated administrator mode from the AWS Organizations management account, providing unified threat detection across all accounts from a single console. Individual account GuardDuty findings shall all be visible centrally.

Cloud Egress Monitoring: All internet-bound traffic from cloud workloads shall be routed through a centralized egress point (NAT Gateway with flow log export, or cloud-hosted SWG) enabling centralized egress monitoring equivalent to on-premise perimeter monitoring.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight. Reviews significant network-detected incidents and network monitoring coverage metrics. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise network monitoring program. Ensures adequate investment in NDR, flow analytics, and cloud monitoring tooling. Reviews monthly monitoring KPI reports. Co-approves this policy. |

| Chief Information Security Officer (CISO) | Responsible for design, implementation, and enforcement. Approves NDR deployment architecture and sensor coverage. Reviews CRITICAL and HIGH network alerts escalated by SOC. Manages threat hunting program. Approves TLS inspection bypass list. Signs off on monthly network monitoring KPI reports. |

| IT Security Team | Maintains NDR platform, IPS rule sets, DNS analytics, and SIEM network correlation rules. Develops and validates threat hunting hypotheses. Reviews flow analytics baselines quarterly. Manages threat intelligence integration. Conducts quarterly correlation rule effectiveness reviews. |

| Security Operations Center (SOC) | Monitors network alerts continuously (24x7x365). Triages NDR, flow analytics, DNS, GuardDuty, and IPS alerts within defined SLAs. Investigates confirmed network threats. Escalates CRITICAL detections. Conducts DNS threat investigation procedure. Documents all alert dispositions in ITSM. |

| Network Engineering Team | Deploys and maintains NDR sensors, SPAN ports, and network taps. Maintains flow export configurations on network devices. Manages FPC infrastructure. Ensures sensor health and connectivity via OOB management. Coordinates sensor deployments with IT Security. |

| Cloud Infrastructure Team | Manages GuardDuty, VPC Flow Logs, CloudTrail, and CSPM tooling in all AWS accounts. Forwards all cloud monitoring data to SIEM. Maintains cloud egress monitoring infrastructure. Responds to cloud network monitoring remediation requirements. |

| Threat Intelligence Team (or IT Security function) | Manages threat intelligence feed subscriptions and integration with NDR, DNS sinkhole, and SIEM. Manages BFS internal threat intelligence database. Shares confirmed incident IoCs with threat intelligence communities. Reviews indicator freshness and confidence levels. |

| Enterprise Architecture Team | Defines network monitoring architecture standards for new system designs. Ensures monitoring requirements are included in all network design proposals. Maintains sensor placement roadmap aligned with network evolution. |

| Compliance and Risk Officers | Validates network monitoring compliance through internal audits. Ensures PCI DSS Requirement 10 and 11 evidence is current. Coordinates regulatory examination evidence for network monitoring. |

| Data Privacy Officer (DPO) | Reviews network monitoring data handling for RA 10173 compliance. Approves bulk access to PCAP data. Confirms TLS inspection bypass list appropriately excludes legally protected categories. Reviews retention periods for network monitoring data. |

| Internal Audit | Independently assesses NDR sensor coverage, alert SLA compliance, DNS monitoring effectiveness, threat hunting program quality, and network monitoring data privacy controls. Reports to the Audit and Risk Committee. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circulars 1140 and 1048

Network monitoring and threat detection are core cybersecurity capabilities required under BSP Circular 1048 (Cybersecurity Risk Management Guidelines for BSP-Supervised Institutions):

BSP Circular 1048 requires BSP-supervised institutions to implement real-time network monitoring and threat detection as part of the cybersecurity operations function — implemented by the NDR, flow analytics, and DNS monitoring requirements of this policy;

The requirement for 24x7 security operations monitoring under BSP's cybersecurity framework is implemented by the SOC continuous monitoring mandate in Section 5.2.2 and the alert response SLAs in Section 6.2;

Network monitoring evidence — flow data, NDR alerts, IPS logs, and DNS query logs — provides the forensic basis for BSP-required incident reports following significant cybersecurity events;

ATM and payment network monitoring (Section 4.1, P1 CRITICAL sensors) directly addresses BSP's expectations for protection of the payment infrastructure.

## 9.2  PCI DSS v4.0 Compliance

Network monitoring directly implements PCI DSS v4.0 requirements for CDE-scoped environments:

PCI DSS Requirement 10.6 — Time synchronization: Implemented by the NTP requirements for all monitoring sensors and data sources in BFS-ISP-008 and BFS-ISP-012;

PCI DSS Requirement 10.7 — Log monitoring for failures: The network monitoring sensor health monitoring and log gap detection in this policy and BFS-ISP-008 implement this requirement;

PCI DSS Requirement 11.5 — Intrusion-detection/intrusion-prevention techniques: The IPS deployment (Section 5.6) and NDR deployment (Section 5.1) at the CDE boundary directly implement this requirement;

PCI DSS Requirement 11.5.1 — IDS/IPS to detect and alert on covert malware communication: The DNS monitoring, beaconing detection, and C2 network detection in this policy implement this specific requirement;

PCI DSS Requirement 11.6 — Unauthorized changes detected and responded to: The SIEM correlation and configuration drift detection in BFS-ISP-012 and BFS-ISP-008 implement this requirement.

## 9.3  Philippine Data Privacy Act (RA 10173)

Network monitoring must balance security effectiveness with privacy obligations:

Network monitoring data containing personal data (payload-level PCAP, application-layer traffic content) is subject to RA 10173 processing requirements — purpose limitation, proportionality, and retention limits govern how this data is handled;

DNS query logs reveal browsing patterns and communication behaviors of individuals — these are personal data under RA 10173 and shall be accessed only for legitimate security investigation purposes;

TLS/SSL inspection decrypts communications that may contain personal data — the bypass list requirement (Section 5.9.4) protects legally privileged communications from interception;

In the event of a network-detected personal data breach, network monitoring evidence — flow data, DNS logs, PCAP — supports the forensic investigation required to assess the breach scope and fulfill the 72-hour NPC notification obligation.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous monitoring of NDR sensor health and coverage metrics, with real-time alerts for sensor failures;

Daily SOC review of network alert backlog, coverage gaps, and unanswered HIGH/CRITICAL alerts;

Weekly IT Security review of network threat hunting schedule and flow analytics baseline currency;

Monthly CISO review of network monitoring KPI report including coverage metrics, alert volumes, and threat hunting outcomes;

Quarterly SIEM network correlation rule effectiveness review;

Annual network monitoring architecture review and PCI DSS Req. 11 evidence package preparation.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| NDR sensor coverage — P1 CRITICAL monitoring points active | 100% | Continuous |

| NDR sensor health — no P1 gap exceeding 15 minutes uninvestigated | 100% | Per gap |

| CRITICAL network alert SOC response within 15 minutes | 100% | Per alert |

| HIGH network alert SOC response within 1 hour | ≥ 98% | Monthly |

| DNS query logging enabled on all BFS DNS resolvers | 100% | Daily |

| DNS block list update currency (within 24 hours) | 100% | Daily |

| GuardDuty active in all BFS AWS accounts and regions | 100% | Daily |

| VPC Flow Logs enabled on all production VPCs | 100% | Daily |

| Network flow data retention — 30 days online | 100% of segments | Monthly |

| Monthly network threat hunts completed on schedule | Monthly | Monthly |

| Threat hunt findings — detection rules created within 30 days of confirmed technique | 100% | Per finding |

| IPS signature update currency (within 48 hours for critical) | 100% | Per update |

| SIEM network correlation rule quarterly review completed | Quarterly | Quarterly |

| False positive rate per network correlation rule | < 20% | Quarterly |

| PCAP retention at P1 critical points — 72-hour rolling | 100% | Weekly |

| Cloud network monitoring CRITICAL findings remediated within 24 hours | 100% | Per finding |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Late network alert investigation documentation; failure to update DNS block list within required window; missed monthly threat hunt. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Disabling or suppressing NDR alerts without CISO approval; accessing PCAP data without documented security investigation need; failing to forward network monitoring data to SIEM. | Formal warning; immediate remediation; IT Security review of all monitoring system access; mandatory training. |

| Serious | Deliberately disabling GuardDuty or VPC Flow Logs; suppressing network monitoring data during an active incident; accessing DNS query logs or PCAP data for unauthorized purposes. | Suspension pending investigation; formal disciplinary action up to termination; CISO escalation; forensic investigation. |

| Critical / Legal | Deliberately disabling network monitoring to conceal an ongoing attack; exfiltrating PCAP data containing customer personal information for unauthorized purposes; tampering with network detection systems to prevent threat detection. | Immediate termination; referral to law enforcement; prosecution under RA 10175; mandatory NPC and BSP notification. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Network monitoring exceptions create detection blind spots. Every exception reduces BFS's ability to detect threats in the affected network segment or traffic type. Exceptions shall be rare, narrowly scoped, time-limited, and subject to compensating detective controls. Exceptions shall never be granted to accommodate threat actor evasion — if a monitoring control is discovered disabled or bypassed during an incident, it shall be treated as a compromise indicator, not a known exception.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Condition / Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| NDR Sensor Gap | Sensor hardware failure pending replacement; SPAN not technically feasible on specific device. | 14 days | CISO; enhanced perimeter logging as compensating control |

| Flow Data Gap | Specific device not supporting NetFlow/IPFIX export. | Permanent (with quarterly review); compensating FPC or SPAN | CISO |

| DNS Log Gap | Specific legacy DNS resolver not supporting query logging. | 90 days; migration to logging-capable resolver | CISO |

| TLS Inspection Bypass (additional) | Specific application category requiring bypass beyond standard list. | Permanent (annual review) | CISO + DPO + Legal |

| GuardDuty Finding Suppression | Specific finding category confirmed as false positive for BFS environment. | Permanent (quarterly review) | CISO; suppression rules documented in SIEM |

| PCAP Retention Reduction | Storage constraint requiring shorter than 72-hour retention. | 30 days; storage expansion plan required | CISO |

| Threat Hunt Deferral | Critical operational constraint preventing monthly hunt. | One month deferral maximum; make-up hunt required | CISO / IT Security Manager |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) removing all monitoring from a P1 CRITICAL sensor point for more than 24 hours without a compensating alternative sensor; (b) disabling GuardDuty across an entire AWS account; (c) disabling VPC Flow Logs on any AWS account processing cardholder data or customer PII; (d) suppressing DNS query logging on the primary BFS DNS resolver; (e) granting non-IT-Security personnel access to raw PCAP data without documented security investigation justification. |

| --- |

## 11.3  Exception Process

Network Engineering or IT Security submits a Network Monitoring Exception Request via the ITSM portal, providing: specific monitoring requirement, affected segment/device, technical justification, compensating detective controls, duration, and planned remediation.

IT Security reviews compensating controls for adequacy — e.g., does enhanced perimeter logging compensate for an internal segment sensor gap?

CISO approves all exception types. DPO review required for TLS inspection bypass exceptions.

Approved exceptions logged in Exception Register with compensating controls and monitoring configuration.

All exceptions reviewed monthly by CISO Office. Expired exceptions treated as policy violations.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon:

Significant changes to BFS network architecture that affect sensor placement or traffic visibility;

Material evolution in network-layer attack techniques requiring new detection capabilities;

A significant network-layer security incident revealing detection gaps;

New or amended BSP circulars, PCI DSS versions, or NPC issuances affecting network monitoring obligations;

Major changes to the BFS NDR or SIEM platform affecting monitoring architecture.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Aligned with CIS Controls v8 Control 13, ISO/IEC 27001:2022, PCI DSS v4.0, NIST SP 800-94, MITRE ATT&CK, and BSP Circulars 1140 and 1048. | IT Head & Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 13 safeguards to ISO/IEC 27001:2022 Annex A controls, with PCI DSS v4.0 cross-references.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 13.1 | Centralize Security Event Alerting | A.8.16 | Monitoring activities | IG2 |

| 13.2 | Deploy a Host-Based Intrusion Detection Solution | A.8.16 | Monitoring activities | IG2 |

| 13.3 | Deploy a Network Intrusion Detection Solution | A.8.16 | Monitoring activities | IG2 |

| 13.4 | Perform Traffic Filtering Between Network Segments | A.8.22 | Segregation in networks | IG2 |

| 13.5 | Manage Access Control for Remote Assets | A.6.7 | Remote working | IG2 |

| 13.6 | Collect Network Traffic Flow Logs | A.8.15 | Logging | IG2 |

| 13.7 | Deploy a Host-Based Intrusion Prevention Solution | A.8.16 | Monitoring activities | IG3 |

| 13.8 | Deploy a Network Intrusion Prevention Solution | A.8.16 | Monitoring activities | IG3 |

| 13.9 | Deploy Port-Level Access Control | A.8.20 | Networks security | IG3 |

| 13.10 | Perform Application Layer Filtering | A.8.21 | Security of network services | IG3 |

| 13.11 | Tune Security Event Alerting Thresholds | A.8.16 | Monitoring activities | IG3 |

| N/A | Threat intelligence integration for network detection | A.5.7 | Threat intelligence | IG2/3 |

| N/A | DNS filtering and monitoring | A.8.23 | Web filtering | All |

| N/A | Network behavioral analytics — flow-based anomaly detection | A.8.16 | Monitoring activities | IG2 |

| N/A | Full packet capture for forensic network investigation | A.8.15 | Logging | IG3 |

| N/A | Cloud network monitoring — GuardDuty / VPC Flow Logs | A.8.16 | Monitoring activities | All |

| N/A | Network threat hunting — proactive threat detection | A.8.16 | Monitoring activities | IG3 |

| N/A | SIEM correlation — MITRE ATT&CK network technique coverage | A.8.16 | Monitoring activities | All |

| N/A | Privacy — network monitoring data handling (RA 10173) | A.5.34 | Privacy and protection of PII | All |

| N/A | PCI DSS Req. 11.5 — IDS/IPS at CDE boundary | A.8.16 | Monitoring activities | All |

| N/A | PCI DSS Req. 11.5.1 — covert malware C2 detection | A.8.16 | Monitoring activities | All |

| N/A | PCI DSS Req. 10.6 — time synchronization for monitoring | A.8.17 | Use of clock synchronization | All |

Legend: IG1 = All organizations; IG2 = Intermediate maturity; IG3 = Advanced. BFS targets full IG2 with IG3 controls (NDR + NIPS, port-level NAC, application-layer filtering, tuned alert thresholds, network threat hunting program) deployed across all production environments.

# APPENDIX B:  MITRE ATT&CK Network Detection Coverage Matrix

The following table maps key MITRE ATT&CK network-observable techniques to the BFS detection controls that address them. This matrix serves as the basis for network threat hunting hypotheses and SIEM correlation rule development. The IT Security team shall review and update this matrix quarterly.

| ATT&CK ID | Technique | Network Observable | BFS Detection Control | Coverage Level |

| --- | --- | --- | --- | --- |

| T1071 | Application Layer Protocol — C2 over HTTP/S, DNS, SMTP | Beaconing to external IPs; encrypted channels on non-standard ports | NDR behavioral; DNS analytics; NGFW app-layer; SWG | HIGH |

| T1071.004 | DNS C2 — DGA / DNS tunneling | High DNS query volume; long subdomains; TXT record abuse | DNS behavioral analytics; SIEM DNS correlation | HIGH |

| T1048 | Exfiltration over Alternative Protocol — DNS, ICMP, HTTP | Anomalous outbound DNS volume; ICMP data patterns; large POST requests | DNS analytics; flow anomaly detection; DLP at network layer | MEDIUM |

| T1041 | Exfiltration over C2 Channel | Large outbound volume to C2 IP; protocol anomaly | NDR beaconing detection; flow volume anomaly; SIEM correlation | HIGH |

| T1046 | Network Service Discovery — port scanning | High connection rate to multiple ports from single host | Flow analytics scan detection; IPS signature; NDR scan model | HIGH |

| T1018 | Remote System Discovery — internal network recon | Broad ICMP ping sweeps; ARP scanning; rapid new host connections | Flow analytics; NDR lateral recon model; SIEM correlation | HIGH |

| T1021 | Remote Services — lateral movement via SMB/RDP/SSH | East-west SMB/RDP/SSH connections between non-standard host pairs | NDR lateral movement model; SIEM east-west correlation | HIGH |

| T1550.002 | Pass the Hash — NTLM network authentication anomaly | NTLM from workstation to non-DC; failed Kerberos followed by NTLM | SIEM Kerberos/NTLM correlation; NDR authentication pattern | MEDIUM |

| T1557 | Adversary-in-the-Middle — ARP/DNS poisoning | ARP gratuitous broadcasts; DNS response spoofing | DHCP snooping; DAI; DNS response anomaly detection | HIGH |

| T1095 | Non-Application Layer Protocol — ICMP/raw socket C2 | ICMP traffic containing payload data; raw socket connections | NDR protocol anomaly; flow analytics; firewall ICMP inspection | MEDIUM |

| T1572 | Protocol Tunneling — encapsulation of C2 in legitimate protocols | DNS query entropy; ICMP data length anomaly; HTTP encoding anomaly | DNS analytics; NDR tunneling detection; SWG inspection | HIGH |

| T1566.002 | Phishing — link in email leading to malware download | Post-email-click web download to new domain; FQDN newly registered | SWG URL scanning; NDR new domain connection; DNS new domain alert | HIGH |

| T1190 | Exploit Public-Facing Application — web exploitation | Malformed HTTP requests; SQL injection patterns; unusual response codes | WAF; IPS web exploit signatures; NDR application anomaly | HIGH |

| T1498 | Network Denial of Service — volumetric attack | Sustained high-volume traffic from single or distributed sources | Flow volumetric anomaly; IPS DDoS protection; ISP scrubbing | MEDIUM |

# APPENDIX C:  Quick Reference Card

## C.1  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| Network alert — CRITICAL / HIGH | Security Operations Center (SOC) | soc@bfs.com.ph \| 24/7 hotline |

| NDR sensor issues / coverage gaps | IT Security + Network Engineering | security@bfs.com.ph |

| DNS block list / sinkhole queries | IT Security Team | security@bfs.com.ph |

| GuardDuty / cloud monitoring | Cloud Infrastructure Team | cloud-ops@bfs.com.ph |

| PCAP evidence request | SIEM Forensic Officer | ciso@bfs.com.ph \| ITSM Evidence Request |

| Threat hunting coordination | IT Security Team | security@bfs.com.ph |

| Threat intelligence queries | Threat Intelligence function | ti@bfs.com.ph |

| Network monitoring data privacy | Data Privacy Officer | dpo@bfs.com.ph |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

## C.2  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| CRITICAL network alert — SOC initial response | Within 15 minutes |

| HIGH network alert — SOC initial response | Within 1 hour |

| MEDIUM network alert — SOC initial response | Within 4 hours |

| P1 CRITICAL sensor gap — CISO escalation | Within 1 hour of detection |

| NDR sensor failure alert generation | Within 15 minutes of failure |

| DNS sinkhole hit — SOC alert and investigation | Within 15 minutes (CRITICAL); 1 hour (HIGH) |

| DNS block list update — standard (daily) | Daily |

| DNS block list update — active incident C2 domain | Within 2 hours of confirmation |

| IPS signature update — critical (active exploitation) | Within 48 hours |

| IPS signature update — standard | Weekly |

| NDR platform model update review | Within 14 days of release |

| Network threat hunt execution | Monthly |

| Threat hunt detection rule development (confirmed technique) | Within 30 business days |

| GuardDuty CRITICAL finding remediation | Within 24 hours |

| VPC Flow Log gap remediation | Within 24 hours |

| SIEM network correlation rule quarterly review | Quarterly |

| Network monitoring architecture review | Annual |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-013  |  Network Monitoring and Defense Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
