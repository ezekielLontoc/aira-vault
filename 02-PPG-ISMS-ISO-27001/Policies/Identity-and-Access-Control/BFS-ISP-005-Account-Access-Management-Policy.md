---
title: "BFS-ISP-005-Account-Access-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Identity-and-Access-Control/BFS-ISP-005-Account-Access-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Identity-and-Access-Control"
aliases:
  - "BFS-ISP-005-Account-Access-Management-Policy"
creator: "Un-named"
created: "2026-04-11T03:32:00Z"
modified: "2026-04-12T02:26:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>ACCOUNT AND ACCESS<br>MANAGEMENT POLICY<br>Identity Lifecycle, Privileged Access, and Authentication Governance<br>Policy Reference: BFS-ISP-005<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 5)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140  \|  PCI DSS v4.0<br>Companion to BFS-ISP-001 \| BFS-ISP-002 \| BFS-ISP-003 \| BFS-ISP-004 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Account and Access Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-005 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material change in regulatory requirements, technology architecture, or workforce structure |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-001 (Enterprise Asset Inventory); BFS-ISP-003 (Data Protection); BFS-ISP-004 (Secure Configuration); BFS-ISP-007 (Incident Response); BFS-ISP-010 (Change Management); BFS-ISP-020 (Acceptable Use) |

| Framework Alignment | CIS Controls v8 (Control 5); ISO/IEC 27001:2022 (A.5.15, A.5.16, A.5.17, A.5.18, A.5.19, A.6.1, A.6.2, A.6.5, A.8.2, A.8.3, A.8.4, A.8.5) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirements 7, 8); RA 10175 (Cybercrime Prevention Act); ISO/IEC 27001:2022 ISMS |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| Chief Information Officer |  |  |  |

| Chief Information Security Officer |  |  |  |

| Chief Human Resources Officer |  |  |  |

| Data Privacy Officer |  |  |  |

| Compliance Officer |  |  |  |

| Risk Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the governance framework, mandatory requirements, and operational procedures for the management of all user accounts, privileged accounts, service accounts, and system accounts within BFS Financial Services (hereinafter "the Organization" or "BFS"), and for controlling access to all BFS information systems, data, applications, and infrastructure throughout the full identity and access lifecycle.

Compromised, misused, or improperly managed accounts are the primary vector through which adversaries gain unauthorized access to enterprise systems. Credential-based attacks — including phishing, credential stuffing, brute force, and insider misuse — account for the majority of significant data breaches in the financial services sector. Effective account and access management is therefore not merely a compliance obligation; it is a mission-critical security control directly protecting BFS customers, assets, and operational continuity.

This policy directly implements CIS Controls v8, Control 5 (Account Management) and is closely aligned with Control 6 (Access Control Management). It is anchored in ISO/IEC 27001:2022 Annex A controls governing identity management, access rights, authentication, privileged access, and the full user lifecycle from onboarding through offboarding.

The specific objectives of this policy are to:

Establish a complete, accurate, and continuously maintained inventory of all accounts across all BFS systems, platforms, and environments;

Enforce the principles of least privilege and need-to-know in the assignment and ongoing governance of all access rights;

Define and enforce strong authentication requirements, including mandatory Multi-Factor Authentication (MFA) for all privileged and remote access, and for all access to systems processing sensitive data;

Govern the full identity lifecycle — provisioning, maintenance, periodic review, and timely deprovisioning — for all account types including employees, contractors, service accounts, and machine identities;

Establish rigorous controls over privileged accounts, including mandatory use of a Privileged Access Management (PAM) solution, just-in-time access, session recording, and credential vaulting;

Prevent unauthorized account creation, credential sharing, and account reuse across systems and environments;

Ensure compliance with BSP Circular 1140, the Philippine Data Privacy Act (RA 10173), PCI DSS v4.0, and all applicable information security standards;

Support auditability and forensic investigation through comprehensive account and access event logging.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all individuals and entities that hold, use, or administer accounts on BFS systems, including:

All full-time and part-time employees of BFS, across all departments, business units, and locations;

Contractors, consultants, managed service providers, third-party vendors, and auditors with access to BFS systems or data;

System administrators, database administrators, cloud platform engineers, and all holders of privileged accounts;

Development, DevSecOps, and automation teams responsible for service accounts and machine identities;

Affiliated entities and joint venture partners accessing BFS systems or sharing BFS infrastructure.

## 2.2  Account and System Scope

This policy governs all account types on all systems within the BFS environment:

### 2.2.1  User Account Types

Standard user accounts — regular employees and contractors with day-to-day business system access;

Privileged accounts — system administrator, domain administrator, root, database administrator (DBA), cloud IAM administrator, and security tool administrator accounts;

Temporary and time-limited accounts — accounts provisioned for contractors, auditors, or project-based personnel with a defined end date;

Emergency access accounts — break-glass accounts maintained for emergency access to critical systems when normal authentication is unavailable;

Third-party and vendor accounts — accounts provisioned for external parties requiring access to BFS systems for support, integration, or service delivery purposes.

### 2.2.2  Non-Human / Machine Identity Types

Service accounts — accounts used by applications, services, and automated processes to authenticate to other systems or APIs;

API keys and tokens — programmatic authentication credentials used by applications and integrations;

Machine identities and certificates — TLS/SSL certificates, code signing certificates, and platform authentication credentials;

Cloud IAM roles — AWS IAM roles, instance profiles, and managed identities used by cloud workloads;

CI/CD pipeline credentials — credentials and secrets used by automated build and deployment pipelines.

### 2.2.3  Systems in Scope

All on-premise servers, workstations, and network infrastructure (Windows, Linux, network OS);

All cloud platforms and services (AWS and any future cloud providers);

Enterprise applications: core banking system, ERP, HRIS, CRM, payment platforms, internet banking;

Security systems: PAM platform, SIEM, EDR, vulnerability management, DLP, identity provider (IdP);

Database platforms, data warehouses, and analytics environments;

AI/ML platforms and inference systems;

Development, testing, and CI/CD platforms;

Physical access control systems (badging) where integrated with logical access.

## 2.3  Environmental Scope

This policy applies to all environments — production, pre-production, development, testing, disaster recovery, and training — regardless of hosting model (on-premise, cloud, co-location, hybrid, or remote).

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Account | A set of credentials (username, password, certificate, key, or token) associated with an identity (human or non-human), used to authenticate to and interact with a system or service. |

| Identity | The unique digital representation of a person, system, service, or device within the BFS environment. An identity may be associated with one or more accounts. |

| Account Provisioning | The process of creating and configuring a new account, assigning appropriate access rights, and enrolling the account in required authentication and monitoring controls. |

| Account Deprovisioning | The process of revoking, disabling, or deleting an account and all associated access rights upon the account holder's departure, role change, or account expiry. |

| Least Privilege | A security principle requiring that every account be granted only the minimum level of access rights necessary to perform its defined function, and no more. |

| Need-to-Know | A related principle requiring that access to specific information or systems be granted only when the individual or system has a defined and legitimate business need to access that information. |

| Role-Based Access Control (RBAC) | An access control model where access rights are assigned to roles (job functions), and users are granted access by being assigned to one or more roles, rather than by individual access grants. |

| Attribute-Based Access Control (ABAC) | An access control model where access decisions are based on a combination of user attributes (department, clearance level, location), resource attributes (classification, environment), and contextual attributes (time, device posture). |

| Privileged Account | An account with elevated permissions beyond those of a standard user, including the ability to: install software, modify system configurations, access all data, manage other accounts, or administer security controls. |

| Privileged Access Management (PAM) | A set of technologies and processes that provide secured, monitored, and auditable access to privileged accounts and credentials, including credential vaulting, session recording, and just-in-time access. |

| Just-in-Time (JIT) Access | An access control model in which privileged access rights are granted dynamically for a specific, time-limited purpose and automatically revoked upon task completion or timer expiry, minimizing the period of privilege exposure. |

| Multi-Factor Authentication (MFA) | An authentication method requiring a user to present two or more independent verification factors from different categories: something you know (password/PIN), something you have (hardware token, mobile authenticator), and something you are (biometric). |

| Single Sign-On (SSO) | An authentication service that allows a user to log in once with a single set of credentials and gain access to multiple applications and systems without re-authenticating for each, managed through a central Identity Provider. |

| Identity Provider (IdP) | A system that creates, maintains, and manages digital identities and provides authentication services to relying applications. Examples include Microsoft Azure AD, Okta, and Ping Identity. |

| Service Account | A non-human account used by an application, service, scheduled task, or automated process to authenticate to systems, APIs, or databases. Service accounts must be managed with the same rigor as privileged human accounts. |

| Machine Identity | A digital identity assigned to a non-human entity — such as a server, application, container, or IoT device — to authenticate to other systems. Machine identities include TLS certificates, API keys, and cloud IAM roles. |

| Dormant Account | An account that has not been used for a defined period (see Section 5.7), indicating the account holder may no longer require access or the account may have been abandoned. |

| Orphan Account | An account that is no longer associated with an active employee, contractor, or system — typically resulting from failure to deprovision upon departure or system decommissioning. |

| Access Review | A formal, periodic process in which account owners and system owners review and certify the continued appropriateness of all access rights assigned to accounts on their systems, with unauthorized or excessive rights revoked. |

| Break-Glass Account | An emergency access account with highly privileged access to critical systems, held in reserve for use only during emergency scenarios when standard authentication mechanisms are unavailable. Subject to the strictest access controls and audit requirements. |

| Shared Account | An account whose credentials are known to or used by more than one individual simultaneously. Shared accounts are prohibited at BFS except under narrowly defined, formally approved circumstances. |

| Credential | The authentication information associated with an account — such as a password, PIN, passphrase, certificate, biometric template, hardware token seed, or API key — used to verify identity. |

| Password Policy | The set of rules governing password complexity, length, history, expiry, and lockout, designed to reduce the risk of password-based attacks. |

| SCIM | System for Cross-domain Identity Management — an open standard for automating the exchange of user identity information between identity providers and service providers, used to automate provisioning and deprovisioning. |

| Zero Trust | A security model premised on 'never trust, always verify' — requiring continuous verification of identity, device health, and context for every access request, regardless of whether the request originates from inside or outside the network perimeter. |

# 4.  IDENTITY AND ACCESS GOVERNANCE FRAMEWORK

BFS's Identity and Access Governance Framework is built on four foundational principles that together define how identities are created, authenticated, authorized, and retired across the enterprise:

| Principle | Definition | Primary Control | BFS Implementation |

| --- | --- | --- | --- |

| Least Privilege | Grant only the minimum rights needed for the defined function. | RBAC; access review; JIT for privileged access | Role matrix per system; PAM for elevated rights; quarterly access certification |

| Need-to-Know | Restrict access to data and systems to those with a verified business need. | Data classification + access ACLs | Data Owner approval required for CONFIDENTIAL/TOP SECRET access |

| Separation of Duties (SoD) | Prevent any single individual from having end-to-end control over a critical process. | Conflicting role detection; dual-control workflows | SoD matrix enforced in IAM; automated conflict detection |

| Zero Trust | Verify every access request, regardless of origin, based on identity, device, and context. | MFA; device posture check; continuous session verification | IdP-enforced MFA; NAC posture; SIEM behavioral analytics |

## 4.1  Account Classification

All accounts in the BFS environment are classified as follows, with controls applied proportionate to the classification:

| Account Class | Description | Authentication Requirement | PAM / Vault Required |

| --- | --- | --- | --- |

| STANDARD USER | Regular employee or contractor account for day-to-day business application access. | SSO + MFA (for remote / sensitive systems) | No (standard IAM) |

| PRIVILEGED — Local | Local administrator account on a specific device or system. | MFA; PAM session recording required | Yes — credential vault |

| PRIVILEGED — Domain | Domain administrator, directory services admin, or enterprise-wide administrative account. | Dedicated PAW + MFA + PAM; session recording mandatory | Yes — credential vault + JIT |

| PRIVILEGED — Cloud | AWS IAM Admin, cloud root account, cloud security admin. | MFA + PAM; root usage alerted immediately | Yes — credential vault + JIT |

| SERVICE ACCOUNT | Non-human account used by applications, services, or automation processes. | API key / certificate; MFA not applicable; rotation mandatory | Yes — secrets manager or PAM vault |

| MACHINE IDENTITY | Server, container, application, or device identity using certificates, tokens, or IAM roles. | Certificate or IAM role; rotation and expiry managed | Yes — certificate lifecycle manager |

| EMERGENCY (Break-Glass) | Highly privileged emergency account held in reserve. Not for routine use. | Dual-person authorization + MFA + PAM; all use alerted | Yes — sealed in PAM vault; dual-key access |

| THIRD-PARTY | External vendor, contractor, or auditor account with scoped, time-limited access. | MFA required; access scoped and time-bound | Where privileged: Yes |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and applicable to all personnel and systems within the scope of this policy. Non-compliance is subject to enforcement as defined in Section 10.

## 5.1  Account Inventory

PS-1.1  BFS shall establish, maintain, and continuously update a complete Account Inventory documenting all authorized accounts across all systems, platforms, and environments. The Account Inventory shall be integrated with or maintained as a component of the BFS CMDB.

PS-1.2  Automated account discovery tools shall be deployed across all systems to enumerate existing accounts and detect unauthorized or undocumented accounts. Discovery results shall be reconciled against the Account Inventory at least monthly.

PS-1.3  Every account in the BFS environment must be traceable to an authorized, documented identity — whether human (employee, contractor, or vendor) or non-human (service, machine, or automation). Accounts not traceable to an authorized identity shall be treated as orphan accounts and disabled within forty-eight (48) hours of discovery.

PS-1.4  The Account Inventory shall record, at minimum: the account identifier, account type and classification, associated identity, owning system and environment, creation date, last login date, assigned roles and permissions, MFA enrollment status, and account status.

## 5.2  Account Provisioning

PS-2.1  No account shall be created on any BFS system without a formally approved access request submitted through the BFS Identity and Access Management (IAM) process. Accounts created outside the approved process are unauthorized and subject to immediate deprovisioning.

PS-2.2  New accounts shall be provisioned with the minimum rights and access required for the account holder's defined role, in accordance with the applicable RBAC role matrix. Access beyond the standard role requires supplementary approval from the Data Owner or system owner.

PS-2.3  Privileged accounts shall be provisioned only for personnel with a documented, current business requirement for elevated access. Privileged account creation requires CISO approval or that of the designated approving authority defined in the access request workflow.

PS-2.4  Temporary and contractor accounts shall have a defined expiry date set at provisioning, not to exceed the contracted engagement period. Temporary accounts not associated with an active engagement shall not be created.

PS-2.5  Service accounts shall be provisioned with the minimum permissions required for their defined function. Service accounts must not have interactive logon rights on servers unless operationally required and explicitly approved. Service account credentials shall be stored in the BFS-approved secrets management platform or PAM vault.

PS-2.6  A unique individual account shall be provisioned for each person requiring access to BFS systems. Shared accounts — where credentials are used by more than one individual — are prohibited except as defined in Section 5.12.

## 5.3  Authentication Requirements

PS-3.1  All accounts accessing BFS systems shall authenticate using credentials meeting the BFS Password Standard (see Section 5.4) as a minimum. For all access beyond standard internal applications from a managed device on the BFS network, additional authentication factors are required as specified in Section 5.3.

PS-3.2  Multi-Factor Authentication (MFA) is mandatory for all of the following access scenarios:

All privileged account access, without exception, regardless of access origin;

All remote access to BFS systems, including VPN, remote desktop, SSH, and cloud console access;

All access to systems classified as CRITICAL or processing CONFIDENTIAL or TOP SECRET data;

All access to cloud management consoles (AWS Console and equivalent);

All access to the BFS PAM platform, SIEM, EDR console, and security tooling;

All internet banking and customer-facing portal administrative access;

All email access from unmanaged devices or external networks;

All third-party and vendor account access to BFS systems.

PS-3.3  MFA shall use an approved, phishing-resistant second factor. Approved MFA methods in priority order are: (1) FIDO2/WebAuthn hardware security key (YubiKey or equivalent); (2) Authenticator application (TOTP/HOTP — Microsoft Authenticator, Google Authenticator); (3) Push notification-based MFA (BFS-approved app). SMS-based OTP is deprecated and shall not be used as the sole MFA factor for privileged access or access to CRITICAL systems.

PS-3.4  Biometric authentication (fingerprint, face recognition) may be used as one factor in multi-factor authentication on approved BFS-managed devices. Biometric data shall be processed locally on-device and shall not be transmitted to or stored on BFS servers.

PS-3.5  Single Sign-On (SSO) shall be implemented for all enterprise applications where technically feasible, using BFS's centrally managed Identity Provider (IdP). SSO consolidates authentication events for monitoring, enables centralized MFA enforcement, and simplifies deprovisioning. Applications not integrated with the corporate IdP shall require individual CISO approval to remain standalone.

PS-3.6  Adaptive authentication controls shall be enforced by the IdP, applying additional authentication challenges based on contextual risk signals including: unfamiliar geographic location, unusual login time, new device, failed previous attempt, or behavioral anomaly detected by UEBA (User and Entity Behavior Analytics).

## 5.4  Password and Credential Standards

PS-4.1  All passwords for standard user accounts shall meet the following minimum requirements:

Minimum length: 12 characters;

Complexity: must include at least one character from three of the following four categories: uppercase letters, lowercase letters, numerals, and special characters;

No reuse of the last twelve (12) previous passwords;

Maximum age: 90 days for standard accounts; 60 days for privileged accounts;

No use of the account username, display name, or common dictionary words;

No sharing of passwords between accounts or individuals.

PS-4.2  Privileged account passwords shall meet enhanced requirements: minimum 16 characters; maximum age 60 days; stored exclusively in the BFS PAM credential vault; not known to the account holder during normal operations (PAM-managed check-out required for use).

PS-4.3  Default vendor-supplied passwords on all systems and applications shall be changed before the system is deployed or connected to any BFS network, in accordance with BFS-ISP-004.

PS-4.4  Passwords shall not be stored, transmitted, or logged in cleartext under any circumstances. All password storage shall use approved cryptographic hashing algorithms (bcrypt, Argon2id, or PBKDF2 with appropriate iteration count). MD5 and SHA-1 are prohibited for password hashing.

PS-4.5  BFS shall implement a Credential Exposure Monitoring capability to detect when BFS-domain credentials appear in known breach databases or dark web repositories, and shall require immediate password reset upon detection.

PS-4.6  Passphrases — long, memorable phrases meeting complexity and length requirements — are encouraged as an alternative to complex passwords for standard user accounts, subject to meeting the minimum length and complexity requirements.

## 5.5  Privileged Access Management

PS-5.1  All privileged access to BFS systems shall be managed through the BFS Privileged Access Management (PAM) platform. Direct privileged access that bypasses the PAM platform is prohibited except under a documented emergency break-glass procedure.

PS-5.2  Privileged accounts shall be separate accounts distinct from the account holder's standard user account. System administrators shall maintain two accounts: a standard user account for day-to-day work and a privileged account used exclusively for administrative tasks.

PS-5.3  Just-in-Time (JIT) access shall be the default model for privileged account access to CRITICAL and CONFIDENTIAL data environment systems. Privileged sessions shall be granted for the minimum time required to complete the defined administrative task, and automatically revoked upon session completion or timer expiry.

PS-5.4  All privileged sessions on CRITICAL and CONFIDENTIAL systems shall be recorded by the PAM platform, including keystroke logging and screen recording where technically feasible. Session recordings shall be retained for a minimum of twelve (12) months and accessible only to authorized security personnel and auditors.

PS-5.5  Privileged account credentials shall be vaulted in the PAM platform. Credentials are checked out for use, automatically rotated upon check-in, and never known to the account holder outside of the active session. Manual password resets on vaulted accounts are prohibited except as authorized by the PAM administrator.

PS-5.6  The use of privileged accounts for non-administrative tasks — such as reading email, browsing the internet, or running standard business applications — is strictly prohibited.

PS-5.7  Privileged access from remote locations requires both MFA and connection via the BFS PAM platform's session management capability (remote session brokering). Direct remote privileged connections to production systems bypassing the PAM session broker are prohibited.

## 5.6  Service Account and Machine Identity Management

PS-6.1  All service accounts and machine identities shall be documented in the Account Inventory with a designated human owner accountable for the service account's security and lifecycle management.

PS-6.2  Service account credentials (passwords, API keys, tokens, certificates) shall be stored in the BFS-approved secrets management platform (e.g., AWS Secrets Manager, HashiCorp Vault) or the PAM vault. Hard-coded credentials in source code, configuration files, scripts, or documentation are strictly prohibited.

PS-6.3  Service account passwords shall be rotated at least every ninety (90) days for standard service accounts and every thirty (30) days for service accounts with privileged access. Rotation shall be automated wherever technically feasible.

PS-6.4  API keys and tokens shall have a defined expiry. Long-lived tokens (non-expiring API keys) are prohibited for production systems. All API keys shall be scoped to the minimum permissions required.

PS-6.5  Machine certificates (TLS/SSL, code signing, client authentication) shall have a defined validity period, be managed through a Certificate Management platform, and be renewed before expiry. Expired certificates in production are a policy violation. Certificate expiry shall be monitored and alerts generated ninety (90) days before expiry.

PS-6.6  Cloud IAM roles shall follow the least-privilege principle. IAM roles shall not use wildcard permissions (e.g., 'Action: *') in production environments. All IAM roles shall be reviewed quarterly.

PS-6.7  CI/CD pipeline credentials shall be managed as short-lived tokens or dynamic secrets issued by the secrets management platform for each pipeline run. Static, long-lived CI/CD credentials are prohibited in production pipelines.

## 5.7  Dormant and Orphan Account Management

PS-7.1  Accounts that have not been used for forty-five (45) consecutive days shall be automatically flagged as dormant. Dormant accounts shall be reviewed by the account owner and system administrator within five (5) business days.

PS-7.2  Dormant accounts that cannot be justified as required for an active business purpose shall be disabled within sixty (60) days of becoming dormant, and deleted within ninety (90) days if not re-activated.

PS-7.3  Privileged accounts that have not been used for thirty (30) consecutive days shall be immediately flagged as dormant and reviewed within forty-eight (48) hours. Unjustified dormant privileged accounts shall be disabled within five (5) business days.

PS-7.4  Orphan accounts — accounts not associated with an active, verified identity — shall be disabled within twenty-four (24) hours of discovery and deleted within seven (7) days unless formally re-associated with an authorized identity through the provisioning process.

## 5.8  Account Deprovisioning and Offboarding

PS-8.1  Upon an employee's or contractor's departure from BFS — whether through resignation, termination, retirement, or contract end — all their accounts across all BFS systems shall be disabled within four (4) hours of the confirmed departure time.

PS-8.2  For involuntary terminations or departures where there is a heightened risk of malicious activity, all accounts shall be disabled immediately and simultaneously upon HR notification to the IT Service Desk, before the individual is informed of their termination where operationally feasible.

PS-8.3  Following account disablement, a full account deprovisioning — including deletion of the account or transfer of ownership of associated resources — shall be completed within ten (10) business days of the departure date.

PS-8.4  Upon role change or promotion of an existing employee, access rights not required for the new role shall be revoked within five (5) business days. Access required for the new role shall follow the standard provisioning process. The principle of access recertification shall apply: all existing access is reviewed at the time of role change, and only rights justified for the new role are retained.

PS-8.5  For third-party accounts, deprovisioning shall be triggered upon contract expiry, engagement completion, or BFS's termination of the vendor relationship. Third-party account deprovisioning shall be completed within one (1) business day of the triggering event.

PS-8.6  The HR system and BFS IAM platform shall be integrated (or formally synchronized) to ensure that HR-triggered departure events automatically initiate the access deprovisioning workflow. Manual deprovisioning processes shall have a documented escalation path for urgent cases.

## 5.9  Access Reviews and Certification

PS-9.1  A formal Access Review (access certification) process shall be conducted at the following frequencies:

Standard user access rights: at least semi-annually (every six months);

Privileged account access rights: at least quarterly;

Service account rights and IAM roles: at least quarterly;

Access rights for CRITICAL and TOP SECRET data environment accounts: at least quarterly;

Third-party and vendor account rights: at least quarterly, or upon any change in the vendor engagement;

Ad-hoc access review: triggered immediately upon a security incident, employee role change, or significant system change.

PS-9.2  Access reviews shall be conducted by the Data Owner or System Owner for each system, supported by the IAM team. Reviewers must actively certify access — a default of 'approve all' (rubber-stamping) is prohibited. Each access right must be individually reviewed and the continued business justification confirmed.

PS-9.3  Access rights that cannot be justified during a review shall be revoked within five (5) business days of the review completion. Revocation shall be documented in the access review record.

PS-9.4  Access review outcomes shall be logged and retained for a minimum of three (3) years as audit evidence. The CISO Office shall receive a summary Access Review Completion Report for each review cycle, including the percentage of rights reviewed, rights revoked, and exceptions identified.

## 5.10  Third-Party and Vendor Account Controls

PS-10.1  Third-party and vendor accounts shall be provisioned only for the specific systems, data, and time period required for the contracted purpose. Broad or open-ended third-party access is prohibited.

PS-10.2  Third-party access to CRITICAL or CONFIDENTIAL systems shall require MFA, shall be brokered through the BFS PAM platform, and shall be subject to session recording. Third parties shall not be provided with direct, unmonitored privileged access to production systems.

PS-10.3  Third-party accounts shall be subject to access reviews at least quarterly. Upon completion or termination of the engagement, all third-party accounts and access rights shall be immediately revoked.

PS-10.4  Vendor access to BFS systems shall occur only during agreed maintenance windows or support events, with prior notification to and approval from the BFS IT Security team. Persistent always-on vendor access to production systems is prohibited.

## 5.11  Emergency and Break-Glass Access

PS-11.1  Break-glass accounts shall be maintained for critical systems to provide emergency access when standard authentication mechanisms are unavailable (e.g., IdP outage, MFA service disruption). Break-glass account credentials shall be sealed in the PAM vault under dual-person authorization.

PS-11.2  Activation of a break-glass account requires: (a) documented evidence of the emergency justifying use; (b) authorization from the CISO or CIO (dual approval for TOP SECRET systems); and (c) concurrent notification to the SOC. Break-glass use generates an immediate SIEM alert and must be investigated as a priority security event.

PS-11.3  Every use of a break-glass account shall be logged in full, reviewed by the CISO within twenty-four (24) hours, and a post-use report prepared. Break-glass credentials shall be rotated immediately after each use.

PS-11.4  Break-glass accounts shall be tested for accessibility (without activation) at least quarterly to confirm they remain operable in an emergency.

## 5.12  Shared Account Governance

PS-12.1  Shared accounts — accounts whose credentials are used by more than one individual — are prohibited in the BFS environment except in the following narrowly defined circumstances: (a) non-interactive service accounts used by automated processes with no individual login; (b) emergency break-glass accounts subject to the controls in Section 5.11; and (c) generic accounts pre-approved by the CISO on a documented exception basis.

PS-12.2  Where a shared account exception is approved, it shall be subject to the following mandatory controls: (a) all users of the shared account must be individually identified and documented; (b) the shared account shall be subject to enhanced monitoring via SIEM with individual-user attribution where technically feasible; (c) the shared account exception shall be reviewed at least quarterly.

## 5.13  Account and Access Logging

PS-13.1  All authentication events — successful logins, failed logins, MFA challenges, MFA failures, and account lockouts — shall be logged and forwarded to the SIEM in real time.

PS-13.2  All privileged account activities — including session start and end, commands executed, files accessed, configuration changes made, and elevated operations performed — shall be logged in the PAM platform and forwarded to the SIEM.

PS-13.3  Access to CONFIDENTIAL and TOP SECRET data environments shall generate a log entry for every access event. These logs shall be protected against modification using WORM or equivalent immutable storage mechanisms.

PS-13.4  Account lifecycle events — provisioning, modification, privilege changes, disablement, and deletion — shall be logged in the IAM platform and forwarded to the SIEM. Unauthorized account lifecycle events shall generate an immediate SOC alert.

PS-13.5  Authentication and access logs shall be retained for a minimum of twelve (12) months online and three (3) years in long-term archive, in compliance with BSP Circular 1140 and the BFS Audit Log Retention Policy.

# 6.  PROCEDURES

## 6.1  Identity Lifecycle Management — Full Procedure

| Phase | Trigger / Event | Key Actions | SLA / Responsible Party |

| --- | --- | --- | --- |

| ONBOARDING | New employee start / contractor engagement | Create identity in IdP; provision RBAC role-based access; enroll MFA; issue credentials via secure channel; register in Account Inventory. | Accounts active by start date. IT Operations / IAM Team + HR. |

| PROVISIONING | Access request submitted via ITSM | Request reviewed; Data Owner / System Owner approval obtained; access granted per RBAC or individual approval; Account Inventory updated. | Standard access: 2 business days. Privileged access: 3 business days (CISO approval required). IAM Team. |

| MAINTENANCE | Role change; promotion; project assignment; transfer | Existing access reviewed at point of change; excess rights revoked; new rights provisioned per new role; SoD check run; Account Inventory updated. | Access changes completed within 5 business days of role change. IAM Team + HR. |

| ACCESS REVIEW | Quarterly / semi-annual scheduled review; ad-hoc trigger | System/Data Owner reviews all account access rights; certifies or revokes; revocation actioned; completion report produced. | Review completed within 10 business days of review period opening. IAM Team + System/Data Owners. |

| OFFBOARDING | Departure / contract end / termination | All accounts disabled (within 4 hours); PAM vault credentials rotated; access tokens revoked; MFA devices de-enrolled; Account Inventory updated; deprovisioning completed. | Disable: within 4 hours. Full deprovision: within 10 business days. HR + IAM Team + IT Operations. |

| EMERGENCY | Involuntary termination; security incident | Immediate simultaneous account disable across all systems; escalated to CISO; forensic preservation if required; all active sessions terminated. | Immediate (concurrent with or before individual notification). CISO Office + IAM Team + HR. |

## 6.2  Access Request and Approval Procedure

The following procedure governs all requests for new or modified access to BFS systems:

Request Submission: The requestor (employee, manager, or HR) submits an Access Request Form via the ITSM portal, specifying: the system/application, access level required, business justification, duration (if temporary), and the approving manager's name.

Manager Pre-Approval: The requestor's direct manager reviews and approves the request, confirming the business justification and that the access is consistent with the requestor's role.

Data Owner / System Owner Review: For CONFIDENTIAL or TOP SECRET data environments, the Data Owner or System Owner reviews and approves access, confirming least-privilege alignment and SoD compliance.

SoD Conflict Check: The IAM system automatically checks the requested access against the Separation of Duties conflict matrix. Any detected SoD conflict escalates to the CISO Office for resolution before provisioning proceeds.

Privacy Review (if applicable): For access to systems processing personal data, the DPO is notified. Access to particularly sensitive personal data categories requires DPO confirmation of lawful basis.

Privileged Access Approval: Requests for privileged access require separate CISO approval (or that of the designated approving authority in the access approval matrix).

Provisioning: IAM team provisions access per the approved request, records the provisioning in the Account Inventory, and notifies the requestor.

Confirmation and Testing: Requestor confirms access is operational. Provisioning record is closed in the ITSM.

## 6.3  Privileged Account Lifecycle Procedure

Privileged Account Request: Submitted via ITSM with: system scope, role required, justification, endorsement from the requestor's manager, and CISO review. Privileged accounts are not provisioned based on role alone — a documented individual business need is required.

Privileged Account Provisioning: A new, dedicated privileged account is created (separate from the standard user account). The credential is immediately vaulted in the PAM platform. The account holder receives no knowledge of the credential outside of PAM-managed check-out.

JIT Access Configuration: For CRITICAL systems, JIT access policies are configured in the PAM platform defining: the scope of access, maximum session duration, auto-revocation on session end, and required approval workflow for access check-out.

Privileged Session Use: The privileged account holder checks out access via the PAM platform (authenticating with MFA and PAW where required). The PAM platform brokers the connection and begins session recording. The session is automatically terminated at the defined duration limit.

Post-Session: Credentials are automatically rotated after check-in. Session recording is retained per policy. Session metadata (user, system, duration, commands) is forwarded to SIEM.

Quarterly Privileged Access Review: All privileged accounts are subject to quarterly access review. Accounts without a justified, active business need are deprovisioned immediately.

## 6.4  Access Review Procedure

Review Initiation: The IAM team generates access review reports for each system/application, listing all accounts, their assigned roles, last access date, and MFA status. Reports are distributed to System/Data Owners sixty (60) days before review deadline.

Owner Review: System/Data Owners review each account individually. For each account they must: (a) Certify — confirm access is appropriate and still required; (b) Modify — reduce or change access rights; or (c) Revoke — remove access entirely.

Mandatory Revocation Triggers: The following must be revoked immediately during review without exception: accounts of departed employees; accounts inactive beyond the dormancy threshold; access rights with no documented business justification; access rights creating SoD violations; orphan accounts.

Escalation: Accounts that cannot be clearly certified or revoked are escalated to the CISO within five (5) business days of the review opening. Unresolved accounts shall default to revocation.

Revocation Execution: All revocation decisions are actioned by the IAM team within five (5) business days of the owner's decision.

Completion Report: The IAM team produces an Access Review Completion Report documenting: total accounts reviewed, accounts certified, accounts modified, accounts revoked, outstanding escalations, and completion percentage by system. Submitted to the CISO and Internal Audit.

## 6.5  Service Account Registration and Rotation Procedure

Service Account Request: Application or platform owner submits a Service Account Request via the ITSM portal, specifying: the consuming application, systems the service account will authenticate to, required permissions, credential type, and rotation frequency.

Least-Privilege Review: The IAM team and IT Security verify that the requested permissions are the minimum required. Overly broad permissions (e.g., database admin for a read-only use case) are rejected and returned for revision.

Credential Provisioning: Service account credentials are generated and stored directly in the BFS-approved secrets management platform or PAM vault. Credentials are injected into the application via the secrets management API — never stored in configuration files or environment variables in source control.

Rotation Schedule Configuration: Automated rotation is configured in the secrets management platform at the required rotation frequency. The application's secrets retrieval mechanism is tested to confirm it can handle credential rotation without downtime.

Account Inventory Registration: The service account is registered in the Account Inventory with the designated human owner, consuming application, permission scope, rotation schedule, and review date.

Annual Service Account Review: All service accounts are reviewed annually (and quarterly for privileged service accounts) to confirm continued necessity, validate permissions remain least-privilege, and confirm rotation is functioning.

## 6.6  Break-Glass Account Activation Procedure

Emergency Declaration: The CISO or CIO declares a system emergency requiring break-glass account use, documenting: the emergency nature, systems affected, and the authentication failure being addressed.

Dual Authorization: Two authorized individuals (CISO + CIO, or approved alternates) authenticate to the PAM vault using their own credentials and MFA to retrieve the break-glass credential. Single-person break-glass access is prohibited.

SOC Notification: The SOC is immediately notified of break-glass activation. A SIEM alert is auto-generated upon credential check-out. The security incident is opened in the ITSM.

Controlled Use: Break-glass account activities are performed with full session recording. The account is used exclusively for the emergency purpose. All actions taken are documented concurrently in the security incident record.

Credential Rotation: Immediately upon resolution of the emergency, the break-glass credential is rotated in the PAM vault and the account is re-sealed.

Post-Incident Review: Within twenty-four (24) hours, the CISO reviews the break-glass use, including all session recordings. A post-incident report is prepared and the root cause of the authentication failure addressed.

# 7.  GUIDELINES

## 7.1  IAM Architecture Guidelines

Centralized Identity Provider: All enterprise applications shall authenticate through the BFS centrally managed IdP (e.g., Azure AD, Okta). The IdP enforces SSO, MFA, conditional access policies, and user lifecycle events (provisioning/deprovisioning) across all integrated systems.

SCIM Integration: Where supported, enterprise applications shall be integrated with the IdP via SCIM to enable automated, real-time provisioning and deprovisioning. Manual provisioning processes are permitted only for systems that do not support SCIM or equivalent automated integration.

Federation: Where BFS needs to provide access to employees or third parties using external identity sources, SAML 2.0 or OIDC federation shall be used. Legacy authentication protocols (basic auth over HTTP, NTLM for external systems) shall be blocked.

Conditional Access Policies: The IdP shall enforce conditional access policies that deny or challenge access based on: device compliance status (MDM enrollment and patch level), geographic location (block high-risk countries unless on VPN), login risk score (UEBA), and application sensitivity.

Identity Governance and Administration (IGA): BFS shall implement or roadmap an IGA platform to automate access certification, role mining, SoD conflict detection, and access analytics at scale.

## 7.2  MFA Implementation Guidelines

MFA Fatigue Prevention: BFS shall implement MFA push-notification fraud protection controls (number matching, additional context) to prevent MFA fatigue attacks. Users who report unexpected MFA push notifications shall immediately contact the SOC.

MFA Recovery: Account recovery procedures shall not allow MFA bypass. MFA recovery shall require in-person identity verification or an alternative second factor — not SMS to an unverified number. Recovery codes shall be stored securely, not in plaintext.

Hardware Token Deployment: FIDO2 hardware security keys (YubiKey or equivalent) shall be issued to all privileged account holders, all executives, all personnel with access to TOP SECRET data, and all remote workers with access to CRITICAL systems.

MFA Enrollment at Provisioning: MFA enrollment is a mandatory prerequisite for account activation. No account shall be activated before MFA enrollment is confirmed.

## 7.3  Privileged Access Workstation (PAW) Guidelines

PAW Definition: A Privileged Access Workstation is a dedicated, hardened device used exclusively for administrative tasks. It has no internet browsing, email, or general application use permitted. PAWs are not used for standard work activities.

PAW Hardening: PAWs shall be hardened per the BFS hardening baseline (BFS-ISP-004) with additional controls: application allowlisting, no web browsing outside approved management URLs, hardware-based MFA required, no local administrator rights for the PAW user, full disk encryption, and EDR with highest protection settings.

PAW Deployment Scope: PAWs are required for: domain administrator access; cloud IAM administrator access; PAM platform administration; SIEM and security tooling administration; core banking system DBA access; and any access to TOP SECRET data environment systems.

PAW Network Isolation: PAWs shall operate on a dedicated, isolated management network VLAN with no access to general user network segments and limited, controlled outbound internet access.

## 7.4  Zero Trust Access Guidelines

Device Trust: Every access request from a managed endpoint shall include a device compliance signal (via MDM or NAC) confirming: device is enrolled and managed; OS is current; EDR is active; disk encryption is enabled. Non-compliant devices shall be denied access to CONFIDENTIAL and CRITICAL systems.

Network Location Neutrality: Access controls shall not grant elevated trust based solely on network location (i.e., being on the corporate network shall not itself grant access to sensitive systems — MFA and device posture checks remain required).

Continuous Session Verification: Session risk shall be evaluated continuously, not only at login. The SIEM/UEBA platform shall monitor for behavioral anomalies during active sessions (unusual data access patterns, privilege escalation, anomalous hours) and trigger re-authentication or session termination where risk thresholds are exceeded.

Microsegmentation: Access to backend systems and APIs shall be governed by service-level access controls, ensuring that a compromised application or account can only reach the specific resources it is authorized to access, not the entire internal network.

## 7.5  Account Security Awareness Guidelines

All employees and contractors shall complete mandatory security awareness training at onboarding and annually thereafter, covering: password hygiene, MFA usage, phishing recognition, account sharing prohibition, and incident reporting procedures.

Personnel with privileged accounts shall complete enhanced, role-specific security training covering: PAM platform usage, privileged session hygiene, insider threat recognition, and break-glass procedures.

Simulated phishing exercises shall be conducted at least quarterly. Employees who repeatedly fail phishing simulations shall receive targeted training and their managers shall be notified.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Provides governance oversight of the identity and access management program. Reviews annual IAM compliance metrics, access review completion rates, and incident statistics related to compromised accounts. Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise IAM program. Ensures adequate investment in IAM tooling (PAM, IdP, IGA), staffing, and processes. Co-approves this policy with CISO. Authorizes break-glass account activation. Reviews significant access-related incidents. |

| Chief Information Security Officer (CISO) | Responsible for the design, implementation, and enforcement of this policy. Approves privileged account provisioning. Oversees PAM platform governance, MFA enforcement, access review program, and SOC account monitoring. Manages the SoD conflict matrix. Reports IAM risk posture to CIO and Board. |

| Chief Human Resources Officer (CHRO) | Ensures HR processes are integrated with the IAM lifecycle. Provides timely departure notifications to IT. Manages disciplinary processes for access policy violations. Ensures employment contracts include IAM policy obligations. |

| Data Privacy Officer (DPO) | Reviews access provisioning for systems processing personal data. Confirms lawful basis for access to SPI/PII. Participates in access reviews for personal data systems. Advises on GDPR/RA 10173 implications of access control design. |

| Identity and Access Management Team | Manages day-to-day IAM operations: provisioning, deprovisioning, access reviews, account inventory maintenance, SCIM integration, role matrix management, and PAM credential vaulting. First line of response for access-related service requests and incidents. |

| PAM Platform Administrators | Manages the PAM platform configuration, credential vault, session recording, JIT access policies, and break-glass account sealing. Provides session recording access to auditors and CISO. Ensures PAM availability and health. |

| System and Data Owners | Accountable for approving access to their systems and data. Conduct and certify access reviews for their systems. Approve access requests within their scope. Escalate SoD conflicts or unusual access patterns to the CISO. |

| IT Operations / System Administrators | Implement access provisioning and deprovisioning instructions from the IAM team. Maintain local account configurations consistent with policy. Report discovered orphan or unauthorized accounts. |

| Security Operations Center (SOC) | Monitors authentication events, account lifecycle events, privileged session alerts, and behavioral anomalies in real time. Investigates account-related security alerts. Escalates compromised account incidents. |

| Enterprise Architecture Team | Designs SSO/IdP integration architecture for new and existing applications. Defines IAM design patterns, including SCIM integration, federation, and machine identity management. Reviews IAM requirements in solution designs. |

| Development / DevSecOps Teams | Manages service account and machine identity lifecycle for their applications. Integrates applications with the BFS IdP and secrets management platform. Ensures no hard-coded credentials in application code. Participates in service account access reviews. |

| Compliance and Risk Officers | Validates IAM policy compliance through internal audits. Maintains the exception register. Ensures IAM controls are included in the IT Risk Assessment. Coordinates regulatory examination readiness for access control evidence. |

| Internal Audit | Independently assesses the effectiveness of IAM controls, including account inventory completeness, access review quality, privileged access governance, deprovisioning timeliness, and MFA coverage. Reports findings to the Audit and Risk Committee. |

| All Employees and Third Parties | Use accounts responsibly and only for authorized purposes. Never share credentials. Never store credentials in unauthorized locations. Report suspected account compromise, unauthorized access, or suspicious authentication immediately to the SOC or IT Service Desk. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circular 1140 (MORB IT Risk Management)

Account and access management is a core IT risk management control required under BSP Circular 1140. BFS's implementation supports BSP compliance through:

Maintenance of a complete Account Inventory as required by the MORB IT risk framework;

Documented access provisioning and deprovisioning processes producible during BSP IT examinations;

Privileged access controls and session recording for administrative access to critical banking systems (ATM, core banking, payment platforms);

Access review and certification records demonstrating ongoing governance of system access rights;

MFA for all remote and privileged access, consistent with BSP cybersecurity requirements.

## 9.2  PCI DSS v4.0 Compliance

For BFS systems within the PCI DSS Cardholder Data Environment (CDE) scope:

PCI DSS Requirement 7 (Restrict Access to System Components and Cardholder Data by Business Need to Know) is directly implemented by the least-privilege and need-to-know requirements in this policy;

PCI DSS Requirement 8 (Identify Users and Authenticate Access to System Components) is directly implemented by the unique account, MFA, password standard, and service account management requirements in this policy;

PCI DSS 8.2.1: All user IDs in the CDE must be unique — shared accounts are prohibited (consistent with Section 5.12 of this policy);

PCI DSS 8.3: All non-consumer user and administrator access must use MFA (consistent with Section 5.3);

PCI DSS 8.6: Service accounts and system/application accounts must be managed per Requirement 8 — consistent with Section 5.6 of this policy;

PCI DSS 7.2: Access to CDE systems must be based on least privilege and role-based access — consistent with Section 5.2 and the RBAC framework.

## 9.3  Philippine Data Privacy Act (RA 10173)

Access control directly supports BFS's DPA obligations through:

Ensuring that personal data is accessible only to personnel with a documented, lawful business need — implementing the DPA's proportionality and purpose-limitation principles;

Access reviews for systems processing personal data support the DPA requirement to maintain appropriate organizational and technical measures for data protection;

Timely deprovisioning on employee departure reduces the risk of unauthorized access to personal data by former employees;

Access logging and PAM session recording provide forensic evidence in the event of a personal data breach, supporting NPC breach investigation and notification obligations.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Daily automated account discovery reconciliation against the Account Inventory, with alerts for orphan or unauthorized accounts;

Daily SIEM monitoring of authentication events, failed login patterns, MFA bypass attempts, and privileged session anomalies;

Monthly PAM usage and coverage reports confirming all privileged access is brokered through the PAM platform;

Quarterly access reviews with completion tracking and revocation rate reporting;

Semi-annual audit of MFA enrollment coverage across all account types;

Annual formal IAM audit conducted by IT Security and validated by Internal Audit;

Monthly KRI reporting to the CISO covering the KPIs defined below.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Account Inventory completeness (documented vs. discovered accounts) | ≥ 99% | Monthly |

| MFA enrollment — all privileged accounts | 100% | Daily |

| MFA enrollment — all remote access users | 100% | Daily |

| MFA enrollment — all standard user accounts | ≥ 98% | Monthly |

| Accounts disabled within 4 hours of confirmed departure | 100% | Per event |

| Orphan account disable within 24 hours of discovery | 100% | Per discovery |

| Dormant privileged accounts reviewed within 48 hours of flagging | 100% | Per flag |

| Dormant standard accounts reviewed within 5 business days | 100% | Per flag |

| Access review completion rate by deadline | 100% | Per review cycle |

| Access review rights revoked (active revocations vs. total revoked) | 100% actioned in SLA | Per review cycle |

| Privileged accounts brokered exclusively through PAM | 100% | Monthly |

| Service account credential rotation on schedule | 100% | Per rotation schedule |

| Certificates expiring within 90 days — alerted and tracked | 100% | Daily |

| Shared accounts (non-approved) — target zero | 0 | Monthly |

| Hard-coded credentials detected in source code — target zero | 0 in production | Per CI/CD pipeline run |

| Break-glass account access reviewed within 24 hours of use | 100% | Per use |

| SoD conflicts detected and resolved within 5 business days | 100% | Per detection |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Late account deprovisioning; incomplete Account Inventory record; late access review submission; failure to report dormant account. | Formal written notice; mandatory remediation; supervisory follow-up. |

| Moderate | Sharing account credentials with a colleague; using a privileged account for routine non-administrative tasks; bypassing MFA through enrollment of an unapproved factor; storing service account credentials in configuration files. | Formal warning; immediate credential reset and access review; mandatory security training; access privilege restriction. |

| Serious | Creating unauthorized accounts on BFS systems; persistent credential sharing; using another person's account; deliberately bypassing PAM to perform privileged operations; using a break-glass account without proper authorization. | Suspension pending formal investigation; disciplinary action up to and including termination; CISO escalation; access removed pending investigation. |

| Critical / Legal | Deliberate account creation to facilitate unauthorized access or data theft; misuse of privileged access for personal gain or sabotage; unauthorized access to customer account data using elevated privileges. | Immediate termination; referral to law enforcement; prosecution under RA 10175 (Cybercrime Prevention Act) and applicable Philippine law; mandatory regulatory notification. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Exceptions to this policy must be formally justified, risk-assessed, approved at the appropriate level, documented in the Exception Register, subject to compensating controls, and time-bounded with a defined review or expiry date.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Example Scenario | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| MFA Exemption | Legacy application technically incapable of supporting MFA; requires compensating network isolation and enhanced monitoring. | 90 days; migration plan required | CISO + CIO |

| Password Standard Deviation | Legacy system with max password length below BFS standard. | 90 days (renewable) | CISO |

| Shared Account Approval | Operational shared account required for specific automated process. | Permanent (quarterly review) | CISO |

| Extended Account Retention | Departed employee account retained for legal hold or ongoing investigation. | Duration of hold | CISO + Legal |

| Vendor Persistent Access | Critical vendor requiring always-on access for SLA-governed support. | 6 months (reviewed semi-annually) | CISO + System Owner |

| Privileged Access Extension | JIT session duration extension for complex, multi-day maintenance. | Per task; max 5 days | CISO / IT Security Manager |

| PAM Bypass | Emergency direct access without PAM brokering (IdP outage). | Duration of outage + 24 hours | CISO (verbal; documented retroactively) |

| Non-Expiring API Key | Third-party integration where the API provider does not support token expiry. | 6 months (reviewed semi-annually) | CISO |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) disabling MFA for privileged accounts under any circumstance; (b) sharing privileged account credentials between individuals; (c) omitting PAM session recording for TOP SECRET data environment access; (d) direct break-glass access without dual authorization; (e) retaining active accounts for departed employees beyond the approved legal hold period without CISO and Legal written concurrence. These restrictions are non-negotiable. |

| --- |

## 11.3  Exception Process

Requestor submits an IAM Policy Exception Request Form via the ITSM portal with: policy section, justification, affected accounts/systems, risk assessment, duration, and proposed compensating controls.

CISO Office reviews the request and performs a risk assessment. Exceptions impacting personal data systems are reviewed by the DPO.

Approved exceptions are logged in the Exception Register with: approval date, authority, expiry, compensating controls, and monitoring requirements.

All active exceptions are reviewed monthly by the CISO Office and reported quarterly to the Audit and Risk Committee.

Expired exceptions not renewed are automatically treated as policy violations and escalated to the CISO.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon any of the following triggering events:

Significant changes to BFS identity infrastructure — IdP, PAM, or IGA platform changes;

Major workforce changes, including significant mergers, acquisitions, restructuring, or outsourcing;

Material account-related security incidents, including credential compromise, privilege escalation attacks, or insider access misuse;

New or amended BSP circulars, NPC issuances, or PCI DSS requirements affecting authentication or access control;

Publication of updated CIS Controls versions or material changes to ISO/IEC 27001;

Material findings from Internal Audit, external audit, or regulatory examination relating to IAM controls.

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. New policy aligned with CIS Controls v8 Control 5, ISO/IEC 27001:2022, PCI DSS v4.0, and BSP Circular 1140. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 5 safeguards to their ISO/IEC 27001:2022 Annex A controls. Supporting controls from adjacent CIS and ISO domains are included where they reinforce the account and access management program.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 5.1 | Establish and Maintain an Inventory of Accounts | A.5.16 | Identity management | IG1 |

| 5.2 | Use Unique Passwords | A.5.17 | Authentication information | IG1 |

| 5.3 | Disable Dormant Accounts | A.5.16 | Identity management | IG1 |

| 5.4 | Restrict Administrator Privileges to Dedicated Administrator Accounts | A.8.2 | Privileged access rights | IG1 |

| 5.5 | Establish and Maintain an Inventory of Service Accounts | A.5.16 | Identity management | IG2 |

| 5.6 | Centralize Account Management | A.5.15 | Access control | IG2 |

| N/A | Access provisioning and deprovisioning | A.5.18 | Access rights | All |

| N/A | Privileged access management and Just-in-Time access | A.8.2 | Privileged access rights | All |

| N/A | Multi-factor authentication enforcement | A.8.5 | Secure authentication | All |

| N/A | User responsibility for authentication information | A.5.17 | Authentication information | All |

| N/A | Physical and logical access control — least privilege | A.5.15 | Access control | All |

| N/A | Information access restriction — need-to-know | A.8.3 | Information access restriction | All |

| N/A | Secure log-on procedures | A.8.5 | Secure authentication | All |

| N/A | Password management systems | A.8.5 | Secure authentication | All |

| N/A | Use of privileged utility programs | A.8.4 | Access to source code | IG2/3 |

| N/A | Access control to program source code | A.8.4 | Access to source code | All |

| N/A | Information security during employment (access obligations) | A.6.2 | Terms and conditions of employment | All |

| N/A | Access rights on termination or change of employment | A.6.5 | Responsibilities after termination or change | All |

| N/A | Supplier and third-party access controls | A.5.19 | Information security in supplier relationships | All |

| N/A | Remote working access security | A.6.7 | Remote working | All |

| N/A | Segregation of duties — SoD controls | A.5.3 | Segregation of duties | All |

| N/A | Logging and monitoring of authentication events | A.8.15 | Logging | All |

| N/A | Monitoring activities — UEBA / behavioral analytics | A.8.16 | Monitoring activities | IG3 |

| N/A | Cryptography — key and certificate management (machine identities) | A.8.24 | Use of cryptography | All |

| N/A | Data Privacy — access to personal data systems (RA 10173) | A.5.34 | Privacy and protection of PII | All |

| N/A | PCI DSS Req. 7 — restrict access by business need to know | A.8.3 | Information access restriction | All |

| N/A | PCI DSS Req. 8 — identify users and authenticate access | A.8.5 | Secure authentication | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate security maturity; IG3 = Advanced/highest maturity. BFS targets full IG2 compliance enterprise-wide, with IG3 controls (UEBA, adaptive access, IGA automation) deployed for privileged accounts, CRITICAL systems, and personal data processing environments.

# APPENDIX B:  Access Provisioning Authority Matrix

The table below defines the required approvals for each combination of account type and system sensitivity. All access provisioning must follow this matrix. Approvals must be recorded in the ITSM access request record.

| Account Type | PUBLIC / INTERNAL Systems | CONFIDENTIAL Systems | CRITICAL / TOP SECRET Systems | Additional Requirements |

| --- | --- | --- | --- | --- |

| Standard User | Manager approval | Manager + Data Owner approval | Manager + Data Owner + CISO approval | SoD check; least-privilege review |

| Contractor / Temp | Manager + IT Ops approval | Manager + Data Owner approval | Manager + Data Owner + CISO approval | Defined expiry date mandatory; MFA required |

| Privileged — Local | IT Security Manager approval | IT Security Manager + CISO approval | CISO + CIO approval | PAM enrollment; dedicated account; no dual-use |

| Privileged — Domain | CISO approval | CISO approval | CISO + CIO dual approval | PAW required; JIT mandatory; session recording |

| Privileged — Cloud | CISO approval | CISO approval | CISO + CIO dual approval | PAM brokered; no root use for routine ops |

| Service Account | System Owner + IT Security approval | System Owner + CISO approval | System Owner + CISO + CIO approval | Least-privilege scope; secrets manager mandatory |

| Third-Party / Vendor | Manager + System Owner approval | System Owner + CISO approval | CISO + CIO approval | MFA; time-limited; PAM brokered for privileged |

| Break-Glass (Emergency) | N/A — pre-provisioned | N/A — pre-provisioned | CISO + CIO dual authorization for activation | Sealed in PAM vault; post-use review within 24 hrs |

# APPENDIX C:  Quick Reference Card

## C.1  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| Access provisioning requests | IAM Team | ITSM Portal – Access Request |

| Account deprovisioning (departure) | IAM Team + HR | ITSM Portal – Offboarding Workflow |

| Suspicious account / auth activity | Security Operations Center (SOC) | soc@bfs.com.ph \| 24/7 hotline |

| Privileged access / PAM queries | PAM Platform Administrators | ITSM Portal \| pam-admin@bfs.com.ph |

| MFA issues / enrollment | IT Service Desk | servicedesk@bfs.com.ph \| ext. 8000 |

| Access review queries | IAM Team / Data Owners | ITSM Portal – Access Review Campaign |

| Break-glass activation | CISO + CIO (dual authorization) | ciso@bfs.com.ph \| Emergency hotline |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

| Data privacy / PII access queries | Data Privacy Officer | dpo@bfs.com.ph |

| Credential compromise reporting | SOC + CISO Office | soc@bfs.com.ph \| Emergency hotline |

## C.2  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| New employee accounts active by | Start date (provisioned before) |

| Account disable — confirmed departure (standard) | Within 4 hours |

| Account disable — involuntary / high-risk termination | Immediate (before notification) |

| Full account deprovisioning after departure | Within 10 business days |

| Third-party account deprovisioning on contract end | Within 1 business day |

| Role-change access recertification | Within 5 business days |

| Orphan account disable on discovery | Within 24 hours |

| Orphan account deletion (if not re-authorized) | Within 7 days |

| Dormant standard account review after flagging | Within 5 business days |

| Dormant privileged account review after flagging | Within 48 hours |

| Standard user access review cycle | Semi-annual (every 6 months) |

| Privileged account access review cycle | Quarterly |

| Service account and IAM role review cycle | Quarterly |

| Access review actions (revocations) actioned | Within 5 business days of decision |

| Service account password rotation — standard | Every 90 days |

| Service account password rotation — privileged | Every 30 days |

| Privileged account PAM credential auto-rotation | On every session check-in |

| Certificate expiry alert generation | 90 days before expiry |

| Break-glass use review by CISO | Within 24 hours of use |

| Break-glass credential rotation after use | Immediately after session close |

| SoD conflict resolution | Within 5 business days of detection |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-005  |  Account and Access Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
