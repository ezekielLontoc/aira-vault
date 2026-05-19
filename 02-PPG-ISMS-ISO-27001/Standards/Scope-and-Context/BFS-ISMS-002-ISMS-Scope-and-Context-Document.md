---
title: "BFS-ISMS-002-ISMS-Scope-and-Context-Document"
source_file: "02-PPG-ISMS-ISO-27001/Standards/Scope-and-Context/BFS-ISMS-002-ISMS-Scope-and-Context-Document.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:42Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Standards"
  - "Scope-and-Context"
aliases:
  - "BFS-ISMS-002-ISMS-Scope-and-Context-Document"
creator: "Un-named"
created: "2026-04-24T04:30:00Z"
modified: "2026-04-27T01:38:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>ISMS SCOPE AND<br>CONTEXT DOCUMENT<br>Organizational Context, Interested Parties and Requirements, ISMS Scope Definition with Boundaries, Inclusions, and Exclusions<br>Policy Reference: BFS-ISMS-002<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>ISO/IEC 27001:2022 Clauses 4.1, 4.2, and 4.3 Mandated Document<br>Companion to BFS-ISMS-001 (Top-Level Policy) and BFS-ISMS-004 (Statement of Applicability)<br>Defines what the BFS ISMS covers — and equally importantly, what it does not — providing the authoritative boundary statement for ISO 27001 certification audit |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | ISMS Scope and Context Document |

| --- | --- |

| Policy Reference | BFS-ISMS-002 |

| Policy Owner | Chief Information Officer (CIO) / Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS scope of operations, business strategy, organizational structure, technology landscape, or interested parties |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — ISMS Framework Document. Subordinate to BFS-ISMS-001 (Top-Level Information Security Policy). |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISMS-003 (Risk Assessment and Treatment Methodology); BFS-ISMS-004 (Statement of Applicability); BFS-ISMS-005 (Information Security Objectives) |

| Framework Alignment | ISO/IEC 27001:2022 Clauses 4.1 (Understanding the organization and its context), 4.2 (Understanding the needs and expectations of interested parties), 4.3 (Determining the scope of the ISMS) |

| Regulatory Reference | BSP Circular 1140; BSP Circular 1048; Philippine Data Privacy Act RA 10173; PCI DSS v4.0; RA 10175; RA 11765; RA 8791 |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| Chief Information Officer |  |  |  |

| Chief Information Security Officer |  |  |  |

| Chief Risk Officer |  |  |  |

| Data Privacy Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document defines the scope of the BFS Information Security Management System (ISMS) and the organizational context within which the ISMS operates. It is the second-tier ISMS framework document, subordinate to BFS-ISMS-001 (Top-Level Information Security Policy) and operationally foundational for every other BFS-ISMS framework document and BFS-ISP technical control policy.

This document exists to fulfill three specific requirements of ISO/IEC 27001:2022:

Clause 4.1 (Understanding the organization and its context) — requires BFS to determine external and internal issues relevant to its purpose and that affect its ability to achieve the intended outcomes of the ISMS;

Clause 4.2 (Understanding the needs and expectations of interested parties) — requires BFS to determine the interested parties relevant to the ISMS, their relevant requirements, and which of these requirements will be addressed through the ISMS;

Clause 4.3 (Determining the scope of the information security management system) — requires BFS to determine the boundaries and applicability of the ISMS to establish its scope, considering the external and internal issues, the requirements of interested parties, and the interfaces and dependencies between activities performed by BFS and those performed by other organizations.

The clarity and precision of the ISMS scope is foundational to ISO 27001 certification. A poorly defined scope results in either an ISMS that cannot be effectively audited (because its boundaries are ambiguous), or one whose certification is undermined by gaps that should have been included or by exclusions that cannot be justified. The scope defined in this document is therefore stated with the precision required to enable: (a) ISO 27001 certification body audits to verify scope coverage; (b) BFS internal teams to know whether a given activity, system, or party falls within ISMS obligations; and (c) interested parties to understand exactly what BFS commits to protect through the ISMS.

This document is companion to and consistent with BFS-ISMS-001. Where BFS-ISMS-001 expresses the strategic commitment and high-level scope of the ISMS, this document operationalizes that scope into specific, auditable boundaries — articulating not only what is included but also what is excluded and why those exclusions are appropriate.

The specific objectives of this document are to:

Document the external and internal context within which BFS operates and within which the ISMS must achieve its intended outcomes;

Identify all interested parties relevant to the BFS ISMS, document their requirements, and specify which requirements are addressed through the ISMS;

Define the precise ISMS scope — organizational, geographic, technological, and process boundaries — with clarity sufficient for ISO 27001 certification audit;

Specify in-scope and out-of-scope elements with justifications, particularly for any exclusions that might otherwise appear material to interested parties;

Document the interfaces and dependencies between BFS-internal activities (in scope) and activities performed by external parties (whose interface to BFS is in scope, but whose internal operations are not);

Provide the foundation for the BFS Risk Assessment (BFS-ISMS-003), Statement of Applicability (BFS-ISMS-004), and Information Security Objectives (BFS-ISMS-005), all of which depend on a well-defined scope.

# 2.  ORGANIZATIONAL CONTEXT (ISO/IEC 27001:2022 CLAUSE 4.1)

ISO/IEC 27001:2022 Clause 4.1 requires BFS to determine external and internal issues that are relevant to its purpose and that affect its ability to achieve the intended outcomes of the ISMS. This section documents BFS's understanding of that context. Context is reviewed annually as part of the ISMS Management Review (per BFS-ISMS-009) and updated whenever material changes occur.

## 2.1  About BFS Financial Services

BFS Financial Services is a Philippine financial services organization supervised by the Bangko Sentral ng Pilipinas (BSP). BFS provides banking and financial products and services to retail and commercial customers across the Philippines, operating through a combination of branch infrastructure, ATM networks, internet banking, and mobile banking channels. BFS is currently undertaking a strategic transformation involving the construction of an AI-native, mission-critical core banking platform that embeds artificial intelligence as a first-class architectural component while maintaining strict compliance, auditability, and operational discipline.

BFS's purpose, with respect to information security, is to protect the confidentiality, integrity, and availability of customer information, financial transactions, and operational systems entrusted to it — fulfilling its obligations as a regulated financial institution and as a custodian of customer trust. The intended outcomes of the ISMS are: (a) sustained protection of customer trust, (b) regulatory compliance, (c) operational resilience, (d) enablement of secure innovation including the AI-native platform, and (e) defensible information security posture demonstrable to regulators, auditors, and customers.

## 2.2  External Issues

The following external issues, beyond BFS's direct control, materially affect the ISMS's ability to achieve its intended outcomes. External issues are categorized for clarity but are not necessarily independent — many interact and compound.

### 2.2.1  Regulatory and Legal Environment

| External Issue | Impact on the ISMS |

| --- | --- |

| BSP regulatory expectations | BSP supervisory expectations for cybersecurity, IT risk management, outsourcing, and business continuity continue to evolve. New BSP circulars, guidelines, and examination focus areas may require updates to BFS controls, processes, and reporting. The ISMS must be agile enough to incorporate new BSP requirements within compliance timelines. |

| Philippine Data Privacy Act (RA 10173) regulatory enforcement | NPC enforcement actions, breach decisions, and circular updates shape the operational interpretation of personal data protection requirements. The 72-hour breach notification clock, sensitive personal information definitions, and data subject rights fulfillment expectations continue to mature. |

| PCI DSS evolution | PCI DSS v4.0 introduces ongoing compliance changes through 2026 and beyond. Card brands may impose additional requirements. The PCI Security Standards Council periodically issues supplementary guidance affecting BFS's payment processing operations. |

| Emerging AI regulation | Philippine and international regulatory frameworks for artificial intelligence in financial services are emerging. Future obligations may include AI governance, explainability, fairness, and accountability requirements that will affect the AI-native core banking platform. |

| Consumer protection legislation | RA 11765 (Financial Products and Services Consumer Protection Act) imposes consumer protection obligations including incident notification and customer information protection. Future amendments and BSP implementing rules may extend obligations. |

| Cross-border data and cloud regulations | BSP and NPC positions on cross-border data transfer, cloud computing, and data residency continue to develop. Cloud regions, vendor arrangements, and AI service providers may be subject to changing requirements. |

### 2.2.2  Threat Landscape

| External Issue | Impact on the ISMS |

| --- | --- |

| Ransomware operations targeting financial services | Ransomware groups continue to evolve, increasingly employing double and triple extortion (encryption + data exfiltration + customer/regulator threats). Financial services are high-value targets. The ISMS must address detection, prevention, response, and resilient recovery — implemented in BFS-ISP-010 (Malware Defenses), BFS-ISP-011 (Data Recovery), and BFS-ISP-017 (Incident Response). |

| Nation-state and APT activity in the financial sector | Sophisticated state-aligned threat actors target financial institutions for espionage, financial crime, and disruption. The Philippine financial sector is exposed to APT activity originating from regional actors. The ISMS must enable detection of long-dwell-time intrusions (BFS-ISP-013) and response to advanced persistent threats (BFS-ISP-017 PB-014). |

| Business Email Compromise (BEC) and wire fraud | BEC remains the highest-loss cyber-enabled crime category for financial services globally. Attacks combine email compromise with social engineering of executives and finance staff. The ISMS addresses through email security (BFS-ISP-009), awareness training (BFS-ISP-014), and incident response (BFS-ISP-017 PB-004). |

| ATM and payment fraud | ATM jackpotting, black-box attacks, card skimming, and POS compromise remain active threats in the Philippine market. The ISMS addresses through specialized testing (BFS-ISP-018) and ATM-specific incident response (BFS-ISP-017 PB-008). |

| AI-specific attacks (emerging) | Prompt injection, model abuse, deepfake-enabled fraud, and AI agent exploitation are emerging threat categories particularly relevant to the BFS AI-native platform. The ISMS addresses through AI/LLM penetration testing (BFS-ISP-018), AI-specific incident response (BFS-ISP-017 PB-013), and architectural controls in the MSAMS Architecture Blueprint. |

| Supply chain compromise | Third-party software, services, and managed providers represent significant attack vectors. Supply chain attacks (e.g., software update mechanisms, vendor credential compromise, open-source dependency poisoning) bypass internal controls. The ISMS addresses through service provider management (BFS-ISP-015) and supply chain considerations in BFS-ISP-002 (Software Asset Inventory) and BFS-ISP-016 (Application Software Security). |

| Insider threat | Malicious or negligent insiders represent persistent risk to financial institutions. Insider threats may be deliberate (theft, fraud, sabotage) or unintentional (errors, policy violations, susceptibility to social engineering). The ISMS addresses through least-privilege access (BFS-ISP-005, BFS-ISP-006), monitoring (BFS-ISP-008, BFS-ISP-013), and insider-specific incident response (BFS-ISP-017 PB-009). |

### 2.2.3  Technology and Industry Environment

| External Issue | Impact on the ISMS |

| --- | --- |

| Cloud computing dependency (AWS) | BFS operates significant workloads on AWS. Cloud platform availability, security model evolution, shared responsibility boundaries, and pricing affect ISMS scope and operations. AWS regional availability decisions affect data residency and disaster recovery options. |

| Open-source software dependency | Modern banking software depends extensively on open-source components. Vulnerabilities in widely-used open-source libraries (e.g., Log4Shell, Spring4Shell) require coordinated detection and remediation. The ISMS addresses through Software Composition Analysis (BFS-ISP-016) and SBOM requirements. |

| Third-party service provider ecosystem | BFS operations depend on numerous external service providers — payment processors, SWIFT service bureaus, cloud providers, MSSPs, software vendors, ATM service providers. Each provider's security posture affects BFS's risk exposure. Governed by BFS-ISP-015 (Service Provider Management). |

| Pace of technology change | Rapid evolution of cloud-native architectures, microservices, AI/ML, and DevOps practices continually introduces new attack surfaces and new defensive capabilities. The ISMS must continuously adapt — supported by the continuous improvement requirements in BFS-ISMS-001 Section 9 and BFS-ISMS-010. |

| Talent market for security professionals | The shortage of qualified information security professionals globally and in the Philippines specifically affects BFS's ability to recruit and retain ISMS operational personnel. The ISMS addresses through structured training (BFS-ISP-014), competency development (BFS-ISMS-007), and partnerships with external IR retainers (BFS-ISP-017). |

| Industry information sharing | BSP-supervised institutions participate in sector information sharing through BSP-ISAC and FS-ISAC channels. Industry threat intelligence and lessons learned shape ISMS evolution. |

## 2.3  Internal Issues

The following internal issues — within BFS's control but representing context the ISMS must operate within — affect the ISMS's ability to achieve its intended outcomes.

### 2.3.1  Strategic and Business Issues

| Internal Issue | Impact on the ISMS |

| --- | --- |

| AI-native core banking platform development | BFS is undertaking ground-up construction of an AI-first, governance-driven core platform. This introduces both new attack surfaces (AI-specific risks) and new architectural opportunities (security and AI governance embedded by design). The ISMS must support secure innovation rather than obstruct it — reflected in BFS-ISMS-001 Strategic Objective O3 (Enable Secure Innovation). |

| Multi-channel banking operations | BFS operates simultaneously across branch, ATM, internet banking, mobile banking, and emerging digital channels. Each channel presents distinct security characteristics. The ISMS scope must address all channels and the integration points between them. |

| Strategic shift toward digital-first | Customer expectations and competitive pressure drive expansion of digital channels. New product launches and digital transformation programs continually expand the ISMS scope. |

| Risk appetite and tolerance | BFS Board-approved risk appetite frames the ISMS's risk treatment decisions. The risk appetite for information security incidents is low (financial services context), with specific intolerance for material customer data exposure or service unavailability. |

### 2.3.2  Organizational and Cultural Issues

| Internal Issue | Impact on the ISMS |

| --- | --- |

| Information security culture maturity | Information security culture across BFS varies by function, role, and tenure. Building a uniformly security-conscious culture requires sustained training, reinforcement, and leadership modeling. Addressed by BFS-ISP-014 (Security Awareness and Training) and BFS-ISMS-001 Strategic Objective O5 (Develop Security-Conscious Culture). |

| Workforce composition (employees, contractors, third-parties) | BFS operations involve permanent employees, fixed-term contractors, consultants, and third-party service provider personnel. Different categories present different risk profiles for credential management, access governance, and incident response. The ISMS must address each category — reflected throughout BFS-ISP series. |

| Distributed teams and remote work | BFS operations include teams working across locations and arrangements including remote and hybrid work. Remote work introduces specific risk dimensions addressed in the forthcoming BFS-ISP-022 (Remote Working and Mobile Device Policy). |

| Change management and operational discipline | BFS must balance the need for rapid response to threats and business demands with the discipline of formal change management. The ISMS contributes through structured procedures (BFS-ISP-016 SSDLC, BFS-ISP-007 patch management, BFS-ISP-012 network change governance). |

### 2.3.3  Technical and Operational Issues

| Internal Issue | Impact on the ISMS |

| --- | --- |

| Legacy system coexistence with modern platforms | BFS operates legacy banking platforms in parallel with modern microservice and cloud-native systems. Legacy systems may have constrained patching, limited security capabilities, and higher inherent risk. The ISMS addresses through compensating controls and structured modernization. |

| Hybrid infrastructure (on-premise + cloud) | BFS infrastructure spans on-premise data centers, AWS cloud environments, and SaaS applications. Each environment requires distinct controls. The hybrid architecture is the operational reality the ISMS must address. |

| Internal threat intelligence and detection capability maturity | BFS SOC and detection capabilities are at varying maturity across attack categories. The ISMS continuously develops detection capability through BFS-ISP-013 (Network Monitoring), BFS-ISP-008 (Audit Log Management), and Purple Team exercises (BFS-ISP-018). |

| Vulnerability backlog and remediation velocity | Like all complex environments, BFS has a continuous backlog of identified vulnerabilities at various severities. The ISMS must drive remediation per BFS-ISP-007 SLAs while balancing operational stability. |

| Documentation currency | Maintaining current, accurate documentation across rapidly evolving systems and processes is a persistent operational challenge. The ISMS addresses through document control discipline (BFS-ISMS-006) and operational documentation requirements throughout the BFS-ISP series. |

| CONTEXT REVIEW:  The external and internal context documented above is reviewed at every annual ISMS Management Review (per BFS-ISMS-009) and updated whenever material changes occur — for example, significant new regulations, major business model changes, or material changes to the threat landscape. Context updates may trigger downstream changes to the Risk Assessment (BFS-ISMS-003), Statement of Applicability (BFS-ISMS-004), and ISMS Objectives (BFS-ISMS-005). |

| --- |

# 3.  INTERESTED PARTIES AND THEIR REQUIREMENTS (ISO/IEC 27001:2022 CLAUSE 4.2)

ISO/IEC 27001:2022 Clause 4.2 requires BFS to determine the interested parties relevant to the ISMS, the relevant requirements of these interested parties, and which of these requirements will be addressed through the ISMS. This section provides the comprehensive Interested Parties Register required by Clause 4.2.

An interested party (also called a stakeholder in some frameworks) is any person or organization that can affect, be affected by, or perceive themselves to be affected by BFS's information security decisions or activities. Some interested parties have legally enforceable requirements (regulators, customers under data protection law); others have contractual requirements (business partners, certification bodies); others have legitimate interests that BFS chooses to address through the ISMS even where not legally compelled.

## 3.1  Interested Parties Register

The following register identifies all interested parties relevant to the BFS ISMS, the nature of their interest, their key requirements, and how the BFS ISMS addresses those requirements.

### 3.1.1  Customers and Data Subjects

| Interested Party | Key Requirements | Addressed Through |

| --- | --- | --- |

| Retail Banking Customers | Confidentiality of personal and financial information; protection from fraud and unauthorized account access; availability of banking services; transparent notification of incidents affecting their data; ability to exercise data subject rights under RA 10173. | BFS-ISP-003 (Data Protection); BFS-ISP-005, BFS-ISP-006 (Access Controls); BFS-ISP-009 (Email and Browser); BFS-ISP-011 (Data Recovery); BFS-ISP-016 (Application Security); BFS-ISP-017 (Incident Response — customer notification procedures). |

| Commercial / Corporate Customers | All retail customer requirements plus: secure integration capabilities (APIs, file transfers); contractual security commitments; service level agreements; right to audit BFS controls (for material relationships); resilience of services to continuity events. | All retail customer policies plus BFS-ISP-015 (Service Provider Management — applied to BFS as a provider to corporate customers); explicit SLA commitments in commercial contracts. |

| Prospective Customers | Confidence that BFS protects information shared during onboarding (KYC documentation, financial information); secure account opening processes. | BFS-ISP-003 (Data Protection); BFS-ISP-016 (Application Security for onboarding applications); customer-facing privacy notices. |

| Former Customers | Continued protection of historical personal data per legal retention periods; appropriate data destruction at end of retention; ongoing data subject rights fulfillment. | BFS-ISP-003 (Data Protection — retention and destruction); RA 10173 data subject rights fulfillment processes. |

| Data Subjects (non-customers) | Persons whose personal data BFS holds without direct customer relationship — including beneficiaries, transaction counterparties, applicants who did not become customers. Right to data protection per RA 10173. | BFS-ISP-003 (Data Protection); RA 10173 compliance processes; DPO coordination. |

### 3.1.2  Regulators and Legal Authorities

| Interested Party | Key Requirements | Addressed Through |

| --- | --- | --- |

| Bangko Sentral ng Pilipinas (BSP) | Compliance with BSP Circulars 1140 (IT Risk Management), 1048 (Cybersecurity), 982 (IT Risk Standards), 144 (Outsourcing), 808 (Business Continuity); examination cooperation; cybersecurity incident reporting per BSP timelines; outsourcing register maintenance; ongoing supervisory oversight. | Comprehensive BFS-ISP series implementing BSP requirements; BFS-ISP-017 (Incident Response — BSP notification workflow); BSP Outsourcing Register (per BFS-ISP-015); CCO leadership of BSP relationship per BFS-ISMS-001 Section 5.3. |

| National Privacy Commission (NPC) | Compliance with RA 10173 and IRR; 72-hour breach notification per Section 20(f); NPC Circular 16-03 breach management; data subject rights fulfillment; DPO designation; Privacy Impact Assessments; cross-border transfer compliance. | BFS-ISP-003 (Data Protection); BFS-ISP-017 (Incident Response — NPC 72-hour clock workflow); DPO function per BFS-ISMS-001 Section 5.3; PIA requirements integrated into BFS-ISP-016 SSDLC. |

| Securities and Exchange Commission (SEC) | Where BFS engages in SEC-regulated activities: disclosure obligations affecting material information security incidents; investor protection considerations. | BFS-ISP-017 (Incident Response — SEC notification consideration where applicable); CCO coordination. |

| Anti-Money Laundering Council (AMLC) | Cooperation on financial crime investigations; secure handling of suspicious transaction reports; protection of investigation confidentiality. | BFS-ISP-003 (Data Protection — investigation confidentiality); BFS-ISP-005, BFS-ISP-006 (Access Controls — restricted investigation team access). |

| Bureau of Internal Revenue (BIR) | Cooperation on tax-related investigations; protection of taxpayer information confidentiality. | BFS-ISP-003 (Data Protection); compliance processes. |

| NBI Cybercrime Division and PNP-ACG | Cooperation on cybercrime investigations; evidence preservation supporting prosecutions; chain of custody adequate for legal proceedings. | BFS-ISP-017 (Incident Response — law enforcement coordination); BFS-ISP-018 (evidence preservation standards in penetration testing — analogous principles applied). |

| Foreign regulators (where applicable) | For cross-border operations or correspondent relationships: applicable foreign regulatory requirements (e.g., FATF, US OFAC sanctions screening) affecting customer data handling. | Compliance processes coordinated through CCO; cross-border data transfer controls per BFS-ISP-003. |

### 3.1.3  Internal Stakeholders

| Interested Party | Key Requirements | Addressed Through |

| --- | --- | --- |

| Board of Directors / Audit & Risk Committee | Confidence that BFS information security is effectively governed; visibility into ISMS posture, risks, incidents, and improvements; assurance that regulatory obligations are met; protection of BFS reputation and shareholder value. | BFS-ISMS-001 (Top-Level Policy — Board governance); quarterly Board reporting on ISMS posture; BFS-ISMS-009 (Management Review — Board input); annual Board approval of SoA and material policies. |

| Executive Leadership (CEO, CIO, CISO, CRO, DPO, CCO, CTO, Legal) | Operational ISMS that enables business strategy without obstruction; clear allocation of accountability; resource visibility; informed decision-making on security investments. | BFS-ISMS-001 Section 5 (Governance Structure); Information Security Steering Committee (BFS-ISMS-001 Section 5.5); executive reporting from CISO Office. |

| Business Unit Heads | Information security controls that enable rather than obstruct business operations; clear understanding of security obligations; rapid response when security needs interface with business priorities. | Business unit consultation in BFS-ISP policy development; Information Security Steering Committee participation; business-aligned security architecture. |

| IT and Engineering Functions | Clear, implementable security requirements; security tooling that supports developer productivity; collaborative engagement with security teams; defined SSDLC integration points. | BFS-ISP-016 (Application Software Security — SSDLC framework); DevSecOps integration; collaborative threat modeling and security review processes. |

| BFS Employees | Understanding of their information security responsibilities; training enabling them to fulfill those responsibilities; protection of their employment data; non-retaliation for good-faith reporting; supportive culture for security concerns. | BFS-ISP-014 (Security Awareness and Training); BFS-ISMS-001 Section 11.2 (Non-Retaliation); BFS-ISP-003 (Data Protection — employee data); whistleblower channel. |

| Internal Audit | Independent access to ISMS evidence; cooperation with audit activities; remediation of audit findings; continuous improvement of audit-relevant processes. | BFS-ISMS-008 (Internal Audit Program); BFS-ISMS-010 (Nonconformity and Corrective Action); independent reporting line to Board Audit & Risk Committee. |

### 3.1.4  Business Partners and Service Providers

| Interested Party | Key Requirements | Addressed Through |

| --- | --- | --- |

| Correspondent Banks and Counterparties | Secure interbank communication (SWIFT, payment networks); reliable identity verification; defined incident notification protocols; sanctions screening cooperation. | BFS-ISP-012 (Network Infrastructure); BFS-ISP-017 (Incident Response — PB-017 SWIFT/Interbank Fraud); SWIFT CSP compliance. |

| Card Schemes (Visa, Mastercard, JCB, AmEx) | PCI DSS v4.0 compliance; card brand operating regulations; incident notification per scheme rules; CHD protection. | Comprehensive BFS-ISP series with PCI DSS cross-references; BFS-ISP-003 (Data Protection — CHD handling); BFS-ISP-016 (Application Security — payment applications); BFS-ISP-018 (Penetration Testing — PCI scope). |

| Service Providers (Tier 1-4 per BFS-ISP-015) | Clear contractual security obligations; defined incident notification timelines; reasonable audit rights; collaborative security improvement. | BFS-ISP-015 (Service Provider Management — comprehensive lifecycle); Security Schedule and DPA contract requirements; periodic VRA process. |

| Cloud Service Provider (AWS) | Adherence to AWS shared responsibility model; compliance with AWS acceptable use policies; coordination on cloud security testing per BFS-ISP-018; cooperation on cloud security incidents. | BFS-ISP-006 (Access Control — cloud access governance); BFS-ISP-015 (CSP as TIER 1 service provider); BFS-ISP-018 Section 5.10.5 (cloud penetration testing methodology). |

| Software Vendors | Secure software delivery; SBOM provision for TIER 1 software; timely security patches; vulnerability disclosure cooperation. | BFS-ISP-002 (Software Asset Inventory); BFS-ISP-007 (Vulnerability Management); BFS-ISP-015 (Service Provider Management); BFS-ISP-016 Section 5.6.3 (SBOM requirements). |

| External Auditors and Penetration Testing Firms | Defined engagement scope and rules; access to audit and testing scope; non-disclosure protection of findings; cooperation on remediation validation. | BFS-ISP-018 (Penetration Testing — ROE framework); BFS-ISP-015 (Service Provider Management — testing firms as TIER 1/2 service providers); BFS-ISMS-008 (Internal Audit cooperation). |

### 3.1.5  Certification, Standards, and Industry Bodies

| Interested Party | Key Requirements | Addressed Through |

| --- | --- | --- |

| ISO 27001 Certification Body | ISMS compliance with ISO/IEC 27001:2022 requirements; sufficient documentation, evidence, and operational maturity to support certification; continual improvement evidence; access for certification audits and surveillance audits. | Complete BFS-ISMS series (ISO 27001 management system); BFS-ISMS-004 (Statement of Applicability); audit-friendly documentation throughout the BFS-ISP series. |

| PCI Qualified Security Assessor (QSA) | PCI DSS v4.0 compliance evidence; access to PCI scope environment; documentation of all 12 PCI DSS requirements; remediation tracking for any gaps identified. | Comprehensive PCI DSS coverage across BFS-ISP series with explicit requirement-level cross-references (especially BFS-ISP-003, BFS-ISP-005, BFS-ISP-007, BFS-ISP-008, BFS-ISP-016, BFS-ISP-018). |

| BSP-ISAC and FS-ISAC | Cooperation in financial sector information sharing; contribution of (anonymized) threat intelligence; participation in sector exercises and threat briefings. | BFS-ISP-013 (Network Monitoring — threat intelligence integration); BFS-ISP-017 (Incident Response — Section 5.9.4 IoC sharing with sector ISACs). |

| Industry Standards Bodies (CIS, OWASP, NIST, MITRE) | Adoption and feedback on industry frameworks; contribution to community standards where appropriate. | Comprehensive alignment across BFS-ISP series with CIS Controls v8, OWASP standards (ASVS, SAMM, WSTG, MSTG, Top 10), NIST (SP 800-53/61/115/161/190/218), MITRE ATT&CK. |

### 3.1.6  Other Interested Parties

| Interested Party | Key Requirements | Addressed Through |

| --- | --- | --- |

| Shareholders and Investors | Protection of investment value through prudent risk management; transparency on material information security risks; resilience to incidents that could affect value. | Board-level information security governance per BFS-ISMS-001; risk reporting through enterprise risk framework; SEC disclosure where required. |

| Insurers (Cyber Insurance Carriers) | Evidence of mature security controls supporting underwriting; defined incident response capability; incident notification per policy terms; cooperation on claims investigation. | Comprehensive BFS-ISP series providing controls evidence; BFS-ISP-017 (Incident Response — coordination with carriers during covered incidents). |

| Media and Public | During incidents with public visibility: accurate, timely information about scope and remediation; protection of customer interests in public communications. | BFS-ISP-017 Section 5.7 (Communication During Incidents); Corporate Communications coordination per BFS-ISMS-001 Section 5.3. |

| The Broader Philippine Financial System | BFS contributes to or detracts from systemic stability through its information security posture. Material BFS incidents could affect broader financial sector confidence. BFS commits to be a responsible participant in sector resilience. | BSP supervisory framework cooperation; sector ISAC participation; responsible disclosure practices; BFS-ISMS-001 Strategic Objectives explicitly recognize the broader sector context. |

## 3.2  Determination of Requirements Addressed Through the ISMS

Per ISO/IEC 27001:2022 Clause 4.2(c), BFS shall determine which interested party requirements will be addressed through the ISMS. The default position is that all identified requirements in the register above are addressed through the ISMS — the ISMS is the BFS framework for fulfilling these obligations. Where a specific requirement is determined to be addressed outside the ISMS (for example, certain financial reporting obligations addressed through the financial control framework), this is documented explicitly in the relevant subordinate policy or in operational records.

Where interested party requirements conflict with each other (for example, regulatory information requests vs. customer privacy expectations), the conflict is resolved through structured legal and ethical analysis coordinated by the Chief Legal Counsel, DPO, and CCO, with reference to applicable law as the controlling factor. Such conflicts and their resolutions are documented for audit and continuous improvement.

## 3.3  Review of Interested Parties

The Interested Parties Register is reviewed at every annual ISMS Management Review (per BFS-ISMS-009) and updated whenever:

New regulatory bodies emerge or their jurisdiction changes (e.g., new BSP circulars creating new supervisory expectations);

New business relationships create new interested parties (new partner categories, new vendor types, new customer segments);

Significant changes occur in interested party requirements (e.g., RA 10173 amendments, ISO 27001 standard revision, PCI DSS version changes);

Material incidents reveal previously-unrecognized interested parties or requirements;

BFS strategic changes affect the relevant interested party landscape (e.g., entry into new markets, divestiture of business lines).

# 4.  ISMS SCOPE DEFINITION (ISO/IEC 27001:2022 CLAUSE 4.3)

ISO/IEC 27001:2022 Clause 4.3 requires BFS to determine the boundaries and applicability of the ISMS to establish its scope. The scope shall consider: the external and internal issues per Section 2; the requirements of interested parties per Section 3; the interfaces and dependencies between activities performed by BFS and those performed by other organizations. The scope shall be available as documented information.

This section provides the formal ISMS Scope Statement of BFS Financial Services. The scope is stated with the precision required to enable: (a) ISO 27001 certification body audits to verify scope coverage; (b) BFS internal teams to determine whether a specific activity, system, or party falls within ISMS obligations; and (c) interested parties to understand exactly what BFS commits to protect through the ISMS.

## 4.1  Formal ISMS Scope Statement

| FORMAL ISMS SCOPE STATEMENT — BFS FINANCIAL SERVICES<br>The BFS Financial Services Information Security Management System (ISMS) covers the protection of the confidentiality, integrity, and availability of all information assets used in the conduct of BFS banking and financial services operations within the Republic of the Philippines, including:<br>•  All BFS personnel, contractors, and third parties acting on BFS's behalf;<br>•  All BFS-owned, BFS-leased, BFS-licensed, and BFS-operated information assets, systems, applications, networks, infrastructure, and physical facilities;<br>•  All BFS business processes that handle information — banking operations, payment processing, customer service, IT operations, risk management, compliance, internal audit, finance, HR, and corporate functions;<br>•  All BFS service delivery channels — branch network, ATM network, internet banking, mobile banking, partner integrations, and emerging digital channels;<br>•  All BFS data centers, branches, and BFS-controlled physical premises;<br>•  All BFS cloud environments (currently AWS) and BFS workloads hosted in cloud or third-party hosted environments;<br>•  The interfaces, integrations, and dependencies between BFS systems and external parties processing BFS information on BFS's behalf (with the external parties' internal operations governed by their own systems but subject to BFS contractual security requirements per BFS-ISP-015);<br>•  The development, acquisition, implementation, operation, monitoring, and disposal of all systems and software within the BFS environment, including the AI-native core banking platform under construction.<br>This ISMS scope is implemented through the BFS Information Security Management System documented in BFS-ISMS-001 through BFS-ISMS-010 and the BFS-ISP series of subordinate policies (BFS-ISP-001 through BFS-ISP-029), with controls applicability documented in the Statement of Applicability (BFS-ISMS-004). |

| --- |

## 4.2  In-Scope Elements (Detailed)

### 4.2.1  Organizational Scope

The ISMS scope organizationally includes:

All BFS Financial Services legal entities operating within the Republic of the Philippines;

All BFS employees regardless of role, level, business unit, or employment status (permanent, fixed-term, probationary, casual);

All contractors, consultants, temporary staff, and personnel from staffing agencies engaged by BFS in any capacity that involves access to BFS information, systems, or facilities;

All members of the BFS Board of Directors and Board committees in their information-handling capacities related to BFS business;

All third-party service providers, vendors, and outsourcing partners processing BFS information or accessing BFS systems on BFS's behalf — to the extent of their interface with BFS, governed contractually per BFS-ISP-015 (Service Provider Management);

All visitors, interviewees, customers, and other parties accessing BFS facilities, systems, or information in any controlled context.

### 4.2.2  Geographic and Physical Scope

The ISMS scope geographically and physically includes:

All BFS premises within the Republic of the Philippines — head office, branch network, data centers, disaster recovery sites, and any other BFS-controlled facilities;

BFS ATM locations — both on-premises (branch ATMs) and off-premises (standalone, partner-located) ATMs operating under the BFS ATM network;

BFS-controlled remote work and home office arrangements where employees access BFS systems (governed by the forthcoming BFS-ISP-022 Remote Working and Mobile Device Policy);

Cloud regions hosting BFS workloads (currently AWS Asia Pacific Singapore region with disaster recovery considerations per BFS-ISP-011);

Third-party hosted environments (SaaS providers, IaaS arrangements outside primary cloud) where BFS information is processed — through the interface between BFS and the third party, with the third party's internal operations governed by their own systems and BFS contractual requirements.

### 4.2.3  Information Asset Scope

The ISMS protects all categories of information assets used in BFS operations:

Customer information — personal data (PII), sensitive personal information (SPI), account data, transaction history, payment card data (CHD), credit information, KYC documentation, and any other information relating to BFS customers (current, prospective, or former);

Employee and contractor information — personal data, employment records, payroll data, benefits information, performance records, and HR-related information;

Business information — financial records, strategic plans, board materials, legal documents, regulatory correspondence, intellectual property, internal policies, procedures, and operational data;

System and operational information — source code, system documentation, configuration data, audit logs, security telemetry, threat intelligence, and operational metrics;

Information from third parties — information received from regulators, counterparties, partners, vendors, and any other external source where BFS owes confidentiality or other handling obligations.

### 4.2.4  Technology and System Scope

The ISMS scope technologically includes:

Core banking platform (current production platform and the AI-native platform under construction);

Internet banking web application and mobile banking applications (iOS, Android);

ATM network infrastructure and ATM management systems;

Payment processing systems including card management, payment gateways, and SWIFT integration;

Internal applications and microservices supporting BFS operations;

API gateway, integration platforms, and middleware (including Spring Cloud Gateway and the MSAMS architecture components);

Cloud infrastructure (AWS) including all workloads, services, and configurations within BFS AWS accounts;

Network infrastructure including LAN, WAN, internet connectivity, branch connectivity, and ATM network connectivity;

Endpoint and end-user computing — workstations, laptops, mobile devices used by BFS personnel;

Security infrastructure — SIEM, EDR, NDR, DLP, WAF, IDS/IPS, vulnerability scanners, PAM, IAM, secrets management;

Monitoring and observability infrastructure — Prometheus, Grafana, Loki, Tempo, OpenTelemetry, SigNoz, Wazuh, Sentry, related platforms;

DevSecOps tooling — GitHub Enterprise, GitLab, Gradle, SonarQube, OWASP ZAP, Qualys, Trivy, Renovate, Dependabot, Gitleaks, container registries, CI/CD pipelines;

Workflow and process platforms — Flowable (business workflow), Temporal (machine workflow), n8n (automation), Kafka (event backbone);

AI/ML platforms and models — Hermes Agent, LiteLLM, NeMo Guardrails, Spring AI, LightRAG, pgvector, embeddings infrastructure, the AI-native platform under construction;

Knowledge management — Obsidian / LLM Wiki, OpenKM document management, NotebookLM (where used);

Database and storage systems — PostgreSQL, file storage, backup infrastructure, archival systems.

### 4.2.5  Process Scope

All BFS business processes are within ISMS scope, including but not limited to:

Customer onboarding and KYC processes;

Account opening, maintenance, and closure;

Deposit, withdrawal, transfer, and payment transaction processing;

Lending and credit processes;

Card issuance, processing, and management;

Customer service and support processes;

Treasury operations and interbank settlement;

Risk management and credit decisioning;

Compliance, AML, and regulatory reporting;

Internal audit and assurance processes;

Finance, accounting, and financial reporting;

HR processes including recruitment, employment, performance management, and termination;

IT operations including infrastructure management, application development, change management, and incident management;

Vendor and procurement management;

Physical security and facilities management.

## 4.3  Out-of-Scope Elements with Justifications

The following elements are explicitly determined to be out of scope of the BFS ISMS, with justifications. ISO/IEC 27001:2022 audit will examine these exclusions to verify they are reasonable and do not undermine the integrity of the certified scope.

| Element Excluded | Justification for Exclusion | Risk Mitigation |

| --- | --- | --- |

| Internal operations of third-party service providers | BFS does not have direct authority or operational control over the internal operations of its service providers. Including provider internal operations in BFS ISMS scope would extend ISMS obligations beyond BFS's authority to enforce. | Third-party security obligations are addressed through contractual mechanisms governed by BFS-ISP-015 (Service Provider Management). Provider security posture is assessed through Vendor Risk Assessments and certifications (ISO 27001, SOC 2, PCI DSS) maintained by providers. |

| BFS customer-owned devices (other than during interaction with BFS) | BFS does not control customer personal devices (smartphones, computers) used to access internet banking and mobile banking. Including these devices in scope would be operationally infeasible and would inappropriately suggest BFS responsibility for customer device security. | Customer education on secure device use through BFS customer communications. Mobile banking application security controls (per BFS-ISP-016) reduce dependence on customer device security. Fraud monitoring detects compromise indicators. |

| Customer-side fraud and social engineering attacks against customers directly | Attacks where customers themselves are the direct target (not BFS systems) — e.g., customer phishing impersonating BFS, customer falling victim to romance scams using BFS accounts. | Customer awareness communications, fraud monitoring (which detects suspicious patterns), and customer support assistance for victimized customers. These addressed by BFS as a financial institution but not within ISMS scope as they do not involve BFS information assets. |

| Personal use of BFS-issued devices outside business purpose | Where BFS permits limited personal use of BFS devices, the personal use itself is not within ISMS scope. The device, network, and any business information it touches remain in scope. | BFS Acceptable Use Policy (forthcoming BFS-ISP-020) defines permitted personal use limits. Device security controls (EDR, MDM) protect BFS interests regardless of personal use context. |

| BFS shareholder personal financial decisions | BFS shareholders' personal financial information (other than where they are also customers or employees) is not within BFS information custody. | No specific mitigation needed — outside BFS information custody. |

| Information held by BFS regulators about BFS | BSP, NPC, and other regulators hold information about BFS as part of their supervisory function. This information is in regulator custody, not BFS custody. | BFS commits to providing accurate information to regulators per regulatory obligations. Regulator information custody governed by their own ISMSs. |

| BFS Board members' personal information beyond their Board function | Board members' personal financial, family, and unrelated information is in their personal custody, not BFS custody. BFS holds Board members' information related to their Board function (compensation, attendance, decisions) within ISMS scope. | Clear separation through HR data classification and access controls. |

| EXCLUSION DISCIPLINE:  An ISO 27001 certification body will scrutinize all exclusions to verify they are reasonable, justifiable, and do not undermine the integrity of the certified scope. The exclusions documented above are limited to elements genuinely outside BFS authority or custody. BFS does not exclude elements that are operationally inconvenient to govern — such exclusions would not survive certification audit. If BFS later identifies additional exclusions, they shall be added through formal review and Board re-approval of this document. |

| --- |

## 4.4  Interfaces and Dependencies

ISO/IEC 27001:2022 Clause 4.3(c) requires the scope to consider interfaces and dependencies between activities performed by BFS and those performed by other organizations. The following interfaces and dependencies are operationally significant for the ISMS:

| Interface Type | Description | Governed By |

| --- | --- | --- |

| BSP / NPC / SEC interfaces | Regulatory reporting, examination, supervisory communication, breach notification | BFS-ISP-017 (Incident Response — regulatory notification); CCO and DPO functions; compliance processes |

| Card scheme interfaces | CHD processing, scheme messaging, dispute handling, card issuance | BFS-ISP-003, BFS-ISP-016, PCI DSS implementation across multiple BFS-ISP policies |

| SWIFT / interbank interfaces | SWIFT messaging, correspondent banking, payment settlement | BFS-ISP-012 (Network Infrastructure); BFS-ISP-017 PB-017 (SWIFT/Interbank Fraud); SWIFT CSP compliance |

| Cloud service provider interface (AWS) | Workload hosting, IAM federation, API integration, billing, support | BFS-ISP-006 (Access Control — cloud governance); BFS-ISP-015 (TIER 1 service provider) |

| Payment processor interfaces | Payment authorization, settlement, dispute, fraud reporting | BFS-ISP-015; specific interface security controls per individual processor |

| MSSP interfaces | SOC support, threat intelligence feeds, incident handoff (where MSSPs supplement BFS internal capability) | BFS-ISP-013 (Network Monitoring); BFS-ISP-015 (TIER 1 service provider) |

| Software vendor interfaces | Software delivery, security patches, vulnerability disclosure, support | BFS-ISP-002 (Software Asset Inventory); BFS-ISP-007 (Vulnerability Management); BFS-ISP-015 |

| Customer interfaces | Internet banking, mobile banking, branch service, customer service contact channels | BFS-ISP-016 (Application Security); BFS-ISP-009 (Email and Browser); BFS-ISP-014 (Awareness — customer-facing) |

| Audit and assessment interfaces | Internal audit, ISO 27001 certification body, PCI QSA, BSP examiners, penetration testing firms | BFS-ISMS-008 (Internal Audit); BFS-ISP-018 (Penetration Testing); BFS-ISP-015 (assessor firms as service providers) |

| Law enforcement interfaces | NBI Cybercrime Division, PNP-ACG cooperation during incident investigations | BFS-ISP-017 (Incident Response — law enforcement coordination); Legal Counsel coordination |

# 5.  OPERATIONAL LOCATIONS AND PHYSICAL BOUNDARIES

This section provides the physical boundary inventory required to enable certification audit and operational scope clarity. Specific location identifiers (addresses, coordinates) are maintained in the BFS Asset Inventory (BFS-ISP-001) at higher classification level. This section identifies location categories within ISMS scope.

| Location Category | Description | Physical Security Governance |

| --- | --- | --- |

| Head Office | BFS corporate headquarters housing executive functions, central business units, and primary operational teams | BFS-ISP-019 (Physical and Environmental Security — when issued); access controls, visitor management, CCTV, environmental controls |

| Branch Network | Customer-facing retail branches across the Philippines | BFS-ISP-019; branch-specific physical security standards including vault security, teller line controls, after-hours protection |

| Primary Data Center | BFS-controlled or BFS-leased primary data center hosting on-premise core systems | BFS-ISP-019; tier-classified data center physical controls; environmental monitoring; redundant power; controlled access with multi-factor |

| Disaster Recovery Site | Secondary data center geographically separated from primary, supporting RTO/RPO per BFS-ISP-011 | BFS-ISP-019; equivalent physical security to primary data center; activation procedures per BFS-ISP-011 BCP/DRP |

| ATM Locations (On-Premises) | ATMs deployed within branch facilities | BFS-ISP-019 + ATM-specific standards (per BFS-ISP-018 Section 5.10.1); physical hardening, anti-tamper, surveillance |

| ATM Locations (Off-Premises) | ATMs deployed at standalone or partner locations (malls, transit hubs, partner premises) | ATM-specific physical security standards; partner location access agreements; remote monitoring |

| Cloud Regions (AWS) | AWS Asia Pacific region(s) hosting BFS workloads | Shared responsibility model — AWS provides physical security to AWS facilities; BFS responsible for logical access and configuration controls |

| Office Locations (Non-Branch) | Operational offices, training centers, BCM sites | BFS-ISP-019; office-grade physical security; visitor management |

| Remote Work Locations | Employee homes and other approved locations where remote work is performed | BFS-ISP-022 (Remote Working — when issued); device security and remote access controls; not a physical premises BFS controls |

| Vendor and Service Provider Locations | Locations where BFS service providers operate (third-party data centers, vendor offices, BPO sites) | Not BFS-controlled; covered through service provider security obligations per BFS-ISP-015 |

# 6.  ROLES AND RESPONSIBILITIES FOR SCOPE MAINTENANCE

Scope maintenance is a continuous activity. As BFS operations evolve, the ISMS scope must remain accurate. The following roles have specific responsibilities for keeping this Scope and Context Document current.

| Role | Scope Maintenance Responsibility |

| --- | --- |

| Board Audit & Risk Committee | Reviews and approves material changes to the ISMS scope. Receives notification of any scope changes affecting ISO 27001 certified scope. |

| Chief Information Officer | Co-owner of this document with the CISO. Ensures scope reflects current IT operations and technology landscape. Approves scope changes affecting IT operations. |

| Chief Information Security Officer | Operational owner of this document. Maintains scope currency throughout the year. Coordinates annual review with the Information Security Steering Committee. Reports scope changes to the Board Audit & Risk Committee. |

| Chief Risk Officer | Reviews scope from enterprise risk perspective. Identifies scope gaps that could leave material risks ungoverned. |

| Data Privacy Officer | Reviews scope for personal data processing coverage. Identifies new personal data flows that should be in scope. |

| Chief Compliance Officer | Reviews scope from regulatory compliance perspective. Identifies regulatory developments affecting scope (new BSP circulars expanding supervised activities, etc.). |

| Business Unit Heads | Notify CISO of business operations changes that affect scope (new business lines, new products, new geographic operations, divestitures, partnerships). |

| Enterprise Architecture | Notifies CISO of significant technology landscape changes affecting scope (new platforms, new cloud regions, major architectural changes). |

| Procurement / Vendor Management | Notifies CISO of new TIER 1/TIER 2 service provider relationships that introduce new interfaces or dependencies affecting scope. |

| Internal Audit | Independently assesses scope completeness and accuracy as part of ISMS audits per BFS-ISMS-008. Reports scope gaps to the Audit Committee. |

# 7.  SCOPE REVIEW AND CHANGE PROCEDURE

## 7.1  Annual Scope Review

This Scope and Context Document is reviewed in full at least annually as part of the ISMS Management Review per BFS-ISMS-009. The annual review:

Re-validates the External and Internal Issues (Section 2) against current conditions;

Re-validates the Interested Parties Register (Section 3) for completeness and accuracy of requirements;

Re-validates the formal Scope Statement (Section 4.1) and detailed inclusion / exclusion analysis (Sections 4.2 and 4.3);

Confirms the Interfaces and Dependencies inventory (Section 4.4) and Operational Locations (Section 5) remain accurate;

Identifies any scope gaps (elements that should be in scope but are not) or scope drift (elements out of scope but operationally treated as in scope, or vice versa);

Triggers downstream updates to BFS-ISMS-003 (Risk Assessment), BFS-ISMS-004 (Statement of Applicability), and BFS-ISMS-005 (Information Security Objectives) where scope changes affect them.

## 7.2  Out-of-Cycle Scope Changes

Material scope changes occurring between annual reviews shall trigger out-of-cycle update to this document. Material scope changes include:

Acquisition or divestiture of business operations affecting the geographic, organizational, or process scope;

Major new product or service launches significantly expanding the technology or process scope (e.g., launch of new digital channel, entry into new financial product category);

Adoption of new strategic technology platforms (e.g., transition to a new cloud provider, deployment of the AI-native core banking platform to production);

Significant changes to the regulatory environment affecting BFS (new BSP circulars expanding supervised activities, new privacy regulations applying to BFS);

Material organizational restructuring (new business units, executive role changes affecting governance);

Identification of significant scope gaps or excessive exclusions through internal audit, certification audit, regulatory examination, or material incident.

## 7.3  Scope Change Approval Authority

Scope changes are approved as follows:

| Change Type | Approval Authority | Notification |

| --- | --- | --- |

| Editorial corrections (no scope change in substance) | CISO Office | Recorded in revision history; no further notification |

| Minor scope refinements (clarifications, restructuring, no material change) | CISO | Information Security Steering Committee; CIO |

| Material scope additions (new in-scope elements not previously covered) | CIO + CISO | Board Audit & Risk Committee at next scheduled meeting |

| Material scope reductions (new exclusions previously in scope) | CIO + CISO + Board Audit & Risk Committee | Board approval required; rationale documented; impact on certification considered |

| Changes affecting ISO 27001 certified scope | Board Audit & Risk Committee + Certification Body | Certification body notification per certification agreement; potential re-audit consideration |

| CERTIFICATION CONTINUITY:  Once BFS achieves ISO 27001 certification, scope changes have potential certification implications. Material scope additions may require certification body notification and possible scope expansion audit. Material scope reductions may require justification to the certification body and could be perceived as reducing the value of certification. Scope changes affecting certified scope shall always be coordinated with the Certification Body before implementation. |

| --- |

# 8.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS ISMS Scope and Context Document aligned with ISO/IEC 27001:2022 Clauses 4.1, 4.2, and 4.3. Documents organizational context (external and internal issues), Interested Parties Register, and the formal ISMS Scope Statement with detailed inclusion and exclusion analysis. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Clauses 4.1, 4.2, 4.3 Requirements Mapping

ISO/IEC 27001:2022 Clauses 4.1, 4.2, and 4.3 each impose specific requirements. The table below confirms how this Scope and Context Document fulfills each requirement, providing direct evidence for ISO 27001 certification audit.

| Clause | Requirement | How This Document Fulfills the Requirement |

| --- | --- | --- |

| 4.1 | Determine external and internal issues relevant to the organization's purpose | Section 2 documents BFS's purpose (Section 2.1), external issues across regulatory, threat, and technology categories (Section 2.2), and internal issues across strategic, organizational, and technical categories (Section 2.3). Annual review per Section 7. |

| 4.1 | Issues that affect ability to achieve intended outcomes of the ISMS | Each issue documented in Section 2 includes its impact on the ISMS in the right-hand column of the relevant table. The intended outcomes of the ISMS are stated in Section 2.1. |

| 4.2(a) | Determine interested parties relevant to the ISMS | Section 3.1 provides the comprehensive Interested Parties Register organized into six categories (Customers and Data Subjects; Regulators and Legal Authorities; Internal Stakeholders; Business Partners and Service Providers; Certification, Standards, Industry Bodies; Other Interested Parties). |

| 4.2(b) | Determine the relevant requirements of these interested parties | For each interested party, Section 3.1 documents key requirements in the middle column of the relevant table. |

| 4.2(c) | Determine which of these requirements will be addressed through the ISMS | Section 3.1 documents how each requirement is addressed in the right-hand column. Section 3.2 explicitly addresses the determination — the default is that all identified requirements are addressed through the ISMS, with exceptions explicitly documented. |

| 4.3 | Determine the boundaries and applicability of the ISMS to establish its scope | Section 4.1 provides the formal ISMS Scope Statement. Sections 4.2 and 4.3 provide detailed in-scope and out-of-scope analysis. Section 5 documents physical/operational locations. |

| 4.3(a) | Scope shall consider external and internal issues per 4.1 | Section 4 explicitly references and considers the external and internal issues from Section 2 in determining scope inclusions and exclusions. |

| 4.3(b) | Scope shall consider requirements of interested parties per 4.2 | Section 4 explicitly references and considers interested party requirements from Section 3 in determining scope coverage. |

| 4.3(c) | Scope shall consider interfaces and dependencies between activities performed by the organization and those performed by other organizations | Section 4.4 provides the comprehensive Interfaces and Dependencies inventory addressing this requirement. |

| 4.3 | Scope shall be available as documented information | This document is the documented scope per Clause 4.3, classified CONFIDENTIAL and maintained per BFS-ISMS-006 (Document and Records Control). |

# APPENDIX B:  Interfaces with Other ISMS Documents

This Scope and Context Document interfaces with multiple other ISMS documents. The table below summarizes these relationships.

| Document | Relationship to This Document | Specific Dependencies |

| --- | --- | --- |

| BFS-ISMS-001 (Top-Level Policy) | Parent document. Establishes high-level scope which this document operationalizes. | High-level scope statement in BFS-ISMS-001 Section 2 is operationalized in detail in this document Section 4. |

| BFS-ISMS-003 (Risk Assessment Methodology) | Downstream consumer. Risk assessment is conducted within the scope defined here. | Scope determines which assets, processes, and locations are included in risk assessment scope. |

| BFS-ISMS-004 (Statement of Applicability) | Downstream consumer. SoA documents control applicability for the scope defined here. | SoA controls applicability is evaluated against the scope defined in Section 4 of this document. |

| BFS-ISMS-005 (Information Security Objectives) | Downstream consumer. Objectives are set for the scope defined here. | Objectives address risks and interested party requirements within the defined scope. |

| BFS-ISMS-006 (Document Control) | Procedural framework. Governs how this document is controlled, versioned, and distributed. | This document is maintained per the document control requirements in BFS-ISMS-006. |

| BFS-ISMS-008 (Internal Audit) | Process consumer. Internal audits verify scope coverage and operational compliance with the defined scope. | Audit programme covers all scope elements; scope gaps identified through audit feed back to scope updates. |

| BFS-ISMS-009 (Management Review) | Review consumer. Annual scope review is part of Management Review. | Section 7.1 of this document specifies annual review through BFS-ISMS-009. |

| BFS-ISP series (BFS-ISP-001 through BFS-ISP-029) | Operational implementation. The BFS-ISP series implements technical and operational controls within the scope defined here. | Each BFS-ISP policy operates within the scope boundaries defined in this document. |

| BFS-ISP-001 (Asset Inventory) | Detailed asset register. Specific identifiers of assets within scope. | Asset Inventory provides specific instances of asset categories identified in this document Sections 4.2.4 and 5. |

| BFS-ISP-015 (Service Provider Management) | Boundary governance. Defines BFS interface to in-scope third parties. | Service Provider Inventory provides specific instances of provider relationships affecting scope per Section 4.4. |

BFS-ISMS-002  |  ISMS Scope and Context Document  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal and Audit Use Only.
