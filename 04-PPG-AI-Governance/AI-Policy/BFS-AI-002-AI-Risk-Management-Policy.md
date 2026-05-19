---
title: "BFS-AI-002-AI-Risk-Management-Policy"
source_file: "04-PPG-AI-Governance/AI-Policy/BFS-AI-002-AI-Risk-Management-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:42Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "04-PPG-AI-Governance"
  - "AI-Policy"
aliases:
  - "BFS-AI-002-AI-Risk-Management-Policy"
creator: "Un-named"
created: "2026-05-01T14:21:00Z"
modified: "2026-05-02T13:57:00Z"
---

| BFS AI GOVERNANCE FRAMEWORK<br>AI RISK MANAGEMENT<br>POLICY<br>AI Risk Taxonomy, Identification, Assessment, Treatment, and Monitoring — Operationalizing AI Risk Management for BFS AI-Native Platform Across Bias, Accuracy, Drift, Security, Privacy, Hallucination, Concentration, and Compliance Risks<br>Policy Reference: BFS-AI-002<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Semi-Annual<br>Aligned with ISO/IEC 23894:2023 and NIST AI RMF 1.0<br>Subordinate to BFS-AI-001 AI Governance Policy; Coordinated with BFS-ISMS-003 Risk Management Methodology<br>Operational AI Risk Discipline for Mission-Critical AI Systems |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | AI Risk Management Policy |

| --- | --- |

| Policy Reference | BFS-AI-002 |

| Policy Owner | Chief Risk Officer (CRO) / Head of Enterprise Architecture and AI / Chief Information Security Officer (CISO) / AI Risk Officer — quad-functional ownership |

| Document Author | Risk Management / Enterprise Architecture and AI Team / CISO Office / AI Risk Office / DPO / Compliance Office |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Regulatory Examination Use Only |

| Effective Date | April 2026 |

| Review Date | October 2026 (Semi-Annual Cycle) |

| Review Cycle | Semi-annual baseline review reflecting rapid AI risk landscape evolution; mandatory review after: material AI risk events, material new AI deployments, accumulated AI risk lessons, regulatory developments affecting AI risk expectations, or evolution of NIST AI RMF and ISO/IEC 23894 standards |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 3 — Subordinate to BFS-AI-001 AI Governance Policy. Operationalizes AI risk dimension of BFS AI Governance Framework. |

| Parent Document | BFS-AI-001 (AI Governance Policy — foundational) |

| Companion Documents | BFS-ISMS-003 (Risk Management Methodology — general risk framework); BFS-ISP-017 (Incident Response — AI incident integration); BFS-ISP-018 (Penetration Testing — AI security testing); BFS-ISP-026 (Compliance — AI regulatory framework); BFS-AI-003 forthcoming (AI Model Lifecycle Management); BFS-AI-004 forthcoming (AI Data Governance) |

| Framework Alignment | ISO/IEC 23894:2023 (Information technology — Artificial intelligence — Guidance on risk management); NIST AI Risk Management Framework 1.0 (AI RMF 1.0 with Govern/Map/Measure/Manage functions); ISO/IEC 42001:2023 risk-related provisions; ISO 31000:2018 (Risk management); coordinated with BFS ISO/IEC 27001:2022 ISMS |

| Regulatory Reference | NPC issuances on AI risk including for personal data; RA 10173 §16(c) automated decision-making risk; BSP Circular 1140 (IT risk management including AI); BSP Circular 1048 (Cybersecurity risk including AI); BSP supervisory expectations on model risk management; BSP risk governance frameworks; international benchmarks: EU AI Act risk classifications, US AI EO risk provisions |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| AI Risk Officer |  |  |  |

| Chief Information Officer |  |  |  |

| Data Protection Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services AI Risk Management Policy operationalizing the AI risk dimension of the BFS AI Governance Framework. It is subordinate to BFS-AI-001 AI Governance Policy and provides operational depth for AI risk identification, assessment, treatment, and monitoring across the BFS AI portfolio. It coordinates with BFS-ISMS-003 Risk Management Methodology — AI risk is treated as enterprise risk dimension while warranting AI-specific operational discipline.

AI risks are real risks with potential for material consequences. Bias in credit decisioning has caused material harm to disadvantaged groups at peer institutions and resulted in regulatory action. Hallucinations in AI assistants have caused material misinformation affecting customer decisions. Adversarial attacks against fraud detection models have enabled financial fraud at scale. Training data leakage through model inversion has exposed personal data triggering breach notification. Concentration risk through over-reliance on single AI provider has created operational vulnerabilities. Each AI risk category has caused material harm somewhere — managing them at BFS is operational discipline rather than theoretical exercise.

BFS AI risk management aligns with two complementary international frameworks: ISO/IEC 23894:2023 'Information technology — Artificial intelligence — Guidance on risk management' which provides comprehensive AI risk management approach extending ISO 31000 to AI; and NIST AI Risk Management Framework 1.0 (AI RMF 1.0) which provides four-function framework (Govern, Map, Measure, Manage) widely adopted in regulatory and industry guidance. BFS draws from both — using NIST AI RMF four functions as organizing structure while incorporating ISO 23894 detailed risk treatment guidance and aligning with BFS-ISMS-003 enterprise risk methodology.

AI risk has characteristics distinguishing it from traditional IT risk warranting specific provisions. AI risk emerges from data — training data quality, representativeness, and provenance materially affect risk profile. AI risk is statistical — rather than binary working/broken, AI fails in degrees with confidence indicators and edge case behaviors. AI risk evolves through drift — risk profile changes over time even without explicit changes to AI system. AI risk has emergent properties — particularly for large foundation models where capabilities and risks emerge during training without explicit design. AI risk has societal dimensions — AI systems can affect groups of people in patterns affecting public trust, regulatory landscape, and BFS social license to operate. Each characteristic warrants specific management discipline.

Beyond ISO and NIST framework alignment, this policy addresses BSP supervisory expectations on AI/ML model risk management which are increasingly explicit in BSP examinations, NPC expectations on AI risk affecting personal data and automated decision-making per RA 10173 §16(c), and broader regulatory framework where AI risk has become explicit examination focus.

The specific objectives of this policy are to:

Establish AI risk taxonomy comprehensively categorizing AI risks affecting BFS;

Operationalize NIST AI RMF four functions (Govern, Map, Measure, Manage) calibrated to BFS context;

Establish AI risk identification methodology including risk discovery techniques specific to AI;

Establish AI risk assessment framework calibrated to AI characteristics — likelihood and impact assessment for AI risks;

Define AI risk treatment options across mitigate, transfer, avoid, accept;

Establish AI risk monitoring framework with continuous and periodic review;

Address specific AI risk categories in operational depth — bias, accuracy, drift, security, privacy, hallucination, concentration, compliance, third-party AI;

Establish AI risk register operationalizing risk tracking and reporting;

Coordinate with BFS-ISMS-003 enterprise risk methodology — AI risk treated as risk dimension;

Coordinate with BFS-AI-001 AI Governance Policy — risk classification per BFS-AI-001 §4 drives AI risk management intensity;

Provide audit-friendly documentation supporting BSP examinations, NPC compliance verification, and external risk reviews of BFS AI risk discipline.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| AI Risk | Risk arising from or amplified by AI characteristics — including bias risk, accuracy risk, drift risk, security risk, privacy risk, hallucination risk, concentration risk, compliance risk, and others. Distinct from but coordinated with general operational and IT risk. |

| AI Risk Management | Coordinated activities to direct and control BFS regarding AI risk — encompassing identification, assessment, treatment, and monitoring per ISO/IEC 23894 and NIST AI RMF. |

| Inherent Risk | Risk before any controls are applied — represents underlying risk characteristics of AI system or use case. |

| Residual Risk | Risk remaining after controls are applied — represents actual operational risk BFS bears. |

| Risk Appetite | Amount and type of risk BFS is willing to take in pursuit of objectives — calibrated by Board for AI per BFS-AI-001 governance. |

| Risk Tolerance | Operational level acceptable for specific risk categories — typically more granular than appetite. |

| NIST AI RMF | NIST AI Risk Management Framework 1.0 — voluntary framework providing structured approach to AI risk through four functions: Govern, Map, Measure, Manage. |

| GOVERN (NIST) | NIST AI RMF function — cultivating culture of risk management across AI lifecycle. Addresses governance structures, policies, accountability. |

| MAP (NIST) | NIST AI RMF function — contextualizing AI in organization and identifying AI risks. Addresses risk identification and characterization. |

| MEASURE (NIST) | NIST AI RMF function — assessing, analyzing, and tracking AI risks. Addresses risk evaluation and monitoring. |

| MANAGE (NIST) | NIST AI RMF function — prioritizing and acting on AI risks. Addresses risk treatment and response. |

| AI Risk Register | Documented inventory of identified AI risks — analog of corporate risk register but specific to AI domain. |

| Bias Risk | Risk of AI systematically disadvantaging individuals or groups — particularly protected groups. May stem from training data, model architecture, deployment context, or feedback loops. |

| Drift Risk | Risk of AI performance degradation over time as inputs or environment change from training conditions. |

| Hallucination Risk | Risk of AI (particularly generative AI) producing plausible-sounding but factually incorrect outputs. |

| Concentration Risk | Risk arising from over-reliance on single AI vendor, foundation model, or technology — potential for vendor failure to disrupt BFS operations. |

| Adversarial Risk | Risk of attacks specifically targeting AI characteristics — adversarial examples, model extraction, model poisoning, prompt injection. |

| Model Inversion | Attack reconstructing training data from model — potentially exposing sensitive personal data used in training. |

| Membership Inference | Attack determining whether specific data was in training set — potentially exposing personal data presence. |

| Risk Velocity | Speed at which risk can manifest — relevant for AI where some risks (drift) are gradual and others (adversarial attacks) can be rapid. |

## 2.2  Scope

### 2.2.1  In-Scope AI Systems

All AI systems in scope of BFS-AI-001 — internal models, third-party AI, AI tools at scale;

Foundation model use including LLMs accessed via API and locally deployed;

Vendor AI products embedded in BFS operations;

AI in development pipeline including pre-deployment testing risks;

AI risk classifications per BFS-AI-001 §4 — UNACCEPTABLE risks already prohibited; HIGH/LIMITED/MINIMAL RISK subject to risk management at calibrated intensity.

### 2.2.2  Out-of-Scope Items

Traditional IT risk addressed by BFS-ISMS-003 — though AI risk integrates with broader IT risk;

Personal use of AI tools by personnel for non-BFS purposes;

AI research not deployed to BFS operations.

# 3.  AI RISK MANAGEMENT FRAMEWORK

## 3.1  AI Risk Management Principles

Risk-Based: AI risk management intensity calibrated to risk classification per BFS-AI-001 §4 — HIGH RISK comprehensive; LIMITED RISK substantive; MINIMAL RISK proportionate;

Lifecycle-Coverage: AI risk addressed throughout AI lifecycle per BFS-AI-001 §5 — risks identified at planning, monitored through development, validated before deployment, monitored in production, considered at retirement;

Multi-Disciplinary: AI risk involves multiple disciplines — engineering, security, ethics, legal, compliance, business — managed through cross-functional collaboration;

Data-Centric: AI risk substantially originates in data — risk management addresses data quality, representativeness, provenance, and protection;

Continuous: AI risk evolves continuously — through drift, environmental changes, adversarial activity, regulatory development. Risk management is continuous activity not point-in-time;

Quantified Where Possible: AI risk quantified where measurable — bias metrics, accuracy metrics, drift indicators. Where quantification difficult, qualitative assessment with rigor;

Documented: AI risk decisions documented including rationale — supporting accountability and learning;

Integrated with Enterprise Risk: AI risk integrated with BFS-ISMS-003 enterprise risk — not isolated discipline;

Transparent to Stakeholders: AI risks disclosed to appropriate stakeholders — Board for material risks, regulators per applicable expectations, customers per applicable rights.

## 3.2  NIST AI RMF Four Functions

BFS organizes AI risk management per NIST AI RMF four functions — providing structure widely recognized in AI risk discourse and increasingly referenced in regulatory expectations:

| Function | Definition | BFS Operationalization |

| --- | --- | --- |

| GOVERN | Cultivate culture of AI risk management across organization | BFS-AI-001 establishes AI governance; this policy establishes AI risk discipline; AI Governance Steering Committee, AI Risk Officer, AI Ethics Officer roles per BFS-AI-001 §3.2 |

| MAP | Contextualize and identify AI risks | Section 4 (AI Risk Taxonomy) and Section 5 (AI Risk Identification) — comprehensive risk discovery and characterization |

| MEASURE | Assess, analyze, and track AI risks | Section 6 (AI Risk Assessment) and Section 8 (AI Risk Monitoring) — risk evaluation and continuous tracking |

| MANAGE | Prioritize and act on AI risks | Section 7 (AI Risk Treatment) and Section 10 (AI Risk Register) — risk response and tracking |

## 3.3  AI Risk Appetite and Tolerance

AI risk appetite calibrated to BFS context:

Strategic AI Investment: BFS strategic commitment to AI-native platform implies appetite for AI development and deployment — risk-aware not risk-averse posture;

Customer Protection: Low appetite for AI risks affecting customers materially — bias, hallucination affecting customer decisions, security exposing customer data;

Regulatory Compliance: Zero appetite for AI uses violating clear regulatory requirements — RA 10173 violations, BSP supervisory expectations, prohibited AI uses;

Operational Reliability: Moderate appetite for operational AI risks proportionate to operational benefits — reliability calibrated to mission criticality;

Reputational: Low appetite for AI risks creating material reputational exposure — incidents undermining customer or regulator trust in BFS AI;

Innovation: Higher appetite for AI risks in experimental contexts with controlled exposure — sandbox environments, limited pilots, PoC initiatives;

Specific tolerances established per AI risk category — operational thresholds informing risk treatment and escalation decisions.

## 3.4  Three Lines of Defense for AI Risk

AI risk management operates through three lines of defense aligned with BFS enterprise risk model:

First Line: AI engineering teams, model owners, business sponsors — primary risk ownership and operational risk management;

Second Line: AI Risk Office, AI Ethics Officer, CISO Office (for AI security risk), DPO (for AI personal data risk), Compliance — independent risk oversight, framework, and challenge;

Third Line: Internal Audit — independent assurance per BFS-ISMS-008 — including AI risk management effectiveness audit.

# 4.  AI RISK TAXONOMY

BFS AI risk taxonomy provides comprehensive categorization of AI risks. The taxonomy organizes risks for systematic identification and treatment.

## 4.1  Risk Category Framework

| Risk Category | Description | Detailed Coverage |

| --- | --- | --- |

| Bias and Fairness | AI systematically disadvantaging individuals or groups | Section 9.1 |

| Accuracy and Reliability | AI producing incorrect or unreliable outputs | Section 9.2 |

| Drift | AI performance degrading over time | Section 9.3 |

| Security | Adversarial attacks, model extraction, poisoning, prompt injection | Section 9.4 |

| Privacy | Training data leakage, model memorization, inference attacks | Section 9.5 |

| Hallucination | Generative AI producing plausible but fabricated outputs | Section 9.6 |

| Concentration | Over-reliance on single vendor, model, technology | Section 9.7 |

| Compliance | AI violating regulatory requirements | Section 9.8 |

| Operational | AI system operational failures including availability, performance | Section 9.9 |

| Reputational | AI events causing reputational damage | Section 9.10 |

| Third-Party AI | Risks from vendor AI, foundation models, AI APIs | Section 9.11 |

## 4.2  Risk Category Interactions

AI risk categories interact — risks in one category amplify risks in others. Examples:

Bias risk amplified by data quality risk (training data with bias) and accuracy risk (lower accuracy for under-represented groups);

Drift risk amplifies all categories over time — model performance degradation may surface as bias, accuracy, or other issues;

Security risk amplifies privacy risk — successful adversarial attack may expose training data;

Hallucination risk amplifies reputational risk — high-profile hallucination events damage trust;

Concentration risk amplifies operational risk — single vendor failure affects all dependent operations;

Compliance risk amplifies all other categories — regulatory violation can compound original AI issue.

Risk identification and assessment considers interactions, not categories in isolation.

# 5.  AI RISK IDENTIFICATION (MAP)

AI risk identification — operationalizing NIST AI RMF MAP function — discovers and characterizes risks affecting AI systems.

## 5.1  Risk Identification Methods

Use Case Risk Assessment: At AI use case planning per BFS-AI-001 §5.2 — risks identified before AI development begins;

AIIA Process: AI Impact Assessment per BFS-AI-001 §6 — structured impact analysis identifying risks;

Data Risk Analysis: Analysis of training data for risk indicators — bias, gaps, quality issues, sensitivity;

Threat Modeling: AI-extended threat modeling per BFS-ISP-027 §4.2 — identifying AI-specific threats;

Adversarial Analysis: Specific analysis of adversarial scenarios — what could attackers do to or with this AI;

Stakeholder Engagement: Engagement with affected stakeholders surfacing perspectives engineering may miss — customer perspectives, frontline staff perspectives, ethics perspectives;

Industry Intelligence: Learning from industry AI risk events, peer institution disclosures, academic research, regulator publications;

Red Team Exercises: Adversarial testing of AI systems probing for risks — particularly for HIGH RISK AI;

Operational Observation: Risks emerging from AI operation — incidents, near-misses, user complaints, support cases.

## 5.2  Risk Identification Cadence

At Planning: Initial risk identification during AI use case planning — informing decision to proceed and design;

Pre-Deployment: Comprehensive risk identification before production deployment — confirming risks understood and addressed;

Post-Deployment: Initial post-deployment risk review — identifying risks not anticipated;

Periodic: Periodic risk review per AI risk classification — typically quarterly for HIGH RISK AI per BFS-AI-001 §5.6 PS-6.3;

Event-Driven: Risk identification triggered by events — incidents, regulatory developments, threat intelligence, material AI changes;

Annual Comprehensive: Annual comprehensive AI portfolio risk review identifying systemic risks across portfolio.

## 5.3  Risk Documentation

Identified risks documented with:

Risk identifier — unique reference for tracking;

Risk title and description — clear statement of what the risk is;

Risk category per Section 4;

Affected AI system(s);

Risk source — what gives rise to the risk;

Risk consequence — what could happen if risk materializes;

Risk indicators — observable signals risk is materializing;

Identification date and context — when, how, by whom identified.

Risk documentation feeds into AI Risk Register per Section 10.

# 6.  AI RISK ASSESSMENT (MEASURE)

AI risk assessment — operationalizing NIST AI RMF MEASURE function — evaluates likelihood and impact of identified risks.

## 6.1  Likelihood Assessment

Likelihood that risk materializes — informed by:

Threat Activity: For threat-driven risks (security, adversarial), observed threat activity in industry;

Vulnerability Indicators: System characteristics that increase likelihood — limited training data diversity, novel architecture, untested deployment context;

Operating Environment: Where AI operates and what stresses it faces;

Historical Data: BFS or industry historical occurrence of similar risks;

Risk Velocity: How quickly risk can manifest from low to material;

Likelihood expressed using BFS-ISMS-003 framework with AI-appropriate context — typically Very Low / Low / Medium / High / Very High calibrated to AI risk timescales.

## 6.2  Impact Assessment

Impact if risk materializes — assessed across dimensions:

Customer Impact: Effect on customers — financial, access to services, dignity, fairness;

Financial Impact: Direct financial loss from risk materialization;

Regulatory Impact: Regulatory exposure including potential enforcement, fines, supervisory action;

Reputational Impact: Effect on BFS reputation and trust;

Operational Impact: Effect on BFS operations including service disruption, manual intervention requirements;

Strategic Impact: Effect on BFS AI strategy and capability;

Societal Impact: Broader effects beyond direct stakeholders — particularly for AI affecting public interest;

Impact expressed using BFS-ISMS-003 framework with AI-appropriate context — typically Very Low / Low / Medium / High / Very High.

## 6.3  Inherent vs Residual Risk

Inherent Risk: Risk before controls — represents underlying risk characteristics;

Residual Risk: Risk after controls — represents what BFS actually bears;

Both assessed — inherent risk informs control design; residual risk informs treatment adequacy;

Significant gap between inherent and residual indicates control effectiveness; small gap indicates either low inherent risk or control inadequacy;

Documentation includes both supporting transparent risk decisions.

## 6.4  Risk Quantification Where Possible

AI risks quantified where measurement is meaningful:

Bias: Statistical fairness metrics — demographic parity gap, equal opportunity gap, equalized odds metrics;

Accuracy: Model performance metrics — precision, recall, F1, AUC for classification; MAE, RMSE for regression; perplexity, BLEU for generative;

Drift: Statistical drift detection — distribution shift metrics (PSI, KL divergence), prediction drift, performance drift;

Security: Adversarial robustness measurements — adversarial accuracy, robustness radius;

Privacy: Privacy budget consumption (for differential privacy approaches), membership inference attack success rates;

Operational: Standard operational metrics — availability, latency, throughput, error rate.

Quantitative metrics complement rather than replace qualitative assessment — context, severity, and stakeholder impact often require judgment beyond metrics.

## 6.5  Risk Rating Matrix

| Likelihood ↓ / Impact → | Very Low / Low | Medium | High | Very High |

| --- | --- | --- | --- | --- |

| Very Low / Low | Low | Low | Medium | High |

| Medium | Low | Medium | High | Critical |

| High | Medium | High | Critical | Critical |

| Very High | High | Critical | Critical | Critical |

Risk rating drives treatment urgency and escalation — Critical risks escalated to AI Governance Steering Committee with potential Board notification; High risks addressed promptly per documented plan; Medium and Low risks tracked with appropriate attention.

# 7.  AI RISK TREATMENT (MANAGE)

AI risk treatment — operationalizing NIST AI RMF MANAGE function — selects and implements responses to assessed risks.

## 7.1  Treatment Options

Per ISO 31000 / ISO 23894, four treatment options:

MITIGATE (Reduce): Reduce likelihood, impact, or both through controls — most common AI risk treatment;

TRANSFER: Shift risk to another party — typically through contracts, insurance, or vendor responsibility allocation;

AVOID: Eliminate risk by not engaging in risk-creating activity — appropriate for risks where treatment cost exceeds benefit or where risks are unacceptable;

ACCEPT: Accept risk without further treatment — appropriate when residual risk is within tolerance and treatment cost exceeds benefit. Acceptance is documented decision, not default.

## 7.2  Treatment Option Selection

PS-2.1  Treatment selection considers: residual risk after treatment, treatment cost, treatment feasibility, treatment side effects (treatments may introduce other risks), and stakeholder considerations.

PS-2.2  Critical and High risks shall have treatment plan addressing the risk — acceptance of these levels requires explicit senior governance approval.

PS-2.3  Risk acceptance shall be documented including: specific risk, treatment options considered, acceptance rationale, residual risk consequences if materialized, monitoring during acceptance period, expiration or review date.

PS-2.4  Risk acceptance authority calibrated to risk level — Critical risks require Board-level acceptance; High risks AI Governance Steering Committee; Medium risks operational management within framework; Low risks operational management.

PS-2.5  Risk acceptance is genuine governance decision, not bureaucratic stamp — accepting risk requires conscious decision with awareness of implications.

## 7.3  Common AI Risk Mitigation Approaches

| Risk Category | Common Mitigation Approaches | Notes |

| --- | --- | --- |

| Bias | Diverse training data, bias testing during validation, fairness-aware ML techniques, post-processing calibration, monitoring in production | Multiple approaches typically combined; complete bias elimination often infeasible — managed to acceptable residual |

| Accuracy | Quality training data, appropriate model selection, rigorous validation, ensemble approaches, confidence thresholds, human review for low-confidence | Trade-offs with model complexity, latency, interpretability |

| Drift | Production monitoring, drift detection, periodic retraining, A/B testing for new models, rollback capability | Detection alone insufficient — must be paired with response capability |

| Security | Adversarial training, input validation, model output verification, rate limiting, model deployment isolation, secure inference architecture | AI security is evolving field; controls must evolve with attack landscape |

| Privacy | Differential privacy where applicable, federated learning where applicable, training data minimization, output privacy verification, data minimization at inference | Privacy techniques may reduce model utility — trade-offs explicit |

| Hallucination | RAG architectures grounding outputs in retrieved documents, output verification, confidence indication, user education on limitations | No technique eliminates hallucination entirely; mitigation reduces frequency and impact |

| Concentration | Vendor diversification, foundation model alternatives, in-house capability, exit strategy, contractual protections | Trade-offs with operational efficiency and capability |

| Compliance | Policy alignment, regulatory monitoring, expert engagement, conservative posture for unclear areas, documented compliance positions | Compliance is moving target as regulation evolves |

# 8.  AI RISK MONITORING AND REVIEW

## 8.1  Continuous Monitoring

AI systems instrumented for continuous monitoring of risk-relevant metrics per AI use case;

Monitoring infrastructure operational at deployment per BFS-AI-001 §5.5 PS-5.3;

Monitoring covers: performance, drift, fairness, security indicators, compliance with operating envelope, user feedback;

Threshold-based alerting triggers risk response when monitoring indicates risk materialization;

Monitoring data analyzed for trends — gradual changes preceding material issues.

## 8.2  Periodic Review

Periodic AI risk review at multiple cadences:

Operational Review: AI risk dashboards reviewed by AI Risk Office daily/weekly for high-volume signals;

Tactical Review: AI risk status reviewed monthly by AI Risk Office with reporting to AI Governance Steering Committee;

HIGH RISK AI Review: Quarterly comprehensive review of HIGH RISK AI per BFS-AI-001 §5.6 PS-6.3;

Annual Comprehensive Review: Annual review of AI risk portfolio — emerging risks, treatment effectiveness, framework adequacy;

Event-Driven Review: Incidents, regulatory developments, threat intelligence trigger reviews.

## 8.3  Risk Indicator Monitoring

Specific risk indicators monitored continuously:

Performance Indicators: Model performance metrics relative to expected performance — sustained degradation triggers investigation;

Fairness Indicators: Disparate impact metrics across protected groups — drift indicates emerging bias;

Distribution Indicators: Input data distribution relative to training distribution — material shift indicates drift risk;

User Feedback Indicators: Customer complaints, support cases, feedback themes — early signal of issues;

Security Indicators: Anomalous query patterns, model extraction attempt signatures, prompt injection patterns;

Compliance Indicators: Operational practices relative to regulatory expectations — drift in compliance posture.

## 8.4  Treatment Effectiveness Verification

Implemented treatments verified for effectiveness — actually reducing risk as intended;

Verification through monitoring data, testing, and observation;

Ineffective treatments adjusted — including treatment alternative selection;

Treatment side effects monitored — treatments may introduce other risks;

Verification documented supporting audit and continuous improvement.

# 9.  SPECIFIC AI RISK CATEGORIES

This section addresses each AI risk category in operational depth — providing specific guidance beyond the framework provisions of preceding sections.

## 9.1  Bias and Fairness Risk

Bias risk — AI systematically disadvantaging individuals or groups particularly protected groups.

Sources: Training data bias (historical bias, representation gaps, label bias), model architecture choices, deployment context, feedback loops where AI decisions affect future training data;

Detection: Statistical fairness metrics during validation and production — demographic parity gap, equal opportunity gap, equalized odds analysis. Multiple metrics often used given trade-offs;

Treatment: Diverse training data, fairness-aware ML algorithms, post-processing calibration, ensemble methods balancing fairness considerations, restricted use cases where bias unmanageable;

Specific BFS Considerations: Credit decisioning bias has caused material regulatory action at peer institutions; fraud detection bias can disproportionately flag protected groups; AML alert bias can create disparate compliance burden;

Continuous Monitoring: Fairness metrics monitored in production — bias can emerge or worsen over time.

## 9.2  Accuracy and Reliability Risk

Accuracy risk — AI producing incorrect outputs causing operational consequences.

Sources: Insufficient training data, training-deployment data mismatch, model architecture limitations, edge cases not represented in training, ambiguous inputs;

Detection: Model performance metrics during validation; production performance monitoring; user feedback;

Treatment: Quality training data, appropriate model selection for problem, ensemble approaches, confidence thresholds with low-confidence routing to human review, fallback mechanisms;

Trade-offs: Accuracy often trades off with latency, cost, interpretability — explicit trade-off decisions per use case.

## 9.3  Drift Risk

Drift risk — AI performance degrading over time as inputs or environment change.

Sources: Distribution shift in inputs (input drift), shift in true labels (concept drift), changes in user behavior, changes in upstream systems, environmental changes;

Detection: Statistical drift detection using methods like Population Stability Index, KL divergence, prediction distribution monitoring; performance metric trending;

Treatment: Periodic retraining schedule, automatic retraining triggers, A/B testing of new models, rollback capability for problematic updates;

Particular Concerns: Drift can be gradual and unnoticed; can affect bias and fairness; particularly relevant for AI in dynamic domains.

## 9.4  Security Risk

AI-specific security risks per ISO/IEC 27090 (AI security guidance — under development) and OWASP AI Security frameworks.

Adversarial Examples: Inputs crafted to mislead AI — managed through adversarial training and input validation;

Model Extraction: Attackers reverse-engineering model through query observation — managed through query rate limiting, query analysis, output information minimization;

Model Poisoning: Attackers injecting malicious training data — managed through training data integrity, training environment security, supply chain validation;

Prompt Injection (LLM-Specific): Malicious inputs manipulating LLM behavior — managed through input validation, output filtering, prompt template engineering, principle of least authority for LLM tools;

Membership Inference: Attackers determining training set membership — managed through differential privacy where applicable;

Model Stealing: Direct theft of model artifacts — managed through model repository security per BFS-ISP-029.

## 9.5  Privacy Risk

AI privacy risks beyond general data privacy.

Training Data Disclosure: Models can memorize training data exposing it through inference; risk addressed through training discipline, model evaluation for memorization, differential privacy where applicable;

Inference Attacks: Membership inference, attribute inference, model inversion attacks — addressed through privacy-preserving techniques and access controls;

Inference-Time Privacy: Sensitive data submitted at inference time exposed through logging, vendor processing, model behavior — addressed through data minimization, careful logging, vendor agreements;

Re-Identification: AI may enable re-identification of nominally anonymized data — addressed through robust anonymization per RA 10173 standards, sensitivity to combination effects;

RA 10173 Specific Considerations: Personal data in AI subject to RA 10173 throughout — coordinated with DPO and PIA per BFS-ISP-027 §6.

## 9.6  Hallucination Risk

Hallucination — generative AI producing plausible-sounding but factually incorrect outputs. Particularly relevant for LLM deployments.

Sources: LLM training causes models to produce plausible-pattern outputs which may be factually wrong; lack of grounding in authoritative sources; training data errors propagated;

Detection: Difficult — hallucinations are by nature plausible. Detection through output verification against authoritative sources, citation requirements, user feedback, automated fact-checking where feasible;

Treatment: Retrieval-Augmented Generation (RAG) grounding outputs in retrieved documents; output filtering and verification; confidence indication where available; user education on limitations; appropriate use case selection;

Particular Concerns: Customer-facing LLM hallucination can cause material customer misinformation; LLM in regulatory or legal contexts requires extra care; LLM in financial advice contexts particularly risky.

| HALLUCINATION RISK FOR FINANCIAL INSTITUTION LLMs:  Hallucinations from financial institution LLMs deployed for customer service, internal analysis, or regulatory tasks have caused material harm at peer institutions — fabricated rates, fabricated regulations cited, fabricated transaction histories. BFS LLM deployment uses RAG architecture grounding outputs in authoritative documents; outputs validated where feasible; appropriate disclosure that AI may produce errors and customers should verify material decisions through authoritative sources; humans-in-loop for material customer-affecting LLM output. Use cases for which hallucination cannot be adequately mitigated do not deploy LLM technology. |

| --- |

## 9.7  Concentration Risk

Concentration risk — over-reliance on single AI vendor, foundation model, or technology.

Sources: Single foundation model provider for material LLM workloads; single cloud AI service for material AI infrastructure; single specialized vendor for material AI capability;

Detection: Architecture review identifying concentration patterns; vendor concentration analysis;

Treatment: Vendor diversification where feasible; multi-model strategy where appropriate; in-house capability for critical AI; documented exit strategies; contractual protections;

Trade-Offs: Diversification has cost (multiple vendor management, capability fragmentation, integration complexity); BFS approach balances concentration risk against operational efficiency.

## 9.8  Compliance Risk

Compliance risk — AI operating in violation of regulatory requirements.

Sources: Inadequate understanding of evolving AI regulation; AI behavior diverging from compliance posture over time; regulatory developments not promptly reflected in AI; international regulatory exposure;

Detection: Compliance monitoring, regulatory development tracking per BFS-ISP-026 §4.3, compliance examination findings;

Treatment: Active regulatory monitoring, conservative posture for unclear areas, regulatory engagement, documented compliance positions;

Specific Considerations: RA 10173 §16(c), NPC AI guidance, BSP AI/ML expectations, evolving international frameworks (EU AI Act phased application, etc.).

## 9.9  Operational Risk

AI system operational failures — availability, performance, capacity;

Coordinated with BFS-ISP-011-DRP §7.4 AI/ML workload DR and BFS-ISP-030 §7.1 AI capacity;

Operational AI incidents per BFS-AI-001 §8 and BFS-ISP-017.

## 9.10  Reputational Risk

AI events causing reputational damage — high-profile bias incidents, hallucination incidents affecting customers, security breaches involving AI;

Detection: Customer complaints, social media monitoring, media coverage, regulator engagement;

Treatment: Robust AI governance preventing high-profile incidents; communications protocols for AI events; transparency about BFS AI governance approach;

Particular Concerns: AI reputational events have outsized impact — public attention to AI issues higher than equivalent traditional IT issues.

## 9.11  Third-Party AI Risk

Risks from vendor AI, foundation models, AI APIs.

Sources: Vendor AI quality and limitations, vendor data handling, vendor governance maturity, vendor business continuity, vendor security, foundation model behavior including unexpected emergent behaviors;

Detection: Vendor evaluation per BFS-ISP-015 with AI-specific extension, vendor performance monitoring, vendor incident notifications;

Treatment: Vendor due diligence including AI governance assessment, contractual protections specifically for AI dimensions, vendor monitoring, alternate vendor identification;

Specific Considerations: Foundation model providers have evolving capability and policies; LLM providers may change models without notice affecting BFS operations; vendor terms may not reflect financial services requirements.

# 10.  AI RISK REGISTER

AI Risk Register is the operational artifact tracking BFS AI risks. It is the single source of truth for AI risk status across the BFS AI portfolio.

## 10.1  Register Structure

Each AI Risk Register entry includes:

Risk identifier — unique reference;

Risk title and description;

Risk category per Section 4;

Affected AI system(s) per BFS-AI-001 AI Inventory;

Inherent likelihood and impact assessment;

Implemented controls / treatment;

Residual likelihood and impact assessment;

Residual risk rating per Section 6.5;

Treatment plan if treatment in progress;

Risk owner — accountable individual;

Review cadence;

Last review date and next review date;

Risk indicators monitored;

Material events affecting the risk;

Status — Open, Treated, Accepted, Closed, Re-Opened.

## 10.2  Register Maintenance

AI Risk Register maintained by AI Risk Office;

Register entries created upon risk identification;

Register entries updated upon material changes — new information, treatment progress, monitoring outcomes;

Register reviewed at periodic cadence per Section 8.2;

Register accessible to AI risk stakeholders supporting their roles;

Register changes audit-logged supporting traceability.

## 10.3  Register Integration

AI Risk Register coordinates with BFS-ISMS-003 enterprise risk register — AI risks may also appear in enterprise register at appropriate aggregation level;

Material AI risks reflected in enterprise risk reporting;

AI Risk Register is operational layer; enterprise risk register is governance layer.

# 11.  AI RISK REPORTING

## 11.1  Reporting Cadence

Operational: AI risk dashboards available to AI Risk Office and AI engineering teams continuously;

Tactical: Monthly AI risk status to AI Governance Steering Committee — material risks, emerging risks, treatment progress;

Strategic: Quarterly AI risk reporting to Board Audit & Risk Committee — portfolio-level risk posture, material risk events, framework effectiveness;

Annual: Annual comprehensive AI risk review to Board including framework effectiveness, regulatory landscape, strategic AI risk posture;

Event-Driven: Material AI risk events reported promptly to appropriate level — Critical events reach Board through pre-established escalation.

## 11.2  Reporting Content

Risk Portfolio Summary: Distribution of risks by category, severity, treatment status;

Material Risk Detail: Individual analysis of significant risks with status and treatment;

Trend Analysis: Risk trends — is risk profile improving or worsening;

Risk Events: Material risk events that occurred — incidents, near-misses, regulatory developments;

Treatment Status: Treatment plan progress against milestones;

Emerging Risks: Newly identified or evolving risks warranting attention;

Regulatory Landscape: Material regulatory developments affecting AI risk.

## 11.3  Regulatory Reporting

BSP supervisory examinations include AI risk reporting per BSP framework;

NPC engagement on AI matters affecting personal data;

Material AI incidents reported per applicable regulatory expectations and BFS-ISP-017;

Cross-border regulatory considerations for AI affecting cross-jurisdiction operations.

# 12.  ROLES AND RESPONSIBILITIES

| Role | AI Risk Management Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy. Reviews AI risk strategy and material risks. Acceptance authority for Critical AI risks. Quarterly AI risk reporting. |

| Chief Risk Officer | Document co-owner. Operationally accountable for AI risk management framework. Coordinates with broader enterprise risk per BFS-ISMS-003. Quad-functional ownership. |

| Head of Enterprise Architecture and AI | Document co-owner. AI architecture and capability accountability. AI risk awareness in AI architecture decisions. |

| Chief Information Security Officer | Document co-owner. AI security risk per Section 9.4. AI security risk integrated with broader security risk. |

| AI Risk Officer | Document co-owner. Day-to-day AI risk operations including AI Risk Register maintenance, risk monitoring oversight, risk reporting, AI Governance Steering Committee operational support. |

| Chief Information Officer | Co-approver. AI infrastructure operational risk. AI capability risk. |

| Data Protection Officer | Co-approver. AI privacy risk per Section 9.5. RA 10173 considerations including §16(c). |

| Chief Compliance Officer | Co-approver. AI compliance risk per Section 9.8. Regulatory engagement on AI risk matters. |

| AI Ethics Officer | Bias and fairness risk per Section 9.1. AI ethics dimensions of AI risk. |

| AI Governance Steering Committee | Reviews AI risk portfolio. Approves treatment plans for High and Critical AI risks. Approves risk acceptance for High risks. |

| AI Ethics Committee | Reviews ethics-prominent AI risks particularly bias and societal impact dimensions. |

| Model Owners | First-line risk ownership for specific AI models — risk identification, monitoring, treatment execution for risks affecting their models. |

| AI Engineering Teams | First-line operational risk management. Implement risk treatments. Monitor risk indicators. Report risk events. |

| AI Risk Office | Second-line risk oversight. Independent risk perspective, framework, and challenge to first-line risk management. |

| Risk Management Function | Coordinates AI risk with broader enterprise risk per BFS-ISMS-003. Risk reporting integration. |

| Internal Audit | Third-line independent assurance per BFS-ISMS-008 — including AI risk management framework effectiveness. |

# 13.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

AI risk management effectiveness measured through KPIs reviewed quarterly by AI Governance Steering Committee and reported to Board Audit & Risk Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| AI Risk Register currency for in-scope AI systems | 100% | Quarterly |

| AI risks identified per Section 5 methodology | Track and trend | Quarterly |

| AI risk assessments completed at deployment | 100% | Per deployment |

| HIGH RISK AI systems with periodic review per cadence | 100% | Quarterly |

| Critical AI risks with active treatment plan | 100% | Quarterly |

| High AI risks with active treatment plan | ≥ 95% | Quarterly |

| AI risk acceptances with documented authorization | 100% | Per acceptance |

| AI bias monitoring operational for HIGH RISK AI | 100% | Quarterly |

| AI drift detection operational for in-scope AI | ≥ 95% | Quarterly |

| AI security testing completed per cadence | 100% of HIGH RISK AI annually | Annual |

| AI risk indicator alerts addressed within target time | ≥ 95% | Quarterly |

| AI risk events analyzed per BFS-ISMS-010 | 100% of material events | Per event |

| AI risk treatments verified for effectiveness | ≥ 90% of implemented treatments | Quarterly |

| Vendor AI governance verification | 100% of in-scope vendor AI | Annual |

| AI risk reporting cadence — operational/tactical/strategic | Per cadence | Continuous |

| BSP examination findings on AI risk management | Zero material findings | Per examination |

| NPC compliance findings on AI risk affecting personal data | Zero material findings | Per review |

| Internal Audit findings on AI risk management | Track and remediate per BFS-ISMS-010 | Per audit |

# 14.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS AI Risk Management Policy as second document of BFS-AI series. Subordinate to BFS-AI-001 AI Governance Policy. Aligned with ISO/IEC 23894:2023 AI Risk Management Guidance and NIST AI Risk Management Framework 1.0 (Govern/Map/Measure/Manage four functions). Quad-functional ownership (CRO/Head of EA & AI/CISO/AI Risk Officer). Coordinated with BFS-ISMS-003 enterprise risk methodology. Comprehensive AI risk taxonomy across 11 categories (Bias and Fairness, Accuracy and Reliability, Drift, Security, Privacy, Hallucination, Concentration, Compliance, Operational, Reputational, Third-Party AI). NIST AI RMF four-function organizing structure. AI risk identification methods including AIIA, threat modeling, adversarial analysis, red team exercises. AI risk assessment with likelihood/impact framework, inherent vs residual risk distinction, quantification methods, 5x5 risk rating matrix. AI risk treatment with 4 treatment options and category-specific mitigation approaches. AI risk monitoring with continuous and periodic frameworks. Specific AI risk category detail across 11 categories with sources, detection, treatment, and BFS-specific considerations including hallucination risk for financial institution LLMs. AI Risk Register operational artifact. AI risk reporting framework. Three Lines of Defense for AI risk. Semi-annual review cycle. | IT Head Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 23894:2023 and NIST AI RMF Mapping

Mapping of ISO/IEC 23894:2023 risk management guidance and NIST AI RMF 1.0 four functions to specific provisions of this policy.

| Framework Element | Coverage | Sections in This Policy |

| --- | --- | --- |

| NIST AI RMF: GOVERN | Cultivate culture of AI risk management | Section 1 (Purpose); Section 3.1 (Principles); Section 3.4 (Three Lines of Defense); Section 12 (Roles); coordinated with BFS-AI-001 |

| NIST AI RMF: MAP | Contextualize and identify AI risks | Section 4 (AI Risk Taxonomy); Section 5 (AI Risk Identification — methods, cadence, documentation) |

| NIST AI RMF: MEASURE | Assess, analyze, track AI risks | Section 6 (AI Risk Assessment — likelihood, impact, inherent vs residual, quantification, rating matrix); Section 8 (AI Risk Monitoring — continuous, periodic, indicators, treatment effectiveness) |

| NIST AI RMF: MANAGE | Prioritize and act on AI risks | Section 7 (AI Risk Treatment — 4 options, selection, mitigation approaches); Section 10 (AI Risk Register); Section 11 (AI Risk Reporting) |

| ISO 23894 Risk Process | Risk assessment lifecycle | Section 5 (Identification) → Section 6 (Assessment) → Section 7 (Treatment) → Section 8 (Monitoring) |

| ISO 23894 AI Risk Sources | Sources of AI risk | Section 4 (AI Risk Taxonomy with 11 categories); Section 9 (Specific Risk Category detail) |

| ISO 23894 Stakeholder Engagement | Stakeholder consideration in AI risk | Section 5.1 (stakeholder engagement as identification method); Section 11.1 (reporting to stakeholders) |

| ISO 31000:2018 Foundation | General risk management | Throughout — coordinated with BFS-ISMS-003 enterprise risk methodology |

# APPENDIX B:  AI Risk Management Quick Reference

Single-page reference for AI engineers, model owners, and AI risk stakeholders.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What's the NIST AI RMF four-function framework? | GOVERN (cultivate risk management culture), MAP (contextualize and identify), MEASURE (assess, analyze, track), MANAGE (prioritize and act). Used as organizing structure throughout this policy. See §3.2. |

| What are the AI risk categories? | 11 categories: Bias and Fairness, Accuracy and Reliability, Drift, Security, Privacy, Hallucination, Concentration, Compliance, Operational, Reputational, Third-Party AI. Categories interact — risks amplify each other. See §4 and §9. |

| How do I identify AI risks? | Use case risk assessment at planning, AIIA per BFS-AI-001 §6, data risk analysis, threat modeling per BFS-ISP-027 §4.2, adversarial analysis, stakeholder engagement, industry intelligence, red team exercises (HIGH RISK), operational observation. See §5.1. |

| How do I assess AI risk? | Likelihood (Very Low to Very High calibrated to AI timescales) and Impact (across customer/financial/regulatory/reputational/operational/strategic/societal dimensions). Both inherent and residual. Quantify where possible (fairness metrics, accuracy metrics, drift metrics). See §6 and §6.5 matrix. |

| What treatment options exist? | Per ISO 31000/23894: MITIGATE (reduce — most common), TRANSFER (shift to another party), AVOID (eliminate by not engaging), ACCEPT (within tolerance, documented decision). Critical and High require treatment plan. Acceptance requires senior governance approval per Section 7.2 PS-2.4. |

| What about bias risk? | Sources: training data bias, model architecture, deployment context, feedback loops. Detection: statistical fairness metrics during validation and production. Treatment: diverse training data, fairness-aware ML, post-processing calibration, ensemble methods. Continuous monitoring critical. See §9.1. |

| What about hallucination risk for LLMs? | Particularly relevant for BFS LLM deployments. Mitigation: RAG architecture grounding outputs in authoritative documents, output verification, confidence indication, user education on limitations, humans-in-loop for material customer-affecting LLM output. See §9.6 and note box. |

| What about adversarial security? | Adversarial examples, model extraction, model poisoning, prompt injection (LLM-specific), membership inference, model stealing. Treatments include adversarial training, query rate limiting, training data integrity, prompt engineering, differential privacy. AI security testing per BFS-ISP-018 extended for AI. See §9.4. |

| What about training data privacy? | Models can memorize training data exposing it through inference. Inference attacks (membership inference, attribute inference, model inversion). Treatment: training discipline, model evaluation for memorization, differential privacy where applicable, training data minimization. RA 10173 throughout. See §9.5. |

| What about concentration risk? | Over-reliance on single AI vendor, foundation model, or technology. Treatment: vendor diversification where feasible, multi-model strategy, in-house capability for critical AI, exit strategies, contractual protections. Trade-offs explicit. See §9.7. |

| How is AI risk reported? | Operational dashboards (continuous), Tactical to AI Governance Steering Committee (monthly), Strategic to Board Audit & Risk Committee (quarterly), Annual comprehensive review. Material events through pre-established escalation. See §11.1. |

| What's in the AI Risk Register? | Risk identifier, title, category, affected AI systems, inherent and residual likelihood/impact, controls, treatment plan, risk owner, review cadence, indicators, material events, status. Maintained by AI Risk Office. See §10.1. |

BFS-AI-002  |  AI Risk Management Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. ISO/IEC 23894:2023 and NIST AI RMF 1.0 Aligned. Subordinate to BFS-AI-001.
