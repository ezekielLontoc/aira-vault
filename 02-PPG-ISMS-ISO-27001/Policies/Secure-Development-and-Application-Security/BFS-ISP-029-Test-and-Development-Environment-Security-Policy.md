---
title: "BFS-ISP-029-Test-and-Development-Environment-Security-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Secure-Development-and-Application-Security/BFS-ISP-029-Test-and-Development-Environment-Security-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:41Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Secure-Development-and-Application-Security"
aliases:
  - "BFS-ISP-029-Test-and-Development-Environment-Security-Policy"
creator: "Un-named"
created: "2026-05-01T04:26:00Z"
modified: "2026-05-02T13:31:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>TEST AND DEVELOPMENT<br>ENVIRONMENT SECURITY POLICY<br>Environment Separation, Test Data Management, Development Environment Security, and the Production Environment Boundary — Preventing Production Data Exposure Through Lower Environments<br>Policy Reference: BFS-ISP-029<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.8.31 and A.8.33<br>Aligned with PCI DSS v4.0 Requirements 6.5.5 and 6.5.6, BSP IT Risk Expectations, and AI-Native Platform Development Discipline<br>The Production Environment Boundary — Foundational to BFS Development Discipline |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Test and Development Environment Security Policy |

| --- | --- |

| Policy Reference | BFS-ISP-029 |

| Policy Owner | Chief Information Security Officer (CISO) |

| Document Author | Enterprise Architecture and Security Team / CISO Office / IT Operations / Software Engineering |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to BFS development methodology, environment architecture, regulatory expectations affecting development environments, or accumulated lessons from environment-related incidents |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-003 (Data Protection — production data classification); BFS-ISP-004 (Secure Configuration); BFS-ISP-005 (Account Management); BFS-ISP-008 (Audit Logs); BFS-ISP-013 (Network Infrastructure — environment segregation); BFS-ISP-016 (Application Software Security — SSDLC); BFS-ISP-018 (Penetration Testing); BFS-ISP-027 (Project Management — project environments) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.8.31 (Separation of development, test and production environments); A.8.33 (Test information); ISO/IEC 27002:2022 implementation guidance; PCI DSS v4.0 Requirements 6.5.5 (separating environments) and 6.5.6 (no production data in test); CIS Controls v8 elements; SAFe Agile environment guidance |

| Regulatory Reference | BSP Circular 1140 (IT environment separation expectations); BSP Circular 1048 (Cybersecurity in development practices); RA 10173 (Personal data in test environments); PCI DSS v4.0 §6.5.5 and §6.5.6 (environment separation and test data); industry standards on Secure SDLC and DevSecOps |

## Approval and Sign-Off

|  | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Head of Software Engineering |  |  |  |

| Head of IT Operations |  |  |  |

| Data Protection Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Test and Development Environment Security Policy operationalizing ISO/IEC 27001:2022 Annex A.8.31 (Separation of development, test and production environments) and A.8.33 (Test information) in unified framework. It establishes how BFS maintains the production environment boundary — preventing production data exposure through lower environments while enabling effective development and testing.

The production environment boundary is foundational to BFS development discipline. Production environments contain real BFS information including customer data, financial records, transactional systems serving operational business. Lower environments (development, test, staging, pre-production) are necessary for software engineering but operate with relaxed controls compared to production — broader developer access, more permissive configuration, less rigorous monitoring. Without disciplined separation, production data leaking into lower environments creates exposure equivalent to direct production breach but through paths that bypass production controls.

BFS as an AI-native platform development organization has elevated environment security expectations. The BFS core platform involves substantial development activity producing AI/ML models, microservices, integration components, and platform infrastructure. The development pipeline produces and consumes test data continuously; CI/CD pipelines deploy artifacts across environments; AI/ML training requires access to data potentially derived from production. Each integration point between environments is potential leakage path requiring discipline.

Beyond ISO 27001 closure, this policy addresses PCI DSS v4.0 Requirements 6.5.5 (separating environments) and 6.5.6 (no production data in test environments without specific protections), BSP Circular 1140 IT environment expectations, RA 10173 expectations for personal data in test environments, and industry secure SDLC standards. Environment security is regulatory expectation, not optional discipline.

The specific objectives of this policy are to:

Establish BFS environment categories with calibrated security requirements per category;

Operationalize ISO 27001 A.8.31 separation of development, test, and production environments;

Operationalize ISO 27001 A.8.33 test information protection — preventing production data exposure through test environments;

Establish test data management framework — synthetic data, anonymized data, masked data, and exceptional production data use;

Address development environment security including developer workstation security, source code repository security, and CI/CD pipeline security;

Coordinate with BFS-ISP-016 SSDLC for development security activities;

Address AI/ML-specific environment considerations — training data environments, model environments, MLOps pipelines;

Establish production access discipline preventing developers from circumventing environment separation;

Provide audit-friendly documentation supporting ISO 27001 certification, PCI QSA assessments, BSP examinations, and external audit reviews of development discipline.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Production Environment | Environment hosting BFS operational systems serving customers, processing real transactions, containing real BFS information. The 'live' environment with material business consequences. |

| Pre-Production Environment | Environment closely mirroring production used for final pre-deployment validation. Production-like configuration; production-like data (typically masked); restricted access. May also be called UAT (User Acceptance Testing) or Staging. |

| Test Environment | Environment used for systematic testing of changes — functional testing, integration testing, performance testing, security testing. Configuration approximates production but data and access differ from production. |

| Development Environment | Environment used by developers for active development work — coding, unit testing, integration of components in progress. Typically more permissive than test or production. |

| Local Development Environment | Individual developer workstation environment for active development. Containerized environments, IDE integrations, local databases. Bounded scope — not multi-developer shared. |

| Sandbox Environment | Isolated environment for experimentation, training, or specific scenarios — separate from regular development pipeline. Typically very permissive within isolation. |

| AI/ML Training Environment | Specialized environment for AI/ML model training — typically resource-intensive (GPU/accelerator capacity), data-intensive (training datasets), and may have different security profile than other environments. |

| AI/ML Inference Environment | Environment hosting AI/ML models for serving predictions — production inference is production environment; pre-production inference may be test environment. |

| Test Data | Data used in non-production environments for testing purposes. May be synthetic, anonymized, masked, or (with specific protections) production-derived. |

| Synthetic Test Data | Test data generated artificially without correspondence to real BFS data — typically through generation tools using realistic schemas and distributions. |

| Anonymized Data | Data from which personal identifiers have been removed such that data subjects cannot be identified through reasonable means. Per RA 10173 and NPC guidance, anonymized data outside RA 10173 scope (no longer personal data). |

| Pseudonymized Data | Data with identifiers replaced by artificial identifiers — re-identification possible through separately stored mapping. Still personal data per RA 10173 unless mapping is destroyed or inaccessible. |

| Data Masking | Technique replacing sensitive values with masked values (e.g., XXX for digits) preserving format but eliminating actual values. May be static (one-time) or dynamic (at access time). |

| Environment Promotion | Process of moving software artifacts (code, configuration) from lower environment to higher environment — typically dev → test → staging → production. Subject to specific gates per BFS-ISP-016. |

| Production Data Exception | Documented exception permitting use of production-derived data in non-production environment under specific protections. Limited to exceptional circumstances per Section 5.4. |

## 2.2  Scope

### 2.2.1  In-Scope Environments

All BFS production environments — operational systems serving customers and BFS operations;

All BFS pre-production / staging / UAT environments;

All BFS test environments at all levels — system testing, integration testing, performance testing, security testing;

All BFS development environments — shared development environments and individual developer workstations;

All BFS sandbox environments;

All BFS AI/ML environments — training environments, inference environments, MLOps pipelines;

Vendor-hosted environments per BFS-ISP-015 service provider arrangement;

Cloud environments across all categories — IaaS, PaaS, SaaS used by BFS for any environment purpose.

### 2.2.2  Out-of-Scope Items

Personal employee development environments unrelated to BFS work — not BFS environments;

Customer-facing systems treated as production for this policy;

Pure read-only research environments without BFS data.

## 2.3  ISO 27001:2022 Annex A Coverage

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.8.31 | Separation of development, test and production environments | §3 (Environment Categories); §4 (Environment Separation Requirements) |

| A.8.33 | Test information | §5 (Test Data Management) |

# 3.  ENVIRONMENT CATEGORIES

## 3.1  BFS Environment Tier Framework

BFS organizes environments into 5 tiers with calibrated security requirements:

| Environment Tier | Definition | Security Profile |

| --- | --- | --- |

| Production | Live operational environment serving customers and BFS operations; real BFS information; real consequences | Maximum security: full BFS-ISP framework applies; strict access controls; comprehensive monitoring; change management discipline |

| Pre-Production / Staging | Production-like environment for final pre-deployment validation; production-like data (masked); restricted access | Near-production security: configuration matches production; access more restricted than test; data is masked production data or carefully prepared test data |

| Test | Environment for systematic testing — functional, integration, performance, security testing | Substantial security: production-like configuration where relevant; broader access than production; test data per Section 5 |

| Development | Active development environment for coding and integration; shared by development team | Reduced controls compared to higher tiers: developer access; permissive configuration for development purposes; no production data without specific exception |

| Local / Sandbox | Individual developer workstations or isolated sandbox environments | Most permissive within isolation: minimal external connectivity; no BFS production data; intended for experimentation |

## 3.2  Environment Hierarchy and Promotion Flow

BFS environments operate in hierarchy with software promoted from lower to higher tiers per BFS-ISP-016 SSDLC:

Local/Sandbox → Development: Developer commits code to shared development environment;

Development → Test: Build artifacts promoted to test environment for systematic testing;

Test → Pre-Production: Tested artifacts promoted to pre-production for final validation;

Pre-Production → Production: Validated artifacts promoted to production deployment per change management;

Promotion gates per BFS-ISP-016 — code review, security testing, approvals at appropriate levels;

Promotion controls prevent unauthorized direct deployment to higher environments — bypassing lower environment validation defeats discipline.

## 3.3  Environment Naming and Identification

Environment names clearly identify tier — BFS-PROD, BFS-STAGE, BFS-TEST, BFS-DEV with consistent naming convention;

Environment indicators visible in user interfaces — preventing confusion between environments by personnel and applications;

Environment-specific styling (colors, banners) where appropriate — visual distinction supporting human awareness;

Environment metadata in deployed artifacts — supporting forensic investigation and audit traceability.

## 3.4  AI/ML-Specific Environment Considerations

AI/ML systems introduce specific environment categories beyond traditional application environments:

Training Environments: AI/ML model training environments — typically substantial compute capacity (GPU/TPU/accelerator), substantial data access, longer-running operations than typical development. Training environments warrant specific security profile balancing data access needs with protection;

Model Repositories: Trained models versioned and stored — model artifacts as deployable artifacts subject to similar discipline as code;

Feature Stores: Centralized feature data accessible across training and inference — environment separation considerations for feature data;

Inference Environments: Environments serving model predictions — production inference is production environment; non-production inference is appropriate test/staging environment;

MLOps Pipeline: AI/ML CI/CD analog — automated pipelines for training, validation, deployment of models. Environment promotion discipline applies.

| AI/ML ENVIRONMENT DISCIPLINE:  AI/ML environments often have legitimate need for substantial data access — training requires representative data; validation requires production-like data. This need creates pressure for production data in training environments. The discipline: address through anonymization, sampling, synthetic generation, federated learning, or specific exceptions with strong protections — never through informal practice of using production data without controls. The cost of weak AI/ML environment discipline is potential exposure of training data through model behavior or training environment compromise. |

| --- |

# 4.  ENVIRONMENT SEPARATION REQUIREMENTS (A.8.31)

This section operationalizes ISO/IEC 27001:2022 Annex A.8.31. Environment separation is the structural defense preventing lower-environment compromise from cascading to production.

## 4.1  Network Separation

PS-1.1  Production environments shall be on dedicated network segments separated from development and test environments through firewall enforcement per BFS-ISP-013 §5.

PS-1.2  Network connections between environments shall be restricted to specifically authorized purposes — typically excluding direct development → production paths.

PS-1.3  Cross-environment network access controls shall enforce least privilege — specific protocols, ports, and source/destination addresses defined per documented business need.

PS-1.4  CI/CD pipeline network paths between environments shall use dedicated controlled paths with specific authentication and authorization rather than general developer network access.

PS-1.5  Vendor environments shall integrate per BFS-ISP-015 with appropriate network controls — vendor environment compromise should not provide BFS production access.

## 4.2  Access Control Separation

PS-2.1  Production access shall be separated from development/test access per BFS-ISP-005 — different credentials, different access controls, different approval requirements.

PS-2.2  Developers shall not have direct production write access for systems they develop — production deployment through CI/CD pipelines or operations personnel per BFS-ISP-025 §5.2 PS-2.1 segregation of duties.

PS-2.3  Production read access for developers shall be restricted to specific troubleshooting scenarios with documented approval, time-bounded access, and session logging.

PS-2.4  Privileged access management (PAM) controls per BFS-ISP-006 enforce production access discipline — preventing developer credential elevation to production.

PS-2.5  Test environment access controls calibrated to test data sensitivity — environments containing production-derived data have access controls appropriate to that data sensitivity.

## 4.3  System and Data Separation

PS-3.1  Production systems shall not share infrastructure with non-production systems — separate physical or virtual infrastructure preventing infrastructure-level cross-contamination.

PS-3.2  Production data shall not flow to non-production environments without specific authorization per Section 5 — preventing unintended production data exposure through routine data flows.

PS-3.3  Cross-environment data flows shall be documented — preventing undocumented backdoor data paths.

PS-3.4  Database separation: production databases on dedicated infrastructure with network, authentication, and authorization separation from non-production.

PS-3.5  Configuration separation: production configurations including credentials, certificates, and parameters distinct from non-production — preventing production credential exposure through non-production environments.

## 4.4  Personnel Separation Considerations

Specific personnel handle production operations distinct from development personnel per BFS-ISP-025 §5.2 segregation of duties;

Where same personnel work across environments, role-based access controls enforce appropriate environment access per current activity;

Production-bearing tasks performed by personnel with appropriate credentials and oversight — not opportunistic production access during development work;

Cross-environment troubleshooting follows documented procedures with appropriate authorization.

## 4.5  Environment Compromise Containment

Environment separation provides containment when compromise occurs:

Development environment compromise should not provide production access — separation prevents lateral movement;

Test environment compromise should not expose production data — test data discipline prevents production data presence;

Pre-production compromise warrants production review but should not provide direct production access — promotion discipline prevents direct paths;

Compromise indicators in lower environments trigger investigation per BFS-ISP-017 with assessment of potential production implications;

Even with separation, lower environment compromise indicates security weakness warranting attention — separation is containment, not excuse for poor lower-environment security.

# 5.  TEST DATA MANAGEMENT (A.8.33)

This section operationalizes ISO/IEC 27001:2022 Annex A.8.33 (Test information). Test data is the most common path for production data leakage to lower environments — disciplined test data management is foundational.

## 5.1  Test Data Hierarchy

BFS preferred test data sources in order of preference:

| Test Data Type | Definition | BFS Use |

| --- | --- | --- |

| Synthetic | Generated artificially without correspondence to real BFS data — using realistic schemas and distributions | PREFERRED — provides realistic testing without production data exposure risk; investment in synthetic data generation infrastructure recommended |

| Anonymized | Production data with personal identifiers removed such that data subjects cannot be identified | Acceptable for many test purposes; subject to verification that anonymization is genuine (re-identification infeasible) |

| Masked | Production data with sensitive values replaced with masked values preserving format | Acceptable for testing requiring production-like values; subject to masking scope verification |

| Pseudonymized | Production data with identifiers replaced by artificial identifiers (mapping stored separately) | Use only when synthetic, anonymized, or masked data inadequate for purpose; treated as personal data per RA 10173 |

| Production Data (Exception) | Actual production data in non-production environment | Used only with documented exception per Section 5.4 — not routine practice |

## 5.2  Synthetic Data Generation

Synthetic data generation infrastructure provides primary test data source — investment in good synthetic data generation pays returns through reduced production data exposure risk;

Synthetic data tools generate data matching production schemas, value distributions, and edge cases without production data origins;

AI/ML approaches to synthetic data generation — generative models trained to produce realistic synthetic data;

Synthetic data quality: realism sufficient for testing purposes; coverage of edge cases; volume appropriate for testing types;

Synthetic data limitations: may miss novel patterns appearing only in real production data; performance characteristics may differ from real data — supplementary testing with anonymized or masked production data may be appropriate.

## 5.3  Data Anonymization and Masking

Anonymization shall meet RA 10173 standard — re-identification infeasible through reasonable means including reasonable adversary capabilities;

Anonymization techniques: removing direct identifiers (names, addresses); generalizing quasi-identifiers (date of birth → year of birth, location → region); applying k-anonymity, l-diversity, or differential privacy techniques;

Verification of anonymization adequacy — particularly important given re-identification research advances;

Masking techniques: format-preserving masking (XXXX-1234 for credit cards); deterministic masking (same input → same output for referential integrity); irreversible cryptographic transforms;

Masking scope verification — all sensitive fields masked, no data leaks through unmasked associations;

Masking automation through tooling — preventing inconsistent manual masking.

## 5.4  Production Data Exception

Use of actual production data in non-production environments is exceptional and requires specific protections:

PS-4.1  Production data exception requires documented justification — typically: (a) defect investigation requiring exact reproduction of issue; (b) testing scenario impossible to reproduce with synthetic/anonymized/masked data; (c) regulatory requirement specifying production data testing.

PS-4.2  Production data exception requires explicit approval — typically CISO Office + DPO + business owner with documented decision.

PS-4.3  Production data in non-production environment requires equivalent protection — environment access controls, encryption, monitoring at production-equivalent levels for the duration of production data presence.

PS-4.4  Production data exception is time-bounded — specific duration with documented expiration; data removed at expiration.

PS-4.5  Production data exception subject to enhanced logging — complete audit trail of access during exception period.

PS-4.6  Personal data in production exception subject to RA 10173 expectations — additional considerations for personal data including DPO involvement.

PS-4.7  Cardholder data is never used in non-production environments without PCI DSS-compliant protections — PCI DSS §6.5.6 specifically addresses this. Generally cardholder data exceptions are avoided through synthetic alternatives.

## 5.5  Test Data Lifecycle

Test data created/generated for specific testing purposes;

Test data refreshed per testing cycle — stale test data may not reflect current production patterns;

Test data retained only for legitimate test purposes — not retained beyond useful life;

Test data disposal per BFS-ISP-028 — particularly important for any production-derived test data;

Test data lifecycle automated where possible — refresh, masking, disposal scripted rather than manual;

Test data inventory — what test data exists, where, what classification.

# 6.  DEVELOPMENT ENVIRONMENT SECURITY

Development environments enable productive software engineering. Despite reduced controls compared to higher environments, development environments are not unsecured — they are secured at appropriate level reflecting risk profile.

## 6.1  Developer Workstation Security

Developer workstations are BFS-issued devices subject to BFS-ISP-022 device security requirements — full disk encryption, EDR, MDM, current OS and patches;

Local development tools per BFS-ISP-002 approved software inventory — IDEs, language runtimes, container runtimes, command-line tools;

Local development data limits — local databases, local copies of code; no production data on developer workstations;

Developer credentials per BFS-ISP-005 — strong credentials, MFA, regular rotation; particularly important for developers with broader system access;

Developer workstation backup — code primarily backed up through source control rather than workstation backup; non-code work product per BFS data protection;

Workstation hardening per BFS-ISP-004 — even developer workstations follow secure baseline configuration.

## 6.2  Source Code Repository Security

Source code repositories per BFS-ISP-016 §5 — Git-based repositories with branch protection, code review enforcement, signed commits;

Repository access controls per BFS-ISP-005 — least privilege based on repository sensitivity;

Repository scanning per BFS-ISP-016 — secret scanning preventing credential commits, dependency scanning, SAST integration;

Repository audit logging — clone, pull, push events logged per BFS-ISP-008;

Repository disaster recovery — repositories included in BFS-ISP-011 backup and recovery scope;

Source code is RESTRICTED classification per BFS-ISP-003 — repositories protected accordingly.

## 6.3  CI/CD Pipeline Security

CI/CD pipelines per BFS-ISP-016 — automated build, test, security scanning, deployment with appropriate gates;

Pipeline credentials managed through secret management — not hardcoded in pipeline configurations;

Pipeline-as-code — pipeline definitions in source control with same review discipline as application code;

Pipeline integrity — pipeline configurations protected from unauthorized modification;

Pipeline audit — pipeline execution logged supporting traceability of deployments to source;

Pipeline isolation — pipelines for different applications/environments appropriately isolated preventing cross-pipeline interference.

## 6.4  Container and Cloud Development

Container images for development per BFS-ISP-016 — based on approved base images; scanned for vulnerabilities; signed for integrity;

Container registry access controls — appropriate access to development vs production registries;

Cloud development environments per BFS cloud strategy — leveraging cloud capabilities for developer productivity while maintaining security;

Infrastructure-as-Code (IaC) — environment definitions in source control with review discipline;

Cloud development cost management — preventing runaway cloud costs in development environments through quotas and monitoring.

## 6.5  Open Source and Third-Party Dependencies

Dependency management per BFS-ISP-016 — Software Bill of Materials, vulnerability scanning, license compliance per BFS-ISP-026 §7.4;

Dependency cache/proxy — internal proxy reducing direct external dependency on public repositories;

Dependency selection — vendor evaluation for substantial dependencies; preferred vendors for common dependencies;

Dependency update discipline — regular updates addressing vulnerabilities; testing before propagation to production.

# 7.  PRODUCTION ACCESS DISCIPLINE

Production access is the boundary between development pipeline and operational reality. This section establishes production access discipline preventing developers from circumventing environment separation.

## 7.1  Standard Production Access Restrictions

Developers do not have routine production access — write access to production systems for systems they develop is prohibited per BFS-ISP-025 segregation of duties;

Operations personnel have production access for operational duties — system administration, deployment, troubleshooting per their role;

Production access requires specific business need — not granted as convenience or general privilege;

Production access through PAM platform per BFS-ISP-006 — credential vaulting, just-in-time access, session recording.

## 7.2  Production Read Access for Investigation

Production read access for developers may be appropriate for specific investigation scenarios:

PS-2.1  Production read access requires documented justification — specific issue requiring production investigation, alternatives considered.

PS-2.2  Production read access requires manager approval and CISO Office authorization for sensitive systems.

PS-2.3  Production read access is time-bounded — specific duration appropriate to investigation; default 24-72 hours with extension authorization for longer.

PS-2.4  Production read access is logged with full session recording per BFS-ISP-008 supporting audit verification.

PS-2.5  Production read access scope is minimum necessary — specific data needed; not general production environment access.

PS-2.6  Production data extracted during investigation handled per BFS-ISP-003 classification — not retained on developer workstations or systems beyond investigation.

## 7.3  Emergency Production Access

Emergency production access may be required for severe incidents — system down, customer impact, security incident response;

Emergency access procedure per BFS-ISP-017 — break-glass credentials, post-event review, documentation;

Emergency access does not bypass logging and review — emergencies justify pre-event access streamlining, not post-event review elimination;

Pattern of emergency access usage triggers review — frequent emergencies indicate operational issues requiring systemic correction.

## 7.4  Deployment to Production

Production deployments through CI/CD pipelines preferred — automated deployment with approval gates;

Manual production deployment by operations personnel — not by developers per segregation;

Deployment approvals per BFS-ISP-016 change management;

Deployment audit trail — supporting incident investigation linking issues to deployments;

Deployment rollback capability — preventing extended exposure to deployment-introduced issues.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Environment Security Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Oversight of environment security through KPIs and Internal Audit findings. |

| Chief Information Officer | Co-approver. Ensures IT operations supports environment separation. Champions environment discipline. |

| Chief Information Security Officer | Document owner. Operationally accountable for environment security framework, separation enforcement, and test data management. |

| Head of Software Engineering | Co-approver. Operationally accountable for development discipline including environment use, test data practices, and CI/CD security. |

| Head of IT Operations | Co-approver. Operationally accountable for environment infrastructure including network separation, production access management, and environment lifecycle. |

| Data Protection Officer | Co-approver. Personal data in test environments per RA 10173. Approval authority for production data exceptions involving personal data. |

| Software Engineering Teams | Implement secure development practices. Use appropriate test data. Respect production access discipline. Address security findings during development. |

| IT Operations Personnel | Operate environment infrastructure. Maintain environment separation controls. Process production access requests per documented procedures. |

| CISO Office | Environment security oversight. Production data exception evaluation. CI/CD pipeline security architecture. Investigation of environment-related incidents. |

| Project Sponsors | Ensure projects respect environment discipline. Champion test data adequacy investment. |

| All Personnel | Respect environment separation in their work. Do not circumvent environment controls. Report observed environment discipline issues. |

| Internal Audit | Independent verification of environment security per BFS-ISMS-008 — including environment separation effectiveness, test data management, production access discipline. |

# 9.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Environment security effectiveness is measured through the following KPIs reviewed quarterly by CISO Office and Software Engineering jointly and reported to the Information Security Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Network separation between production and non-production | 100% verified | Quarterly |

| Production data discovered in non-production environments without exception | Zero target | Continuous |

| Production data exceptions with documented approval | 100% | Per exception |

| Production data exceptions completed within time limits | 100% | Per exception |

| Synthetic test data adoption (% of test scenarios) | Track and increase | Quarterly |

| Test data generation tool effectiveness | Internal assessment | Quarterly |

| Anonymization techniques applied per RA 10173 standard | 100% | Per anonymization |

| Cardholder data discovery in non-production | Zero target — immediate remediation | Continuous |

| Developer production write access (excluding ops personnel) | Zero | Quarterly |

| Production read access for developers — average duration | Track and trend | Quarterly |

| Production read access logged with session recording | 100% | Per access |

| Emergency production access — patterns indicating systemic issues | Track and address | Quarterly |

| Source code repositories with secret scanning enabled | 100% | Quarterly |

| CI/CD pipelines with security scanning integrated | 100% | Quarterly |

| Developer workstation security baseline compliance | ≥ 95% | Monthly |

| Environment-related security incidents | Track and trend | Quarterly |

| Internal Audit findings on environment security | Track and remediate per BFS-ISMS-010 | Per audit |

# 10.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Test and Development Environment Security Policy operationalizing ISO/IEC 27001:2022 Annex A.8.31 (Separation of development, test and production environments) and A.8.33 (Test information) in unified framework. 5-tier environment framework (Production / Pre-Production / Test / Development / Local-Sandbox) with calibrated security profiles. AI/ML-specific environment considerations relevant to BFS AI-native platform development. Comprehensive environment separation requirements (network, access control, system, personnel) with 18 PS statements. Test Data Management with 5-level data hierarchy (Synthetic preferred / Anonymized / Masked / Pseudonymized / Production Data Exception) and 7 PS statements for production data exceptions. Development environment security across 5 areas (workstation, source repository, CI/CD pipeline, containers/cloud, dependencies). Production access discipline with read access controls, emergency access discipline, and deployment governance. PCI DSS v4.0 §6.5.5 and §6.5.6 alignment. | IT Head / Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A Controls Mapping

Direct mapping of A.8.31 and A.8.33 controls to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.8.31 | Separation of development, test and production environments — Development, testing and production environments shall be separated and secured. | Section 3 (Environment Categories with 5-tier framework: Production, Pre-Production, Test, Development, Local/Sandbox + Environment Hierarchy and Promotion Flow + Environment Naming + AI/ML-Specific Considerations); Section 4 (Environment Separation Requirements — Network Separation 5 PS, Access Control Separation 5 PS, System and Data Separation 5 PS, Personnel Separation Considerations, Environment Compromise Containment); Section 7 (Production Access Discipline — Standard Restrictions, Production Read Access for Investigation 6 PS, Emergency Production Access, Deployment to Production). Coordinated with BFS-ISP-013 network security, BFS-ISP-005 access management, BFS-ISP-006 access control, BFS-ISP-025 segregation of duties. |

| A.8.33 | Test information — Test information shall be appropriately selected, protected and managed. | Section 5 (Test Data Management) operationalizes — 5-level Test Data Hierarchy (Synthetic preferred / Anonymized / Masked / Pseudonymized / Production Data Exception with calibrated color-coded preference); Synthetic Data Generation framework recognizing AI/ML approaches; Data Anonymization and Masking with RA 10173 standard; Production Data Exception with 7 PS statements covering documented justification, explicit approval, equivalent protection, time-bounding, enhanced logging, RA 10173 considerations, and PCI DSS §6.5.6 cardholder data prohibition; Test Data Lifecycle with creation through disposal per BFS-ISP-028. |

# APPENDIX B:  Environment Security Quick Reference

Single-page reference for developers, operations personnel, and project teams.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What environment am I working in? | 5-tier framework: Production (live operational), Pre-Production/Staging (production-like for final validation), Test (systematic testing), Development (active dev work), Local/Sandbox (individual workstation/isolated). Environment names should clearly identify tier (BFS-PROD, BFS-STAGE, etc.). See §3.1 and §3.3. |

| Can I use production data in test environments? | Generally no. Use Synthetic (preferred), Anonymized, Masked, or Pseudonymized data instead. Production Data Exception only with documented justification, explicit approval (CISO + DPO + business owner), time-bounded, enhanced logging. Cardholder data never in non-production without PCI DSS-compliant protections per §6.5.6. See §5.4. |

| What's the preferred test data approach? | Synthetic test data — generated artificially without correspondence to real BFS data. Investment in synthetic data generation infrastructure pays returns through reduced exposure risk. AI/ML approaches to synthetic data generation increasingly viable. See §5.1 and §5.2. |

| Can I have production write access for systems I develop? | No per BFS-ISP-025 segregation of duties. Production deployment through CI/CD pipelines or operations personnel. Production read access for specific investigation scenarios with manager approval, CISO Office authorization for sensitive systems, time-bounded, full session logging. See §7.1 and §7.2. |

| What about emergency production access? | Emergency access for severe incidents — system down, customer impact, security incident response. Break-glass credentials per BFS-ISP-017. Does not bypass logging and review. Pattern of emergency usage triggers systemic review. See §7.3. |

| How are environments separated? | Network separation through firewalls. Access control separation (different credentials). System separation (no shared infrastructure). Data separation (no production data in non-production except by exception). Personnel separation per segregation of duties where applicable. See §4. |

| What about my development workstation? | BFS-issued device with full disk encryption, EDR, MDM, current OS/patches per BFS-ISP-022. Approved development tools per BFS-ISP-002. Local databases for development; no production data. Strong credentials with MFA. Hardened per secure baseline. See §6.1. |

| What about source code security? | Repositories per BFS-ISP-016 — branch protection, code review, signed commits. Access controls per BFS-ISP-005. Secret scanning preventing credential commits. Audit logging of repository activities. Source code is RESTRICTED classification. See §6.2. |

| What about CI/CD pipeline security? | Pipeline credentials through secret management (not hardcoded). Pipeline-as-code in source control with review. Pipeline integrity protection. Pipeline audit logging. Pipeline isolation between applications/environments. See §6.3. |

| What about AI/ML environment considerations? | Training environments warrant specific security profile balancing data access needs with protection. Address data needs through anonymization, sampling, synthetic generation, federated learning rather than informal production data use. Model repositories like code repositories. MLOps pipeline discipline. See §3.4. |

| What if I find production data in a test environment? | Report immediately per BFS-ISP-017 incident response. Containment includes removing production data from non-production. Investigation per incident process. Material occurrences may require regulatory notification (RA 10173 if personal data). See §5.4. |

| How do I qualify anonymization? | RA 10173 standard — re-identification infeasible through reasonable means including reasonable adversary capabilities. Techniques: removing direct identifiers, generalizing quasi-identifiers, k-anonymity/l-diversity/differential privacy. Verification of adequacy. See §5.3. |

BFS-ISP-029  |  Test and Development Environment Security Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.8.31 and A.8.33. PCI DSS §6.5.5 and §6.5.6 Aligned.
