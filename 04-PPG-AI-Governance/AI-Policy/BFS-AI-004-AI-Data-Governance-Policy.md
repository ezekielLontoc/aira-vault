---
title: "BFS-AI-004-AI-Data-Governance-Policy"
source_file: "04-PPG-AI-Governance/AI-Policy/BFS-AI-004-AI-Data-Governance-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:42Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "04-PPG-AI-Governance"
  - "AI-Policy"
aliases:
  - "BFS-AI-004-AI-Data-Governance-Policy"
creator: "Un-named"
created: "2026-05-02T02:06:00Z"
modified: "2026-05-08T06:32:00Z"
---

| BFS AI GOVERNANCE FRAMEWORK<br>AI DATA<br>GOVERNANCE POLICY<br>Comprehensive Data Governance for AI Training, Validation, Inference, and Operations — Data Sourcing, Quality, Provenance, Privacy, Feature Stores, Data Lifecycle, and AI-Specific Data Compliance<br>Policy Reference: BFS-AI-004<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Semi-Annual<br>Operationalizes BFS-AI-001 §5.3 + ISO/IEC 42001 Annex A.7<br>Coordinated with BFS-ISP-003 Data Protection, BFS-ISP-024 Information Transfer, RA 10173 Data Privacy Act<br>Final Document of the BFS AI Governance Series — Completing AI Framework Coverage |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | AI Data Governance Policy |

| --- | --- |

| Policy Reference | BFS-AI-004 |

| Policy Owner | Head of Enterprise Architecture and AI / Data Protection Officer (DPO) / Chief Data Officer (CDO) / Chief Information Security Officer (CISO) — quad-functional ownership |

| Document Author | Enterprise Architecture and AI Team / Data Office / DPO / CISO Office / AI Risk Office / Software Engineering |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2026 |

| Review Date | October 2026 (Semi-Annual Cycle) |

| Review Cycle | Semi-annual baseline review reflecting rapid AI data landscape evolution; mandatory review after: material changes to AI data infrastructure or feature stores, regulatory developments affecting AI data (NPC AI guidance, BSP expectations), accumulated lessons from AI data operations, evolution of ISO/IEC 5259 data quality standard for AI |

| Supersedes | Not Applicable (New Document — Final Document of BFS-AI Series) |

| Document Hierarchy Position | TIER 3 — Subordinate to BFS-AI-001 AI Governance Policy. Operationalizes AI Data dimension of BFS AI Governance Framework. Final document completing BFS-AI series. |

| Parent Document | BFS-AI-001 (AI Governance Policy — foundational) |

| Companion Documents | BFS-AI-002 (AI Risk Management Policy); BFS-AI-003 (AI Model Lifecycle Management Policy); BFS-ISP-003 (Data Protection — general data protection); BFS-ISP-024 (Information Transfer — cross-border data including AI training data); BFS-ISP-026 (Compliance — AI training data licensing); BFS-ISP-028 (Equipment and Media Disposal — data disposal for AI); BFS-ISMS-006 (Documented Information — data retention) |

| Framework Alignment | ISO/IEC 42001:2023 Annex A.7 (Data for AI systems); ISO/IEC 5259 series (Data quality for analytics and machine learning — under development); ISO/IEC 23053:2022 (Framework for AI Systems Using ML — data dimensions); DAMA DMBOK Data Management Body of Knowledge; coordinated with BFS ISMS data protection per BFS-ISP-003 |

| Regulatory Reference | RA 10173 Data Privacy Act — comprehensive applicability to AI personal data; NPC Circulars including AI-relevant advisories; NPC Circular 16-02 (Data Sharing Agreements) for AI data sharing; BSP Circular 1140 (IT risk including data risk for AI); BSP Circular 1048 (Cybersecurity affecting AI data); RA 10173 §16(c) (automated decision-making data implications); cross-border data transfer per BFS-ISP-024 §7 |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Head of Enterprise Architecture and AI |  |  |  |

| Data Protection Officer |  |  |  |

| Chief Data Officer |  |  |  |

| Chief Information Security Officer |  |  |  |

| Chief Information Officer |  |  |  |

| AI Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services AI Data Governance Policy operationalizing the AI data dimension of the BFS AI Governance Framework. It is subordinate to BFS-AI-001 AI Governance Policy and provides operational depth for governance of data used in AI systems — training data, validation data, inference inputs, feature stores, embeddings, and AI operational data. It is the final document of the BFS-AI series, completing the comprehensive AI governance framework.

Data is foundational to AI. Models learn from data — data quality, representativeness, provenance, and integrity directly determine model behavior. Data biases become model biases; data gaps become model blind spots; data quality issues become model errors; data leakage between training and validation creates illusory model performance that fails in production. AI risk identification per BFS-AI-002 §5 consistently traces material AI risks to data dimensions. Disciplined AI data governance is therefore not auxiliary concern but foundational AI capability.

AI data introduces governance considerations beyond traditional data governance. AI training data has scale beyond typical operational data — millions to billions of records for foundation model training. AI training data has provenance complexity — multiple sources, transformations, augmentations, synthesis. AI training data has temporal sensitivity — model performance reflects training data time period; data freshness affects model relevance. AI training data has fairness implications — representation gaps create bias. AI training data has privacy implications beyond standard processing — model memorization can expose training data through inference. AI inference data flows differ from operational data — inference creates new data (embeddings, predictions) that itself becomes data. Each characteristic warrants specific governance attention.

BFS as an AI-native platform development organization processes substantial AI data volumes. BFS AI capability spans fraud detection (transaction data, customer behavioral data), AML monitoring (transaction networks, behavioral patterns), credit risk (financial history, alternative data sources), customer experience (interaction history, preference signals), and various other AI use cases. Each use case has distinct data requirements, sources, transformations, and governance considerations. Coherent data governance across the AI portfolio is foundational discipline.

Beyond BFS-specific AI data, foundation model use introduces additional governance considerations. Foundation models are trained on data BFS does not control — typically broad internet-scale data with unknown specific content, potential copyright complications, potential bias patterns. BFS use of foundation models entails accepting governance characteristics of the training data BFS did not select. BFS approach: thorough evaluation of foundation model providers per BFS-AI-003 §5.4, RAG and fine-tuning to constrain outputs, awareness that foundation model behavior reflects upstream data BFS did not govern.

Beyond ISO/IEC 42001 Annex A.7 alignment, this policy addresses RA 10173 Data Privacy Act applicability to AI which is comprehensive and increasingly explicit through NPC AI-relevant advisories. NPC Circular 16-02 (Data Sharing Agreements) applies to AI data sharing. Cross-border data flows for AI training trigger BFS-ISP-024 §7 considerations. BSP supervisory expectations on data risk for AI are integrated into broader IT risk supervision per BSP Circular 1140.

This policy completes the BFS-AI series. With BFS-AI-001 (foundational governance), BFS-AI-002 (risk management), BFS-AI-003 (model lifecycle), and BFS-AI-004 (data governance — this document), BFS has comprehensive AI governance framework covering governance, risk, lifecycle, and data dimensions. The series provides the foundation for BFS AI-native operations with ISO 42001-aligned discipline.

The specific objectives of this policy are to:

Establish AI data governance framework calibrated to AI data characteristics;

Operationalize ISO/IEC 42001:2023 Annex A.7 Data for AI Systems;

Address AI training data — sourcing, quality, representativeness, bias assessment;

Address AI validation and test data — preventing leakage, supporting realistic evaluation;

Address AI inference data — input data, output data, derived data (embeddings, features);

Establish feature store governance — centralized feature data shared across AI systems;

Address data provenance and lineage — traceability from sources through training to model artifacts;

Address AI-specific privacy considerations — model memorization, inference attacks, training data exposure;

Address foundation model data implications — accepting upstream training data governance characteristics;

Establish AI data lifecycle from sourcing through retirement coordinated with BFS-ISP-028;

Coordinate with BFS-ISP-003 general data protection — AI data is data subject to BFS data framework with AI-specific extensions;

Coordinate with BFS-AI-001 governance, BFS-AI-002 risk, BFS-AI-003 lifecycle — completing BFS-AI series;

Provide audit-friendly documentation supporting NPC examinations on AI personal data and BSP examinations on AI data risk.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| AI Data | Data used in AI systems throughout AI lifecycle — training data, validation data, test data, inference input data, inference output data, derived data (embeddings, features). |

| Training Data | Data used to train AI models — primary determinant of model behavior. Includes labeled data for supervised learning, unlabeled data for unsupervised learning, interaction data for reinforcement learning. |

| Validation Data | Data used during training to tune hyperparameters and select model configurations. Distinct from test data. |

| Test Data | Data used for unbiased evaluation of trained model. Held out from training; representative of expected production distribution. |

| Holdout Data | Data not used in training, validation, or testing — preserved for unbiased post-deployment evaluation or ongoing monitoring. |

| Inference Data | Data submitted to model in production for prediction — includes inputs and resulting predictions/outputs. |

| Feature | Computed attribute derived from raw data — features feed into models. Examples: customer transaction frequency, account tenure, behavioral indicators. |

| Feature Store | Centralized system storing computed features available for AI training and inference — supporting feature reuse across models, training-inference consistency, feature documentation. |

| Feature Engineering | Process of computing features from raw data — including aggregations, transformations, encodings, derived calculations. |

| Embedding | Dense vector representation of data — typical for text, images, structured data in modern AI. Embeddings can themselves be sensitive (may encode personal information). |

| Data Provenance | Origin and history of data — where data came from, how it was processed, what transformations applied. Foundational to AI auditability. |

| Data Lineage | Traceability of data through its lifecycle — from sources through transformations to consumption. Includes AI-specific lineage from training data to deployed model decisions. |

| Data Quality | Fitness of data for intended purpose — including accuracy, completeness, consistency, timeliness, validity, uniqueness. |

| Synthetic Data | Artificially generated data — increasingly used in AI for privacy, augmentation, or coverage of edge cases per BFS-ISP-029 §5.2. |

| Data Augmentation | Techniques expanding training data through transformations — image rotations, text paraphrasing, data perturbations supporting model robustness. |

| Federated Learning | Training pattern where model trains across distributed data sources without centralizing data — privacy-preserving for some scenarios. |

| Differential Privacy | Mathematical framework providing privacy guarantees through carefully calibrated noise addition — applicable to AI training and inference. |

| Data Memorization | AI model phenomenon where models retain training data examples — potentially exposing data through inference. Particularly relevant for large models. |

| Membership Inference | Privacy attack determining whether specific data was in training set per BFS-AI-002 §9.5. |

| Data Drift | Change in data distribution over time — input drift, label drift, concept drift per BFS-AI-002 §9.3. |

| Data Subject Rights (RA 10173) | Rights of individuals regarding their personal data — access, correction, erasure, portability, objection. Operationalized for AI per Section 8. |

| Personally Identifiable Information (PII) | Information identifying or capable of identifying individuals — broad category subject to RA 10173. |

| Sensitive Personal Data | Per RA 10173 §3(l) — data revealing racial origin, religious affiliation, political opinions, health, sex life, criminal records, government IDs, etc. Subject to elevated protection. |

## 2.2  Scope

### 2.2.1  In-Scope AI Data

Training data for all BFS-developed AI models;

Fine-tuning data for foundation model fine-tuning;

Validation, test, and holdout data;

Production inference data — inputs submitted to models, outputs generated;

Feature store data shared across AI systems;

Embeddings, vector databases, and other AI-specific data structures;

RAG document corpora supporting LLM grounding;

Synthetic data generated for AI purposes;

AI-derived data — model outputs feeding downstream processes;

AI evaluation data — benchmarks, evaluation datasets;

Vendor AI data implications — data flows to/from vendor AI systems.

### 2.2.2  Out-of-Scope Items

General BFS data not used for AI — addressed through BFS-ISP-003 data protection;

Personnel personal data unrelated to BFS AI — addressed through HR data governance;

Foundation model upstream training data — beyond BFS control though provider evaluation per BFS-AI-003 §5.4;

Customer-controlled data BFS does not process for AI.

## 2.3  ISO/IEC 42001:2023 Annex A.7 Coverage

| Annex A.7 Element | Coverage | Section in This Policy |

| --- | --- | --- |

| A.7.2 Data for AI | Data acquisition, processes, quality, provenance | Section 3 (Framework); Section 4 (Sourcing); Section 5 (Quality); Section 6 (Provenance) |

| A.7.3 Acquisition | Acquisition of data from internal and external sources | Section 4 (AI Data Sourcing — internal/external/foundation model) |

| A.7.4 Quality of Data | Data quality for AI development and operation | Section 5 (AI Data Quality with dimensions and assessment) |

| A.7.5 Data Provenance | Provenance documentation | Section 6 (AI Data Provenance and Lineage) |

| A.7.6 Data Preparation | Data preparation processes | Section 7 (AI Data Preparation including bias assessment) |

# 3.  AI DATA GOVERNANCE FRAMEWORK

## 3.1  AI Data Governance Principles

Data is Foundational: AI quality follows data quality — disciplined data governance is foundational, not auxiliary;

Provenance Documented: AI data provenance documented from sources through transformations to consumption — supporting reproducibility, audit, regulatory examination;

Quality Engineered: AI data quality is engineered through systematic processes — not assumed from data sources;

Bias Assessed: AI data bias assessed before model training — not discovered through model behavior analysis after deployment;

Privacy Throughout: Personal data in AI data per RA 10173 throughout lifecycle — sourcing, training, inference, retention, disposal;

Minimization Applied: Only data needed for AI purpose collected and processed — minimization is operational discipline;

Lifecycle Managed: AI data lifecycle from sourcing through retirement managed per Section 9;

Auditable: AI data activities auditable supporting regulatory examination, internal audit, incident investigation;

Coordinated with General Data Governance: AI data is data — subject to BFS-ISP-003 data protection with AI-specific extensions;

Coordinated with AI Lifecycle: AI data governance integrated into AI lifecycle per BFS-AI-003.

## 3.2  AI Data Categories

| Category | Description | Governance Focus |

| --- | --- | --- |

| Source Data | Raw data from BFS systems and external sources | Lawful sourcing, classification, licensing per BFS-ISP-026 |

| Training Data | Data used to train models | Quality, representativeness, bias, privacy, versioning |

| Validation/Test Data | Data for model evaluation | Leakage prevention, representativeness, holdout discipline |

| Feature Data | Computed features in feature store | Feature documentation, training-inference consistency |

| Inference Data | Production input/output data | Privacy at inference, logging discipline, data flow controls |

| Derived/Embedding Data | Vector representations, embeddings | Embeddings as potential PII, vector database security |

| RAG Corpus | Documents grounding LLM outputs | Corpus accuracy, currency, security, source attribution |

| Synthetic Data | Artificially generated data | Generation methodology, privacy properties, fitness for use |

| AI Outputs | Model predictions and generations | Output classification, downstream use, audit logging |

| Evaluation Data | Benchmarks, evaluation datasets | Independence from training, currency, fairness coverage |

## 3.3  AI Data Roles

Chief Data Officer (CDO): Document co-owner. Enterprise data governance accountability extending to AI data;

DPO: Document co-owner. Personal data in AI per RA 10173 — comprehensive applicability;

Head of Enterprise Architecture and AI: Document co-owner. AI data infrastructure and architecture decisions;

CISO: Document co-owner. AI data security throughout lifecycle;

AI Data Stewards: Designated personnel accountable for specific data domains used in AI — domain expertise, quality assurance, governance compliance;

Data Engineers: Develop and maintain data pipelines for AI;

ML Engineers: Use AI data for model development per BFS-AI-003;

Feature Store Owner: Operational accountability for feature store platform and feature governance;

AI Risk Officer: AI data risk per BFS-AI-002 §9.5 (privacy) and other risk categories;

Internal Audit: Independent verification of AI data governance per BFS-ISMS-008.

# 4.  AI DATA SOURCING (A.7.3)

AI data sourcing — acquiring data for AI training and operation. Sources determine downstream characteristics.

## 4.1  Internal BFS Data Sources

Customer Data: Customer information, account data, transaction history — subject to RA 10173 with BFS as personal data controller;

Operational Data: BFS operational systems data — internal systems, applications, infrastructure;

Behavioral Data: Customer interaction data, channel usage, behavioral patterns;

Reference Data: Reference data including products, organizational reference, regulatory reference;

Internal Data Sourcing Considerations: Authorization for AI use — not all customer data uses are appropriate for AI;

Internal Data Source Quality: Source system quality assessment — known issues, data definitions, data freshness.

## 4.2  External Data Sources

Credit Bureau Data: From CIC and other credit information sources — per RA 9510 framework;

Market Data: Financial market data feeds;

Regulatory Data: BSP and other regulatory data;

Industry Data: Industry benchmarking, peer institution data through appropriate frameworks;

Open Data: Government open data, academic datasets, research datasets;

Commercial Data: Purchased data from data providers — subject to vendor evaluation per BFS-ISP-015;

External Data Source Considerations: Licensing per BFS-ISP-026, data quality assessment, provenance verification, privacy implications.

## 4.3  Foundation Model Training Data (Upstream)

Foundation model use entails accepting upstream training data BFS did not select:

Provider Disclosure: Foundation model provider disclosure of training data characteristics — broad nature, time period, known limitations;

Provider Evaluation: Comprehensive provider evaluation per BFS-AI-003 §5.4 including training data considerations;

Bias Awareness: Foundation models reflect upstream training data biases — BFS use considers and mitigates;

Copyright Considerations: Foundation model training data may include copyrighted content with evolving legal landscape — BFS approach: rely on provider terms; conservative use; coordination with Legal Counsel for novel situations;

Confidential Information Concerns: Confidential information could appear in foundation model training data — risk of model exposing such information; addressed through provider selection and use case design.

## 4.4  Data Sourcing Approval

PS-4.1  AI data sourcing for HIGH RISK AI shall be approved by Data Office, DPO (for personal data), and AI Risk Officer.

PS-4.2  External data acquisition shall be subject to vendor evaluation per BFS-ISP-015 with AI-specific considerations.

PS-4.3  Personal data acquisition for AI shall meet RA 10173 lawful basis — typically Section 12(b) consent, Section 12(c) contract performance, Section 12(d) legal obligation, Section 12(e) vital interest, or Section 12(f) legitimate interest with appropriate balancing test.

PS-4.4  Sensitive personal data (RA 10173 §3(l)) acquisition for AI requires specific lawful basis per RA 10173 §13 — particular care given elevated protection.

PS-4.5  Cross-border data sourcing for AI subject to BFS-ISP-024 §7 — adequacy assessment, contractual safeguards, NPC notification where applicable.

## 4.5  Data Sourcing Documentation

Each AI data source documented including: source identification, sourcing legal basis, licensing terms, sourcing date, data characteristics, known limitations;

Documentation supports provenance per Section 6 and audit trail.

# 5.  AI DATA QUALITY (A.7.4)

Data quality directly determines AI quality. Disciplined quality assessment is foundational AI capability.

## 5.1  Data Quality Dimensions

| Dimension | Definition | AI-Specific Considerations |

| --- | --- | --- |

| Accuracy | Data correctly represents reality | Inaccurate training data produces inaccurate models; label accuracy particularly critical |

| Completeness | Required data present, missing values managed | Missing data patterns may indicate bias; imputation strategies affect model behavior |

| Consistency | Data consistent across sources, time, representations | Inconsistencies create model confusion; reconciliation required |

| Timeliness | Data current per use requirements | Training data freshness affects model relevance; stale data trains stale models |

| Validity | Data conforms to defined formats and rules | Format violations cause training failures; validation pipelines necessary |

| Uniqueness | Records appropriately deduplicated | Training data duplication causes overfitting and biased weighting |

| Representativeness | Data represents intended population including protected groups | Foundational for fairness; gaps create bias and blind spots |

| Provenance | Data origin documented per Section 6 | Required for audit, reproducibility, regulatory examination |

| Freshness | Data sufficiently recent for use | Particularly for production inference; stale data degrades inference quality |

## 5.2  Quality Assessment

PS-2.1  AI data quality shall be assessed before use in AI training — using automated checks where possible, manual review for nuanced dimensions.

PS-2.2  Quality assessment results shall be documented — supporting decisions about data use, remediation, or rejection.

PS-2.3  Quality issues identified during assessment shall be addressed before use — remediation, exclusion, or compensating treatment.

PS-2.4  Quality assessment frameworks shall be calibrated to use case — not all dimensions equally important for all use cases.

PS-2.5  Quality monitoring shall continue in production — data quality drift can affect model behavior.

## 5.3  Bias and Representativeness Assessment

Bias assessment per BFS-AI-002 §9.1 with specific data focus:

Protected Group Representation: Distribution across protected groups (per RA 10173, Anti-Discrimination considerations) — under-representation creates bias risk;

Historical Bias Patterns: Training data reflecting historical biases — past discrimination encoded as data patterns;

Label Bias: Labels themselves may reflect bias — particularly for human-labeled data with subjective elements;

Sampling Bias: Data collection methods may systematically exclude or include populations — affecting representativeness;

Survivorship Bias: Data reflecting only successful outcomes (loans approved, customers retained) — missing perspectives;

Aggregation Bias: Data aggregated in ways losing important variation;

Mitigation: Mitigation through additional data collection for under-represented groups, careful labeling discipline, sampling strategies, awareness of limitations in deployment.

## 5.4  Data Quality Tooling

Automated Quality Checks: Automated profiling, schema validation, statistical analysis, anomaly detection;

Quality Monitoring: Continuous monitoring of quality dimensions in data pipelines;

Quality Reporting: Quality dashboards visible to data owners, AI engineers, and AI risk stakeholders;

Quality SLAs: For shared data assets, quality SLAs supporting downstream consumers;

Quality Improvement: Systematic quality improvement through root cause analysis of issues.

| DATA QUALITY IS NEVER FINISHED:  Data quality is continuous discipline, not point-in-time achievement. New data sources, evolving definitions, drift in upstream systems, regulatory changes affecting data definitions, and discoveries of previously unrecognized issues all create ongoing quality work. The mature AI data organization treats quality as standing capability with dedicated resources, rather than project to be completed. The cost of data quality work is foundational — the cost of poor AI data quality manifests downstream as model issues, regulatory issues, and customer impact at substantially greater cost. |

| --- |

# 6.  AI DATA PROVENANCE AND LINEAGE (A.7.5)

Data provenance — origin and history of data — is foundational to AI auditability, reproducibility, and regulatory examination.

## 6.1  Provenance Documentation

For each AI data asset:

Source: Specific origin — internal system, external provider, foundation model, synthetic generation;

Acquisition: When acquired, by what process, by whom, under what authority;

Authority: Lawful basis for use — particularly for personal data per RA 10173;

Licensing: License terms governing use — particularly for external and licensed data;

Transformations: Processing applied — cleaning, transformation, feature engineering, augmentation;

Quality Status: Quality assessment results;

Sensitivity: Data classification per BFS-ISP-003 — driving security and access controls;

Versions: Specific versions used in specific AI training runs.

## 6.2  Lineage Tracking

Lineage tracks data through its lifecycle:

Source-to-Training: From source systems through ETL/ELT pipelines through training data preparation to specific training runs;

Training-to-Model: Training data versions associated with specific model versions per BFS-AI-003 model registry;

Model-to-Inference: Models serving inference create inference logs traceable to specific model version traceable to training data;

End-to-End Auditability: Any AI decision can be traced backward through lineage to specific training data and processing steps;

Tooling: Lineage tracking tools — data catalog with lineage, MLflow or equivalent for ML experiment lineage, integration with model registry.

## 6.3  Provenance for Foundation Models

Foundation model provenance is bounded — BFS does not have full visibility into foundation model training data;

Documentation includes: foundation model provider, model version, model selection rationale, BFS fine-tuning data and lineage where applicable, RAG corpus lineage where applicable;

Bounded provenance acknowledged — explanations provided where complete provenance not available.

## 6.4  Audit Use of Provenance and Lineage

Regulatory Examination: NPC, BSP, and other regulators may examine AI decisions — provenance/lineage supports response;

Internal Audit: Per BFS-ISMS-008 — auditors verify AI data governance through provenance/lineage;

Incident Investigation: AI incidents traced through provenance/lineage to root causes;

Customer Rights: RA 10173 data subject rights operationalization may require lineage to identify all uses of customer data.

# 7.  AI DATA PREPARATION (A.7.6)

Data preparation transforms source data into training-ready data. Preparation discipline supports model quality.

## 7.1  Preparation Process

PS-1.1  Data preparation shall be documented including: input data, transformations applied, output data, code version, data version.

PS-1.2  Data preparation shall be reproducible — given same inputs and procedure, same outputs produced. Reproducibility supports audit and reanalysis.

PS-1.3  Data preparation shall be versioned — preparation pipelines in source control with appropriate review.

PS-1.4  Data preparation shall preserve relevant provenance — transformations recorded in lineage.

PS-1.5  Data preparation shall handle errors appropriately — bad records logged, quality dashboards updated, severe issues escalated.

## 7.2  Common Preparation Activities

Cleaning: Removing or correcting data errors, handling missing values, deduplicating;

Validation: Confirming data conforms to expected schema and rules;

Transformation: Format changes, encoding, type conversion;

Feature Engineering: Computing derived features per Section 8 feature store;

Aggregation: Computing aggregates over time windows, customer segments, etc.;

Encoding: Categorical encoding, embedding generation;

Scaling/Normalization: Scaling features for model compatibility;

Split: Training/validation/test split with leakage prevention;

Augmentation: Data augmentation expanding training data for robustness;

Anonymization/Pseudonymization: For specific privacy requirements per RA 10173 and BFS-ISP-003.

## 7.3  Train-Validation-Test Split Discipline

Proper data splitting prevents leakage that creates illusory model performance:

PS-3.1  Test data shall be held out before any training-related activity — not used for hyperparameter tuning, feature selection, or model selection.

PS-3.2  Validation data may be used for hyperparameter tuning and model selection but not as final performance measurement.

PS-3.3  Time-based splits shall reflect production scenario — test data temporally subsequent to training data preventing temporal leakage.

PS-3.4  Customer-level splits shall maintain customer integrity — same customer not split between training and test where customer-level leakage would mislead evaluation.

PS-3.5  Cross-validation discipline maintained — proper fold separation preventing leakage.

## 7.4  Synthetic Data and Augmentation

Per BFS-ISP-029 §5.2:

Synthetic Data Generation: Synthetic data for training augmentation, edge case coverage, privacy-preserving training;

Synthetic Data Quality: Generation methodology documented; quality assessed; fitness for use validated;

Privacy Properties: Where synthetic data substitutes for sensitive data, privacy properties verified;

Augmentation Discipline: Data augmentation per established methods — augmentation may introduce artifacts requiring awareness.

## 7.5  Data Preparation Code

Data preparation code in source control per BFS-ISP-016 §6.2;

Code review for material data preparation changes;

Code testing including unit tests for transformations;

Code documentation including data dictionary, transformation logic, known limitations.

# 8.  FEATURE STORE GOVERNANCE

Feature stores centralize computed features for AI training and inference — addressing reuse, consistency, and feature quality across BFS AI portfolio.

## 8.1  Feature Store Purpose

Reuse: Features computed once, used across multiple models — reducing duplicated work and inconsistencies;

Training-Inference Consistency: Same features available for training and production inference — preventing training-serving skew;

Documentation: Centralized feature documentation supporting AI engineers across teams;

Quality: Centralized feature quality management;

Governance: Centralized governance of feature data.

## 8.2  Feature Store Operations

PS-2.1  Features in feature store shall have documented owner accountable for feature quality and maintenance.

PS-2.2  Features shall be documented including: definition, computation logic, data sources, expected ranges, refresh cadence, known limitations.

PS-2.3  Feature versioning shall support model reproducibility — specific feature versions associated with specific model versions.

PS-2.4  Feature quality shall be monitored — feature drift, missing values, out-of-range values.

PS-2.5  Sensitive features shall be classified per BFS-ISP-003 — including features encoding personal data or sensitive customer information.

PS-2.6  Feature deprecation shall be managed — removed features not silently lost; consumers notified of deprecation.

## 8.3  Feature Store Security

Access controls per BFS-ISP-005 — appropriate access calibrated to feature sensitivity;

Audit logging per BFS-ISP-008 — feature access logged supporting audit;

Personal data features per RA 10173 — features encoding personal data subject to data privacy framework;

Cross-environment considerations per BFS-ISP-029 — feature store separation between production and non-production where appropriate.

## 8.4  Embeddings and Vector Databases

Embeddings — dense vector representations — are increasingly common in AI architectures including RAG:

Embeddings as Potential PII: Embeddings of personal data may themselves be personal data — encoding identifying information in vector space. Privacy framework applies;

Vector Database Security: Vector databases storing embeddings subject to BFS-ISP-005 access controls and BFS-ISP-013 §10 production protection;

Embedding Generation Provenance: Embedding generation method, model version used, source data version documented;

Inference-Time Embedding Considerations: Production inference embeddings may be sensitive — handled per data classification.

# 9.  AI DATA LIFECYCLE

AI data lifecycle from sourcing through retirement coordinated with BFS-ISP-028 disposal.

## 9.1  Lifecycle Stages

| Stage | Activities | Governance Focus |

| --- | --- | --- |

| Source | Identify and acquire data | Sourcing per Section 4 — authority, licensing, classification |

| Prepare | Clean, transform, structure data | Preparation per Section 7 — documented, reproducible, versioned |

| Store | Persist data appropriately | Storage classification, security, encryption per BFS-ISP-003 |

| Use | Active use in AI training and operation | Access controls, audit logging, training-inference use |

| Retain | Retain per applicable requirements | Retention per BFS-ISMS-006 + AI-specific considerations |

| Retire | End of useful life — disposal or archival | Disposal per BFS-ISP-028; archival per BFS-ISMS-006 |

## 9.2  Data Retention for AI

Training Data Retention: Training data retained for AI lifecycle reasons — model reproducibility, audit support, future fine-tuning. Retention typically aligned with model lifecycle plus regulatory examination cycles;

Personal Data Retention: Personal data retention per RA 10173 — retained only for purpose duration; not retained beyond AI use case;

Inference Data Retention: Inference logs retained per BFS-ISP-008 audit requirements; supporting AI auditability;

Feature Store Retention: Feature data retention per feature store policy — typically retained for active use plus historical reference window;

Foundation Model Fine-Tuning Data: Retained supporting potential model retraining and audit;

RAG Corpus: Retained per business need; corpus updates retain version history for reference.

## 9.3  Data Disposal for AI

Per BFS-ISP-028 with AI-specific considerations:

Training Data Disposal: At end of retention, training data disposed per classification — Destroy method for sensitive data per NIST SP 800-88;

Model-Embedded Data: Models can memorize training data — model retirement per BFS-AI-003 §10 considers data exposure through model artifacts; model artifact disposal at retirement;

Inference Log Disposal: At end of audit retention, inference logs disposed appropriately;

Embeddings and Vector Disposal: Embeddings derived from sensitive data treated as sensitive for disposal;

Feature Store Disposal: Decommissioned features disposed; feature store retirement coordinated with consuming model retirement.

## 9.4  RA 10173 Right to Erasure for AI

Customer right to erasure per RA 10173 §16(e) operationalized for AI:

Erasure Scope: Personal data erasure addresses copies in BFS systems — including any AI training data, feature store data, inference logs;

Model Considerations: Trained models may have memorized training data — erasure may not extract data from model. Approach: prevent erasure-affected data from new training runs; address through retraining when feasible;

Coordinated with DPO: DPO coordinates erasure scope determination — including AI-specific considerations;

Audit Trail: Erasure activities documented supporting compliance verification.

# 10.  AI DATA PRIVACY

AI data privacy beyond general data privacy — addressing AI-specific privacy considerations per BFS-AI-002 §9.5.

## 10.1  Personal Data in AI Throughout Lifecycle

PS-1.1  Personal data in AI subject to RA 10173 throughout — sourcing, training, validation, deployment, inference, monitoring, retention, disposal.

PS-1.2  Lawful basis for personal data in AI documented — typically consent, contract performance, legal obligation, legitimate interest, or other RA 10173 §12 basis.

PS-1.3  Purpose limitation maintained — personal data sourced for one purpose not used for AI without compatible purpose assessment.

PS-1.4  Data minimization applied — only personal data needed for AI purpose used.

PS-1.5  Sensitive personal data per RA 10173 §3(l) requires specific lawful basis per RA 10173 §13.

## 10.2  Privacy-Preserving AI Techniques

Differential Privacy: Mathematical framework providing privacy guarantees through carefully calibrated noise — applicable to training data, model outputs, and aggregations;

Federated Learning: Training across distributed data without centralization — useful for some scenarios particularly with consortium data;

Homomorphic Encryption: Computation on encrypted data — emerging area with use cases in AI;

Secure Multi-Party Computation: Computation across parties without revealing inputs — relevant for AI consortium scenarios;

Anonymization and Pseudonymization: Per BFS-ISP-029 §5.3 with AI-specific application — challenges of anonymizing rich data while retaining utility;

Synthetic Data: Per BFS-ISP-029 §5.2 — synthetic data substituting for sensitive data;

Privacy by Design: Per BFS-ISP-027 §6.4 applied to AI — privacy embedded in AI design rather than retrofit;

Trade-Offs: Privacy techniques may reduce model utility — explicit trade-off decisions per use case.

## 10.3  Model Memorization and Inference Attacks

Memorization Risk: Models may memorize training data exposing it through inference — particularly large models;

Memorization Detection: Evaluation methods for memorization — generation evaluation for LLMs, training data extraction attempts;

Inference Attacks: Membership inference, attribute inference, model inversion attacks per BFS-AI-002 §9.5;

Mitigation: Differential privacy where applicable, training discipline reducing memorization, output filtering, access controls preventing query-based attacks.

## 10.4  Inference-Time Privacy

Inference Inputs: Personal data submitted at inference subject to RA 10173 — handling per data protection;

Inference Logging: Inference logs may contain personal data — handling per BFS-ISP-008 with AI-specific considerations;

Vendor Inference: Foundation model API use sends inputs to vendor — vendor handling per BFS-ISP-015 vendor management with privacy attention;

Inference Output Privacy: Outputs may contain personal data — handling per data classification.

## 10.5  Data Sharing for AI

Internal Data Sharing: Cross-function data sharing for AI within BFS — appropriate authorization, classification compliance;

External Data Sharing: External sharing of BFS data including personal data subject to RA 10173 §20 (data sharing) and NPC Circular 16-02 (Data Sharing Agreements);

Industry Consortia: AI-related data sharing in industry consortia subject to specific governance — typically requiring formal agreements and regulatory awareness;

Vendor Data Provision: BFS providing data to AI vendors per BFS-ISP-015 with appropriate data protection in vendor contracts.

# 11.  ROLES AND RESPONSIBILITIES

| Role | AI Data Governance Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Oversight of AI data governance through KPI reporting and material event reporting. |

| Head of Enterprise Architecture and AI | Document co-owner. AI data architecture and infrastructure including feature store. Coordination with broader AI governance. |

| Data Protection Officer | Document co-owner. Personal data in AI per RA 10173 — comprehensive applicability. Right to erasure operationalization for AI. NPC liaison for AI data matters. |

| Chief Data Officer | Document co-owner. Enterprise data governance extending to AI data. Data quality framework. Data stewardship coordination. |

| Chief Information Security Officer | Document co-owner. AI data security throughout lifecycle. Encryption, access controls, security monitoring. |

| Chief Information Officer | Co-approver. AI data infrastructure operations. |

| AI Risk Officer | Co-approver. AI data risk per BFS-AI-002 — data quality risk, privacy risk, bias risk through data. |

| Chief Compliance Officer | Co-approver. AI data compliance with RA 10173, NPC, BSP, and other regulatory frameworks. |

| AI Data Stewards | Designated personnel accountable for specific data domains in AI — domain expertise, quality assurance, governance compliance. |

| Data Engineers | Develop and maintain data pipelines for AI. Data preparation discipline. |

| ML Engineers | Use AI data appropriately for model development per BFS-AI-003. Adopt feature store best practices. |

| Feature Store Owner | Operational accountability for feature store platform and feature governance. |

| Source System Owners | Quality of data flowing from source systems to AI. Coordination with AI data needs. |

| Internal Audit | Independent verification of AI data governance per BFS-ISMS-008 — including provenance, lineage, quality, privacy. |

# 12.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

AI data governance effectiveness measured through KPIs reviewed quarterly by AI Governance Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| AI data sources documented with provenance | ≥ 95% | Quarterly |

| AI training data with quality assessment completed | 100% before training | Per training run |

| AI training data with bias assessment completed | 100% for HIGH RISK and applicable LIMITED RISK | Per training run |

| AI data lawful basis documented per RA 10173 | 100% for personal data | Continuous |

| Cross-border AI data flows assessed per BFS-ISP-024 §7 | 100% | Per data flow |

| Data lineage documented from source to deployed model | ≥ 90% for HIGH RISK AI | Quarterly |

| Train-validation-test split discipline (no leakage) | 100% | Per training run |

| Feature store features with documented owner | 100% | Quarterly |

| Feature store features with documentation | ≥ 95% | Quarterly |

| Sensitive features classified per BFS-ISP-003 | 100% | Continuous |

| AI data quality monitoring operational | ≥ 90% of in-scope AI data | Quarterly |

| Personal data right to erasure for AI handled within target time | 100% | Per request |

| AI data retention compliance per BFS-ISMS-006 | 100% | Annual |

| AI data disposal at retirement per BFS-ISP-028 | 100% | Per disposal |

| Foundation model provider evaluation including data considerations | 100% of in-use foundation models | Annual |

| AI data sharing agreements per NPC Circular 16-02 | 100% where applicable | Per agreement |

| NPC compliance findings on AI data | Zero material findings | Per review |

| BSP examination findings on AI data risk | Zero material findings | Per examination |

| Internal Audit findings on AI data governance | Track and remediate per BFS-ISMS-010 | Per audit |

# 13.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS AI Data Governance Policy as final document of BFS-AI series — completing comprehensive AI governance framework. Subordinate to BFS-AI-001 AI Governance Policy. Quad-functional ownership (Head of EA & AI / DPO / CDO / CISO). Aligned with ISO/IEC 42001:2023 Annex A.7 (Data for AI Systems) covering A.7.2 through A.7.6. 10 AI data governance principles. 10-category AI data taxonomy (Source/Training/Validation-Test/Feature/Inference/Derived-Embedding/RAG Corpus/Synthetic/AI Outputs/Evaluation). AI Data Sourcing across internal/external/foundation model sources with 5 PS statements covering approval and lawful basis. AI Data Quality with 9 quality dimensions, assessment framework, bias and representativeness assessment, quality tooling. AI Data Provenance and Lineage from source to deployed model. AI Data Preparation with split discipline preventing leakage (5 PS statements). Feature Store Governance with 6 PS statements covering ownership, documentation, versioning, quality, classification, deprecation. Embeddings and vector databases. AI Data Lifecycle from sourcing through retirement with 6-stage framework. AI Data Privacy beyond general data privacy — privacy-preserving AI techniques (differential privacy, federated learning, homomorphic encryption, MPC), model memorization and inference attacks, inference-time privacy, data sharing per NPC Circular 16-02. RA 10173 §16(e) right to erasure operationalization for AI including model considerations. Final document of BFS-AI series. | IT Head / Infrastructure Head<br>EA & AI Team / Data Office / DPO / CISO Office / AI Risk Office / Software Engineering | IT Head<br>HEAA/DPO/CDO/CISO/CIO/AIRO/CCO/Board |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 42001:2023 Annex A.7 Mapping

Mapping of ISO/IEC 42001:2023 Annex A.7 (Data for AI Systems) elements to specific provisions of this policy.

| Control | Title and Coverage | How This Policy Operationalizes |

| --- | --- | --- |

| A.7.2 | Data for AI — overall data approach | Section 3 (AI Data Governance Framework with 10 principles, 10-category taxonomy, governance roles) |

| A.7.3 | Acquisition of data | Section 4 (AI Data Sourcing — internal sources including customer/operational/behavioral/reference data, external sources including credit bureau/market/regulatory/industry/open/commercial data, foundation model upstream training data, sourcing approval with 5 PS statements covering data office approval, vendor evaluation, RA 10173 lawful basis, sensitive personal data, cross-border) |

| A.7.4 | Quality of data | Section 5 (AI Data Quality with 9 quality dimensions, quality assessment with 5 PS statements, bias and representativeness assessment, quality tooling) |

| A.7.5 | Data provenance | Section 6 (AI Data Provenance and Lineage with provenance documentation, lineage tracking from source to model, foundation model bounded provenance, audit use of provenance) |

| A.7.6 | Data preparation | Section 7 (AI Data Preparation with 5 PS statements for preparation process, common preparation activities, train-validation-test split discipline with 5 PS statements preventing leakage, synthetic data and augmentation, preparation code discipline) |

# APPENDIX B:  AI Data Governance Quick Reference

Single-page reference for AI engineers, data engineers, and AI data stakeholders.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What are AI data categories? | 10 categories: Source Data, Training Data, Validation/Test Data, Feature Data, Inference Data, Derived/Embedding Data, RAG Corpus, Synthetic Data, AI Outputs, Evaluation Data. Each has specific governance focus. See §3.2. |

| What about lawful basis for personal data in AI? | RA 10173 throughout AI lifecycle. Typical lawful basis: §12(b) consent, §12(c) contract performance, §12(d) legal obligation, §12(e) vital interest, §12(f) legitimate interest with balancing test. Sensitive personal data requires §13 specific basis. See §4.4. |

| What are data quality dimensions? | 9 dimensions: Accuracy, Completeness, Consistency, Timeliness, Validity, Uniqueness, Representativeness, Provenance, Freshness. AI-specific considerations per dimension. Quality is continuous discipline. See §5.1 and note box. |

| What about bias and representativeness? | Assessment per BFS-AI-002 §9.1. Protected group representation, historical bias patterns, label bias, sampling bias, survivorship bias, aggregation bias. Mitigation through additional data, careful labeling, sampling strategies. See §5.3. |

| What's data provenance? | Origin and history of data — source, acquisition, authority, licensing, transformations, quality status, sensitivity, versions. Foundational to AI auditability and reproducibility. See §6.1. |

| What's data lineage? | Traceability from source through transformations to consumption. Source-to-Training, Training-to-Model, Model-to-Inference. Any AI decision traceable backward to specific training data and processing. See §6.2. |

| How do I handle train-validation-test split? | Test data held out before training-related activity. Validation may be used for tuning but not final measurement. Time-based splits temporally aligned. Customer-level splits maintain customer integrity. Cross-validation discipline. See §7.3. |

| What about feature store? | Centralized features with documented owners, documentation, versioning, quality monitoring, sensitivity classification, deprecation management. Training-inference consistency through shared features. 6 PS statements. See §8. |

| What about embeddings? | Embeddings of personal data may themselves be personal data. Vector databases subject to access controls and security. Provenance documented. Inference-time embeddings handled per classification. See §8.4. |

| What about model memorization? | Models may memorize training data exposing it through inference. Detection through evaluation methods. Inference attacks (membership inference, attribute inference, model inversion). Mitigation: differential privacy, training discipline, output filtering, access controls. See §10.3. |

| What about right to erasure for AI? | Coordinated with DPO. Erasure scope addresses copies in BFS systems including AI training data, feature store, inference logs. Models may have memorized training data — erasure may not extract from model. Approach: prevent erasure-affected data from new training; address through retraining when feasible. See §9.4. |

| What's the AI data lifecycle? | 6 stages: Source → Prepare → Store → Use → Retain → Retire. Each stage has governance focus. Retention per BFS-ISMS-006 + AI considerations. Disposal per BFS-ISP-028. See §9.1. |

BFS-AI-004  |  AI Data Governance Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. ISO/IEC 42001:2023 Annex A.7 Aligned. Subordinate to BFS-AI-001.

Final Document of the BFS AI Governance Series — Completing AI Framework Coverage
