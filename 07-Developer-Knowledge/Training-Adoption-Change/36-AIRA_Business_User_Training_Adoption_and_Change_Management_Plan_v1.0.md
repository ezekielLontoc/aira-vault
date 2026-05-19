---
title: "AIRA Business User Training, Adoption, and Change Management Plan"
source_file: "07-Developer-Knowledge/Training-Adoption-Change/36-AIRA_Business_User_Training_Adoption_and_Change_Management_Plan_v1.0.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:43Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "07-Developer-Knowledge"
  - "Training-Adoption-Change"
aliases:
  - "36-AIRA_Business_User_Training_Adoption_and_Change_Management_Plan_v1.0"
creator: "Solutions Architecture Office / IT Head"
created: "2026-04-28T02:44:30Z"
modified: "2026-04-28T02:44:30Z"
---

# AIRA Business User Training, Adoption, and Change Management Plan

Role-Based Enablement · Business Readiness · Hypercare · Adoption Evidence · AVCI-Aligned

Solutions Architecture Office / IT Head

Version 1.0 · April 2026 · CONFIDENTIAL - Internal Use Only

# 1	Document Control

| Property | Value |

| --- | --- |

| Document ID | AIRA-DOC-036 |

| Document Title | AIRA Business User Training, Adoption, and Change Management Plan |

| Version | v1.0 - Initial Business Enablement Baseline |

| Classification | CONFIDENTIAL - Internal Use Only |

| Status | For Business Readiness / Steering Review / Adoption Planning |

| Owner | Solutions Architecture Office / IT Head |

| Co-Owners | Business Process Owners; Product Owner; UAT Lead; Training Lead; Service Desk / Zammad Owner; Change Manager |

| Audience | Department Heads, Business SMEs, Product Owners, Process Owners, UAT Users, Approvers, Power Users, Service Desk, IT Operations, Compliance, Internal Audit |

| Purpose | Define the business-user adoption, training, communication, readiness, support transition, hypercare, and adoption evidence model for AIRA. |

| Companion Documents | 01 AVCI; 02 Engineering Blueprint; 03 Developer Guide; 04 Technology Stack; 05 Information Nervous System; 17 Security Standard; 25 MVP Backlog; 29 UAT and Production Acceptance; 30 Release and CAB Governance; 31 Production Operations and Service Management; 32 Business Process, Role, Permission and SBAC Catalog; 34 Internal Audit Playbook. |

| Evidence Path | OpenKM Tier-0 / AIRA / Business Enablement / Training-Adoption-Change / v1.0 |

| Review Cadence | Quarterly; unscheduled on material business-process, role, release, support, security, or training change. |

Mandatory Practice Statement  
No business user, department representative, approver, processor, reviewer, administrator, or support participant is considered ready for AIRA production use until role-based training, process-change awareness, UAT/readiness participation, access validation, support-channel awareness, and sign-off evidence have been completed or formally waived by the accountable business owner.

# 2	1. Executive Summary

AIRA is not only a technology implementation. It is a business operating-model transformation. The platform changes how users submit information, process work, approve decisions, handle evidence, raise support concerns, and interact with AI-assisted services under enterprise governance.

This plan defines the structured approach for preparing business users, department heads, process owners, UAT participants, approvers, and support teams for controlled AIRA adoption. It connects business training, communication, UAT readiness, access validation, support transition, hypercare, and continuous improvement into one evidence-producing change-management model.

Management Intent  
Business adoption is a control, not a soft activity. AIRA can only deliver measurable value when users understand the process change, operate within classification and access rules, use the correct support channel, and provide structured feedback for improvement.

| Strategic Outcome | How This Plan Delivers It |

| --- | --- |

| Business readiness before go-live | Defines role-based training, readiness checks, access validation, UAT alignment, and department sign-off before production use. |

| Reduced adoption risk | Uses change impact assessment, stakeholder engagement, power-user model, communication cadence, and hypercare support. |

| Operational consistency | Standardizes job aids, process maps, work instructions, business role expectations, and Zammad support routing. |

| Evidence and audit readiness | Training completion, attendance, assessment results, UAT participation, support tickets, and sign-offs are retained as evidence. |

| Continuous improvement | Adoption metrics, feedback, support patterns, and lessons learned feed the backlog, knowledge base, and retraining plan. |

AIRA Business User Adoption Journey

# 3	2. Purpose, Scope, and Authority

## 3.1	2.1 Purpose

The purpose of this plan is to establish how AIRA business users are prepared, trained, supported, measured, and continuously enabled from pre-UAT through go-live, hypercare, and steady-state operation.

## 3.2	2.2 In Scope

Business-user training, power-user enablement, train-the-trainer execution, and department readiness.

Change impact assessment for business process, role, workflow, data handling, approval, reporting, and support changes.

UAT participation preparation, scenario execution guidance, defect triage orientation, and business sign-off evidence.

Zammad support transition, ticket classification, service desk handoff, hypercare governance, and escalation workflow.

Knowledge base, job aids, quick reference guides, communications, adoption dashboards, and lessons learned.

Business-user AI guidance, including safe use of prompts, classification-aware handling, and human accountability.

## 3.3	2.3 Out of Scope

Developer onboarding and Ready-to-Code certification.

Formal release, deployment, and CAB governance.

Production SRE runbooks and technical incident response, except where business users interact through Zammad and hypercare.

Corporate HR onboarding unrelated to AIRA business process adoption.

## 3.4	2.4 Authority and Conflict Rule

| Authority Level | Source | Training / Adoption Impact |

| --- | --- | --- |

| L0 | Executive / Steering Committee Direction | Defines adoption priority, go-live appetite, and business accountability. |

| L1 | AIRA UAT, Business Readiness, and Production Acceptance Standard | Controls go/no-go evidence, UAT sign-off, and business readiness gate. |

| L1 | Release, Deployment, Change, and CAB Governance Standard | Controls change timing, communication windows, release approvals, and production transition. |

| L2 | This Plan | Controls business-user training, adoption, communication, hypercare, and change management execution. |

| L3 | Training materials, job aids, attendance, assessment, Zammad tickets | Operational evidence used to prove readiness and adoption quality. |

# 4	3. Business Adoption Principles

| ID | Principle | Operational Meaning |

| --- | --- | --- |

| BAP-01 | Adoption is evidence-based | Readiness is proven through attendance, assessments, UAT participation, access checks, support awareness, and sign-off. |

| BAP-02 | Role-based, not generic | Training is tailored to actual work performed by requesters, processors, approvers, administrators, auditors, and support users. |

| BAP-03 | Process first, screen second | Users must understand the new business process and control purpose before learning button-level steps. |

| BAP-04 | Classification-aware behaviour | Users must know how Public, Internal, Confidential, and Restricted information is handled, shared, and supported. |

| BAP-05 | No shadow support | Issues, questions, defects, and access concerns are routed through approved Zammad channels, not informal chat-only escalation. |

| BAP-06 | Human accountability remains | AI-assisted suggestions or summaries do not replace business judgement, approval authority, or data-handling responsibility. |

| BAP-07 | Feedback is structured | Adoption feedback is captured, classified, triaged, and converted into backlog, knowledge, or retraining actions. |

| BAP-08 | Change is phased | Pilot, UAT, controlled rollout, hypercare, and steady state are separate gates with clear exit criteria. |

| BAP-09 | Power users multiply readiness | Department champions are trained first and used to reinforce adoption in their teams. |

| BAP-10 | AVCI applies to enablement | Training materials, attendance, quiz records, job aids, and sign-offs must be attributable, verifiable, classifiable, and improvable. |

# 5	4. Stakeholder and Persona Model

The stakeholder model prevents one-size-fits-all training. Each persona receives only the process context, system functions, authority rules, and evidence expectations required for their role.

| Persona | Primary Need | Training Emphasis | Readiness Evidence |

| --- | --- | --- | --- |

| Department Head / Process Owner | Understand process impact, approvals, and accountability. | Operating model, metrics, escalation, sign-off responsibility. | Business readiness sign-off and participation in go/no-go review. |

| Business SME / Product Owner | Validate requirements and acceptance criteria. | Scenario design, UAT evidence, defect triage, backlog prioritization. | Approved scenarios, UAT participation, defect disposition record. |

| Requester / Frontline User | Submit and track transactions correctly. | Navigation, data entry, documents, status tracking, support ticketing. | Attendance, scenario exercise, quick-check assessment. |

| Processor / Analyst | Perform daily processing and exception handling. | Work queues, validation, evidence handling, classification, handoffs. | Scenario completion, quality check, supervisor approval. |

| Approver / Checker | Make controlled approvals and exceptions. | Approval workflow, separation of duties, audit trail, decision evidence. | Approval simulation and role-access validation. |

| Power User / Champion | Support peers and capture feedback. | Train-the-trainer, common issues, job aids, escalation routing. | Champion sign-off and support participation record. |

| Service Desk / Support | Receive, classify, and route user issues. | Zammad workflow, categories, SLA, known errors, escalation. | Support readiness checklist and test ticket execution. |

| Compliance / Internal Audit | Verify evidence and control operation. | Evidence paths, reports, access trails, change records. | Evidence sampling and audit walkthrough record. |

# 6	5. Change Impact Assessment Model

Every AIRA release or business module must complete a change impact assessment before training materials are finalized. The assessment determines affected users, required communications, training depth, support readiness, and go-live risk.

| Impact Area | Assessment Questions | Required Output |

| --- | --- | --- |

| Process Change | What business steps are added, removed, automated, controlled, or reassigned? | Updated process map and change summary. |

| Role / Authority Change | Which roles, permissions, skills, approvals, or SoD rules change? | Role impact and access validation list. |

| Data Handling Change | What data is entered, viewed, uploaded, exported, or classified differently? | Data handling and classification note. |

| Control Change | Which approvals, audit logs, evidence paths, or exception rules are new? | Control explanation and user obligation. |

| User Experience Change | Which screens, forms, queues, notifications, or reports change? | Job aid and user journey update. |

| Support Change | What issues may users raise and how will support triage them? | Zammad categories, KB article, escalation matrix. |

| Adoption Risk | Which groups may resist, struggle, or need coaching? | Mitigation plan and champion assignment. |

Impact Classification Rule  
High-impact changes require targeted training, power-user rehearsal, UAT-linked walkthrough, formal communication, Zammad support readiness, and department-head acknowledgement before go-live.

AIRA Business Change Management Control Flow

# 7	6. Business User Training Architecture

AIRA training is delivered through a governed enablement architecture. The source of truth remains approved documents, process maps, role catalog entries, and UAT scenarios. Training packages are derivative materials that must cite the approved source version and be refreshed when the source changes.

AIRA Business Training and Enablement Architecture

| Training Asset | Purpose | Authoritative Source | Storage / Evidence |

| --- | --- | --- | --- |

| Role-based quick guide | One to two page work instruction for each persona. | Approved process map, role catalog, UAT scenarios. | OpenKM / AIRA / Business Enablement / Job Aids. |

| Step-by-step job aid | Detailed user task reference. | AIRA application release notes and validated screen flow. | OpenKM and LLM Wiki curated user KB. |

| Scenario lab script | Hands-on practice for users and power users. | UAT scenario and acceptance criteria. | Training evidence pack and UAT repository. |

| Training deck | Instructor-led training reference. | Process change summary and approved business rules. | OpenKM training folder, version-controlled. |

| FAQ / KB article | Supportable answer for common user issues. | Zammad pattern, known error, approved resolution. | Zammad KB and LLM Wiki if approved. |

| Recorded walkthrough | Optional replay material. | Final training script and validated application flow. | OpenKM media folder with classification label. |

# 8	7. Role-Based Training Curriculum

| Module | Topic | Required For | Learning Outcome | Evidence |

| --- | --- | --- | --- | --- |

| BU-01 | AIRA overview and business value | All users | Understand why AIRA changes current work and what outcomes are expected. | Attendance and acknowledgement. |

| BU-02 | New business process flow | All impacted users | Explain the end-to-end process, handoffs, queues, and decision points. | Process quiz or oral confirmation. |

| BU-03 | Role, access, and separation of duties | Approvers, processors, admins, auditors | Understand what the user may do, may not do, and when escalation is required. | Access validation and role sign-off. |

| BU-04 | Daily task execution | Frontline users, processors, approvers | Complete assigned scenarios using correct data and evidence. | Scenario completion checklist. |

| BU-05 | Data classification and document handling | All users handling documents/data | Handle Confidential/Restricted data, uploads, reports, and screenshots safely. | Classification acknowledgement. |

| BU-06 | UAT and defect reporting | UAT participants, SMEs, power users | Execute UAT scenarios, report defects, classify severity, and retest fixes. | UAT execution and defect evidence. |

| BU-07 | Zammad support workflow | All users and support team | Raise proper tickets, include evidence, and follow escalation paths. | Test ticket or support awareness sign-off. |

| BU-08 | AI-assisted capability awareness | Users exposed to AI outputs | Understand AI limitations, human verification, and safe prompt/data behaviour. | AI-safe-use acknowledgement. |

| BU-09 | Reports, dashboards, and evidence | Managers, auditors, process owners | Interpret operational reports, evidence paths, and adoption metrics. | Dashboard walkthrough record. |

| BU-10 | Go-live readiness and hypercare | All impacted departments | Know go-live schedule, support window, fallback, and issue severity. | Department readiness checklist. |

## 8.1	7.1 Training Depth by User Group

| User Group | Minimum Depth | Practice Required | Assessment |

| --- | --- | --- | --- |

| Awareness-only stakeholders | Briefing | Optional walkthrough | Attendance. |

| Standard users | Role-based training | At least one successful scenario | Quick-check assessment or supervisor confirmation. |

| Processors / analysts | Detailed role-based lab | Success, exception, and correction scenario | Scenario checklist and QA review. |

| Approvers / checkers | Approval and SoD lab | Approval, rejection, escalation scenario | Approval simulation sign-off. |

| Power users | Train-the-trainer depth | Multiple scenarios plus support drill | Champion certification. |

| Support users | Operational support depth | Ticket intake, routing, escalation, KB update | Test ticket and support readiness checklist. |

# 9	8. Training Delivery, Materials, and Knowledge Management

## 9.1	8.1 Delivery Modes

| Delivery Mode | Use Case | Controls |

| --- | --- | --- |

| Executive / department briefing | Department heads and process owners. | Focus on outcomes, readiness, accountability, and decision gates. |

| Instructor-led training | Standard users and impacted teams. | Attendance, material version, Q&A log, and assessment captured. |

| Hands-on lab | Processors, approvers, UAT users, support users. | Controlled test data, scenario checklist, trainer verification. |

| Train-the-trainer | Power users and champions. | Champion sign-off, presentation ability, support knowledge. |

| Job aid / quick guide | Post-training reference. | Versioned, approved, classified, and stored in OpenKM / knowledge base. |

| Hypercare coaching | Go-live support. | Ticket-linked coaching, adoption issue tracking, feedback capture. |

## 9.2	8.2 Knowledge Governance Requirements

Training content must cite the source process version, application release, role catalog version, and approval owner.

Draft materials must not be treated as authoritative job aids until reviewed and approved.

Superseded job aids must be removed from active user channels and retained only in the archive path.

FAQs and lessons learned from Zammad and hypercare may be promoted to the knowledge base only after review.

Confidential or Restricted screenshots, data, or examples must be masked or synthetic unless specifically approved.

# 10	9. Business Readiness and UAT Alignment

Training and UAT must reinforce each other. UAT validates that business scenarios work; training prepares users to execute those scenarios correctly and operate the system after go-live.

| Readiness Area | Requirement | Evidence |

| --- | --- | --- |

| Scenario readiness | UAT scenarios are mapped to real business tasks and user roles. | Scenario register and role mapping. |

| Training readiness | Users trained before they execute formal UAT or production tasks. | Attendance and assessment records. |

| Access readiness | Users can log in and have correct role/permission scope. | Keycloak/AD access validation record. |

| Data readiness | UAT/test data is synthetic, masked, or approved for use. | Data classification and data-preparation evidence. |

| Defect readiness | Users know how to raise defects, severity, evidence, and retest updates. | UAT orientation and defect workflow record. |

| Support readiness | Users know how to raise post-go-live support issues through Zammad. | Support communication and test ticket. |

| Sign-off readiness | Department owners confirm users, process, access, support, and controls are ready. | Business readiness sign-off. |

Go/No-Go Training Gate  
A module should not proceed to production use if critical user groups are untrained, approvers cannot execute approval flows, support cannot classify tickets, or the department head has not accepted residual adoption risk.

# 11	10. Communication and Engagement Plan

Business communication must be staged, factual, and role-specific. Communications should explain what changes, why it changes, who is affected, when the change happens, what users must do, and where users get help.

| Communication Stage | Audience | Message Focus | Owner | Timing |

| --- | --- | --- | --- | --- |

| Awareness | Department heads and SMEs | Business value, scope, timeline, expected participation. | IT Head / Sponsor | Before UAT planning. |

| Impact notice | Affected users | What process or system behaviour will change. | Change Manager / Process Owner | Before training. |

| Training invitation | Users and supervisors | Training schedule, prerequisites, materials, expectations. | Training Lead | 1-2 weeks before session. |

| UAT readiness notice | UAT participants | Scenario schedule, data, defect workflow, sign-off expectation. | UAT Lead | Before UAT execution. |

| Go-live notice | All impacted users | Release date, support window, known limitations, Zammad channel. | Release Manager | Before deployment. |

| Hypercare update | Users and managers | Ticket patterns, fixes, workarounds, retraining topics. | Service Desk / Change Manager | Daily or weekly during hypercare. |

| Sustainment update | Process owners and power users | Lessons learned, adoption metrics, backlog decisions. | Product Owner | After hypercare close. |

# 12	11. Support Transition, Zammad Workflow, and Hypercare

Zammad is the controlled support channel for business-user issues, questions, defects after UAT transition, access concerns, and post-go-live assistance. Informal messages may alert support, but the ticket remains the official record.

| Ticket Category | Examples | Initial Owner | Target Outcome |

| --- | --- | --- | --- |

| How-to / usability | User asks how to perform an approved task. | Service Desk / Power User | Answer using KB or coaching; update FAQ if recurring. |

| Access / role issue | User cannot access function or has incorrect permission. | Service Desk + Security/Admin | Validate role catalog and route to access workflow. |

| Defect / suspected bug | System does not behave according to accepted criteria. | Service Desk + Product/UAT Lead | Classify, reproduce, link to defect/backlog. |

| Data issue | Incorrect, missing, duplicate, or inconsistent business data. | Process Owner + DBA/Data Governance | Classify severity, protect data, perform controlled correction. |

| Performance issue | Slow screen, timeout, queue delay. | Service Desk + SRE | Collect trace/time/window and route to operations. |

| Training gap | Repeated user confusion or process misunderstanding. | Training Lead / Change Manager | Update job aid, conduct refresher, communicate clarification. |

| Enhancement request | User asks for new capability or improvement. | Product Owner | Triage into backlog with value/risk/priority. |

## 12.1	11.1 Hypercare Operating Rules

Hypercare starts at production go-live and runs for a defined period based on release risk and user population.

Critical issues are triaged daily with IT, business owner, support, QA/UAT, and process owner participation.

Known errors and workarounds must be published through the approved support channel and knowledge base.

User coaching must be tied to recurring ticket patterns, not anecdotal impressions alone.

Hypercare exit requires ticket trend review, unresolved critical issue review, adoption metric review, and business owner acceptance.

# 13	12. Adoption Metrics and Continuous Improvement

| Metric | Definition | Use |

| --- | --- | --- |

| Training completion rate | Percentage of required users who completed assigned training. | Readiness gate and department follow-up. |

| Assessment pass rate | Percentage passing required quiz/scenario checks. | Identify retraining needs. |

| UAT participation rate | Required users who completed assigned UAT scenarios. | Business readiness and acceptance evidence. |

| Access validation pass rate | Users with correct role and permission before go-live. | Prevent go-live blockers. |

| Ticket volume by category | Zammad tickets grouped by how-to, defect, access, data, performance. | Identify adoption friction and product issues. |

| Repeat issue rate | Repeated tickets for same issue/process. | Trigger FAQ/job aid update or redesign review. |

| First-contact resolution | Tickets resolved without escalation. | Measure support readiness and KB quality. |

| Time to productivity | Time from go-live to normal task completion stability. | Assess adoption success. |

| Business satisfaction | Structured feedback from users and department heads. | Guide improvement roadmap. |

| Control exception rate | Process bypasses, wrong approvals, missing evidence, or data-handling mistakes. | Trigger governance and retraining action. |

## 13.1	12.1 Continuous Improvement Loop

Collect feedback through Zammad, UAT logs, training evaluations, power-user reports, and adoption metrics.

Classify feedback as training gap, process gap, system defect, access issue, data issue, or enhancement request.

Triage feedback with the Product Owner, Process Owner, Change Manager, and IT Lead.

Update job aids, knowledge base articles, training content, backlog, or process design as appropriate.

Validate improvement through user confirmation, support trend reduction, or acceptance evidence.

Retain lessons learned and improvement evidence under the approved OpenKM path.

# 14	13. AI-Safe Business User Guidance

Business users may interact with AI-assisted AIRA features or receive AI-generated summaries, recommendations, classifications, or explanations. Training must make the boundaries clear.

| Rule | Business User Guidance | Evidence / Control |

| --- | --- | --- |

| Human verification | AI output supports decision-making but does not replace accountable review. | Approval workflow and audit trail. |

| No sensitive prompt sharing | Do not paste customer data, credentials, full documents, or restricted screenshots into unmanaged AI tools. | Training acknowledgement and policy reminder. |

| Classification awareness | Understand whether data is Public, Internal, Confidential, or Restricted before sharing or exporting. | Data handling module completion. |

| Explainability expectation | Users should expect citations, source references, or evidence for material AI outputs. | AIRA AI output evidence path. |

| Escalate uncertainty | Low-confidence, unclear, or high-impact AI outputs must be escalated to a human reviewer. | Workflow review or Zammad ticket. |

| No bypass | Users must not bypass system workflows because an AI summary appears convenient. | Process audit and control monitoring. |

# 15	14. Governance Gates and Acceptance Criteria

| Gate | Description | Minimum Acceptance Criteria | Owner |

| --- | --- | --- | --- |

| G1 Change Impact Approved | Affected users, process changes, training needs, and support implications are documented. | Impact register approved by Process Owner and Change Manager. | Change Manager |

| G2 Training Package Approved | Role-based materials and job aids are ready. | Materials versioned, classified, source-linked, and approved. | Training Lead |

| G3 Required Users Trained | Target users complete assigned training. | Completion threshold met; exceptions recorded and approved. | Department Head |

| G4 Access Validated | Users can access correct roles/functions. | No critical access blockers; SoD concerns resolved. | Security / System Admin |

| G5 UAT / Readiness Aligned | Users can execute accepted business scenarios. | UAT scenario evidence and sign-off complete. | UAT Lead |

| G6 Support Ready | Zammad categories, KB, escalation, and support ownership ready. | Test tickets routed successfully; support roster confirmed. | Service Desk Lead |

| G7 Go-Live Communication Issued | Users know date, changes, support path, and known limitations. | Communication sent and retained. | Release Manager |

| G8 Hypercare Exit Approved | Adoption stable and critical issues controlled. | Ticket trends reviewed; open risks accepted. | Business Owner / IT Head |

# 16	15. RACI and Operating Responsibilities

| Activity | IT Head / SA | Business Owner | Process Owner | Training Lead | UAT Lead | Service Desk | Security/Admin | User |

| --- | --- | --- | --- | --- | --- | --- | --- | --- |

| Approve adoption plan | A | C | C | R | C | C | C | I |

| Complete change impact assessment | C | A | R | C | C | C | C | I |

| Prepare training materials | C | C | C | A/R | C | C | C | I |

| Deliver training | I | C | C | A/R | C | C | C | R |

| Validate access and roles | C | C | C | I | C | C | A/R | R |

| Execute UAT scenarios | I | A | R | C | A/R | I | C | R |

| Approve go-live readiness | A | A/R | C | C | C | C | C | I |

| Operate Zammad support | I | C | C | C | C | A/R | C | R |

| Close hypercare | A | A/R | C | C | C | R | C | I |

| Maintain knowledge and lessons | A | C | R | R | C | R | C | I |

Legend: A = Accountable, R = Responsible, C = Consulted, I = Informed.

# 17	16. Implementation Roadmap

| Phase | Timing | Activities | Exit Criteria |

| --- | --- | --- | --- |

| Phase 1 - Adoption Planning | Before UAT planning | Identify impacted departments, users, power users, trainers, business owners, and support participants. | Stakeholder map and change impact assessment approved. |

| Phase 2 - Training Package Build | Before UAT execution | Create role-based materials, scenario labs, job aids, FAQs, and support categories. | Training package approved and stored in OpenKM. |

| Phase 3 - UAT Enablement | During UAT preparation | Train UAT users, explain scenario evidence, defect workflow, access needs, and sign-off rules. | UAT users ready and scenario execution begins. |

| Phase 4 - Production Readiness | Before go-live | Train impacted users, validate access, issue communications, prepare Zammad support and KB. | Business readiness gate passed. |

| Phase 5 - Go-Live and Hypercare | Go-live + hypercare period | Provide support, monitor ticket patterns, coach users, publish known issues. | Critical adoption issues controlled. |

| Phase 6 - Sustainment | After hypercare | Update materials, close lessons learned, schedule refreshers, monitor adoption metrics. | Hypercare exit approved and steady-state handoff complete. |

# 18	Appendix A. Training Needs Assessment Template

| Field | Description |

| --- | --- |

| Business module / process | Name of AIRA module, workflow, or process area. |

| Affected department(s) | Departments impacted by the change. |

| Affected user groups | Requester, processor, approver, admin, support, auditor, manager, etc. |

| Change summary | What changes from current process to target process. |

| Training depth | Awareness, standard, hands-on, power-user, or support depth. |

| Required scenarios | Scenarios the users must practice or validate. |

| Prerequisites | Access, device, prior training, data, or approval requirements. |

| Required evidence | Attendance, quiz, lab, UAT result, sign-off, or waiver. |

| Owner and due date | Training owner and completion target. |

# 19	Appendix B. Change Impact Register Template

| Field | Example / Required Entry |

| --- | --- |

| change_id | CHG-AIRA-BU-YYYY-NNN |

| release_or_module | MVP Foundation / Document Intake / Approval Workflow / Reporting |

| impact_level | Low / Medium / High / Critical |

| affected_roles | Role names from the role and SBAC catalog. |

| process_changes | Summary of changed business steps and controls. |

| training_required | Yes/No and training module list. |

| communication_required | Yes/No and target audience. |

| support_impact | Zammad category, KB article, escalation owner. |

| risks_and_mitigation | Adoption risk and planned mitigation. |

| approval_status | Draft / Reviewed / Approved / Deferred / Waived |

# 20	Appendix C. Communication Plan Template

| Communication | Audience | Channel | Owner | Date | Evidence Ref |

| --- | --- | --- | --- | --- | --- |

| Awareness notice |  | Email / meeting / memo |  | YYYY-MM-DD |  |

| Training invitation |  | Email / calendar / Zammad announcement |  | YYYY-MM-DD |  |

| UAT readiness note |  | Email / UAT briefing |  | YYYY-MM-DD |  |

| Go-live notice |  | Email / Teams / intranet / memo |  | YYYY-MM-DD |  |

| Known issue / workaround |  | Zammad KB / announcement |  | YYYY-MM-DD |  |

| Hypercare closure |  | Memo / service update |  | YYYY-MM-DD |  |

# 21	Appendix D. Business User Sign-Off Template

| Acknowledgement Item | User Initials | Supervisor / Reviewer |

| --- | --- | --- |

| I attended the assigned AIRA training for my role. |  |  |

| I understand the process changes that affect my work. |  |  |

| I understand the correct support path through Zammad. |  |  |

| I understand data classification and document-handling expectations. |  |  |

| I understand that AI-assisted outputs require human verification where applicable. |  |  |

| I successfully completed the required scenario or assessment. |  |  |

| I understand that production issues, defects, or access concerns must be formally logged. |  |  |

# 22	Appendix E. AVCI Compliance Summary

| AVCI Property | Compliance Statement |

| --- | --- |

| Attributable | Training materials, adoption plans, change impacts, attendance records, support tickets, and sign-offs identify owners, participants, dates, roles, and source versions. |

| Verifiable | Readiness is proven through attendance, assessments, UAT evidence, access validation, support test tickets, communications, and hypercare metrics. |

| Classifiable | Training content, screenshots, user data, support tickets, and feedback are classified and handled according to AIRA data classification and security rules. |

| Improvable | Feedback, ticket patterns, UAT lessons, adoption metrics, and business owner reviews feed job-aid updates, retraining, backlog refinement, and knowledge-base improvement. |

# 23	Appendix F. External Reference Baseline

The following external frameworks are relevant when refining the plan for enterprise adoption: Prosci ADKAR change management, ITIL 4 service management, ISO/IEC 27001 awareness and competence controls, NIST SSDF training expectations, and SOC 2 control evidence practices. These external references do not override AIRA governance; they provide supporting good practice patterns.

End of Document - AIRA Business User Training, Adoption, and Change Management Plan v1.0
