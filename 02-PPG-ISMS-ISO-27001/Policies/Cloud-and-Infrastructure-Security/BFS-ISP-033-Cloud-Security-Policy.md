---
title: "BFS-ISP-033-Cloud-Security-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Cloud-and-Infrastructure-Security/BFS-ISP-033-Cloud-Security-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:38Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Cloud-and-Infrastructure-Security"
aliases:
  - "BFS-ISP-033-Cloud-Security-Policy"
creator: "Un-named"
created: "2026-05-08T03:23:00Z"
modified: "2026-05-08T06:56:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>CLOUD SECURITY<br>POLICY<br>Comprehensive Cloud Security Framework Across IaaS, PaaS, SaaS, and AI Cloud Services — Shared Responsibility, Configuration Security, Identity, Network, Data Protection, Monitoring, Compliance, Continuity, and Multi-Cloud Operations<br>Policy Reference: BFS-ISP-033<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with ISO/IEC 27017:2015 and ISO/IEC 27018:2019<br>Closes ISO/IEC 27001:2022 A.5.23, CSA Cloud Controls Matrix, NIST SP 800-144/145, BSP Cloud Computing Expectations<br>Consolidated Cloud Security Discipline for AI-Native Cloud Operations |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Cloud Security Policy |

| --- | --- |

| Policy Reference | BFS-ISP-033 |

| Policy Owner | Chief Information Security Officer (CISO) / Chief Information Officer (CIO) / Head of Enterprise Architecture and AI / Data Protection Officer (DPO) — quad-functional ownership |

| Document Author | CISO Office / IT Operations / Enterprise Architecture and AI Team / DPO / Cloud Engineering / FinOps / Compliance |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2026 |

| Review Date | April 2027 |

| Review Cycle | Annual baseline review with mandatory review after: material changes to BFS cloud architecture or strategy; material cloud security events at BFS or peer institutions; cloud provider material service or security changes; BSP regulatory developments affecting cloud computing; evolution of CSA Cloud Controls Matrix or ISO 27017/27018 standards |

| Supersedes | Not Applicable (New Document — Consolidates Previously Distributed Cloud Security Coverage) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. Consolidates cloud security coverage previously distributed across companion policies. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-012 (Network Security — extended for cloud); BFS-ISP-013 (Network Infrastructure — cloud network security §10); BFS-ISP-016 (Application Software Security — cloud application security); BFS-ISP-029 (Test/Dev Environment — cloud environments); BFS-ISP-030 (Capacity Management — cloud capacity §7.2 + FinOps §7.3); BFS-ISP-011-BCP (Business Continuity); BFS-ISP-011-DRP (Disaster Recovery — cloud DR §7); BFS-ISP-031 (Third-Party Risk Management — cloud vendor §8.4); BFS-ISP-003 (Data Protection — cloud data); BFS-ISP-005 (Access Management — cloud IAM); BFS-ISP-008 (Audit Logging — cloud logs); BFS-ISP-023 (Cryptography — cloud encryption); BFS-AI-001 §9.4 (Third-Party AI cloud) |

| Framework Alignment | ISO/IEC 27017:2015 (Code of practice for information security controls based on ISO/IEC 27002 for cloud services); ISO/IEC 27018:2019 (Code of practice for protection of PII in public clouds acting as PII processors); ISO/IEC 27001:2022 Annex A.5.23 (Information security for use of cloud services); CSA Cloud Controls Matrix v4 (CCM); NIST SP 800-144 (Guidelines on Security and Privacy in Public Cloud Computing); NIST SP 800-145 (Definition of Cloud Computing); CIS Benchmarks for major cloud providers (AWS, Azure, GCP) |

| Regulatory Reference | BSP Circular 1140 (IT Risk Management — cloud as IT risk dimension); BSP Circular 1048 (Cybersecurity — cloud as cybersecurity dimension); BSP Circular 808 (Outsourcing Framework — cloud as material outsourcing per BFS-ISP-031); RA 10173 Data Privacy Act (personal data in cloud per RA 10173 §43-§46 if cloud provider as personal information processor); RA 10173 §21 (cross-border data transfer for cloud regions outside Philippines); NPC issuances on cloud computing |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Information Security Officer |  |  |  |

| Chief Information Officer |  |  |  |

| Head of Enterprise Architecture and AI |  |  |  |

| Data Protection Officer |  |  |  |

| Head of Infrastructure Engineering |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Cloud Security Policy operationalizing comprehensive cloud security framework across BFS cloud operations. It consolidates cloud security coverage previously distributed across multiple BFS policies into a single dedicated cloud security document — providing coherent reference for cloud security decisions, supporting BSP examination focus on cloud computing, and addressing the strategic significance of cloud to BFS as an AI-native platform development organization.

Cloud computing is foundational to BFS strategy and operations. The BFS AI-native platform leverages cloud infrastructure for scalability, AI/ML capability, geographic resilience, and operational agility. Cloud services span the full computing stack — IaaS for compute and storage infrastructure, PaaS for application platforms and managed services, SaaS for productivity and operational applications, and increasingly specialized AI/ML cloud services and foundation model APIs. Cloud capability enables BFS to operate at scale and innovate at pace; cloud security capability ensures BFS can do so while protecting customer information, regulatory compliance, and operational integrity.

Cloud security is fundamentally different from traditional on-premises security in several important dimensions. The shared responsibility model divides security accountability between cloud provider and cloud customer (BFS) per service model — BFS retains accountability for what BFS controls regardless of cloud provider capability. Cloud configurations are software-defined and frequently mutable — configuration drift can occur rapidly compared to physical infrastructure. Cloud identity and access management has expanded scope including service identities, federated identities, and cross-account access patterns. Cloud network security operates differently from traditional network security with software-defined networking, security groups, service mesh, and provider-native security services. Cloud data protection raises specific considerations including data location, multi-tenancy isolation, encryption key management, and provider data handling. Cloud monitoring requires cloud-native observability complementing traditional security monitoring. Each dimension warrants specific cloud security discipline.

BFS as a regulated financial institution has elevated cloud security expectations. BSP supervisory framework, particularly BSP Circular 808 (Outsourcing Framework) and BSP Circular 1140 (IT Risk Management), addresses cloud computing as material outsourcing with specific governance and security expectations. Material cloud arrangements require BSP notification per BSP-ISP-031 §4.4. RA 10173 personal data protection comprehensively applies to cloud — cloud providers handling BFS personal data are personal information processors per §43-§46 with corresponding obligations. Cross-border cloud regions implicate RA 10173 §21 cross-border transfer per BFS-ISP-024 §7. NPC AI-relevant advisories increasingly address cloud-based AI services.

This policy consolidates cloud security coverage previously distributed across BFS-ISP-012 (Network Security), BFS-ISP-013 (Network Infrastructure §10), BFS-ISP-016 (Application Software Security), BFS-ISP-029 (Test/Dev Environment), BFS-ISP-030 (Capacity Management §7.2 and FinOps §7.3), BFS-ISP-011-DRP (DR §7), BFS-ISP-031 (Third-Party Risk Management §8.4), and other policies. The distributed coverage remains valid and operationally referenced; this policy provides the dedicated comprehensive document supporting cloud-focused governance and BSP cloud examination focus.

Beyond consolidation, this policy aligns BFS cloud security with international cloud security frameworks. ISO/IEC 27017:2015 provides cloud-specific implementation guidance for ISO 27002 controls. ISO/IEC 27018:2019 specifically addresses personal data protection in cloud services. CSA Cloud Controls Matrix (CCM) provides industry-standard cloud security control framework. NIST SP 800-144 and SP 800-145 provide foundational cloud security and definitional guidance. CIS Benchmarks provide configuration-specific security guidance for major cloud providers. BFS approach incorporates these frameworks calibrated to BFS context.

BFS approach to cloud security is risk-calibrated comprehensive discipline. Cloud is not treated as exception requiring case-by-case security determination; cloud is treated as primary computing model with cloud-native security discipline applied systematically. The policy provides framework supporting consistent cloud security across BFS cloud portfolio — multiple cloud providers, multiple service models, multiple deployment patterns — while maintaining flexibility for cloud-specific implementation per provider and service.

The specific objectives of this policy are to:

Establish comprehensive cloud security framework for BFS cloud operations across all cloud providers and service models;

Operationalize ISO/IEC 27017:2015 cloud security controls and ISO/IEC 27018:2019 cloud personal data protection;

Operationalize CSA Cloud Controls Matrix domains calibrated to BFS context;

Define shared responsibility model — what BFS owns vs what cloud providers own per service model;

Establish cloud governance and accountability — cloud is not exempt from BFS governance;

Address cloud-specific risks including misconfiguration, lateral movement, lock-in, multi-tenancy, jurisdictional;

Establish cloud configuration security — software-defined infrastructure with disciplined configuration management;

Establish cloud identity and access management calibrated to cloud-specific identity models;

Address cloud network security including software-defined networking, security groups, service mesh, zero trust;

Establish cloud data protection including encryption, key management, data location, multi-tenancy isolation;

Establish cloud monitoring and incident response with cloud-native observability;

Address cloud compliance and audit including audit access, evidence collection, certification reliance;

Coordinate with BFS-ISP-031 cloud vendor management, BFS-ISP-011-DRP cloud DR, BFS-ISP-030 §7.3 cloud FinOps;

Provide audit-friendly documentation supporting BSP examinations on cloud computing per Circular 808 and Circular 1140 expectations and external audit reviews of BFS cloud security discipline.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Cloud Computing | Per NIST SP 800-145 — model for enabling ubiquitous, convenient, on-demand network access to a shared pool of configurable computing resources that can be rapidly provisioned and released with minimal management effort. |

| IaaS (Infrastructure as a Service) | Cloud service model providing fundamental compute, storage, and network resources — customer manages OS, middleware, applications, data. Examples: AWS EC2, Azure VMs, GCP Compute Engine. |

| PaaS (Platform as a Service) | Cloud service model providing platform for application development and deployment — customer manages applications and data. Examples: AWS Elastic Beanstalk, Azure App Service, GCP App Engine, managed databases, managed Kubernetes. |

| SaaS (Software as a Service) | Cloud service model providing complete software application — customer manages data and configuration only. Examples: Microsoft 365, Salesforce, Workday, ServiceNow. |

| FaaS (Function as a Service) / Serverless | Cloud service model executing code on event basis without server management — customer manages code only. Examples: AWS Lambda, Azure Functions, GCP Cloud Functions. |

| AI/ML Cloud Services | Cloud-managed AI/ML capabilities — including training platforms, inference services, foundation model APIs. Per BFS-AI-001 §9.4 and this policy §11. |

| Public Cloud | Cloud infrastructure available to general public — multiple tenants share underlying infrastructure. Major providers: AWS, Microsoft Azure, Google Cloud Platform. |

| Private Cloud | Cloud infrastructure dedicated to single organization — typically on-premises or single-tenant hosted. |

| Hybrid Cloud | Combination of public and private cloud — workloads distributed per requirements. |

| Multi-Cloud | Use of multiple public cloud providers — typically for diversification, capability access, or geographic considerations. |

| Shared Responsibility Model | Division of security accountability between cloud provider and cloud customer per service model — provider responsible for security 'of' the cloud; customer responsible for security 'in' the cloud per provider-specific framework. |

| Cloud Account | Logical container for cloud resources within provider — typically corresponds to billing entity. BFS may have multiple accounts per provider for separation. |

| Tenant | Customer of multi-tenant cloud service — sharing infrastructure with other tenants while logically isolated. |

| Region | Geographic area containing cloud provider data centers — cloud resources deployed to specific regions affecting data location. |

| Availability Zone | Logically isolated location within a region — supporting high availability and disaster recovery within region. |

| Cloud Native | Architecture leveraging cloud-specific capabilities — containers, microservices, serverless, managed services, declarative infrastructure. |

| Infrastructure as Code (IaC) | Cloud infrastructure defined and provisioned through code — supporting consistency, version control, automation. Examples: Terraform, CloudFormation, ARM, Pulumi. |

| Cloud Service Provider (CSP) | Organization providing cloud services — AWS, Azure, GCP, others. |

| Cloud Access Security Broker (CASB) | Security tool providing visibility and control over cloud service usage — particularly for SaaS. |

| Cloud Workload Protection Platform (CWPP) | Security tool providing protection for cloud workloads — VMs, containers, serverless. |

| Cloud Security Posture Management (CSPM) | Security tool providing continuous assessment of cloud configuration security — detecting misconfigurations. |

| Cloud Identity and Entitlement Management (CIEM) | Security tool managing cloud identities and entitlements — addressing cloud-specific identity sprawl. |

| Customer-Managed Key (CMK) | Encryption key managed by cloud customer — providing customer control over encryption keys vs provider-managed keys. |

| Confidential Computing | Cloud computing with hardware-based encryption of data in use — protecting data even from cloud provider operational personnel. |

## 2.2  Scope

### 2.2.1  In-Scope Cloud Operations

All BFS cloud operations across cloud service providers — public cloud, private cloud, hybrid arrangements;

All cloud service models — IaaS, PaaS, SaaS, FaaS, AI/ML cloud services;

All cloud workloads — production, non-production, AI/ML, development environments per BFS-ISP-029;

Cloud-stored data including all classifications per BFS-ISP-003;

Cloud identity and access management;

Cloud network and security architecture;

Cloud monitoring and incident response;

Cloud disaster recovery per BFS-ISP-011-DRP §7;

Cloud capacity and FinOps per BFS-ISP-030;

Cloud-based AI services per coordination with BFS-AI-001 §9.4;

Foundation model API services accessed via cloud.

### 2.2.2  Out-of-Scope Items

Personnel personal use of cloud services for non-BFS purposes — addressed through BFS-ISP-020 acceptable use;

Cloud provider internal operations — provider-side accountability per shared responsibility model;

BFS subsidiary cloud operations governed by their own policies — though intercompany framework establishes consistency expectations.

## 2.3  Coverage of ISO 27001 A.5.23 and Related Frameworks

| Framework | Coverage | Section in This Policy |

| --- | --- | --- |

| ISO 27001 A.5.23 | Information security for use of cloud services | Sections 3-12 (comprehensive cloud security framework) |

| ISO 27017:2015 | Cloud-specific security controls | Detailed mapping in Appendix A |

| ISO 27018:2019 | PII protection in public cloud | Section 8 (Cloud Data Protection); Section 13.1 (RA 10173) |

| CSA CCM v4 | Industry cloud security control framework | Mapped throughout — domain mapping in Appendix A |

| NIST SP 800-144 | Cloud security and privacy guidelines | Throughout — particularly Sections 4-9 |

| BSP Circular 808 | Outsourcing including cloud | Section 13 (Compliance) coordinating with BFS-ISP-031 §8.4 |

# 3.  CLOUD SECURITY FRAMEWORK

## 3.1  Framework Principles

Shared Responsibility Awareness: BFS understands and operationalizes shared responsibility model per cloud service and provider — ambiguity on who-does-what is itself security risk;

Cloud-Native Security: Cloud security uses cloud-native security capabilities where appropriate — provider security services, cloud monitoring, cloud-native architecture patterns;

Defense in Depth: Multiple security layers — preventing single failure from causing material exposure;

Least Privilege: Access calibrated to need per BFS-ISP-005 with cloud-specific identity considerations;

Default Deny: Cloud configurations default to deny — explicit allow required;

Data-Centric: Security focuses on data protection — encryption, access controls, monitoring of data access;

Configuration Discipline: Software-defined cloud requires disciplined configuration management — drift is exposure;

Continuous Monitoring: Cloud security continuously monitored — point-in-time security inadequate for dynamic cloud;

Automation Where Appropriate: Security controls automated where automation improves consistency and speed;

Compliance Throughout: Cloud security supports BFS regulatory compliance — RA 10173, BSP, others;

Continuity Aware: Cloud security supports BFS continuity per BFS-ISP-011-BCP/DRP;

Continuous Improvement: Cloud security framework evolves with cloud capability development and threat landscape.

## 3.2  Shared Responsibility Model

Shared responsibility divides security accountability between cloud provider and BFS per service model:

| Service Model | Cloud Provider Responsibility | BFS Responsibility |

| --- | --- | --- |

| IaaS | Physical infrastructure, hypervisor, basic network, storage hardware | Operating system, middleware, runtime, applications, data, IAM, network configuration, encryption, monitoring, compliance use |

| PaaS | Physical infrastructure, OS, middleware, runtime | Applications, data, IAM, application configuration, encryption of data at app level, monitoring, compliance use |

| SaaS | Physical infrastructure, OS, middleware, runtime, application | Data, IAM, application configuration, monitoring of use, compliance use |

| FaaS / Serverless | Physical infrastructure, OS, runtime, function execution platform | Function code, data, IAM, function configuration, monitoring, compliance use |

| Managed AI Services | Underlying infrastructure, AI service platform, model hosting | Use of service, data submitted, integration, IAM, compliance use, governance per BFS-AI-001 |

Important nuances:

'BFS responsibility' includes responsibility BFS retains regardless of cloud provider capability — BFS does not outsource accountability per BFS-ISP-031 §3.1;

Provider-specific frameworks (AWS Shared Responsibility Model, Azure Shared Responsibility Model, GCP Shared Responsibility Model) provide detail beyond general framework — BFS uses provider-specific framework operationally;

Misunderstanding of shared responsibility is foundational source of cloud security incidents — assuming provider handles what BFS retains responsibility for produces preventable exposures;

Service-specific responsibilities vary within service models — managed Kubernetes vs unmanaged Kubernetes have different responsibility splits.

## 3.3  Cloud Security Governance

Board Audit & Risk Committee: Approves this policy. Reviews material cloud security risks. Material cloud incidents visibility;

Information Security Steering Committee: Reviews cloud security posture. Material cloud security decisions reviewed;

Cloud Center of Excellence (where applicable): Cross-functional capability supporting cloud security and operations across BFS;

CISO: Document co-owner. Cloud security operationally accountable;

CIO: Document co-owner. Cloud infrastructure operationally accountable;

Head of EA & AI: Document co-owner. Cloud architecture decisions;

DPO: Document co-owner. Personal data in cloud per RA 10173 and ISO 27018;

Cloud Security Engineering: Operational cloud security capability — CSPM, CWPP, CIEM, CASB tooling and operations;

Internal Audit: Independent verification per BFS-ISMS-008.

| SHARED RESPONSIBILITY IS THE FOUNDATION:  Misunderstanding shared responsibility is the foundational cause of cloud security incidents at BFS and peer institutions. Assumptions like 'the cloud provider handles security' or 'AWS will protect our data' lead to BFS not implementing security responsibilities BFS retains. Conversely, replicating on-premises security in cloud (assuming BFS handles everything) creates wasteful duplication and may miss cloud-specific concerns. BFS approach: explicitly document responsibility per service per provider; train cloud personnel on shared responsibility; verify BFS responsibilities are actually being executed. |

| --- |

# 4.  CLOUD STRATEGY AND DEPLOYMENT

## 4.1  Cloud Strategy

BFS approach to cloud is strategic, not tactical:

Cloud-First for New Workloads: New workloads default to cloud unless specific reason for on-premises;

Selective Migration of Legacy: Existing workloads migrated to cloud per business case calibrated to migration value vs cost vs risk;

AI-Native Leverage: Cloud AI/ML capabilities leveraged for BFS AI-native platform per BFS-AI-001 architecture;

Multi-Cloud Strategic Approach: Multi-cloud per concentration risk management per BFS-ISP-031 §8.1 — though balanced against operational efficiency;

Cloud Architecture Patterns: Standardized cloud architecture patterns per BFS Cloud Reference Architecture supporting consistent cloud operations.

## 4.2  Cloud Provider Selection

PS-2.1  Cloud provider engagement subject to BFS-ISP-031 third-party risk management with cloud-specific provisions per BFS-ISP-031 §8.4.

PS-2.2  Cloud provider materiality assessment per BFS-ISP-031 §4 — most material cloud arrangements meet MATERIAL threshold triggering BSP Circular 808 notification.

PS-2.3  Cloud provider evaluation considers: security maturity (certifications including ISO 27001, ISO 27017, ISO 27018, SOC 2, PCI DSS), service capability, regional presence including Philippines or appropriate adequacy jurisdictions per RA 10173 §21, financial stability, vendor concentration risk.

PS-2.4  Approved cloud providers documented per BFS Approved Cloud Providers List maintained by Enterprise Architecture and AI.

PS-2.5  Use of cloud providers outside approved list requires evaluation and approval — exception process supports BFS Cloud Provider List currency without blocking legitimate needs.

## 4.3  Cloud Account Strategy

Account Separation: Multiple cloud accounts per cloud provider supporting separation — production vs non-production per BFS-ISP-029, business unit separation, regulatory separation;

Account Naming Conventions: Standardized account naming supporting clear identification;

Account Hierarchy: Account hierarchy reflecting BFS organizational structure where appropriate;

Account Provisioning: Disciplined account provisioning per BFS Cloud Account Provisioning standard;

Account Lifecycle: Account lifecycle including deprovisioning of unused accounts.

## 4.4  Region and Data Residency

Cloud region selection has security and compliance implications:

Philippines Regions: Where cloud providers offer Philippines regions, used for data subject to data residency considerations or BSP supervisory examination access expectations;

Regional Adequacy: Where Philippines regions not available or not selected, region jurisdiction adequacy per RA 10173 §21 considered;

Multi-Region Architecture: Multi-region for resilience per BFS-ISP-011-DRP §7.4 — typically Philippines + appropriate alternate region;

Region Documentation: Cloud workload region documented in BFS Cloud Inventory supporting compliance traceability;

Data Location Verification: Periodic verification that cloud workloads operate in expected regions — drift can occur through misconfiguration.

## 4.5  Cloud Inventory

PS-5.1  BFS shall maintain Cloud Inventory documenting cloud accounts, workloads, services, regions, classifications, and ownership.

PS-5.2  Cloud Inventory shall be maintained continuously through automation where possible — manual inventory falls behind cloud rate of change.

PS-5.3  Cloud Inventory shall coordinate with: BFS Asset Inventory per BFS-ISP-002, BFS-ISP-031 third-party inventory for cloud providers, BFS-AI-001 AI Inventory for cloud AI services, BFS-ISP-008 audit logging coverage.

PS-5.4  Cloud Inventory shall support cloud governance — security posture review, capacity per BFS-ISP-030, FinOps cost per BFS-ISP-030 §7.3, compliance verification.

# 5.  CLOUD CONFIGURATION SECURITY

Cloud configuration is software-defined and frequently mutable. Configuration discipline is foundational cloud security capability.

## 5.1  Configuration Baseline

PS-1.1  Cloud configuration baselines shall be established per cloud provider and service — defining secure default configurations.

PS-1.2  Configuration baselines shall align with industry guidance — CIS Benchmarks for major cloud providers, provider security best practices, CSA CCM controls.

PS-1.3  Configuration baselines shall be calibrated to BFS context — adapting industry baselines to BFS regulatory and operational requirements.

PS-1.4  Configuration baselines shall be reviewed and updated periodically — quarterly baseline review with event-driven updates for material new services or threats.

## 5.2  Infrastructure as Code (IaC)

IaC for Cloud Provisioning: Cloud infrastructure provisioned through code — Terraform, CloudFormation, ARM, Pulumi, or equivalent;

IaC in Source Control: IaC in source control per BFS-ISP-016 §6.2 — version controlled, code reviewed;

IaC Security Scanning: IaC subject to security scanning detecting misconfigurations before deployment — Terrascan, Checkov, tfsec, or equivalent;

IaC Modules and Standards: Standardized IaC modules supporting consistent secure provisioning;

Drift Detection: Drift between IaC and actual cloud state detected and addressed — manual changes to cloud bypassing IaC create drift;

Privileged IaC Access: IaC with privileges to modify cloud infrastructure subject to enhanced controls — pipeline security per BFS-ISP-016 §6.3.

## 5.3  Cloud Security Posture Management (CSPM)

CSPM tooling provides continuous configuration assessment:

Continuous Assessment: Cloud configuration continuously assessed against baseline — drift and new misconfigurations detected promptly;

Multi-Cloud Visibility: CSPM supporting visibility across BFS cloud providers — unified view of configuration security;

Risk-Calibrated Alerts: CSPM alerting calibrated by severity — critical issues prompt immediate action; lower-severity issues addressed per cadence;

Automated Remediation Where Appropriate: Routine misconfigurations addressed through automated remediation where feasible — scoped to specific safe remediations;

CSPM Coverage: CSPM coverage of all cloud accounts and services — gaps in coverage are blind spots.

## 5.4  Cloud Service Hardening

Service Defaults Reviewed: Cloud service defaults reviewed before use — many cloud services have defaults inappropriate for production;

Public Access Controls: Default deny public access — public-facing cloud resources require explicit configuration with security review;

Encryption Defaults: Encryption enabled by default for storage, databases, communications — per BFS-ISP-023;

Logging Defaults: Logging enabled and routed to central security monitoring per BFS-ISP-008;

Least-Privileged Service Roles: Cloud service roles configured per least privilege — broad permissions are exposure;

Service-Specific Hardening: Service-specific hardening per BFS Cloud Service Hardening standards — calibrated to service criticality.

## 5.5  Container and Kubernetes Security

Container Image Security: Container images from approved sources, vulnerability scanned, signed where appropriate;

Container Registry: BFS-managed container registry with scanning and signing;

Kubernetes Configuration: Kubernetes clusters configured per CIS Kubernetes Benchmark with BFS context calibration;

Kubernetes RBAC: Kubernetes role-based access control per least privilege;

Kubernetes Network Policies: Network policies for pod-to-pod communication;

Kubernetes Admission Controllers: Admission controllers enforcing security policies — preventing non-compliant deployments;

Container Runtime Security: Container runtime security monitoring detecting anomalous container behavior.

## 5.6  Serverless Security

Function Code Security: Function code subject to BFS-ISP-016 secure development;

Function Permissions: Function permissions least-privileged per execution role;

Function Inputs Validation: Function inputs validated preventing injection and other input-driven attacks;

Function Dependencies: Function dependencies subject to vulnerability scanning;

Function Concurrency Limits: Function concurrency limits preventing runaway execution;

Function Logging: Function executions logged supporting audit and incident response.

# 6.  CLOUD IDENTITY AND ACCESS MANAGEMENT

Cloud identity is foundational to cloud security. Cloud identity differs from traditional identity — service identities, federated identities, cross-account access, dynamic identity all warrant cloud-specific discipline.

## 6.1  Cloud Identity Strategy

Federated Identity: Cloud identity federated with BFS enterprise identity per BFS-ISP-005 §6 — single identity model rather than separate cloud identities;

Just-In-Time Privileged Access: Privileged cloud access granted just-in-time per BFS-ISP-005 §7 — standing privileged access minimized;

Service Identity: Cloud service identities (service principals, service accounts, IAM roles) used for service-to-service access — not human credentials;

MFA Universal: Multi-factor authentication universal for human cloud access per BFS-ISP-005 §5;

Privileged Access Management: Cloud privileged access through PAM per BFS-ISP-005 §7 with cloud-specific extensions.

## 6.2  Cloud Authorization

PS-2.1  Cloud authorization shall implement least privilege — access calibrated to business need, not 'just to be safe' broader access.

PS-2.2  Authorization shall be defined explicitly — broad blanket authorizations (cloud admin equivalents) granted only with explicit justification and enhanced governance.

PS-2.3  Authorization shall be reviewed periodically — typically quarterly for privileged access; annual for general access. Cloud entitlement creep is significant cloud risk.

PS-2.4  Cross-account access (where applicable) shall be authorized through specific mechanisms — explicit cross-account roles, not broad trust.

PS-2.5  Service account/principal authorization narrowly scoped — service identity should have only required permissions for its function.

## 6.3  Cloud Identity and Entitlement Management (CIEM)

Continuous Entitlement Visibility: CIEM tooling providing visibility into cloud entitlements across providers;

Excessive Entitlement Detection: Detection of identities with excessive entitlements relative to actual use;

Entitlement Right-Sizing: Periodic right-sizing — reducing entitlements to actual need;

Privileged Identity Detection: Detection of identities with privileged access supporting privileged identity governance;

Cross-Account/Cross-Cloud Visibility: Visibility across BFS cloud accounts and providers.

## 6.4  Cloud Credentials

Long-Lived Credentials Avoided: Long-lived cloud credentials (access keys, etc.) avoided where alternatives exist — service principals, IAM roles, short-lived tokens preferred;

Credential Rotation: Where long-lived credentials necessary, rotated regularly;

Credential Storage: Credentials stored securely per BFS-ISP-005 §5 with secrets management integration;

No Credential Hardcoding: Credentials not hardcoded in code, configuration, or container images per BFS-ISP-016;

Credential Leakage Detection: Detection of credentials in code repositories, public repositories, or other inappropriate locations;

Compromised Credential Response: Compromised credentials immediately rotated and investigated per BFS-ISP-017.

## 6.5  Cloud Privileged Access

Privileged Access Categorization: Cloud privileged access includes: cloud admin equivalents, service principal admin, security tool admin, billing admin;

Privileged Access Approval: Privileged access requires explicit approval per BFS-ISP-005 §7;

Privileged Action Logging: Privileged actions logged per BFS-ISP-008 with cloud-specific event types;

Privileged Session Recording: Where appropriate, privileged session recording for high-impact administrative activity;

Emergency Access (Break-Glass): Break-glass credentials for emergency cloud access — strictly controlled, monitored, periodically tested.

# 7.  CLOUD NETWORK SECURITY

Cloud network security operates differently from traditional network security with software-defined networking, security groups, service mesh, and provider-native security services.

## 7.1  Cloud Network Architecture

Network Segmentation: Cloud network segmentation per BFS-ISP-013 §3 — VPCs, subnets, security groups providing logical separation;

Public/Private Architecture: Public-facing resources separated from private — public subnets for exposed services; private subnets for internal services;

Multi-Tier Architecture: Multi-tier separation — web tier, application tier, data tier with controlled inter-tier communication;

Cross-VPC Connectivity: Controlled cross-VPC connectivity through VPC peering, transit gateways, or service mesh;

On-Premises Connectivity: Site-to-site VPN or dedicated connection (Direct Connect, ExpressRoute, Cloud Interconnect) per BFS-ISP-013;

Internet Egress Control: Egress traffic controlled — preventing data exfiltration through controlled egress paths.

## 7.2  Security Groups and Network Access

PS-2.1  Security groups configured per least privilege — only required ports and protocols open.

PS-2.2  Security groups configured with specific source restrictions — open-to-anywhere security groups (0.0.0.0/0) require explicit justification and security review.

PS-2.3  Security groups subject to periodic review — drift toward broader configurations addressed.

PS-2.4  Default security groups configured restrictively — preventing inadvertent open access through defaults.

PS-2.5  Network ACLs (where used) configured complementing security groups — defense in depth.

## 7.3  Cloud Web Application Firewall (WAF) and DDoS Protection

WAF Coverage: Web Application Firewall protecting public-facing applications per BFS-ISP-016 §7.4;

Cloud-Native WAF: Cloud provider WAF services (AWS WAF, Azure WAF, Cloud Armor) leveraged where appropriate;

DDoS Protection: Cloud-native DDoS protection (AWS Shield, Azure DDoS Protection, Cloud Armor DDoS) for public-facing resources;

OWASP Coverage: WAF covering OWASP Top 10 application security risks;

Custom Rules: Custom WAF rules calibrated to BFS application context and threat landscape.

## 7.4  Service Mesh and Microservices Security

Service Mesh: Where service mesh deployed (Istio, Linkerd, AWS App Mesh, etc.), provides service-to-service security;

mTLS: Mutual TLS for service-to-service communication where appropriate — particularly within Kubernetes;

Service Authorization: Service-to-service authorization through service mesh policies;

Traffic Encryption: Inter-service traffic encrypted per BFS-ISP-023;

Microservices Isolation: Microservices appropriately isolated — no implicit trust between services.

## 7.5  Zero Trust Cloud Networking

Zero Trust Principles: Cloud networking adopts zero trust principles — never trust, always verify; identity-based access; assume breach;

Workload Identity: Workload identity for service-to-service access verification;

Continuous Verification: Continuous verification of access requests rather than perimeter-based trust;

Microsegmentation: Workload-level segmentation rather than network-perimeter-only segmentation;

Zero Trust Maturity Progression: Progression toward zero trust through phased implementation calibrated to BFS context.

## 7.6  Cloud DNS and Edge Security

DNS Security: Cloud DNS service with DNSSEC where supported, query monitoring per BFS-ISP-013 §6;

DNS Filtering: DNS filtering for known malicious domains;

Edge Security: CDN and edge security including TLS termination, rate limiting, geo-blocking where appropriate;

API Gateway Security: API gateway security per BFS-ISP-016 §10 — authentication, rate limiting, request validation, monitoring.

# 8.  CLOUD DATA PROTECTION

Cloud data protection is foundational. Data is what BFS is fundamentally protecting; cloud is the location.

## 8.1  Data Classification in Cloud

Data Classified per BFS-ISP-003: All cloud data classified per BFS data classification framework — PUBLIC, INTERNAL, CONFIDENTIAL, RESTRICTED;

Cloud Service Calibration: Cloud service selection calibrated to data classification — RESTRICTED data may not be appropriate for all cloud services;

Data Tagging: Cloud data tagged with classification supporting policy enforcement;

Sensitive Data Inventory: Sensitive cloud data inventoried supporting protection and compliance verification.

## 8.2  Cloud Encryption

Cloud encryption per BFS-ISP-023 with cloud-specific considerations:

PS-2.1  Cloud data at rest shall be encrypted — using cloud provider encryption services or BFS-managed encryption per BFS-ISP-023.

PS-2.2  Cloud data in transit shall be encrypted using TLS 1.2 or above per BFS-ISP-023.

PS-2.3  Customer-Managed Keys (CMK) used for sensitive data — providing BFS control over encryption keys per BFS-ISP-023 §6.

PS-2.4  Provider-managed encryption acceptable for less-sensitive data — appropriate to data classification and operational requirements.

PS-2.5  Confidential computing considered for highly sensitive workloads where supported — protecting data in use from cloud provider operational personnel access.

PS-2.6  Encryption verification through CSPM and audit logging per BFS-ISP-008.

## 8.3  Cloud Key Management

BFS Key Management Service: Cloud KMS used per BFS-ISP-023 §6 — AWS KMS, Azure Key Vault, GCP KMS, or BFS-managed alternatives;

Key Hierarchy: Master keys, data keys per cryptographic best practices;

Key Rotation: Periodic key rotation per BFS-ISP-023 §7;

Key Access Controls: Key access strictly controlled — separate from data access controls;

Key Logging: Key access and use logged per BFS-ISP-008;

Key Backup: Key backup supporting recovery — key loss is data loss for encrypted data.

## 8.4  Multi-Tenancy Data Isolation

Logical Isolation: Multi-tenant cloud services provide logical isolation between tenants;

BFS Account Separation: BFS data within BFS cloud accounts logically separated from other tenants;

Cross-Tenant Concerns: Awareness of multi-tenancy concerns including potential side-channel attacks, shared resource exhaustion, escape vulnerabilities;

Service-Specific Isolation: Different services have different isolation models — assessed per service;

Confidential Computing for High Sensitivity: For highest-sensitivity workloads, confidential computing or single-tenant deployments considered.

## 8.5  Personal Data in Cloud (RA 10173 / ISO 27018)

Personal data in cloud subject to RA 10173 with ISO 27018 alignment:

Cloud Provider as Personal Information Processor: Cloud providers handling BFS personal data are personal information processors per RA 10173 §43-§46 — contractual provisions per BFS-ISP-031 §6.3 apply;

Data Location: Personal data location documented and managed — supporting RA 10173 §21 cross-border transfer compliance;

Data Subject Rights: Cloud architecture supports RA 10173 data subject rights operationalization;

ISO 27018 Compliance: Cloud providers handling personal data align with ISO 27018 — verified through certification or contractual commitments;

Personal Data Discovery: Periodic discovery of personal data in cloud — preventing unrecognized personal data accumulation;

Personal Data Minimization: Personal data in cloud minimized — only necessary data, retained only for necessary purpose.

## 8.6  Data Loss Prevention

Cloud DLP: Cloud Data Loss Prevention for sensitive data — particularly for SaaS where extensive personnel access exists;

Egress Monitoring: Monitoring data leaving cloud — preventing exfiltration through cloud services;

DLP Coverage: DLP coverage of cloud storage, cloud applications, cloud email, cloud collaboration.

## 8.7  Cloud Backup and Data Recovery

Per BFS-ISP-011 backup framework with cloud-specific considerations;

Cloud Backup Strategy: Cloud workload backup per workload tier — Tier 1 with comprehensive backup; lower tiers proportionate;

Cross-Region Backup: Cross-region backup for resilience;

Cross-Cloud Backup: Cross-cloud backup considered for highest-criticality workloads;

Backup Testing: Backup recovery testing per BFS-ISP-011 cadence.

| DATA IS WHAT YOU'RE PROTECTING:  Cloud security infrastructure ultimately serves data protection. Configuration security, identity, network security, monitoring all support the central goal of protecting BFS and customer data. When prioritizing cloud security investments, data-protection impact is the primary criterion. Encryption of sensitive data, proper IAM for sensitive data access, monitoring of sensitive data access — these directly protect what matters. Configuration hardening of services not handling sensitive data is lower priority than securing services that do. |

| --- |

# 9.  CLOUD MONITORING AND INCIDENT RESPONSE

Cloud monitoring requires cloud-native observability complementing traditional security monitoring.

## 9.1  Cloud Logging

Cloud logging per BFS-ISP-008 with cloud-specific extensions:

Cloud Audit Logs: Provider audit logs (AWS CloudTrail, Azure Activity Log, GCP Cloud Audit Logs) enabled across all accounts;

Cloud Service Logs: Service-specific logs (storage access, database access, application logs) collected;

Network Flow Logs: Network flow logs (VPC Flow Logs, NSG Flow Logs, VPC Flow Logs) per BFS-ISP-013 §6;

DNS Logs: DNS query logs supporting threat detection;

Container/Kubernetes Logs: Container and Kubernetes logs;

Logs to Central SIEM: Cloud logs forwarded to BFS SIEM per BFS-ISP-008 with appropriate retention;

Log Integrity: Cloud logs integrity protected — provider-immutable logs, log delivery verification.

## 9.2  Cloud Security Monitoring

CSPM Continuous Monitoring: Per Section 5.3 — continuous configuration security monitoring;

CWPP Workload Monitoring: Cloud Workload Protection Platform monitoring workload behavior;

CIEM Identity Monitoring: Cloud Identity and Entitlement Management per Section 6.3;

Cloud-Native Threat Detection: Cloud provider threat detection services (AWS GuardDuty, Microsoft Defender for Cloud, GCP Security Command Center) leveraged;

CASB for SaaS: Cloud Access Security Broker for SaaS visibility and control where applicable;

Behavioral Analytics: User and Entity Behavior Analytics (UEBA) extended to cloud — anomalous cloud activity detection.

## 9.3  Cloud Incident Detection

Cloud-Specific Detection Use Cases: Cloud-specific detection scenarios — credential compromise, unusual API activity, configuration changes by unauthorized parties, data exfiltration patterns, mining activity, lateral movement in cloud;

Cloud Detection Tuning: Detection tuning calibrated to cloud — cloud has different normal-activity patterns than on-premises;

Multi-Cloud Detection: Detection across cloud providers — unified threat picture rather than per-provider silos;

Threat Intelligence Integration: Cloud threat intelligence — provider security advisories, cloud-specific threat indicators.

## 9.4  Cloud Incident Response

Cloud incident response per BFS-ISP-017 with cloud-specific considerations:

Cloud Incident Playbooks: Cloud-specific incident response playbooks — credential compromise, account takeover, configuration compromise, data exposure;

Cloud Forensic Capability: Capability for cloud forensic investigation — log analysis, snapshot preservation, configuration history;

Cloud Provider Coordination: Provider coordination for material incidents — provider security teams may have visibility BFS lacks;

Cloud Containment: Cloud-specific containment actions — disabling credentials, isolating workloads, modifying security groups, snapshotting evidence;

Multi-Cloud Coordination: Incidents potentially spanning multiple clouds coordinated centrally;

Lessons Learned: Cloud incidents per BFS-ISMS-010 lessons learned with cloud-specific patterns identified.

# 10.  CLOUD CONTINUITY AND RESILIENCE

Cloud continuity and resilience per BFS-ISP-011-BCP and BFS-ISP-011-DRP §7 with cloud-specific considerations.

## 10.1  Cloud Resilience Architecture

Multi-AZ Architecture: Critical workloads deployed across multiple availability zones supporting zone failure resilience;

Multi-Region Architecture: Critical workloads with multi-region capability per BFS-ISP-011-DRP §7.4;

Auto-Scaling: Auto-scaling for resilience to load variations and partial failures;

Stateless Architecture Where Appropriate: Stateless services with externalized state supporting resilience;

Health Checks and Self-Healing: Health checks and automated self-healing for resilient operations;

Circuit Breakers and Graceful Degradation: Circuit breakers and graceful degradation patterns for partial failure handling.

## 10.2  Cloud Disaster Recovery

Cloud DR per BFS-ISP-011-DRP §7:

Cross-Region DR: DR through cross-region replication for Tier 1/2 workloads;

Cross-Cloud DR Considered: Cross-cloud DR for highest-criticality workloads where appropriate — though operational complexity considered;

Hybrid DR: Cloud-to-on-premises or on-premises-to-cloud DR per workload requirements;

Cloud DR Testing: Cloud DR testing per BFS-ISP-011-DRP §10 cadence;

Cloud Provider Failure Scenarios: Planning for cloud provider failure scenarios — though provider-wide failure rare, BSP supervisory framework expects consideration.

## 10.3  Cloud Provider Outages

Provider Outage Awareness: Awareness of cloud provider outage history and patterns;

Provider Status Monitoring: Provider status pages and notifications monitored;

Provider Outage Response: Provider outage response procedures — coordinated through BFS-ISP-017 incident response with vendor coordination;

Customer Communication: Customer communication for material outages affecting BFS services;

Recovery Coordination: Coordination with provider for service restoration;

Post-Outage Analysis: Provider post-incident reviews analyzed for lessons supporting BFS resilience improvement.

## 10.4  Vendor Lock-In and Exit

Lock-In Awareness: Vendor lock-in considered in cloud architecture — provider-specific services create deeper lock-in than open-standards services;

Exit Strategy: Cloud exit strategies per BFS-ISP-031 §9 — particularly important for material cloud arrangements;

Data Portability: Data portability considered — formats, extraction mechanisms, alternate platform compatibility;

Service Substitutability: Service substitutability considered — proprietary services have higher substitution cost than commodity services;

Multi-Cloud as Lock-In Mitigation: Multi-cloud strategy as partial lock-in mitigation — though not eliminating provider-specific service lock-in.

# 11.  CLOUD AI/ML SERVICES

Cloud AI/ML services have specific considerations beyond general cloud security per BFS-AI-001 §9.4 and BFS-AI-002 §9.11.

## 11.1  Foundation Model API Security

Provider Selection: Foundation model providers selected per BFS-AI-003 §5.4 — security, data handling, model governance evaluation;

API Authentication: API authentication through BFS-managed credentials — not personal accounts;

API Access Controls: Application-level access controls determining what BFS personnel and systems can use foundation model APIs;

API Rate Limiting and Cost Controls: Rate limiting and cost controls preventing runaway use;

API Logging: API requests/responses logged supporting audit per BFS-AI-001 §8.4;

API Data Considerations: Data submitted via API per BFS-AI-005 data classification rules — provider may use for training depending on terms.

## 11.2  Cloud AI/ML Training Infrastructure

Training Workload Security: AI/ML training workloads per BFS-ISP-029 environment separation;

Training Data Security: Training data per BFS-AI-004 with cloud storage security per Section 8;

Training Compute Security: Training compute (GPU/TPU/accelerator) with appropriate isolation;

Model Artifact Security: Trained models stored in BFS-managed model registry per BFS-AI-003 §11.1 with appropriate security.

## 11.3  Cloud AI/ML Inference Infrastructure

Inference Workload Security: Production inference per BFS-AI-001 §5.5 with cloud production security;

Inference Endpoint Security: Inference endpoints secured against adversarial attacks per BFS-AI-002 §9.4;

Inference Data Privacy: Inference inputs/outputs per data classification with appropriate logging discipline;

Inference Cost Controls: Per BFS-ISP-030 §7.3 — inference cost monitoring and controls.

## 11.4  Vector Databases and AI Data Stores

Vector database security per BFS-AI-004 §8.4 with cloud security per Section 8;

Embedding security — embeddings can encode sensitive information;

Access controls calibrated to data sensitivity;

Backup and recovery per BFS-ISP-011.

# 12.  CLOUD COST MANAGEMENT (FINOPS)

Cloud cost management is operational and security concern. Per BFS-ISP-030 §7.3 with security-relevant considerations.

## 12.1  Cost Anomaly Detection as Security Signal

Cost Anomalies: Cloud cost anomalies can indicate security incidents — cryptomining, runaway compute from compromise, exfiltration through transfer charges, abused services;

Cost Anomaly Detection: Continuous cost anomaly detection per BFS-ISP-030 §7.3;

Cost-Security Coordination: Cost and security functions coordinate on anomaly investigation.

## 12.2  FinOps Discipline

Cost Visibility: Continuous visibility into cloud costs by service, account, team, environment per BFS-ISP-030 §7.3;

Cost Allocation: Costs allocated to consuming functions supporting accountability;

Right-Sizing: Periodic right-sizing eliminating over-provisioning;

Reserved Capacity: Reserved capacity commitments for stable workloads per BFS-ISP-030 §7.3;

Idle Resource Removal: Idle resources identified and removed — particularly important in development environments per BFS-ISP-029.

## 12.3  Cost Controls

Account-Level Budgets: Budget alerts and limits at cloud account level;

Service-Level Limits: Service-level concurrency and quota limits;

Egress Cost Awareness: Cloud egress costs significant — architecture choices affect egress;

AI/ML Cost Awareness: AI/ML compute particularly expensive — disciplined cost management essential per BFS-ISP-030 §7.1.

# 13.  CLOUD COMPLIANCE AND AUDIT

## 13.1  RA 10173 Personal Data in Cloud

Cloud personal data per RA 10173 §43-§46 — cloud provider as personal information processor with contractual obligations per BFS-ISP-031 §6.3;

Cross-border cloud regions per RA 10173 §21 — adequacy assessment for non-Philippines cloud regions per BFS-ISP-024 §7;

Personal data right to erasure per RA 10173 §16(e) operationalized for cloud — including cloud backups;

ISO 27018 alignment for personal data in cloud per Section 8.5;

DPO oversight of personal data in cloud — DPO is document co-owner.

## 13.2  BSP Cloud Computing Considerations

Material cloud arrangements per BSP Circular 808 outsourcing — BFS-ISP-031 §4.4 notification requirements apply;

BSP supervisory access to cloud-hosted material BFS information — vendor commitments per BFS-ISP-031 §6.1 right to examine;

BSP IT risk management per BSP Circular 1140 — cloud as IT risk dimension;

BSP cybersecurity per BSP Circular 1048 — cloud security as cybersecurity component;

BSP examination cooperation — BFS prepared to support BSP examination of cloud arrangements.

## 13.3  Cloud Audit and Assurance

Cloud Provider Certifications: Cloud provider certifications (ISO 27001, ISO 27017, ISO 27018, SOC 2, PCI DSS) reviewed;

SOC Reports: Provider SOC 1/SOC 2 reports reviewed periodically — typically annually;

Right to Audit: BFS right to audit per BFS-ISP-031 §6.1 — though typically exercised through SOC reports rather than direct audit for major cloud providers;

Internal Cloud Audit: BFS Internal Audit per BFS-ISMS-008 — including cloud security audit coverage;

Continuous Compliance Monitoring: Continuous compliance monitoring through CSPM rather than periodic point-in-time assessment;

Compliance Evidence: Cloud compliance evidence collected supporting audit and regulatory examination.

## 13.4  Cloud Security Certifications and Frameworks

Provider Certifications Tracked: BFS tracks cloud provider certification status — including renewal cycles;

Provider Compliance with PCI DSS: For cardholder data environment per PCI DSS requirements;

Industry Frameworks: CSA STAR registry status for cloud providers;

BFS Certification Coverage: BFS ISO 27001 certification covers cloud-hosted scope where applicable.

# 14.  ROLES AND RESPONSIBILITIES

| Role | Cloud Security Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Reviews material cloud security risks. Material cloud incidents visibility through reporting. |

| Information Security Steering Committee | Reviews cloud security posture quarterly. Material cloud security decisions. Coordination across security and IT functions. |

| Chief Information Security Officer | Document co-owner. Operationally accountable for cloud security framework. CSPM/CWPP/CIEM operations. Cloud security monitoring per BFS-ISP-008. |

| Chief Information Officer | Document co-owner. Cloud infrastructure operations. Cloud account management. Cloud capacity per BFS-ISP-030. |

| Head of Enterprise Architecture and AI | Document co-owner. Cloud architecture decisions. Cloud reference architecture. Cloud AI/ML services per Section 11. |

| Data Protection Officer | Document co-owner. Personal data in cloud per RA 10173 + ISO 27018. NPC liaison for cloud personal data matters. |

| Chief Risk Officer | Co-approver. Cloud risk integration with enterprise risk. |

| Chief Compliance Officer | Co-approver. Cloud regulatory compliance including BSP Circular 808 + 1140 + 1048. |

| Head of Infrastructure Engineering | Co-approver. Cloud infrastructure architecture. IaC standards. Cloud network architecture. |

| Cloud Security Engineering | Operational cloud security capability — CSPM, CWPP, CIEM, CASB tooling and operations. Cloud security monitoring. |

| Cloud Center of Excellence (where applicable) | Cross-functional cloud capability supporting cloud operations across BFS — architecture, FinOps, security, governance. |

| Cloud Account Owners | Operational accountability for specific cloud accounts and workloads. |

| Workload Owners | Operational responsibility for specific cloud workloads — security, performance, cost. |

| Internal Audit | Independent verification per BFS-ISMS-008 — cloud security audit coverage. |

# 15.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Cloud security effectiveness measured through KPIs reviewed quarterly by ISSC and reported to Board Audit & Risk Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Cloud Inventory currency | ≥ 95% | Quarterly |

| Cloud workloads with documented classification | ≥ 95% | Quarterly |

| CSPM coverage of cloud accounts | 100% | Quarterly |

| CSPM critical findings remediated within target time | ≥ 95% | Monthly |

| Cloud workloads provisioned through IaC | ≥ 90% for new workloads | Quarterly |

| IaC security scanning in pipeline | 100% | Quarterly |

| Cloud configuration drift detected and addressed | Track and trend | Continuous |

| Cloud federated identity coverage | ≥ 95% of human cloud access | Quarterly |

| Cloud MFA coverage | 100% of human cloud access | Continuous |

| Long-lived cloud credentials minimized | Track and reduce | Quarterly |

| CIEM identity entitlement reviews | Quarterly per BFS-ISP-005 | Quarterly |

| Cloud encryption coverage for sensitive data | 100% | Quarterly |

| Customer-Managed Keys for RESTRICTED data | 100% where supported | Quarterly |

| Cloud audit logs to SIEM | 100% of in-scope accounts | Continuous |

| Cloud security incidents detected and addressed | Track and trend | Continuous |

| Cloud DR testing per BFS-ISP-011-DRP | Per cadence | Annual |

| Cloud cost anomaly investigations | 100% | Per anomaly |

| Multi-region resilience for Tier 1 workloads | 100% | Quarterly |

| Personal data in cloud documented per RA 10173 | 100% | Annual |

| Cross-border cloud data per BFS-ISP-024 §7 | 100% adequacy assessed | Annual |

| Cloud provider certification status tracked | 100% of in-use providers | Annual |

| BSP examination findings on cloud | Zero material findings | Per examination |

| NPC findings on cloud personal data | Zero material findings | Per review |

| Internal Audit findings on cloud security | Track and remediate per BFS-ISMS-010 | Per audit |

# 16.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Cloud Security Policy as comprehensive consolidated cloud security framework. Quad-functional ownership (CISO/CIO/Head of EA & AI/DPO). Aligned with ISO/IEC 27017:2015 (cloud-specific security controls), ISO/IEC 27018:2019 (cloud personal data protection), ISO/IEC 27001:2022 Annex A.5.23, CSA Cloud Controls Matrix v4, NIST SP 800-144/145, CIS Benchmarks for major cloud providers. Consolidates cloud security coverage previously distributed across BFS-ISP-012, BFS-ISP-013 §10, BFS-ISP-016, BFS-ISP-029, BFS-ISP-030 §7.2/§7.3, BFS-ISP-011-DRP §7, BFS-ISP-031 §8.4, and others — providing coherent reference for cloud security decisions. 12 cloud security framework principles. Comprehensive Shared Responsibility Model across IaaS/PaaS/SaaS/FaaS/AI services. Cloud Strategy and Deployment with cloud provider selection, account strategy, region/data residency, cloud inventory. Cloud Configuration Security with configuration baselines (CIS), Infrastructure as Code, CSPM, service hardening, container/Kubernetes, serverless. Cloud Identity and Access Management with federated identity, JIT privileged access, service identity, CIEM, credentials. Cloud Network Security with software-defined networking, security groups, WAF/DDoS, service mesh, zero trust. Cloud Data Protection with classification, encryption (CMK), key management, multi-tenancy, personal data per RA 10173+ISO 27018, DLP, backup. Cloud Monitoring and Incident Response with cloud-native logging, CSPM/CWPP/CIEM/CASB, threat detection, incident playbooks. Cloud Continuity per BFS-ISP-011. Cloud AI/ML Services. Cloud Cost Management as security signal. Cloud Compliance per BSP Circular 808/1140/1048 and RA 10173. Annual review cycle. | IT Head / Infrastructure Manager<br>CISO Office / IT Operations / EA & AI Team / DPO / Cloud Engineering / FinOps / Compliance | IT Head<br>CISO/CIO/HEAA/DPO/HIE/CRO/CCO/Board |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27017, ISO/IEC 27018, and CSA CCM Mapping

Mapping of cloud security framework elements to specific provisions of this policy. ISO 27017 provides cloud-specific security controls extending ISO 27002. ISO 27018 specifically addresses personal data protection in public clouds. CSA CCM provides industry-standard cloud security control framework.

| Framework Element | Coverage | Sections in This Policy |

| --- | --- | --- |

| ISO 27017 §6 Organization | Roles and responsibilities for cloud | Section 3.3 (Cloud Security Governance); Section 14 (Roles and Responsibilities) |

| ISO 27017 §8 Asset Management | Cloud assets management | Section 4.5 (Cloud Inventory with 4 PS statements) |

| ISO 27017 §9 Access Control | Cloud-specific access control | Section 6 (Cloud Identity and Access Management with 5 PS statements covering authorization, federated identity, JIT, MFA, service identity) |

| ISO 27017 §10 Cryptography | Cloud cryptography | Section 8.2 (Cloud Encryption with 6 PS statements); Section 8.3 (Cloud Key Management) |

| ISO 27017 §12 Operations Security | Cloud operations | Section 5 (Cloud Configuration Security); Section 9 (Cloud Monitoring and Incident Response) |

| ISO 27017 §13 Communications Security | Cloud communications | Section 7 (Cloud Network Security with 5 PS statements); Section 8.2 PS-2.2 (data in transit encryption) |

| ISO 27017 §14 System Acquisition | Cloud system acquisition | Section 4.2 (Cloud Provider Selection with 5 PS statements); coordination with BFS-ISP-031 §8.4 |

| ISO 27017 §15 Supplier Relationships | Cloud supplier relationships | Section 4.2; coordination with BFS-ISP-031 §8.4 cloud vendor |

| ISO 27017 §16 Incident Management | Cloud incident management | Section 9.3-9.4 (Cloud Incident Detection and Response) |

| ISO 27017 §18 Compliance | Cloud compliance | Section 13 (Cloud Compliance and Audit) |

| ISO 27017 CLD.6.3.1 Shared Responsibility | Shared responsibility documentation | Section 3.2 (Shared Responsibility Model with provider/BFS responsibility table) |

| ISO 27017 CLD.8.1.5 Cloud Asset Removal | Asset removal at cloud termination | Section 10.4 (Vendor Lock-In and Exit); coordination with BFS-ISP-031 §9 |

| ISO 27017 CLD.9.5 Customer Data Segregation | Multi-tenant isolation | Section 8.4 (Multi-Tenancy Data Isolation) |

| ISO 27017 CLD.12.1.5 Administrator Operations | Cloud admin operations | Section 6.5 (Cloud Privileged Access) |

| ISO 27017 CLD.13.1.4 Network Alignment | Network virtualization alignment | Section 7 (Cloud Network Security) |

| ISO 27018 §A.2 Consent and Choice | Cloud personal data consent | Section 8.5 (Personal Data in Cloud per RA 10173 + ISO 27018) |

| ISO 27018 §A.5 Use, Retention, Disclosure | Cloud personal data use limitations | Section 8.5; coordination with BFS-ISP-003 and BFS-AI-004 |

| ISO 27018 §A.10 Information Security | Personal data security in cloud | Section 8 (Cloud Data Protection comprehensively) |

| ISO 27018 §A.11 Privacy Compliance | Cloud privacy compliance | Section 13.1 (RA 10173 Personal Data in Cloud) |

| CSA CCM Domain GRC | Governance, Risk, Compliance | Section 3 (Framework); Section 13 (Compliance) |

| CSA CCM Domain DSI | Data Security and Information Lifecycle | Section 8 (Cloud Data Protection) |

| CSA CCM Domain IAM | Identity and Access Management | Section 6 (Cloud IAM) |

| CSA CCM Domain IVS | Infrastructure and Virtualization | Section 5 (Configuration Security); Section 7 (Network Security) |

| CSA CCM Domain TVM | Threat and Vulnerability Management | Section 9.2 (Cloud Security Monitoring) |

| CSA CCM Domain BCR | Business Continuity Resilience | Section 10 (Cloud Continuity and Resilience) |

# APPENDIX B:  Cloud Security Quick Reference

Single-page reference for cloud engineers, cloud architects, and cloud security stakeholders.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What's the shared responsibility model? | Division of security accountability between cloud provider and BFS per service model. Provider responsible for security 'of' the cloud; BFS for security 'in' the cloud. IaaS: provider handles physical/hypervisor; BFS handles OS/middleware/apps/data/IAM/network/encryption. PaaS: provider handles up to runtime; BFS handles app/data/IAM. SaaS: provider handles application; BFS handles data/IAM/configuration. See §3.2. |

| What about cloud configuration security? | Configuration baselines per CIS Benchmarks + provider best practices + BFS context. IaC for provisioning (Terraform/CloudFormation/ARM) in source control with security scanning. CSPM for continuous configuration assessment across providers. Service-specific hardening. Container/Kubernetes per CIS K8s Benchmark. See §5. |

| What about cloud IAM? | Federated identity per BFS-ISP-005 §6. JIT privileged access. Service identity for service-to-service. MFA universal. Least privilege with periodic reviews. CIEM for entitlement visibility. Long-lived credentials avoided where alternatives exist. Break-glass for emergency. See §6. |

| What about cloud encryption? | Data at rest encrypted using cloud provider services or BFS-managed per BFS-ISP-023. Data in transit TLS 1.2+. Customer-Managed Keys (CMK) for sensitive data. Provider-managed acceptable for less-sensitive. Confidential computing for highest sensitivity. See §8.2-8.3. |

| What about personal data in cloud? | Cloud provider as personal information processor per RA 10173 §43-§46. Data location documented; cross-border per RA 10173 §21 + BFS-ISP-024 §7. Right to erasure operationalized including backups. ISO 27018 alignment verified. See §8.5 and §13.1. |

| What's CSPM/CWPP/CIEM/CASB? | CSPM (Cloud Security Posture Management) — continuous configuration assessment. CWPP (Cloud Workload Protection Platform) — workload behavior monitoring. CIEM (Cloud Identity and Entitlement Management) — entitlement visibility. CASB (Cloud Access Security Broker) — SaaS visibility and control. See §5.3, §6.3, §9.2. |

| What about cloud network security? | Software-defined networking via VPCs/subnets. Security groups per least privilege (no 0.0.0.0/0 without justification). WAF + DDoS protection for public-facing. Service mesh with mTLS. Zero trust principles. Egress control. See §7. |

| What about cloud monitoring? | Provider audit logs (CloudTrail/Activity Log/Audit Logs) to BFS SIEM per BFS-ISP-008. Service logs, network flow logs, DNS logs, container logs. CSPM continuous monitoring. Cloud-native threat detection (GuardDuty/Defender/Security Command Center). Multi-cloud unified view. See §9. |

| What about cloud DR? | Per BFS-ISP-011-DRP §7. Multi-AZ for resilience. Cross-region replication for Tier 1/2. Cross-cloud considered for highest criticality. Provider outage planning. Vendor lock-in awareness. See §10. |

| What about foundation model APIs? | Per BFS-AI-003 §5.4. Provider selection per evaluation. BFS-managed credentials. Application-level access controls. Rate limiting and cost controls. API logging. Data submitted per BFS-AI-005 classification rules. See §11.1. |

| What about cloud cost as security? | Cost anomalies can indicate security incidents — cryptomining, runaway compute from compromise, exfiltration. Continuous cost anomaly detection. Cost-security coordination on investigations. FinOps per BFS-ISP-030 §7.3. See §12. |

| What's BSP Circular 808 cloud notification? | Material cloud arrangements per BSP Circular 808 require BSP notification. Coordinated by Compliance. Vendor right-to-examine commitments support BSP supervisory access. See §13.2 and BFS-ISP-031 §4 + §6.1. |

BFS-ISP-033  |  Cloud Security Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. ISO/IEC 27017:2015 + ISO/IEC 27018:2019 + ISO/IEC 27001:2022 A.5.23 + CSA CCM v4 Aligned.
