---
title: "BFS-ISP-016-Application-Software-Security-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Secure-Development-and-Application-Security/BFS-ISP-016-Application-Software-Security-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:40Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Secure-Development-and-Application-Security"
aliases:
  - "BFS-ISP-016-Application-Software-Security-Policy"
creator: "Un-named"
created: "2026-04-23T01:27:00Z"
modified: "2026-04-23T04:51:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>APPLICATION SOFTWARE<br>SECURITY POLICY<br>SSDLC, Secure Coding, Threat Modeling, SAST/DAST/SCA, API & Container Security, AI-Assisted Development<br>Policy Reference: BFS-ISP-016<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 16)  \|  ISO/IEC 27001:2022<br>OWASP ASVS / SAMM  \|  PCI DSS v4.0 (Req. 6)  \|  BSP Circular 1140  \|  RA 10173<br>Companion to BFS-ISP-002 \| BFS-ISP-003 \| BFS-ISP-004 \| BFS-ISP-006 \| BFS-ISP-007 \| BFS-ISP-015 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Application Software Security Policy |

| --- | --- |

| Policy Reference | BFS-ISP-016 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon significant changes to development technology stack, threat landscape, or regulatory requirements |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-002 (Software Asset Inventory); BFS-ISP-003 (Data Protection); BFS-ISP-004 (Secure Configuration); BFS-ISP-006 (Access Control Management); BFS-ISP-007 (Vulnerability Management); BFS-ISP-008 (Audit Log Management); BFS-ISP-013 (Network Monitoring and Defense); BFS-ISP-015 (Service Provider Management); BFS-ISP-027 (Security in Project Management — when issued) |

| Framework Alignment | CIS Controls v8 (Control 16); ISO/IEC 27001:2022 (A.8.25, A.8.26, A.8.27, A.8.28, A.8.29, A.8.30, A.8.31, A.8.32, A.8.33, A.8.34); OWASP ASVS v4.0; OWASP SAMM v2.0; OWASP Top 10 (2021); OWASP API Security Top 10 (2023) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); BSP Circular 1048 (Cybersecurity Risk Management); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirement 6 — Develop and Maintain Secure Systems and Software); NIST SP 800-218 (Secure Software Development Framework — SSDF); NIST SP 800-190 (Container Security) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Data Privacy Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the mandatory requirements, governance framework, and operational standards for the secure development, acquisition, deployment, and maintenance of all application software within BFS Financial Services (hereinafter "the Organization" or "BFS") — covering internally developed applications, software acquired from third parties, custom integrations, mobile applications, web applications, microservices, APIs, container-based workloads, AI-integrated applications, and any executable code that processes BFS data or operates within BFS environments.

Application security failures are among the leading causes of major financial sector breaches. Injection flaws, authentication bypasses, insecure object references, broken access controls, and insufficient input validation have repeatedly enabled threat actors to extract customer data, manipulate transactions, and pivot from public-facing applications into internal banking systems. Unlike infrastructure vulnerabilities, application security flaws cannot be patched away by vendors — they exist in code BFS or its partners write, and they must be prevented through deliberate design, secure coding practices, and rigorous testing throughout the software development lifecycle.

BFS operates a software-intensive business: every customer transaction, every internal operation, and every regulatory report flows through code that BFS develops, integrates, or operates. The platform BFS is currently building — an AI-native, mission-critical core banking platform — magnifies this dependence further, introducing new attack surfaces (AI-specific attacks, prompt injection, model-related vulnerabilities) and new development patterns (AI-assisted coding, microservices, cloud-native architectures) that demand specifically governed security practices.

This policy directly implements CIS Controls v8, Control 16 (Application Software Security), encompassing all safeguards from 16.1 through 16.14. It is anchored in ISO/IEC 27001:2022 Annex A controls governing secure development lifecycle, application security requirements, secure system architecture and engineering principles, secure coding, security testing, outsourced development, separation of environments, change management, test information management, and protection of information systems during audit testing.

The specific objectives of this policy are to:

Establish a mandatory Secure Software Development Lifecycle (SSDLC) governing every BFS software project from inception through retirement, embedding security as a first-class design and engineering concern;

Define enforceable secure coding standards aligned with OWASP, language-specific best practices, and BFS-specific threat models, supported by automated tooling that prevents the most common vulnerability classes from reaching production;

Mandate threat modeling for all CRITICAL and HIGH risk applications, ensuring that security risks are identified during design rather than discovered during incident response;

Implement layered security testing — Static Application Security Testing (SAST), Dynamic Application Security Testing (DAST), Software Composition Analysis (SCA), and where feasible Interactive Application Security Testing (IAST) — as gating requirements in the CI/CD pipeline;

Govern the security of containerized workloads, microservices architectures, APIs, and cloud-native deployment patterns that constitute the BFS modern application landscape;

Establish governance for AI-assisted software development tools (GitHub Copilot, Cursor, ChatGPT, Claude Code, and similar) ensuring that productivity benefits do not compromise code security, intellectual property, or sensitive data confidentiality;

Define security requirements for the acquisition, evaluation, and deployment of third-party commercial software and open-source components;

Ensure compliance with PCI DSS v4.0 Requirement 6, BSP Circulars 1140 and 1048, RA 10173 privacy-by-design obligations, and NIST SP 800-218 secure software development framework principles.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all BFS personnel and third parties engaged in any software-related activity:

Software development teams, including application developers, mobile developers, frontend engineers, backend engineers, full-stack engineers, and platform engineers;

DevSecOps and platform engineering teams managing CI/CD pipelines, container platforms, and developer tooling;

Enterprise Architecture and Solution Architecture teams responsible for application design and integration patterns;

Quality Assurance teams responsible for functional, performance, and security testing;

Product owners and business analysts who define application functional and security requirements;

Site Reliability Engineering and Application Operations teams responsible for production application operations;

IT Security and Application Security teams that govern secure development practices;

Third-party software development partners, contractors, and vendors developing software on behalf of BFS;

Vendors supplying commercial software, SaaS applications, or software components used in BFS environments.

## 2.2  Software Scope

This policy applies to all software within or affecting BFS environments:

### 2.2.1  Internally Developed Software

Customer-facing applications: internet banking, mobile banking, and customer portals;

Internal business applications: core banking modules, ERP customizations, internal portals, and operations consoles;

Microservices and APIs developed for the BFS service-oriented architecture and the AI-native core banking platform;

Batch processing and integration code: ETL pipelines, payment processing engines, and reconciliation modules;

AI-integrated applications: applications incorporating LLM agents, retrieval-augmented generation (RAG) services, AI-powered decisioning, and the BFS Hermes Agent ecosystem;

Internal automation and tooling: scripts, workflow automation, and platform engineering code with production access.

### 2.2.2  Acquired Software

Commercial off-the-shelf (COTS) applications licensed from software vendors;

Software-as-a-Service (SaaS) applications integrated with BFS systems;

Open-source software libraries, frameworks, and components incorporated into BFS applications;

Container base images sourced from public registries or vendors;

Pre-trained AI models, embeddings, and AI-related components from external sources.

### 2.2.3  Outsourced Development

Software developed by third-party development partners on behalf of BFS;

Code contributions from contractors, consultants, or staff augmentation arrangements;

Custom integrations developed by system integrators.

## 2.3  Environmental Scope

This policy applies across the entire software lifecycle and all environments: development workstations, source code repositories, build and CI/CD systems, artifact repositories, container registries, development and staging environments, pre-production environments, production environments, and disaster recovery environments. AI-assisted development tools that interact with BFS source code or proprietary information are also in scope regardless of where they execute.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Secure Software Development Lifecycle (SSDLC) | A structured approach to software development that integrates security activities, requirements, and gates throughout every phase — from concept and requirements through design, implementation, testing, deployment, operation, and retirement. The SSDLC ensures security is embedded by design rather than added after development. |

| Threat Model | A structured analysis of an application's architecture identifying potential threats, attack vectors, abuse cases, and security weaknesses, typically using methodologies such as STRIDE (Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege), PASTA, or attack trees. Threat models drive security control selection during design. |

| Static Application Security Testing (SAST) | Automated analysis of application source code, bytecode, or binary code to identify security vulnerabilities without executing the application. SAST detects vulnerability patterns such as SQL injection, hardcoded credentials, insecure cryptographic implementations, and unsafe API usage during development and CI/CD. |

| Dynamic Application Security Testing (DAST) | Automated security testing of running applications by sending crafted inputs, probing for vulnerabilities, and analyzing application responses. DAST identifies runtime vulnerabilities such as injection flaws, authentication weaknesses, and misconfiguration that may not be visible in source code. |

| Software Composition Analysis (SCA) | Automated analysis of an application's third-party and open-source dependencies, identifying components with known vulnerabilities (CVEs), license compliance issues, and outdated versions. SCA addresses the supply chain risk introduced by dependencies. |

| Interactive Application Security Testing (IAST) | A hybrid approach combining elements of SAST and DAST by instrumenting the application during testing and observing its runtime behavior alongside code analysis, typically providing higher accuracy and lower false positive rates than DAST alone. |

| Software Bill of Materials (SBOM) | A formal, machine-readable inventory of all software components included in an application, including direct and transitive dependencies, version numbers, suppliers, and license information. SBOM is the foundation for supply chain vulnerability management. |

| OWASP Top 10 | The Open Web Application Security Project's regularly updated list of the most critical web application security risks. The current list (2021) includes Broken Access Control, Cryptographic Failures, Injection, Insecure Design, Security Misconfiguration, Vulnerable and Outdated Components, Identification and Authentication Failures, Software and Data Integrity Failures, Security Logging and Monitoring Failures, and Server-Side Request Forgery. |

| OWASP API Security Top 10 | The OWASP project specifically addressing the most critical API security risks (2023 edition), including Broken Object Level Authorization, Broken Authentication, Broken Object Property Level Authorization, Unrestricted Resource Consumption, Broken Function Level Authorization, Unrestricted Access to Sensitive Business Flows, Server Side Request Forgery, Security Misconfiguration, Improper Inventory Management, and Unsafe Consumption of APIs. |

| OWASP ASVS | Application Security Verification Standard — a comprehensive framework of security requirements and verification criteria organized into three levels: Level 1 (opportunistic threats), Level 2 (most applications, used by BFS as the standard baseline), Level 3 (high-value, sensitive applications including core banking and payment systems). |

| Secure Coding Standard | A documented set of language-specific and framework-specific coding rules, patterns, and prohibitions designed to prevent common vulnerability classes. BFS maintains secure coding standards for each primary development language (Java/Spring, JavaScript/TypeScript, Python, etc.). |

| Source Code Repository | A version-controlled storage system for application source code (typically Git-based: GitHub, GitLab, Bitbucket). Source code repositories are themselves CRITICAL security assets requiring access control, branch protection, code review enforcement, and audit logging. |

| CI/CD Pipeline | Continuous Integration / Continuous Delivery (or Deployment) — the automated workflow that builds, tests, packages, and deploys software from source code to running environments. CI/CD pipelines are the enforcement point for SSDLC security gates. |

| Pull Request (PR) / Merge Request (MR) | A formal proposal to merge code changes from a development branch into a protected branch (typically main/production), requiring code review, automated test passage, and security gate validation before approval. |

| Branch Protection | Source code repository configuration that prevents direct commits to protected branches, requires pull requests with mandatory reviewers, requires passing CI checks, and enforces signed commits. Branch protection is a foundational secure development control. |

| Container | A standardized unit of software packaging that bundles application code, dependencies, and runtime configuration into an isolated, portable execution environment. Common technologies: Docker, OCI containers, runtime engines such as containerd. |

| Container Image | The static, immutable artifact from which container instances are created, typically composed of layered file systems and metadata. Container images may contain vulnerabilities inherited from base images or installed packages, requiring scanning before deployment. |

| Container Registry | A repository storing and distributing container images. Common implementations include Docker Hub (public), Amazon ECR, Azure Container Registry, GitHub Container Registry, and self-hosted Harbor. Registries must be access-controlled and scanned. |

| API Gateway | A specialized server (e.g., Spring Cloud Gateway, Kong, AWS API Gateway) that mediates API requests, enforcing authentication, authorization, rate limiting, request validation, and routing policies. API gateways are critical enforcement points for API security. |

| DevSecOps | An organizational and technical model integrating security practices, tools, and responsibilities into DevOps workflows, ensuring security is automated into CI/CD rather than added as a separate, slower process. |

| Secrets Management | The technical practices and tooling for storing, distributing, rotating, and auditing access to sensitive credentials (passwords, API keys, certificates, encryption keys) used by applications. Hardcoded secrets in source code are a CRITICAL vulnerability class. |

| AI-Assisted Development Tools | Software tools using artificial intelligence (typically large language models) to assist developers with code suggestion, autocompletion, code review, refactoring, or debugging. Examples: GitHub Copilot, Cursor, Claude Code, Tabnine. These tools require specific governance to manage code quality, IP, and confidentiality risks. |

| Prompt Injection | An attack against AI-integrated applications in which an adversary crafts user inputs that manipulate the LLM into ignoring its system instructions, performing unauthorized actions, or revealing sensitive information. Prompt injection is a category of input validation vulnerability specific to AI applications. |

# 4.  SECURE SOFTWARE DEVELOPMENT LIFECYCLE FRAMEWORK

BFS implements a structured Secure Software Development Lifecycle (SSDLC) integrating security activities and gates into every phase of software delivery. The SSDLC is built on the OWASP Software Assurance Maturity Model (SAMM) and aligned with NIST SP 800-218 (Secure Software Development Framework). All BFS software projects, regardless of methodology (Agile, DevOps, traditional waterfall), shall comply with the SSDLC gate requirements applicable to their classification.

## 4.1  Application Risk Classification

Every BFS application shall be classified into one of four risk tiers determining the depth of SSDLC controls required. Tier assignment is performed by the Application Security team in consultation with the Application Owner during project initiation and reviewed at each major release.

| Tier | Classification | Criteria | Examples |

| --- | --- | --- | --- |

| TIER 1 | CRITICAL | Processes financial transactions; OR handles PCI cardholder data; OR processes sensitive personal information at scale; OR forms part of the core banking platform; OR is internet-facing and authenticates users. | Internet banking; mobile banking app; core banking modules; payment processing engines; ATM/card management; SWIFT integration; APIs serving customer-facing channels; the AI-native core banking platform. |

| TIER 2 | HIGH | Processes CONFIDENTIAL business data; OR is used by all employees with elevated access; OR integrates with TIER 1 systems; OR is a developer/operations tool with production access. | Internal portals processing customer data; CRM customizations; ERP integrations; developer tooling with production access; CI/CD platform; AI/LLM agent applications integrating with TIER 1. |

| TIER 3 | MEDIUM | Processes INTERNAL business data; OR supports a single business function; OR is internal-only with no external interfaces. | Internal reporting tools; departmental workflow apps; non-critical internal portals; data analytics dashboards. |

| TIER 4 | LOW | Processes only PUBLIC information; OR is a non-business utility tool; OR is in a research/sandbox environment with no real data. | Public website (informational only); developer sandbox tools; research prototypes; training applications. |

## 4.2  SSDLC Phases and Mandatory Security Activities

| SSDLC Phase | Mandatory Security Activities | Required Outputs | Required For Tier |

| --- | --- | --- | --- |

| 1. Concept / Requirements | Security requirements identification; data classification determination; regulatory applicability review (PCI/RA 10173/BSP); Application Risk Tier assignment. | Security Requirements Document; Application Risk Tier classification; Initial Privacy Impact Assessment (if PII processed). | All Tiers (depth scales) |

| 2. Design / Architecture | Threat modeling using STRIDE methodology; security architecture review; secure design pattern selection; Privacy-by-Design assessment. | Threat Model document; Architecture Security Review approval; selected security controls. | TIER 1 and TIER 2 mandatory; TIER 3 recommended |

| 3. Implementation / Coding | Adherence to BFS Secure Coding Standards; pre-commit secret scanning; pull request review with security checks; mandatory peer code review. | Code in source repository with branch protection; passing pre-commit checks; reviewed PRs with no unaddressed security comments. | All Tiers |

| 4. Build / Integration | SAST scan execution; SCA dependency vulnerability scan; container image scan (if applicable); secrets scan in built artifacts. | Passing SAST scan (no HIGH/CRITICAL unsuppressed findings for TIER 1/2); SCA report with CVE assessment; signed build artifacts. | All Tiers |

| 5. Testing / QA | Functional security testing; DAST scan in pre-production environment; manual security review for TIER 1; penetration testing for TIER 1 before initial release. | DAST report with no HIGH/CRITICAL findings; security test cases executed; pen test report (TIER 1 initial release). | TIER 1 full; TIER 2 DAST + functional security tests; TIER 3 functional security tests |

| 6. Deployment / Release | Deployment via CI/CD pipeline with security gates; production configuration review; secrets injection from secrets manager; deployment audit log. | Pipeline approval record; deployment audit entry; verified absence of debug/test artifacts in production. | All Tiers |

| 7. Operation / Maintenance | Continuous SCA monitoring for new CVEs; ongoing DAST scans on production; security patching per BFS-ISP-007 SLAs; security incident response. | Quarterly SCA review; periodic DAST results; patch deployment records. | All Tiers (frequency scales) |

| 8. Retirement / Decommissioning | Secure deletion of application data per BFS-ISP-003; revocation of application credentials; archival of audit logs; CMDB update. | Decommissioning checklist signed; data destruction certificate; access revocation confirmation. | All Tiers |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, software projects, and environments within scope of this policy.

## 5.1  SSDLC Governance and Application Inventory

PS-1.1  All software development activity at BFS — internal, contracted, or outsourced — shall follow the SSDLC framework defined in Section 4. Software projects bypassing the SSDLC, or omitting required security activities for their assigned tier, are prohibited and shall not be approved for production deployment.

PS-1.2  Every BFS application within scope of this policy shall be registered in the BFS Application Inventory, maintained by the Application Security team in coordination with the CMDB. Each entry shall include: application name, business owner, technical owner, application risk tier, technology stack, source code repository, deployment environment(s), data classification processed, regulatory applicability (PCI/PII/BSP), last security review date, and current SSDLC phase status.

PS-1.3  Application Risk Tier assignment shall be reviewed at least annually and whenever the application's scope, integrations, or data handling materially changes. Tier increases trigger immediate compliance with the higher tier's SSDLC requirements before further production releases.

PS-1.4  No production deployment of TIER 1 or TIER 2 applications shall occur without documented evidence of completion of all mandatory SSDLC activities for the application's tier. The CI/CD pipeline shall enforce this requirement through automated gating; manual override requires CISO and Head of Software Engineering joint approval.

## 5.2  Secure Coding Standards

PS-2.1  BFS shall maintain and enforce documented Secure Coding Standards for each primary development language and framework used at BFS, currently including: Java/Spring Boot, JavaScript/TypeScript (Node.js, React), Python, Kotlin (Android), Swift (iOS), and SQL. Standards shall be reviewed and updated at least annually.

PS-2.2  All code committed to BFS source code repositories shall comply with the applicable Secure Coding Standards. The standards shall address, at minimum: input validation, output encoding, parameterized queries, authentication and session management, cryptographic operations, error handling and logging, secret management (no hardcoded secrets), file and resource handling, and language-specific dangerous patterns.

PS-2.3  BFS Secure Coding Standards shall align with and reference: OWASP Secure Coding Practices Quick Reference Guide; OWASP Top 10 mitigations; OWASP API Security Top 10 mitigations for API code; CERT Secure Coding Standards (Java, C, C++); language-specific security guides (e.g., Spring Security best practices, OWASP Cheat Sheet Series).

PS-2.4  Developers shall complete BFS Secure Coding Training applicable to their primary development language at hire and at least annually thereafter (per BFS-ISP-014 role-based training). Developers without current secure coding training certification shall not have commit access to TIER 1 or TIER 2 application repositories.

PS-2.5  Hardcoded secrets — passwords, API keys, encryption keys, OAuth tokens, database connection strings with credentials, or any sensitive value — in source code, configuration files committed to source repositories, container images, or any artifact stored in version control are PROHIBITED. Pre-commit secret scanning is mandatory; secrets detected post-commit require immediate revocation and rotation, treated as a security incident.

## 5.3  Threat Modeling

PS-3.1  Threat modeling shall be performed for all TIER 1 CRITICAL and TIER 2 HIGH applications during the design phase and before any major architectural change. Threat modeling shall use the STRIDE methodology (Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege) or an equivalent structured methodology approved by the Application Security team.

PS-3.2  Threat models shall be documented and shall identify, at minimum: application data flows; trust boundaries; threat actors and their motivations; potential attack vectors; identified threats with severity ratings; planned security controls mitigating each significant threat; residual risks accepted.

PS-3.3  Threat models shall be reviewed and approved by the Application Security team before the design phase is considered complete. Significant design changes during implementation require threat model refresh and re-approval.

PS-3.4  TIER 1 application threat models shall be reviewed annually and updated when: new integrations are added; authentication or authorization mechanisms change; new data classifications are processed; significant architectural changes occur; or new attack patterns emerge in the threat landscape relevant to the application.

## 5.4  Source Code Repository Security

PS-4.1  All BFS source code shall reside in approved enterprise source code repositories (currently GitHub Enterprise; alternative platforms require CISO approval). Personal repositories, public repositories without explicit approval, and repositories outside BFS administrative control are prohibited for BFS source code.

PS-4.2  Source code repositories containing TIER 1 or TIER 2 application code shall enforce branch protection on production branches (typically main/master), requiring: mandatory pull request review by at least one designated reviewer not the change author; passing CI/CD checks including SAST and secrets scanning; signed commits using GPG/SSH keys associated with verified BFS developer identities; resolution of all security comments before merge.

PS-4.3  Repository access shall be governed by the BFS IAM framework (BFS-ISP-005) using SSO and least-privilege access. Developers shall have access only to repositories required for their current assignments. Repository access shall be reviewed quarterly and revoked promptly upon role change or termination.

PS-4.4  Source code repositories shall be classified as CONFIDENTIAL minimum (CRITICAL for TIER 1 application repositories). Cloning, downloading, or copying repository contents to personal devices or unapproved storage is prohibited.

PS-4.5  Repository audit logs shall be forwarded to the BFS SIEM (per BFS-ISP-008). Anomalous activity — bulk code downloads, access from unusual locations, repository deletion attempts, branch protection bypass attempts — shall generate SOC alerts.

## 5.5  Static Application Security Testing (SAST)

PS-5.1  All TIER 1, TIER 2, and TIER 3 application code shall be subject to automated SAST scanning integrated into the CI/CD pipeline. SAST scanning is a mandatory gate in the build phase — code with HIGH or CRITICAL severity SAST findings shall not be promoted past the build phase without remediation or formal exception approval.

PS-5.2  SAST tooling shall be capable of detecting at minimum: SQL injection, command injection, cross-site scripting (XSS), insecure deserialization, hardcoded secrets, weak cryptography (deprecated algorithms, weak keys), insecure random number generation, path traversal, server-side request forgery (SSRF), insecure direct object references, and known dangerous API usage.

PS-5.3  SAST findings shall be triaged within five (5) business days of generation. False positives may be suppressed with documented justification reviewed by the Application Security team. Suppressions shall be tracked centrally and audited quarterly. Persistent suppression of true vulnerabilities is prohibited.

PS-5.4  SAST tool versions, rule sets, and configurations shall be reviewed and updated at least quarterly to ensure detection capability remains current with emerging vulnerability patterns and language/framework updates.

## 5.6  Software Composition Analysis (SCA)

PS-6.1  All applications shall be subject to automated Software Composition Analysis identifying third-party and open-source dependencies, their versions, and known security vulnerabilities (CVEs). SCA scanning shall execute on every build and on a continuous basis (at least daily) for production applications.

PS-6.2  SCA findings rated CRITICAL by CVSS, or carrying KEV (CISA Known Exploited Vulnerabilities) status, in TIER 1 or TIER 2 applications shall trigger remediation per the SLA defined in BFS-ISP-007 (Vulnerability Management) — twenty-four (24) hours for CRITICAL/KEV in CRITICAL applications. Remediation typically requires updating to a patched version of the affected dependency.

PS-6.3  BFS shall generate and maintain a Software Bill of Materials (SBOM) for every TIER 1 application using a recognized format (SPDX or CycloneDX). SBOMs shall be regenerated on every build and stored alongside application artifacts. SBOMs enable rapid impact assessment when new CVEs affecting common components are disclosed.

PS-6.4  Open-source dependencies introduced into BFS applications shall be evaluated for: license compatibility with BFS's commercial use; project maintenance status (abandoned projects pose risk); maintainer reputation; presence of known historical vulnerabilities; and supply chain integrity (signed releases preferred). Adoption of new dependencies for TIER 1 applications requires Application Security review.

PS-6.5  Direct dependency on individual public NPM, PyPI, or Maven packages shall be governed by the BFS approved-package allowlist where feasible, particularly for TIER 1 applications. Packages with high typosquatting risk or limited maintainer reputation shall not be introduced without security review.

## 5.7  Dynamic Application Security Testing (DAST)

PS-7.1  All TIER 1 CRITICAL applications and all internet-facing TIER 2 HIGH applications shall be subject to DAST scanning in pre-production environments before each major release and continuously (at least monthly) for production deployments. DAST shall not be executed against production environments without controlled scoping to avoid impact on production operations.

PS-7.2  DAST findings rated HIGH or CRITICAL shall be remediated before production deployment. CRITICAL DAST findings discovered in production-deployed applications shall be remediated within seven (7) calendar days for TIER 1 applications and within thirty (30) days for TIER 2 applications, with appropriate compensating controls (e.g., WAF rules) deployed within twenty-four (24) hours.

PS-7.3  DAST tooling shall be configured to test for, at minimum: OWASP Top 10 vulnerability classes; OWASP API Security Top 10 for API endpoints; authentication and session management weaknesses; access control bypass; CORS misconfiguration; security header misconfiguration; SSL/TLS configuration weaknesses; and exposed sensitive information.

## 5.8  Penetration Testing

PS-8.1  All TIER 1 CRITICAL applications shall undergo independent penetration testing before initial production release and at least annually thereafter, conducted by qualified internal red team members or approved external penetration testing firms. Penetration testing shall combine automated scanning with manual exploitation attempts.

PS-8.2  Penetration test scope shall include: authentication and session management; access control and authorization; input validation and injection; business logic flaws; cryptographic implementation; configuration security; and any application-specific attack surfaces. For applications integrating AI/LLM components, scope shall additionally include prompt injection, model abuse, and AI-specific attack vectors.

PS-8.3  Penetration test findings shall be classified by severity and remediated per the SLAs defined in BFS-ISP-007. CRITICAL findings shall block production release until remediation is complete or a formal CISO-approved compensating control is documented. Penetration test reports shall be retained for three (3) years as audit evidence.

PS-8.4  Major application changes — significant architectural changes, new authentication mechanisms, new external integrations, addition of payment processing capability — shall trigger a focused penetration test of the changed scope before production release, regardless of the standard annual cycle.

## 5.9  API Security

PS-9.1  All BFS APIs — internal microservice APIs, partner-facing APIs, and customer-facing APIs — shall implement security controls addressing the OWASP API Security Top 10. APIs shall be designed with explicit authentication and authorization mechanisms; anonymous public APIs are prohibited for all functionality beyond explicitly designated public information endpoints.

PS-9.2  All APIs shall traverse an enterprise API gateway (currently Spring Cloud Gateway for internal traffic; designated edge gateway for external traffic) enforcing: authentication validation; authorization scope checking; request rate limiting; payload size limits; input validation (schema-based); and audit logging.

PS-9.3  API authentication for service-to-service communication shall use short-lived OAuth 2.0 tokens, mTLS, or signed JWT tokens. Long-lived static API keys for service-to-service authentication are prohibited for new integrations and shall be migrated for existing integrations on a documented timeline.

PS-9.4  API authorization shall enforce object-level authorization checks (preventing Broken Object Level Authorization — BOLA, the #1 OWASP API risk) for every API call accessing user-specific or tenant-specific data. Authorization checks shall not rely solely on authenticated identity; they shall validate the authenticated principal's permission to access the specific requested resource.

PS-9.5  All APIs shall be inventoried in the API catalog maintained by Enterprise Architecture, with documentation (OpenAPI/Swagger specifications) for each endpoint. Undocumented or unregistered APIs ("shadow APIs") in production are prohibited. The API catalog shall be reviewed quarterly to identify and address shadow APIs and deprecated APIs that should be retired.

PS-9.6  API request and response validation shall enforce strict schemas. APIs shall reject requests with unexpected fields, oversized payloads, or invalid data types. Excessive data exposure (returning more data than required by the consumer) is a vulnerability class that shall be specifically reviewed during API design.

## 5.10  Container and Cloud-Native Security

PS-10.1  All container images deployed in BFS environments shall be built from approved base images sourced from BFS-managed container registries or vendor-verified registries. Pulling base images directly from public registries (Docker Hub public, etc.) for production workloads is prohibited; images must be mirrored to the BFS approved registry after security validation.

PS-10.2  All container images shall be scanned for vulnerabilities before deployment using container image scanning tools (e.g., Trivy, Clair, Snyk Container, or AWS ECR scanning). Images with HIGH or CRITICAL severity vulnerabilities in the base layer or application layer shall not be deployed to production without remediation or documented compensating controls.

PS-10.3  Container images shall follow security best practices: built from minimal base images (distroless, Alpine, or scratch where feasible); run as non-root users; do not include build tools or shells in production images where avoidable; do not embed secrets or sensitive configuration; use specific version tags rather than 'latest' for reproducibility.

PS-10.4  Kubernetes and container orchestration platforms shall enforce admission control policies preventing deployment of: containers running as root without explicit justification; privileged containers; containers with hostPath mounts to sensitive paths; containers without resource limits; containers from unapproved registries.

PS-10.5  Container runtime security monitoring (e.g., Falco, runtime security agents) shall be deployed in production container environments hosting TIER 1 applications, detecting anomalous container behavior including unexpected process execution, suspicious network connections, and file system tampering.

## 5.11  AI-Assisted Development Tool Governance

PS-11.1  Developer use of AI-assisted development tools (GitHub Copilot, Cursor, Claude Code, ChatGPT, Codeium, and similar) shall be governed by an approved AI Tool Register maintained by the CISO. Only tools on the approved register may be used with BFS source code. Tools requesting code as context shall be evaluated for their data handling commitments before approval.

PS-11.2  BFS-approved AI development tools shall be configured with: enterprise editions disabling code retention for model training (e.g., GitHub Copilot Business or Enterprise; not the consumer Pro version when used with BFS code); code suggestions filtered for known-vulnerable patterns where the tool supports such filtering; usage attribution to the individual developer for audit purposes.

PS-11.3  Developers shall not paste BFS CONFIDENTIAL or CRITICAL source code, customer data, internal credentials, business logic implementing regulatory controls, or proprietary algorithms into general-purpose AI chat tools (consumer ChatGPT, Claude, Gemini, etc.) that retain inputs for model training. Use of such tools for BFS coding work is prohibited unless via the approved enterprise AI gateway.

PS-11.4  All AI-generated code introduced into BFS applications shall be subject to the same review, testing, and quality gates as human-written code: peer review, SAST scanning, SCA analysis, and (for TIER 1/2) threat model consideration. Developers remain accountable for the security and correctness of code they accept from AI tools.

PS-11.5  Code generated by AI tools shall be specifically reviewed for: hallucinated dependencies (AI tools occasionally suggest non-existent packages, creating supply chain attack opportunities through name squatting); insecure default patterns; missing input validation; missing error handling; and inappropriate use of cryptographic primitives.

PS-11.6  Application Security shall conduct quarterly reviews of AI-assisted development practices, including: trends in AI tool usage, observed security issues attributable to AI-generated code, evolution of AI tool capabilities and vendor commitments, and updates to the approved AI Tool Register.

## 5.12  Separation of Development, Test, and Production Environments

PS-12.1  Development, test, staging, and production environments shall be physically or logically segregated. Direct network access from development to production environments is prohibited; production data shall not flow back into development environments without authorization and appropriate masking.

PS-12.2  Production data — including personal data, customer transactions, financial records, and any data classified CONFIDENTIAL or higher — shall not be used in development or test environments without anonymization, masking, or tokenization that preserves data utility while removing identifying or sensitive elements. Data masking standards shall be defined by the DPO and Application Security.

PS-12.3  Developer accounts shall not have administrative access to production environments. Production deployments shall execute through CI/CD pipelines with appropriate approval gates, not through direct developer access. Emergency production access (break-glass) shall be governed by the privileged access procedures in BFS-ISP-005.

PS-12.4  Test environments containing real customer data, even if masked, shall apply controls equivalent to the production environment for the relevant data classification. Reduced security in test environments holding sensitive data is a common breach vector that shall be specifically guarded against.

## 5.13  Outsourced Development Security

PS-13.1  Software developed by third-party development partners on behalf of BFS shall comply with this policy in full. Outsourced development arrangements shall include contractual obligations for: SSDLC compliance; secure coding standards; threat modeling for TIER 1/2 applications; SAST/DAST/SCA execution; provision of source code to BFS; and security testing acceptance criteria before delivery acceptance.

PS-13.2  All outsourced development source code shall be delivered to and stored in BFS-controlled source code repositories. Outsourced developers shall not retain BFS code beyond the engagement; contractual data destruction obligations apply per BFS-ISP-015.

PS-13.3  Software delivered by third-party developers shall undergo independent security validation by BFS Application Security before production acceptance. Validation shall include independent SAST/DAST scanning, code review of security-critical components, and (for TIER 1) penetration testing.

## 5.14  Acquired Software Security Evaluation

PS-14.1  Commercial software (COTS, SaaS) acquired for use in BFS environments shall be evaluated for security as part of the vendor risk assessment defined in BFS-ISP-015 (Service Provider Management). Evaluation shall include: vendor secure development practices; product security certifications (SOC 2, ISO 27001); known vulnerability history; security patch frequency; and security feature alignment with BFS requirements.

PS-14.2  Acquired software handling TIER 1 application data shall be subject to additional security evaluation including: review of the vendor's most recent penetration test executive summary; vendor responses to a security questionnaire; review of the vendor's published Common Vulnerabilities and Exposures history; and where possible, BFS-conducted or commissioned security assessment of the product.

PS-14.3  Acquired software shall be deployed in a security-hardened configuration per BFS-ISP-004 (Secure Configuration), with default credentials changed, unnecessary features disabled, and security features (encryption, MFA, audit logging) enabled. Vendor-default configurations shall not be assumed secure.

# 6.  PROCEDURES

## 6.1  Application Onboarding to SSDLC Procedure

Every new BFS application shall be onboarded to the SSDLC through this procedure:

Project Initiation Notification: The Application Owner notifies Application Security at project initiation, providing: project name, business purpose, target users, anticipated data handling, technology stack, integration scope, and target release date.

Application Risk Tier Assignment: Application Security assesses the project against the tier criteria in Section 4.1 and assigns the initial Risk Tier. The tier assignment is documented in the Application Inventory and communicated to the project team.

SSDLC Activity Plan: Application Security and the project team agree on the specific SSDLC activities required for the assigned tier, including planned dates for threat modeling, security architecture review, security testing, and penetration testing (TIER 1).

Source Code Repository Provisioning: A new source code repository is provisioned in GitHub Enterprise with: branch protection on production branches; mandatory code review; CI/CD pipeline configured with security gates (SAST, SCA, secret scanning); access restricted to assigned developers per BFS-ISP-005.

CI/CD Pipeline Configuration: The CI/CD pipeline is configured with the security gates required for the application tier, including: pre-commit secret scanning; SAST scanning; SCA dependency scanning; container image scanning (if containerized); deployment approval gates.

Security Training Verification: Application Security verifies that all developers assigned to the project have current secure coding training completion records (per BFS-ISP-014).

Application Inventory Registration: The application is registered in the Application Inventory with all required metadata, status set to 'In Development'.

## 6.2  Threat Modeling Workshop Procedure

For TIER 1 and TIER 2 applications, the threat modeling activity shall follow this procedure:

Workshop Scheduling: Application Security schedules a threat modeling workshop during the design phase, before significant implementation work begins. Mandatory attendees: lead developer/architect, Application Security representative, Application Owner or product representative. Optional: Privacy representative (DPO) if PII is processed.

Pre-Workshop Preparation: The development team prepares: high-level architecture diagram showing components, data flows, and trust boundaries; description of authentication/authorization mechanisms; list of integrations and data sources/sinks; data classification of processed information.

STRIDE Analysis Walkthrough: The workshop walks through each component and data flow, applying STRIDE categories (Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege). Identified threats are documented with severity assessment.

Control Identification: For each significant threat (Medium severity or higher), the team identifies the security control(s) that will mitigate the threat. Controls may be design choices, framework features, custom code, infrastructure controls, or organizational controls.

Residual Risk Documentation: Threats that cannot be fully mitigated through controls are documented as residual risks with explicit acceptance by the Application Owner. Residual CRITICAL or HIGH risks require CISO acceptance.

Threat Model Documentation: A formal Threat Model document is produced summarizing: scope and assumptions, identified threats by category, planned mitigating controls, and residual risk acceptance. The document is approved by Application Security before the design phase is closed.

Threat Model Maintenance: The threat model is reviewed at each major release and refreshed when material architectural changes occur. The most recent threat model is stored in the application's documentation repository.

## 6.3  Vulnerability Triage and Remediation Procedure

Security findings from SAST, DAST, SCA, container scanning, and penetration testing shall be triaged and remediated through this procedure:

Finding Aggregation: Security tool findings are aggregated in the Application Security Vulnerability Management Platform, deduplicated across tools, and assigned to the responsible application team.

Initial Triage (within 5 business days of generation): The application team reviews each finding and classifies it as: Confirmed (genuine vulnerability requiring remediation), False Positive (not actually exploitable in this context, suppression with justification), or Risk Accepted (genuine but accepted with compensating controls).

Severity Assessment: Confirmed findings are assigned an effective severity considering: tool-reported severity, application risk tier, exploitability in the specific application context, presence of compensating controls, and external exposure.

Remediation SLA Assignment: SLAs are assigned per BFS-ISP-007 (Vulnerability Management): CRITICAL/KEV in TIER 1 — 24 hours; CRITICAL in TIER 2 — 7 days; HIGH in TIER 1/2 — 30 days; MEDIUM — 90 days; LOW — best effort.

Remediation Tracking: Remediation work is tracked in the engineering work management system (Jira or equivalent) with security finding traceability. SLA breaches generate automated escalation alerts to engineering management and Application Security.

False Positive Suppression Review: False positive suppressions are reviewed quarterly by Application Security to ensure suppressions are still valid and not masking newly genuine issues from code changes.

Risk Acceptance Documentation: Risk acceptances for findings exceeding remediation SLAs require: written justification, identified compensating controls, defined risk acceptance period (typically 90 days max), and approval per the authority matrix in Section 11.

Verification of Remediation: After remediation, the original finding is re-tested (re-scanned or re-tested by the original method) to verify the vulnerability is no longer present before the finding is closed.

## 6.4  Pre-Production Security Gate Procedure

Before any TIER 1 or TIER 2 application is deployed to production — whether initial release or significant update — the following pre-production security gate shall be executed:

SSDLC Completeness Check: Application Security verifies that all mandatory SSDLC activities for the application's tier have been completed and documented: threat model current, secure coding standards adhered to in PR reviews, all security gates passed in CI/CD.

Outstanding Security Findings Review: Application Security reviews all open security findings from SAST, SCA, DAST, and container scans for the application. No HIGH or CRITICAL findings shall remain unresolved or without approved risk acceptance.

Penetration Test Status (TIER 1): For TIER 1 applications, the latest penetration test report is reviewed. For initial release: penetration test must be complete with all CRITICAL findings remediated. For updates: focused pen test on changed scope completed if material changes occurred.

Production Configuration Validation: The production deployment configuration is reviewed for: secure secrets management (no embedded credentials), production-appropriate logging (no debug/verbose logging that exposes data), production security headers, TLS configuration, and disabled debug/test endpoints.

Operational Readiness Check: SOC and Application Operations confirm: monitoring and alerting configured for the new application; runbook documentation in place; incident response contact information current; backup and recovery procedures defined per BFS-ISP-011.

Gate Decision: Application Security issues a Pre-Production Security Approval (or rejection) within five (5) business days of complete submission. Rejections shall identify specific blockers and required remediation.

Production Deployment: Upon approval, the deployment proceeds via the CI/CD pipeline. Manual override of the security gate requires CISO and Head of Software Engineering joint written approval; overrides are tracked and reported as a KRI.

# 7.  GUIDELINES

## 7.1  Secure Coding Best Practices by Vulnerability Class

Injection Prevention: Always use parameterized queries / prepared statements for database access — string concatenation of user input into SQL is the canonical SQL injection vulnerability. For NoSQL, use approved query builders that prevent injection. For LDAP, escape special characters per RFC 4515. For OS command execution, prefer language-native APIs (e.g., Java ProcessBuilder with arguments) over shell command construction.

Authentication Strength: Use BFS-approved authentication libraries and frameworks (Spring Security, NextAuth, etc.) — do not implement authentication primitives custom. Apply the BFS password policy (length, complexity, history) consistently. Implement MFA for all sensitive operations. Use secure session management with appropriate session timeout, secure cookie attributes (HttpOnly, Secure, SameSite), and session invalidation on logout.

Access Control: Implement authorization checks at the data access layer (defense in depth), not solely at the UI/controller layer. Always verify the authenticated principal's permission to access the specific requested resource (object-level authorization). Use centralized authorization frameworks (Spring Security @PreAuthorize, OpenFGA, Permit.io patterns) rather than scattered authorization logic.

Cryptography: Use approved cryptographic libraries from your language ecosystem (Java JCE with strong providers, Node.js crypto, Python cryptography library). Use only approved algorithms per BFS Cryptography Policy (when issued). Do not implement cryptographic primitives custom. Use authenticated encryption (AES-GCM, ChaCha20-Poly1305) for confidentiality+integrity. Use established protocols (TLS 1.3) over custom protocols. Manage keys per BFS-ISP-006.

Input Validation and Output Encoding: Validate all input on the server side (client-side validation is for UX only, never security). Use allowlist validation (define what is permitted) over denylist validation (define what is forbidden). Encode output appropriate to the destination context (HTML encoding for HTML output, JavaScript encoding for JS contexts, URL encoding for URL contexts). Use template engines with auto-escaping enabled.

Error Handling and Logging: Catch and handle expected exceptions; do not let them propagate as stack traces to users. Log security-relevant events (authentication, authorization, sensitive data access, configuration changes) per BFS-ISP-008. Do not log sensitive data (passwords, full credit card numbers, full personal identifiers) — use redaction or tokenization in logs.

## 7.2  API Design Security Guidelines

Authentication First: Design APIs assuming authentication is required by default; explicitly document and approve any anonymous endpoints. Use OAuth 2.0 with appropriate flows: Authorization Code with PKCE for user-facing applications, Client Credentials for service-to-service. Avoid Resource Owner Password Credentials grant.

Authorization Granularity: Design authorization at the operation level (function-level authorization) AND at the data level (object-level authorization). The principle: 'Just because you can call this endpoint does not mean you can access this specific resource.'

Rate Limiting and Resource Consumption: All APIs shall enforce rate limits at the API gateway. Limits may vary by endpoint sensitivity and user tier. Implement payload size limits (e.g., 1MB default, larger for explicit upload endpoints). Implement query complexity limits for GraphQL endpoints to prevent denial-of-service through expensive queries.

Versioning and Deprecation: Version APIs explicitly (URL path versioning preferred: /v1/, /v2/). Maintain deprecation timelines for old versions, with security patches but no new features. Document the supported API version matrix in the API catalog.

Sensitive Data Exposure: Design API responses to return only the data the consumer needs. Avoid 'select *' patterns that return all entity attributes. Use response shaping or projections to limit returned fields. Sensitive fields (PII, financial details) should be opt-in via explicit query parameters, not default responses.

## 7.3  AI/LLM Application Security Guidelines

Prompt Injection Defense: Treat all user input to LLM-integrated applications as untrusted. Use parameterized prompts where the user input is clearly delimited from system instructions. Apply input filtering for known prompt injection patterns. Use guardrail systems (NeMo Guardrails per the MSAMS architecture) to validate inputs and outputs at multiple checkpoints.

Output Validation: Do not blindly trust LLM outputs. Validate generated outputs against expected schemas. For LLM-generated database queries, code, or commands, apply the same security review as human-generated equivalents. Implement output guardrails that reject responses containing PII, financial advice violations, or policy-prohibited content.

Tool Access Controls: When LLM agents can invoke tools (function calling, agent frameworks), apply least-privilege to tool access. Each tool should enforce its own authorization independent of the LLM's reasoning. Logged audit trail of all tool invocations is mandatory.

Training Data Governance: Do not include BFS confidential or customer data in fine-tuning datasets without explicit authorization, data minimization, and anonymization. Be aware that information in training data can be extracted from models — sensitive data exposure risk persists beyond the training event.

Model Source Provenance: Use AI models from approved sources only. Models from unverified sources (random Hugging Face uploads, etc.) may contain backdoors, malicious behavior, or have been trained on inappropriate data. Maintain a Model Inventory analogous to SBOM for AI components.

## 7.4  Container Security Guidelines

Minimal Base Images: Prefer distroless images (gcr.io/distroless) or minimal images (Alpine) over full OS images (Ubuntu, Debian) for production workloads. Smaller attack surface, fewer included CVEs, faster scanning. Build-stage and runtime-stage separation in Dockerfile reduces image size further.

Layer Caching Awareness: Order Dockerfile instructions to maximize layer cache reuse, but be aware that secrets injected into early layers persist in image history even if removed in later layers. Never use ARG/ENV for secrets; use BuildKit secret mounts or runtime secret injection.

Non-Root by Default: Add a non-root user to the image and switch to it before the application runs (USER directive). Many runtime security policies enforce non-root execution. Some images (notably nginx, Node.js base images) require additional configuration to run as non-root.

Image Signing: Sign production container images using Cosign or Notation, and configure runtime admission control to verify signatures before deployment. Image signing prevents supply chain attacks where an unauthorized image is substituted.

Vulnerability Scanning Cadence: Scan images at build time, before registry push, and continuously while in the registry (vulnerabilities can emerge in components that were clean at build time). Re-scan production-deployed images at least daily and on every new CVE disclosure for major components.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of the application security program. Reviews significant application security incidents and emerging application threats. Reviews quarterly application security KRIs. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise application security program. Ensures adequate investment in application security tooling, training, and personnel. Reviews monthly application security KPI reports. Co-approves SSDLC manual gate overrides. Approves this policy jointly with CISO. |

| Chief Information Security Officer (CISO) | Responsible for design and enforcement of this policy. Maintains the BFS Secure Coding Standards. Approves Application Risk Tier assignments and exceptions. Reviews threat models for TIER 1 applications. Maintains the AI Tool Register. Signs off on annual application penetration test scope. Reviews HIGH and CRITICAL application security findings. |

| Chief Technology Officer (CTO) / Head of Software Engineering | Owns the engineering practices and developer enablement for SSDLC compliance. Ensures development teams have capacity for security activities (threat modeling, remediation). Co-approves SSDLC manual gate overrides. Champions security as a core engineering quality attribute. |

| Application Security Team | Operates the application security program day-to-day: conducts threat modeling workshops; manages SAST/DAST/SCA tooling; triages security findings; conducts security architecture reviews; coordinates penetration testing; maintains the Application Inventory; provides security consulting to development teams. |

| Software Development Teams | Responsible for adherence to BFS Secure Coding Standards in all code authored. Participate actively in threat modeling for TIER 1/2 projects. Remediate security findings within SLAs. Complete required secure coding training. Use only approved AI development tools. |

| DevSecOps / Platform Engineering | Operates the CI/CD pipeline and security gate enforcement. Maintains container scanning, signing, and runtime security tooling. Ensures secrets management infrastructure is available and used correctly. Develops and maintains the developer security tooling. |

| Enterprise Architecture | Maintains application and API catalogs. Reviews TIER 1 architectural designs for alignment with BFS architectural standards. Defines reference architectures incorporating security best practices. Coordinates with Application Security on security architecture reviews. |

| Quality Assurance | Incorporates security test cases into functional test suites. Coordinates security testing with Application Security. Validates remediation of fixed vulnerabilities through retest. |

| Application Owners (Business) | Accountable for the security posture of their applications. Approve Risk Tier classifications. Make risk acceptance decisions for accepted residual risks. Allocate budget for security activities including penetration testing and remediation work. |

| Data Privacy Officer (DPO) | Reviews threat models and architectures for applications processing personal data. Approves data minimization and anonymization approaches for development/test environments. Reviews privacy implications of AI-integrated applications. |

| Security Operations Center (SOC) | Monitors application security events forwarded to SIEM. Responds to runtime security alerts from container security tools. Coordinates with Application Security on incidents involving application vulnerabilities. |

| Internal Audit | Independently assesses SSDLC compliance, secure coding practice adherence, security tool effectiveness, vulnerability remediation timeliness, and AI development tool governance. Reports to the Audit and Risk Committee. |

# 9.  REGULATORY COMPLIANCE

## 9.1  PCI DSS v4.0 Requirement 6 — Develop and Maintain Secure Systems and Software

This policy directly implements PCI DSS v4.0 Requirement 6 in its entirety:

PCI DSS Req. 6.1 — Processes and mechanisms for developing and maintaining secure systems and software are defined and understood: implemented by the SSDLC framework (Section 4) and Secure Coding Standards (Section 5.2);

PCI DSS Req. 6.2 — Bespoke and custom software are developed securely: implemented by the secure development requirements throughout Section 5;

PCI DSS Req. 6.2.4 — Software engineering techniques or other methods are defined and used by software development personnel: implemented by Sections 5.2 (secure coding) and 5.3 (threat modeling);

PCI DSS Req. 6.3 — Security vulnerabilities are identified and addressed: implemented by SAST (5.5), SCA (5.6), DAST (5.7), and the vulnerability remediation procedure (6.3);

PCI DSS Req. 6.3.2 — Inventory of bespoke and custom software components is maintained: implemented by the Application Inventory (5.1) and SBOM requirements (5.6.3);

PCI DSS Req. 6.4 — Public-facing web applications are protected against attacks: implemented by DAST (5.7), penetration testing (5.8), API security (5.9), and WAF deployment (cross-reference BFS-ISP-013);

PCI DSS Req. 6.5 — Changes to all system components are managed securely: implemented by SSDLC governance, environment separation (5.12), and CI/CD gate enforcement (6.4).

## 9.2  BSP Circulars 1140 and 1048

Application security is foundational to BSP IT risk management compliance:

BSP Circular 1140 (MORB IT Risk Management) requires BSP-supervised institutions to implement secure development practices for systems supporting banking operations. The SSDLC framework directly addresses this expectation;

BSP Circular 1048 (Cybersecurity Risk Management) requires institutions to implement application-layer security controls including secure coding, vulnerability management, and security testing — implemented by Sections 5.2, 5.5–5.8 of this policy;

Internet banking and mobile banking applications, as cited in BSP guidance for digital channels, must implement strong authentication, secure session management, and data protection controls — addressed by the TIER 1 SSDLC requirements;

BSP technology risk examinations review evidence of secure development practices, including penetration test reports, SAST/DAST scan results, and remediation tracking — all maintained per this policy.

## 9.3  Philippine Data Privacy Act (RA 10173) — Privacy by Design

The DPA imposes Privacy by Design and Privacy by Default obligations relevant to application development:

Section 20 (Security of Personal Information) and the IRR require organizational, physical, and technical security measures — implemented in part through secure application development;

Privacy Impact Assessment (PIA) is required for applications processing personal data, particularly for new processing activities or significant changes — initiated during SSDLC Phase 1 (Section 4.2);

Threat modeling (Section 5.3) shall include privacy threats (information disclosure of personal data) for applications processing PII;

Data minimization in development/test environments (Section 5.12.2) implements the DPA proportionality principle, limiting personal data exposure to what is genuinely necessary.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous CI/CD pipeline gate monitoring with automated reporting of pipeline overrides;

Daily SAST/SCA scan execution monitoring across all active repositories;

Weekly Application Security review of vulnerability finding aging and SLA compliance;

Monthly Application Inventory completeness audit (registered applications vs. observed deployments);

Monthly application security KPI report to CISO and Head of Software Engineering;

Quarterly threat model currency review for TIER 1 applications;

Quarterly AI Development Tool Register review by CISO;

Annual penetration testing schedule completion tracking;

Annual Internal Audit assessment of SSDLC compliance.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Application Inventory completeness (registered vs. observed in production) | 100% | Monthly |

| TIER 1 applications with current threat model (within 12 months) | 100% | Monthly |

| TIER 1 applications with annual penetration test completed | 100% | Annual |

| TIER 1 SAST/SCA/DAST gates enabled in CI/CD | 100% | Monthly |

| Developers with current secure coding training (TIER 1/2 repository access) | 100% | Monthly |

| CRITICAL/KEV vulnerability remediation in TIER 1 within 24 hours | 100% | Per finding |

| HIGH vulnerability remediation in TIER 1 within 30 days | ≥ 95% | Monthly |

| Pre-production security gate completion before production deployment | 100% | Per deployment |

| CI/CD security gate manual overrides (target: minimal use) | < 5 per quarter | Quarterly |

| Hardcoded secrets detected in committed code (target: zero) | 0 | Monthly |

| TIER 1 applications with SBOM generated per build | 100% | Monthly |

| Outsourced TIER 1 deliverables passing independent security validation | 100% | Per delivery |

| AI development tool usage on Approved Register only | 100% | Quarterly |

| False positive suppression review completion | Quarterly | Quarterly |

| Penetration test CRITICAL findings remediated before production release | 100% | Per release |

| Application security training completion (annual mandatory) | 100% | Annual |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Late triage of security findings; failure to update Application Inventory after a deployment; missed secure coding training without HR-approved deferral. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Disabling SAST/SCA gates without approval; deploying TIER 2 application without completing required SSDLC activities; suppressing security findings without justification; using unapproved AI tool with BFS source code. | Formal warning; immediate remediation; access review; mandatory training; documented in performance review. |

| Serious | Deploying TIER 1 application to production without security gate approval; introducing hardcoded production credentials in source code; bypassing pre-production security gate without CISO authorization; pasting CONFIDENTIAL BFS source code into consumer AI tools. | Suspension of code commit access pending investigation; formal HR disciplinary process; mandatory CISO notification; potential removal from TIER 1 project access. |

| Critical / Legal | Deliberately introducing backdoors or malicious code into BFS applications; exfiltrating BFS proprietary source code or customer data via AI tools or external repositories; disabling security controls in production to facilitate unauthorized access. | Immediate termination; referral to law enforcement; prosecution under RA 10175 (Cybercrime Prevention Act); civil action for damages; mandatory NPC and BSP notification. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Application security exceptions create unmitigated vulnerability exposure. Every exception must be formally justified, risk-assessed, time-bounded, and accompanied by documented compensating controls. Exceptions to the SSDLC are not waivers of the security obligation — they are time-limited deferrals of specific activities with the obligation persisting.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Condition / Example | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| Threat Model Deferral | TIER 2 threat model not completed by design phase end due to significant scope clarification needed. | 30 days; threat model must complete before next major release | CISO + Application Security Manager |

| SAST Finding Suppression | SAST flags pattern that is genuinely false positive in this context. | Permanent (with quarterly review) | Application Security Manager; documented in suppression register |

| DAST CRITICAL in Production | CRITICAL DAST finding in production discovered post-deployment; remediation requires more than 7 days. | 30 days max with WAF compensating control | CISO; daily progress reporting |

| Penetration Test Deferral | Annual TIER 1 penetration test deferred due to vendor scheduling or major refactor in progress. | 60 days max from original due date | CISO |

| Pre-Production Gate Override | Critical business need to deploy with unresolved HIGH finding (e.g., regulatory deadline). | Single deployment; remediation within 14 days | CISO + CIO + Head of Software Engineering joint approval |

| Hardcoded Secret Exception | Legacy code with embedded credential pending refactoring to secrets manager. | 30 days; secret must be rotated before exception expiry | CISO; documented remediation plan |

| AI Tool Use (Non-Approved) | Specific use case requiring evaluation tool not yet on approved register. | 30 days for evaluation; non-CONFIDENTIAL code only | CISO |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) deploying TIER 1 CRITICAL applications to production without any threat model or security testing; (b) using BFS source code with consumer AI tools that retain inputs for model training; (c) committing hardcoded production credentials to source repositories accessible to non-authorized personnel; (d) disabling production WAF, IPS, or runtime security agents protecting TIER 1 applications; (e) bypassing the BSP-required customer authentication controls in internet or mobile banking applications. |

| --- |

## 11.3  Exception Process

Application Owner or Development Team submits an Application Security Exception Request via the ITSM portal, providing: specific policy requirement, application name and tier, technical justification, risk assessment, compensating controls, duration, and remediation plan.

Application Security reviews compensating controls. CISO approves all exceptions for TIER 1 and TIER 2 applications. Application Security Manager approves SAST suppressions and TIER 3 exceptions.

Approved exceptions logged in the Application Security Exception Register with approval date, expiry, compensating controls, and remediation commitments.

All exceptions reviewed monthly by Application Security and CISO Office. Expired exceptions treated as policy violations subject to enforcement.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon:

Significant evolution in BFS technology stack — new programming languages, frameworks, container platforms, or cloud platforms requiring updated standards;

Material changes in the application threat landscape — new OWASP Top 10 release, new API Top 10 release, emerging AI/LLM attack patterns;

New or amended PCI DSS versions, BSP circulars, or NPC issuances affecting application security requirements;

Significant application security incident at BFS revealing gaps in current SSDLC controls;

Major evolution in AI-assisted development tooling capabilities or governance practices;

Material findings from Internal Audit or regulatory examination relating to application security.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Aligned with CIS Controls v8 Control 16, ISO/IEC 27001:2022, OWASP ASVS/SAMM, OWASP Top 10 (2021), OWASP API Security Top 10 (2023), PCI DSS v4.0 Req. 6, NIST SP 800-218, NIST SP 800-190, and BSP Circulars 1140 and 1048. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 16 safeguards to ISO/IEC 27001:2022 Annex A controls, with PCI DSS v4.0 Requirement 6 sub-requirement cross-references.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 16.1 | Establish and Maintain a Secure Application Development Process | A.8.25 | Secure development life cycle | IG2 |

| 16.2 | Establish and Maintain a Process to Accept and Address Software Vulnerabilities | A.8.8 | Management of technical vulnerabilities | IG2 |

| 16.3 | Perform Root Cause Analysis on Security Vulnerabilities | A.8.25 | Secure development life cycle | IG2 |

| 16.4 | Establish and Manage an Inventory of Third-Party Software Components | A.8.25 | Secure development life cycle | IG2 |

| 16.5 | Use Up-to-Date and Trusted Third-Party Software Components | A.8.8 | Management of technical vulnerabilities | IG2 |

| 16.6 | Establish and Maintain a Severity Rating System and Process for Application Vulnerabilities | A.8.8 | Management of technical vulnerabilities | IG2 |

| 16.7 | Use Standard Hardening Configuration Templates for Application Infrastructure | A.8.9 | Configuration management | IG2 |

| 16.8 | Separate Production and Non-Production Systems | A.8.31 | Separation of development, test and production environments | IG2 |

| 16.9 | Train Developers in Application Security Concepts and Secure Coding | A.6.3 | Information security awareness, education and training | IG2 |

| 16.10 | Apply Secure Design Principles in Application Architectures | A.8.27 | Secure system architecture and engineering principles | IG2 |

| 16.11 | Leverage Vetted Modules or Services for Application Security Components | A.8.27 | Secure system architecture and engineering principles | IG2 |

| 16.12 | Implement Code-Level Security Checks | A.8.28 | Secure coding | IG3 |

| 16.13 | Conduct Application Penetration Testing | A.8.29 | Security testing in development and acceptance | IG3 |

| 16.14 | Conduct Threat Modeling | A.8.27 | Secure system architecture and engineering principles | IG3 |

| N/A | Application security requirements specification | A.8.26 | Application security requirements | All |

| N/A | Outsourced development security | A.8.30 | Outsourced development | All |

| N/A | Test information protection — masking production data | A.8.33 | Test information | All |

| N/A | Change management for application changes | A.8.32 | Change management | All |

| N/A | Audit testing protection during application security audits | A.8.34 | Protection of information systems during audit testing | All |

| N/A | PCI DSS Req. 6.2 — bespoke and custom software developed securely | A.8.25 | Secure development life cycle | All |

| N/A | PCI DSS Req. 6.3 — vulnerabilities identified and addressed | A.8.8 | Management of technical vulnerabilities | All |

| N/A | PCI DSS Req. 6.4 — public-facing web applications protected | A.8.26 | Application security requirements | All |

| N/A | PCI DSS Req. 6.5 — changes managed securely | A.8.32 | Change management | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate maturity; IG3 = Advanced. BFS targets full IG2 compliance with IG3 controls (code-level security checks, application penetration testing, formal threat modeling) implemented for all TIER 1 CRITICAL applications.

# APPENDIX B:  Application Inventory — Required Attributes

Each application registered in the BFS Application Inventory shall include the following attributes at minimum. The Application Inventory is maintained by the Application Security team in coordination with the CMDB.

| Attribute | Description / Example Values |

| --- | --- |

| Application ID | Unique CMDB identifier (e.g., BFS-APP-0123) |

| Application Name | Common business name and full system name |

| Business Owner | Named business unit head or product owner accountable for the application |

| Technical Owner | Named engineering lead or development team manager |

| Application Risk Tier | TIER 1 CRITICAL / TIER 2 HIGH / TIER 3 MEDIUM / TIER 4 LOW |

| Data Classification Processed | Highest classification: TOP SECRET / CONFIDENTIAL / INTERNAL / PUBLIC |

| Personal Data Processing | Yes / No. If Yes: categories and approximate volume; PIA reference |

| PCI DSS Scope | In-scope / Out-of-scope for Cardholder Data Environment |

| Regulatory Applicability | BSP-supervised / RA 10173 / PCI DSS / SEC / Other |

| Technology Stack | Primary languages, frameworks, runtime, database (e.g., Java 17, Spring Boot 3.x, PostgreSQL 15, Kubernetes) |

| Source Code Repository | URL of GitHub Enterprise repository |

| Application Architecture Type | Monolith / Microservices / Serverless / Hybrid |

| Deployment Environments | Development / Test / Staging / Production / DR; cloud (AWS) or on-premise |

| External Exposure | Internet-facing / Internal-only / Partner-facing |

| API Endpoints | Number of exposed APIs; OpenAPI specification location |

| Authentication Mechanism | SSO (SAML/OIDC) / OAuth 2.0 / mTLS / Other; MFA enforced (Y/N) |

| SSDLC Phase Status | In Development / In Testing / In Production / In Maintenance / Retired |

| Last Threat Model Date | Date of most recent threat model completion (TIER 1/2) |

| Last Penetration Test Date | Date of most recent penetration test (TIER 1) |

| Last Major Security Review | Date of most recent comprehensive security review |

| Outstanding HIGH/CRITICAL Findings | Count of unresolved HIGH or CRITICAL security findings |

| SBOM Location | Location of most recent SBOM (TIER 1 mandatory) |

| Production WAF Coverage | WAF policy name and version protecting the application |

| Container Image Registry | Registry path for container images (containerized apps) |

| AI/LLM Components | Yes / No. If Yes: components and integration pattern (e.g., LiteLLM, Hermes Agent, RAG) |

| Outsourced Development | Yes / No. If Yes: third-party development partner identification |

| Application Status | Active / In Migration / Deprecated / Retired |

| Retirement Date | If retired or planned: date and decommissioning reference |

# APPENDIX C:  Quick Reference Card

## C.1  SSDLC Activity Quick Reference by Tier

| Activity | TIER 1 | TIER 2 | TIER 3 | TIER 4 |

| --- | --- | --- | --- | --- |

| Threat Modeling | Mandatory | Mandatory | Recommended | Optional |

| SAST in CI/CD | Mandatory | Mandatory | Mandatory | Recommended |

| SCA in CI/CD | Mandatory | Mandatory | Mandatory | Mandatory |

| Container Image Scan | Mandatory | Mandatory | Mandatory | Recommended |

| DAST (pre-prod) | Mandatory | Mandatory (internet-facing) | Recommended | Optional |

| Penetration Test | Mandatory annual | Recommended biennial | Optional | Optional |

| SBOM Generation | Mandatory per build | Recommended | Optional | Optional |

| Independent Validation (outsourced) | Mandatory | Mandatory | Recommended | Optional |

| Pre-Production Gate | Mandatory | Mandatory | Recommended | Optional |

| Annual Threat Model Refresh | Mandatory | Mandatory | Optional | Optional |

## C.2  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| New application onboarding to SSDLC | Application Security Team | appsec@bfs.com.ph |

| Threat modeling workshop scheduling | Application Security Team | appsec@bfs.com.ph |

| Security finding triage and remediation | Application Security + Dev Team | ITSM Portal — Security Finding |

| Pre-production security gate | Application Security | appsec@bfs.com.ph |

| AI development tool approval request | CISO Office | ciso@bfs.com.ph |

| Penetration testing coordination | CISO + Application Security | ciso@bfs.com.ph |

| Outsourced code security validation | Application Security | appsec@bfs.com.ph |

| Secure coding training enrollment | Security Awareness Program | secawareness@bfs.com.ph |

| Security exception request | CISO Office | ciso@bfs.com.ph |

| Application security incident | SOC + CISO (URGENT) | soc@bfs.com.ph \| 24/7 hotline |

## C.3  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| TIER 1 CRITICAL/KEV finding remediation | Within 24 hours |

| TIER 1/2 CRITICAL DAST finding in production — WAF compensating control | Within 24 hours |

| TIER 1 CRITICAL DAST finding in production — full remediation | Within 7 days |

| TIER 2 CRITICAL DAST finding in production — full remediation | Within 30 days |

| TIER 1/2 HIGH finding remediation | Within 30 days |

| MEDIUM finding remediation | Within 90 days |

| Security finding initial triage | Within 5 business days |

| TIER 1 annual penetration test | Annual |

| TIER 1 threat model refresh | Annual + on material changes |

| Pre-production security gate decision | Within 5 business days of submission |

| Hardcoded secret detection — credential rotation | Immediately upon detection |

| Outsourced TIER 1/2 code — independent security validation | Before production acceptance |

| Quarterly false positive suppression review | Quarterly |

| Quarterly AI Tool Register review | Quarterly |

| Annual SAST/SCA/DAST tool configuration review | Annual |

| Annual secure coding standards update | Annual |

| Application Inventory review | Quarterly |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-016  |  Application Software Security Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
