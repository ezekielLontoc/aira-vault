---
title: "BFS-ISP-025-Segregation-of-Duties-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Identity-and-Access-Control/BFS-ISP-025-Segregation-of-Duties-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Identity-and-Access-Control"
aliases:
  - "BFS-ISP-025-Segregation-of-Duties-Policy"
creator: "Un-named"
created: "2026-04-30T09:21:00Z"
modified: "2026-05-02T13:37:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>SEGREGATION OF<br>DUTIES POLICY<br>Separation of Conflicting Duties to Reduce Opportunities for Unauthorized or Unintended Modification or Misuse of BFS Assets — The Foundational Anti-Fraud and Anti-Misuse Control<br>Policy Reference: BFS-ISP-025<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.5.3<br>Aligned with BSP Internal Control Expectations and SOX-Equivalent Banking Controls<br>The Banking Industry's Foundational Anti-Fraud Control |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Segregation of Duties Policy |

| --- | --- |

| Policy Reference | BFS-ISP-025 |

| Policy Owner | Chief Information Security Officer (CISO) / Chief Risk Officer (CRO) — joint ownership |

| Document Author | Enterprise Architecture and Security Team / CISO Office / Risk Management / Internal Audit |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Examination Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS organizational structure, system architecture, regulatory expectations, or accumulated lessons from SoD violations or near-violations |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-005 (Account and Access Management — operational SoD enforcement); BFS-ISP-006 (Access Control Management — privileged access SoD); BFS-ISP-008 (Audit Log Management — SoD violation detection); BFS-ISP-016 (Application Software Security — SoD in development); BFS-ISP-017 (Incident Response — SoD in incident handling); BFS-ISP-021 (HR Security — role-based SoD) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.5.3 (Segregation of duties); ISO/IEC 27002:2022 implementation guidance; COSO Internal Control Framework; COBIT 2019 governance and management practices; PCI DSS v4.0 various requirements relating to SoD; SOX-equivalent banking controls |

| Regulatory Reference | BSP Circular 1140 (Internal control expectations); BSP Circular 1048 (Cybersecurity SoD); BSP Manual of Regulations for Banks on internal controls; RA 8791 General Banking Law (Internal control requirements); SEC Code of Corporate Governance (SoD as governance principle); BSP Circular 969 (Risk governance with SoD elements); AMLC Regulations (SoD in AML operations) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Head of Internal Audit |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Segregation of Duties (SoD) Policy operationalizing ISO/IEC 27001:2022 Annex A.5.3. It is the policy that establishes the foundational anti-fraud and anti-misuse control across BFS operations — separating conflicting duties such that no single individual can complete a sensitive transaction or activity end-to-end without involvement of others, thereby reducing opportunities for unauthorized modification, fraud, or misuse of BFS assets.

Segregation of Duties is the most foundational control in banking. Banking history is replete with material losses from situations where single individuals had end-to-end control over sensitive functions — accumulating customer assets, processing transactions to themselves or affiliates, manipulating records to conceal activity. Segregation of Duties is the structural defense against this risk: by requiring multiple individuals to be involved in sensitive activities, it raises the bar for misconduct from individual decision to coordinated conspiracy.

BFS as a regulated financial institution operates with elevated SoD expectations. BSP Circular 1140 establishes specific internal control expectations including segregation; RA 8791 General Banking Law mandates internal control framework with SoD as foundational element; SEC Code of Corporate Governance includes SoD among governance principles; PCI DSS v4.0 includes SoD in multiple requirements; and the broader regulatory framework for banks treats SoD as non-negotiable structural control. SoD compliance is not optional — it is supervisory expectation that BSP examines specifically and that BFS Board has fiduciary obligation to maintain.

Beyond fraud prevention, SoD provides multiple operational benefits: error detection (multiple eyes catch mistakes); knowledge distribution (key person risk reduced); accountability (specific actions traceable to specific individuals); training opportunity (cross-functional involvement develops broader competence); audit enablement (verifiable record of involved parties supports reconstruction).

The specific objectives of this policy are to:

Establish the BFS SoD principles and framework applicable across operations;

Identify specific conflicting duty pairs requiring separation per banking and information security standards;

Operationalize SoD across IT operations, software development, financial operations, payment operations, and other sensitive functions;

Address compensating controls where complete duty separation is operationally infeasible;

Coordinate with BFS-ISP-005 access management for technical enforcement of SoD;

Establish SoD violation detection and response;

Address third-party SoD considerations in outsourced and shared functions;

Provide audit-friendly documentation supporting ISO 27001 certification, BSP examinations, PCI QSA assessments, and external auditor SoX-equivalent control reviews.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Segregation of Duties (SoD) | Internal control principle requiring that conflicting duties be assigned to different individuals — preventing any single individual from completing sensitive activities end-to-end without involvement of others. |

| Conflicting Duties | Duties that, if combined in a single individual, would create unacceptable risk of fraud, error concealment, or unauthorized activity. Standard categories include authorization, execution, custody, and review/reconciliation. |

| Authorization | Duty of approving transactions, activities, or changes — establishing legitimacy through documented decision. |

| Execution / Recording | Duty of performing or recording transactions and activities — converting authorized decisions into operational reality. |

| Custody | Duty of physical or logical custody of assets — having access to and control over the asset itself. |

| Review / Reconciliation | Duty of independent verification — confirming that authorized, executed, and custody activities reconcile and remain accurate. |

| Four-Eyes Principle | Specific application of SoD requiring two individuals to be involved in a transaction — typically one to initiate, one to approve. |

| Maker-Checker | Common implementation of four-eyes — one individual makes (initiates) the transaction; second individual checks (approves) before execution. |

| Compensating Control | Alternative control implemented where complete SoD is operationally infeasible — typically including enhanced monitoring, independent review, after-the-fact reconciliation, or other controls providing equivalent risk mitigation. |

| SoD Matrix | Documented matrix specifying which roles, duties, and access combinations are conflicting and shall be separated. Maintained as living artifact reflecting BFS operational structure. |

| Toxic Combination | Specific combination of access, role, or duty assignments that creates unacceptable SoD violation. Detected through SoD analysis tools and access reviews. |

| Privileged Access | Elevated system access beyond standard user — particularly subject to SoD requirements per BFS-ISP-006. |

| Production Access | Access to production environments where actual customer transactions and BFS operations occur — strictly segregated from development environments per SoD. |

| Override / Emergency Access | Access granted outside normal SoD constraints for emergency or exceptional circumstances — subject to enhanced controls including documentation, approval, time-bounding, and post-event review. |

| Job Rotation | Periodic rotation of personnel across roles supporting SoD by preventing single-person knowledge concentration and enabling fraud detection through changed perspective. |

| Mandatory Vacation | Required vacation of specified minimum duration enabling fraud detection — many fraud schemes require continuous attention to maintain concealment; mandatory vacation interrupts this. |

| Privileged Access Management (PAM) | Technology platform enforcing SoD for privileged access — typically including credential vaulting, session recording, just-in-time access, and approval workflows. |

## 2.2  Scope

### 2.2.1  In-Scope Activities

All BFS financial operations including treasury, payments, lending, deposit operations, customer transactions;

All BFS IT operations including system administration, database administration, network operations, security operations;

All BFS software development including code authoring, code review, deployment, configuration management;

All BFS access management including provisioning, modification, revocation, periodic review;

All BFS regulatory and compliance operations including AML investigations, regulatory reporting, audit;

All BFS security operations including security event monitoring, incident response, security tool configuration;

All BFS HR operations affecting personnel actions with material implications;

All BFS vendor management activities affecting material vendor relationships.

### 2.2.2  Out-of-Scope Items

Routine activities below materiality threshold where SoD overhead exceeds risk reduction benefit;

Personal activities not affecting BFS operations;

Customer-facing activities where customer is the second party providing natural separation.

## 2.3  ISO 27001:2022 Annex A.5.3 Coverage

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.5.3 | Segregation of duties — Conflicting duties and conflicting areas of responsibility shall be segregated. | Section 3 (SoD Principles and Framework); Section 4 (Conflicting Duty Categories); Section 5 (Domain-Specific SoD — IT, Software Development, Financial, Payment, Security Operations); Section 6 (Compensating Controls); Section 7 (SoD Enforcement and Detection) |

# 3.  SEGREGATION OF DUTIES PRINCIPLES AND FRAMEWORK

## 3.1  Foundational SoD Principles

BFS SoD operates per the following foundational principles:

Single-Person Control Prevention: No single individual shall be able to complete sensitive activities end-to-end without involvement of others. The threshold of 'sensitive' is calibrated by risk — higher-risk activities (large transactions, system administration of critical systems, security control configuration) have stricter SoD;

Authorization Separated from Execution: The person authorizing a transaction or activity shall not be the same person executing it. This prevents self-authorization which defeats authorization control;

Custody Separated from Recording: The person with custody of assets shall not be the same person recording transactions affecting those assets. This prevents asset removal through false record entries;

Recording Separated from Reconciliation: The person recording transactions shall not be the same person performing independent reconciliation. This enables reconciliation to detect recording errors or manipulation;

Development Separated from Production: Personnel developing software shall not have unsupervised access to production environments where the software runs. This prevents code-deployment fraud schemes;

Risk-Calibrated Application: SoD strictness scales with risk — minor operations may have less rigorous SoD; high-risk operations require strict separation possibly involving 3+ individuals (three-eyes for highest-risk activities);

Compensating Controls Where Required: Where complete SoD is operationally infeasible (small teams, specialized expertise, after-hours operations), compensating controls per Section 6 provide equivalent risk mitigation;

Documented and Verifiable: SoD arrangements documented in SoD Matrix; technically enforced through access management; periodically reviewed for currency and effectiveness; auditable for compliance verification.

## 3.2  Four Conflicting Duty Categories

Standard SoD framework recognizes four duty categories. SoD violations occur when single individuals hold combinations of these categories for the same asset or activity:

| Category | Definition | Examples |

| --- | --- | --- |

| Authorization | Approving transactions, activities, or changes | Approving wire transfer; authorizing access provisioning; approving software deployment; authorizing journal entry; approving exception |

| Execution / Recording | Performing or recording transactions | Initiating wire transfer; provisioning access; deploying software; posting journal entry; processing exception |

| Custody | Physical or logical control of assets | Holding cash; access to vault; controlling cryptographic keys; access to customer accounts; control of data backups |

| Review / Reconciliation | Independent verification | Reconciling cash; reviewing access matrix; verifying deployment outcomes; reviewing journal entries; reconciliation reporting |

The SoD imperative: no single individual shall hold conflicting duties from these categories for the same asset or activity. Specific conflicting combinations addressed in Section 4.

## 3.3  SoD Implementation Hierarchy

BFS implements SoD through hierarchy of mechanisms:

| Mechanism | How It Works | When Used |

| --- | --- | --- |

| Organizational Separation | Different organizational units have different duties; cross-unit cooperation required for combined activities | Foundational layer; used wherever organizational scale permits |

| Role-Based Separation | Different roles within organizational unit have different duties; role definitions exclude conflicting duties | When organizational separation infeasible; foundational for IT and operational functions |

| Access-Based Separation | Different system access permissions for different duties; technical enforcement preventing duty combination | Technical implementation of role-based separation; primary enforcement mechanism |

| Workflow-Based Separation | Workflow systems enforce sequential involvement of different individuals — maker-checker, multi-stage approval | Used for transaction processing and activity workflows; programmatic SoD enforcement |

| Procedural Separation | Documented procedures requiring multiple-person involvement | Used where technical enforcement infeasible; human-process implementation |

| Compensating Controls | Alternative controls where SoD is operationally infeasible | Used selectively where SoD genuine infeasibility exists per Section 6 |

# 4.  CONFLICTING DUTY CATEGORIES AND PROHIBITIONS

This section enumerates specific conflicting duty combinations that shall be separated. The list is not exhaustive — additional conflicts may exist for specific BFS contexts — but enumerated combinations are unambiguously prohibited.

## 4.1  Universal Prohibited Combinations

These conflicting duty combinations are prohibited across all BFS operations regardless of function:

| Duty A | Duty B (cannot be combined with A) | Risk if Combined |

| --- | --- | --- |

| Authorize transaction | Execute same transaction | Self-authorization defeats authorization control; enables unauthorized transactions |

| Authorize transaction | Custody of affected asset | Self-benefit through self-authorization; enables embezzlement |

| Execute transaction | Reconcile same transaction | Enables concealment of execution errors or manipulation |

| Custody of asset | Recording of asset transactions | Enables asset removal through false records (classic embezzlement pattern) |

| System administration | Application data access for same systems | System admin can grant themselves data access bypassing application controls |

| Develop software | Deploy software to production | Developer can deploy unauthorized changes; bypasses peer review |

| Configure security control | Audit same security control | Self-audit defeats audit independence; enables control configuration manipulation concealment |

| Create user account | Approve same user account | Self-approval defeats access governance |

| Investigate incident involving self | Decide outcome of investigation involving self | Investigation independence defeated |

| Vendor selection | Vendor payment processing | Enables vendor kickback schemes; conflict of interest |

## 4.2  Banking-Specific Prohibited Combinations

| Duty A | Duty B (cannot be combined with A) | Risk if Combined |

| --- | --- | --- |

| Customer onboarding | Customer transaction processing | Enables fictitious customer creation for fraudulent transactions |

| Loan origination | Loan disbursement authorization | Enables fraudulent loan creation and disbursement |

| Wire transfer initiation | Wire transfer release | Enables unauthorized wire transfers without approval |

| Cash receipt | Cash recording | Classic cash embezzlement risk |

| Vault access | Vault inventory recording | Enables vault asset removal through inventory manipulation |

| Treasury position taking | Treasury position recording | Enables position concealment (rogue trader pattern) |

| AML investigation | AML alert closure decision | Enables alert dismissal without genuine investigation |

| Customer dispute investigation | Customer dispute resolution decision | Enables dispute concealment or biased resolution |

| Regulatory report preparation | Regulatory report submission approval | Enables submission of unreviewed or manipulated reports |

| Access provisioning to financial systems | Financial transaction posting | Enables granting self elevated access for fraudulent transactions |

# 5.  DOMAIN-SPECIFIC SEGREGATION OF DUTIES

This section specifies SoD implementation in major BFS operational domains. Domain-specific implementations supplement the universal and banking prohibitions in Section 4.

## 5.1  IT Operations SoD

PS-1.1  System administration access shall be separated from application data access for the same systems. System administrators do not have application-level data access except for specific administrative purposes through documented procedures.

PS-1.2  Database administration access shall be separated from application development access. Database administrators may have schema-level access but not application transaction-creation rights.

PS-1.3  Security operations personnel shall not configure the security tools they monitor. Security tool configuration changes require separate personnel involvement.

PS-1.4  Network administration shall be separated from system administration for the same environments. Combined network and system access for one person creates excessive privilege concentration.

PS-1.5  Privileged access provisioning shall be separated from privileged access authorization. The person granting privileged access shall not be the person approving the grant.

PS-1.6  Backup operations shall be separated from production data administration. Backup personnel may have read access to backup data but should not have production data modification rights.

## 5.2  Software Development SoD

PS-2.1  Software developers shall not deploy their own code changes to production environments. Deployment requires separate personnel involvement (typically operations personnel or automated CI/CD pipelines with approval gates).

PS-2.2  Code review shall be performed by personnel different from the code author. Self-approval of code changes defeats review purpose.

PS-2.3  Production environment access by developers shall be limited to specific scenarios with documented authorization — typically read-only access for troubleshooting; production write access requires elevated approval.

PS-2.4  Source code repository administration (admin rights to merge protections, branch policies, etc.) shall be separated from code authoring for the same repositories.

PS-2.5  CI/CD pipeline configuration shall be separated from production deployment authority. Pipeline configuration changes affect deployment outcomes; conflict if same person modifies both.

PS-2.6  Software testing personnel shall be independent of development team for material features — typically through dedicated QA function or independent third-party testing.

## 5.3  Financial Operations SoD

PS-3.1  Cash handling positions implement strict cash SoD — receipts, recording, and reconciliation by separate personnel; periodic surprise cash counts by independent personnel.

PS-3.2  Wire transfers shall use maker-checker workflow — initiator and approver are different individuals; large wire transfers may require additional approval (three-eyes) per amount thresholds in Treasury procedures.

PS-3.3  Journal entries shall use maker-checker for material entries; periodic independent journal review beyond entry approval.

PS-3.4  Reconciliations shall be performed by personnel independent of the activity being reconciled. Self-reconciliation defeats reconciliation purpose.

PS-3.5  Bank account reconciliations specifically shall be performed by personnel without bank account transaction-initiation authority.

PS-3.6  Treasury position management shall implement risk control SoD — front office (position taking) separated from middle office (risk monitoring) separated from back office (settlement and confirmation).

## 5.4  Payment Operations SoD

PS-4.1  Payment system administration (HSM, payment switch, settlement systems) implements strict SoD — multiple administrators with split authority; no single administrator with end-to-end payment system control.

PS-4.2  ATM cash replenishment uses dual control — typically two personnel involved in cash receipt, transport, and ATM loading.

PS-4.3  Card issuance separates personalization from PIN distribution — different operational paths and personnel preventing single individual from obtaining functioning card with PIN.

PS-4.4  Card scheme communication keys (EMV master keys, ATM PIN keys) require multi-party authorization for any management operation per BFS-ISP-023 §6.1.2.

PS-4.5  Payment exception handling separates exception identification, investigation, and resolution authority.

## 5.5  Security Operations SoD

PS-5.1  Security event monitoring shall be separated from security control configuration. Same person monitoring and configuring may overlook configuration issues affecting their monitoring.

PS-5.2  Privileged Access Management (PAM) administration shall be separated from privileged access usage. PAM administrators do not use the privileged access they administer except for PAM-specific administrative purposes.

PS-5.3  Security incident investigation shall be conducted by personnel independent of the parties potentially involved. Self-investigation defeats investigation independence.

PS-5.4  Vulnerability scanning shall be separated from system administration of scanned systems. Same person scanning and administering may have conflict in addressing findings.

PS-5.5  Penetration testing shall be performed by personnel (typically external) independent of personnel responsible for tested systems' security per BFS-ISP-018.

## 5.6  Access Management SoD

PS-6.1  Access provisioning shall be separated from access authorization per BFS-ISP-005. Access requests are authorized by different individuals (typically managers and CISO Office) than those provisioning access (IT).

PS-6.2  Access matrix review shall be performed by personnel independent of access provisioning. Provisioner self-review defeats review purpose.

PS-6.3  Privileged access requests shall include heightened SoD with multiple approvers per BFS-ISP-006.

PS-6.4  Emergency access procedures shall include post-event independent review — preventing emergency access from becoming routine override of SoD.

# 6.  COMPENSATING CONTROLS

Where complete SoD is operationally infeasible — typically due to small team size, specialized expertise concentration, or after-hours operations — compensating controls provide equivalent risk mitigation. Compensating controls are not exemptions from SoD; they are alternative implementations achieving similar risk outcome.

## 6.1  When Compensating Controls Are Appropriate

Small Specialized Teams: Where specialized expertise is held by very small teams (1-3 personnel) and SoD would prevent operational function — common for niche specializations;

After-Hours Operations: Where SoD would require off-hours staffing of multiple personnel for low-frequency events;

Geographic Distribution: Where SoD personnel are not co-located and immediate dual-control is infeasible;

Emergency Operations: Where emergency response time precludes standard SoD;

Specific Operational Constraints: Where genuine operational constraints prevent SoD without operational degradation.

## 6.2  Approved Compensating Controls

Compensating controls used in lieu of complete SoD include:

Enhanced Logging and Monitoring: All activities by single individuals comprehensively logged with real-time alerting on unusual patterns; reviewed by independent personnel;

After-the-Fact Independent Review: Independent review of all single-person activities within defined timeframe (typically next business day);

Reconciliation Frequency: Increased reconciliation frequency to detect anomalies more quickly;

Periodic Independent Verification: Regular independent verification of activities and outcomes by personnel outside the operational chain;

Recording and Replay: Session recording for sensitive operations with retention enabling reconstruction;

Mandatory Vacation: Personnel in single-coverage roles take mandatory vacations enabling fraud detection through coverage personnel observation;

Job Rotation: Periodic rotation across personnel preventing single-person knowledge concentration.

## 6.3  Compensating Control Approval and Documentation

Compensating control arrangements require explicit approval — typically CISO + CRO + business head;

Approval is documented including rationale for SoD infeasibility, specific compensating controls implemented, and review provisions;

Compensating controls are documented in SoD Matrix with clear identification of where standard SoD is replaced;

Compensating control effectiveness is reviewed periodically (annually minimum) with assessment of whether circumstances enabling standard SoD have changed;

Internal Audit specifically examines compensating control effectiveness during SoD audits;

Compensating controls are not permanent exemptions — periodic re-evaluation may identify opportunities to restore standard SoD as circumstances evolve.

| COMPENSATING CONTROLS ARE NOT EASIER:  Compensating controls are not the easy alternative to SoD — when properly implemented, they often involve more operational overhead than standard SoD. Enhanced logging, daily independent review, mandatory vacation enforcement, and session recording all create operational burden. The temptation to use compensating controls as path of least resistance must be resisted. SoD remains preferred; compensating controls are exception requiring justification. |

| --- |

# 7.  SOD ENFORCEMENT, DETECTION, AND RESPONSE

## 7.1  Technical Enforcement

SoD enforcement primarily through access management per BFS-ISP-005 — access matrix designed to prevent toxic combinations;

Identity and Access Management (IAM) platform configured with SoD rules — preventing provisioning of conflicting access combinations;

Privileged Access Management (PAM) platform enforces SoD for privileged operations — approval workflows, just-in-time access, session recording;

Workflow systems enforce maker-checker for transaction processing — technical inability for single user to complete both maker and checker steps;

Application-level SoD controls — system functions configured to prevent same user from performing conflicting operations within sessions;

Database role separation — database access roles designed to prevent toxic privilege combinations.

## 7.2  SoD Violation Detection

Periodic SoD analysis — quarterly review of all access matrices identifying potential toxic combinations;

SoD analysis tools — specialized tools comparing access permissions against SoD matrix and flagging violations;

Access certification campaigns — annual review by managers verifying their personnel access is appropriate and SoD-compliant;

Audit log analysis — pattern analysis identifying actual SoD violations (single person performing conflicting activities even if technically authorized);

Reconciliation discrepancies — discrepancies in reconciliations may indicate SoD violations enabling concealment;

Whistleblower reports — personnel observing SoD violations may report through documented channels per BFS-ISMS-007 §5.6.

## 7.3  SoD Violation Response

Identified SoD violations are immediately addressed — access modification removing toxic combinations; transaction reversal where unauthorized transactions occurred;

Investigation per BFS-ISP-017 incident response — determining whether violation was inadvertent (configuration error) or intentional (conscious conflict creation);

Material violations involving fraud or attempted fraud trigger formal disciplinary process per BFS-ISMS-001 §11 and potential criminal referral;

Inadvertent violations (configuration errors) addressed through corrective action — fixing configurations and addressing systemic issues that allowed violation;

Root cause analysis per BFS-ISMS-010 §5 identifying why violation occurred and preventing recurrence;

Reporting through governance channels — material violations reported to Board Audit & Risk Committee.

## 7.4  Periodic SoD Review

Annual comprehensive SoD review by Internal Audit per BFS-ISMS-008 — examining SoD Matrix currency, technical enforcement, compensating control effectiveness, violation patterns;

Quarterly SoD analysis by CISO Office and Risk Management — identifying potential issues before they become material findings;

Material organizational changes (reorganizations, new business lines, system changes) trigger SoD reassessment;

Regulatory examination preparation includes SoD compliance verification supporting BSP and other regulator examination.

## 7.5  Third-Party SoD Considerations

Vendor and outsourced operations may have their own SoD that affects BFS — vendor SoD verified per BFS-ISP-015 service provider management;

Shared functions (e.g., shared services across BFS group entities if applicable) may have SoD spanning organizational boundaries — documented arrangements supporting cross-organizational SoD;

Cloud service providers have their own SoD within their operations — BFS verifies adequacy through vendor assessment;

Where BFS personnel and vendor personnel jointly operate functions, SoD spanning both is documented and operational.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Segregation of Duties Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy and material revisions. Receives reporting on SoD effectiveness, material violations, and compensating control inventory. Provides oversight of SoD as governance principle. |

| Chief Information Officer | Co-approver. Ensures IT systems support SoD enforcement — IAM, PAM, workflow systems, application SoD controls. |

| Chief Information Security Officer | Document co-owner. Operationally accountable for SoD policy effectiveness, technical enforcement architecture, and SoD violation detection and response. |

| Chief Risk Officer | Document co-owner. Integrates SoD into enterprise risk management. Reviews SoD violations from risk perspective. Co-approves compensating control arrangements. |

| Chief Compliance Officer | Co-approver. Ensures SoD compliance with BSP expectations, PCI DSS, and other regulatory frameworks. Coordinates regulatory examination on SoD. |

| Head of Internal Audit | Co-approver. Independently audits SoD effectiveness per BFS-ISMS-008 — including SoD Matrix accuracy, technical enforcement, violation detection, compensating control effectiveness. |

| IT Operations | Implements technical SoD enforcement — IAM configuration, PAM operations, workflow system configuration. Maintains operational SoD discipline within IT. |

| Risk Management | Maintains SoD Matrix with CISO Office. Performs SoD analysis. Coordinates compensating control review and approval. |

| Application Owners | Ensure application-level SoD controls operational. Approve access matrices for their applications. Address SoD violations within their applications. |

| Business Function Heads | Ensure SoD operational within their functions. Approve compensating control arrangements where applicable. Address SoD-related personnel matters. |

| All Managers | Recognize SoD constraints in personnel assignment decisions. Ensure direct reports' role assignments are SoD-compliant. Report observed SoD issues. |

| All Personnel | Comply with SoD constraints in their roles. Do not bypass SoD enforcement (e.g., asking colleagues to perform their part of SoD activities). Report observed SoD violations through documented channels. |

# 9.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

SoD effectiveness is measured through the following KPIs reviewed quarterly by CISO Office and Risk Management jointly and reported to the Information Security Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| SoD Matrix currency (reflecting current organizational structure) | Current within 90 days of organizational change | Quarterly |

| Toxic access combinations identified through SoD analysis | Zero (immediate remediation if any) | Quarterly |

| IAM/PAM SoD rule coverage | 100% of identified conflicts technically enforced | Quarterly |

| Maker-checker workflow coverage of in-scope transactions | 100% | Quarterly |

| Annual access certification completion | ≥ 95% | Annual cycle |

| SoD violations detected | Zero target; address per occurrence | Continuous |

| SoD violations involving actual fraud or attempted fraud | Zero target; full investigation per occurrence | Per incident |

| Compensating control arrangements with documented approval | 100% | Quarterly |

| Compensating control annual review completion | 100% | Annual cycle |

| Mandatory vacation compliance for compensating control roles | 100% | Annual |

| Job rotation per documented schedule | Per role-specific schedule | Per cycle |

| Internal Audit SoD findings | Track and remediate per BFS-ISMS-010 | Per audit |

| BSP examination findings on SoD | Zero material findings | Per examination |

| External auditor SoD-related findings (SOX-equivalent reviews) | Zero material findings | Per audit cycle |

| PCI QSA findings on SoD-relevant requirements | Zero material findings | Annual |

| Emergency access usage with post-event review completion | 100% | Per use |

| Time to remediate identified toxic access combinations | Median ≤ 24 hours | Per occurrence |

# 10.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Segregation of Duties Policy operationalizing ISO/IEC 27001:2022 Annex A.5.3 in comprehensive framework. Joint ownership by CISO and CRO reflecting cross-functional governance. 4-category conflicting duty framework (Authorization / Execution / Custody / Review with color-coded matrix). Universal prohibited combinations (10 conflicts) and Banking-specific prohibited combinations (10 conflicts). Domain-specific SoD across 6 domains (IT Operations / Software Development / Financial / Payment / Security Operations / Access Management) totaling 28 PS statements. Compensating controls framework with explicit approval requirement and 'not easier' design principle. Comprehensive SoD enforcement, detection, and response including third-party considerations. Aligned with BSP internal control expectations, PCI DSS, and SOX-equivalent banking controls. | IT Head / Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A.5.3 Mapping

Direct mapping of A.5.3 control to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.5.3 | Segregation of duties — Conflicting duties and conflicting areas of responsibility shall be segregated. | Comprehensive operationalization across 5 substantive sections: Section 3 (8 foundational SoD principles + 4-category conflicting duty framework + 6-mechanism implementation hierarchy); Section 4 (Conflicting Duty Categories — 10 universal prohibited combinations + 10 banking-specific prohibited combinations totaling 20 explicit SoD prohibitions); Section 5 (Domain-Specific SoD across 6 domains: IT Operations 6 PS, Software Development 6 PS, Financial Operations 6 PS, Payment Operations 5 PS, Security Operations 5 PS, Access Management 4 PS — totaling 32 domain-specific PS statements); Section 6 (Compensating Controls framework with approval requirements); Section 7 (SoD Enforcement, Detection, and Response including technical enforcement, violation detection mechanisms, response procedures, periodic review, and third-party considerations). |

# APPENDIX B:  Segregation of Duties Quick Reference

Single-page reference for personnel and managers.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What is segregation of duties? | Internal control principle requiring conflicting duties to be assigned to different individuals — preventing single person from completing sensitive activities end-to-end. Foundational anti-fraud and anti-misuse control. See §3.1. |

| What are the 4 conflicting duty categories? | Authorization (approving), Execution/Recording (performing), Custody (controlling assets), Review/Reconciliation (independent verification). Same person cannot hold combinations from these categories for same asset/activity. See §3.2. |

| Can I approve my own access requests? | No. Access provisioning is separated from access authorization per §5.6 PS-6.1. Access requests must be authorized by different individual (typically manager + CISO Office) than person provisioning. |

| Can I deploy code I wrote to production? | No. Software developers shall not deploy their own code per §5.2 PS-2.1. Deployment requires separate personnel involvement (operations or automated CI/CD with approval gates). |

| Can I review my own code changes? | No. Code review by different person than author per §5.2 PS-2.2. Self-approval defeats review purpose. |

| What is maker-checker? | Common SoD implementation where one person makes (initiates) transaction, second person checks (approves) before execution. Used for wire transfers, journal entries, and other transaction processing. See §5.3 PS-3.2 and §5.3 PS-3.3. |

| What if our team is too small for full SoD? | Compensating controls per Section 6 — enhanced logging, after-the-fact independent review, mandatory vacation, job rotation, recording/replay. Requires CISO + CRO + business head approval. Annually reviewed. |

| What if I detect a SoD violation? | Report immediately through documented channels — manager, CISO Office, or whistleblower for sensitive matters. Investigation per BFS-ISP-017. See §7.3. |

| Do system administrators have application data access? | Generally no for the systems they administer. System administration is separated from application data access per §5.1 PS-1.1. Specific exceptions for documented administrative purposes. |

| Can security operations configure their own monitoring tools? | No per §5.5 PS-5.1. Security event monitoring separated from security control configuration. Combined access creates risk of configuration issues being overlooked in monitoring. |

| What happens if SoD violations are found in audit? | Immediate access modification removing toxic combinations; investigation; root cause analysis per BFS-ISMS-010; corrective action. Material violations involving fraud trigger disciplinary process and potential criminal referral. See §7.3. |

| How often is SoD reviewed? | Quarterly SoD analysis by CISO Office and Risk Management. Annual comprehensive review by Internal Audit. Material organizational changes trigger reassessment. See §7.4. |

BFS-ISP-025  |  Segregation of Duties Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.5.3. The Banking Industry's Foundational Anti-Fraud Control.
