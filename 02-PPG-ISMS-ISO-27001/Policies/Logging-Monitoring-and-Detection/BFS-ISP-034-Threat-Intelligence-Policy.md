---
title: "BFS-ISP-034-Threat-Intelligence-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Logging-Monitoring-and-Detection/BFS-ISP-034-Threat-Intelligence-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:40Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Logging-Monitoring-and-Detection"
aliases:
  - "BFS-ISP-034-Threat-Intelligence-Policy"
creator: "Un-named"
created: "2026-05-08T07:08:00Z"
modified: "2026-05-08T07:15:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>THREAT INTELLIGENCE<br>POLICY<br>Strategic, Tactical, Operational, and Technical Threat Intelligence Across BFS Threat Landscape — Sources, TI Lifecycle, MITRE ATT&CK Integration, Sector-Specific TI, AI Threat Intelligence, and Operational Integration with Security Operations<br>Policy Reference: BFS-ISP-034<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.5.7<br>Aligned with MITRE ATT&CK, Diamond Model, Cyber Kill Chain, STIX/TAXII, BSP Cybersecurity Expectations<br>Intelligence-Driven Security Operations for Regulated Banking |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Threat Intelligence Policy |

| --- | --- |

| Policy Reference | BFS-ISP-034 |

| Policy Owner | Chief Information Security Officer (CISO) / Head of Security Operations / Chief Information Officer (CIO) / Head of Enterprise Architecture and AI — quad-functional ownership |

| Document Author | CISO Office / Security Operations Center / Threat Intelligence Function / IT Operations / Enterprise Architecture and AI Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2026 |

| Review Date | April 2027 |

| Review Cycle | Annual baseline review with mandatory review after: material change to BFS threat landscape; emergence of materially new threat actor classes affecting financial sector; material new threat intelligence sources or capabilities; significant cyber incidents at BFS or peer institutions providing threat intelligence lessons; evolution of MITRE ATT&CK or related frameworks |

| Supersedes | Not Applicable (New Document — Consolidates Previously Distributed Threat Intelligence Coverage) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. Closes ISO/IEC 27001:2022 Annex A.5.7 (Threat intelligence). |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-007 (Continuous Vulnerability Management — TI informs vulnerability prioritization); BFS-ISP-013 (Network Infrastructure — TI informs network monitoring §6); BFS-ISP-017 (Incident Response — TI informs incident response and TI from incidents); BFS-ISP-008 (Audit Logging — log analysis informed by TI); BFS-ISP-018 (Penetration Testing — TI informs threat scenarios); BFS-AI-002 §9.4 (AI Security Risk informed by AI TI); BFS-ISP-026 (Compliance — TI sharing per legal/regulatory frameworks); BFS-ISP-031 §8.5 (ICT Supply Chain TI) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.5.7 (Threat intelligence — new 2022 control); MITRE ATT&CK Framework (adversarial tactics, techniques, procedures); Diamond Model of Intrusion Analysis; Lockheed Martin Cyber Kill Chain; STIX/TAXII (Structured Threat Information eXpression / Trusted Automated Exchange of Indicator Information); Traffic Light Protocol (TLP) for TI sharing; Cyber Threat Intelligence Practitioner certification frameworks |

| Regulatory Reference | BSP Circular 1048 (Cybersecurity — TI as cybersecurity capability); BSP Circular 1140 (IT Risk Management — TI informs IT risk); BSP Circular 982 (Electronic Banking — TI for channel-specific threats); ISACs and threat sharing organizations relevant to Philippine banking sector; cross-border TI considerations per BFS-ISP-024 §7 |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Information Security Officer |  |  |  |

| Head of Security Operations |  |  |  |

| Chief Information Officer |  |  |  |

| Head of Enterprise Architecture and AI |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Chief Legal Counsel |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Threat Intelligence Policy operationalizing ISO/IEC 27001:2022 Annex A.5.7 (Threat intelligence — newly added in the 2022 revision) and providing comprehensive framework for BFS threat intelligence capability. It addresses the strategic, tactical, operational, and technical dimensions of threat intelligence — supporting BFS security operations, risk management, and strategic decision-making with accurate, timely, and actionable intelligence about threats facing BFS.

Threat intelligence is foundational capability for modern security operations. The fundamental observation underlying threat intelligence is that BFS does not operate in isolation against an undifferentiated threat landscape — BFS faces specific threat actors with specific motivations, capabilities, and operational patterns; specific industries face specific threat patterns; specific countries and regions face specific threats; specific technology choices invite specific threat techniques. Understanding these specifics enables prioritized defense focused on what BFS actually faces rather than theoretical defense against everything possible. Intelligence-driven security operations focus finite resources on highest-impact threats rather than generic security.

BFS as a regulated Philippine bank faces specific threat patterns warranting dedicated threat intelligence capability. Financial sector threat actors target banks specifically — sophisticated criminal groups specializing in financial fraud, nation-state actors with financial motivations, hacktivist groups targeting financial institutions, and increasingly AI-augmented threat actors leveraging emerging capabilities. Philippine banking sector faces specific threat patterns including business email compromise (BEC) attacks, ATM and card-related fraud schemes, social engineering of bank personnel, payment system attacks, and customer-facing channel abuse. Regional threat patterns affect Philippine financial sector. AI-native operations introduce specific threat patterns including adversarial AI attacks, prompt injection, model extraction, and AI-enabled threat actor capabilities.

Threat intelligence has multiple distinct dimensions warranting differentiated treatment. Strategic threat intelligence informs leadership about threat landscape evolution and strategic implications — supporting strategic security investment decisions and Board-level risk awareness. Tactical threat intelligence informs security architecture and program decisions — what threat actor TTPs (tactics, techniques, procedures) does BFS need to defend against, what security capabilities address them. Operational threat intelligence informs security operations — current threat actor activity, current campaigns, current threat indicators feeding detection and response. Technical threat intelligence provides specific indicators of compromise (IoCs) — file hashes, IP addresses, domains, URLs — feeding security tools for automated detection. Each dimension requires specific sources, processes, and consumption patterns.

Beyond ISO 27001 A.5.7 closure, this policy addresses BSP supervisory expectations on cybersecurity — BSP Circular 1048 establishes cybersecurity expectations including threat awareness as cybersecurity capability. BSP supervisory framework expects banks to maintain awareness of threats facing the sector and to use that awareness to inform security operations. BSP examination of cybersecurity programs increasingly examines threat intelligence capability.

This policy consolidates threat intelligence coverage previously distributed across BFS-ISP-007 (vulnerability prioritization), BFS-ISP-013 §6 (network monitoring informed by threats), and BFS-ISP-017 (incident response with TI integration). The distributed coverage remains operationally referenced; this policy provides the dedicated comprehensive threat intelligence framework supporting coherent threat intelligence operations across BFS.

BFS approach to threat intelligence is intelligence-driven security operations — threat intelligence is not isolated function disconnected from operations; threat intelligence is foundational input to security architecture, security operations, vulnerability management, incident response, and strategic security decisions. The threat intelligence capability provides actionable intelligence to security operations and informs strategic decisions; threat intelligence value is realized through operational integration.

The specific objectives of this policy are to:

Establish comprehensive threat intelligence framework across strategic, tactical, operational, and technical dimensions;

Operationalize ISO/IEC 27001:2022 Annex A.5.7 (Threat intelligence) as new 2022 control;

Define threat intelligence lifecycle — direction, collection, processing, analysis, dissemination, feedback;

Establish threat intelligence sources spanning commercial, government, ISACs, OSINT, internal sources;

Address threat actor profiling and threat landscape understanding for BFS context;

Operationalize MITRE ATT&CK Framework for adversarial TTP analysis;

Define indicators of compromise (IoC) discipline supporting security tool integration;

Address sector-specific threat intelligence — financial sector ISACs, peer sharing;

Address AI-specific threat intelligence — adversarial AI threats, AI-enabled threat actor capabilities;

Establish threat intelligence sharing framework — receiving and providing TI per Traffic Light Protocol (TLP);

Integrate threat intelligence with security operations — SIEM, SOAR, EDR, vulnerability management, incident response, penetration testing;

Coordinate with BFS-ISP-007 vulnerability prioritization, BFS-ISP-013 §6 network monitoring, BFS-ISP-017 incident response, BFS-ISP-018 penetration testing, BFS-AI-002 AI risk;

Provide audit-friendly documentation supporting BSP examinations on cybersecurity per Circular 1048 and external audit reviews of BFS threat intelligence capability.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Threat Intelligence (TI) | Evidence-based knowledge about existing or emerging threats — including adversaries, capabilities, intent, opportunities — produced through collection, processing, analysis, and contextualization to support decisions and actions. |

| Cyber Threat Intelligence (CTI) | Threat intelligence specifically focused on cyber threats — distinct from but coordinated with broader threat intelligence (physical, fraud, etc.). |

| Strategic Threat Intelligence | High-level threat intelligence supporting strategic decision-making — threat landscape evolution, strategic implications, executive briefings. Audience: leadership, Board. |

| Tactical Threat Intelligence | Threat actor TTPs and campaigns supporting security architecture and program decisions — what threat actor techniques to defend against. Audience: security architects, security program managers. |

| Operational Threat Intelligence | Current threat actor activity supporting security operations — current campaigns, active indicators, immediate threat awareness. Audience: SOC analysts, incident responders. |

| Technical Threat Intelligence | Specific indicators (file hashes, IPs, domains, URLs) supporting automated detection and response. Audience: security tools, SOC operators. |

| Threat Actor | Individual, group, or entity carrying out threat activity — including criminal groups, nation-state actors, hacktivists, insider threats, terrorist groups. |

| TTP (Tactics, Techniques, Procedures) | Threat actor behavior patterns — Tactics (high-level objectives), Techniques (how objectives achieved), Procedures (specific implementation). Foundational to MITRE ATT&CK. |

| MITRE ATT&CK | Globally accessible knowledge base of adversary tactics and techniques — the de facto standard for adversary TTP cataloging and analysis. |

| Indicator of Compromise (IoC) | Observable artifact indicating with high probability that a system has been or is being attacked — file hashes, IP addresses, domains, URLs, registry keys, etc. |

| Indicator of Attack (IoA) | Observable artifact indicating attack in progress — typically more behavioral than IoCs which are typically more static. |

| Diamond Model | Intrusion analysis model focusing on adversary, capability, infrastructure, victim — providing structured analytical approach. |

| Cyber Kill Chain | Lockheed Martin model of cyber attack stages — reconnaissance, weaponization, delivery, exploitation, installation, command and control, actions on objectives. |

| STIX (Structured Threat Information eXpression) | Standardized language for representing threat intelligence — supporting machine-readable TI exchange. |

| TAXII (Trusted Automated Exchange of Indicator Information) | Protocol for exchanging cyber threat intelligence — typically using STIX format. |

| Traffic Light Protocol (TLP) | Marking system for sharing sensitive information with appropriate audiences — TLP:RED (named recipients only), TLP:AMBER (limited disclosure), TLP:GREEN (community), TLP:CLEAR (no restriction). |

| ISAC (Information Sharing and Analysis Center) | Industry-based organization for cyber threat sharing — financial sector ISACs particularly relevant to BFS. |

| Threat Hunting | Proactive search for threats not detected through automated detection — hypothesis-driven investigation in BFS environment. |

| IOC Lifecycle | Lifecycle of indicators — observation, validation, distribution, expiration. IOCs have time-bounded value. |

| Threat Feed | Stream of threat intelligence — typically machine-readable indicators with metadata. |

| Pyramid of Pain | Concept ranking IoC types by adversary cost to change — hash values low pain (easy to change), TTPs high pain (expensive to change). Higher pyramid levels more durable defense. |

| Adversarial AI Threats | Threats specifically targeting AI systems — adversarial examples, model extraction, model poisoning, prompt injection per BFS-AI-002 §9.4. |

| Threat Hunting Hypothesis | Specific hypothesis about potential threat in environment — driving investigation activity. |

## 2.2  Scope

### 2.2.1  In-Scope Threat Intelligence

Cyber threat intelligence covering BFS technology environment — endpoints, servers, network, cloud, applications, AI/ML;

Threat intelligence covering financial sector threats — sector-specific threat actors, financial fraud schemes, banking-specific attack patterns;

Threat intelligence covering Philippine and regional threat landscape;

Threat intelligence covering BFS technology partner ecosystem;

Strategic threat intelligence supporting BFS leadership and Board awareness;

Operational threat intelligence supporting Security Operations Center (SOC);

Technical threat intelligence supporting automated security tools;

AI-specific threat intelligence per BFS-AI-002;

Internal threat intelligence — intelligence derived from BFS observations, incidents, security events;

Cross-border threat intelligence considerations per BFS-ISP-024 §7.

### 2.2.2  Out-of-Scope Items

Personal background investigations of BFS personnel — addressed through HR per BFS-ISP-021;

Customer threat intelligence not affecting BFS — though BFS does monitor for customer-impacting threats;

Physical-only threat intelligence (security at branches) — addressed through physical security framework per BFS-ISP-019 with appropriate coordination.

## 2.3  Coverage of ISO 27001 A.5.7

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.5.7 | Threat intelligence — Information relating to information security threats shall be collected and analysed to produce threat intelligence (NEW in ISO/IEC 27001:2022). | Section 3 (Framework with principles); Section 4 (TI Dimensions — strategic/tactical/operational/technical); Section 5 (TI Lifecycle); Section 6 (TI Sources); Section 7 (Threat Actor and Landscape Analysis); Section 8 (TTP Analysis with MITRE ATT&CK); Section 9 (IoC Operations); Section 10 (Sector and Sharing); Section 11 (AI Threat Intelligence); Section 12 (Operational Integration) |

# 3.  THREAT INTELLIGENCE FRAMEWORK

## 3.1  Framework Principles

Intelligence-Driven Security: Threat intelligence drives security architecture, operations, and decisions — TI informs prioritization rather than being isolated function;

Multi-Dimensional: TI operates across strategic/tactical/operational/technical dimensions — different audiences require different intelligence;

Source Diversity: TI from multiple complementary sources — single sources have gaps; diversity provides coverage;

Quality Over Quantity: TI quality matters more than volume — accurate timely intelligence beats high-volume low-quality feeds;

Contextual Analysis: Raw threat data analyzed and contextualized to produce intelligence — data is not intelligence until analyzed;

BFS-Specific Calibration: TI calibrated to BFS context — what affects BFS specifically, in BFS sector, in BFS region, with BFS technology;

Operational Integration: TI integrated with security operations — SIEM, SOAR, EDR, vulnerability management, incident response;

Sharing Disciplined: TI sharing per appropriate frameworks — TLP, contractual obligations, regulatory requirements, peer trust;

Continuous Improvement: TI capability evolves — new sources, new techniques, new threat actor patterns, new technologies, lessons learned;

Accountability: TI capability supports accountability — feedback loop confirms TI value, identifies gaps, drives improvement.

## 3.2  Threat Intelligence Governance

Board Audit & Risk Committee: Approves this policy. Receives strategic TI briefings on material threat landscape developments. Material threat events visibility;

Information Security Steering Committee: Reviews TI program effectiveness. Strategic TI briefings to leadership;

Chief Information Security Officer: Document co-owner. Operationally accountable for TI capability and its integration with security operations;

Head of Security Operations: Document co-owner. Operational TI consumption and SOC integration. Tactical and operational TI focus;

Chief Information Officer: Document co-owner. Strategic TI influence on technology decisions;

Head of Enterprise Architecture and AI: Document co-owner. AI threat intelligence per Section 11 and AI security implications;

Threat Intelligence Function: Day-to-day TI capability — sources management, analysis, dissemination, feedback. May be standalone or integrated with SOC;

Security Operations Center: Primary operational consumer of TI — integration with SIEM, detection, threat hunting;

Vulnerability Management: TI consumer per BFS-ISP-007 — TI informs vulnerability prioritization;

Incident Response: TI consumer and producer per BFS-ISP-017 — incidents inform TI; TI informs incident response;

Penetration Testing: TI consumer per BFS-ISP-018 — TI informs penetration test scenarios;

Internal Audit: Independent verification per BFS-ISMS-008.

## 3.3  Three Lines of Defense for Threat Intelligence

First Line: Security Operations Center, IT operations, business operations — primary TI consumers. SOC operationalizes TI for detection and response;

Second Line: CISO Office, Threat Intelligence Function, Risk Management — independent oversight, framework, TI quality assurance;

Third Line: Internal Audit per BFS-ISMS-008 — independent assurance of TI capability effectiveness.

| INTELLIGENCE-DRIVEN MEANS OPERATIONAL:  Threat intelligence has operational value only when it drives security operations decisions. TI feeds that nobody acts on are noise. TI products that nobody reads are wasted analyst time. The threat intelligence capability succeeds when SOC analysts use TI for detection tuning, vulnerability managers use TI for patch prioritization, incident responders use TI for adversary attribution, leadership uses strategic TI for security investment decisions. Disconnected TI capability that produces reports nobody acts on is failure regardless of report quality. The capability is judged by operational impact, not by TI volume. |

| --- |

# 4.  THREAT INTELLIGENCE DIMENSIONS

Threat intelligence operates across four distinct dimensions with different audiences, sources, and consumption patterns.

## 4.1  Four-Dimension Framework

| Dimension | Audience | Time Horizon | Examples |

| --- | --- | --- | --- |

| STRATEGIC | Leadership, Board | Long-term (months to years) | Threat landscape evolution; nation-state activity affecting financial sector; emerging threat capabilities; geopolitical implications for BFS |

| TACTICAL | Security architects, security managers | Medium-term (weeks to months) | Threat actor TTPs targeting financial sector; sector-specific attack patterns; security capability gaps relative to known threats |

| OPERATIONAL | SOC analysts, incident responders | Short-term (days to weeks) | Active campaigns; ongoing threat actor activity; current ransomware groups; current phishing campaigns |

| TECHNICAL | Security tools, SOC operators | Real-time to short-term (hours to days) | Specific IoCs — file hashes, IP addresses, domain names, URLs; specific malware signatures; CVEs being actively exploited |

## 4.2  Strategic Threat Intelligence

Threat Landscape Briefings: Quarterly or annual threat landscape briefings to leadership and Board — covering material developments;

Strategic Threat Reports: Periodic reports analyzing material threat trends — emerging threat actor classes, technology threat trends;

Geopolitical Implications: Awareness of geopolitical developments affecting cyber threat landscape — particularly relevant for nation-state activity;

Sector Strategic Threats: Strategic threats to financial sector globally and regionally;

AI-Era Threat Evolution: Strategic implications of AI-augmented threats and threat actor capability evolution;

Strategic Threat Implications for BFS: BFS-specific strategic implications — what threat landscape evolution means for BFS strategy and investment.

## 4.3  Tactical Threat Intelligence

TTP Analysis: Threat actor TTPs analyzed per MITRE ATT&CK framework per Section 8;

Sector-Specific TTP: Financial sector-specific TTPs — banking-targeted attack patterns;

Campaign Analysis: Threat actor campaigns affecting BFS or peer institutions;

Capability Gap Analysis: BFS security capability relative to known threat actor capabilities — where do we lack defense for known threats;

Tactical TI to Architects: Tactical TI shared with security architects and program managers supporting security architecture decisions;

Tactical TI to Vulnerability Management: Tactical TI per BFS-ISP-007 — informing vulnerability prioritization through threat context.

## 4.4  Operational Threat Intelligence

Active Threat Awareness: SOC awareness of currently active threat actors and campaigns;

Real-Time Briefings: Daily/weekly SOC briefings on operational threats;

Active Campaign Tracking: Tracking of campaigns affecting BFS or peer institutions in real time;

Threat Hunting Inputs: Operational TI feeds threat hunting hypotheses per Section 12.4;

Incident Response Inputs: Operational TI provides incident context per BFS-ISP-017 with adversary attribution where appropriate.

## 4.5  Technical Threat Intelligence

IoC Feeds: Real-time IoC feeds — file hashes, IP addresses, domains, URLs — feeding security tools;

Detection Signatures: Detection rules/signatures for known threats — IDS/IPS signatures, EDR rules, SIEM detection rules;

YARA Rules: YARA rules for malware detection;

CVE Feeds: CVE feeds with exploitation context — particularly actively exploited CVEs;

Reputation Feeds: IP/domain reputation feeds informing security tool decisions;

Real-Time Integration: Technical TI typically integrated with security tools through automated feeds (STIX/TAXII, vendor feeds, custom integrations).

# 5.  THREAT INTELLIGENCE LIFECYCLE

Threat intelligence operates through structured lifecycle providing repeatable process for TI production.

## 5.1  Six-Stage TI Lifecycle

| Stage | Activities | Outputs |

| --- | --- | --- |

| Direction | Defining intelligence requirements — what TI is needed for what decisions | Documented Priority Intelligence Requirements (PIRs); intelligence collection plan |

| Collection | Gathering raw threat data from sources | Raw threat data from sources per Section 6 |

| Processing | Converting raw data to processable form — parsing, normalizing, deduplicating | Structured threat data ready for analysis |

| Analysis | Analyzing processed data to produce intelligence | Threat intelligence products — strategic reports, tactical analyses, operational briefings, technical indicators |

| Dissemination | Sharing intelligence with appropriate consumers | Audience-appropriate TI products distributed via appropriate channels |

| Feedback | Receiving feedback on TI value — driving improvement | Feedback to direction stage — refined PIRs, source adjustment, analytical improvement |

## 5.2  Direction Stage

PS-2.1  BFS shall maintain Priority Intelligence Requirements (PIRs) — documented questions TI capability is meant to answer.

PS-2.2  PIRs shall be reviewed and updated periodically — typically annually with event-driven updates;

PS-2.3  PIRs shall be developed in coordination with TI consumers — security operations, security architecture, leadership.

PS-2.4  PIRs drive collection — collection focused on answering PIRs rather than collecting indiscriminately.

Example PIRs for BFS:

What threat actors are actively targeting Philippine banks?

What threat actors are likely to target BFS specifically given BFS profile?

What new TTPs are emerging that BFS security capability does not address?

What CVEs are being actively exploited in financial sector?

What AI-specific threats are emerging that affect BFS AI-native operations?

What threat actors target BFS technology stack?

## 5.3  Collection Stage

Collection per PIRs from sources documented in Section 6;

Collection methods include: subscription-based feeds, ISAC participation, OSINT collection, internal observations;

Collection coverage assessed against PIRs — gaps identified and addressed through additional sources;

Collection cost-benefit considered — premium sources justified by intelligence value.

## 5.4  Processing Stage

Raw data parsed and normalized — supporting consistent analysis across sources;

Deduplication — same indicators from multiple sources consolidated;

Enrichment — adding context from BFS environment (does BFS have this technology, has BFS seen this indicator);

Quality scoring — source reliability and indicator confidence assessed.

## 5.5  Analysis Stage

Analytical products developed per audience — strategic reports for leadership, tactical analyses for architects, operational briefings for SOC, technical IoCs for tools;

Analytical frameworks applied — Diamond Model, MITRE ATT&CK, Cyber Kill Chain, BFS-specific threat models;

Analyst expertise critical — analytical quality reflects analyst capability;

Hypothesis-driven analysis — particularly for threat hunting per Section 12.4;

Confidence assessment — analytical conclusions include confidence assessment supporting consumer calibration.

## 5.6  Dissemination Stage

Audience-appropriate dissemination — strategic to leadership, tactical to architects, operational to SOC, technical to tools;

Dissemination channels include: secure portals, briefings, automated feeds to tools, alert mechanisms;

Sensitivity-appropriate dissemination per TLP per Section 10.3;

Cross-functional dissemination where appropriate — incident responders, vulnerability managers, penetration testers.

## 5.7  Feedback Stage

TI consumers provide feedback on intelligence value — what helped, what missed, what was wrong;

Feedback drives PIR refinement — adjusting collection focus;

Feedback drives source assessment — sources providing little value reconsidered;

Feedback drives analytical improvement — analytical gaps addressed;

Periodic feedback collection — typically quarterly TI capability review.

# 6.  THREAT INTELLIGENCE SOURCES

Threat intelligence comes from diverse sources providing different types of intelligence. Source diversity is foundational to TI coverage.

## 6.1  Source Categories

| Source Category | Description | Examples / Use Cases |

| --- | --- | --- |

| Commercial TI | Subscription-based threat intelligence services from commercial providers | Major commercial TI providers; specialized financial sector TI providers; technical IoC feeds; strategic intelligence services |

| Government | Government-issued threat advisories and intelligence | NCERT-PH (Philippine National CERT); BSP-issued cybersecurity advisories; NICA (where applicable); international government CERT advisories |

| ISACs | Industry-specific information sharing organizations | Financial sector ISACs (regional and global); BSP-coordinated information sharing |

| OSINT | Open-source intelligence — publicly available threat information | Security research blogs; vendor threat reports; conference presentations; social media monitoring; security news |

| Vendor TI | Threat intelligence from BFS technology vendors | Security vendor threat reports; cloud provider security advisories; software vendor security bulletins |

| Peer Sharing | Trusted peer institution sharing | Peer Philippine bank informal sharing; trusted advisor relationships |

| Internal | Threat intelligence from BFS observations | SOC observations; incident lessons learned; honeypot/deception observations; security testing observations |

| Specialized | Specialized TI for specific concerns | AI threat intelligence sources; OT/IoT TI (where relevant); fraud-specific TI |

## 6.2  Source Selection Criteria

TI source selection considers:

Coverage Relevance: Does source cover BFS-relevant threats — sector, region, technology;

Quality and Accuracy: Source track record for accuracy — false positives, missed threats;

Timeliness: How quickly source provides intelligence on emerging threats;

Format and Integration: Machine-readable formats (STIX/TAXII) supporting tool integration; human-readable formats for analytical work;

Cost: Subscription cost relative to intelligence value;

Source Concentration: Avoiding excessive dependence on single source;

Trust: Source trustworthiness, including provenance of intelligence;

Complementarity: How source complements other sources — gaps filled, overlap minimized.

## 6.3  Internal Sources

Internal sources provide BFS-specific intelligence:

SOC Observations: SOC operations generate intelligence — observed attacks, attempted attacks, anomalous patterns. SOC is intelligence producer not just consumer;

Incident Investigations: Incidents per BFS-ISP-017 generate intelligence — adversary TTPs observed, indicators identified, lessons learned;

Honeypots and Deception: Deception infrastructure observations provide threat intelligence — actual adversary engagement;

Penetration Testing: Penetration tests per BFS-ISP-018 provide intelligence — what techniques work in BFS environment;

Vulnerability Management: Per BFS-ISP-007 — patterns of exploitation attempts inform threat intelligence;

Internal Threat Hunting: Per Section 12.4 — threat hunting activities inform intelligence on BFS environment.

## 6.4  Source Diversity Strategy

Multiple Categories: BFS uses sources from multiple categories — commercial, government, ISACs, OSINT, internal;

Multiple Sources Per Category: Multiple sources within categories where appropriate — though balanced against operational complexity and cost;

Concentration Avoidance: Avoiding excessive dependence on single source — single source failure leaves intelligence gap;

Source Mix Reviewed Periodically: Source mix reviewed annually — adding sources for gaps, reconsidering low-value sources.

## 6.5  Source Documentation

PS-5.1  BFS shall maintain documented inventory of TI sources — supporting source management and audit.

PS-5.2  Source documentation shall include: source name, source category, intelligence type, contractual basis (where applicable), cost, quality assessment, integration mechanism.

PS-5.3  Source quality assessed periodically — typically annually with material findings driving source decisions.

PS-5.4  New sources subject to evaluation per Section 6.2 criteria before adoption.

# 7.  THREAT ACTOR AND LANDSCAPE ANALYSIS

Understanding the threat actors targeting BFS provides foundation for prioritized defense.

## 7.1  Threat Actor Categories

| Category | Motivation | BFS-Relevant Examples |

| --- | --- | --- |

| Criminal Groups | Financial gain | Sophisticated criminal groups specializing in banking attacks; ransomware groups; financial fraud groups; BEC operators |

| Nation-State | Espionage, financial gain, geopolitical | State-sponsored groups with financial sector targeting; APT groups affecting financial sector |

| Hacktivists | Ideological | Hacktivist groups targeting financial institutions for ideological reasons |

| Insiders | Variable — financial, ideological, personal | Malicious insiders within BFS or BFS service providers |

| Opportunistic | Various — financial, ego, learning | Lower-skill actors exploiting unpatched vulnerabilities or misconfigurations |

| Terrorist | Political/ideological | Terrorist groups affecting financial sector |

| AI-Augmented | Various — capabilities enhanced by AI | Threat actors using AI for phishing generation, social engineering, voice cloning per BFS-AI-005 |

## 7.2  Threat Actor Profiling

Threat actors profiled along dimensions:

Identity and Attribution: Known group identities; aliases; attribution confidence;

Motivation: Primary motivations — financial gain, espionage, ideology;

Capability Level: Sophistication — opportunistic, intermediate, advanced, nation-state level;

Targeting Pattern: Sectors, regions, technology stacks targeted;

TTPs: Specific tactics, techniques, procedures per Section 8 MITRE ATT&CK mapping;

Infrastructure: Known infrastructure — IP addresses, domains, hosting providers;

Tooling: Known tools and malware families;

Operational Patterns: Time of operation, language, operational signatures;

Activity Status: Active, dormant, retired.

## 7.3  BFS-Specific Threat Landscape

BFS threat landscape considers:

Sector Targeting: Threat actors targeting Philippine banking sector;

Regional Targeting: Threat actors active in Southeast Asia financial sector;

Technology Targeting: Threat actors targeting BFS technology stack — cloud providers, AI/ML platforms, banking software;

Customer Targeting: Threat actors targeting BFS customers — even if not BFS directly, customer threat affects BFS;

Supply Chain Threats: Threat actors targeting BFS supply chain per BFS-ISP-031 §8.5;

AI-Era Threats: Adversarial AI threats per BFS-AI-002 §9.4 and Section 11.

## 7.4  Threat Landscape Reporting

PS-4.1  Threat landscape briefings provided to leadership periodically — typically quarterly with event-driven briefings for material developments.

PS-4.2  Annual comprehensive threat landscape report supporting strategic security planning.

PS-4.3  Material threat landscape changes (new threat actor classes, material campaigns affecting BFS sector) trigger ad-hoc reporting.

PS-4.4  Threat landscape coordinated with broader risk reporting per BFS-ISMS-003.

# 8.  TTP ANALYSIS WITH MITRE ATT&CK

MITRE ATT&CK Framework provides globally accepted framework for adversary TTP analysis. BFS uses ATT&CK as primary framework for adversary behavior analysis.

## 8.1  MITRE ATT&CK Framework

ATT&CK Tactics: Why adversaries take actions — high-level objectives. Examples: Initial Access, Execution, Persistence, Privilege Escalation, Defense Evasion, Credential Access, Discovery, Lateral Movement, Collection, Command and Control, Exfiltration, Impact;

ATT&CK Techniques: How adversaries achieve tactics — specific approaches. Hundreds of techniques in framework;

ATT&CK Sub-Techniques: Specific implementations of techniques;

ATT&CK Procedures: Specific implementations as observed in actual attacks;

ATT&CK Coverage: Multiple matrices — Enterprise (most relevant to BFS), Mobile, ICS;

ATT&CK Currency: Framework continuously updated — BFS uses current version with awareness of updates.

## 8.2  ATT&CK Operationalization at BFS

PS-2.1  BFS shall map relevant threats to MITRE ATT&CK techniques — providing structured TTP analysis.

PS-2.2  BFS security controls shall be mapped to ATT&CK techniques — supporting capability gap analysis.

PS-2.3  Detection coverage analysis shall use ATT&CK — what techniques does BFS detect, what techniques are blind spots.

PS-2.4  Threat hunting hypotheses shall be developed using ATT&CK — hunting for techniques BFS may not detect.

PS-2.5  Penetration testing per BFS-ISP-018 shall reference ATT&CK — supporting realistic adversary emulation.

PS-2.6  Incident response per BFS-ISP-017 shall reference ATT&CK — incidents categorized by techniques observed.

## 8.3  Pyramid of Pain

Pyramid of Pain ranks IoC types by adversary cost to change — informing detection investment priorities:

| IoC Level | Adversary Cost to Change | Detection Value |

| --- | --- | --- |

| Hash Values | Trivial — different file = different hash | Low durability — adversary changes file constantly; high false negative rate over time |

| IP Addresses | Easy — change infrastructure | Limited durability — adversaries rotate IPs |

| Domain Names | Easy-Moderate — register new domains | Limited durability — though some domain patterns persist |

| Network Artifacts | Moderate — change network signatures | Better durability — protocol-level signatures harder to change |

| Host Artifacts | Moderate-Hard — change host-side patterns | Better durability — host-side artifacts harder to change |

| Tools | Hard — develop or acquire new tooling | Good durability — tool changes are substantial work |

| TTPs | Very Hard — change adversary methodology | Highest durability — adversary methodology changes are expensive |

Implication: Detection investment in higher-pyramid levels (TTPs, tools) provides more durable defense than lower-pyramid levels (hashes, IPs). BFS detection strategy emphasizes higher-level detection where feasible while leveraging lower-level IoCs for immediate operational value.

## 8.4  Diamond Model

Adversary: Who is conducting the attack;

Capability: Tools and methods used;

Infrastructure: Infrastructure (IPs, domains, etc.) used;

Victim: Target of the attack;

Diamond Model used for intrusion analysis — particularly for incident investigation per BFS-ISP-017.

## 8.5  Cyber Kill Chain

Reconnaissance → Weaponization → Delivery → Exploitation → Installation → Command and Control → Actions on Objectives;

Kill Chain provides progression view of attacks — supporting defense at each stage;

BFS defense aims to detect and disrupt at multiple kill chain stages — defense in depth principle.

| FRAMEWORKS ARE TOOLS, NOT GOALS:  MITRE ATT&CK, Diamond Model, Cyber Kill Chain are analytical tools supporting threat understanding — not ends in themselves. Comprehensive ATT&CK coverage matrix is achievement only if it drives operational improvements. Diamond Model analysis matters when it informs investigation. Kill Chain mapping matters when it drives defensive improvements at specific stages. The frameworks succeed when they support better security outcomes, not when they produce documentation. BFS approach: use frameworks to support analysis and operations; avoid framework usage that doesn't drive operational value. |

| --- |

# 9.  INDICATORS OF COMPROMISE (IoC) OPERATIONS

Indicators of Compromise are technical threat intelligence supporting automated detection. Disciplined IoC operations are foundational to security tool effectiveness.

## 9.1  IoC Categories

File Hashes: MD5, SHA1, SHA256 hashes of known malicious files;

IP Addresses: Known malicious IP addresses;

Domains: Known malicious domain names;

URLs: Specific malicious URLs;

Email Indicators: Sender addresses, email subject patterns associated with attacks;

Registry Keys: Registry keys created by malware;

Mutex Names: Mutex names created by malware;

Network Signatures: Network protocol signatures;

YARA Rules: Pattern-based detection rules for malware.

## 9.2  IoC Lifecycle

Observation: IoC observed from source per Section 6;

Validation: IoC validated for accuracy and applicability;

Distribution: IoC distributed to security tools — SIEM, EDR, NDR, web proxy, email security, DNS filtering;

Active Detection: IoC actively used for detection;

Aging: IoC age tracked — IoCs lose value over time as adversaries change;

Expiration: IoCs expired when no longer providing value — preventing alert fatigue from outdated IoCs.

## 9.3  IoC Quality Management

PS-3.1  IoCs shall be validated before active deployment — preventing false positives from inaccurate IoCs.

PS-3.2  IoC sources tracked supporting quality assessment — sources providing high-false-positive IoCs reconsidered.

PS-3.3  IoC age tracked — IoCs older than typical adversary infrastructure rotation cycles reviewed for continued value.

PS-3.4  IoC false positives tracked supporting source quality assessment and tuning.

PS-3.5  IoC criticality tagged supporting alert prioritization — critical actor IoCs vs general threat IoCs.

## 9.4  STIX/TAXII

STIX (Structured Threat Information eXpression): Standardized language for threat intelligence including IoCs;

TAXII (Trusted Automated Exchange of Indicator Information): Protocol for exchanging STIX intelligence;

BFS uses STIX/TAXII where available — supporting machine-readable TI exchange and tool integration;

STIX/TAXII integration with BFS Threat Intelligence Platform (TIP) where deployed.

## 9.5  Threat Intelligence Platform (TIP)

TIP: BFS may operate Threat Intelligence Platform centralizing TI operations — feed aggregation, normalization, enrichment, distribution;

TIP Functions: Source aggregation, IoC normalization, BFS environmental enrichment (does BFS have this technology), distribution to security tools;

TIP Vendors: Multiple commercial and open-source TIP options available;

TIP Integration: TIP integrates with SIEM, EDR, NDR, vulnerability management, incident response platforms;

TIP Decisions: TIP deployment decision balanced against operational complexity and BFS TI maturity.

# 10.  SECTOR INTELLIGENCE AND SHARING

Sector-specific threat intelligence and sharing with peer institutions provides intelligence not available through other sources.

## 10.1  Financial Sector ISACs

ISAC Participation: BFS participates in relevant financial sector ISACs supporting threat intelligence sharing within financial sector;

Regional ISACs: Regional ISACs covering Southeast Asia financial sector where applicable;

Global ISACs: Global financial sector ISACs supporting broader intelligence;

ISAC-Provided Intelligence: ISACs provide sector-specific intelligence not available through commercial sources — typically through trusted member-only sharing;

ISAC Contribution: BFS contributes to ISACs — sharing observations supporting ecosystem;

ISAC Membership Costs: ISAC membership has cost — justified by intelligence value.

## 10.2  Government Engagement

BSP Cybersecurity Coordination: BSP cybersecurity advisories and coordination — BFS receives BSP advisories and provides BSP-required reporting;

NCERT-PH: Philippine National Computer Emergency Response Team coordination per applicable framework;

Law Enforcement: Coordination with law enforcement for cybercrime per BFS-ISP-017 §11;

Government CERT International: International CERT advisories where relevant;

Information Sharing Agreements: Where applicable, formal information sharing agreements with government entities.

## 10.3  Traffic Light Protocol (TLP)

TLP supports appropriate sharing of sensitive TI:

| TLP Level | Sharing Restriction | BFS Use |

| --- | --- | --- |

| TLP:RED | Named recipients only — not shared further | Highest sensitivity — specific person-to-person sharing |

| TLP:AMBER | Limited disclosure — shared on need-to-know within recipient organization | Sensitive sharing within BFS or with specific trusted parties |

| TLP:GREEN | Community-wide — shared within community, not publicly | Sector or community sharing — financial sector ISAC sharing typical TLP:GREEN |

| TLP:CLEAR (formerly WHITE) | No restriction — public sharing acceptable | Public information; published threat reports |

## 10.4  Sharing Discipline

PS-4.1  TI sharing shall comply with TLP markings on received intelligence — markings honored.

PS-4.2  TI sharing shall comply with contractual obligations to TI sources.

PS-4.3  TI sharing shall comply with regulatory and legal obligations — including privacy considerations.

PS-4.4  BFS-produced TI for sharing shall be appropriately marked — applying TLP per sensitivity.

PS-4.5  TI sharing decisions involving sensitive matters coordinated with Legal Counsel and CISO.

## 10.5  Peer Sharing

Trusted Peer Relationships: Trusted relationships with peer Philippine bank security functions supporting informal threat intelligence sharing;

Peer Sharing Discipline: Peer sharing per TLP and appropriate caution — peer trust does not extend to attribution-sensitive matters;

Mutual Benefit: Peer sharing operates on mutual benefit basis — BFS contributes as well as receives.

## 10.6  Public Threat Reporting

Material Threat Public Awareness: BFS may publicly disclose threat patterns affecting customers — supporting customer awareness;

Customer-Facing Threat Communications: Direct customer threat communications for material customer-affecting threats — phishing campaigns targeting BFS customers, fraud schemes;

Public Disclosure Coordination: Public disclosure coordinated with Communications, Legal, Compliance — appropriate messaging and timing.

| RECIPROCITY IN SHARING:  Threat intelligence sharing operates on reciprocity — organizations that only consume TI without contributing eventually lose access to high-value sharing communities. BFS approach: contribute to sharing communities through observations from BFS environment, sanitized incident lessons learned, and analytical contributions where appropriate. Contribution discipline: ensure BFS-confidential information protected; share patterns and intelligence supporting ecosystem; coordinate sensitive sharing with Legal Counsel; honor reciprocity expectations of communities BFS participates in. |

| --- |

# 11.  AI THREAT INTELLIGENCE

AI-related threats warrant specific threat intelligence given BFS AI-native operations. AI threat intelligence per BFS-AI-002 §9.4 with specific threat intelligence operational discipline.

## 11.1  AI-Specific Threats

Adversarial Attacks Against BFS AI: Threat actor capability for adversarial examples, model extraction, model poisoning, prompt injection per BFS-AI-002 §9.4;

AI-Augmented Threat Actor Capabilities: Threat actors using AI for enhanced phishing generation, social engineering, voice cloning, deepfakes per BFS-AI-005 §7;

Foundation Model Threats: Threats specific to foundation models BFS uses — model behavior changes, model security incidents, vendor security events;

AI Supply Chain Threats: Compromised AI tooling, training data poisoning, model artifact tampering;

AI Personnel Threats: Personnel-targeted threats leveraging AI — voice cloning of BFS executives, deepfake video used in social engineering.

## 11.2  AI Threat Intelligence Sources

AI-Specific TI Sources: Specialized AI threat intelligence providers emerging;

AI Research Communities: Academic and industry AI security research providing OSINT;

Foundation Model Provider Advisories: Foundation model providers may issue security advisories;

AI ISAC Considerations: As AI threats mature, AI-specific ISAC capability may emerge;

Internal AI Observations: BFS observations of AI threats per BFS-AI-001 §8 incident response.

## 11.3  AI Threat Operational Integration

AI Security Monitoring: AI-specific security monitoring per BFS-AI-001 §5.6 informed by AI threat intelligence;

AI Penetration Testing: Adversarial testing per BFS-AI-001 §5.4 PS-4.4 informed by current AI attack patterns;

AI Vendor Risk: AI vendor risk per BFS-AI-002 §9.11 informed by vendor-specific threat intelligence;

Personnel Awareness: BFS personnel awareness of AI-driven attacks per BFS-AI-005 §11 informed by emerging AI attack patterns affecting personnel.

## 11.4  AI Threat Reporting

AI Threat Briefings: AI threat briefings to AI Governance Steering Committee per BFS-AI-001 §3.2;

AI Threat Strategic Reports: Strategic AI threat reports informing BFS AI strategy;

AI Threat in Operational Reports: AI threats included in operational TI reports — not isolated to AI-specific channel.

# 12.  OPERATIONAL INTEGRATION

Threat intelligence operational integration is where TI value is realized. This section addresses TI integration with security operations functions.

## 12.1  SOC and SIEM Integration

SIEM Detection Rules: SIEM detection rules per BFS-ISP-008 informed by current threat actor TTPs;

Real-Time IoC Integration: Real-time IoC feeds integrated with SIEM for automated detection;

Threat Context for Alerts: SIEM alerts enriched with threat context — what threat actor uses these techniques, what was the campaign;

Threat Hunting Inputs: TI feeds threat hunting hypotheses per Section 12.4;

Detection Coverage Analysis: Detection coverage analyzed against MITRE ATT&CK techniques per Section 8.2.

## 12.2  EDR and Endpoint Integration

EDR Detection Rules: EDR detection rules per BFS-ISP-007 informed by current threat actor TTPs;

EDR IoC Integration: EDR ingests IoCs supporting endpoint-level detection;

EDR Behavioral Detection: EDR behavioral detection tuned per current adversary TTPs.

## 12.3  Network Security Integration

Network Detection Rules: NDR/IDS detection rules per BFS-ISP-013 §6 informed by current network-level adversary patterns;

Network IoC Integration: Network tools (proxy, firewall, DNS) ingest IoCs;

Network TI for Egress: Network egress filtering informed by command-and-control infrastructure intelligence.

## 12.4  Threat Hunting

Threat Hunting Definition: Proactive search for threats not detected through automated detection — hypothesis-driven investigation;

Hypothesis Development: Hunting hypotheses developed from threat intelligence — what TTPs would adversary use here, would BFS detect them;

Hunting Activities: Hunters investigate environment looking for evidence of hypothesized adversary activity;

Hunting Tools: SIEM, EDR, network analysis tools support hunting;

Hunting Outcomes: Findings drive detection improvement; absence of findings provides assurance;

Hunting Cadence: Threat hunting per defined cadence — typically weekly hunts with periodic comprehensive hunts;

Hunting Documentation: Hunts documented including hypothesis, methodology, findings, and detection improvements made.

## 12.5  Vulnerability Management Integration

Vulnerability Prioritization: Vulnerability prioritization per BFS-ISP-007 informed by exploitation context — actively exploited CVEs prioritized;

Threat Context for CVEs: CVE prioritization informed by threat actor exploitation patterns;

Asset-Threat Mapping: BFS asset exposure mapped to threat actor targeting patterns.

## 12.6  Incident Response Integration

Incident Response Inputs: TI provides context for incident investigation per BFS-ISP-017 — adversary attribution, TTP analysis;

Incident Response Outputs: Incidents generate TI — observed TTPs, indicators, lessons learned;

Bidirectional Flow: TI and incident response have bidirectional flow — TI informs IR; IR informs TI.

## 12.7  Penetration Testing Integration

Realistic Adversary Emulation: Penetration tests per BFS-ISP-018 informed by current TI — realistic emulation of threats actually facing BFS;

Red Team Operations: Red team exercises per BFS-ISP-018 use TI for adversary emulation;

ATT&CK-Based Testing: Testing maps to MITRE ATT&CK techniques per Section 8.2 PS-2.5.

## 12.8  Strategic Decision Integration

Security Investment Decisions: Strategic TI informs security investment priorities;

Architecture Decisions: Tactical TI informs security architecture decisions;

Risk Management Integration: TI informs risk assessment per BFS-ISMS-003;

Board Briefings: Strategic TI provides Board with material threat awareness for governance oversight.

# 13.  ROLES AND RESPONSIBILITIES

| Role | Threat Intelligence Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Receives strategic threat landscape briefings. Material threat awareness for governance oversight. |

| Information Security Steering Committee | Reviews TI program effectiveness. Strategic TI briefings. Material threat decisions. |

| Chief Information Security Officer | Document co-owner. Operationally accountable for TI capability. TI integration with broader security operations. |

| Head of Security Operations | Document co-owner. Operational TI consumption and SOC integration. Tactical and operational TI focus. |

| Chief Information Officer | Document co-owner. Strategic TI influence on technology decisions. |

| Head of Enterprise Architecture and AI | Document co-owner. AI threat intelligence per Section 11. AI security architecture informed by TI. |

| Chief Risk Officer | Co-approver. Strategic TI integration with enterprise risk per BFS-ISMS-003. |

| Chief Compliance Officer | Co-approver. TI sharing per regulatory frameworks. BSP cybersecurity coordination. |

| Chief Legal Counsel | Co-approver. Legal aspects of TI sharing. Privacy considerations. |

| Threat Intelligence Function | Day-to-day TI capability. TI lifecycle execution. Source management. Analysis. Dissemination. |

| Security Operations Center | Primary operational consumer of TI. Real-time TI integration. Threat hunting per Section 12.4. SOC observations as internal TI source. |

| Vulnerability Management | TI consumer per BFS-ISP-007. Vulnerability prioritization informed by exploitation context. |

| Incident Response | TI consumer and producer per BFS-ISP-017. Incident attribution. Lessons learned as TI. |

| Penetration Testing | TI consumer per BFS-ISP-018. Realistic adversary emulation. |

| Internal Audit | Independent verification per BFS-ISMS-008. |

# 14.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Threat intelligence capability effectiveness measured through KPIs reviewed quarterly by ISSC.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| TI sources documented and current | 100% | Annual |

| Priority Intelligence Requirements (PIRs) maintained and current | Annual review minimum | Annual |

| TI consumer feedback collected | Quarterly | Quarterly |

| Strategic threat briefings to leadership | Quarterly minimum | Quarterly |

| Strategic threat report annual | Annual | Annual |

| TI feeds integrated with SIEM | 100% of in-scope feeds | Quarterly |

| TI feeds integrated with EDR | 100% of in-scope feeds | Quarterly |

| IoC validation before deployment | 100% | Per IoC |

| IoC false positive tracking | Track and reduce | Quarterly |

| MITRE ATT&CK detection coverage | Track and improve | Annual |

| MITRE ATT&CK coverage gaps prioritized | 100% of prioritized gaps addressed per plan | Annual |

| Threat hunting cadence | Weekly minimum | Continuous |

| Threat hunts documented | 100% | Per hunt |

| Threat hunting findings driving detection improvement | Track | Quarterly |

| ISAC participation active | 100% of relevant ISACs | Annual |

| TI contribution to sharing communities | Track | Quarterly |

| AI threat intelligence integrated with AI security operations | Per BFS-AI-001 cadence | Quarterly |

| TI-informed vulnerability prioritization | Per BFS-ISP-007 cadence | Continuous |

| TI-informed penetration testing | 100% of tests | Per test |

| BSP examination findings on threat intelligence/cybersecurity | Zero material findings | Per examination |

| Internal Audit findings on TI capability | Track and remediate per BFS-ISMS-010 | Per audit |

# 15.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Threat Intelligence Policy operationalizing ISO/IEC 27001:2022 Annex A.5.7 (Threat intelligence — newly added in 2022 revision) as dedicated comprehensive policy. Quad-functional ownership (CISO/Head of Security Operations/CIO/Head of EA & AI). Aligned with MITRE ATT&CK Framework, Diamond Model, Lockheed Martin Cyber Kill Chain, STIX/TAXII, Traffic Light Protocol, BSP Circular 1048 cybersecurity expectations. Consolidates threat intelligence coverage previously distributed across BFS-ISP-007, BFS-ISP-013 §6, BFS-ISP-017. 4-dimension TI framework (STRATEGIC/TACTICAL/OPERATIONAL/TECHNICAL) with audience-specific consumption patterns. 6-stage TI Lifecycle (Direction/Collection/Processing/Analysis/Dissemination/Feedback) with 4 PS statements for direction and PIRs. 8-category TI Source framework (Commercial/Government/ISACs/OSINT/Vendor/Peer/Internal/Specialized) with source diversity strategy and 4 PS statements for source documentation. 7-category Threat Actor framework (Criminal/Nation-State/Hacktivist/Insider/Opportunistic/Terrorist/AI-Augmented) with profiling dimensions. MITRE ATT&CK operationalization with 6 PS statements covering mapping, control coverage, detection analysis, threat hunting, penetration testing, incident response. Pyramid of Pain analysis informing detection investment priorities. IoC operations with 5 PS statements covering quality management. STIX/TAXII and Threat Intelligence Platform considerations. Sector ISAC participation. Traffic Light Protocol with 5 PS statements for sharing discipline. AI Threat Intelligence per BFS-AI-002 §9.4. Operational integration across SOC/SIEM, EDR, network, threat hunting, vulnerability management, incident response, penetration testing, strategic decisions. Three Lines of Defense for TI. Annual review cycle. | IT Head / Infrastructure Manager<br>CISO Office / SOC / Threat Intelligence Function / IT Operations / EA & AI Team | IT Head<br>CISO/HSO/CIO/HEAA/ CRO/CCO/CLC/Board |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 A.5.7 and Framework Mapping

Mapping of ISO 27001 Annex A.5.7 (Threat intelligence — new 2022 control) and supporting frameworks to specific provisions of this policy.

| Framework Element | Coverage | How This Policy Operationalizes |

| --- | --- | --- |

| A.5.7 | ISO 27001:2022 Annex A.5.7 — Threat intelligence: Information relating to information security threats shall be collected and analysed to produce threat intelligence | Comprehensive operationalization across 12 substantive sections: Section 3 (Framework with 10 principles + governance + Three Lines of Defense); Section 4 (4-Dimension TI Framework — STRATEGIC/TACTICAL/OPERATIONAL/TECHNICAL); Section 5 (6-Stage TI Lifecycle with 4 PS statements for direction); Section 6 (8-Category TI Sources with diversity strategy and 4 PS statements); Section 7 (Threat Actor Profiling and BFS-Specific Threat Landscape); Section 8 (MITRE ATT&CK + Pyramid of Pain + Diamond Model + Cyber Kill Chain with 6 PS statements); Section 9 (IoC Operations with 5 PS statements + STIX/TAXII + TIP); Section 10 (Sector Intelligence with ISACs + Traffic Light Protocol + 5 PS statements); Section 11 (AI Threat Intelligence per BFS-AI-002); Section 12 (Operational Integration across 8 functions). The dedicated comprehensive treatment closes A.5.7 with full lifecycle coverage and operational integration. |

| MITRE ATT&CK | Adversary tactics, techniques, procedures framework — de facto standard | Section 8 (TTP Analysis with MITRE ATT&CK comprehensive operationalization — tactics, techniques, sub-techniques, procedures, currency awareness, 6 PS statements for BFS operationalization including mapping, control coverage, detection analysis, threat hunting, penetration testing, incident response) |

| Diamond Model | Intrusion analysis model — adversary, capability, infrastructure, victim | Section 8.4 (Diamond Model for intrusion analysis particularly incident investigation per BFS-ISP-017) |

| Cyber Kill Chain | Lockheed Martin attack progression model — 7 stages | Section 8.5 (Cyber Kill Chain for attack progression view supporting defense in depth at multiple stages) |

| STIX/TAXII | Standardized TI exchange formats and protocols | Section 9.4 (STIX/TAXII for machine-readable TI exchange and tool integration) |

| TLP | Traffic Light Protocol for TI sharing sensitivity | Section 10.3 (TLP framework with 4 levels — RED/AMBER/GREEN/CLEAR — and 5 PS statements for sharing discipline) |

| Pyramid of Pain | IoC types ranked by adversary cost to change | Section 8.3 (Pyramid of Pain analysis informing detection investment — TTPs > tools > host artifacts > network artifacts > domains > IPs > hashes for durability) |

# APPENDIX B:  Threat Intelligence Quick Reference

Single-page reference for security operations, security architecture, and threat intelligence stakeholders.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What are the 4 TI dimensions? | STRATEGIC (leadership/Board, long-term, threat landscape evolution); TACTICAL (architects/managers, medium-term, TTPs and capability gaps); OPERATIONAL (SOC/IR, short-term, active campaigns); TECHNICAL (tools, real-time, IoCs). See §4.1. |

| What's the TI lifecycle? | 6 stages: Direction (PIRs) → Collection → Processing → Analysis → Dissemination → Feedback. PIRs drive collection; feedback refines PIRs. See §5.1. |

| What sources should we use? | 8 categories: Commercial TI, Government, ISACs, OSINT, Vendor TI, Peer Sharing, Internal, Specialized. Source diversity foundational. Internal sources (SOC/IR/honeypots/pen test) often most valuable. See §6. |

| What's MITRE ATT&CK? | Globally accepted framework for adversary TTPs — Tactics (objectives), Techniques (how), Sub-Techniques (specific), Procedures (observed). Foundational to BFS TI operations. See §8.1-§8.2. |

| What's the Pyramid of Pain? | IoC types ranked by adversary cost to change. Hashes lowest (trivial to change). TTPs highest (very hard). Detection investment in higher levels = more durable defense. See §8.3. |

| What's TLP? | Traffic Light Protocol for TI sharing. RED (named recipients only), AMBER (limited disclosure), GREEN (community), CLEAR (no restriction). Honor markings on received TI. See §10.3. |

| How do we integrate TI with SOC? | SIEM detection rules informed by TTPs. Real-time IoC feeds to SIEM. Threat context for alerts. Threat hunting from TI. Detection coverage analysis vs ATT&CK. See §12.1. |

| What's threat hunting? | Proactive search for threats not detected through automation — hypothesis-driven investigation. Hypotheses from TI (what TTPs would adversary use, would BFS detect them). Weekly cadence. Findings drive detection improvement. See §12.4. |

| What about AI threats? | Adversarial AI threats (per BFS-AI-002 §9.4). AI-augmented threat actors (voice cloning, deepfakes). Foundation model threats. AI supply chain threats. AI-specific TI sources emerging. See §11. |

| How is TI shared with peer institutions? | ISAC participation primary channel. Government coordination (BSP, NCERT-PH). Trusted peer relationships informally. Per TLP and contractual obligations. Reciprocity expected. See §10. |

| What about BSP cybersecurity coordination? | BSP cybersecurity advisories received. BSP-required reporting provided. Coordination per BSP Circular 1048 cybersecurity expectations. See §10.2. |

| What's the biggest TI mistake? | Disconnected TI capability — TI feeds nobody acts on, reports nobody reads. TI value comes from operational integration: SOC uses for detection, vulnerability management for prioritization, IR for attribution, leadership for strategic decisions. Capability judged by operational impact. See §3 note box. |

BFS-ISP-034  |  Threat Intelligence Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.5.7. MITRE ATT&CK + Diamond Model + Cyber Kill Chain + STIX/TAXII Aligned.
