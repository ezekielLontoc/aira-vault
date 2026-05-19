---
title: "BFS-AI-001-AI-Governance-Policy"
source_file: "04-PPG-AI-Governance/AI-Policy/BFS-AI-001-AI-Governance-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:42Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "04-PPG-AI-Governance"
  - "AI-Policy"
aliases:
  - "BFS-AI-001-AI-Governance-Policy"
creator: "Un-named"
created: "2026-05-01T14:12:00Z"
modified: "2026-05-02T13:53:00Z"
---

| BFS AI GOVERNANCE FRAMEWORK<br>AI GOVERNANCE<br>POLICY<br>Foundational Governance for BFS Artificial Intelligence and Machine Learning Systems — Risk Management, Lifecycle Governance, Safety, Fairness, Transparency, Auditability, and Regulatory Compliance<br>Policy Reference: BFS-AI-001<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Semi-Annual + Material AI Developments<br>Aligned with ISO/IEC 42001:2023 AI Management System<br>NIST AI Risk Management Framework, EU AI Act Considerations, NPC AI Guidance, BSP AI Supervisory Expectations<br>Foundational Document of the BFS AI Governance Series |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | AI Governance Policy |

| --- | --- |

| Policy Reference | BFS-AI-001 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Manager |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2026 |

| Review Date | October 2026 (Semi-Annual Cycle) |

| Review Cycle | Semi-annual baseline review reflecting rapid AI evolution; mandatory review after: material AI regulatory developments (NPC, BSP, international), material AI incidents, material new AI system deployments, accumulated lessons from AI operations, or evolution of ISO/IEC 42001 standard |

| Supersedes | Not Applicable (New Document — Foundational AI Governance Document) |

| Document Hierarchy Position | TIER 2 — Establishes BFS AI Governance series. Coordinates with BFS ISMS framework. The foundational AI governance document. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) — coordinates governance frameworks |

| Companion Documents | BFS-ISP-003 (Data Protection — RA 10173 personal data in AI); BFS-ISP-016 (Application Software Security — AI development); BFS-ISP-018 (Penetration Testing — AI security testing); BFS-ISMS-003 (Risk Management — AI risk integration); BFS-ISP-026 (Compliance — AI regulatory framework); BFS-ISP-027 (Project Management — AI projects); BFS-ISP-029 (Test/Dev Environment — AI training/inference environments); BFS-ISP-030 (Capacity Management — AI compute capacity); BFS-AI-002 forthcoming (AI Risk Management); BFS-AI-003 forthcoming (AI Model Lifecycle Management); BFS-AI-004 forthcoming (AI Data Governance) |

| Framework Alignment | ISO/IEC 42001:2023 (AI Management System); ISO/IEC 23894:2023 (AI Risk Management Guidance); ISO/IEC 23053:2022 (Framework for AI Systems Using ML); ISO/IEC TR 24028:2020 (Trustworthiness in AI); NIST AI Risk Management Framework (AI RMF 1.0); EU AI Act (as international benchmark); OECD AI Principles; coordinated with BFS ISO/IEC 27001:2022 ISMS |

| Regulatory Reference | NPC issuances on AI and automated decision-making; RA 10173 §16(c) (data subject right not to be subject to automated decision-making); BSP supervisory expectations on AI/ML risk management; BSP Circular 1140 (IT risk including AI); BSP Circular 1048 (Cybersecurity including AI security); RA 11765 (consumer protection in AI-driven products); SEC corporate governance for AI deployment; international benchmarks: EU AI Act, US AI Executive Order, Singapore Model AI Governance Framework |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Data Protection Officer |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services AI Governance Policy — the foundational document of the BFS AI Governance series. It establishes how BFS governs the design, development, deployment, and operation of artificial intelligence and machine learning systems across its AI-native platform, ensuring AI deployment that is risk-managed, safe, fair, transparent, auditable, and regulatory-compliant.

BFS as an AI-native platform development organization has elevated AI governance expectations. AI is not peripheral capability for BFS — it is foundational architectural component. The BFS core platform embeds AI as first-class element across customer experience, operational decisioning, fraud detection, AML monitoring, credit risk assessment, and operational automation. AI governance is therefore not specialized concern affecting limited use cases; it is enterprise-wide discipline affecting BFS's foundational operating model.

AI introduces governance considerations beyond traditional IT systems. AI systems learn from data — data quality, bias, and provenance materially affect outcomes. AI systems make probabilistic decisions — model confidence, uncertainty quantification, and decision boundaries warrant attention. AI systems can drift — model performance changes over time as inputs and environments evolve. AI systems can be opaque — explainability is non-trivial particularly for deep learning and large language models. AI systems can amplify bias — historical biases in training data become operational biases in AI decisions. AI systems present novel attack surfaces — adversarial examples, model extraction, prompt injection. Each of these characteristics warrants governance attention.

The regulatory landscape for AI is evolving rapidly. Globally, the EU AI Act (in force from 2024 with phased application), the US AI Executive Order, Singapore's Model AI Governance Framework, and other jurisdictional developments establish AI governance expectations. In the Philippines, NPC has issued AI-related advisories particularly around personal data and automated decision-making per RA 10173 §16(c). BSP supervisory framework is increasingly examining AI/ML risk management as part of broader IT risk supervision. ISO/IEC 42001:2023 (AI Management System) published in December 2023 provides the first international management system standard specifically for AI. BFS approach: stay informed, engage proactively, maintain conservative posture for novel uses pending clarity, document AI decisions with rationale.

Beyond regulatory positioning, AI governance is operational and ethical imperative. Customers and regulators expect financial institutions to deploy AI responsibly — making decisions that are explainable, fair across protected groups, accurate, and accountable. AI failures — biased credit decisions, hallucinated AI assistant outputs, manipulated AI systems — have caused material harm at peer institutions and warrant proactive governance preventing similar outcomes at BFS.

This policy is foundational AI governance document; it establishes the framework. Subordinate documents in the BFS-AI series will address specific AI governance dimensions in operational depth — AI Risk Management, AI Model Lifecycle Management, AI Data Governance, AI Incident Response, and others as the framework matures. This document establishes the principles and governance; subordinate documents establish the operations.

The specific objectives of this policy are to:

Establish BFS AI governance framework with principles, governance structure, and lifecycle approach;

Establish AI risk classification calibrating governance intensity to AI risk profile;

Operationalize AI lifecycle governance from planning through retirement;

Address AI safety and alignment — preventing AI causing harm and ensuring AI behavior aligned with intended purposes;

Address AI ethics and fairness — including bias mitigation and protected group considerations;

Address AI transparency and explainability — supporting accountability and customer rights;

Address AI auditability — supporting regulatory examination, internal audit, and incident investigation;

Establish AI incident response framework integrating with broader BFS-ISP-017 incident response;

Address AI regulatory considerations including RA 10173 §16(c), NPC guidance, BSP expectations, and international benchmarks;

Coordinate with existing BFS ISMS framework — AI governance integrated with information security governance;

Establish foundation for future BFS-AI series documents addressing specific AI governance dimensions.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Artificial Intelligence (AI) | Per ISO/IEC 22989:2022 — engineered system that generates outputs (predictions, content, recommendations, decisions) for given set of objectives. Includes traditional rule-based AI, machine learning, deep learning, and generative AI. |

| Machine Learning (ML) | Subset of AI where systems learn patterns from data rather than following explicit rules — including supervised learning, unsupervised learning, reinforcement learning, and self-supervised learning. |

| Deep Learning | ML using neural networks with multiple layers — particularly relevant for unstructured data (images, text, audio) and large-scale pattern recognition. |

| Generative AI (GenAI) | AI generating new content (text, images, code, etc.) — typically based on large foundation models. Includes Large Language Models (LLMs), image generation models, code generation. |

| Large Language Model (LLM) | Foundation model trained on substantial text data capable of language tasks — including conversation, summarization, translation, content generation. Examples: GPT-class, Claude, Gemini, open-source LLMs. |

| Foundation Model | Large model trained on broad data adaptable to many downstream tasks through fine-tuning, prompting, or other techniques. |

| Fine-Tuning | Adapting foundation model to specific task or domain through additional training on task-specific data. |

| Retrieval-Augmented Generation (RAG) | Pattern combining LLM with retrieval system — LLM responses grounded in retrieved documents reducing hallucination and providing source attribution. |

| AI System | System using AI for at least part of its functionality — includes training pipelines, inference systems, AI-augmented applications, and AI-decisioning systems. |

| AI Lifecycle | End-to-end stages of AI system from planning through retirement — Plan, Develop, Validate, Deploy, Operate, Monitor, Retire per BFS framework. |

| AI Risk | Risk specific to or amplified by AI characteristics — including bias risk, accuracy risk, drift risk, security risk, ethical risk, regulatory risk. |

| AI Bias | Systematic errors in AI outputs that disadvantage specific groups — may stem from training data bias, model architecture, deployment context, or feedback loops. |

| Explainability | Capability to provide understandable explanations for AI outputs — distinct from interpretability (understanding internal model mechanism) though related. |

| AI Hallucination | AI output that is plausible-sounding but factually incorrect or fabricated — particularly relevant for generative AI. |

| Adversarial Attack | Attack against AI system exploiting model characteristics — including adversarial examples, model extraction, model poisoning, prompt injection. |

| Prompt Injection | Attack where malicious input manipulates LLM behavior — potentially extracting confidential information or causing unintended actions. |

| Model Drift | Degradation of model performance over time as inputs or environment change from training conditions. |

| Human-in-the-Loop (HITL) | AI system pattern where human reviews AI outputs before they take effect — appropriate for higher-risk AI uses. |

| Human-on-the-Loop (HOTL) | AI system pattern where AI operates autonomously with human oversight — humans monitor and can intervene but don't review every decision. |

| Automated Decision-Making (ADM) | Decisions made solely by AI without meaningful human involvement — subject to specific regulatory requirements per RA 10173 §16(c). |

| AI Impact Assessment (AIIA) | Structured assessment of AI system impacts on individuals, groups, and society — analog of Privacy Impact Assessment for AI dimensions. |

| AI Management System (AIMS) | Per ISO/IEC 42001:2023 — coordinated set of processes for managing AI systems within an organization. |

| Model Card | Documentation of AI model including intended use, performance, limitations, training data, and evaluation results. |

| AI Bill of Materials (AIBOM) | Inventory of AI system components — base models, fine-tuning data, dependencies, evaluation datasets — analog of SBOM for AI. |

## 2.2  Scope

### 2.2.1  In-Scope AI Systems

All BFS-developed AI systems — internal models built by BFS for BFS operational use;

All BFS-deployed third-party AI systems — vendor AI products, foundation models accessed via API, AI features in vendor applications;

All BFS internal use of AI tools — productivity tools (AI assistants, code generation), customer service tools, internal automation;

AI systems across all BFS business areas — customer-facing (chatbots, recommendations, fraud screening), credit risk, AML/KYC, operational, internal productivity;

AI systems in BFS development pipeline — AI/ML platforms, training infrastructure, inference infrastructure, MLOps;

All AI use cases regardless of risk tier — though governance intensity calibrated per Section 4.

### 2.2.2  Out-of-Scope Items

Traditional rule-based systems without ML or AI characteristics — addressed through standard IT governance;

Personal use of public AI tools by personnel for non-BFS purposes — addressed through general acceptable use per BFS-ISP-020;

Regulatory expectations outside Philippine jurisdiction except where BFS operates — international benchmarks referenced for guidance not as binding requirements;

AI research not deployed to BFS operations — research considerations addressed through separate research governance.

## 2.3  ISO/IEC 42001:2023 Coverage

This policy aligns with ISO/IEC 42001:2023 AI Management System standard. Mapping to specific ISO 42001 Annex A controls is provided in Appendix A. Key ISO 42001 dimensions addressed:

Organizational policies for AI (A.2);

Internal AI organization and roles (A.3);

Resources for AI systems (A.4);

Assessing AI system impacts (A.5);

AI system lifecycle (A.6);

Data for AI systems (A.7);

Information for interested parties (A.8);

Use of AI systems (A.9);

Third-party and customer relationships (A.10).

# 3.  AI GOVERNANCE FRAMEWORK

## 3.1  AI Governance Principles

BFS AI governance operates per the following foundational principles, drawing from international AI principles (OECD, NIST AI RMF, ISO 42001) calibrated to BFS context:

| Principle | Operational Meaning at BFS |

| --- | --- |

| 1. Purpose-Driven | AI deployed for clear legitimate purposes serving BFS stakeholders — customers, employees, regulators, society. AI is not deployed because it is novel or possible; it is deployed because it serves purpose. |

| 2. Human-Centered | AI augments human capability and judgment rather than replacing meaningful human roles in consequential decisions. Higher-stakes decisions retain meaningful human involvement. |

| 3. Risk-Calibrated | AI governance intensity calibrated to AI risk per Section 4. High-risk AI receives comprehensive governance; lower-risk AI receives proportionate attention. |

| 4. Safe and Reliable | AI systems perform reliably within their intended operating envelope and fail safely when encountering inputs outside that envelope. Robustness is engineered. |

| 5. Fair and Inclusive | AI systems do not unfairly disadvantage individuals or groups — particularly protected groups. Bias testing and mitigation are operational discipline. |

| 6. Transparent and Explainable | AI use is disclosed where appropriate. AI outputs explainable to extent practicable. Customers affected by automated decisions have right to explanation. |

| 7. Accountable | Clear accountability for AI systems — owners, operators, decision-makers identified and responsible. AI does not absolve human accountability. |

| 8. Privacy-Respecting | AI systems respect personal data per RA 10173 throughout lifecycle — training data privacy, inference-time privacy, output privacy. |

| 9. Secure | AI systems engineered for security including against AI-specific attacks. AI does not introduce security weaknesses; AI is itself protected. |

| 10. Compliant | AI systems comply with applicable regulatory frameworks — RA 10173, BSP expectations, sector-specific requirements, evolving AI regulation. |

| 11. Continuously Monitored | AI systems monitored throughout lifecycle for performance, drift, fairness, and integrity. Issues detected promptly and addressed. |

| 12. Continuously Improved | AI governance evolves with AI technology, regulatory landscape, and accumulated lessons. Standing is provisional; improvement is constant. |

## 3.2  AI Governance Structure

Board Audit & Risk Committee: Approves AI governance policy and material AI strategy. Receives quarterly AI governance reporting. Reviews material AI events. Provides governance oversight reflecting AI's strategic importance to BFS;

AI Governance Steering Committee: Senior governance body specifically for AI matters. Composition: CIO (chair or co-chair), Head of Enterprise Architecture and AI, CISO, DPO, CRO, CCO, business unit AI leadership. Responsibilities: AI policy approval, AI use case approval for higher-risk uses, AI governance oversight, AI incident review;

AI Ethics Committee: Specialized body addressing AI ethics dimensions including fairness, bias, transparency, societal impact. Multidisciplinary including external perspectives where appropriate. Reports to AI Governance Steering Committee;

Head of Enterprise Architecture and AI: Operationally accountable for AI strategy and AI architecture across BFS. Coordinates AI capability development. AI Governance Steering Committee co-chair;

AI Risk Officer: Operational accountability for AI risk management across BFS. Coordinates with broader risk management per BFS-ISMS-003;

AI Ethics Officer: Operational accountability for AI ethics, fairness, and bias. Coordinates with HR, Legal, and Compliance on protected group considerations;

Model Owners: Specific personnel accountable for specific AI models — model performance, model lifecycle, model governance compliance. Each material model has identified owner;

AI Engineering Teams: Personnel developing and operating AI systems. Subject to AI governance through this policy and subordinate operational documents;

CISO Office: AI security including AI-specific threats and AI integration with broader security framework;

DPO: Personal data in AI per RA 10173. NPC liaison for AI matters affecting personal data;

Internal Audit: Independent verification of AI governance effectiveness.

## 3.3  AI Inventory

BFS maintains AI Inventory documenting all in-scope AI systems — analog of asset inventory for AI;

AI Inventory entry: AI system name, purpose, owner, risk classification per Section 4, lifecycle stage, key dependencies (foundation models, training data, inference infrastructure), governance status;

AI Inventory maintained by Enterprise Architecture and AI team;

Inventory updated for new AI systems, material AI changes, AI retirement;

Inventory supports AI governance operations — risk assessment, lifecycle management, incident response, audit support.

# 4.  AI RISK CLASSIFICATION

AI governance intensity is calibrated to AI risk profile. This section establishes the BFS AI risk classification framework — determining what governance applies to each AI system.

## 4.1  AI Risk Classification Framework

BFS uses 4-tier AI risk classification informed by EU AI Act framework, NIST AI RMF, and BFS-specific considerations:

| Risk Tier | Definition | BFS Examples |

| --- | --- | --- |

| UNACCEPTABLE | AI uses prohibited at BFS — fundamental incompatibility with BFS values, regulatory framework, or risk appetite | Social scoring; manipulative AI exploiting vulnerabilities; unlawful surveillance; AI uses prohibited by current or anticipated regulation |

| HIGH RISK | AI systems with material impact on individuals, regulatory implications, or BFS operations — comprehensive governance applies | Credit decisioning; AML alert generation; fraud decisioning; KYC automated determinations; customer-facing AI making consequential decisions; AI in supervisory reporting; AI affecting employment decisions |

| LIMITED RISK | AI systems with material but bounded impact — substantial governance applies | Customer-facing chatbots; recommendation systems; AI-augmented analysis tools; AI in operational automation; productivity AI tools used at scale |

| MINIMAL RISK | AI systems with limited impact — proportionate governance applies | Internal productivity tools; spell-check and similar; AI in non-critical automation; experimental AI in sandbox |

## 4.2  Classification Process

PS-2.1  Each in-scope AI system shall be classified per Section 4.1 framework — classification documented in AI Inventory.

PS-2.2  Classification considers: who is affected by AI outputs (individuals, groups, BFS operations), nature of impact (financial, employment, access to services, legal), reversibility of impact, regulatory implications, novelty of AI use case.

PS-2.3  Classification reviewed by AI Risk Officer with AI Governance Steering Committee approval for HIGH RISK classifications.

PS-2.4  Classification reviewed periodically — minimum annually and upon material changes to AI system or its operating context.

PS-2.5  UNACCEPTABLE classification triggers immediate cessation of relevant AI development or use.

PS-2.6  HIGH RISK classification triggers comprehensive governance per subsequent sections of this policy.

## 4.3  Governance Intensity Per Tier

| Risk Tier | Required Governance Intensity | Approval Authority |

| --- | --- | --- |

| UNACCEPTABLE | Prohibited | Cessation; no approval available |

| HIGH RISK | Comprehensive — full AI lifecycle governance per Section 5; mandatory AIIA; enhanced testing, monitoring, human oversight; HITL/HOTL pattern selection | AI Governance Steering Committee with Board notification for material deployments |

| LIMITED RISK | Substantive — substantial AI lifecycle governance; AIIA where personal data or material impact; testing and monitoring; appropriate human oversight | AI Governance Steering Committee or designated authority |

| MINIMAL RISK | Proportionate — basic governance per AI inventory tracking, basic testing, baseline monitoring | Operational management within established framework |

| UNACCEPTABLE USE EXAMPLES:  BFS specifically prohibits: AI systems for general-purpose social scoring of individuals; AI systems exploiting customer vulnerabilities (cognitive impairments, financial distress, etc.) for BFS commercial advantage; AI systems performing real-time biometric identification in public spaces; AI systems making consequential decisions about individuals without any meaningful human oversight where regulation requires such oversight; AI systems generating content for misrepresentation or deception of customers, regulators, or counterparties; AI systems prohibited by current or anticipated EU AI Act, RA 10173, or BSP regulation. Personnel discovering or proposing such uses are required to escalate to AI Governance Steering Committee; deployment of such uses is prohibited regardless of business case. |

| --- |

# 5.  AI LIFECYCLE GOVERNANCE

AI systems are governed throughout their lifecycle. This section establishes the BFS AI Lifecycle Framework with stage-specific governance activities.

## 5.1  BFS AI Lifecycle Stages

| Stage | Definition | Key Governance Focus |

| --- | --- | --- |

| Plan | AI use case identified, business case developed, risk classification determined, approach selected | Risk classification; AIIA initiation; lifecycle governance level confirmation; alignment with BFS AI strategy |

| Develop | AI system designed, training data prepared, model trained or selected, fine-tuning performed | Data governance; training discipline; bias testing; model documentation (model cards); reproducibility |

| Validate | AI system tested for performance, robustness, fairness, security, and intended-use compliance | Validation testing per use case; bias testing; adversarial testing; performance benchmarking; sign-off readiness |

| Deploy | AI system deployed to production environment with appropriate monitoring and human oversight | Deployment approval; production environment per BFS-ISP-029; monitoring infrastructure; human oversight per HITL/HOTL design |

| Operate | AI system operates in production serving its intended purpose | Continuous monitoring; performance verification; user feedback handling; operational discipline |

| Monitor | Continuous oversight of AI system operation including drift detection | Drift detection; fairness monitoring; security monitoring; threshold-based alerting; periodic review |

| Retire | AI system retired from production with appropriate handling | Retirement decision; data and artifact disposition per BFS-ISP-028; replacement coordination; lessons learned |

## 5.2  Plan Stage Governance

PS-2.1  AI use cases shall be assessed against BFS AI strategy — confirming alignment with BFS purposes and resources.

PS-2.2  Risk classification per Section 4 shall be performed at planning stage — determining lifecycle governance intensity.

PS-2.3  UNACCEPTABLE classifications stop further development; HIGH RISK and certain LIMITED RISK trigger AIIA per Section 6.

PS-2.4  AI use cases shall consider non-AI alternatives — confirming AI is appropriate solution rather than default approach.

PS-2.5  Resource implications considered including compute capacity per BFS-ISP-030 §7.1, personnel with AI expertise, and ongoing operational cost.

## 5.3  Develop Stage Governance

PS-3.1  Training data shall comply with BFS-ISP-003 data protection — including personal data per RA 10173, classification appropriate use, and licensing per BFS-ISP-026 §7.5.

PS-3.2  Training data shall be assessed for bias — particularly representation across protected groups, historical bias patterns, and label bias.

PS-3.3  Models shall be developed using approved frameworks and infrastructure per BFS-ISP-016 development standards extended for AI.

PS-3.4  Foundation model selection (where applicable) considers: provenance, licensing per BFS-ISP-026, security review of model and provider, alignment with BFS use case.

PS-3.5  Model cards shall be developed documenting: intended use, training data summary, performance metrics, known limitations, evaluation methodology, ethical considerations.

PS-3.6  Reproducibility shall be supported — sufficient documentation enabling reproduction of training results given training data and procedure.

PS-3.7  Development environments per BFS-ISP-029 — separated from production, appropriate access controls, training data protection.

## 5.4  Validate Stage Governance

PS-4.1  AI systems shall be validated for performance against use-case-appropriate metrics — accuracy, precision, recall, F1, AUC, perplexity, BLEU, ROUGE, or other metrics per use case.

PS-4.2  AI systems shall be validated for fairness — disparate impact analysis across protected groups, fairness metrics appropriate to use case (demographic parity, equal opportunity, equalized odds, etc.).

PS-4.3  AI systems shall be validated for robustness — performance on edge cases, adversarial robustness for security-relevant systems, distribution shift handling.

PS-4.4  HIGH RISK AI shall undergo adversarial testing including: input perturbation testing, prompt injection testing for LLMs, model extraction testing, data poisoning resistance assessment.

PS-4.5  AI systems shall be validated for unintended uses — testing scenarios beyond intended use confirming system fails safely or produces appropriate refusals.

PS-4.6  Validation results documented supporting deployment approval and audit traceability.

## 5.5  Deploy Stage Governance

PS-5.1  Deployment shall require explicit approval per Section 4.3 authority — deployment without approval prohibited.

PS-5.2  Production deployment per BFS-ISP-029 environment separation and BFS-ISP-016 deployment discipline.

PS-5.3  Monitoring infrastructure shall be operational at deployment — performance monitoring, drift detection, fairness monitoring, security monitoring.

PS-5.4  Human oversight pattern (HITL or HOTL) implemented per AI design — humans in position to review, intervene, or override as design specifies.

PS-5.5  Customer-facing AI deployment includes appropriate disclosure — users informed they are interacting with AI where required and appropriate.

PS-5.6  Rollback plan documented enabling rapid AI retirement if material issues emerge.

## 5.6  Operate and Monitor Governance

PS-6.1  AI systems shall be continuously monitored per use-case-appropriate framework — performance, drift, fairness, security, integrity.

PS-6.2  Monitoring thresholds shall trigger alerts when AI behavior deviates from expected — alerts addressed per appropriate response procedure.

PS-6.3  Periodic review of AI systems — typically quarterly for HIGH RISK, semi-annually for LIMITED RISK, annually for MINIMAL RISK — assessing continued appropriateness, performance, and governance compliance.

PS-6.4  User feedback collected and analyzed — particularly for customer-facing AI — supporting continuous improvement and issue identification.

PS-6.5  Material AI events trigger investigation per Section 8 incident response framework.

## 5.7  Retire Stage Governance

PS-7.1  AI retirement decision considers: continued purpose, performance trajectory, replacement availability, regulatory considerations, lessons learned.

PS-7.2  Retirement coordinated with operations — replacement deployment if applicable, customer transition, vendor coordination.

PS-7.3  AI artifacts and training data disposition per BFS-ISP-028 — retention per applicable requirements; disposal per data classification.

PS-7.4  Retirement documented in AI Inventory and supporting records.

PS-7.5  Lessons learned captured supporting future AI initiatives.

# 6.  AI IMPACT ASSESSMENT (AIIA)

AI Impact Assessment is structured assessment of AI system impacts on individuals, groups, and society — analog of Privacy Impact Assessment per BFS-ISP-027 §6 but addressing AI-specific dimensions.

## 6.1  AIIA Triggers

AIIA shall be performed for:

All HIGH RISK AI systems per Section 4 classification;

LIMITED RISK AI systems involving personal data or affecting customers materially;

Novel AI use cases without BFS precedent — prudent assessment given uncertainty;

Material changes to existing AI systems affecting risk profile;

Other circumstances where AI Risk Officer or AI Ethics Officer determines AIIA appropriate.

## 6.2  AIIA Content

AIIA documents:

AI system description, purpose, and intended outcomes;

Affected individuals, groups, and stakeholders — who is impacted by AI outputs;

Nature and severity of potential impacts — financial, access, employment, dignity, etc.;

Reversibility of impacts and potential for harm escalation;

Personal data processing aspects — coordinated with PIA per BFS-ISP-027 §6 if applicable;

Bias risks and mitigation approach including testing methodology and acceptance criteria;

Accuracy and reliability requirements appropriate to use case;

Human oversight design — HITL, HOTL, or other pattern with rationale;

Transparency and explainability provisions including data subject rights;

Regulatory compliance considerations — RA 10173 §16(c), BSP expectations, others;

Security risks and mitigation;

Ethical considerations including alignment with BFS values;

Risk treatment plan addressing identified risks;

Monitoring and review approach for ongoing impact assessment;

Decision and rationale — proceed, modify, decline.

## 6.3  AIIA Process

AIIA initiated during Plan stage — early enough to inform design decisions;

AIIA performed by project team with support from AI Risk Officer, DPO (if personal data), AI Ethics Officer (if ethics-prominent);

AIIA review by appropriate authorities — DPO for personal data dimensions, AI Ethics Committee for ethics-prominent dimensions, AI Risk Officer for risk dimensions;

AIIA approval by AI Governance Steering Committee for HIGH RISK AI;

AIIA findings drive AI design — concerns addressed through design changes preferred to risk acceptance;

AIIA updated for material changes during AI lifecycle;

AIIA archived per BFS-ISMS-006 retention supporting audit and regulatory examination.

# 7.  AI SAFETY, FAIRNESS, AND TRANSPARENCY

## 7.1  AI Safety and Alignment

AI safety addresses ensuring AI systems behave as intended within their operating envelope and fail safely when encountering edge cases. Alignment addresses ensuring AI behavior reflects intended objectives without unintended consequences:

Operating Envelope: Each AI system has defined operating envelope — input characteristics it is designed to handle. Inputs outside envelope handled through documented safe behavior (refusal, escalation to human, conservative default);

Failure Modes: AI failure modes analyzed during validation — what happens when AI fails, whether failure is detected, what action is taken;

Confidence Thresholds: AI outputs include confidence indicators where applicable — low-confidence outputs handled appropriately (human review, refusal, alternative path);

Robustness: AI systems robust to reasonable input variation — small input changes do not produce dramatic output changes inappropriately;

Adversarial Resistance: Security-relevant AI systems resistant to adversarial attacks per BFS-ISP-018 testing standards extended for AI;

LLM-Specific Safety: For LLMs and generative AI — system prompts establishing constraints, output filtering for unsafe content, prompt injection resistance, hallucination mitigation through RAG or other techniques.

## 7.2  Bias and Fairness

AI systems can amplify historical biases or introduce new biases. BFS approach is operational discipline — not aspirational principle:

Protected Group Considerations: Per RA 10173 §16(c), Philippine Anti-Discrimination Bill considerations, RA 11058 considerations, and BFS values — AI systems shall not unlawfully discriminate against protected groups;

Bias Testing: AI systems undergo bias testing during validation — disparate impact analysis across protected groups, fairness metrics appropriate to use case, statistical parity assessments;

Bias Mitigation: Identified bias addressed through training data improvements, model architecture choices, post-processing, or use case modification;

Trade-Off Awareness: Different fairness metrics can be in tension — BFS makes explicit choices about applicable fairness criteria with rationale documented;

Continuous Fairness Monitoring: Fairness monitored in production — bias can emerge over time as inputs and contexts change;

Human Review Disparities: Human-review patterns (HITL) themselves can introduce bias — review consistency monitored;

Regulatory Engagement: Where applicable, BFS engages with NPC and BSP on AI fairness expectations particularly for novel use cases.

## 7.3  Transparency and Explainability

AI transparency operates at multiple levels:

Disclosure: BFS discloses AI use to customers and counterparties where appropriate — particularly for AI making consequential decisions about them;

System-Level Transparency: AI systems documented including purpose, capabilities, limitations — supporting accountability;

Decision-Level Explainability: Individual AI decisions explainable to extent practicable — particularly for HIGH RISK AI;

Customer Right to Explanation: Customers affected by automated decisions have right to explanation per RA 10173 §16(c) — operationalized through specific procedures;

Explainability Methods: Various methods per AI type — feature importance for tree models, attention visualization for neural networks, LIME/SHAP for general models, prompt-based explanations for LLMs;

Limits of Explainability: Some AI systems (deep learning, large LLMs) have inherent explainability limits — BFS approach acknowledges limits while providing best-available explanations;

Explainability vs Confidentiality: Explainability balances against IP confidentiality and security through risk operations — full model exposure not required for meaningful explanation.

## 7.4  Human Oversight

Human oversight is foundational to BFS AI deployment per Principle 2 (Human-Centered):

Oversight Pattern Selection: Per AI design and use case — HITL for highest-stakes decisions, HOTL for monitored autonomous operation, periodic review for lower-stakes uses;

Meaningful Oversight: Human oversight is genuine review, not rubber stamp — humans in position with capability, authority, and time to substantively review;

Override Authority: Humans can override AI outputs per their authority — AI does not bind human decision-makers without their concurrence;

Oversight Capability: Personnel performing AI oversight have appropriate training and tools — supporting effective oversight;

Oversight Documentation: Oversight activities documented supporting accountability and audit;

Automated Decision Limits: Per RA 10173 §16(c) — solely automated decisions with material effects on individuals are limited circumstances with specific protections.

# 8.  AI INCIDENT RESPONSE AND AUDITABILITY

## 8.1  AI Incidents

AI incidents are events involving AI systems with adverse impact. Categories:

Performance Incidents: AI performance degradation affecting outputs;

Drift Incidents: Material model drift detected through monitoring;

Fairness Incidents: Disparate impact or bias issues identified;

Safety Incidents: AI behavior outside operating envelope causing harm or risk;

Security Incidents: AI-specific security events — adversarial attacks, model extraction, prompt injection, training data poisoning;

Privacy Incidents: AI-driven personal data issues — including inference of sensitive attributes, model memorization disclosure;

Hallucination Incidents: GenAI producing factually incorrect or fabricated outputs causing harm;

Compliance Incidents: AI behavior or operation violating regulatory requirements.

## 8.2  AI Incident Response Integration

AI incident response integrated with BFS-ISP-017 incident response framework — AI incidents are incidents subject to the broader response framework;

AI-specific response considerations: model rollback, replacement model deployment, retraining requirements, human-only fallback during recovery;

AI-specific notifications: NPC notification for personal data dimensions per RA 10173 §28; BSP notification for material AI incidents affecting customer service or operational integrity; affected customer notification per RA 11765 consumer protection;

AI incident investigation: per BFS-ISMS-010 lessons learned framework with AI-specific considerations including model investigation, data investigation, and architecture review;

AI incident metrics: tracked separately from general incidents supporting AI-specific trend analysis.

## 8.3  AI Auditability

AI auditability supports regulatory examination, internal audit, incident investigation, and customer rights:

Decision Logging: HIGH RISK AI decisions logged including: input, output, model version, timestamp, confidence score where available, human oversight if applicable;

Model Versioning: All deployed model versions tracked — enabling reconstruction of decision context for any historical decision;

Training Provenance: Training data, training procedure, evaluation results retained per applicable retention;

Reproducibility: Sufficient documentation enabling reconstruction of training given retained data and procedure;

Audit Access: Internal Audit access to AI systems and supporting records per BFS-ISMS-008;

Regulatory Examination: BFS prepared to support BSP, NPC, and other regulatory examination of AI systems;

Customer Rights Operationalization: Customer requests for AI decision explanation operationalized through specific procedures with target response times.

## 8.4  AI Audit Logs

AI audit logs follow BFS-ISP-008 framework with AI-specific extensions;

Decision logs include sufficient detail supporting decision reconstruction without unnecessary detail creating disproportionate storage burden;

Personal data in AI logs handled per RA 10173 — minimization, encryption, retention appropriate to purpose;

Model lineage logs supporting traceability — model version → training run → training data → development decisions;

Log retention per BFS-ISMS-006 with AI-specific considerations — typically longer for HIGH RISK AI given regulatory examination cycles.

# 9.  REGULATORY AND THIRD-PARTY CONSIDERATIONS

## 9.1  RA 10173 and NPC Considerations

Personal Data in AI: Personal data processing in AI subject to RA 10173 — lawful basis, purpose limitation, data minimization, security measures;

Right Not to Be Subject to Automated Decision-Making (§16(c)): Customer right against solely automated decisions with material effect — operationalized through ensuring meaningful human involvement in such decisions or specific protections per RA 10173;

Sensitive Personal Data: Sensitive personal data processing per RA 10173 §3(l) requires specific lawful basis — particular care in AI involving health, government IDs, sexual orientation, etc.;

Cross-Border Personal Data in AI: Cross-border data flows for AI training or inference per BFS-ISP-024 §7;

Data Subject Rights: AI-specific operationalization of access, correction, erasure, portability rights;

NPC Engagement: BFS engages with NPC on AI matters — guidance, advisory consultations, breach notification per BFS-ISP-017.

## 9.2  BSP Considerations

IT Risk Management: AI integrated into BFS IT risk management per BSP Circular 1140 — AI risk treated as IT risk dimension;

Cybersecurity: AI security per BSP Circular 1048 — AI as protected asset and AI-specific threats;

Outsourcing: Vendor AI per BSP Circular 808 outsourcing expectations — vendor AI subject to vendor management discipline;

Operational Risk: AI operational risk integrated into broader operational risk framework;

Consumer Protection: AI in consumer-facing products per RA 11765 and BSP consumer protection expectations;

Supervisory Engagement: BFS supports BSP examination of AI matters — documentation, system access, personnel availability.

## 9.3  International Benchmarks

EU AI Act: BFS uses EU AI Act risk classification framework as input to BFS classification per Section 4. BFS not directly subject to EU AI Act but the framework is influential international benchmark;

US AI Executive Order and NIST AI RMF: Reference framework for risk management approach and governance principles;

Singapore Model AI Governance Framework: Reference for governance approach in regional context;

OECD AI Principles: Foundational international principles reflected in BFS principles per Section 3.1;

Standard Evolution: BFS monitors international AI regulatory developments — particularly those likely to influence Philippine framework.

## 9.4  Third-Party AI

Vendor AI Subject to BFS-ISP-015: Vendor AI products subject to BFS service provider management with AI-specific considerations;

Foundation Model Provider Considerations: Use of foundation models (LLMs, etc.) considers: model provider security, model provider data handling including training data, model licensing per BFS-ISP-026, model behavior and limitations;

AI API Considerations: BFS use of AI APIs subject to evaluation including: data handling by API provider, API availability and SLA, costs, lock-in considerations;

Vendor AI Disclosure: Vendor AI disclosed in BFS AI Inventory — transparency about AI components in BFS systems even when AI is third-party;

Vendor AI Governance Coordination: Where appropriate, BFS engages vendors on their AI governance maturity and risk management.

# 10.  ROLES AND RESPONSIBILITIES

| Role | AI Governance Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy and material revisions. Reviews AI strategy. Receives quarterly AI governance reporting. Material AI events and HIGH RISK deployments visibility. AI integrated into broader risk oversight. |

| Chief Executive Officer | AI deployment strategic oversight. Champions responsible AI culture. Engages with regulators on AI matters. |

| Chief Information Officer | Document co-owner. Operationally accountable for AI capability, AI infrastructure, AI engineering organization. AI Governance Steering Committee chair or co-chair. |

| Head of Enterprise Architecture and AI | Document co-owner. Operationally accountable for AI strategy, AI architecture, AI capability development. AI Governance Steering Committee co-chair. |

| Chief Information Security Officer | Document co-owner. AI security including AI-specific threats. AI integration with broader security framework. AI Governance Steering Committee member. |

| Data Protection Officer | Document co-owner. Personal data in AI per RA 10173 including §16(c). PIA/AIIA coordination. NPC liaison for AI matters. |

| Chief Risk Officer | Co-approver. AI risk integrated into enterprise risk management. AI Governance Steering Committee member. |

| Chief Compliance Officer | Co-approver. AI regulatory compliance. AI Governance Steering Committee member. |

| AI Risk Officer | Operationally accountable for AI risk management. AI risk classification oversight. AI Governance Steering Committee operational support. |

| AI Ethics Officer | Operationally accountable for AI ethics, fairness, bias. AI Ethics Committee secretariat. |

| AI Governance Steering Committee | Senior governance body for AI. Approves HIGH RISK AI deployment. Reviews AI portfolio. Addresses material AI issues. |

| AI Ethics Committee | Specialized body addressing AI ethics, fairness, societal impact. Reports to AI Governance Steering Committee. |

| Model Owners | Specific accountability for specific AI models — performance, lifecycle, governance compliance. Each material model has identified owner. |

| AI Engineering Teams | Develop and operate AI systems. Subject to AI governance through this policy and operational documents. Adopt AI-specific development practices. |

| Business Sponsors | Sponsor specific AI use cases. Champion responsible AI in their domains. AIIA participation for sponsored AI. |

| Internal Audit | Independent verification of AI governance per BFS-ISMS-008 — AI Inventory currency, AI lifecycle governance compliance, AIIA discipline, AI incident response. |

# 11.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

AI governance effectiveness measured through KPIs reviewed quarterly by AI Governance Steering Committee and reported to Board Audit & Risk Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| AI Inventory currency for in-scope AI systems | 100% | Quarterly |

| AI risk classification completed per Section 4 | 100% of in-scope AI | Quarterly |

| UNACCEPTABLE AI uses identified and stopped | Track and report | Per occurrence |

| AIIA completed for triggering AI systems | 100% | Per applicable system |

| HIGH RISK AI with AI Governance Steering Committee approval | 100% | Per HIGH RISK deployment |

| AI bias testing completed for HIGH RISK and applicable LIMITED RISK | 100% | Quarterly |

| AI fairness monitoring operational for in-scope AI | 100% of HIGH RISK and applicable LIMITED RISK | Quarterly |

| AI drift detection operational | ≥ 95% of in-scope AI | Quarterly |

| AI security testing per BFS-ISP-018 extended for AI | 100% of HIGH RISK AI | Annual |

| Model cards documented for in-scope AI | ≥ 95% | Quarterly |

| AI incidents identified and addressed | Track and trend | Per incident |

| RA 10173 §16(c) right operationalization — customer requests handled | 100% within target time | Per request |

| AI explainability requests handled | 100% within target time | Per request |

| AI vendor AI governance verification | 100% of vendor AI | Annual |

| AI-related personal data breaches (NPC notification) | Zero target | Per occurrence |

| AI training completion (AI-relevant personnel) | ≥ 95% | Annual |

| AI Governance Steering Committee meetings completed | Per cadence | Quarterly |

| AI Ethics Committee meetings completed | Per cadence | Quarterly |

| BSP examination findings on AI | Zero material findings | Per examination |

| NPC compliance findings on AI | Zero material findings | Per review |

| Internal Audit findings on AI governance | Track and remediate per BFS-ISMS-010 | Per audit |

# 12.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS AI Governance Policy as foundational document of new BFS-AI series. Aligned with ISO/IEC 42001:2023 AI Management System standard. Quad-functional ownership (CIO/Head of EA & AI/CISO/DPO) reflecting cross-functional AI governance. Twelve foundational AI governance principles drawing from OECD, NIST AI RMF, and ISO 42001. Comprehensive AI governance structure including AI Governance Steering Committee, AI Ethics Committee, AI Risk Officer, AI Ethics Officer, Model Owners. AI Inventory framework. 4-tier AI risk classification (UNACCEPTABLE/HIGH RISK/LIMITED RISK/MINIMAL RISK) informed by EU AI Act framework. 7-stage AI lifecycle governance (Plan/Develop/Validate/Deploy/Operate/Monitor/Retire) with 30+ PS statements. AI Impact Assessment (AIIA) framework. AI Safety, Fairness, and Transparency operational discipline. AI Incident Response and Auditability with logging and reproducibility requirements. Regulatory considerations across RA 10173 §16(c), BSP framework, and international benchmarks (EU AI Act, NIST AI RMF, Singapore Framework, OECD Principles). Third-party AI considerations including foundation model providers. Semi-annual review cycle reflecting AI evolution pace. | IT Head / Infrastructure Manager | /IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 42001:2023 Annex A Mapping

Mapping of ISO/IEC 42001:2023 Annex A controls to specific provisions of this policy. ISO 42001 Annex A provides reference controls for AI management systems.

| Control Area | ISO 42001 Coverage | How This Policy Addresses |

| --- | --- | --- |

| A.2 | Policies related to AI — AI policy, alignment with organizational policies, review | Section 1 (Purpose); Section 3 (AI Governance Framework); Section 12 (Revision History) — semi-annual review cycle. This is the foundational AI policy. |

| A.3 | Internal organization — AI roles, responsibilities, reporting | Section 3.2 (AI Governance Structure); Section 10 (Roles and Responsibilities) — comprehensive AI organizational structure. |

| A.4 | Resources for AI systems — resources, competencies, awareness | Section 3.2 (governance roles); Section 5.3 PS-3.7 (development environments); coordination with BFS-ISP-030 §7.1 (compute capacity), BFS-ISP-014 (awareness training). |

| A.5 | Assessing impacts of AI systems | Section 4 (AI Risk Classification); Section 6 (AI Impact Assessment — AIIA framework with triggers, content, and process). |

| A.6 | AI system life cycle | Section 5 (AI Lifecycle Governance — 7 stages with 30+ PS statements covering Plan/Develop/Validate/Deploy/Operate/Monitor/Retire). |

| A.7 | Data for AI systems | Section 5.3 PS-3.1 through PS-3.7 (training data governance); Section 9.1 (RA 10173 personal data in AI); coordination with BFS-ISP-003 (data protection). |

| A.8 | Information for interested parties | Section 7.3 (Transparency and Explainability); Section 7.4 (Human Oversight including disclosure); Section 9.1 (RA 10173 §16(c) data subject rights). |

| A.9 | Use of AI systems | Section 5.5 (Deploy) and Section 5.6 (Operate and Monitor); Section 7.4 (Human Oversight); Section 8 (AI Incident Response). |

| A.10 | Third-party and customer relationships | Section 9.4 (Third-Party AI); coordination with BFS-ISP-015 (Service Provider Management); Section 7.3 customer right to explanation. |

# APPENDIX B:  AI Governance Quick Reference

Single-page reference for AI engineering teams, AI sponsors, and personnel.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What's my AI risk tier? | UNACCEPTABLE: prohibited (social scoring, manipulation, unlawful surveillance). HIGH RISK: material individual/regulatory impact (credit decisioning, AML, fraud, KYC, employment-affecting AI). LIMITED RISK: bounded impact (chatbots, recommendations, augmented analysis). MINIMAL RISK: limited impact (productivity tools, experimental). See §4.1. |

| When do I need an AIIA? | All HIGH RISK AI; LIMITED RISK with personal data or material customer impact; novel use cases; material changes to existing AI; when AI Risk Officer or AI Ethics Officer determines appropriate. See §6.1. |

| What are BFS AI principles? | 12 principles: Purpose-Driven, Human-Centered, Risk-Calibrated, Safe and Reliable, Fair and Inclusive, Transparent and Explainable, Accountable, Privacy-Respecting, Secure, Compliant, Continuously Monitored, Continuously Improved. See §3.1. |

| What governance do HIGH RISK AI systems need? | Comprehensive: full AI lifecycle governance per §5; mandatory AIIA per §6; enhanced testing including bias and adversarial testing; production monitoring including drift and fairness; HITL/HOTL human oversight; AI Governance Steering Committee approval. See §4.3. |

| What about RA 10173 §16(c)? | Customer right not to be subject to solely automated decisions with material effect. Operationalized through ensuring meaningful human involvement in such decisions or specific protections per RA 10173. Customer right to explanation operationalized through specific procedures. See §7.3 and §9.1. |

| What about LLMs and generative AI? | Specific safety considerations: system prompts establishing constraints, output filtering for unsafe content, prompt injection resistance, hallucination mitigation through RAG. Foundation model provider evaluation. Training data and licensing per BFS-ISP-026. See §7.1. |

| What about bias in AI? | Bias testing during validation — disparate impact analysis across protected groups, fairness metrics appropriate to use case. Bias mitigation through training data, model architecture, post-processing, or use case modification. Continuous fairness monitoring in production. See §7.2. |

| What about AI explainability? | Multiple levels — disclosure of AI use, system-level documentation, decision-level explainability for HIGH RISK, customer right to explanation per RA 10173. Methods vary by AI type (feature importance, LIME/SHAP, attention visualization, prompt-based). See §7.3. |

| What about human oversight? | HITL for highest-stakes decisions, HOTL for monitored autonomous operation, periodic review for lower-stakes. Meaningful oversight not rubber stamp. Override authority per role. Solely automated decisions limited per RA 10173 §16(c). See §7.4. |

| What about AI incidents? | Performance, drift, fairness, safety, security, privacy, hallucination, compliance categories. Integrated with BFS-ISP-017 incident response. NPC notification for personal data dimensions. BSP notification for material incidents. Investigation per BFS-ISMS-010. See §8. |

| What about third-party AI (e.g., LLM APIs)? | Subject to BFS-ISP-015 service provider management with AI-specific considerations. Foundation model provider evaluation: provider security, data handling, model licensing per BFS-ISP-026, model limitations. Disclosed in AI Inventory. See §9.4. |

| Where do I find more detailed AI governance documents? | BFS-AI-001 is foundational. Forthcoming subordinate documents in BFS-AI series: BFS-AI-002 (AI Risk Management), BFS-AI-003 (AI Model Lifecycle Management), BFS-AI-004 (AI Data Governance), additional documents as framework matures. See §1 (last paragraph). |

BFS-AI-001  |  AI Governance Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. ISO/IEC 42001:2023 AI Management System Aligned. Foundational Document of the BFS AI Governance Series.
