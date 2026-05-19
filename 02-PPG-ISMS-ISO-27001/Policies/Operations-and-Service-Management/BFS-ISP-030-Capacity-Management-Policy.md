---
title: "BFS-ISP-030-Capacity-Management-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Operations-and-Service-Management/BFS-ISP-030-Capacity-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:40Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Operations-and-Service-Management"
aliases:
  - "BFS-ISP-030-Capacity-Management-Policy"
creator: "Un-named"
created: "2026-05-01T14:04:00Z"
modified: "2026-05-02T13:35:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>CAPACITY MANAGEMENT<br>POLICY<br>Capacity Planning, Monitoring, and Forward-Looking Resource Management for BFS Compute, Storage, Network, AI/ML Acceleration, Database, and Cloud Resources — Ensuring Capacity Adequacy for Mission-Critical and AI-Native Operations<br>Policy Reference: BFS-ISP-030<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.8.6<br>Aligned with ITIL Capacity Management, FinOps Practices, and BSP IT Risk Capacity Expectations<br>Forward-Looking Capacity Discipline for AI-Native Mission-Critical Operations |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Capacity Management Policy |

| --- | --- |

| Policy Reference | BFS-ISP-030 |

| Policy Owner | Chief Information Officer (CIO) / Chief Information Security Officer (CISO) — joint ownership |

| Document Author | IT Operations / Enterprise Architecture and Security Team / CISO Office / Infrastructure Engineering / Finance (FinOps coordination) |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal and Audit Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual baseline review with mandatory review after: material capacity events affecting BFS operations, material technology architecture changes, material business growth or contraction affecting capacity needs, or accumulated lessons from capacity planning experience |

| Supersedes | Not Applicable (New Document — Consolidates Previously Distributed Capacity Coverage) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-011 (Data Recovery — backup capacity); BFS-ISP-011-BCP (BCP — capacity for continuity); BFS-ISP-011-DRP (DRP — DR capacity); BFS-ISP-013 (Network Infrastructure — network capacity); BFS-ISP-019 (Physical and Environmental Security — data center capacity §6.3); BFS-ISP-022 (Remote Working — distributed capacity §6.1); BFS-ISP-027 (Project Management — project capacity planning); BFS-ISP-029 (Test/Dev Environment — environment capacity) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.8.6 (Capacity management); ISO/IEC 27002:2022 implementation guidance; ITIL 4 Capacity and Performance Management practice; FinOps Foundation principles for cloud financial management; ISO/IEC 20000-1:2018 Service Management |

| Regulatory Reference | BSP Circular 1140 (IT Risk Management — capacity adequacy expectations); BSP Circular 1048 (Cybersecurity — capacity for security operations); BSP Circular 982 (Electronic Banking — channel capacity); BSP Circular 951 (BCM — capacity for continuity); RA 10173 (Personal data processing capacity considerations) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Head of IT Operations |  |  |  |

| Chief Financial Officer |  |  |  |

| Chief Risk Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Capacity Management Policy operationalizing ISO/IEC 27001:2022 Annex A.8.6 (Capacity management) in unified framework. It establishes how BFS plans, monitors, and adjusts capacity across compute, storage, network, AI/ML acceleration, database, and cloud resources — ensuring capacity adequacy for mission-critical and AI-native operations while managing capacity cost effectively.

Capacity management is foundational discipline for any IT-enabled organization, but particularly so for BFS as an AI-native platform development organization. The BFS core platform involves substantial compute (microservices, AI/ML inference), substantial storage (transactional data, AI/ML training data, analytics, backups), substantial network (customer transactions, internal services, external integrations), and substantial AI/ML acceleration (GPU/TPU/accelerator capacity for training and inference). Each dimension has specific capacity dynamics, planning horizons, and cost characteristics. Effective capacity management balances having enough capacity for operational needs against avoiding waste through over-provisioning.

BFS as a regulated financial institution has elevated capacity expectations. BSP supervisory framework includes capacity adequacy expectations — systems sized to meet peak transaction volumes, customer-facing channels with capacity for material customer demand, infrastructure sized for growth and stress scenarios. Capacity inadequacy manifesting as system slowness, outages, or rejected transactions has both customer impact and regulatory implications. Capacity over-provisioning, while operationally safer, represents inefficient capital use that may itself be subject to scrutiny.

AI-native platform development creates capacity dynamics distinct from traditional banking IT. AI/ML training requires bursty high-intensity compute typically requiring specialized acceleration. AI/ML inference at scale requires sustained acceleration capacity. AI/ML data storage grows substantially as training datasets accumulate. Cloud-native architectures enable elastic capacity but require disciplined cost management to prevent runaway costs. The BFS capacity discipline must address these AI-native characteristics alongside traditional infrastructure capacity.

Beyond ISO 27001 closure, this policy consolidates capacity provisions previously distributed across BFS-ISP-013 (network capacity), BFS-ISP-019 §6.3 (data center capacity), BFS-ISP-022 §6.1 (remote work capacity), and BFS-ISP-011 (backup capacity) — providing single-document coverage suitable for capacity-focused audit and operational reference. The distributed coverage remains in place; this policy adds dedicated capacity discipline document.

The specific objectives of this policy are to:

Establish capacity management framework with planning, monitoring, and adjustment disciplines;

Operationalize ISO 27001 A.8.6 capacity management as dedicated document;

Address capacity across resource categories — compute, storage, network, AI/ML acceleration, database, cloud;

Establish capacity planning horizons — operational, tactical, strategic;

Define capacity monitoring framework with alerting on capacity stress;

Address capacity for security operations — security tools, monitoring infrastructure, incident response capability;

Coordinate with FinOps practices for cloud capacity cost management;

Establish AI/ML-specific capacity considerations relevant to BFS AI-native platform;

Coordinate with BFS-ISP-011-BCP/DRP for capacity supporting business continuity;

Provide audit-friendly documentation supporting ISO 27001 certification, BSP examinations, and external audit reviews of capacity adequacy.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Capacity | Maximum throughput, volume, or workload that resources can support — measured per resource type (CPU cores, RAM GB, storage TB, network Gbps, etc.). May refer to current capacity, available capacity, or required capacity. |

| Capacity Management | Discipline of ensuring capacity meets demand cost-effectively — encompassing planning, provisioning, monitoring, and adjustment activities. |

| Capacity Planning | Forward-looking activity projecting future capacity needs and arranging provision — typically across operational (days/weeks), tactical (months), and strategic (years) horizons. |

| Capacity Monitoring | Real-time and historical observation of capacity utilization — supporting performance management, capacity planning, and incident response. |

| Demand Management | Discipline of managing demand to align with available capacity — through scheduling, throttling, prioritization, or workload optimization. |

| Performance | Measured operational characteristics of a resource or system — response time, throughput, error rate. Distinct from but related to capacity. |

| Utilization | Percentage of capacity currently in use — typical thresholds: < 60% under-utilized, 60-80% appropriate, 80-90% caution, > 90% capacity-constrained. |

| Headroom | Available capacity above current utilization — buffer for growth, peaks, and resilience. Target headroom varies by resource criticality. |

| Saturation | Condition where resource utilization approaches or exceeds capacity — degrading performance and potentially causing outages. |

| Bottleneck | Resource constraining overall system performance — addressing requires either bottleneck capacity addition or workload optimization. |

| Elastic Capacity | Cloud-native capacity that scales dynamically with demand — typically through auto-scaling, serverless, or managed services. |

| Reserved Capacity | Cloud capacity committed in advance for cost discount — appropriate for stable predictable workloads. |

| Spot/Preemptible Capacity | Cloud capacity available at substantial discount but subject to reclamation — appropriate for fault-tolerant or batch workloads. |

| FinOps | Discipline of cloud financial management — coordinating finance, operations, and engineering for cloud cost optimization while supporting business velocity. |

| AI/ML Acceleration | Specialized compute (GPUs, TPUs, AI accelerators) for AI/ML workloads — distinct capacity considerations including specific hardware availability, allocation, and cost. |

| Capacity Forecast | Projection of future capacity needs — derived from business growth projections, technology trajectory, and observed utilization trends. |

## 2.2  Scope

### 2.2.1  In-Scope Capacity Domains

Compute capacity — physical and virtual servers, container infrastructure, serverless compute;

Storage capacity — block storage, file storage, object storage, archival storage, backup storage;

Network capacity — internal network bandwidth, internet connectivity, partner connectivity, cross-data-center connectivity;

Database capacity — relational databases, NoSQL databases, data warehouses, in-memory databases;

AI/ML acceleration capacity — GPU, TPU, AI accelerator capacity for training and inference;

Cloud capacity — across cloud providers used by BFS (IaaS, PaaS, SaaS resource consumption);

Data center capacity — power, cooling, floor space, rack capacity per BFS-ISP-019 §6.3;

Security infrastructure capacity — SIEM ingestion, EDR coverage, vulnerability scanning, monitoring tools;

Application-specific capacity — application licenses, named user licenses, transaction-volume licenses;

Backup and DR capacity — backup storage, DR site capacity per BFS-ISP-011 and BFS-ISP-011-DRP;

Remote work capacity per BFS-ISP-022 §6.1 — VPN concurrent sessions, virtualization capacity, remote endpoint capacity.

### 2.2.2  Out-of-Scope Items

Personnel capacity — addressed through HR planning, not this IT-focused capacity policy;

Financial capacity / capital adequacy — Treasury and Risk function, not IT capacity;

Specific capacity-related procurement — addressed through BFS procurement processes;

Capacity for routine consumables (paper, supplies) — operational procurement matter.

## 2.3  ISO 27001:2022 Annex A.8.6 Coverage

| Annex A Control | Title | Section in This Policy |

| --- | --- | --- |

| A.8.6 | Capacity management — The use of resources shall be monitored and adjusted in line with current and expected capacity requirements. | Section 3 (Capacity Management Framework with planning horizons and principles); Section 4 (Capacity Planning); Section 5 (Capacity Monitoring); Section 6 (Resource-Specific Capacity Management — 6 categories); Section 7 (AI/ML and Cloud Capacity); Section 8 (Capacity for Security and Continuity); Section 9 (Capacity Governance) |

# 3.  CAPACITY MANAGEMENT FRAMEWORK

## 3.1  Capacity Management Principles

Business-Driven: Capacity sized to business needs — current operational demand, growth trajectory, peak handling, contingency reserve. Not IT preference in isolation;

Forward-Looking: Capacity management anticipates needs rather than reacts to shortfalls — planning horizons supporting timely capacity provisioning;

Cost-Conscious: Capacity provisioning balances adequacy against cost — over-provisioning is waste; under-provisioning is risk. Disciplined sizing;

Monitored Continuously: Capacity utilization continuously monitored — supporting both operational management and planning input;

Tier-Calibrated: Capacity headroom calibrated to resource criticality — Tier 1 systems with substantial headroom; Tier 4 systems with minimal headroom;

Coordinated with Architecture: Capacity decisions coordinated with architecture decisions — capacity-efficient architectures reduce capacity needs;

Coordinated with FinOps: Cloud capacity managed through FinOps discipline — engineering and finance coordination for cost-effective elasticity;

Coordinated with BCM: Capacity supports BCM requirements — DR capacity, surge capacity for incidents, capacity for continuity scenarios;

Continuous Improvement: Capacity management evolves through observed patterns, technology changes, and accumulated experience.

## 3.2  Capacity Planning Horizons

| Horizon | Time Frame | Purpose | Frequency |

| --- | --- | --- | --- |

| Operational | Days to Weeks | Day-to-day capacity adequacy; immediate adjustments | Daily monitoring; weekly review |

| Tactical | Months | Quarterly capacity adjustments; project-driven capacity | Monthly review; quarterly planning |

| Strategic | 1-3 Years | Long-term capacity strategy; major investments; technology transitions | Annual planning; multi-year roadmap |

## 3.3  Resource Tier Framework

Capacity headroom calibrated to resource tier mapped from BFS-ISP-011-BCP §3.2 business activity tiers and BFS-ISP-011-DRP §3.2 system tiers:

| Resource Tier | Examples | Capacity Headroom Target |

| --- | --- | --- |

| Tier 1 (Critical) | Customer transaction systems, payment systems, AI/ML production inference, AML monitoring | Substantial headroom — typically 40-50% above peak observed; rapid expansion capability |

| Tier 2 (Important) | Internal banking applications, branch systems, internal reporting | Moderate headroom — typically 30-40% above peak; planned expansion |

| Tier 3 (Standard) | Standard internal systems, periodic reporting, development tooling | Minimal headroom — typically 20-30% above peak; planned expansion |

| Tier 4 (Non-Critical) | Archived systems, training environments, low-utilization tools | Tight headroom — capacity matches demand; expansion when needed |

Headroom targets are starting framework. Specific resource characteristics, observed demand patterns, growth trajectory, and operational considerations may justify deviation. Documented rationale supports deviations.

# 4.  CAPACITY PLANNING

## 4.1  Capacity Planning Inputs

Capacity planning draws from multiple input sources:

Current Utilization: Monitoring data showing current capacity utilization patterns — peak, average, troughs, by time-of-day and day-of-week;

Historical Trends: Multi-period utilization trends supporting projection — quarter-over-quarter, year-over-year growth patterns;

Business Growth Projections: BFS business plans projecting customer growth, transaction growth, product expansion;

Project Pipeline: Project portfolio per BFS-ISP-027 with capacity implications — new applications, application changes, infrastructure changes;

Technology Changes: Architecture changes affecting capacity profile — cloud migration, modernization, AI/ML rollout;

Regulatory Changes: New regulatory requirements affecting capacity — additional reporting, additional data retention, additional monitoring;

Vendor Roadmaps: Vendor product roadmaps affecting capacity — license model changes, new features changing utilization;

Industry Benchmarks: Comparable institution capacity profiles where data available.

## 4.2  Capacity Planning Process

PS-2.1  Operational capacity review shall be performed weekly by IT Operations — reviewing utilization trends, capacity stress indicators, and immediate adjustment needs.

PS-2.2  Tactical capacity review shall be performed monthly with quarterly planning cycle — reviewing 30/60/90-day projections, addressing project-driven capacity needs.

PS-2.3  Strategic capacity planning shall be performed annually with multi-year roadmap — addressing long-term capacity strategy, major investments, technology transitions.

PS-2.4  Capacity plans shall be documented with assumptions, projections, and recommended actions — supporting review, approval, and execution.

PS-2.5  Capacity plans shall be reviewed by Information Security Steering Committee for material capacity decisions, with Board Audit & Risk Committee involvement for capacity decisions involving material capital expenditure.

PS-2.6  Capacity assumptions shall be tested against actuals periodically — refining planning approach based on accuracy of past projections.

## 4.3  Capacity Forecasting

Linear Trending: Simple extrapolation of utilization trends — appropriate for stable utilization patterns;

Growth-Driven: Capacity tied to business volume drivers (customers, transactions, accounts) — projecting capacity from business projections;

Project-Driven: Specific projects driving capacity changes — capacity sized for specific project needs;

AI/ML-Driven: AI/ML training and inference workload projections driving accelerator capacity;

Scenario Analysis: Multiple scenarios (base case, growth case, stress case) supporting capacity decisions under uncertainty;

Forecast Accuracy Tracking: Past forecasts compared with actuals — improving forecast methodology through experience.

## 4.4  Capacity Provisioning Lead Times

Capacity provisioning has lead times that planning must account for:

| Capacity Type | Typical Lead Time | Planning Implication |

| --- | --- | --- |

| Cloud Compute (On-Demand) | Minutes | Real-time provisioning; planning focuses on quota and cost |

| Cloud Compute (Reserved) | Hours to Days | Reservation procurement; cost optimization focus |

| Cloud GPU/Accelerator | Hours to Weeks (capacity-dependent) | Lead time can be substantial during high demand; advance commitment may be needed |

| Physical Server Procurement | 8-12 weeks | Quarterly+ planning required |

| Storage Array Procurement | 8-16 weeks | Quarterly+ planning required |

| Data Center Power/Cooling Expansion | 6-12 months | Strategic planning required |

| Network Bandwidth Upgrade (Provider) | 2-12 weeks | Tactical planning required |

| Software License Expansion | Days to Weeks | Tactical planning typically adequate |

# 5.  CAPACITY MONITORING

## 5.1  Monitoring Framework

Capacity monitoring is foundational to capacity management — supporting both operational management and planning:

Continuous Collection: Capacity metrics continuously collected from all in-scope resources;

Centralized Visibility: Capacity dashboards providing visibility across resource types, environments, and business services;

Trending and Historical: Historical data retained supporting trend analysis and capacity forecasting;

Granular and Aggregated: Detail visible for specific resources; aggregated views for overall capacity posture;

Performance Correlation: Capacity correlated with performance — capacity stress visible in performance degradation.

## 5.2  Capacity Metrics

| Resource Type | Key Capacity Metrics | Typical Monitoring |

| --- | --- | --- |

| Compute | CPU utilization, memory utilization, container CPU/memory, request queue depths | Continuous metrics; minute-level granularity |

| Storage | Disk utilization (% used), IOPS utilization, throughput utilization, queue depth | Continuous metrics; capacity utilization for trend; IOPS for performance |

| Network | Bandwidth utilization, connection counts, packet rates, error rates | Continuous interface monitoring; flow analysis for patterns |

| Database | Connection pool utilization, query latency, cache hit rates, transaction rates, table sizes | Database-specific monitoring tools; query analysis |

| AI/ML Acceleration | GPU/TPU utilization, GPU memory utilization, accelerator allocation, training queue depth | Accelerator-specific monitoring; ML platform metrics |

| Cloud | Service-specific metrics, quota utilization, cost trajectory | Cloud provider monitoring + FinOps tooling |

## 5.3  Capacity Alerting

PS-3.1  Capacity alerting shall be configured for material capacity stress — utilization thresholds, growth rate alerts, projected exhaustion alerts.

PS-3.2  Alert thresholds shall be calibrated per resource tier — Tier 1 alerts at lower utilization (e.g., 70%) supporting earlier intervention; Tier 4 alerts at higher utilization (e.g., 85%).

PS-3.3  Predictive alerts shall complement utilization alerts — projected capacity exhaustion at current growth rate alerting before actual exhaustion.

PS-3.4  Capacity alerts shall be routed to appropriate operational teams — typically infrastructure operations for infrastructure capacity, application teams for application-specific capacity.

PS-3.5  Capacity incidents (utilization exceeding thresholds, performance degradation due to capacity) shall be addressed per BFS-ISP-017 incident response.

## 5.4  Performance Correlation

Capacity stress manifests in performance — slow response times, increased queueing, transaction failures;

Performance monitoring per BFS-ISP-013 §10 includes capacity-relevant metrics;

Performance degradation triggers capacity investigation — distinguishing capacity-driven from other performance issues;

Service-Level Indicators (SLIs) for performance correlated with capacity utilization patterns supporting capacity planning calibration.

# 6.  RESOURCE-SPECIFIC CAPACITY MANAGEMENT

This section addresses capacity considerations specific to resource categories. Categories warrant distinct approaches based on capacity dynamics, cost characteristics, and operational considerations.

## 6.1  Compute Capacity

Physical Server Capacity: Server utilization monitored; consolidation opportunities identified; refresh planning per technology lifecycle;

Virtual Server Capacity: Hypervisor capacity managed; VM density per host calibrated; resource pools managed for tier separation;

Container Capacity: Cluster capacity managed; namespace quotas per workload; horizontal pod autoscaling for elastic workloads;

Serverless Compute: Concurrency limits managed; cold start latency considered; cost trajectory monitored;

Compute Architecture: Workload-appropriate compute selection — sustained workloads on reserved capacity, bursty workloads on elastic capacity, batch workloads on spot/preemptible where fault-tolerant.

## 6.2  Storage Capacity

Block Storage: Database storage, system storage with appropriate IOPS provisioning;

File Storage: Shared file systems for applications and personnel use;

Object Storage: Bulk data storage including backups, archives, AI/ML training data;

Tiering: Storage tiered by access pattern — hot tier for frequent access, cool tier for periodic access, archive tier for long-term retention;

Capacity Reclaim: Periodic reclamation of unused storage — preventing waste from orphaned data;

Compression and Deduplication: Where appropriate, reducing storage footprint without affecting data integrity;

Backup Storage Capacity: Per BFS-ISP-011 — backup storage sized for retention requirements with growth allowance.

## 6.3  Network Capacity

Internal Bandwidth: Internal network bandwidth between data centers, between application tiers, between segments — sized for peak utilization with appropriate headroom;

Internet Connectivity: Internet bandwidth for customer-facing services and BFS internet access — typically multi-provider with redundancy;

Partner Connectivity: Dedicated connectivity to payment networks, BSP, and other partners — sized for transaction volumes;

Cross-Data-Center: Cross-DC connectivity per BFS-ISP-011-DRP §4.2 supporting replication and failover capacity;

VPN Capacity: VPN concurrent sessions per BFS-ISP-022 §6.1 — sized for distributed workforce.

## 6.4  Database Capacity

Storage Capacity: Database storage with growth projection and tier-appropriate IOPS;

Connection Capacity: Database connection pool sizing — supporting peak concurrent connections;

Query Capacity: Database query throughput — vertical scaling (more powerful instance) or horizontal scaling (read replicas, sharding);

Memory Capacity: In-memory caching, buffer pool sizing supporting query performance;

Specific Database Considerations: RDBMS considerations differ from NoSQL; data warehouse considerations differ from operational databases;

Database Growth Management: Periodic data archival; partitioning for large tables; query optimization to reduce capacity stress.

## 6.5  Data Center Capacity (per BFS-ISP-019 §6.3)

Power Capacity: Total power available; current consumption; growth headroom; PUE optimization;

Cooling Capacity: Cooling adequate for current and projected heat load;

Floor Space: Physical floor space; rack space utilization;

Network Capacity: Network distribution capacity within data center;

Data Center Expansion: Major expansion is multi-quarter to multi-year activity per Section 4.4 — strategic planning essential.

## 6.6  License Capacity

License Type Awareness: License capacity varies by license model — named user, concurrent user, transaction-based, capacity-based (CPU cores, etc.);

License Inventory: License capacity tracked alongside software inventory per BFS-ISP-026 §7.4;

License Compliance Risk: License capacity exhaustion can cause service disruption (license enforcement) or create license compliance issue (over-deployment);

License Expansion Lead Time: Generally short (days to weeks) but vendor-dependent;

License Optimization: Periodic license review identifying unused licenses or over-provisioned scenarios for cost optimization.

# 7.  AI/ML AND CLOUD CAPACITY

AI/ML and cloud capacity have characteristics distinct from traditional capacity management warranting specific provisions.

## 7.1  AI/ML Capacity

AI/ML workloads have specific capacity dynamics:

Training Capacity: AI/ML training is typically bursty high-intensity — substantial accelerator capacity needed for training duration, then released. Capacity may be elastic (cloud GPU) or reserved (on-premises GPU);

Inference Capacity: AI/ML inference at scale requires sustained accelerator capacity — typically more predictable than training but with potential for peaks driven by upstream demand;

Accelerator Specifics: GPU vs TPU vs other accelerators have specific characteristics; specific generation matters (newer generations often substantially more capable per unit);

Accelerator Availability: GPU/TPU availability varies — high demand periods may have constrained availability requiring advance commitment;

Model Size Considerations: Foundation models, fine-tuned models, smaller models have different capacity profiles — model selection has capacity implications;

Cost: Accelerator capacity is expensive — disciplined planning, optimization, and FinOps essential;

Specialized Workloads: AI/ML CI/CD pipelines, feature engineering, MLOps platforms have capacity needs distinct from training and inference.

## 7.2  Cloud Capacity

Cloud Elasticity: Cloud capacity scales on demand — primary advantage but requires cost discipline;

Cloud Quotas: Cloud providers impose quotas — resource limits per region, per service, per account. Quota awareness and proactive increase requests prevent capacity surprises;

Reserved vs On-Demand: Reserved capacity provides cost discount for commitment; on-demand provides flexibility at premium. Mix optimized through FinOps;

Multi-Region Considerations: Multi-region deployment per BFS-ISP-011-DRP §7 has capacity implications — capacity provisioned in each region;

Cross-Cloud Considerations: Multi-cloud strategy (where applicable) has capacity coordination across providers.

## 7.3  FinOps Practices

Cloud capacity cost managed through FinOps discipline:

Cloud Cost Visibility: Real-time and historical cloud cost visibility — by service, by application, by team, by environment;

Cost Allocation: Cloud costs allocated to consuming teams supporting accountability;

Cost Anomaly Detection: Automated detection of cost anomalies — sudden cost increases investigated;

Right-Sizing: Periodic right-sizing — instances appropriate to actual workload, eliminating over-provisioning;

Reserved Capacity Planning: Reserved capacity commitments based on stable workload base, with on-demand for variable portion;

Spot/Preemptible Usage: Where workload tolerates, spot/preemptible capacity for material discount;

Idle Resource Identification: Idle resources identified and removed — particularly important in development/test environments;

Cloud Architectural Optimization: Architecture choices affecting cost — managed services vs self-managed, serverless vs always-on, regional vs multi-region;

Engineering-Finance Coordination: Engineering teams aware of cost implications; finance team aware of engineering trade-offs;

FinOps Maturity Progression: BFS FinOps capability evolved through Crawl-Walk-Run progression per FinOps Foundation framework.

| AI-NATIVE CAPACITY ECONOMICS:  BFS as AI-native platform development organization has substantial AI/ML capacity needs and costs. Disciplined capacity management for AI/ML workloads — choosing appropriate model sizes, optimizing inference architectures, leveraging spot capacity for tolerant training jobs, monitoring cost trajectory — is foundational economic discipline. Without it, AI/ML costs can escalate unsustainably. With it, BFS can build substantial AI capability cost-effectively. The capacity discipline is therefore strategic, not just operational. |

| --- |

# 8.  CAPACITY FOR SECURITY AND CONTINUITY

## 8.1  Capacity for Security Operations

Security operations have specific capacity requirements:

SIEM Ingestion Capacity: SIEM ingestion sized for log volume per BFS-ISP-008 — material under-provisioning causes log loss; over-provisioning is cost waste. Headroom for incident-driven log volume increase;

EDR Coverage: EDR licensed for full endpoint coverage with growth allowance per BFS-ISP-007;

Vulnerability Scanning: Scanner capacity sized for scan frequency and asset volume per BFS-ISP-007;

Monitoring Tool Capacity: Security monitoring tools (NDR, network sensors, etc.) sized for traffic volume;

Incident Response Capacity: Surge capacity for incident response — additional analysts during incidents through pre-arranged surge support;

Security Operations Resilience: Security operations capability resilient through DR per BFS-ISP-011-DRP.

## 8.2  Capacity for Business Continuity (BCM/DR)

BCM and DR capacity per BFS-ISP-011-BCP and BFS-ISP-011-DRP:

Alternate Site Capacity: Alternate data center capacity supporting Tier 1/2 system recovery;

DR Replication Bandwidth: Network capacity for cross-site replication supporting RPO requirements;

Backup Storage: Backup storage capacity per BFS-ISP-011 retention requirements;

Surge Capacity for Continuity: Capacity supporting surge during continuity operations — customers may shift to digital channels increasing channel capacity needs;

Cloud DR Capacity: Cloud capacity reserved or on-demand available for DR scenarios.

## 8.3  Capacity Stress Scenarios

Capacity planning considers stress scenarios beyond normal operations:

Customer Surge: Major event drives customer activity spike (market events, regulatory changes, campaign launches);

Cyber Attack: DDoS or other attack-driven capacity stress requiring elevated capacity for defense;

Reporting Deadlines: Quarter-end, year-end, regulatory reporting peaks driving compute and storage stress;

Pandemic/Remote Work: Pandemic-driven shift to remote work and digital channels per BFS-ISP-022 §6.1 §11;

Disaster Recovery: DR scenarios moving production to alternate site capacity;

New Product/Channel Launch: Major launches driving capacity peaks;

Stress scenario capacity considered in planning — not just normal capacity needs.

# 9.  CAPACITY GOVERNANCE

## 9.1  Capacity Governance Structure

Board Audit & Risk Committee: Approves this policy. Reviews material capacity decisions involving capital expenditure. Oversight through KPI reporting;

Information Security Steering Committee: Reviews capacity status quarterly. Material capacity decisions reviewed at ISSC level;

CIO/CISO Joint Ownership: Document co-ownership reflecting cross-functional capacity governance — CIO for IT capacity, CISO for security and continuity capacity;

Head of Infrastructure Engineering: Operational accountability for infrastructure capacity architecture;

Head of IT Operations: Operational accountability for capacity monitoring and day-to-day capacity management;

Capacity Management Function: Designated capacity management capability — typically within Infrastructure Engineering or IT Operations;

FinOps Function: Cloud capacity cost management coordination — typically integrated capability across Engineering, Operations, and Finance.

## 9.2  Capacity Decision Authority

| Decision Type | Threshold | Authority |

| --- | --- | --- |

| Operational capacity adjustments | Within budget; not architectural | IT Operations |

| Tactical capacity decisions | Within annual capacity plan | Head of Infrastructure Engineering |

| Strategic capacity investments (material capex) | Above defined threshold | CIO/CISO with ISSC review; Board for largest |

| Cloud capacity commitments (reserved capacity) | Multi-year commitments | CIO with FinOps review |

| Architectural capacity changes | Cross-domain impact | CIO/CISO joint approval |

| Emergency capacity additions | Operational urgency | Head of IT Operations with post-event review |

## 9.3  Capacity Reporting

Operational Reporting: Daily/weekly capacity dashboards for IT Operations;

Tactical Reporting: Monthly capacity status to IT leadership;

Strategic Reporting: Quarterly capacity reporting to ISSC;

Board Reporting: Annual capacity strategic review to Board Audit & Risk Committee with material event reporting;

Cloud Cost Reporting: FinOps reporting integrated with capacity reporting — capacity and cost views;

Capacity Issue Reporting: Material capacity events reported promptly to appropriate governance.

# 10.  ROLES AND RESPONSIBILITIES

| Role | Capacity Management Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Reviews capacity strategy. Approval authority for material capacity capital investments. Oversight through KPI reporting. |

| Chief Information Officer | Document co-owner. Operationally accountable for IT capacity adequacy. Strategic capacity decisions. Coordination with CFO for capacity-related capital. |

| Chief Information Security Officer | Document co-owner. Capacity for security operations. Coordination with CIO on capacity for continuity per BFS-ISP-011-BCP/DRP. |

| Chief Financial Officer | Co-approver. Capacity-related capital expenditure approval. FinOps coordination. Capacity ROI assessment. |

| Chief Risk Officer | Co-approver. Capacity adequacy as risk dimension. Coordination with enterprise risk management. |

| Head of Infrastructure Engineering | Co-approver. Architectural responsibility for capacity. Capacity engineering and design. Strategic capacity planning. |

| Head of IT Operations | Co-approver. Operational capacity management. Day-to-day capacity monitoring. Operational capacity adjustments. |

| Capacity Management Function | Day-to-day capacity management operations. Monitoring oversight. Planning support. Forecasting. |

| FinOps Function | Cloud capacity cost optimization. Engineering-finance coordination. Reserved capacity planning. Cost anomaly response. |

| Application Owners | Capacity awareness for their applications. Coordination with infrastructure for application capacity needs. Optimization opportunities. |

| Architecture | Capacity-efficient architecture decisions. Capacity considerations in architecture review. |

| Security Operations | Security operations capacity per Section 8.1. Capacity adequacy for security tools. |

| Internal Audit | Independent verification of capacity management per BFS-ISMS-008 — including capacity adequacy, monitoring effectiveness, planning discipline. |

# 11.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Capacity management effectiveness measured through KPIs reviewed monthly by IT Operations and quarterly by ISSC.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Tier 1 systems with capacity headroom in target range | ≥ 95% | Monthly |

| Tier 2 systems with capacity headroom in target range | ≥ 90% | Monthly |

| Capacity-driven incidents (utilization causing service impact) | Track and trend | Per occurrence |

| Capacity utilization monitoring coverage | 100% of in-scope resources | Quarterly |

| Capacity alerts addressed within target time | ≥ 95% | Monthly |

| Capacity forecasts vs actuals — accuracy | Within ±15% for tactical horizon | Quarterly |

| Operational capacity reviews completed | Weekly cadence — 100% | Quarterly |

| Tactical capacity reviews completed | Monthly cadence — 100% | Quarterly |

| Strategic capacity planning completed | Annual cadence — 100% | Annual |

| Cloud capacity cost vs forecast | Within ±10% | Monthly |

| Cloud cost anomalies investigated | 100% | Per anomaly |

| Idle/unused resources reclaimed | Track quarterly progress | Quarterly |

| Reserved capacity commitments — utilization | ≥ 80% of committed capacity | Monthly |

| AI/ML accelerator utilization (when allocated) | Target ≥ 70% during allocation | Per workload |

| License capacity adequate (no service disruption from license exhaustion) | 100% | Continuous |

| Backup storage capacity vs retention requirements | 100% | Monthly |

| DR site capacity validated through testing | ≥ 90% per BFS-ISP-011-DRP exercises | Annual |

| BSP examination findings on capacity | Zero material findings | Per examination |

| Internal Audit findings on capacity management | Track and remediate per BFS-ISMS-010 | Per audit |

# 12.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Capacity Management Policy operationalizing ISO/IEC 27001:2022 Annex A.8.6 (Capacity management) as dedicated document — consolidating capacity provisions previously distributed across BFS-ISP-013, BFS-ISP-019 §6.3, BFS-ISP-022 §6.1, and BFS-ISP-011. Joint CIO/CISO ownership reflecting cross-functional capacity governance. ITIL 4 Capacity and Performance Management practice and FinOps Foundation principles aligned. 9 foundational principles + 3 planning horizons (Operational/Tactical/Strategic) + 4-tier resource framework. Comprehensive Capacity Planning with 8 input categories, 6 PS statements for planning process, forecasting techniques, and lead time considerations. Capacity Monitoring framework with metrics matrix across 6 resource categories and 5 PS statements for alerting. Resource-Specific Capacity Management across 6 categories (Compute, Storage, Network, Database, Data Center per BFS-ISP-019, License). AI/ML and Cloud Capacity with FinOps practices recognizing AI-native economics. Capacity for Security and Continuity coordinated with BFS-ISP-008, BFS-ISP-007, and BFS-ISP-011-BCP/DRP. Capacity Governance with decision authority matrix. | IT Head / Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A.8.6 Mapping

Direct mapping of A.8.6 control to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.8.6 | Capacity management — The use of resources shall be monitored and adjusted in line with current and expected capacity requirements. | Comprehensive operationalization across 9 substantive sections: Section 3 (Capacity Management Framework with 9 foundational principles + 3 planning horizons + 4-tier resource framework with calibrated headroom targets); Section 4 (Capacity Planning with 8 input categories, 6 PS statements covering planning process, forecasting techniques, and provisioning lead times); Section 5 (Capacity Monitoring with framework, metrics matrix across 6 resource categories, 5 PS statements for alerting, and performance correlation); Section 6 (Resource-Specific Capacity Management — Compute, Storage, Network, Database, Data Center per BFS-ISP-019 §6.3, License); Section 7 (AI/ML and Cloud Capacity with AI/ML capacity dynamics, cloud capacity considerations, FinOps practices); Section 8 (Capacity for Security per BFS-ISP-008/007 and Continuity per BFS-ISP-011-BCP/DRP, plus capacity stress scenarios); Section 9 (Capacity Governance with decision authority matrix). Consolidates capacity provisions previously distributed across BFS-ISP-013, BFS-ISP-019, BFS-ISP-022, and BFS-ISP-011. |

# APPENDIX B:  Capacity Management Quick Reference

Single-page reference for IT operations personnel, application owners, and IT leadership.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What's my capacity headroom target? | Per resource tier mapped from BFS-ISP-011-BCP business activity tiers: Tier 1 (Critical) 40-50% above peak; Tier 2 (Important) 30-40%; Tier 3 (Standard) 20-30%; Tier 4 (Non-Critical) tight to demand. See §3.3. |

| What capacity planning horizons do we use? | Operational (days-weeks, daily monitoring/weekly review), Tactical (months, monthly review/quarterly planning), Strategic (1-3 years, annual planning/multi-year roadmap). See §3.2. |

| What inputs feed capacity planning? | Current utilization, historical trends, business growth projections, project pipeline per BFS-ISP-027, technology changes, regulatory changes, vendor roadmaps, industry benchmarks. See §4.1. |

| How long does capacity provisioning take? | Cloud on-demand: minutes. Cloud reserved: hours-days. Cloud GPU: hours-weeks (capacity-dependent). Physical servers: 8-12 weeks. Storage arrays: 8-16 weeks. Data center power/cooling: 6-12 months. License expansion: days-weeks. See §4.4. |

| What capacity metrics are monitored? | Per resource type: Compute (CPU, memory, queues), Storage (% used, IOPS, throughput), Network (bandwidth, connections, packet rates), Database (connections, latency, cache hits, transactions), AI/ML (GPU/TPU utilization, accelerator allocation), Cloud (service metrics, quotas, cost trajectory). See §5.2. |

| What about AI/ML capacity? | Specific dynamics — training is bursty high-intensity, inference is sustained, accelerator availability variable, accelerator cost substantial. Specialized workloads (CI/CD, feature engineering, MLOps) distinct from training/inference. See §7.1. |

| What's FinOps? | Discipline of cloud financial management coordinating engineering, operations, and finance for cloud cost optimization. Practices: cloud cost visibility, cost allocation, anomaly detection, right-sizing, reserved capacity planning, spot/preemptible usage, idle resource removal. See §7.3. |

| What about capacity for security operations? | SIEM ingestion sized for log volume per BFS-ISP-008. EDR licensed for full coverage. Vulnerability scanner capacity per BFS-ISP-007. Monitoring tool capacity for traffic. Surge capacity for incidents. See §8.1. |

| What about capacity for BCM/DR? | Per BFS-ISP-011-BCP/DRP — alternate site capacity, replication bandwidth, backup storage, surge capacity for continuity, cloud DR capacity. See §8.2. |

| What stress scenarios are planned for? | Customer surge (events/launches), cyber attack (DDoS), reporting deadlines (quarter/year-end), pandemic/remote work, DR scenarios, new product/channel launches. See §8.3. |

| Who decides on capacity additions? | Decision authority matrix per Section 9.2. Operational adjustments by IT Operations. Tactical decisions by Head of Infrastructure Engineering. Strategic investments by CIO/CISO with ISSC review (Board for largest). Cloud reserved commitments by CIO with FinOps review. See §9.2. |

| What capacity reporting do we get? | Daily/weekly dashboards for operations. Monthly status to IT leadership. Quarterly to ISSC. Annual strategic review to Board. FinOps reporting integrated. Material events reported promptly. See §9.3. |

BFS-ISP-030  |  Capacity Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.8.6. ITIL 4 and FinOps Foundation Aligned.
