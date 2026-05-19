---
title: "BFS-AI-003-AI-Model-Lifecycle-Management-Policy"
source_file: "04-PPG-AI-Governance/AI-Policy/BFS-AI-003-AI-Model-Lifecycle-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:42Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "04-PPG-AI-Governance"
  - "AI-Policy"
aliases:
  - "BFS-AI-003-AI-Model-Lifecycle-Management-Policy"
creator: "Un-named"
created: "2026-05-02T01:59:00Z"
modified: "2026-05-02T14:01:00Z"
---

| BFS AI GOVERNANCE FRAMEWORK<br>AI MODEL LIFECYCLE<br>MANAGEMENT POLICY<br>Operational Discipline for AI Model Lifecycle — Planning, Development, Validation, Deployment, Operation, Monitoring, and Retirement — Including MLOps, Model Registry, Model Cards, Foundation Models, and Champion-Challenger Operations<br>Policy Reference: BFS-AI-003<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Semi-Annual<br>Operationalizes BFS-AI-001 §5 AI Lifecycle Governance<br>Aligned with ISO/IEC 5338:2023 AI System Life Cycle, MLOps Maturity Frameworks, and BSP Model Risk Management Expectations<br>Disciplined AI Model Lifecycle for AI-Native Mission-Critical Operations |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | AI Model Lifecycle Management Policy |

| --- | --- |

| Policy Reference | BFS-AI-003 |

| Policy Owner | Head of Enterprise Architecture and AI / Chief Information Officer (CIO) / Chief Information Security Officer (CISO) / AI Risk Officer — quad-functional ownership |

| Document Author | Enterprise Architecture and AI Team / Software Engineering / CISO Office / AI Risk Office / Model Validation |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2026 |

| Review Date | October 2026 (Semi-Annual Cycle) |

| Review Cycle | Semi-annual baseline review reflecting rapid AI lifecycle and tooling evolution; mandatory review after: material changes to AI infrastructure or MLOps, accumulated lessons from AI lifecycle operations, or evolution of ISO/IEC 5338 standard |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 3 — Subordinate to BFS-AI-001 AI Governance Policy. Operationalizes AI Model Lifecycle dimension of BFS AI Governance Framework with operational depth. |

| Parent Document | BFS-AI-001 (AI Governance Policy — foundational) |

| Companion Documents | BFS-AI-002 (AI Risk Management Policy); BFS-AI-004 forthcoming (AI Data Governance); BFS-ISP-016 (Application Software Security — SSDLC extended for AI); BFS-ISP-027 (Project Management — AI projects); BFS-ISP-029 (Test/Dev Environment — AI training/inference environments); BFS-ISP-016 SBOM/AIBOM coordination |

| Framework Alignment | ISO/IEC 5338:2023 (AI System Life Cycle Processes); ISO/IEC 42001:2023 lifecycle provisions (Annex A.6); ISO/IEC 23053:2022 (Framework for AI Systems Using ML); ISO/IEC TR 24029-1:2021 (Robustness assessment); MLOps maturity frameworks (Google MLOps, Microsoft MLOps); CI/CD/CT extensions for ML |

| Regulatory Reference | BSP Circular 1140 (IT risk management including model risk); BSP supervisory expectations on model risk management (model validation, monitoring, governance); BSP Circular 1048 (Cybersecurity expectations affecting model security); RA 10173 implications for models processing personal data; PCI DSS v4.0 §6 expectations for AI in cardholder data environment |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| AI Risk Officer |  |  |  |

| Head of Software Engineering |  |  |  |

| Head of IT Operations |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services AI Model Lifecycle Management Policy operationalizing the AI lifecycle dimension of the BFS AI Governance Framework. It is subordinate to BFS-AI-001 AI Governance Policy and provides operational depth for the seven-stage AI lifecycle established in BFS-AI-001 §5 (Plan, Develop, Validate, Deploy, Operate, Monitor, Retire). It addresses MLOps practices, model registry operations, model documentation through model cards and AIBOM, foundation model management, and champion-challenger operations.

AI model lifecycle management is operationally significant. AI models in production are not static artifacts — they are operational systems requiring continuous attention through their lifecycle. Model performance changes through drift; environments evolve creating compatibility issues; new model versions emerge offering improvements; vulnerabilities require addressing; eventually models reach end of useful life requiring retirement. Each stage has specific operational requirements; failure of any stage compromises model adequacy. Lifecycle discipline is what distinguishes professional AI operations from one-time model development.

BFS as an AI-native platform development organization has substantial AI model portfolio. The BFS core platform incorporates models for fraud detection, AML monitoring, credit risk assessment, customer experience personalization, operational automation, and AI-augmented analytics. Each model has independent lifecycle but shares lifecycle infrastructure (MLOps platform, model registry, monitoring infrastructure). Coherent lifecycle discipline across portfolio is foundational to operational reliability of BFS AI capability.

MLOps — Machine Learning Operations — represents the operational practice for AI lifecycle management. MLOps extends DevOps practices for AI model specifics: continuous training (CT) alongside continuous integration (CI) and continuous deployment (CD); model versioning alongside code versioning; model monitoring alongside system monitoring; model registry alongside artifact registry; data pipeline management; experiment tracking; reproducibility infrastructure. BFS MLOps practices align with industry maturity frameworks while calibrated to BFS regulatory and risk context.

Foundation models — large pre-trained models adaptable to many tasks — present specific lifecycle considerations. BFS use of foundation models (LLMs, vision models, multi-modal models) involves model selection from multiple providers, fine-tuning on BFS-specific data, RAG (Retrieval-Augmented Generation) architectures, prompt engineering as configuration management, and model version management for foundation model updates. Foundation model lifecycle differs from custom-trained model lifecycle and warrants specific provisions.

Beyond ISO/IEC 42001 alignment, this policy addresses BSP supervisory expectations on model risk management — increasingly explicit in BSP examinations covering model validation, model monitoring, and model governance. While BSP supervisory framework on AI/ML model risk continues to evolve, BFS approach reflects model risk management discipline expected of regulated financial institutions including model documentation, independent validation, ongoing monitoring, and model risk governance.

The specific objectives of this policy are to:

Establish operational discipline for each AI lifecycle stage with specific deliverables and gates;

Operationalize ISO/IEC 5338:2023 AI System Life Cycle processes calibrated to BFS context;

Establish MLOps practices supporting BFS AI capability — CI/CD/CT, model versioning, experiment tracking, reproducibility;

Define model registry operations — single source of truth for AI models in BFS;

Establish model documentation discipline — model cards, AIBOM, model lineage;

Address foundation model lifecycle considerations — selection, fine-tuning, RAG, version management;

Establish champion-challenger framework supporting model improvement without disruption;

Define independent model validation discipline supporting BSP model risk management expectations;

Address model monitoring including drift detection, performance monitoring, fairness monitoring per BFS-AI-002;

Establish model retirement discipline addressing operational, regulatory, and audit considerations;

Coordinate with BFS-AI-001 governance and BFS-AI-002 risk management;

Provide audit-friendly documentation supporting BSP examinations and external audit reviews of AI lifecycle discipline.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| AI Model | Mathematical or computational artifact representing learned patterns or rules — including ML models (decision trees, neural networks, ensembles), foundation models (LLMs, vision models), and rule-based AI components. |

| Model Version | Specific version of model — typically identified by training run, training data, hyperparameters, and other distinguishing characteristics. Multiple versions may coexist. |

| Model Artifact | Persisted model representation — typically including model weights, architecture specification, preprocessing logic, and dependencies. Stored in model registry. |

| Model Registry | Centralized system tracking models, versions, artifacts, metadata, lineage, and lifecycle state. Single source of truth for AI models. |

| Model Card | Documentation of AI model per ISO 42001 Annex A.6 — including intended use, performance, limitations, training data, evaluation results. |

| AIBOM (AI Bill of Materials) | Inventory of AI system components — base models, fine-tuning data, dependencies, evaluation datasets — analog of SBOM for AI per BFS-AI-001 §2.1. |

| MLOps | Machine Learning Operations — operational practice for AI lifecycle including CI/CD/CT, model versioning, monitoring, registry, experiment tracking. |

| CI/CD/CT | Continuous Integration / Continuous Deployment / Continuous Training — extension of DevOps CI/CD with continuous training as third dimension specific to ML. |

| Continuous Training (CT) | Automated or semi-automated retraining of models — triggered by data refresh, drift detection, performance degradation, or scheduled cadence. |

| Experiment Tracking | Systematic recording of AI experiments including data, configuration, code version, results — supporting reproducibility and learning. |

| Model Lineage | Traceability of model from training inputs (data, code, configuration) through model artifacts to deployed inference — supporting audit and reproducibility. |

| Independent Model Validation | Validation by personnel independent of model development — providing critical review of model adequacy before deployment. |

| Champion | Currently deployed production model — serving live inference requests. |

| Challenger | Candidate model running in parallel with champion — evaluated against champion before potential promotion. |

| Champion-Challenger | Operational pattern running candidate model alongside production model for performance comparison without disrupting production. |

| Shadow Mode | Deployment pattern where model serves predictions but predictions are not used for decisions — allowing model evaluation in production without operational impact. |

| Canary Deployment | Deployment pattern where new model version serves small percentage of traffic before full rollout — limiting blast radius of potential issues. |

| Blue-Green Deployment | Deployment pattern with two production environments enabling rapid switch between versions — supporting rollback. |

| Foundation Model | Large model trained on broad data adaptable to many tasks — including LLMs, vision foundation models, multi-modal models. |

| Fine-Tuning | Adapting foundation model to specific task or domain through additional training on task-specific data. |

| RAG (Retrieval-Augmented Generation) | Architecture combining LLM with retrieval system — LLM responses grounded in retrieved documents reducing hallucination per BFS-AI-002 §9.6. |

| Prompt Engineering | Configuration discipline for LLM-based systems — designing system prompts, few-shot examples, chain-of-thought, and other prompt techniques. |

| Model Drift | Degradation of model performance over time as inputs or environment change — per BFS-AI-002 §9.3. |

| Model Retirement | End of model production lifecycle — model removed from service with appropriate handling of artifacts, data, and successor coordination. |

| Inference | Operational use of model — model receiving inputs and producing predictions/outputs in production. |

## 2.2  Scope

### 2.2.1  In-Scope Models

All BFS-developed AI/ML models — internal models built by BFS for BFS operational use;

All BFS fine-tuned foundation models — models adapted from foundation model providers;

All BFS-deployed third-party models in production — vendor models, foundation model API use;

All AI models across all BFS business areas — fraud detection, AML, credit risk, customer experience, operational automation, AI-augmented analytics;

All AI models regardless of risk tier per BFS-AI-001 §4 — though lifecycle intensity calibrated.

### 2.2.2  Out-of-Scope Items

Traditional rule-based systems without ML characteristics — addressed through standard software lifecycle;

Personal use of AI tools by personnel — addressed through general acceptable use;

AI research not deployed to BFS operations.

## 2.3  ISO/IEC 5338:2023 Coverage

This policy aligns with ISO/IEC 5338:2023 AI System Life Cycle Processes — operationalizing standard processes for BFS context. Mapping to ISO 5338 process areas in Appendix A.

# 3.  AI LIFECYCLE FRAMEWORK

## 3.1  BFS Seven-Stage Lifecycle

BFS AI lifecycle established in BFS-AI-001 §5.1 with seven stages. This policy provides operational depth for each stage:

| Stage | Operational Focus | Section in This Policy |

| --- | --- | --- |

| Plan | Use case definition, model approach selection, lifecycle planning | Section 4 (Plan Stage Operations) |

| Develop | Data preparation, model development, fine-tuning, experimentation | Section 5 (Develop Stage Operations including MLOps Development) |

| Validate | Performance, fairness, robustness, security validation; independent validation | Section 6 (Validate Stage Operations including Independent Validation) |

| Deploy | Production deployment with appropriate patterns, model registry update | Section 7 (Deploy Stage Operations including Deployment Patterns) |

| Operate | Live operation serving inference; user interactions | Section 8 (Operate Stage Operations) |

| Monitor | Continuous monitoring of performance, drift, fairness, security | Section 9 (Monitor Stage Operations) |

| Retire | Model retirement with artifact handling and successor coordination | Section 10 (Retire Stage Operations) |

## 3.2  Lifecycle Principles

Stage Discipline: Each lifecycle stage has specific deliverables and gates — progression requires gate completion;

Reproducibility: AI development reproducible through systematic experiment tracking, versioned artifacts, and documented procedures;

Auditability: AI lifecycle audit-traceable from training inputs through deployed inference — supporting regulatory examination and incident investigation;

Risk-Calibrated: Lifecycle intensity calibrated to AI risk classification per BFS-AI-001 §4 — HIGH RISK comprehensive; LIMITED RISK substantive; MINIMAL RISK proportionate;

Lifecycle Coordination: Stages coordinate — validation considers planned deployment; deployment considers planned operation; operation feeds monitoring;

Continuous Improvement: Lifecycle practices evolve through accumulated experience and tooling advancement;

Coordinated with Risk Management: Lifecycle activities address risks identified through BFS-AI-002 risk management — risks not addressed in lifecycle become operational issues.

## 3.3  MLOps Maturity

BFS MLOps maturity progresses through industry-recognized levels:

| MLOps Level | Description | BFS Targets |

| --- | --- | --- |

| Level 0: Manual | Manual ML workflow without automation — appropriate for experimental/proof-of-concept | Acceptable for exploratory AI; not for production AI |

| Level 1: ML Pipeline Automation | Automated pipeline for training and deployment | Minimum for LIMITED RISK production AI |

| Level 2: CI/CD/CT Pipeline | Full CI/CD pipeline including continuous training | Target for HIGH RISK production AI; aspiration across portfolio |

## 3.4  Lifecycle Roles

Model Owner: Specific accountability for specific model — model performance, lifecycle compliance, documentation. Per BFS-AI-001 §3.2;

ML Engineer: Develops and operates models — primary lifecycle execution role;

Data Engineer: Develops and maintains data pipelines feeding models;

MLOps Engineer: Maintains MLOps platform and infrastructure;

Model Validator: Independent validation of models per Section 6.6;

AI Risk Officer: AI risk management per BFS-AI-002;

Business Sponsor: Business accountability for AI use case;

Production Operations: Operates models in production environment.

# 4.  PLAN STAGE OPERATIONS

Plan stage establishes use case, approach, and lifecycle plan. Operational discipline at planning prevents downstream issues.

## 4.1  Use Case Definition

PS-1.1  AI use case shall be defined including: business purpose, target outcomes, stakeholders affected, success criteria, constraints (regulatory, ethical, operational, cost).

PS-1.2  Use case shall be assessed against BFS AI strategy per BFS-AI-001 — alignment with BFS purposes and resources confirmed.

PS-1.3  Use case shall undergo risk classification per BFS-AI-001 §4 — UNACCEPTABLE classifications stop further work; HIGH RISK triggers comprehensive lifecycle governance.

PS-1.4  Non-AI alternatives shall be considered — confirming AI is appropriate solution rather than default approach.

## 4.2  Model Approach Selection

Model approach selection considers multiple dimensions:

Problem Type: Classification, regression, clustering, generation, recommendation, sequence prediction, etc.;

Data Characteristics: Available data volume, quality, structure, labeling status, privacy classification;

Model Architecture: Traditional ML (linear, tree-based, ensemble), deep learning (CNN, RNN, transformer), foundation models;

Build vs Buy vs Adapt: BFS-developed model, third-party model, foundation model with fine-tuning, foundation model with prompt engineering;

Performance Requirements: Latency, throughput, accuracy thresholds, fairness requirements;

Operational Considerations: Inference cost, training cost, maintenance complexity, available skills;

Trade-Offs: Performance vs interpretability, cost vs accuracy, complexity vs maintainability — explicit trade-off decisions.

## 4.3  Lifecycle Plan

Lifecycle plan documented including: target timelines per stage, key deliverables per stage, governance gates, resource requirements;

Plan reviewed by AI Risk Office for HIGH RISK AI;

Plan baselined supporting subsequent execution and variance tracking;

Plan updated for material changes during execution.

## 4.4  AIIA Initiation

AI Impact Assessment per BFS-AI-001 §6 initiated at Plan stage for triggering AI;

AIIA findings inform design decisions — privacy concerns addressed through design, bias risks anticipated, transparency requirements identified;

AIIA progresses through subsequent stages with completion before deployment.

# 5.  DEVELOP STAGE OPERATIONS

Develop stage produces trained models. Operational discipline supports reproducibility, auditability, and quality.

## 5.1  Development Environment

AI development environments per BFS-ISP-029 §3 — separated from production, appropriate access controls, training data protection;

Approved AI development tools per BFS-ISP-002 — frameworks (TensorFlow, PyTorch, JAX, scikit-learn), notebook environments (Jupyter, Colab), MLOps platforms;

Development environment provisioning through BFS infrastructure — supporting reproducibility and collaboration.

## 5.2  Data Preparation

Data preparation discipline per forthcoming BFS-AI-004 AI Data Governance:

PS-2.1  Training data shall be sourced per BFS-ISP-003 data protection — appropriate authorization, lawful basis for personal data per RA 10173, classification-appropriate handling.

PS-2.2  Training data quality shall be assessed — completeness, accuracy, representativeness, label quality, freshness.

PS-2.3  Training data bias shall be assessed — particularly representation across protected groups, historical bias patterns, label bias.

PS-2.4  Training data licensing per BFS-ISP-026 §7.5 — particularly for third-party data and AI training data licensing.

PS-2.5  Training data versions shall be tracked supporting reproducibility — specific dataset versions associated with specific model versions.

PS-2.6  Training-validation-test data splits shall prevent leakage — test data not seen during training; validation data not used for hyperparameter tuning beyond intended purpose.

## 5.3  Model Development

PS-3.1  Model development shall use approved frameworks and infrastructure per BFS-ISP-016 development standards extended for AI.

PS-3.2  Model development shall be tracked through experiment tracking — experiments recorded with data, configuration, code version, hyperparameters, results.

PS-3.3  Model development code shall be in source control per BFS-ISP-016 §6.2 — version controlled, code reviewed, signed commits.

PS-3.4  Model artifacts shall be persisted to model registry per Section 11 — even experimental artifacts of interest.

PS-3.5  Model development reproducibility shall be supported — sufficient artifact and procedure documentation enabling reproduction of results.

## 5.4  Foundation Model Selection (When Applicable)

For BFS use cases leveraging foundation models:

Foundation Model Evaluation: Provider security per BFS-ISP-015, data handling by provider, model licensing per BFS-ISP-026, alignment with BFS use case;

Foundation Model Provenance: Source, training methodology summary if available, known limitations and biases;

Capability Assessment: Foundation model capability for BFS use case through evaluation;

Concentration Risk: Concentration risk per BFS-AI-002 §9.7 — multi-provider strategy, alternates identified;

Fine-Tuning vs Prompting: Fine-tuning vs prompt engineering vs RAG approach selection per use case characteristics.

## 5.5  Fine-Tuning Operations

Fine-tuning adapts foundation models to BFS-specific use cases:

Fine-Tuning Data: BFS-specific data preparation including quality, representativeness, privacy considerations;

Fine-Tuning Methodology: Approach selection — full fine-tuning, parameter-efficient (LoRA, adapters), instruction tuning, RLHF where applicable;

Fine-Tuning Compute: Substantial compute requirements per BFS-ISP-030 §7.1;

Fine-Tuned Model Versioning: Fine-tuned models versioned with traceability to base foundation model version, fine-tuning data, fine-tuning code;

Fine-Tuning Evaluation: Fine-tuned models evaluated for task performance, retention of base capabilities, and any introduced regressions.

## 5.6  RAG Architecture (When Applicable)

Retrieval-Augmented Generation pattern grounding LLM outputs in retrieved documents:

Document Corpus: Curation of authoritative document corpus — accuracy, currency, coverage of expected queries;

Retrieval System: Embedding generation, vector database, retrieval algorithm — engineered for relevance and latency;

Generation Pipeline: LLM with retrieved context — prompt engineering grounding generation in retrieved content;

Citation Discipline: Outputs include citations to source documents supporting verification;

Hallucination Mitigation: RAG primary mitigation per BFS-AI-002 §9.6 — though not eliminating hallucination entirely;

Currency Maintenance: Document corpus refreshed maintaining accuracy over time.

## 5.7  Prompt Engineering Discipline

For LLM-based systems, prompt engineering is configuration management discipline:

System Prompts: System prompts establishing constraints, role, behavior — versioned in source control;

Few-Shot Examples: Examples in prompt engineering versioned and tracked;

Prompt Templates: Templates for parameterized prompts versioned and tested;

Prompt Testing: Prompts tested for intended behavior including edge cases and adversarial inputs;

Prompt Change Management: Material prompt changes subject to change control — prompts can materially affect LLM behavior;

Prompt Repository: Prompts stored in source control with appropriate access — typically RESTRICTED classification given system behavior implications.

# 6.  VALIDATE STAGE OPERATIONS

Validate stage confirms model adequacy before production deployment. This is critical control gate — inadequate validation produces operational issues.

## 6.1  Performance Validation

PS-1.1  Models shall be validated against use-case-appropriate metrics — accuracy, precision, recall, F1, AUC for classification; MAE, RMSE, MAPE for regression; perplexity, BLEU, ROUGE for generation; ranking metrics for recommendations.

PS-1.2  Validation shall use holdout data not seen during training — reflecting expected production distribution.

PS-1.3  Validation shall include slice analysis — performance across data segments confirming consistent performance not just aggregate.

PS-1.4  Validation results shall be documented in model card per Section 11.

## 6.2  Fairness Validation

Per BFS-AI-002 §9.1:

PS-2.1  Models shall undergo fairness validation across protected groups — disparate impact analysis, statistical fairness metrics.

PS-2.2  Fairness metrics calibrated to use case — demographic parity, equal opportunity, equalized odds, predictive parity. Multiple metrics typically used given trade-offs.

PS-2.3  Identified bias addressed through training data improvements, model architecture choices, post-processing, or use case modification — not deferred to monitoring.

PS-2.4  Bias acceptance (where complete elimination infeasible) requires AI Ethics Officer review and documented rationale.

## 6.3  Robustness Validation

Edge Case Performance: Performance on edge cases representative of real-world distributions;

Distribution Shift: Performance on data shifted from training distribution — reflecting expected operating variability;

Input Perturbation: Sensitivity to small input variations — robust models stable to minor variations;

Adversarial Robustness: For security-relevant systems, performance under adversarial examples;

Failure Mode Analysis: How models fail and whether failure is detected/handled appropriately.

## 6.4  Security Validation

Per BFS-AI-002 §9.4 and BFS-ISP-018 extended for AI:

PS-4.1  HIGH RISK AI shall undergo adversarial testing including: input perturbation, prompt injection (LLM), model extraction resistance, training data poisoning resistance assessment.

PS-4.2  LLM-based systems shall undergo prompt injection testing — including direct injection, indirect injection through retrieved content (RAG), and jailbreak attempts.

PS-4.3  Models exposed via API shall be tested for query-based attacks — extraction attempts, fingerprinting, denial-of-service through expensive queries.

PS-4.4  Security findings shall be addressed before deployment — material findings block deployment until addressed.

## 6.5  Compliance Validation

RA 10173 §16(c) Validation: Automated decision-making considerations — confirming meaningful human involvement where required;

RA 10173 Personal Data: Personal data processing in model behavior — model not exposing training data, not generating personal data inappropriately;

Regulatory-Specific: Use-case-specific regulatory considerations — credit decisioning regulatory considerations, AML regulatory considerations, etc.;

BSP Considerations: Model risk per BSP supervisory expectations including documented model validation.

## 6.6  Independent Model Validation

Per BSP supervisory expectations on model risk management, HIGH RISK models undergo independent validation:

PS-6.1  HIGH RISK models shall undergo validation by personnel independent of model development — Model Validator role per Section 3.4.

PS-6.2  Independent validation shall provide critical review of: methodology appropriateness, data quality and representativeness, model performance and limitations, fairness, security, alignment with intended use.

PS-6.3  Independent validation findings shall be addressed before deployment — material findings require resolution.

PS-6.4  Independent validation shall be documented in validation report supporting audit and regulatory examination.

PS-6.5  Independent validation refreshed periodically — typically annually for HIGH RISK models — and at material model changes.

| INDEPENDENT VALIDATION DISCIPLINE:  Independent model validation is BSP supervisory expectation for material AI/ML models, particularly those affecting customer outcomes (credit decisioning, fraud, AML). Independence means validators are not part of model development team — typically organizationally separate, with sufficient AI/ML expertise, and with authority to require remediation. Validation is genuine review, not rubber stamp. Independent validation findings are formal artifacts subject to regulatory examination. The discipline reflects model risk management practice expected of regulated financial institutions. |

| --- |

# 7.  DEPLOY STAGE OPERATIONS

Deploy stage transitions models from development/validation to production. Deployment patterns calibrated to risk and operational considerations.

## 7.1  Deployment Approval

PS-1.1  Deployment shall require explicit approval per BFS-AI-001 §4.3 authority calibration — HIGH RISK requires AI Governance Steering Committee approval; LIMITED RISK appropriate authority; MINIMAL RISK operational management within framework.

PS-1.2  Deployment approval shall confirm: validation completion, AIIA completion (where applicable), independent validation completion (HIGH RISK), security sign-off, AIIA-approved compensating measures implemented, monitoring infrastructure operational.

PS-1.3  Deployment shall not proceed without required approvals — material deployments without approval prohibited.

## 7.2  Deployment Patterns

Deployment pattern selection per use case characteristics:

| Pattern | Description | BFS Application |

| --- | --- | --- |

| Big Bang | Direct cutover to new model | Acceptable for LOW RISK; rare for HIGH RISK given limited blast radius control |

| Shadow Mode | New model serves predictions but predictions not used for decisions | Pre-launch evaluation in production conditions; particularly useful for HIGH RISK models |

| Canary | New model serves small percentage of traffic | Initial production exposure with limited blast radius; appropriate for HIGH RISK |

| Blue-Green | Two production environments with rapid switching | Supports rapid rollback; appropriate for HIGH RISK with critical operations |

| Champion-Challenger | Champion serves production; challenger evaluated in parallel | Continuous improvement pattern per Section 8.3 |

| A/B Testing | Multiple model versions serving different user segments | Empirical comparison of model versions |

| Gradual Rollout | Progressive percentage increase from canary to full deployment | Standard pattern for HIGH RISK production deployments |

## 7.3  Deployment Operations

PS-3.1  Deployment shall use CI/CD pipeline per BFS-ISP-016 §6.3 extended for AI — automated deployment with appropriate gates.

PS-3.2  Production deployment per BFS-ISP-029 environment separation — model deployed to production environment with appropriate access controls.

PS-3.3  Model registry updated reflecting deployed model — model version, deployment date, environment, configuration.

PS-3.4  Monitoring infrastructure operational at deployment per BFS-AI-001 §5.5 PS-5.3 — performance, drift, fairness, security monitoring active.

PS-3.5  Human oversight pattern (HITL or HOTL per BFS-AI-001 §7.4) implemented at deployment — humans in position to review, intervene, override per design.

PS-3.6  Rollback capability documented and tested — rapid model retirement if material issues emerge in production.

## 7.4  Foundation Model API Deployment

For systems using foundation model APIs:

API Configuration: API endpoint, authentication, rate limits, model version specification;

Vendor Model Version Management: Vendor model versioning monitored — vendor updates may change behavior; BFS systems may need to pin versions or test new versions;

API Cost Monitoring: Inference cost monitored per BFS-ISP-030 §7.3 FinOps;

API Availability: Vendor API availability dependency — fallback or degraded mode for vendor outages;

Vendor Incident Coordination: Vendor incidents affecting BFS coordinated through vendor management.

## 7.5  Disclosure

Customer-facing AI deployment includes disclosure per BFS-AI-001 §7.3 — customers informed of AI use where required;

Regulatory disclosure where applicable;

Internal disclosure to affected business units and stakeholders.

# 8.  OPERATE STAGE OPERATIONS

Operate stage is the longest lifecycle stage — models in production serving inference. Operational discipline maintains model adequacy.

## 8.1  Production Operations

Inference Operations: Production inference per architecture — real-time, batch, or hybrid;

Inference Performance: Latency, throughput per service-level objectives;

Inference Capacity: Per BFS-ISP-030 §7.1 — capacity supporting production demand with appropriate headroom;

Inference Monitoring: Per Section 9 — continuous monitoring of inference operations;

Inference Logging: Per BFS-AI-001 §8.4 — decision logging supporting audit and reconstruction;

Inference Cost: Per BFS-ISP-030 §7 — inference cost tracked particularly for foundation model API use.

## 8.2  Human Oversight Operations

Human oversight pattern execution per AI design:

HITL Operations: Personnel reviewing AI outputs before they take effect — capacity, training, and process discipline;

HOTL Operations: Personnel monitoring AI behavior with intervention authority;

Oversight Documentation: Oversight activities documented supporting accountability and audit;

Override Tracking: Override frequency and patterns analyzed — high override rates may indicate model issues;

Oversight Capacity: Sufficient personnel and time for meaningful oversight — not theoretical oversight overwhelmed by volume.

## 8.3  Champion-Challenger Operations

Champion-challenger pattern supports continuous model improvement:

Champion Identification: Currently deployed production model serving live traffic;

Challenger Development: Candidate models developed addressing identified opportunities — better performance, better fairness, addressing drift;

Challenger Evaluation: Challenger runs alongside champion — typically in shadow mode initially, then with progressive evaluation;

Promotion Criteria: Documented criteria for challenger promotion — performance threshold, fairness verification, validation completion;

Champion Replacement: Approved challenger replaces champion through deployment process per Section 7;

Continuous Cadence: Champion-challenger as continuous discipline, not one-time activity — supporting model improvement over time.

## 8.4  User Feedback

User Feedback Channels: Feedback channels appropriate to use case — customer feedback, internal user feedback, support cases;

Feedback Analysis: Systematic analysis of feedback — themes, patterns, severity;

Feedback as Signal: Feedback informs model improvement priorities — feedback themes may indicate model gaps;

Customer Feedback Specifically: Customer feedback on AI specifically tracked supporting customer-facing AI improvement;

Bias-Specific Feedback: Feedback indicating potential bias prioritized — direct user reports of biased treatment warrant rapid investigation.

## 8.5  Operational Issue Response

Operational issues per BFS-ISP-017 incident response framework with AI-specific considerations;

Material model issues may require model retirement or rollback;

Issue investigation may include model debugging — input examples reproducing issue, model behavior analysis;

Issue resolution documented including any model changes or operational changes;

Lessons learned per BFS-ISMS-010.

# 9.  MONITOR STAGE OPERATIONS

Monitor stage runs concurrent with Operate — continuous oversight of model behavior identifying issues for response.

## 9.1  Performance Monitoring

Performance Metrics: Use-case-appropriate metrics monitored continuously — accuracy proxies where ground truth delayed, latency, error rates;

Performance Thresholds: Thresholds calibrated to acceptable performance — sustained breach triggers investigation;

Performance Trending: Performance over time analyzed — gradual degradation warning of drift;

Performance Reporting: Performance status visible in model registry and operational dashboards.

## 9.2  Drift Monitoring

Per BFS-AI-002 §9.3:

Input Drift Detection: Statistical methods detecting input distribution shift — Population Stability Index, KL divergence;

Concept Drift Detection: Methods detecting label distribution shift where ground truth available;

Prediction Drift Detection: Output distribution monitoring detecting behavior shift;

Drift Thresholds: Material drift triggers alerting and investigation;

Retraining Triggers: Drift may trigger retraining per continuous training framework.

## 9.3  Fairness Monitoring

Per BFS-AI-002 §9.1:

Fairness Metrics: Continuous monitoring of fairness metrics established during validation;

Fairness Drift: Fairness can degrade over time — continuous monitoring catches emerging bias;

Disparate Impact Analysis: Periodic analysis of impact across protected groups;

Fairness Alerts: Fairness threshold breach triggers investigation.

## 9.4  Security Monitoring

Per BFS-AI-002 §9.4:

Anomalous Query Patterns: Queries indicating model extraction attempts, fingerprinting;

Adversarial Input Detection: Inputs matching known adversarial patterns;

Prompt Injection Detection: For LLMs, detection of prompt injection attempts;

Cost Anomalies: Unusual inference cost may indicate attack or operational issue.

## 9.5  Continuous Training (CT)

For models with continuous training:

Triggering Events: Drift detection, performance degradation, scheduled cadence, data refresh;

Automated Pipeline: CT pipeline retraining model on updated data;

Validation Gate: CT outputs subject to validation per Section 6 before deployment;

Champion-Challenger: CT outputs challenger candidates per Section 8.3;

CT Governance: CT operates within governance framework — automation does not bypass governance.

# 10.  RETIRE STAGE OPERATIONS

Retire stage ends model production lifecycle. Disciplined retirement addresses operational, regulatory, and audit considerations.

## 10.1  Retirement Triggers

Replacement Available: Successor model deployed superseding current model;

End of Use Case: Business need for AI capability ended;

Performance Trajectory: Model performance unrecoverable through retraining;

Compliance Issues: Regulatory or compliance issues requiring retirement;

Vendor Discontinuation: Third-party model discontinued by vendor;

Foundation Model Deprecation: Foundation model provider deprecates underlying model;

Strategic Direction: Strategic decision to discontinue AI capability.

## 10.2  Retirement Decision

PS-2.1  Retirement decision shall consider: continued business need, performance trajectory, replacement availability, regulatory considerations, customer impact, lessons learned.

PS-2.2  HIGH RISK model retirement requires AI Governance Steering Committee notification — given operational impact.

PS-2.3  Retirement timing coordinated with replacement deployment if applicable — preventing service gap.

PS-2.4  Customer notification per applicable obligations if customer-facing AI.

## 10.3  Retirement Operations

Production Removal: Model removed from production inference per documented procedure;

Traffic Routing: Traffic routed to successor model or alternative process;

Model Registry Update: Retirement reflected in model registry — status updated, retirement date recorded;

Artifacts and Data Disposition: Per BFS-ISP-028 — retention per applicable requirements; disposal per data classification;

Vendor Closeout: For third-party models, vendor relationship closed out per BFS-ISP-015;

Documentation Retention: Model documentation retained per BFS-ISMS-006 — supporting potential future regulatory examination or audit;

Lessons Learned: Per BFS-ISMS-010 — retirement provides reflection opportunity on lifecycle outcomes.

# 11.  MODEL REGISTRY AND DOCUMENTATION

## 11.1  Model Registry

Model registry is single source of truth for BFS AI models:

Registry Content: Each model entry includes: model identifier, version, lifecycle stage, owner, model card link, AIBOM link, training metadata, deployment status, monitoring status;

Registry Operations: Registry updated through MLOps pipeline events — new model versions, deployment changes, retirement;

Registry Access: Appropriate access for AI engineering teams, AI risk stakeholders, model validators, audit;

Registry Audit: Registry changes audit-logged supporting traceability;

Integration with AI Inventory per BFS-AI-001 §3.3 — registry feeds inventory.

## 11.2  Model Cards

Per BFS-AI-001 §5.3 PS-3.5, model cards document AI models:

Model Identification: Model name, version, type, intended purpose;

Intended Use: Specific use cases for which model is appropriate, including in-scope and out-of-scope contexts;

Training Data Summary: Data sources, size, characteristics, time period, known limitations;

Performance: Performance metrics with documentation of evaluation methodology and dataset;

Fairness Evaluation: Performance across demographic groups, fairness metrics, identified biases;

Robustness: Robustness characteristics including known failure modes;

Limitations: Documented limitations and inappropriate uses;

Ethical Considerations: Ethical considerations relevant to model use;

Maintenance: Update history, current owner, monitoring status;

Format: Model cards typically markdown or structured format supporting both human reading and programmatic processing.

## 11.3  AI Bill of Materials (AIBOM)

AIBOM analog of SBOM for AI systems:

Base Models: Foundation models or pre-trained models used;

Training Data: Training datasets including provenance, licensing, version;

Dependencies: Software dependencies — frameworks, libraries, services;

Evaluation Datasets: Datasets used for validation and benchmarking;

Configuration: Hyperparameters, training configuration, deployment configuration;

Lineage: Traceability from inputs to deployed model;

AIBOM coordinates with SBOM per BFS-ISP-016 — AI systems have both software and AI components.

## 11.4  Model Lineage

Lineage Tracking: From training data through training pipeline to model artifact to deployment configuration;

Reproducibility: Sufficient lineage enabling reproduction of training results given retained data and procedure;

Audit Support: Lineage supports regulatory examination — auditor can trace any decision back through model to training inputs;

Incident Investigation: Lineage supports incident investigation — issues traced to specific model version, training run, training data.

## 11.5  Documentation Retention

Per BFS-ISMS-006 retention framework with AI-specific considerations;

Model documentation retained beyond model retirement — typically 7 years for HIGH RISK models supporting regulatory examination cycles;

Personal data in documentation per RA 10173 — minimization where possible.

# 12.  ROLES AND RESPONSIBILITIES

| Role | AI Lifecycle Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Oversight of AI lifecycle through KPI reporting and material event reporting. |

| Head of Enterprise Architecture and AI | Document co-owner. Operationally accountable for AI lifecycle framework, MLOps platform, model registry, AI architecture decisions. |

| Chief Information Officer | Document co-owner. AI infrastructure operations including MLOps platform availability and capacity per BFS-ISP-030 §7.1. |

| Chief Information Security Officer | Document co-owner. AI security throughout lifecycle. Security validation per Section 6.4. AI security monitoring. |

| AI Risk Officer | Document co-owner. AI risk integration with lifecycle per BFS-AI-002. Independent risk perspective on lifecycle activities. |

| Head of Software Engineering | Co-approver. Engineering discipline for AI development. SSDLC extended for AI per BFS-ISP-016. |

| Head of IT Operations | Co-approver. AI production operations including monitoring infrastructure operation. |

| Model Owners | Specific accountability for specific models — lifecycle governance compliance, documentation, performance, monitoring response. |

| ML Engineers | Develop and operate models. Primary lifecycle execution role. Adopt MLOps practices. |

| Data Engineers | Develop and maintain data pipelines feeding models. Data quality and lineage maintenance. |

| MLOps Engineers | Maintain MLOps platform and infrastructure supporting AI lifecycle. |

| Model Validators | Independent validation of models per Section 6.6 — particularly for HIGH RISK models per BSP supervisory expectations. |

| Production Operations | Operate models in production environment. Monitor production behavior. Respond to operational issues. |

| Business Sponsors | Business accountability for AI use cases. Champion lifecycle discipline. Resource provision. |

| Internal Audit | Independent verification of AI lifecycle effectiveness per BFS-ISMS-008. |

# 13.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

AI lifecycle effectiveness measured through KPIs reviewed quarterly by AI Governance Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Models in registry with current model card | ≥ 95% | Quarterly |

| Models with documented AIBOM | ≥ 90% | Quarterly |

| Production models with operational monitoring infrastructure | 100% | Quarterly |

| HIGH RISK models with completed independent validation | 100% | Per model |

| HIGH RISK models with annual independent validation refresh | 100% | Annual |

| Models deployed with appropriate deployment pattern per risk tier | ≥ 95% | Quarterly |

| Validation failures addressed before production | 100% | Per validation |

| Model performance threshold breaches investigated | 100% | Per occurrence |

| Model drift alerts investigated within target time | ≥ 90% | Quarterly |

| Fairness alerts investigated within target time | ≥ 95% | Quarterly |

| Champion-challenger operations active | Track per HIGH RISK production AI | Quarterly |

| Model retirement completed per documented process | 100% | Per retirement |

| MLOps maturity progression — Level 1 minimum for production | 100% production AI | Annual |

| MLOps maturity progression — Level 2 target for HIGH RISK | Track and progress | Annual |

| Model lineage documented supporting reproducibility | 100% of HIGH RISK | Quarterly |

| AI lifecycle gates enforced | 100% for HIGH RISK | Per deployment |

| Model artifacts disposed per BFS-ISP-028 at retirement | 100% | Per retirement |

| BSP examination findings on model risk management | Zero material findings | Per examination |

| Internal Audit findings on AI lifecycle | Track and remediate per BFS-ISMS-010 | Per audit |

# 14.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS AI Model Lifecycle Management Policy as third document of BFS-AI series. Subordinate to BFS-AI-001 AI Governance Policy. Operationalizes BFS-AI-001 §5 seven-stage AI Lifecycle (Plan/Develop/Validate/Deploy/Operate/Monitor/Retire) with operational depth. Quad-functional ownership (Head of EA & AI / CIO / CISO / AI Risk Officer). Aligned with ISO/IEC 5338:2023 AI System Life Cycle Processes. MLOps maturity progression framework (Level 0/1/2). Plan stage with use case definition, model approach selection, lifecycle plan, AIIA initiation. Develop stage including foundation model selection, fine-tuning operations, RAG architecture, and prompt engineering discipline (8 PS statements covering data preparation, model development, fine-tuning). Validate stage with performance, fairness, robustness, security, compliance, and independent model validation per BSP supervisory expectations (8 PS statements). Deploy stage with 7 deployment patterns (Big Bang, Shadow Mode, Canary, Blue-Green, Champion-Challenger, A/B, Gradual Rollout). Operate stage with production operations, human oversight, champion-challenger pattern, user feedback. Monitor stage with performance, drift, fairness, security monitoring and continuous training. Retire stage with operational discipline. Model registry, model cards, AIBOM, and model lineage documentation framework. BSP model risk management expectations addressed through independent validation discipline. | IT Head / Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 5338:2023 and ISO/IEC 42001 Annex A.6 Mapping

Mapping of ISO/IEC 5338:2023 AI System Life Cycle Processes and ISO/IEC 42001:2023 Annex A.6 (AI system life cycle) to specific provisions of this policy.

| Framework Element | Coverage | Sections in This Policy |

| --- | --- | --- |

| ISO 5338 Process Areas | Comprehensive AI system lifecycle processes | Sections 4-10 (seven-stage lifecycle operational implementation) |

| ISO 42001 A.6.1.1 Objectives Lifecycle | Objectives for AI system lifecycle | Section 1 (Purpose); Section 3.2 (Lifecycle Principles) |

| ISO 42001 A.6.2.1 Planning | Planning AI system development | Section 4 (Plan Stage Operations) |

| ISO 42001 A.6.2.2 Requirements | AI system requirements | Section 4.1 PS-1.1 use case definition; Section 6 validation against requirements |

| ISO 42001 A.6.2.3 Design | AI system design | Section 4.2 (Model Approach Selection); Section 5 (Develop Stage) |

| ISO 42001 A.6.2.4 Verification & Validation | Verification and validation of AI | Section 6 (Validate Stage Operations — performance, fairness, robustness, security, compliance, independent validation) |

| ISO 42001 A.6.2.5 Deployment | Deployment of AI systems | Section 7 (Deploy Stage Operations including deployment patterns and approval) |

| ISO 42001 A.6.2.6 Operation & Monitoring | Operation and monitoring | Section 8 (Operate Stage Operations); Section 9 (Monitor Stage Operations) |

| ISO 42001 A.6.2.7 Technical Documentation | Technical documentation of AI | Section 11 (Model Registry, Model Cards, AIBOM, Lineage) |

| ISO 42001 A.6.2.8 Recording | Event logging and recording | Coordinated with BFS-ISP-008 audit logging extended for AI; Section 11.4 lineage |

# APPENDIX B:  AI Lifecycle Quick Reference

Single-page reference for ML engineers, model owners, and AI lifecycle stakeholders.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What's the BFS seven-stage AI lifecycle? | Plan → Develop → Validate → Deploy → Operate → Monitor → Retire. Operate and Monitor run concurrent. Established in BFS-AI-001 §5; operationalized in this policy. See §3.1. |

| What's MLOps maturity? | Level 0 Manual (experimental only), Level 1 ML Pipeline Automation (minimum for LIMITED RISK production), Level 2 CI/CD/CT Pipeline (target for HIGH RISK; aspiration across portfolio). See §3.3. |

| What's required for HIGH RISK model deployment? | Comprehensive lifecycle governance: AIIA, comprehensive validation, independent model validation per BSP expectations, AI Governance Steering Committee approval, monitoring infrastructure, human oversight pattern (HITL/HOTL), rollback capability. See BFS-AI-001 §4.3 and Sections 6, 7. |

| What's independent model validation? | Validation by personnel independent of model development — providing critical review of methodology, data, performance, fairness, security, alignment with intended use. BSP expectation for HIGH RISK models. Refreshed annually. See §6.6 and note box. |

| What deployment patterns are available? | Big Bang, Shadow Mode, Canary, Blue-Green, Champion-Challenger, A/B Testing, Gradual Rollout. Pattern selection per risk tier and operational considerations. HIGH RISK typically Shadow → Canary → Gradual Rollout. See §7.2. |

| What about foundation models and LLMs? | Specific lifecycle considerations: foundation model selection (provider security, data handling, licensing, alignment), fine-tuning operations, RAG architecture for hallucination mitigation, prompt engineering discipline including version control. See §5.4-§5.7. |

| What's RAG? | Retrieval-Augmented Generation — combining LLM with retrieval system; LLM responses grounded in retrieved documents reducing hallucination. Components: document corpus, retrieval system, generation pipeline, citation discipline, currency maintenance. See §5.6. |

| What's champion-challenger? | Operational pattern: champion is currently deployed model; challenger is candidate model running in parallel for evaluation. Approved challengers replace champions through deployment process. Continuous discipline supporting model improvement. See §8.3. |

| What goes in a model card? | Model identification, intended use (in-scope and out-of-scope), training data summary, performance metrics, fairness evaluation, robustness, limitations, ethical considerations, maintenance. Per BFS-AI-001 §5.3 PS-3.5. See §11.2. |

| What's an AIBOM? | AI Bill of Materials — analog of SBOM. Documents base models, training data, dependencies, evaluation datasets, configuration, lineage. Coordinates with BFS-ISP-016 SBOM. See §11.3. |

| What about retirement? | Triggers include replacement available, end of use case, performance trajectory, compliance issues, vendor discontinuation, foundation model deprecation. Operations: production removal, traffic routing, registry update, artifacts disposition per BFS-ISP-028, documentation retention. See §10. |

| What about prompt engineering for LLMs? | Configuration management discipline. System prompts versioned in source control. Few-shot examples, templates versioned. Prompts tested. Material prompt changes subject to change control. Prompts typically RESTRICTED classification. See §5.7. |

BFS-AI-003  |  AI Model Lifecycle Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. ISO/IEC 5338:2023 and ISO/IEC 42001:2023 Annex A.6 Aligned. Subordinate to BFS-AI-001.
