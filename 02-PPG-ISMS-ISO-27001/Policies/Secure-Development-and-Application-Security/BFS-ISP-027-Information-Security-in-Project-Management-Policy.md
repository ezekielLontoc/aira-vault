---
title: "BFS-ISP-027-Information-Security-in-Project-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Secure-Development-and-Application-Security/BFS-ISP-027-Information-Security-in-Project-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:40Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Secure-Development-and-Application-Security"
aliases:
  - "BFS-ISP-027-Information-Security-in-Project-Management-Policy"
creator: "Un-named"
created: "2026-04-30T15:07:00Z"
modified: "2026-05-02T13:36:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>INFORMATION SECURITY IN<br>PROJECT MANAGEMENT POLICY<br>Integration of Information Security into BFS Project Management Across All Project Types and Phases — Initiation, Planning, Execution, Monitoring, and Closure<br>Policy Reference: BFS-ISP-027<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.5.8<br>Aligned with PMI/PMBOK, PRINCE2, Agile/Scrum, and SAFe Frameworks<br>Embedding Information Security as First-Class Project Concern |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Information Security in Project Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-027 |

| Policy Owner | Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team / CISO Office / Project Management Office (PMO) |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS project management methodology, organizational structure, regulatory expectations affecting projects, or accumulated lessons from project security outcomes |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISMS-003 (Risk Management Methodology); BFS-ISP-003 (Data Protection); BFS-ISP-015 (Service Provider Management — vendor projects); BFS-ISP-016 (Application Software Security — development projects); BFS-ISP-026 (Compliance — regulatory expectations affecting projects); BFS-ISP-029 forthcoming (Test/Dev Environment Security — project environments) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.5.8 (Information security in project management); ISO/IEC 27002:2022 implementation guidance; PMI PMBOK Guide; PRINCE2 methodology; Agile / Scrum frameworks; SAFe (Scaled Agile Framework); ISO 21500 Project Management Guidance |

| Regulatory Reference | BSP Circular 1140 (Project IT risk expectations); BSP Circular 1048 (Cybersecurity in projects and changes); BSP Circular 144; RA 10173 (Privacy Impact Assessment); NPC Advisory on Privacy by Design; PCI DSS v4.0 expectations for projects affecting cardholder data environment |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Head of Project Management Office |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Information Security in Project Management Policy operationalizing ISO/IEC 27001:2022 Annex A.5.8. It establishes how information security is integrated into BFS project management across all project types and phases — ensuring information security considerations are addressed from project initiation through closure rather than addressed reactively after security gaps surface in delivered outcomes.

Project management is where BFS introduces material change. New systems, modified business processes, vendor relationships, regulatory implementations, and infrastructure changes are typically delivered through projects. Each project is an opportunity to either advance BFS information security posture or to introduce new security gaps. The cost-effectiveness of addressing security during project lifecycle versus retrofitting security after delivery is dramatic — security designed in from project initiation costs a fraction of security retrofitted post-delivery, with materially better outcomes.

BFS as an AI-native platform development organization has elevated project management security expectations. The BFS core platform is being built ground-up through extensive project portfolio. Each project component embeds (or fails to embed) information security in the platform foundation. The cumulative effect of project-level security discipline determines whether BFS achieves its AI-native, mission-critical, governance-driven platform vision or accumulates technical debt manifesting as security weaknesses.

Beyond ISO 27001 closure, this policy addresses BSP supervisory expectations for IT project risk management, BSP cybersecurity expectations integrated into project decisions, RA 10173 Privacy by Design expectations through Privacy Impact Assessment integration, and PCI DSS expectations for projects affecting cardholder data environment. Project management security is regulatory expectation, not optional supplementary discipline.

The specific objectives of this policy are to:

Establish information security as first-class concern in BFS project management — equivalent in importance to scope, schedule, budget, and quality;

Define security activities for each project phase — Initiation, Planning, Execution, Monitoring & Control, and Closure;

Specify security deliverables required for project gates — risk assessments, threat models, security designs, test results, security sign-offs;

Address security across project methodologies — supporting waterfall (PMBOK, PRINCE2), Agile (Scrum), and Scaled Agile (SAFe) approaches;

Integrate Privacy by Design through Privacy Impact Assessment per RA 10173 expectations;

Coordinate with BFS-ISMS-003 risk management and BFS-ISP-016 SSDLC for development project specifics;

Establish security governance for project portfolio with Steering Committee oversight;

Provide audit-friendly documentation supporting ISO 27001 certification, BSP examinations, and external audit reviews of project management discipline.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Project | Temporary endeavor undertaken to create unique product, service, or result. Distinguished from operational/run activity by defined start and end. Includes IT projects, business projects, regulatory projects, infrastructure projects, vendor implementation projects. |

| Project Phase | Logical division of project lifecycle. Standard phases: Initiation, Planning, Execution, Monitoring & Control, Closure. Project methodology specific phase structures may apply. |

| Project Methodology | Framework for project management — including waterfall methodologies (PMBOK, PRINCE2), Agile methodologies (Scrum, Kanban), and Scaled Agile (SAFe, LeSS). BFS supports multiple methodologies calibrated to project type. |

| Project Charter | Document formally authorizing project, identifying sponsor, business need, high-level requirements, and constraints. Initiation phase deliverable. |

| Project Plan | Comprehensive document describing how project will be executed, monitored, and controlled. Planning phase deliverable. |

| Stage Gate / Phase Gate | Decision point between project phases where project status is reviewed and decision made to proceed, redirect, or terminate. Provides governance checkpoint. |

| Information Security Risk Assessment (Project) | Risk assessment specifically for project per BFS-ISMS-003 — identifying information security risks introduced by project, evaluating likelihood and impact, identifying treatment. |

| Threat Model | Structured analysis of threats to project deliverable — typically using STRIDE or similar framework identifying spoofing, tampering, repudiation, information disclosure, denial of service, and elevation of privilege threats. |

| Privacy Impact Assessment (PIA) | Assessment of personal data processing aspects of project per RA 10173 expectations — identifying personal data, processing purposes, lawful basis, data subject rights, security measures, and risks. |

| Security Architecture Review | Review of project security design — covering authentication, authorization, encryption, audit logging, and other security controls. |

| Security Sign-Off | Formal CISO Office approval that project meets information security requirements at specific gates — typically required before production deployment. |

| Project Sponsor | Senior personnel championing project — accountable for project business case, resource provision, and outcome value. Information security accountability includes ensuring security is addressed. |

| Project Manager | Personnel responsible for day-to-day project management — planning, execution, communication, risk management. Coordinates security activities with security professionals. |

| Security Champion | Project team member with security focus — typically nominated for projects without dedicated security personnel; coordinates with CISO Office. |

| Agile / Scrum | Iterative project methodology with sprint-based delivery. Security integration through definition of done, security stories, and sprint security activities. |

| DevSecOps | Integration of security into DevOps practices — security automation, continuous security testing, security-as-code. Particularly relevant for BFS development projects. |

## 2.2  Scope

### 2.2.1  In-Scope Project Types

All BFS IT projects — application development, infrastructure deployment, system integration, cloud migration, technology refresh, security implementation;

All BFS business projects with material information security implications — process redesign affecting customer data handling, organizational changes affecting access management, new product launches;

All BFS vendor implementation projects — vendor system integration, outsourcing implementations, vendor onboarding;

All BFS regulatory implementation projects — implementing new regulatory requirements (BSP, NPC, AMLC, etc.) affecting information security;

All BFS infrastructure projects — data center, network, cloud infrastructure projects;

All BFS AI/ML projects — model development, deployment, integration with operational systems;

Material organizational change projects affecting information security posture.

### 2.2.2  Out-of-Scope Items

Routine operational activities not constituting projects — daily operations, standard maintenance;

Minor changes addressed through change management rather than project management;

Personal employee projects unrelated to BFS;

Specific project execution methodology details — covered by PMO methodology standards rather than this policy.

## 2.3  ISO 27001:2022 Annex A.5.8 Coverage

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.5.8 | Information security in project management — Information security shall be integrated into project management. | Section 3 (Information Security in Project Lifecycle — 5 phases); Section 4 (Project Phase Security Activities); Section 5 (Methodology-Specific Considerations); Section 6 (Privacy Impact Assessment); Section 7 (Project Security Governance) |

# 3.  INFORMATION SECURITY IN PROJECT LIFECYCLE

## 3.1  Foundational Principles

BFS project management security operates per the following foundational principles:

Security from Initiation: Information security is addressed from project initiation, not retrofit at end. Earliest consideration is most cost-effective and most likely to yield good outcomes;

Security as First-Class Concern: Information security is equivalent in importance to scope, schedule, budget, and quality. Project decisions involving security tradeoffs are explicit decisions, not implicit through neglect;

Risk-Based Calibration: Security activities calibrated to project risk profile. Not all projects need extensive security activities; not all projects can rely on minimal security activities. Calibration per risk assessment;

Methodology-Agnostic Substance: Security substance applies regardless of project methodology. Waterfall projects, Agile projects, and Scaled Agile projects all need security activities, though specific implementation varies;

Continuous Throughout Lifecycle: Security is not a one-time activity at any phase. Continuous attention from initiation through closure;

Security Sign-Off Discipline: Material projects require security sign-off at specified gates. Sign-off is genuine review, not bureaucratic formality;

Project Outcomes Reflect Security: Successful projects have integrated security; security gaps in project outcomes reflect project management failure to address security adequately.

## 3.2  Five-Phase Lifecycle Framework

BFS project security framework organizes activities by lifecycle phase:

| Phase | Definition | Key Security Focus |

| --- | --- | --- |

| Initiation | Project authorized, sponsor identified, business case documented, charter approved | Initial risk identification; security stakeholder identification; preliminary classification of information involved; security implications in business case |

| Planning | Detailed planning of how project will execute, including scope, schedule, resources, risk | Comprehensive risk assessment; threat modeling; security requirements definition; security architecture planning; PIA where applicable; security plan development |

| Execution | Project work performed per plan; deliverables created | Security controls implementation; security testing; secure development per BFS-ISP-016; security review at specific milestones; vendor security verification |

| Monitoring & Control | Project performance monitored; corrective actions taken | Security risk monitoring; security finding remediation; emerging issue handling; security testing results review |

| Closure | Project deliverables transitioned to operations; project formally closed | Final security sign-off; security artifacts archived; lessons learned; transition to operational security; vendor closeout per BFS-ISP-015 |

## 3.3  Project Risk Calibration

Security activity intensity calibrated to project risk profile:

| Project Risk Tier | Examples | Security Activity Intensity |

| --- | --- | --- |

| CRITICAL | Core platform components; payment systems; customer-facing systems; cardholder data systems; AI-native platform components; regulatory implementations | Full security framework: comprehensive risk assessment, threat modeling, security architecture review, PIA where applicable, security testing, mandatory CISO Office sign-off at multiple gates |

| HIGH | Sensitive internal systems; vendor implementations affecting BFS data; significant infrastructure changes; material business process changes | Substantive security framework: risk assessment, security requirements, security testing, CISO Office review and sign-off |

| MEDIUM | Non-customer-facing internal applications; routine infrastructure refresh; non-material vendor changes | Standard security framework: risk assessment, basic security requirements, testing, security review |

| LOW | Internal tools without sensitive data; minor process improvements | Minimal security framework: risk assessment confirms low risk; standard development/operational security applies |

# 4.  PROJECT PHASE SECURITY ACTIVITIES

This section establishes specific security activities for each project phase. Activities are policy statements binding on project management.

## 4.1  Initiation Phase Activities

PS-1.1  Project Charter shall include preliminary information security context — identifying high-level information types, classification, applicable regulatory frameworks, and initial security considerations.

PS-1.2  Project sponsor shall acknowledge information security as project concern through Charter approval — confirming sponsor accountability for security adequacy in project outcomes.

PS-1.3  CISO Office shall be notified of CRITICAL and HIGH risk-tier projects at initiation — enabling early engagement and avoiding surprise late-stage involvement.

PS-1.4  Initial risk assessment shall identify project risk tier per Section 3.3 — calibrating subsequent security activities.

PS-1.5  Information security stakeholders shall be identified — typically including CISO Office representative, DPO if personal data involved, business security stakeholder, and others as project scope warrants.

PS-1.6  Project budget shall include adequate provision for security activities — security budget defended as project budget component, not afterthought reduced when project budget pressures emerge.

## 4.2  Planning Phase Activities

PS-2.1  Comprehensive information security risk assessment per BFS-ISMS-003 shall be performed — identifying specific risks introduced by project, evaluating likelihood and impact, identifying treatment approach.

PS-2.2  Threat modeling shall be performed for CRITICAL and HIGH risk-tier projects — typically using STRIDE framework (Spoofing/Tampering/Repudiation/Information disclosure/Denial of service/Elevation of privilege) identifying threats to project deliverable.

PS-2.3  Security requirements shall be defined and documented — specific functional and non-functional security requirements project deliverable must meet. Requirements traced from regulatory expectations, BFS policy requirements, risk treatment, and stakeholder needs.

PS-2.4  Security architecture shall be planned for CRITICAL and HIGH projects — covering authentication, authorization, encryption, audit logging, network security, data protection, monitoring, and incident response architecture.

PS-2.5  Privacy Impact Assessment per Section 6 shall be performed where project involves personal data processing — particularly material new processing, sensitive personal data, automated decision-making, or large-scale processing.

PS-2.6  Security testing approach shall be planned — including security test types, scope, timing, and acceptance criteria. Coordinated with BFS-ISP-018 testing standards.

PS-2.7  Security plan shall be developed addressing all security activities through project lifecycle — providing project-specific operational reference for security work.

PS-2.8  Project plan shall include security activities, deliverables, and milestones — security activities visible in project schedule, not separate parallel track.

PS-2.9  Vendor security expectations shall be defined for projects involving vendor delivery — coordinating with BFS-ISP-015 service provider management.

## 4.3  Execution Phase Activities

PS-3.1  Security controls shall be implemented per security architecture — implementation traced back to design and requirements ensuring no security elements omitted in execution.

PS-3.2  Secure development practices per BFS-ISP-016 shall be followed for development projects — including secure coding, code review, dependency management, container security, and DevSecOps practices.

PS-3.3  Security testing shall be performed per testing approach — typically including static application security testing (SAST), dynamic application security testing (DAST), dependency scanning, and penetration testing per BFS-ISP-018.

PS-3.4  Security findings shall be addressed during execution — high-severity findings before deployment; medium-severity findings per documented timeline; low-severity findings tracked for remediation.

PS-3.5  Vendor security verification shall be performed for vendor-delivered components — security review of vendor work; vendor security testing or attestation review.

PS-3.6  Security architecture review shall be performed at material design milestones — typically initial architecture review, detailed design review, and pre-deployment review.

PS-3.7  Configuration security shall be verified — deployed configurations match approved security architecture; secure baselines per BFS-ISP-004 applied.

## 4.4  Monitoring & Control Phase Activities

PS-4.1  Security risks identified during planning shall be monitored throughout execution — risk register updated; risk treatment effectiveness verified; emerging risks identified and addressed.

PS-4.2  Security findings shall be tracked through resolution — remediation tracked; verification of remediation; closeout documentation.

PS-4.3  Material security changes during execution shall be subject to change control — significant changes from planned approach reviewed and approved appropriately.

PS-4.4  Project status reports shall include security status — security activities completion, findings status, security risks, security issues.

PS-4.5  Stage gate reviews shall include security review — security work appropriate for stage; security ready to proceed to next stage.

## 4.5  Closure Phase Activities

PS-5.1  Final security sign-off shall be obtained from CISO Office for CRITICAL and HIGH risk-tier projects before production deployment — confirming project security meets requirements.

PS-5.2  Security artifacts shall be archived — risk assessment, threat model, security architecture, test results, sign-offs, and other security documentation retained per BFS-ISMS-006 retention requirements.

PS-5.3  Operational security transition shall be performed — system passing to operations with documented operational security expectations including monitoring, incident response, vulnerability management, and patching responsibilities.

PS-5.4  Lessons learned shall be captured and shared — security wins, security challenges, and security improvements identified for future project benefit.

PS-5.5  Vendor closeout per BFS-ISP-015 shall include security closeout — ensuring vendor responsibilities transitioned and any vendor access appropriately revoked.

PS-5.6  Post-implementation review shall include security dimension — assessing whether project achieved security objectives, identifying residual security work.

| SECURITY SIGN-OFF IS NOT BUREAUCRATIC FORMALITY:  CISO Office security sign-off is genuine review, not rubber stamp. Sign-off requires CISO Office personnel to actually evaluate project security against requirements, identify gaps, and either approve based on adequate security or require remediation before approval. Sign-off process must be calibrated to provide value rather than slow projects without genuine review — and CISO Office must invest the genuine review effort to make sign-off meaningful. Sign-off without genuine review undermines the control; sign-off as bottleneck without value undermines project delivery. Both failures are addressed through process improvement and CISO Office staffing adequate to support the workload. |

| --- |

# 5.  METHODOLOGY-SPECIFIC CONSIDERATIONS

BFS supports multiple project methodologies. Security substance applies across methodologies; specific implementation approach varies. This section addresses methodology-specific security integration.

## 5.1  Waterfall Projects (PMBOK, PRINCE2)

Waterfall projects with sequential phases align directly with the 5-phase framework in Section 4:

Phase-Specific Activities: Each waterfall phase has specific security activities per Section 4;

Stage Gate Reviews: Waterfall stage gates incorporate security review as required gate criterion;

Documented Deliverables: Waterfall deliverable orientation aligns with security artifact production — risk assessments, threat models, security architectures, test results;

Sequential Sign-Offs: Waterfall progression supports sequential security sign-offs at appropriate phase boundaries;

Late-Stage Risk: Waterfall risk is late discovery of security issues during execution or testing — mitigated through early-phase security activities (planning phase comprehensive coverage).

## 5.2  Agile Projects (Scrum, Kanban)

Agile projects with iterative sprint-based delivery require methodology-appropriate security integration:

Definition of Done: Security criteria included in team Definition of Done — features completed only when security requirements met;

Security User Stories: Specific security user stories in product backlog — security explicitly part of work, not assumed;

Sprint Security Activities: Security activities within sprint cadence — security review, security testing, security findings resolution within sprint;

Threat Modeling Per Feature: Threat modeling applied per feature for material features — not single up-front activity but ongoing as new features designed;

Security Champion in Team: Security champion role in Agile team coordinating with CISO Office — embedded security awareness rather than external review only;

Security Sign-Off Calibration: Security sign-off cadence calibrated to release cadence — significant releases require sign-off; minor releases under team-level security responsibility;

DevSecOps Integration: Security automation in CI/CD pipeline — SAST, DAST, dependency scanning, container scanning automated supporting security velocity matching development velocity.

## 5.3  Scaled Agile (SAFe)

Scaled Agile frameworks integrating multiple Agile teams with portfolio-level coordination:

ART Security Coordination: Agile Release Train security coordination through Release Train Engineer role with security input;

PI Planning Security: Program Increment planning includes security capabilities and security architecture work;

Architecture Runway: Security architecture in architecture runway supporting multiple teams — common security patterns, libraries, controls available to teams;

Continuous Compliance: Continuous compliance dashboards in SAFe portfolio — security and regulatory status visible across portfolio;

Lean Portfolio Management: Security investment as portfolio epic — strategic security work managed at portfolio level rather than only project level.

## 5.4  Hybrid Approaches

Many BFS projects use hybrid approaches — waterfall planning with Agile execution, or Agile delivery with waterfall governance gates. Security integration:

Hybrid Approach Documentation: Hybrid approach documented in project plan — security integration approach explicit;

Critical Path Activities: Security activities on critical path identified regardless of methodology;

Governance Compatibility: Project security governance maintains consistency despite execution methodology — same expectations for security adequacy regardless of approach;

Methodology Agnostic Outcomes: Project outcomes assessed by security adequacy not methodology compliance — methodology serves outcomes, not vice versa.

# 6.  PRIVACY IMPACT ASSESSMENT

Privacy Impact Assessment (PIA) operationalizes Privacy by Design per RA 10173 expectations and NPC guidance. PIA is required for projects with material personal data implications and integrates with the project security framework.

## 6.1  PIA Required Triggers

PIA shall be performed for projects with any of the following:

New personal data processing not previously performed by BFS;

Material change to existing personal data processing — new purposes, new categories, new sources, new recipients;

Sensitive personal data processing per RA 10173 §3(l) — including data revealing racial/ethnic origin, political opinions, religious beliefs, philosophical beliefs, trade union membership, health, sex life, sexual orientation, criminal records, government IDs, and others per applicable interpretation;

Automated decision-making affecting data subjects materially — particularly relevant for AI/ML deployments;

Large-scale personal data processing — large numbers of data subjects or large amounts of personal data per data subject;

Cross-border personal data transfer per BFS-ISP-024 §7;

Personal data processing using new technologies with privacy implications;

Other circumstances where DPO determines PIA appropriate.

## 6.2  PIA Content

PIA documents:

Project description and personal data processing context;

Personal data categories processed including any sensitive personal data;

Data subject categories;

Processing purposes and lawful basis per RA 10173 §12 and §13;

Data flows — collection, processing, storage, sharing, retention, disposal;

Data subject rights mechanisms — access, correction, erasure where applicable, data portability, objection;

Security measures protecting personal data;

Risks to data subjects and risk treatment;

Cross-border transfer arrangements where applicable;

Retention period and disposal arrangements;

DPO review and approval.

## 6.3  PIA Process

PIA initiated during project planning phase — early to inform design decisions;

PIA performed by project team with DPO support;

PIA reviewed by DPO with potential consultation with NPC for material novel processing;

PIA findings drive project design — privacy issues addressed through design changes rather than acceptance;

PIA approval required before personal data processing commences;

PIA updated for material changes during project execution;

PIA archived per BFS-ISMS-006 retention supporting NPC examination.

## 6.4  Privacy by Design Principles

Proactive Not Reactive: Privacy issues anticipated and prevented, not addressed after problems emerge;

Privacy as Default: Privacy-protective settings as default — opt-in for additional uses, not opt-out from intrusive defaults;

Privacy Embedded: Privacy integral to design, not bolt-on afterthought;

Full Functionality with Privacy: Privacy and functionality both achieved, not zero-sum tradeoff;

End-to-End Security: Privacy through complete data lifecycle from collection to disposal;

Visibility and Transparency: Processing visible to data subjects — clear notices, accessible policies;

Respect for User Privacy: User-centric — design decisions consider data subject interests, not only organizational convenience.

# 7.  PROJECT SECURITY GOVERNANCE

## 7.1  Project Steering Committee Security

Material project Steering Committees include security representation:

CRITICAL projects: CISO or designated CISO Office representative on Steering Committee;

HIGH projects: CISO Office representative on Steering Committee or regular Steering Committee briefing;

Steering Committee security agenda items — security status, material security risks, security findings status, security sign-off readiness;

Steering Committee decision authority includes security tradeoff decisions — security gaps requiring acceptance escalated to Steering Committee;

Documented Steering Committee security decisions support audit traceability.

## 7.2  Information Security Steering Committee Project Oversight

ISSC reviews project portfolio security status quarterly — overall portfolio security health, emerging issues, resource needs;

Material project security issues escalated to ISSC for visibility and direction;

ISSC approves significant security risk acceptances at project portfolio level;

ISSC reviews security investment in project portfolio — ensuring adequate funding for project security activities;

ISSC reviews lessons learned trends — driving continuous improvement of project security practices.

## 7.3  Project Management Office Security Coordination

PMO methodology standards include security activities — security integrated into PMO project lifecycle templates and gates;

PMO project portfolio reporting includes security dimension — portfolio-level security visibility;

PMO project audit and review includes security review — ensuring security activities performed per methodology;

PMO and CISO Office maintain operational coordination — supporting project teams with both project management and security expertise.

## 7.4  Risk Acceptance and Exception Management

Project security risks that cannot be fully treated may require risk acceptance:

Risk acceptance authority calibrated to risk severity per BFS-ISMS-003 — high-severity risks escalated to senior governance;

Risk acceptance documented including specific risk, treatment options considered, residual risk justification, compensating controls, monitoring plan, expiration or review date;

Risk acceptances tracked in BFS risk register supporting periodic review;

Risk acceptance is genuine governance decision, not bureaucratic stamp — accepting risk requires conscious decision with awareness of implications;

Risk acceptances inappropriate as routine project shortcut — projects with patterns of risk acceptance triggered for governance review.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Project Security Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Oversight of material project security through ISSC reporting. Approval authority for highest-risk project security decisions. |

| Chief Information Officer | Co-approver. Ensures IT projects have adequate security integration. Champions project security as IT delivery component. |

| Chief Information Security Officer | Document owner. Operationally accountable for project security framework, CISO Office engagement with projects, and security sign-off discipline. |

| Head of Project Management Office | Co-approver. Integrates security into PMO methodology standards. Ensures PMO project lifecycle templates include security activities. Coordinates with CISO Office on operational matters. |

| Chief Risk Officer | Co-approver. Project risk integrated into enterprise risk. Reviews material project risk acceptances. |

| Chief Compliance Officer | Co-approver. Project compliance with regulatory expectations. Coordinates compliance examination on project topics. |

| Data Protection Officer | Operationally accountable for PIA framework. Reviews PIAs. Coordinates with NPC on material novel processing. Privacy by Design support to projects. |

| Project Sponsors | Accountable for project security adequacy in outcomes. Champion security as project priority. Provide resources for security activities. Make security tradeoff decisions at appropriate level. |

| Project Managers | Operationally responsible for project security activities. Coordinate with CISO Office. Maintain security visibility in project status. Address security issues during execution. |

| Project Teams | Implement security per requirements and architecture. Participate in security activities. Identify and report security issues. Adopt secure development practices for development projects. |

| Security Champions | Embedded security focus in project teams. Coordinate with CISO Office. Promote security awareness within team. Support security activities. |

| CISO Office | Project security expertise and review. Risk assessments, threat modeling, architecture review, security testing, and sign-off support. Capacity to support project portfolio security needs. |

| Internal Audit | Independent verification of project security per BFS-ISMS-008 — including project security activity completion, security sign-off discipline, lessons learned implementation. |

# 9.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Project security effectiveness is measured through the following KPIs reviewed quarterly by CISO Office and PMO jointly and reported to the Information Security Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| CRITICAL projects with CISO Office engagement at initiation | 100% | Per project |

| HIGH projects with CISO Office notification at initiation | 100% | Per project |

| Projects with completed risk assessment per Section 4.2 | ≥ 95% | Quarterly |

| Threat modeling completed for CRITICAL/HIGH projects | 100% | Per project |

| Security requirements documented for in-scope projects | 100% | Per project |

| PIAs completed for triggering projects | 100% | Per applicable project |

| Security testing completed before production deployment | 100% | Per release |

| High-severity security findings addressed before deployment | 100% | Per project |

| CISO Office security sign-off completed for required projects | 100% | Per project |

| Stage gate reviews including security | 100% for CRITICAL/HIGH | Per gate |

| Project security risks identified during planning | Track and trend | Per project |

| Late-stage security findings (caught only at testing or post-deployment) | < 20% of total findings | Per project |

| Project security cost as % of project budget | Track per project type | Per project |

| Risk acceptances documented per Section 7.4 | 100% | Per acceptance |

| Lessons learned captured and shared | ≥ 80% of CRITICAL/HIGH projects | Annual |

| Internal Audit findings on project security | Track and remediate per BFS-ISMS-010 | Per audit |

# 10.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Information Security in Project Management Policy operationalizing ISO/IEC 27001:2022 Annex A.5.8 in comprehensive framework. 5-phase project lifecycle (Initiation/Planning/Execution/Monitoring & Control/Closure) with phase-specific security activities — totaling 27 PS statements across phases. 4-tier project risk calibration (CRITICAL/HIGH/MEDIUM/LOW) driving security activity intensity. Methodology-specific considerations across Waterfall (PMBOK, PRINCE2), Agile (Scrum, Kanban), Scaled Agile (SAFe), and Hybrid. Privacy Impact Assessment framework operationalizing Privacy by Design per RA 10173. Project security governance through Steering Committees, ISSC, PMO coordination, and risk acceptance discipline. Aligned with PMI/PMBOK, PRINCE2, Agile/Scrum, and SAFe. | IT Head / Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A.5.8 Mapping

Direct mapping of A.5.8 control to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.5.8 | Information security in project management — Information security shall be integrated into project management. | Comprehensive operationalization across 5 substantive sections: Section 3 (7 foundational principles + 5-phase lifecycle framework + 4-tier risk calibration); Section 4 (Project Phase Security Activities — 27 PS statements across Initiation 6 PS, Planning 9 PS, Execution 7 PS, Monitoring & Control 5 PS, Closure 6 PS); Section 5 (Methodology-Specific Considerations covering Waterfall, Agile, Scaled Agile, Hybrid); Section 6 (Privacy Impact Assessment with 8 trigger conditions, 11-element content schema, process, and Privacy by Design 7 principles); Section 7 (Project Security Governance through Steering Committees, ISSC, PMO coordination, risk acceptance and exception management). Coordinated with BFS-ISMS-003 risk management, BFS-ISP-016 SSDLC, BFS-ISP-015 vendor management, and BFS-ISP-026 compliance. |

# APPENDIX B:  Project Security Quick Reference

Single-page reference for project sponsors, project managers, and project teams.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| When do I engage CISO Office for my project? | CRITICAL projects: at initiation, before Charter approval. HIGH projects: at initiation, notification required. MEDIUM/LOW: per planning phase risk assessment results. Don't wait until late execution. See §3.3 and §4.1 PS-1.3. |

| What's my project risk tier? | CRITICAL: core platform, payment systems, customer-facing systems, cardholder data, AI-native components, regulatory implementations. HIGH: sensitive internal systems, vendor implementations affecting BFS data, significant infrastructure changes. MEDIUM: non-customer-facing internal applications. LOW: internal tools without sensitive data. See §3.3. |

| What goes into Initiation phase security? | Charter includes security context. Sponsor acknowledges security through Charter approval. CISO Office notified for CRITICAL/HIGH. Initial risk assessment. Security stakeholders identified. Adequate security budget. See §4.1. |

| What goes into Planning phase security? | Comprehensive risk assessment, threat modeling for CRITICAL/HIGH (typically STRIDE), security requirements, security architecture for CRITICAL/HIGH, PIA where applicable, security testing approach, security plan, security in project plan, vendor security expectations. See §4.2. |

| When do I need a PIA? | New personal data processing, material changes to existing processing, sensitive personal data, automated decision-making affecting data subjects, large-scale processing, cross-border transfer, new privacy-implicating technology. DPO determines other cases. See §6.1. |

| Do Agile projects need different security? | Substance is same, implementation differs. Definition of Done includes security. Security user stories in backlog. Sprint security activities. Threat modeling per feature. Security champion in team. DevSecOps pipeline integration. Sign-off cadence calibrated to release cadence. See §5.2. |

| When do I need security sign-off? | CRITICAL and HIGH projects require CISO Office final security sign-off before production deployment. Material stage gates also include security review. Sign-off is genuine review, not formality. See §4.5 PS-5.1. |

| What if I find security issues during execution? | High-severity findings addressed before deployment. Medium-severity per documented timeline. Low-severity tracked. Material findings may require change control. Security risks tracked through resolution. See §4.3 PS-3.4 and §4.4. |

| What if I have security risk that can't be fully treated? | Risk acceptance per §7.4 — authority calibrated to severity, documented including risk, treatment options considered, residual risk, compensating controls, monitoring, expiration. Genuine governance decision. Not appropriate as routine shortcut. |

| What goes into Closure phase security? | Final CISO Office sign-off for CRITICAL/HIGH. Security artifacts archived. Operational security transition. Lessons learned. Vendor closeout. Post-implementation review including security. See §4.5. |

| Do I need a Security Champion? | Recommended for material projects without dedicated security personnel — Agile teams typically benefit from Security Champion role. Coordinates with CISO Office. Promotes team security awareness. See §8 (CISO Office row). |

| What about the AI-native platform projects? | Generally CRITICAL risk tier. Full security framework applies. PIA likely required for personal data aspects. Threat modeling for novel AI/ML threats. Coordinated with broader BFS AI governance. See §3.3 and §6.1. |

BFS-ISP-027  |  Information Security in Project Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.5.8. Embedding Information Security as First-Class Project Concern.
