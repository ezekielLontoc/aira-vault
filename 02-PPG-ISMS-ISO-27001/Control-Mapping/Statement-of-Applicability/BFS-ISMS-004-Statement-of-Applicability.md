---
title: "BFS-ISMS-004-Statement-of-Applicability"
source_file: "02-PPG-ISMS-ISO-27001/Control-Mapping/Statement-of-Applicability/BFS-ISMS-004-Statement-of-Applicability.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:37Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Control-Mapping"
  - "Statement-of-Applicability"
aliases:
  - "BFS-ISMS-004-Statement-of-Applicability"
creator: "Un-named"
created: "2026-04-26T21:58:00Z"
modified: "2026-04-27T01:51:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>STATEMENT<br>OF APPLICABILITY<br>Comprehensive Applicability Determination for All 93 Controls of ISO/IEC 27001:2022 Annex A — with Justifications, BFS Implementation References, and Implementation Status<br>Policy Reference: BFS-ISMS-004<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual + on Material Changes<br>ISO/IEC 27001:2022 Clause 6.1.3(d) Mandated Document<br>The Most Critical Artifact for ISO 27001 Certification Audit<br>Companion to BFS-ISMS-001 (Top-Level Policy), BFS-ISMS-002 (Scope and Context), BFS-ISMS-003 (Risk Methodology) and the entire BFS-ISP series |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Statement of Applicability (SoA) — ISO/IEC 27001:2022 Annex A |

| --- | --- |

| Policy Reference | BFS-ISMS-004 |

| Policy Owner | Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal, Audit, and Certification Body Use |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual; out-of-cycle review on (a) material changes to BFS-ISMS-002 (Scope and Context); (b) material changes to the BFS Risk Register driven by BFS-ISMS-003; (c) ISO 27001 standard revision; (d) regulatory changes affecting applicability of specific controls |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — ISMS Framework Document. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISMS-002 (Scope and Context — defines what this SoA applies to); BFS-ISMS-003 (Risk Methodology — produced this SoA via Annex A comparison required by Clause 6.1.3(c)); BFS-ISMS-005 (Information Security Objectives); the entire BFS-ISP series (implementation references) |

| Framework Alignment | ISO/IEC 27001:2022 Clause 6.1.3(d) — mandatory Statement of Applicability requirement; ISO/IEC 27002:2022 — control implementation guidance for all 93 Annex A controls; ISO/IEC 27001:2022 Clause 6.1.3(c) — Annex A comparison process producing this document |

| Regulatory Reference | BSP Circular 1140; BSP Circular 1048; BSP Circular 982; Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (mapped to applicable controls); RA 10175; RA 11765 |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Compliance Officer |  |  |  |

| Internal Audit Head |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document is the BFS Financial Services Statement of Applicability (SoA) for the Information Security Management System (ISMS), produced as required by ISO/IEC 27001:2022 Clause 6.1.3(d). The SoA is the authoritative reference document confirming, for each of the 93 information security controls listed in ISO/IEC 27001:2022 Annex A, whether the control is applicable to the BFS ISMS, the justification for that applicability decision, the BFS policy or procedure implementing the control, and the current implementation status.

The SoA is the most critical artifact for ISO/IEC 27001 certification. An ISO 27001 certification body audit is fundamentally an examination of whether BFS has: (a) made defensible applicability decisions for all 93 Annex A controls; (b) implemented the controls determined to be applicable; (c) justified any exclusions with credible rationale; and (d) maintained documented evidence of operational compliance with implemented controls. The SoA is the single document that integrates these dimensions for audit examination.

This SoA is produced through application of the BFS Risk Assessment and Treatment Methodology (BFS-ISMS-003), specifically the Annex A comparison process required by Clause 6.1.3(c). For each risk in the BFS Risk Register that requires treatment (per Clause 6.1.3(a)), the necessary controls have been identified and compared against Annex A to ensure no necessary control is omitted. The applicability decisions in this SoA reflect the integration of risk-driven control selection with comprehensive Annex A coverage.

ISO/IEC 27001:2022 Clause 6.1.3(d) specifies four required elements of the SoA, each of which is provided for every control in Sections 3 through 6 of this document:

The necessary controls — identified by the BFS Risk Assessment per BFS-ISMS-003 and recorded as the Implementation Reference column;

Justification for inclusions — documented in the Justification column for each Applicable control, explaining why the control is necessary given BFS's scope, risks, and regulatory environment;

Whether the necessary controls are implemented or not — documented in the Implementation Status portion of each control entry as Implemented, Partially Implemented, or Planned;

Justification for exclusions of any of the controls in Annex A — documented for any control determined to be Not Applicable, with explicit credible rationale.

The specific objectives of this document are to:

Provide the audit-ready, certification-grade comprehensive Annex A coverage required by ISO/IEC 27001:2022 Clause 6.1.3(d);

Confirm the integration of BFS risk-driven control selection with the comprehensive Annex A control framework, demonstrating no necessary control has been omitted through risk identification gaps;

Map each Annex A control to the specific BFS policy and procedure implementing it — providing the authoritative cross-reference between the international standard and BFS's operational documentation;

Document implementation status across all applicable controls, providing a single-document view of BFS's certification readiness and remediation needs;

Establish the SoA as the primary reference document for BFS internal audits (BFS-ISMS-008), management reviews (BFS-ISMS-009), regulatory examinations, and external certification audits.

# 2.  SoA STRUCTURE AND READING GUIDE

This section explains the structure of this SoA, how applicability decisions were determined, how to interpret entries, and the relationship to BFS's broader ISMS documentation.

## 2.1  Annex A Structure (ISO/IEC 27001:2022)

ISO/IEC 27001:2022 reorganizes the Annex A controls (relative to the 2013 version) into four themes totalling 93 controls. This SoA presents the controls in the order specified by the standard:

| Theme | Theme Name | Control Count | Description |

| --- | --- | --- | --- |

| A.5 | Organizational Controls | 37 controls | Controls that establish the organizational framework for information security — policies, governance, supplier management, incident management, business continuity, legal compliance |

| A.6 | People Controls | 8 controls | Controls related to personnel — screening, training, employment terms, disciplinary process, remote working |

| A.7 | Physical Controls | 14 controls | Controls protecting physical assets and premises — physical perimeters, entry, equipment, environmental threats, secure disposal |

| A.8 | Technological Controls | 34 controls | Controls implemented in technology — access controls, cryptography, malware protection, vulnerability management, network security, secure development, logging and monitoring |

## 2.2  Applicability Determination Process

Applicability decisions in this SoA were determined through the structured process specified in BFS-ISMS-003 (Risk Assessment and Treatment Methodology) Section 7.2 — the ISO 27001:2022 Clause 6.1.3(c) Annex A comparison process. Specifically:

For each risk in the BFS Risk Register requiring treatment, the necessary controls were identified;

Identified controls were compared against the 93 Annex A controls;

Each Annex A control was evaluated for applicability considering: (a) the BFS ISMS scope per BFS-ISMS-002; (b) the BFS Risk Register; (c) regulatory obligations (BSP, NPC, PCI DSS, ISO 27001 mandate itself); (d) interested party requirements per BFS-ISMS-002 Section 3;

Applicability decisions were documented with specific justification — generic justifications such as 'not relevant to BFS' are not acceptable;

Implementation references were assigned, mapping each Applicable control to the specific BFS-ISP or BFS-ISMS document implementing it.

As a regulated financial institution operating across multiple service channels including the AI-native core banking platform under construction, BFS has determined that virtually all 93 Annex A controls are Applicable. This high applicability rate is consistent with peer financial institutions and reflects the comprehensive risk profile of banking and financial services. Specific exclusions, where they exist, are documented with credible rationale; none of the exclusions undermines the integrity of the certified scope.

## 2.3  How to Read SoA Entries

Each control entry in Sections 3 through 6 follows a consistent five-column structure:

| Column | Description |

| --- | --- |

| Ctrl ID | The Annex A control identifier per ISO/IEC 27001:2022 (e.g., A.5.1, A.8.24). Used for direct cross-reference to the standard. |

| Control Title | The official ISO/IEC 27001:2022 control title (canonical name). Used for direct cross-reference to ISO/IEC 27002:2022 implementation guidance. |

| Applicable? | BFS's applicability determination — either Applicable or Not Applicable. Color-coded green for Applicable; gray for Not Applicable. |

| Justification & BFS Implementation Context | For Applicable controls: specific justification of why the control is necessary at BFS, and brief implementation context. For Not Applicable controls: specific credible rationale for exclusion. |

| Primary Implementation Reference & Status | For Applicable controls: the primary BFS policy/procedure implementing the control; implementation status (Implemented / Partially Implemented / Planned). For Not Applicable controls: 'N/A — see Justification'. |

## 2.4  Implementation Status Categories

| Status | Definition |

| --- | --- |

| Implemented | Control is fully operational at BFS. Implementing policy is approved and effective. Operational evidence exists for audit. Control effectiveness is monitored through KPIs. |

| Partially Implemented | Control is operational but with known gaps in coverage, scope, or maturity. Implementation roadmap is documented with target dates for full implementation. Compensating controls in place where appropriate. |

| Planned | Control implementation is approved and scheduled but not yet operational. Implementation policy or procedure may exist as approved document with deferred operational rollout. Risk treatment plan documents the implementation timeline. |

| AUDIT-FRIENDLY DESIGN:  This SoA is designed for direct use by ISO 27001 certification body auditors. Each control entry provides — in a single row — the auditor's primary information needs: applicability decision, justification, and primary implementation reference. Auditors examining specific controls (e.g., 'show me your A.8.24 cryptography evidence') can navigate directly to the relevant row without needing to parse narrative policy text. The accompanying BFS-ISP policies provide the operational depth. |

| --- |

# 3.  THEME A.5 — ORGANIZATIONAL CONTROLS (37 CONTROLS)

ISO/IEC 27001:2022 Annex A.5 contains 37 controls establishing the organizational framework for information security — policies, governance, supplier management, incident management, business continuity, and legal compliance. All 37 are Applicable to BFS as a regulated financial institution. The theme is presented in two parts: A.5.1 through A.5.18 in this section, and A.5.19 through A.5.37 in Section 3 (continued).

| Ctrl ID | Control Title | Applicable? | Justification & BFS Implementation Context | Primary Implementation Reference & Status |

| --- | --- | --- | --- | --- |

| A.5.1 | Policies for information security | Applicable | Foundational requirement for any ISMS. BFS maintains a comprehensive policy hierarchy: TIER 1 Top-Level Policy (BFS-ISMS-001), TIER 2 ISMS framework documents (BFS-ISMS-002 through BFS-ISMS-010), TIER 2 technical control policies (BFS-ISP-001 through BFS-ISP-029). Policies are reviewed annually and approved at appropriate authority levels. | BFS-ISMS-001 (Top-Level Policy) + entire BFS-ISP series Status: Implemented |

| A.5.2 | Information security roles and responsibilities | Applicable | Roles and responsibilities defined at three governance tiers (Strategic/Executive/Operational) per BFS-ISMS-001 Section 5. Each subordinate BFS-ISP policy defines control-specific roles. Independent reporting lines preserved for CISO, DPO, and Internal Audit. | BFS-ISMS-001 §5; all BFS-ISP roles sections Status: Implemented |

| A.5.3 | Segregation of duties | Applicable | Critical control for a financial institution to prevent fraud, error, and unauthorized actions. SoD requirements apply to financial transactions, IT operations, security operations, and access governance. Privileged access governance per BFS-ISP-005 enforces SoD principles. | BFS-ISP-025 (forthcoming); BFS-ISP-005; BFS-ISP-006 Status: Partially Implemented (BFS-ISP-025 in development) |

| A.5.4 | Management responsibilities | Applicable | Management at all levels is accountable for compliance with BFS information security policies within their span of control. Reflected in BFS-ISMS-001 governance structure, executive accountability matrix, and business unit head responsibilities defined throughout the BFS-ISP series. | BFS-ISMS-001 §5 and §7 Status: Implemented |

| A.5.5 | Contact with authorities | Applicable | BFS maintains documented contact with BSP, NPC, SEC, AMLC, NBI Cybercrime Division, and PNP-ACG. Specific notification timelines and procedures are operationalized in BFS-ISP-017 (Incident Response) — BSP within 2 hours for cybersecurity incidents, NPC within 72 hours for personal data breaches. | BFS-ISP-017 §5.9; CCO + Legal coordination Status: Implemented |

| A.5.6 | Contact with special interest groups | Applicable | BFS participates in sector information sharing through BSP-ISAC and FS-ISAC channels. Industry threat intelligence and lessons learned shape ISMS evolution. Membership in security professional bodies maintained for CISO Office personnel. | BFS-ISP-013 (threat intel); CISO Office Status: Implemented |

| A.5.7 | Threat intelligence | Applicable | Active threat intelligence program collecting, analyzing, and disseminating threat information from open-source feeds, commercial subscriptions, sector ISACs, BSP/NPC advisories, and MITRE ATT&CK Framework. Threat intelligence drives detection rule development and Purple Team exercise priorities. | BFS-ISP-013 §5.4; BFS-ISP-018 (Purple Team) Status: Implemented |

| A.5.8 | Information security in project management | Applicable | Security must be integrated into all BFS projects from inception, not retrofitted. SSDLC governance per BFS-ISP-016 covers application projects. The forthcoming BFS-ISP-027 will provide broader project management security framework covering non-application projects. | BFS-ISP-016 (SSDLC); BFS-ISP-027 (forthcoming) Status: Partially Implemented |

| A.5.9 | Inventory of information and other associated assets | Applicable | Foundational asset inventory is implemented through BFS-ISP-001 (Enterprise Asset Inventory) covering hardware, infrastructure, and physical assets, and BFS-ISP-002 (Software Asset Inventory) covering all software including SaaS, libraries, containers, and AI/ML models. Inventories are continuously maintained. | BFS-ISP-001; BFS-ISP-002; BFS-ISP-016 (Application Inventory) Status: Implemented |

| A.5.10 | Acceptable use of information and other associated assets | Applicable | Acceptable use rules govern how BFS personnel use BFS-issued devices, networks, applications, and information assets. Currently addressed through fragmented references in multiple BFS-ISP policies; consolidated comprehensive Acceptable Use Policy is the highest-priority gap closure. | BFS-ISP-020 (forthcoming); references in BFS-ISP-009, BFS-ISP-014 Status: Planned |

| A.5.11 | Return of assets | Applicable | Returning BFS assets at the end of employment, contract, or assignment is a foundational HR security control. To be addressed comprehensively in the forthcoming BFS-ISP-021 (HR Security Policy) covering pre-employment, during employment, and termination/change phases. | BFS-ISP-021 (forthcoming) Status: Planned |

| A.5.12 | Classification of information | Applicable | Information classification scheme is fundamental to applying proportionate controls. BFS uses a 4-tier classification: PUBLIC / INTERNAL / CONFIDENTIAL / RESTRICTED. Classification determines handling requirements, encryption obligations, retention, and access governance. | BFS-ISP-003 §5.2; classification labels in document templates Status: Implemented |

| A.5.13 | Labelling of information | Applicable | Information labelling implements the classification scheme operationally. All BFS documents bear classification labels in headers/footers; emails labeled per classification; data systems labeled at storage and processing layer; metadata-driven labelling for structured data. | BFS-ISP-003 §5.2; document templates; data tagging Status: Partially Implemented (data tagging maturing) |

| A.5.14 | Information transfer | Applicable | Information transfer covers internal and external transfer of information across networks, channels, and media. Includes secure email, file transfer, removable media, and cross-border transfers. Forthcoming BFS-ISP-024 will consolidate currently fragmented controls. | BFS-ISP-024 (forthcoming); BFS-ISP-009; BFS-ISP-003 Status: Partially Implemented |

| A.5.15 | Access control | Applicable | Access control is core to information security. BFS implements least-privilege, need-to-know, role-based access control, with progressive movement toward Zero Trust architecture. Comprehensive operational coverage through BFS-ISP-006. | BFS-ISP-006; BFS-ISP-005 Status: Implemented |

| A.5.16 | Identity management | Applicable | Identity lifecycle management from provisioning through deprovisioning, with strong authentication, identity attestation, and reconciliation against authoritative HR source. Implemented through BFS-ISP-005 with PAM, IdP, and identity governance. | BFS-ISP-005 Status: Implemented |

| A.5.17 | Authentication information | Applicable | Protection of authentication information (passwords, tokens, certificates, biometric templates) from unauthorized disclosure. MFA mandated for all administrative and remote access; passwords managed per BFS standards; secrets management through enterprise PAM and secrets vaults. | BFS-ISP-005 §5.3; BFS-ISP-006 Status: Implemented |

| A.5.18 | Access rights | Applicable | Access rights provisioning, modification, periodic review, and termination. Quarterly access reviews for TIER 1 systems; annual reviews for all systems; immediate revocation on termination/role change. Implemented through BFS-ISP-005 §5.5 and BFS-ISP-006. | BFS-ISP-005 §5.5; BFS-ISP-006 Status: Implemented |

# 3.  THEME A.5 — ORGANIZATIONAL CONTROLS (CONTINUED)

Continuation of Annex A.5 Organizational Controls — A.5.19 through A.5.37.

| Ctrl ID | Control Title | Applicable? | Justification & BFS Implementation Context | Primary Implementation Reference & Status |

| --- | --- | --- | --- | --- |

| A.5.19 | Information security in supplier relationships | Applicable | Comprehensive supplier security framework including pre-engagement due diligence, contractual security obligations, ongoing monitoring, and offboarding. BFS-ISP-015 implements four-tier supplier classification (TIER 1 CRITICAL through TIER 4 LOW) with calibrated controls for each tier. | BFS-ISP-015 Status: Implemented |

| A.5.20 | Addressing information security within supplier agreements | Applicable | Standard Security Schedule and Data Processing Agreement (DPA) annexes for all supplier contracts. Specific clauses for incident notification SLAs, audit rights, data protection, encryption requirements, security testing, and offboarding obligations. | BFS-ISP-015 §5.4; Legal Counsel templates Status: Implemented |

| A.5.21 | Managing information security in the ICT supply chain | Applicable | ICT supply chain risk addressed through Software Asset Inventory (BFS-ISP-002), SBOM requirements for TIER 1 software (BFS-ISP-016), Software Composition Analysis in CI/CD pipeline, and cloud service provider governance. Critical post-Log4Shell, SolarWinds, MOVEit lessons learned. | BFS-ISP-002; BFS-ISP-015; BFS-ISP-016 §5.6.3 Status: Implemented |

| A.5.22 | Monitoring, review and change management of supplier services | Applicable | Continuous monitoring of supplier service performance and security posture. Annual Vendor Risk Assessments for TIER 1/2; supplier change notifications required per contract; breach of supplier security obligations triggers remediation or contract termination. | BFS-ISP-015 §5.6 Status: Implemented |

| A.5.23 | Information security for use of cloud services | Applicable | Cloud security governance covering BFS's AWS environment and SaaS providers. Shared responsibility model documented; cloud-specific controls implemented; cloud penetration testing per BFS-ISP-018 §5.10.5; cloud configuration governance via Cloud Security Posture Management. | BFS-ISP-006 (cloud access); BFS-ISP-015 (CSP as TIER 1); BFS-ISP-018 Status: Implemented |

| A.5.24 | Information security incident management planning and preparation | Applicable | Comprehensive incident response framework with 4-severity classification, 24/7 SOC, 19 documented playbooks (PB-001 through PB-019), formal IR Team structure, retainer relationships with external IR firms. | BFS-ISP-017 §4 and §5.3 Status: Implemented |

| A.5.25 | Assessment and decision on information security events | Applicable | SOC triage process for raw security events into incidents per defined criteria. Severity classification workflow with documented escalation thresholds. False positive vs. true positive determination through structured analysis. | BFS-ISP-017 §5.4 Status: Implemented |

| A.5.26 | Response to information security incidents | Applicable | Structured response workflow: Detection → Triage → Containment → Eradication → Recovery → Lessons Learned. Documented playbooks for 19 incident scenarios. Incident Commander role; out-of-band communication channels; legal/regulatory coordination. | BFS-ISP-017 §5.5 and §6 Status: Implemented |

| A.5.27 | Learning from information security incidents | Applicable | Mandatory Post-Incident Review (PIR) for all CRITICAL/HIGH incidents within 30 days. Root cause analysis, lessons learned, control improvements, playbook refinements, awareness reinforcement. PIR outputs feed continuous improvement of the BFS-ISP series. | BFS-ISP-017 §5.8 Status: Implemented |

| A.5.28 | Collection of evidence | Applicable | Forensic evidence preservation procedures supporting law enforcement coordination, civil litigation, and regulatory examinations. Chain of custody requirements; forensic imaging procedures; legal hold management; admissibility-aware evidence handling. | BFS-ISP-017 §5.6; Legal Counsel coordination Status: Implemented |

| A.5.29 | Information security during disruption | Applicable | Information security must continue during operational disruptions, not be suspended for expedience. BFS-ISP-011 establishes data recovery requirements; forthcoming BFS-ISP-011-BCP will provide comprehensive Business Continuity framework integrating with information security. | BFS-ISP-011; BFS-ISP-011-BCP (forthcoming) Status: Partially Implemented |

| A.5.30 | ICT readiness for business continuity | Applicable | ICT-specific BCM requirements: tested DR procedures, RTO/RPO commitments per BFS-ISP-011, alternate processing arrangements, communication contingencies, ICT supplier dependency considerations. Forthcoming BFS-ISP-011-DRP will provide comprehensive DR plan. | BFS-ISP-011; BFS-ISP-011-DRP (forthcoming) Status: Partially Implemented |

| A.5.31 | Legal, statutory, regulatory and contractual requirements | Applicable | BFS as a BSP-supervised institution operates within an extensive regulatory framework: BSP Circulars 1140/1048/982/144/808, RA 10173, RA 10175, RA 11765, RA 8791, PCI DSS v4.0, plus card scheme rules and SWIFT CSP. Comprehensive register and compliance program. | BFS-ISP-026 (forthcoming); CCO function Status: Partially Implemented |

| A.5.32 | Intellectual property rights | Applicable | BFS holds intellectual property (proprietary software, business processes, brand) and uses third-party intellectual property (licensed software, content). IP protection and license compliance are operational concerns. Software license management per BFS-ISP-002. | BFS-ISP-002 (license compliance); BFS-ISP-026 Status: Partially Implemented |

| A.5.33 | Protection of records | Applicable | Records protection is mandatory for a regulated financial institution — records include transaction records, customer correspondence, audit logs, regulatory submissions, contracts. Retention periods per regulatory requirements; integrity protection; controlled disposal at end of retention. | BFS-ISP-008 (audit logs); BFS-ISP-003 (data retention); BFS-ISMS-006 Status: Implemented |

| A.5.34 | Privacy and protection of PII | Applicable | RA 10173 (Data Privacy Act) is foundational regulatory requirement for BFS. Comprehensive PII protection through BFS-ISP-003, DPO function, Privacy Impact Assessments integrated into SSDLC, 72-hour NPC breach notification, data subject rights fulfillment. | BFS-ISP-003; DPO function; BFS-ISP-017 §5.9.2 Status: Implemented |

| A.5.35 | Independent review of information security | Applicable | Internal audit function operates independently of operational management with reporting line to Board Audit & Risk Committee. Annual ISMS audits per BFS-ISMS-008. External penetration testing per BFS-ISP-018. ISO 27001 certification audit (planned) provides additional independence. | BFS-ISMS-008; BFS-ISP-018 Status: Implemented |

| A.5.36 | Compliance with policies, rules and standards for information security | Applicable | Compliance with BFS information security policies is mandatory and monitored. Internal audit verifies compliance per BFS-ISMS-008; nonconformities tracked through BFS-ISMS-010 Corrective Action; KPI monitoring across BFS-ISP series; disciplinary framework per BFS-ISMS-001 §11. | BFS-ISMS-008; BFS-ISMS-010; BFS-ISMS-001 §11 Status: Implemented |

| A.5.37 | Documented operating procedures | Applicable | Operating procedures documented for all significant security activities. Document control governance per BFS-ISMS-006. Procedures referenced in each BFS-ISP policy §6 (Procedures). Operational runbooks maintained at TIER 4 level supporting day-to-day execution. | BFS-ISMS-006; procedures in each BFS-ISP §6 Status: Implemented |

# 4.  THEME A.6 — PEOPLE CONTROLS (8 CONTROLS)

ISO/IEC 27001:2022 Annex A.6 contains 8 controls related to personnel — screening, training, employment terms, disciplinary process, remote working, and event reporting. All 8 are Applicable to BFS. Several controls have policy gaps to be closed through forthcoming BFS-ISP-021 (HR Security) and BFS-ISP-022 (Remote Working) — HR security is a known gap area in the current portfolio with operational practices in place but consolidated policy in development.

| Ctrl ID | Control Title | Applicable? | Justification & BFS Implementation Context | Primary Implementation Reference & Status |

| --- | --- | --- | --- | --- |

| A.6.1 | Screening | Applicable | Pre-employment screening is critical for a financial institution. BFS conducts background checks proportionate to role sensitivity — enhanced screening for roles with privileged access, financial transaction authority, or PII access. Aligns with BSP fit-and-proper requirements for material roles. | BFS-ISP-021 (forthcoming); HR processes Status: Planned (operational; policy in development) |

| A.6.2 | Terms and conditions of employment | Applicable | Information security obligations are documented in employment contracts including confidentiality, IP assignment, acceptable use, post-termination obligations. Annual reaffirmation of obligations through training and acknowledgment. | BFS-ISP-021 (forthcoming); employment contracts Status: Planned |

| A.6.3 | Information security awareness, education and training | Applicable | Comprehensive security awareness program: mandatory annual training for all personnel, role-based training (developers, finance, executives, customer-facing), monthly phishing simulations, security culture reinforcement. Specific training for AI/LLM safety given AI-native platform development. | BFS-ISP-014 Status: Implemented |

| A.6.4 | Disciplinary process | Applicable | Formal disciplinary framework for information security violations: 4-tier severity (Minor/Moderate/Serious/Critical-Legal) with proportionate consequences from coaching through termination and criminal referral. Non-retaliation for good-faith reporting per BFS-ISMS-001 §11.2. | BFS-ISMS-001 §11; BFS-ISP-021; HR processes Status: Implemented |

| A.6.5 | Responsibilities after termination or change of employment | Applicable | Continuing obligations including confidentiality, return of assets, intellectual property, non-solicitation. Documented in employment contracts and reinforced at exit interviews. Critical for protecting BFS information after employment ends. | BFS-ISP-021 (forthcoming); HR offboarding Status: Planned |

| A.6.6 | Confidentiality or non-disclosure agreements | Applicable | NDAs required for all personnel and external parties (contractors, vendors, partners, auditors, prospective employees in interview process). Standard NDA templates maintained by Legal Counsel; provisions for both during and after engagement. | BFS-ISP-021; BFS-ISP-015 §5.4; Legal Counsel Status: Implemented |

| A.6.7 | Remote working | Applicable | Remote working arrangements at BFS require specific security controls covering device security, network access (VPN evolving to ZTNA), home environment expectations, secure handling of confidential information. Increasingly relevant as hybrid work becomes standard. | BFS-ISP-022 (forthcoming) Status: Planned |

| A.6.8 | Information security event reporting | Applicable | All BFS personnel are required to report suspected security events promptly through documented channels. Reporting integrated into BFS-ISP-014 awareness training and BFS-ISP-017 incident response. Non-retaliation for good-faith reporting. | BFS-ISP-017 §5.1; BFS-ISP-014 Status: Implemented |

# 5.  THEME A.7 — PHYSICAL CONTROLS (14 CONTROLS)

ISO/IEC 27001:2022 Annex A.7 contains 14 controls protecting physical assets and premises. All 14 are Applicable to BFS — physical security is foundational for a banking institution operating branches, ATMs, data centers, and head office facilities. Many controls are operationally implemented but await consolidation in the forthcoming BFS-ISP-019 (Physical and Environmental Security Policy).

| Ctrl ID | Control Title | Applicable? | Justification & BFS Implementation Context | Primary Implementation Reference & Status |

| --- | --- | --- | --- | --- |

| A.7.1 | Physical security perimeters | Applicable | Physical security perimeters defined for all BFS premises: head office, branches, data centers, ATM locations. Layered perimeters with controlled entry, surveillance, and intrusion detection. Tier-classified physical controls based on facility sensitivity. | BFS-ISP-019 (forthcoming); Corporate Security Status: Planned (operational; policy in development) |

| A.7.2 | Physical entry | Applicable | Controlled physical entry through access cards, biometrics, security personnel, and visitor management. Multi-factor entry for sensitive areas (data centers, vault, secure rooms). Continuous logging of entry events. | BFS-ISP-019 (forthcoming); Corporate Security Status: Planned |

| A.7.3 | Securing offices, rooms and facilities | Applicable | Specific facilities housing sensitive operations (data centers, payment operations, executive offices, server rooms) protected with enhanced controls including dedicated access lists, surveillance, and environmental monitoring. | BFS-ISP-019 (forthcoming) Status: Planned |

| A.7.4 | Physical security monitoring | Applicable | CCTV coverage of all BFS premises with retention per regulatory requirements. Branch perimeter monitoring; data center monitoring; ATM site monitoring. Centralized security operations capability for physical events. | BFS-ISP-019 (forthcoming); Corporate Security Status: Planned |

| A.7.5 | Protecting against physical and environmental threats | Applicable | Protection against fire, flood, earthquake, power loss, temperature, and humidity events. BCM and DR planning addresses environmental contingencies. Critical infrastructure protection given Philippine geographic risk profile (earthquakes, typhoons). | BFS-ISP-019; BFS-ISP-011 (DR planning) Status: Partially Implemented |

| A.7.6 | Working in secure areas | Applicable | Specific procedures for personnel working in secure areas (data centers, payment operations rooms, vault). Access logging, supervision requirements, prohibition on unauthorized devices, no-photography requirements. | BFS-ISP-019 (forthcoming) Status: Planned |

| A.7.7 | Clear desk and clear screen | Applicable | Clear desk and clear screen policies required for protection of confidential information visible in workspaces. Locked desks, encrypted device storage, screen lock automation, secure printing. | BFS-ISP-020 (forthcoming Acceptable Use); BFS-ISP-019 Status: Planned |

| A.7.8 | Equipment siting and protection | Applicable | Equipment positioned to minimize unauthorized observation, environmental damage, and physical interference. Particular attention to ATM siting (vandal/attack resistance) and data center equipment positioning. | BFS-ISP-019 (forthcoming); ATM-specific standards Status: Planned |

| A.7.9 | Security of assets off-premises | Applicable | BFS assets used outside BFS premises (laptops, mobile devices, work-from-home equipment) protected through device security controls, encryption, remote wipe capability, and acceptable use requirements. | BFS-ISP-022 (forthcoming Remote Working); BFS-ISP-001 Status: Planned |

| A.7.10 | Storage media | Applicable | Secure handling of storage media (removable storage, backup tapes, archived media) including encryption, transport security, retention, and disposal. Particular attention to media leaving BFS custody (vendor returns, media destruction). | BFS-ISP-003 §5.6; BFS-ISP-028 (forthcoming) Status: Partially Implemented |

| A.7.11 | Supporting utilities | Applicable | Supporting utilities (power, cooling, communications) protected against failure. Redundant power feeds, UPS, generator backup for data centers; redundant cooling; redundant communications. Tested through BCM exercises. | BFS-ISP-019; BFS-ISP-011 (BCM) Status: Implemented |

| A.7.12 | Cabling security | Applicable | Network and power cabling protected from interception, damage, and interference. Structured cabling, dedicated pathways, separation of power and data, monitoring of physical layer integrity in critical areas. | BFS-ISP-019; BFS-ISP-012 (network) Status: Implemented |

| A.7.13 | Equipment maintenance | Applicable | Equipment maintenance performed by authorized personnel only, with controls preventing unauthorized access during maintenance, data sanitization before maintenance for equipment leaving BFS premises, and verification of returned equipment. | BFS-ISP-019; BFS-ISP-001 (asset lifecycle) Status: Partially Implemented |

| A.7.14 | Secure disposal or re-use of equipment | Applicable | Equipment containing storage media securely sanitized or destroyed before disposal/reuse. Documented disposal procedures with chain of custody. Certificate of destruction for retired equipment containing sensitive data. | BFS-ISP-028 (forthcoming); BFS-ISP-003 Status: Partially Implemented |

# 6.  THEME A.8 — TECHNOLOGICAL CONTROLS (34 CONTROLS)

ISO/IEC 27001:2022 Annex A.8 contains 34 controls implemented in technology — access controls, cryptography, malware protection, vulnerability management, network security, secure development, logging, and monitoring. All 34 are Applicable to BFS. The theme is presented in two parts: A.8.1 through A.8.17 in this section, and A.8.18 through A.8.34 in Section 6 (continued). The technological controls have the deepest implementation coverage in the BFS-ISP series.

| Ctrl ID | Control Title | Applicable? | Justification & BFS Implementation Context | Primary Implementation Reference & Status |

| --- | --- | --- | --- | --- |

| A.8.1 | User end point devices | Applicable | Endpoint devices (workstations, laptops, mobile devices) protected through MDM/UEM, EDR, full disk encryption, automated patching, and configuration baselines. Both BFS-issued and approved BYOD endpoints accessing BFS resources are governed. | BFS-ISP-001; BFS-ISP-004; BFS-ISP-010 Status: Implemented |

| A.8.2 | Privileged access rights | Applicable | Privileged access tightly controlled through PAM solution with session recording, just-in-time access, MFA, time-bounded elevation, and separation from standard accounts. Critical for banking environment given consequences of privileged account compromise. | BFS-ISP-005 §5.4; BFS-ISP-006 Status: Implemented |

| A.8.3 | Information access restriction | Applicable | Access restricted by role, function, and need-to-know. Application-level access controls; database-level row-level security where applicable; data classification driving access policy. Enforced through IAM and application authorization layers. | BFS-ISP-006; BFS-ISP-003 (classification-driven) Status: Implemented |

| A.8.4 | Access to source code | Applicable | Source code access controlled through GitHub Enterprise / GitLab with role-based repository access. Production-bound code requires multi-party review (per BFS-ISP-016 SSDLC). Sensitive code (cryptographic, payment, AI) restricted to authorized teams. | BFS-ISP-016 §5.5; BFS-ISP-006 Status: Implemented |

| A.8.5 | Secure authentication | Applicable | Strong authentication required across BFS systems: MFA mandatory for all administrative, remote, and customer-facing authentication; passwordless authentication (FIDO2, biometrics) progressively deployed; risk-based authentication for customer-facing services. | BFS-ISP-005 §5.3 Status: Implemented |

| A.8.6 | Capacity management | Applicable | Capacity monitoring across infrastructure (compute, storage, network, database) to prevent availability issues from resource exhaustion. Auto-scaling for cloud workloads; capacity forecasting for on-premise; load testing pre-deployment. | BFS-ISP-012; cloud architecture practices Status: Implemented |

| A.8.7 | Protection against malware | Applicable | Comprehensive 10-layer malware defense per BFS-ISP-010: EDR/XDR, email security, web filtering, network IDS/IPS, application allowlisting, sandboxing, attachment scanning, threat intelligence integration, behavioral detection, ransomware-specific protections. | BFS-ISP-010 Status: Implemented |

| A.8.8 | Management of technical vulnerabilities | Applicable | Comprehensive vulnerability management: continuous scanning, KEV-prioritized remediation, severity-tiered SLAs (24-hour for KEV/CRITICAL on TIER 1 systems through 180 days for low), exception governance, and metrics reporting. | BFS-ISP-007 Status: Implemented |

| A.8.9 | Configuration management | Applicable | Secure configuration baselines (CIS Benchmarks, vendor hardening guides) applied to all in-scope assets. Configuration drift detection; change management gating; Infrastructure as Code for cloud configurations. | BFS-ISP-004 Status: Implemented |

| A.8.10 | Information deletion | Applicable | Information deletion at end of retention period or on-demand (data subject rights). Cryptographic erasure for cloud, physical destruction for on-premise media, certificate of destruction for outsourced disposal. Particular attention to backup deletion alignment. | BFS-ISP-003; BFS-ISP-028 (forthcoming) Status: Partially Implemented |

| A.8.11 | Data masking | Applicable | Data masking applied to sensitive data in non-production environments (development, test, training) and in customer-service contexts where full data not needed. Particular attention to PII and payment card data masking. | BFS-ISP-003 §5.5; BFS-ISP-029 (forthcoming Test/Dev Env) Status: Partially Implemented |

| A.8.12 | Data leakage prevention | Applicable | DLP controls across email, web, endpoint, and cloud channels. Particular focus on customer PII, payment card data, source code, and confidential business information. DLP integrated with SOC for monitoring and response. | BFS-ISP-003; BFS-ISP-013 (DLP integration) Status: Partially Implemented |

| A.8.13 | Information backup | Applicable | Comprehensive backup framework: 3-2-1-1-0 backup principle (3 copies, 2 media, 1 offsite, 1 immutable, 0 errors after verification), tested recovery, RPO/RTO objectives, ransomware-resilient immutable backups. | BFS-ISP-011 Status: Implemented |

| A.8.14 | Redundancy of information processing facilities | Applicable | Redundancy across multiple dimensions: data center redundancy (primary + DR), system-level redundancy (clustering, replication), network redundancy (multi-path, multi-provider), cloud multi-AZ deployment. | BFS-ISP-011; BFS-ISP-012 Status: Implemented |

| A.8.15 | Logging | Applicable | Comprehensive logging across applications, infrastructure, security tools, and cloud services. Centralized log aggregation in SIEM with retention per regulatory requirements. Log integrity protection through write-once and cryptographic mechanisms. | BFS-ISP-008 Status: Implemented |

| A.8.16 | Monitoring activities | Applicable | 24/7 SOC monitoring through SIEM, EDR, NDR, DLP, and other detection systems. MITRE ATT&CK-aligned detection rules. Mandatory sensor coverage points per BFS-ISP-013. Threat hunting program. | BFS-ISP-013 Status: Implemented |

| A.8.17 | Clock synchronization | Applicable | Time synchronization across BFS systems via redundant NTP servers stratified to authoritative time sources. Critical for log correlation, transaction integrity, certificate validation, and forensic analysis. | BFS-ISP-008 §5.7; BFS-ISP-012 Status: Implemented |

# 6.  THEME A.8 — TECHNOLOGICAL CONTROLS (CONTINUED)

Continuation of Annex A.8 Technological Controls — A.8.18 through A.8.34.

| Ctrl ID | Control Title | Applicable? | Justification & BFS Implementation Context | Primary Implementation Reference & Status |

| --- | --- | --- | --- | --- |

| A.8.18 | Use of privileged utility programs | Applicable | Privileged utility programs (system administration tools, debuggers, network analyzers) restricted to authorized personnel with logged access. Tools available only on hardened administration workstations or jump servers; standard endpoints prohibited from running such utilities. | BFS-ISP-006; BFS-ISP-005 (PAM) Status: Implemented |

| A.8.19 | Installation of software on operational systems | Applicable | Software installation on operational systems controlled through change management; production systems do not run interactive software installation; only approved software inventory may be installed; deviation from approved software is monitored. | BFS-ISP-002 §5.4; BFS-ISP-016 Status: Implemented |

| A.8.20 | Networks security | Applicable | Network security through layered controls: firewalls (perimeter, internal segmentation, host-based), IDS/IPS, NAC for endpoint admission, encryption of network traffic, network monitoring and analytics. | BFS-ISP-012; BFS-ISP-013 Status: Implemented |

| A.8.21 | Security of network services | Applicable | Network services (internal and external) secured per service-specific standards. Service authentication, encryption (TLS 1.2+ minimum), DDoS protection for internet-facing services, SLA monitoring including security dimensions for external services. | BFS-ISP-012; BFS-ISP-015 (external services) Status: Implemented |

| A.8.22 | Segregation of networks | Applicable | Network segregation through VLANs, firewalls, and zero-trust architecture progression. Specific segregation: production / non-production; PCI scope / non-PCI; high-trust / low-trust zones; SWIFT environment isolation per CSP requirements. | BFS-ISP-012 §5.3 Status: Implemented |

| A.8.23 | Web filtering | Applicable | Web filtering protecting personnel from malicious sites, blocking categories of inappropriate content, preventing data exfiltration through unauthorized web services. Cloud-delivered web security gateway with TLS inspection. | BFS-ISP-009 §5.4 Status: Implemented |

| A.8.24 | Use of cryptography | Applicable | Cryptography is foundational to BFS information security: encryption of data at rest and in transit, digital signatures, key management, cryptographic protocols. Approved cryptographic algorithms per BFS standards; HSM-backed key management for high-value cryptographic operations. | BFS-ISP-023 (forthcoming); BFS-ISP-003 Status: Partially Implemented (operational; consolidated policy in development) |

| A.8.25 | Secure development life cycle | Applicable | Comprehensive SSDLC integrated with software engineering practices: requirements security, threat modeling, secure design, secure coding, security testing, secure deployment. Aligned with OWASP SAMM and BSIMM frameworks. | BFS-ISP-016 Status: Implemented |

| A.8.26 | Application security requirements | Applicable | Application security requirements specified at project inception per OWASP ASVS levels appropriate to application criticality. TIER 1 applications meet ASVS Level 3; TIER 2 meet ASVS Level 2; security requirements integrated into functional requirements. | BFS-ISP-016 §5.2; ASVS-aligned requirements Status: Implemented |

| A.8.27 | Secure system architecture and engineering principles | Applicable | Architectural security principles: defense in depth, least privilege, secure defaults, fail securely, separation of duties, complete mediation, economy of mechanism. Encoded in MSAMS Architecture Blueprint and applied to AI-native platform construction. | BFS-ISP-016 §5.4; MSAMS Architecture Blueprint Status: Implemented |

| A.8.28 | Secure coding | Applicable | Secure coding standards based on OWASP Top 10, OWASP API Top 10, language-specific secure coding guides. SAST tooling enforces standards in CI/CD; manual code review for high-risk code paths; security-focused training for developers. | BFS-ISP-016 §5.5 Status: Implemented |

| A.8.29 | Security testing in development and acceptance | Applicable | Multi-layer security testing: SAST in CI/CD, DAST against running applications, IAST where applicable, manual penetration testing for TIER 1 applications pre-release and annually. Integrated through BFS-ISP-016 (development testing) and BFS-ISP-018 (penetration testing). | BFS-ISP-016 §5.7; BFS-ISP-018 Status: Implemented |

| A.8.30 | Outsourced development | Applicable | Outsourced development governed through service provider security framework (BFS-ISP-015) plus SSDLC requirements (BFS-ISP-016). Outsourced developers subject to same security standards as internal developers including code review, testing, and SBOM provision. | BFS-ISP-015; BFS-ISP-016 Status: Implemented |

| A.8.31 | Separation of development, test and production environments | Applicable | Separate development, staging, and production environments with controlled promotion. Production data not used in non-production environments without masking. Strict access controls preventing unauthorized cross-environment access. | BFS-ISP-029 (forthcoming); BFS-ISP-016 Status: Partially Implemented |

| A.8.32 | Change management | Applicable | Formal change management governing all production changes. Change advisory boards for material changes; emergency change procedures with post-implementation review; automated changes through CI/CD with appropriate gates. | BFS-ISP-016 §5.8; BFS-ISP-004 Status: Implemented |

| A.8.33 | Test information | Applicable | Production data not used as test data without explicit data masking and access controls. Synthetic test data generation preferred. Test data subject to same protection as classification level requires; secure handling and timely deletion of test datasets. | BFS-ISP-029 (forthcoming); BFS-ISP-003 Status: Partially Implemented |

| A.8.34 | Protection of information systems during audit testing | Applicable | Audit and testing activities (internal audit, external audit, penetration testing, regulatory examination) conducted with appropriate safeguards: read-only access where possible, supervised testing for sensitive systems, ROE per BFS-ISP-018, evidence preservation, no unauthorized modifications. | BFS-ISP-018 §5.7; BFS-ISP-008; BFS-ISMS-008 Status: Implemented |

# 7.  APPLICABILITY SUMMARY AND COVERAGE ANALYSIS

This section provides aggregate statistics on the applicability decisions documented in Sections 3 through 6, supporting executive reporting and certification audit evidence.

## 7.1  Applicability Summary by Theme

| Theme | Theme Name | Total Controls | Applicable | Not Applicable | Applicability Rate |

| --- | --- | --- | --- | --- | --- |

| A.5 | Organizational Controls | 37 | 37 | 0 | 100% |

| A.6 | People Controls | 8 | 8 | 0 | 100% |

| A.7 | Physical Controls | 14 | 14 | 0 | 100% |

| A.8 | Technological Controls | 34 | 34 | 0 | 100% |

| TOTAL | All Annex A Controls | 93 | 93 | 0 | 100% |

All 93 ISO/IEC 27001:2022 Annex A controls are determined Applicable to the BFS ISMS. This 100% applicability rate is consistent with peer financial institutions and reflects BFS's comprehensive scope as a regulated financial institution operating across multiple service channels with significant technology, supplier, and people-related risks.

| ZERO EXCLUSIONS — RATIONALE  BFS has not excluded any Annex A controls from applicability. The decision to declare 100% applicability reflects: (a) BFS's comprehensive scope encompassing virtually every domain Annex A addresses; (b) the regulatory environment (BSP, NPC, PCI DSS) requiring controls in essentially every Annex A area; (c) the AI-native platform development bringing additional control relevance rather than reducing it; (d) the certification-friendly principle that Applicable + Partially Implemented is preferable to Not Applicable when implementation maturity varies — Not Applicable is a strong claim that the control is not necessary; Partially Implemented honestly acknowledges work-in-progress. |

| --- |

## 7.2  Implementation Status Summary

| Theme | Theme Name | Implemented | Partially Implemented | Planned | Total Applicable |

| --- | --- | --- | --- | --- | --- |

| A.5 | Organizational Controls | 30 | 6 | 1 | 37 |

| A.6 | People Controls | 3 | 0 | 5 | 8 |

| A.7 | Physical Controls | 2 | 4 | 8 | 14 |

| A.8 | Technological Controls | 28 | 6 | 0 | 34 |

| TOTAL | All Applicable | 63 | 16 | 14 | 93 |

The implementation status profile shows 68% of applicable controls fully Implemented, 17% Partially Implemented (operationally functional with consolidation/maturity work in progress), and 15% Planned (operational practices in place but consolidated policy in development). The Planned controls cluster in two areas with known forthcoming policies: HR Security (BFS-ISP-021) covering A.6 controls; and Physical and Environmental Security (BFS-ISP-019) covering A.7 controls.

## 7.3  Implementation Roadmap for Partially Implemented and Planned Controls

The following forthcoming BFS-ISP policies will close the implementation gaps documented in this SoA. Each policy has an assigned owner, target completion timeline, and explicit Annex A control coverage commitment.

| Forthcoming Policy | Title | Annex A Controls Closed | Target Completion |

| --- | --- | --- | --- |

| BFS-ISP-019 | Physical and Environmental Security Policy | A.7.1 through A.7.14 (entire physical theme) | Q2 2026 |

| BFS-ISP-020 | Acceptable Use Policy | A.5.10, A.7.7 | Q2 2026 |

| BFS-ISP-021 | Human Resources Security Policy | A.5.11, A.6.1, A.6.2, A.6.5, A.6.6 | Q2 2026 |

| BFS-ISP-022 | Remote Working and Mobile Device Policy | A.6.7, A.7.9 | Q2 2026 |

| BFS-ISP-023 | Cryptography Policy | A.8.24 | Q3 2026 |

| BFS-ISP-024 | Information Transfer Policy | A.5.14 | Q3 2026 |

| BFS-ISP-025 | Segregation of Duties Policy | A.5.3 | Q3 2026 |

| BFS-ISP-026 | Legal, Regulatory, and Contractual Compliance Policy | A.5.31, A.5.32 | Q3 2026 |

| BFS-ISP-027 | Security in Project Management Policy | A.5.8 | Q3 2026 |

| BFS-ISP-028 | Equipment and Media Disposal Policy | A.7.14, A.8.10 | Q3 2026 |

| BFS-ISP-029 | Test and Development Environment Security Policy | A.8.33, A.8.31 | Q3 2026 |

| BFS-ISP-011-BCP | Business Continuity Policy and Plan | A.5.29, A.5.30 | Q4 2026 |

| BFS-ISP-011-DRP | IT Disaster Recovery Plan | A.5.30 | Q4 2026 |

Completion of the forthcoming BFS-ISP series will achieve 100% Implemented status across all 93 Annex A controls — the target state for ISO 27001 certification readiness. Progress against this roadmap is tracked through the BFS Improvement Register (per BFS-ISMS-001 §9.3) and reported quarterly to the Information Security Steering Committee and annually to the Board Audit & Risk Committee.

# 8.  SoA MAINTENANCE AND REVIEW

## 8.1  Annual SoA Review

This SoA is reviewed in full at minimum annually as part of the ISMS Management Review per BFS-ISMS-009. The annual review:

Re-validates each applicability decision against current scope (BFS-ISMS-002), risk register (BFS-ISMS-003), and regulatory environment;

Updates implementation status for all applicable controls based on the year's policy work, audit findings, and operational evidence;

Identifies new controls that may have been added through ISO 27001 standard revision (none anticipated for this review cycle as ISO 27001:2022 is the current version);

Identifies any controls whose applicability assessment should change based on changes to BFS scope, business operations, or technology landscape;

Updates implementation references where new BFS-ISP policies have been issued or existing ones materially revised;

Validates that the SoA continues to align with the Risk Register entries that drove control selection.

## 8.2  Out-of-Cycle SoA Updates

Material events trigger out-of-cycle SoA updates between annual reviews:

ISO/IEC 27001 standard revision (e.g., a future ISO 27001:2027 release would require comprehensive SoA revision);

Material changes to BFS-ISMS-002 (Scope and Context) — new in-scope elements may introduce new applicable controls or change applicability of existing ones;

Material changes to the BFS Risk Register — significant new risks may require additional controls; significant risk reductions may allow control de-emphasis (but not exclusion);

Issuance of forthcoming BFS-ISP policies — implementation status updates from Planned/Partially Implemented to Implemented;

Significant regulatory changes affecting control applicability or implementation expectations;

ISO 27001 certification audit findings or surveillance audit findings requiring SoA amendments.

## 8.3  Approval Authority for SoA Changes

| Change Type | Approval Authority | Notification |

| --- | --- | --- |

| Implementation status updates (Planned → Partially → Implemented) | CISO Office | Information Security Steering Committee at next meeting |

| Implementation reference updates (new policy issued) | CISO | Information Security Steering Committee |

| New control added (ISO standard revision) | CISO + CIO | Board Audit & Risk Committee |

| Applicability change Applicable → Not Applicable | CISO + CIO + CRO + Board Audit & Risk Committee | Board approval required; certification body notification required if certified |

| Applicability change Not Applicable → Applicable | CISO | Information Security Steering Committee |

| Annual full review and re-approval | All co-approvers per Document Control sign-off | Board Audit & Risk Committee approval |

## 8.4  Roles and Responsibilities for SoA Maintenance

| Role | SoA Maintenance Responsibility |

| --- | --- |

| Chief Information Security Officer | Document owner. Approves applicability decisions and implementation status updates. Coordinates annual review with co-approvers. Reports SoA posture to Board. |

| CISO Office | Operational maintenance: tracks implementation status changes, updates implementation references when new policies are issued, prepares annual review materials, integrates Risk Register changes. |

| Risk Management Team | Validates applicability decisions remain aligned with the BFS Risk Register. Identifies risk-driven needs for additional controls or applicability reconsideration. |

| Policy Owners (BFS-ISP series) | Notify CISO Office of material changes to their policies that affect SoA implementation references. Provide implementation evidence supporting Implemented status claims. |

| Internal Audit | Independently validates SoA accuracy and completeness as part of ISMS audits per BFS-ISMS-008. Tests implementation status claims against operational evidence. Reports SoA-related findings to the Board Audit & Risk Committee. |

| Board Audit & Risk Committee | Approves the SoA at initial issuance and annual review. Reviews material applicability changes. Receives reports on implementation roadmap progress. |

| ISO 27001 Certification Body | External audit and validation of SoA. Right to challenge applicability decisions. Provides independent assurance of SoA quality. |

# 9.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Statement of Applicability for all 93 ISO/IEC 27001:2022 Annex A controls. All 93 controls determined Applicable; no exclusions. Implementation status: 63 Implemented, 16 Partially Implemented, 14 Planned. Implementation roadmap commits forthcoming BFS-ISP policies addressing all gap areas through Q4 2026. | IT Head and Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX:  ISO/IEC 27001:2022 Clause 6.1.3(d) Requirements Mapping

ISO/IEC 27001:2022 Clause 6.1.3(d) specifies four required elements of the Statement of Applicability. The table below confirms how this SoA fulfills each requirement, providing direct evidence for ISO 27001 certification audit.

| Element | Clause 6.1.3(d) Requirement | How This SoA Fulfills the Requirement |

| --- | --- | --- |

| 1 | The necessary controls (determined per Clause 6.1.3(b)) | Sections 3 through 6 list all 93 Annex A controls with explicit applicability determination. Necessary controls were identified through the risk-driven process specified in BFS-ISMS-003 §7.2 and compared against Annex A per Clause 6.1.3(c). The Implementation Reference column maps each control to the specific BFS policy implementing it. |

| 2 | Justification for inclusions | For each Applicable control (all 93), Sections 3 through 6 provide specific justification in the Justification & BFS Implementation Context column. Justifications cite BFS-specific scope, risk, and regulatory factors — not generic statements. |

| 3 | Whether the necessary controls are implemented or not | The Primary Implementation Reference & Status column provides explicit status for each Applicable control: Implemented / Partially Implemented / Planned. Section 7.2 provides aggregate implementation statistics. Section 7.3 documents the implementation roadmap for non-Implemented controls. |

| 4 | Justification for exclusions of any of the controls in Annex A | BFS has determined no Annex A controls are Not Applicable. Section 7.1 documents this 100% applicability rate with rationale. The decision to declare 100% applicability is itself a justified position — alternative exclusions would require credible rationale that BFS has determined is not available given its comprehensive scope and regulatory environment. |

# APPENDIX:  Cross-Reference to BFS-ISMS-003 Risk Methodology

ISO/IEC 27001:2022 Clause 6.1.3(c) requires that controls determined for risk treatment be compared with the controls in Annex A to verify no necessary controls have been omitted. This appendix documents the integration between the BFS Risk Register (driven by BFS-ISMS-003) and this SoA.

| BFS-ISMS-003 Methodology Step | How This SoA Operationalizes the Step |  |

| --- | --- | --- |

| Step 1: Identify necessary controls per BFS-ISMS-003 §7.2(1) | Risk-driven controls identified for each risk in the BFS Risk Register. Reflected in Implementation Reference column citing specific BFS policies that implement controls. |  |

| Step 2: Compare against Annex A per BFS-ISMS-003 §7.2(2) | All 93 Annex A controls listed in Sections 3-6. Comparison ensures no risk-identified necessary control falls outside Annex A coverage and no Annex A control is omitted from risk-driven analysis. |  |

| Step 3: Evaluate applicability per BFS-ISMS-003 §7.2(3) | Applicability determined for each Annex A control considering BFS-ISMS-002 scope, BFS Risk Register, regulatory obligations, interested party requirements. Documented in Applicable? column. |  |

| Step 4: Document SoA per BFS-ISMS-003 §7.2(4) | This document is the SoA. Sections 3-6 provide control-by-control documentation; Section 7 provides aggregate analysis; Appendix provides Clause 6.1.3(d) compliance mapping. |  |

| Step 5: Document implementation references per BFS-ISMS-003 §7.2(5) | Implementation Reference column provides specific BFS-ISP/BFS-ISMS document references for each Applicable control. Status column provides implementation status. |  |

BFS-ISMS-004  |  Statement of Applicability — ISO/IEC 27001:2022 Annex A  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. The Most Critical Artifact for ISO/IEC 27001 Certification — Authorized Internal, Audit, and Certification Body Use Only.
