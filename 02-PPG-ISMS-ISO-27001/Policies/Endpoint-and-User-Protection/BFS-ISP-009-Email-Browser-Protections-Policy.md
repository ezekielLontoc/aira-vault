---
title: "BFS-ISP-009-Email-Browser-Protections-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Endpoint-and-User-Protection/BFS-ISP-009-Email-Browser-Protections-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:39Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Endpoint-and-User-Protection"
aliases:
  - "BFS-ISP-009-Email-Browser-Protections-Policy"
creator: "Un-named"
created: "2026-04-11T17:03:00Z"
modified: "2026-04-23T06:15:00Z"
---

| BFS INFORMATION SECURITY POLICY<br>EMAIL AND WEB BROWSER<br>PROTECTIONS POLICY<br>Email Security, Anti-Phishing, Browser Hardening, and Human Attack Surface Reduction<br>Policy Reference: BFS-ISP-009<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Aligned with CIS Controls v8 (Control 9)  \|  ISO/IEC 27001:2022<br>Philippine Data Privacy Act (RA 10173)  \|  BSP Circular 1140  \|  PCI DSS v4.0<br>Companion to BFS-ISP-003 \| BFS-ISP-004 \| BFS-ISP-006 \| BFS-ISP-007 \| BFS-ISP-008 |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Email and Web Browser Protections Policy |

| --- | --- |

| Policy Reference | BFS-ISP-009 |

| Policy Owner | IT Head |

| Document Author | IT Head and Infrastructure Team |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL – For Internal Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to threat landscape, email platform, or browser technology |

| Supersedes | Not Applicable (New Policy) |

| Related Policies | BFS-ISP-003 (Data Protection); BFS-ISP-004 (Secure Configuration); BFS-ISP-005 (Account and Access Management); BFS-ISP-006 (Access Control Management); BFS-ISP-007 (Vulnerability Management); BFS-ISP-008 (Audit Log Management); BFS-ISP-009-AWR (Security Awareness and Training); BFS-ISP-020 (Acceptable Use) |

| Framework Alignment | CIS Controls v8 (Control 9); ISO/IEC 27001:2022 (A.8.7, A.8.23, A.5.14, A.8.20, A.8.21, A.8.26, A.6.3) |

| Regulatory Reference | BSP Circular 1140 (MORB IT Risk Management); BSP Circular 1048 (Cybersecurity Risk Management); Philippine Data Privacy Act RA 10173; PCI DSS v4.0 (Requirements 5, 12); RA 10175 (Cybercrime Prevention Act); RFC 7208 (SPF), RFC 6376 (DKIM), RFC 7489 (DMARC) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This policy establishes the mandatory requirements, technical standards, and governance framework for protecting BFS Financial Services (hereinafter "the Organization" or "BFS") employees, customers, and systems from threats delivered through email communication channels and web browser usage — the two most frequently exploited initial-access vectors against enterprise organizations globally.

Email is the primary channel for phishing, spear-phishing, Business Email Compromise (BEC), malware delivery, and social engineering attacks. Web browsers are the primary interface through which employees access business applications, cloud services, and the public internet — and a primary vector for drive-by downloads, malicious redirects, credential harvesting, and browser-based exploitation. In the financial services sector, these vectors are weaponized by sophisticated, financially motivated threat actors who specifically target banks, payment processors, and financial intermediaries to facilitate fraud, ransomware, and data theft.

This policy directly implements CIS Controls v8, Control 9 (Email and Web Browser Protections), encompassing all safeguards from 9.1 through 9.7. It is anchored in ISO/IEC 27001:2022 Annex A controls governing malware protection, web filtering, information transfer, network service security, application security requirements, and information security awareness.

The specific objectives of this policy are to:

Deploy and maintain a comprehensive email security stack providing defense-in-depth protection against phishing, malware, BEC, spoofing, and spam at the email gateway, message, and attachment levels;

Implement and enforce email authentication standards (SPF, DKIM, DMARC) to prevent domain spoofing and impersonation of BFS email domains by external threat actors;

Enforce anti-phishing controls including URL rewriting, time-of-click protection, suspicious link warning, and Safe Link detonation to protect users from malicious links regardless of when they were embedded in email;

Define and enforce secure, hardened browser configurations across all BFS-managed endpoints, reducing the browser attack surface through controlled extension management, security settings enforcement, and sandboxing;

Establish DNS filtering and Secure Web Gateway (SWG) controls as the primary technical defense against web-based threats, blocking malicious domains, phishing sites, malware distribution, and unauthorized content categories;

Reduce human susceptibility to email and web-based attacks through mandatory security awareness training and regular, metrics-driven simulated phishing exercises;

Define the controls governing the handling of email attachments, external links, and web downloads to prevent malware ingress through these channels;

Ensure compliance with BSP Circular 1140 and 1048, the Philippine Data Privacy Act (RA 10173), and PCI DSS v4.0 anti-malware and secure communication requirements;

Support forensic investigation of email-based incidents through comprehensive email header preservation, attachment quarantine, and gateway logging.

# 2.  SCOPE

## 2.1  Organizational Scope

This policy applies to all individuals who use BFS email systems, web browsers, or internet access for BFS business purposes, including:

All full-time and part-time BFS employees across all departments and locations;

Contractors, consultants, and third-party personnel using BFS-provisioned email accounts or accessing BFS systems via web browsers on BFS-managed or BYOD devices;

Any individual accessing BFS email accounts or web applications from non-BFS-managed devices under an approved BYOD arrangement;

IT and Security personnel responsible for configuring, managing, and monitoring email and web security infrastructure.

## 2.2  Technical Scope

This policy governs the following systems, platforms, and controls:

### 2.2.1  Email Systems and Infrastructure

BFS corporate email platform (Microsoft 365 / Exchange or equivalent), including all mailboxes, shared mailboxes, distribution lists, and mail-enabled groups;

Email security gateway (cloud-based or on-premise) performing inbound and outbound filtering, anti-spam, anti-malware, and anti-phishing inspection;

Email authentication infrastructure: SPF (DNS TXT records), DKIM (cryptographic signing), DMARC (policy enforcement and reporting);

Email encryption capabilities for sensitive external communications;

Email archival and discovery systems;

Transactional and automated email systems sending notifications on behalf of BFS applications (internet banking, ATM, payment alerts).

### 2.2.2  Web Browsers

All BFS-approved web browsers installed on BFS-managed endpoints (desktop, laptop, and mobile): Google Chrome (primary), Microsoft Edge (secondary), and any other browser approved by IT Security;

Browser configuration, extension management, and security settings on BFS-managed endpoints;

Browser-based access to web applications, cloud services, and internet resources from BFS-managed and BYOD devices.

### 2.2.3  Web and Internet Access Controls

Secure Web Gateway (SWG) performing URL categorization, content filtering, malware scanning, and SSL/TLS inspection for all outbound web traffic from BFS-managed endpoints and servers;

DNS filtering infrastructure controlling domain resolution for all BFS-managed devices;

Web Application Firewall (WAF) protecting inbound traffic to BFS web applications (governed jointly with BFS-ISP-006).

## 2.3  Environmental Scope

This policy applies to all BFS environments and covers email and web browser usage from all locations — BFS premises, remote/home offices, and in-transit — on both BFS-managed devices and BFS-enrolled BYOD devices, whenever BFS email accounts or BFS business web applications are being accessed.

# 3.  DEFINITIONS

For the purposes of this policy, the following definitions apply:

| Term | Definition |

| --- | --- |

| Phishing | A social engineering attack conducted via email (or other channels) in which the attacker impersonates a trusted entity to deceive the recipient into disclosing credentials, personal data, or financial information, or into executing a malicious action such as clicking a malicious link or opening a weaponized attachment. |

| Spear Phishing | A targeted phishing attack directed at a specific individual or organization, using personalized content derived from publicly available information or prior reconnaissance to increase the appearance of legitimacy. |

| Business Email Compromise (BEC) | A sophisticated fraud scheme in which an attacker gains access to or spoofs a legitimate business email account — typically a CEO, CFO, or finance officer — and uses it to authorize fraudulent financial transactions, wire transfers, or credential disclosure. BEC is one of the highest-financial-impact threat categories facing financial institutions. |

| Email Spoofing | The forgery of the email sender address to make a message appear to originate from a trusted person or domain when it does not. Email authentication standards (SPF, DKIM, DMARC) are the primary technical defenses against spoofing. |

| SPF (Sender Policy Framework) | An email authentication protocol (RFC 7208) that allows the owner of a domain to publish a list of authorized mail servers permitted to send email on behalf of that domain. Receiving mail servers check inbound email against the sender domain's SPF record. |

| DKIM (DomainKeys Identified Mail) | An email authentication standard (RFC 6376) that allows the sending organization to cryptographically sign outbound email with a private key. Receiving servers verify the signature against the public key published in DNS, confirming message integrity and sender domain authenticity. |

| DMARC (Domain-based Message Authentication, Reporting and Conformance) | An email authentication policy framework (RFC 7489) that allows domain owners to specify how receiving mail servers should handle messages that fail SPF and/or DKIM checks. DMARC supports three policy modes: none (monitoring only), quarantine (deliver to spam), and reject (block delivery). DMARC also enables aggregate and forensic reporting. |

| Email Gateway | A security-focused mail transfer agent or proxy that inspects, filters, and controls inbound and outbound email traffic before it reaches or leaves the internal email server. The email gateway enforces anti-spam, anti-malware, anti-phishing, and content control policies. |

| URL Rewriting | An email security technique where hyperlinks embedded in inbound email are replaced by proxy URLs that route click-through traffic via the email security platform, enabling time-of-click scanning, blocking of newly identified malicious URLs, and click logging. |

| Time-of-Click Protection | A security control that re-evaluates the safety of a URL at the moment the user clicks it (not just at delivery time), protecting against delayed-detonation attacks where a URL is benign at delivery but redirected to a malicious site after passing gateway inspection. |

| Attachment Sandboxing | A security technique in which email attachments are executed in an isolated virtual environment (sandbox) to observe their behavior before delivery to the recipient, detecting malware that evades signature-based scanning through obfuscation or zero-day techniques. |

| Email Encryption | The use of cryptographic techniques to protect the confidentiality of email message content in transit and at rest. Transport Layer Security (TLS) protects the SMTP session; end-to-end encryption (S/MIME, PGP) protects message content from sender to recipient. |

| Anti-Spam | A set of technical controls that filter inbound email to detect and block or quarantine unsolicited bulk email (spam), reducing the volume of unwanted email reaching user mailboxes and reducing the attack surface for email-based threats embedded in spam campaigns. |

| Safe Links / Safe Attachments | Email security features (e.g., Microsoft Defender for Office 365 Safe Links and Safe Attachments) that inspect URLs and attachments in real time, detonate suspicious files in a sandbox, and block access to malicious content at click-time or delivery time. |

| BIMI (Brand Indicators for Message Identification) | An emerging email standard that allows organizations to display their brand logo in the email client of recipients when email authentication (DMARC, DKIM) passes, increasing legitimate email recognizability and reducing phishing effectiveness. |

| Browser Extension | A software add-on installed into a web browser to add functionality. Browser extensions can significantly expand the browser's attack surface — malicious or compromised extensions can capture credentials, intercept web traffic, or execute unauthorized actions. |

| Browser Sandbox | A security mechanism that isolates web content from the underlying operating system, limiting the ability of malicious web content to access system resources, execute code with elevated privileges, or persist after the browser session ends. |

| Secure Web Gateway (SWG) | A proxy-based security solution that inspects and controls outbound web traffic, enforcing URL categorization filtering, malware scanning, SSL/TLS inspection, and data loss prevention policies for all internet-bound traffic from managed endpoints. |

| DNS Filtering | A security control that blocks access to malicious, phishing, or policy-prohibited domains at the DNS resolution layer — before a connection is established. DNS filtering is effective against a wide range of threats as most internet communication requires DNS resolution. |

| Drive-by Download | A malware delivery technique in which malicious code is automatically downloaded and executed on a user's device simply by visiting a compromised or malicious web page, without any deliberate user action such as clicking a download link. |

| Impersonation Attack | An attack in which the threat actor convinces a target that they are communicating with a trusted entity — an executive, bank, government body, or vendor — to manipulate them into disclosing credentials, authorizing transactions, or providing sensitive information. |

| Email Header | Metadata attached to an email message recording: sender, recipient, subject, date, message routing path (Received headers), authentication results (SPF, DKIM, DMARC), and message ID. Email headers are essential forensic evidence for email incident investigation. |

| Transactional Email | Automated email sent by BFS applications (internet banking notifications, OTPs, transaction confirmations, ATM alerts) on behalf of BFS to customers. Transactional email domains must be fully authenticated (SPF, DKIM, DMARC) to prevent spoofing and maintain customer trust. |

# 4.  THREAT LANDSCAPE AND PROTECTION ARCHITECTURE

Email and web browser attacks represent the dominant initial-access vector in the financial services sector. Understanding the threat categories this policy addresses is essential context for the controls defined herein.

| Threat Category | Attack Description | Financial Services Specific Risk | Primary BFS Mitigating Control |

| --- | --- | --- | --- |

| Phishing / Spear Phishing | Mass or targeted email with malicious links or attachments impersonating trusted entities. | Credential theft for internet banking admin, core banking access, payment platform. | Email gateway URL scanning; URL rewriting; time-of-click protection; phishing simulation training. |

| Business Email Compromise | Compromised or spoofed executive email used to fraudulently authorize wire transfers or change payee details. | Unauthorized wire transfers; fraudulent SWIFT transactions; payroll diversion — average BEC loss millions of USD. | DMARC reject policy; BEC-specific SIEM rules; dual authorization for large transfers; executive impersonation detection. |

| Malware via Email | Weaponized attachments (macros, executables, PDFs with exploits, archive files) delivering ransomware, Trojans, keyloggers. | Ransomware encrypting core banking systems; keyloggers capturing banking credentials; lateral movement to payment systems. | Attachment sandboxing; macro blocking; file type restrictions; EDR behavioral detection. |

| Domain Spoofing | Sending email using look-alike domains (bfs-bank.com, bfs.com.ph vs bfs.ph) or exact-match domain spoofing. | Customer fraud; supplier payment fraud; internal employee deception. | DMARC reject; look-alike domain monitoring; customer email authentication awareness. |

| Homograph Attacks | Use of Unicode characters that visually resemble ASCII to create convincing spoofed domains. | Phishing pages mimicking BFS internet banking portal. | DNS filtering; IDN homograph blocking; browser punycode display. |

| Drive-by Download | Visiting a compromised web page automatically installs malware without user interaction. | Endpoint compromise leading to credential theft, lateral movement, data exfiltration. | SWG malware scanning; DNS filtering; browser sandboxing; web content filtering. |

| Credential Harvesting Sites | Fake login pages mimicking BFS or trusted third-party portals collecting employee or customer credentials. | Compromised admin credentials enabling unauthorized access to BFS systems; customer account takeover. | DNS filtering; SWG URL categorization; browser safe browsing; phishing simulation training. |

| Malicious Browser Extensions | Extensions that capture keystrokes, steal cookies, or intercept web traffic installed on employee browsers. | Session token theft; credential interception; unauthorized transaction injection. | Browser extension allowlist enforcement; extension permission monitoring; MDM-enforced browser policy. |

| Email Data Exfiltration | Using email to send sensitive BFS data to unauthorized external recipients — intentional or inadvertent. | Customer PII, financial records, or source code leaked externally. | Outbound DLP on email gateway; email classification tagging; external recipient warnings. |

## 4.1  BFS Email Security Architecture — Layered Defense

BFS implements a layered email security architecture providing defense-in-depth against the full spectrum of email-borne threats:

| Layer | Control | Function | Enforcement Point |

| --- | --- | --- | --- |

| L1 — Sender Auth | SPF / DKIM / DMARC | Prevent domain spoofing; authenticate sender identity; enforce reject policy. | DNS records; inbound gateway DMARC enforcement. |

| L2 — Gateway | Email Security Gateway | Anti-spam scoring; anti-malware scanning; reputation filtering; connection-level blocks. | Cloud email security platform (pre-delivery). |

| L3 — Content | Content & Attachment Scanning | Attachment sandboxing; macro blocking; file type policy; malware signature + heuristic scan. | Email gateway sandbox; AV engine. |

| L4 — URL | URL Rewriting & Safe Links | Rewrite all inbound URLs; time-of-click re-scan; block newly weaponized links post-delivery. | Email gateway / M365 Safe Links. |

| L5 — Impersonation | Anti-Impersonation / BEC | Executive impersonation detection; lookalike domain detection; display name spoofing alerts. | Email gateway ML models; DMARC. |

| L6 — DLP | Outbound DLP | Block or quarantine outbound email containing classified data (PII, financial records, keys). | Email gateway DLP engine; M365 DLP policies. |

| L7 — Encryption | Email Encryption (TLS / S/MIME) | Enforce TLS for transit; S/MIME for sensitive external communications. | Email gateway TLS enforcement; M365 OME. |

| L8 — User | Phishing Simulation + Training | Build human resilience; reduce click rates; provide just-in-time education. | Security awareness platform; reported phishing button. |

# 5.  POLICY STATEMENTS

The following policy statements are mandatory and apply to all personnel, systems, and environments within scope. Non-compliance is subject to enforcement as defined in Section 10.

## 5.1  Email Authentication — SPF, DKIM, and DMARC

PS-1.1  BFS shall publish and maintain valid SPF records for all BFS-owned email-sending domains, explicitly listing all authorized mail sending services and infrastructure. SPF records shall include an 'all' mechanism set to '-all' (hard fail), directing receiving servers to reject email from unauthorized sources.

PS-1.2  DKIM signing shall be enabled for all outbound email sent from BFS-owned domains, including transactional email domains used by internet banking, payment notification, and ATM alert systems. DKIM keys shall use a minimum of 2048-bit RSA or equivalent elliptic curve cryptography. DKIM keys shall be rotated at least annually.

PS-1.3  DMARC shall be published and enforced for all BFS-owned email domains at the 'reject' policy level (p=reject), directing receiving mail servers to reject messages that fail both SPF and DKIM alignment. A DMARC quarantine policy (p=quarantine) is the minimum acceptable configuration; monitoring-only (p=none) is not acceptable as the steady-state DMARC policy for BFS primary sending domains.

PS-1.4  BFS shall subscribe to and actively monitor DMARC aggregate (rua) and forensic (ruf) reports to detect and investigate unauthorized use of BFS email domains. DMARC reports shall be reviewed at least weekly. Any unauthorized sending source identified in DMARC reports shall be investigated and, where confirmed fraudulent, reported to relevant authorities and domain registrars.

PS-1.5  Newly registered or acquired email domains, including transactional email subdomains, shall be configured with SPF, DKIM, and DMARC before any email is sent from those domains in production. No BFS email domain shall operate without DMARC enforcement in production.

## 5.2  Inbound Email Security Gateway

PS-2.1  All inbound email destined for BFS mailboxes shall be processed through a BFS-approved email security gateway before delivery to the internal email server or cloud email platform. Direct delivery of external email that bypasses the email security gateway is prohibited.

PS-2.2  The email security gateway shall enforce, at minimum, the following controls on all inbound email:

Anti-spam scoring with adaptive machine learning and reputation-based filtering;

Anti-malware scanning using multiple scanning engines with current signature databases;

Attachment sandboxing for executable files, Office documents with macros, PDF files, archive files, and all other attachment types defined as high-risk in the BFS Email Attachment Control Standard (Section 5.4);

URL reputation filtering blocking links to known malicious domains;

DMARC, DKIM, and SPF validation with enforcement per the BFS DMARC policy;

Header analysis for spoofing indicators (mismatched From/Reply-To, display name spoofing, look-alike domain detection);

Executive impersonation and BEC detection using AI/ML models trained on financial services threat patterns.

PS-2.3  Email security gateway signature databases, threat intelligence feeds, and ML models shall be updated at least daily. Critical threat intelligence updates (e.g., active phishing campaigns targeting financial institutions) shall be applied within four (4) hours of receipt.

PS-2.4  Inbound emails from external senders that fail DMARC validation (SPF and DKIM both fail) for BFS-controlled domains shall be rejected at the gateway and not delivered to user mailboxes. The sending source shall be logged for DMARC reporting analysis.

PS-2.5  All inbound email gateway processing events — including delivery, quarantine, blocking decisions, and malware detections — shall be logged with full email header preservation and forwarded to the SIEM. Malware detections shall generate an immediate SIEM alert for SOC investigation.

## 5.3  URL Rewriting and Anti-Phishing Controls

PS-3.1  URL rewriting shall be enabled on all inbound email. All hyperlinks in inbound email messages shall be rewritten through the email security gateway's proxy URL, enabling: time-of-click re-evaluation of URL safety, blocking of URLs that become malicious after initial delivery, and logging of all URL click events with user identity and timestamp.

PS-3.2  Time-of-click URL evaluation shall be enforced for all rewritten URLs. If a URL is determined to be malicious at the time of click — even if it appeared benign at delivery — the user shall be presented with a security warning and access to the destination shall be blocked. Click events and block decisions shall be logged and correlated in the SIEM.

PS-3.3  Suspicious links — links in email from external senders leading to newly registered domains, domains not previously observed in BFS traffic, or domains with low reputation — shall be flagged with a user-facing warning overlay requiring active user acknowledgement before proceeding. This warning shall describe the nature of the risk and encourage the user to report the email if it appears to be phishing.

PS-3.4  BFS shall deploy a 'Report Phishing' button or equivalent user-accessible reporting mechanism in the email client, enabling employees to report suspected phishing emails directly to the SOC with a single click. Reported emails shall be automatically submitted to the email security platform for analysis and, where confirmed malicious, shall trigger retroactive quarantine of the same message in other mailboxes.

PS-3.5  The email security gateway shall maintain integration with threat intelligence sources to receive real-time indicators of compromise (IoCs) for new phishing campaigns, enabling proactive blocking of emerging phishing URLs before they are clicked.

## 5.4  Email Attachment Controls

PS-4.1  The following attachment types shall be blocked at the email security gateway for all inbound email from external senders and shall not be delivered to BFS mailboxes:

Executable files: .exe, .msi, .bat, .cmd, .com, .scr, .vbs, .vbe, .js, .jse, .wsf, .wsh, .ps1, .psm1, .psd1;

Archive files containing executable payloads: detection performed by content inspection, not extension-based blocking alone;

Office files with macro content (VBA macros): .xlsm, .xlsb, .docm, .dotm, .pptm, .potm unless from pre-approved, verified senders;

ISO, IMG, and virtual disk image files;

LNK (Windows shortcut) files;

Any other file type deemed high-risk by the CISO, based on current threat intelligence.

PS-4.2  PDF files and standard Microsoft Office files (.docx, .xlsx, .pptx) from external senders shall be sandboxed before delivery. Files exhibiting suspicious behavior in the sandbox (C2 communication attempts, privilege escalation, file system modification) shall be blocked and the associated email quarantined.

PS-4.3  Password-protected archive files (.zip, .7z, .rar, .tar) that cannot be inspected shall be treated as high-risk and quarantined pending review. The recipient shall be notified that a password-protected attachment is pending review and may be released after manual inspection by the IT Security team.

PS-4.4  Outbound email attachment size limits shall be enforced. Attachments exceeding the defined size limit shall be rejected. Users requiring transfer of large files externally shall use the BFS-approved secure file transfer platform.

PS-4.5  Macro execution shall be disabled by default in all Microsoft Office applications on BFS-managed endpoints via Group Policy or MDM configuration, consistent with BFS-ISP-004 hardening baselines. Users shall not be permitted to enable macros from email attachments. Only macros from digitally signed, trusted publishers shall be permitted to execute.

## 5.5  Outbound Email Controls and DLP

PS-5.1  All outbound email from BFS email accounts shall be processed through the email security gateway for DLP inspection before delivery to external recipients. Outbound DLP policies shall inspect email body content and attachments for patterns consistent with: customer PII and SPI, financial account numbers, payment card data (PAN), internal BFS classification markers (CONFIDENTIAL, TOP SECRET), and encryption key material.

PS-5.2  Outbound emails triggering CONFIDENTIAL or TOP SECRET classification DLP rules shall be: (a) blocked and the sender notified if the recipient is external and no business justification or approved exception exists; or (b) quarantined for supervisor review if the content is borderline. DLP match events shall be logged in the SIEM.

PS-5.3  Email encryption shall be enforced for outbound email containing CONFIDENTIAL data sent to external recipients. BFS shall use TLS-enforced delivery as the minimum (SMTP MTA-STS or STARTTLS with mandatory verification), with S/MIME or equivalent end-to-end encryption required for TOP SECRET data communications with external parties. BFS shall maintain an email encryption key directory for S/MIME certificate management.

PS-5.4  Automatic email forwarding rules that redirect BFS email to personal or external email accounts are prohibited. The email gateway shall enforce a block on all automatically forwarded outbound email to non-BFS domains. Users requiring access to BFS email on personal devices shall do so through the BFS-approved mobile email client with MDM enrollment.

PS-5.5  BFS shall monitor outbound email for indicators of account compromise — specifically: emails sent outside normal business hours, emails with unusual recipient patterns, emails sent to large external recipient lists, and emails containing unusual attachment types or sensitive content from accounts not previously exhibiting such patterns. These indicators shall trigger SIEM alerts for SOC investigation.

## 5.6  Email Usage and Acceptable Use

PS-6.1  BFS corporate email accounts shall be used exclusively for BFS business purposes. The use of BFS email accounts to subscribe to personal mailing lists, conduct personal correspondence, or operate personal business is prohibited, as these activities increase spam and phishing exposure.

PS-6.2  Employees shall not use personal email accounts (Gmail, Yahoo, Hotmail, etc.) to conduct BFS business, send BFS data, or communicate with customers, partners, or vendors on behalf of BFS. All BFS business communications shall originate from BFS-provisioned email addresses.

PS-6.3  Employees shall be vigilant of phishing indicators and shall report suspected phishing emails using the designated reporting mechanism before clicking any links or opening attachments. Common phishing indicators include: urgency language, unexpected requests for credentials or wire transfers, mismatched sender domains, unexpected attachments, and unusual payment instructions.

PS-6.4  Employees shall not click on links or open attachments in unsolicited email from unknown senders without first verifying authenticity. For email purportedly from known senders but containing unusual requests (especially wire transfer requests, credential requests, or urgent payment instructions), employees shall verify the request through an independent channel (phone call to a known number) before taking any action.

PS-6.5  Any employee who clicks on a phishing link, opens a malicious attachment, discloses credentials in response to a phishing email, or suspects their email account has been compromised shall immediately report the incident to the IT Service Desk or SOC without delay, even if they are uncertain.

## 5.7  Web Browser Security Controls

PS-7.1  All BFS-managed endpoints shall have an approved, current, and security-configured web browser as the standard browser. The list of approved browsers shall be maintained by IT Security and published in the BFS Software Allowlist (BFS-ISP-002). Only browsers on the approved list may be installed on BFS-managed endpoints.

PS-7.2  Browser security settings on all BFS-managed endpoints shall be enforced via Group Policy (Windows) or MDM/configuration profile (macOS and mobile). Individual users shall not be permitted to modify browser security settings below the BFS-defined baseline. The following settings shall be enforced at minimum:

Automatic browser updates enabled and enforced; browsers running EOL or unsupported versions are prohibited;

Safe Browsing (Google Safe Browsing or equivalent) enabled in Enhanced Protection mode;

Pop-up blocking enabled for all sites not on an approved allowlist;

Third-party cookie blocking enforced;

HTTPS-Only mode enforced (Chrome: HTTPS-First mode; Edge: Secure Network equivalent);

Password saving in the browser disabled — users shall use the BFS-approved enterprise password manager only;

Browser history sync to personal accounts disabled on BFS-managed devices;

JavaScript execution: enabled by default but blocked for known malicious categories by SWG/DNS filtering.

PS-7.3  Browser extension management shall be enforced through Group Policy or MDM. The following restrictions apply to browser extensions on BFS-managed devices:

Only extensions on the BFS-approved browser extension allowlist (maintained by IT Security, reviewed quarterly) may be installed;

Extensions requiring access to all websites, ability to read and modify all data on all websites, or access to sensitive browser APIs shall be reviewed by IT Security before approval;

Unapproved browser extensions discovered on managed endpoints shall be automatically uninstalled by endpoint management tooling;

AI-powered browser extensions (AI writing assistants, AI summarizers) must be assessed for data privacy and security implications before approval, and shall not be permitted to process CONFIDENTIAL or TOP SECRET BFS data.

PS-7.4  Browsers shall be kept fully up to date with the latest security patches. Critical browser security patches shall be deployed to all managed endpoints within seventy-two (72) hours of release. A browser running a version older than the latest release by more than two (2) patch cycles shall be flagged as non-compliant.

PS-7.5  Browser sandboxing shall be enabled and maintained in its default state on all BFS-managed endpoints. Site isolation shall be enabled in Chrome and equivalent feature in other approved browsers to protect against speculative execution attacks (Spectre/Meltdown) and cross-site data leakage.

## 5.8  DNS Filtering and Secure Web Gateway

PS-8.1  All outbound internet-bound DNS queries from BFS-managed endpoints and servers shall be resolved through BFS-approved DNS filtering resolvers. Direct DNS queries to public resolvers (8.8.8.8, 1.1.1.1) are prohibited on BFS-managed devices. DNS filtering shall block resolution of known malicious domains, phishing domains, malware C2 infrastructure, and policy-prohibited categories.

PS-8.2  All outbound internet-bound HTTP and HTTPS traffic from BFS-managed endpoints shall be routed through the BFS Secure Web Gateway (SWG). The SWG shall enforce URL categorization filtering, malware scanning, SSL/TLS inspection, and data loss prevention inspection. Direct internet access bypassing the SWG is prohibited on BFS-managed devices, as governed by BFS-ISP-006.

PS-8.3  SSL/TLS inspection shall be performed by the SWG on all HTTPS traffic, enabling deep content inspection of encrypted web traffic for malware and data exfiltration. The SWG certificate used for inspection shall be distributed to all managed endpoints. Legitimate categories where TLS inspection shall not apply — such as financial services and healthcare sites — shall be defined in an approved TLS inspection bypass list, reviewed annually.

PS-8.4  At minimum, the following content categories shall be blocked by the SWG and DNS filtering for all BFS-managed devices: malware distribution sites; phishing and credential harvesting sites; known command-and-control (C2) infrastructure; anonymizing proxies and VPN services not approved by BFS; illegal and harmful content; peer-to-peer file sharing platforms; newly registered domains within the first thirty (30) days of registration (requiring explicit approval for legitimate exceptions).

PS-8.5  Newly registered domains are a primary indicator of phishing infrastructure. The SWG and DNS filtering shall apply enhanced scrutiny (warn or block) to domains registered within the preceding thirty (30) days. Legitimate business destinations on newly registered domains shall be added to an approved allowlist via a documented exception process.

## 5.9  Security Awareness and Phishing Simulation

PS-9.1  All BFS employees and contractors shall complete mandatory email and web security awareness training at onboarding and on an annual basis thereafter. Training shall cover at minimum: recognition of phishing, spear phishing, BEC, and social engineering attacks; safe email handling practices; safe web browsing practices; the BFS phishing report button and incident reporting procedure; and consequences of clicking malicious links or opening malicious attachments.

PS-9.2  BFS shall conduct simulated phishing exercises at least quarterly using a range of phishing scenarios reflecting current real-world threats relevant to financial services. Simulated phishing campaigns shall test employees at all levels of the organization, including senior management and executives, who are priority targets for BEC attacks.

PS-9.3  Phishing simulation results shall be tracked per employee. Employees who click simulated phishing links or submit credentials in phishing simulations shall be enrolled in mandatory targeted security awareness training within five (5) business days of the simulation. Employees who repeatedly fail simulations (three or more failures within a twelve-month period) shall be escalated to their manager and the CISO Office for additional intervention.

PS-9.4  Phishing simulation results and awareness training completion rates shall be reported monthly to the CISO and quarterly to the Board Audit and Risk Committee. The phishing simulation click rate shall be tracked as a KRI. A click rate above ten percent (10%) on any simulated campaign shall trigger a review and enhancement of the awareness training program.

PS-9.5  BFS shall operate a mechanism — technical (API-based reporting button) or procedural (reporting email address: phishing@bfs.com.ph) — for employees to report suspected real phishing emails. Reported phishing emails shall be investigated by the SOC within one (1) hour. Where a real phishing campaign is confirmed, retroactive quarantine of matching messages across all mailboxes shall be performed.

## 5.10  Look-alike Domain and Brand Monitoring

PS-10.1  BFS shall maintain an active domain monitoring program to detect the registration of look-alike domains — domains that impersonate or closely resemble BFS domain names — used by threat actors for phishing, BEC, and customer fraud campaigns.

PS-10.2  Upon identification of a confirmed malicious look-alike domain impersonating BFS or BFS brands, BFS shall pursue one or more of the following actions: (a) submit the domain for takedown via the domain registrar; (b) add the domain to the BFS DNS filtering block list; (c) report the domain to ICANN, relevant law enforcement, and NPC where customer data is at risk; (d) issue customer notifications where customers may have been exposed.

PS-10.3  The IT Security team shall review look-alike domain monitoring alerts at least weekly. Active phishing campaigns impersonating BFS (customer-facing phishing pages, fake BFS login portals) shall be treated as CRITICAL security incidents and escalated to the CISO immediately.

# 6.  PROCEDURES

## 6.1  Email-Based Phishing Incident Response Procedure

The following procedure shall be followed when a real phishing email is reported or detected within the BFS environment:

Detection / Report: Employee reports suspected phishing via the 'Report Phishing' button, or the SOC receives an email gateway malware/phishing detection alert.

SOC Initial Triage (within 1 hour): SOC analyst examines the reported email headers, URLs, attachments, and sender characteristics to determine whether it is a genuine phishing email or a false positive (e.g., simulated phishing exercise).

Scope Assessment: If confirmed genuine, SOC queries the email gateway to determine: all BFS recipients of the same or similar emails (same sender, same subject, same URL/attachment hash), whether any recipients clicked embedded links or opened attachments, and whether any email accounts have been accessed from unusual locations.

Retroactive Quarantine: All identified copies of the confirmed phishing email across all BFS mailboxes are retroactively quarantined. Recipients who received the email are notified via a separate, clean email that a phishing email has been removed from their mailbox.

User Impact Assessment: The SOC contacts any recipients who clicked the phishing link or opened the attachment to assess whether credentials were entered or malware was executed. Affected accounts are immediately locked and passwords reset pending investigation.

Endpoint Investigation: If malware execution is suspected (based on attachment type, sandbox results, or user report of unusual behavior), the affected endpoint is isolated and a forensic investigation initiated per BFS-ISP-009 Incident Response.

Threat Intelligence Update: The phishing URL, sender domain, and attachment hashes are added to the BFS DNS filtering and email gateway block lists. If the domain is newly registered, a look-alike domain takedown request is initiated.

Post-Incident Report: A post-incident summary documenting the phishing campaign, affected users, actions taken, and recommended preventive measures is submitted to the CISO within five (5) business days.

## 6.2  BEC (Business Email Compromise) Response Procedure

BEC incidents require immediate response due to the potential for irreversible financial loss. The following accelerated procedure applies:

Detection: SIEM alert or employee report identifies a potential BEC: executive impersonation email requesting wire transfer, payment details change request, or credential disclosure.

Immediate Finance / Treasury Notification (within 15 minutes): IT Security or SOC immediately notifies the Finance / Treasury team and the recipient's manager NOT to process any financial transactions or share credentials based on the suspect communication.

CISO Notification (within 15 minutes): CISO is briefed immediately. If a fraudulent payment has already been initiated, the CISO escalates to the CEO and CFO and initiates emergency contact with the sending bank for transaction recall.

Email Investigation: SOC investigates the email headers to determine whether the executive's account was genuinely compromised (unauthorized access event in IdP logs) or whether the email was externally spoofed (DMARC failure, look-alike domain).

Account Containment (if compromise): If the executive's email account is confirmed compromised, the account is immediately locked, all active sessions are terminated, credentials are reset, and a full forensic investigation of the account's email history is performed.

Regulatory and Legal Notification: If fraud has occurred or is suspected, the CISO notifies BSP (as required by BSP Circular 1048 incident reporting requirements), NPC (if personal data was involved), and initiates legal proceedings where appropriate.

Preventive Review: Post-incident, the DMARC policy, executive impersonation detection rules, and BEC awareness training content are reviewed and enhanced.

## 6.3  DMARC Configuration and Maintenance Procedure

BFS DMARC configuration shall be maintained through the following governance process:

Initial DMARC Deployment: New domains are deployed with p=none (monitoring mode) initially. DMARC reports are monitored for a minimum of thirty (30) days to identify all legitimate email sending sources before progressing to enforcement.

SPF and DKIM Alignment: Before moving to p=quarantine or p=reject, confirm all legitimate sending sources are covered by SPF records and signing with DKIM. Sources that cannot be aligned are reviewed and either authorized or blocked.

Quarantine Transition: After SPF/DKIM alignment is confirmed, move to p=quarantine. Monitor quarantine rates for legitimate email for a minimum of fourteen (14) days.

Reject Enforcement: Move to p=reject once quarantine rates for legitimate email are below one percent (1%). All BFS primary sending domains must reach p=reject within ninety (90) days of initial DMARC deployment.

Ongoing Monitoring: DMARC aggregate and forensic reports are reviewed weekly. New unauthorized sending sources identified in reports are investigated. Legitimate sending sources discovered post-deployment (e.g., new third-party marketing platform) are evaluated for SPF/DKIM alignment before being authorized.

DKIM Key Rotation: DKIM private keys are rotated annually using a dual-key rotation process that ensures continuity of delivery: the new key is published in DNS and used for signing for thirty (30) days before the old key is removed.

## 6.4  Browser Security Configuration Procedure

The following procedure governs the deployment and maintenance of browser security configurations on BFS-managed endpoints:

Baseline Definition: IT Security and IT Operations jointly define the BFS browser security configuration baseline for each approved browser, aligned with CIS Benchmark recommendations for that browser. The baseline is documented and version-controlled.

Policy Deployment: Browser security configurations are deployed via Group Policy Objects (GPO) for Windows-domain joined devices and MDM configuration profiles for macOS and mobile devices. Configuration is applied before the device is enrolled for production use.

Extension Allowlist Publication: The IT Security team maintains and publishes the approved browser extension allowlist. Extensions are reviewed before addition to the allowlist, assessing: required permissions, vendor reputation, update history, and whether the extension's function is necessary for BFS operations.

Compliance Monitoring: Endpoint management tooling monitors browser configuration compliance daily. Non-compliant settings (e.g., browser security settings modified by a user, unapproved extension installed) are automatically remediated or flagged for IT Operations to address within twenty-four (24) hours.

Patch Deployment: Browser security patches are deployed through the endpoint management platform within seventy-two (72) hours of release. The patch deployment completion rate is reported weekly.

Quarterly Extension Review: The browser extension allowlist is reviewed quarterly by IT Security to remove extensions that have been discontinued, acquired by unknown parties, received security advisories, or are no longer needed.

## 6.5  Suspicious Link and Attachment Handling — User Procedure

All BFS employees shall follow this procedure when encountering suspicious email or web content:

Do Not Click: If an email appears suspicious — unexpected sender, urgent language, unusual attachment, request for credentials or financial action — do not click any links or open any attachments.

Report the Email: Use the 'Report Phishing' button in the email client to report the email to the SOC. Do not forward the phishing email to colleagues or personal accounts.

Verify Through Independent Channel: If the email appears to be from a known colleague or vendor but contains an unusual request (wire transfer, password reset, invoice payment), verify the request by telephoning the sender on a known, independently confirmed phone number — not a number provided in the email.

Report Credential Disclosure: If credentials have been entered on a suspicious website, contact the IT Service Desk immediately and report it as a potential account compromise. Do not wait — every minute of delay increases the risk of unauthorized access.

Quarantine Suspicious Downloads: If a file downloaded from a suspicious website is discovered on a device, do not open it. Contact the IT Service Desk immediately, isolate the device from the network if possible, and await IT Security guidance.

No Self-Recovery: Do not attempt to self-remediate a suspected malware infection by running personal antivirus tools. Contact IT Security and allow them to perform investigation, as self-remediation actions may destroy forensic evidence.

# 7.  GUIDELINES

## 7.1  Email Security Configuration Best Practices

Microsoft 365 Security: For BFS environments using Microsoft 365, the following Microsoft Defender for Office 365 features shall be enabled and configured at the Strict preset level: Anti-phishing policies (with impersonation protection for executive accounts), Safe Links (with URL rewriting for internal Office apps and Teams), Safe Attachments (with Dynamic Delivery), and Zero-Hour Auto Purge (ZAP) for retroactive malware and phishing removal.

Transport Rules: Email transport rules shall be configured to: (a) add external sender warnings to email received from outside BFS; (b) enforce TLS for specific high-risk sending domains; (c) block auto-forward to external domains; (d) apply sensitivity labels to CONFIDENTIAL email.

Quarantine Management: Quarantine release approvals for blocked attachments or phishing-suspected emails shall require IT Security review. Users shall not have self-service release capability for quarantined messages classified as phishing or malware. Users may have limited self-service release for messages classified as spam.

Email Retention and Archiving: BFS email shall be archived in a compliance-accessible, legally defensible email archive for the retention periods defined in BFS-ISP-008. Email archiving shall be independent of user mailbox and not subject to user deletion.

Shared Mailbox Security: Shared mailboxes shall be configured to require individual-account authentication. Shared mailboxes shall not be used with a shared password — access shall be delegated through individual account permissions tracked in the IAM system.

## 7.2  Browser Security Hardening Guidelines

Enterprise Browser Management: BFS shall use enterprise browser management capabilities (Chrome Enterprise, Microsoft Edge for Business) to centrally control browser settings, extensions, and policies across all managed devices without requiring users to manually configure browsers.

Chromium Security Flags: The following Chromium-based browser security flags shall be enabled on all BFS-managed devices where technically applicable: Site Isolation (--site-per-process), Strict Mixed Content blocking, Subresource Integrity enforcement, and Content Security Policy enforcement.

Certificate Transparency: Browsers shall enforce Certificate Transparency verification for all HTTPS connections, protecting against misissued TLS certificates that could be used for man-in-the-middle attacks against BFS users.

Browser Isolation (Advanced): For highest-risk user populations (executives, finance team, privileged IT personnel), BFS should evaluate deployment of browser isolation technology (Remote Browser Isolation, RBI) that executes web browsing in a remote cloud environment, preventing any web-borne malware from reaching the endpoint.

WebAuthn / FIDO2 in Browser: The browser's WebAuthn/FIDO2 API shall be available on all managed endpoints for passwordless and hardware-key authentication to web applications and cloud services. Browser FIDO2 support shall be verified during the browser configuration baseline validation.

## 7.3  Third-Party Email Security Vendor Management

Email Security SLA: BFS's email security vendor (gateway and threat intelligence provider) shall be subject to SLAs covering: signature update frequency (daily minimum); sandbox detection time (< 5 minutes per attachment); platform availability (≥ 99.9%); phishing URL detection rate; and false positive rate. SLAs shall be reviewed at contract renewal.

Threat Intelligence Sharing: BFS shall share confirmed phishing IoCs (URLs, domains, sender IPs) with the email security vendor for inclusion in global threat feeds, improving protection for the broader financial services community.

Email Security Posture Assessment: An independent assessment of BFS's email security posture shall be conducted at least annually, using a third-party email security assessment service or as part of the broader penetration testing program (Section 6.4 of BFS-ISP-007).

## 7.4  Transactional Email Security Guidelines

Dedicated Sending Domains: Transactional email (OTPs, alerts, statements, notifications) shall be sent from dedicated subdomains (e.g., notify.bfs.com.ph, alerts.bfs.com.ph) separate from corporate email domains, enabling independent DMARC enforcement and limiting the blast radius of transactional email abuse.

Customer-Facing Anti-Phishing: BFS shall implement BIMI (Brand Indicators for Message Identification) for transactional email domains to display the BFS logo in supporting email clients, helping customers distinguish legitimate BFS communications from phishing emails.

No Credential Requests in Email: BFS transactional and marketing email shall never request customers to enter passwords, PINs, OTPs, or full account numbers via email or email-embedded links. Customer-facing communications shall direct customers to navigate directly to the BFS portal rather than clicking email links for any sensitive authentication action.

OTP Security: One-Time Passwords (OTPs) sent via email shall: expire within five (5) minutes; be single-use; not contain the associated account number or full PII in the same message; and be sent from an authenticated, DMARC-enforced sending domain.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Receives quarterly phishing simulation metrics and email security KPIs. Reviews significant email-based incidents (BEC, large-scale phishing campaigns). Approves this policy. |

| Chief Information Officer (CIO) | Accountable for the enterprise email and browser protection program. Ensures adequate investment in email security gateway, SWG, DNS filtering, and phishing simulation platform. Reviews monthly KPI reports. Co-approves this policy. |

| Chief Information Security Officer (CISO) | Responsible for design, implementation, and enforcement of this policy. Manages DMARC enforcement roadmap. Approves browser extension allowlist. Oversees phishing simulation program. Reviews BEC and phishing incident post-incident reports. Manages look-alike domain response. Signs off on monthly email security KPI reports. |

| Chief Human Resources Officer (CHRO) | Ensures security awareness training obligations are embedded in employment onboarding and annual HR processes. Manages HR-side follow-up for employees with persistent phishing simulation failures. Ensures email acceptable use provisions are included in employment contracts and HR policies. |

| Data Privacy Officer (DPO) | Reviews outbound email DLP policies for alignment with RA 10173 data minimization and transfer principles. Reviews transactional email privacy implications. Advises on customer phishing notification obligations when customers are targeted by BFS-domain phishing campaigns. |

| Email and Messaging Operations Team | Manages the corporate email platform (Microsoft 365 / Exchange). Configures and maintains email security gateway policies, transport rules, and quarantine management. Manages SPF, DKIM, and DMARC DNS records. Manages email archiving and retention. |

| IT Security Team | Manages the email security gateway threat intelligence integration and attachment sandboxing configuration. Maintains the DMARC monitoring and reporting program. Manages the browser extension allowlist. Conducts email security posture assessments. Responds to email-based security incidents. Manages the look-alike domain monitoring program. |

| Security Operations Center (SOC) | Triages and responds to reported phishing emails and email gateway malware alerts. Investigates BEC incidents. Performs retroactive mailbox quarantine for confirmed phishing campaigns. Monitors SIEM for email-based threat indicators and anomalous outbound email patterns. |

| IT Operations / Endpoint Management Team | Deploys and maintains browser security configurations via GPO and MDM. Manages browser patch deployment. Enforces browser extension allowlist via endpoint management tooling. Ensures DNS filtering is configured on all managed endpoints. |

| Enterprise Architecture Team | Defines email security architecture and browser security standards for new systems and platforms. Ensures secure email integration requirements are embedded in new application designs. Manages SWG architecture and SSL/TLS inspection policy. |

| Security Awareness Program Manager | Designs and delivers the security awareness training curriculum. Manages the phishing simulation platform and campaign schedule. Tracks and reports phishing simulation metrics. Coordinates targeted training for at-risk employees. Reports quarterly metrics to CISO and Board. |

| Finance / Treasury Team | First line of defense against BEC wire transfer fraud. Enforces dual-authorization controls for all wire transfers and payment instructions received via email. Reports suspected BEC immediately to IT Security. |

| Legal and Compliance | Advises on customer notification obligations in phishing incidents. Manages domain takedown requests with domain registrars. Ensures email retention and archiving meets legal and regulatory requirements. |

| All Employees and Third Parties | Complete mandatory email and web security awareness training. Report suspected phishing using the designated button. Do not click suspicious links or open suspicious attachments. Never share BFS credentials in response to email requests. Verify unusual financial or credential requests through independent channels. |

# 9.  REGULATORY COMPLIANCE

## 9.1  BSP Circulars 1140 and 1048

Email and web browser protections are fundamental cybersecurity controls required under BSP Circular 1048 (Cybersecurity Risk Management Guidelines for BSP-supervised Institutions). BFS's implementation supports BSP compliance through:

Anti-phishing and anti-malware controls protecting critical banking systems from email-borne threats as required by the MORB cybersecurity framework;

DMARC enforcement preventing domain spoofing that could be used to defraud BFS customers or employees;

Phishing simulation and awareness training programs as part of BFS's human-layer cybersecurity controls;

BEC detection and response capabilities protecting BFS from fraudulent wire transfers, a significant financial risk category for BSP-supervised institutions;

Email security incident response procedures enabling timely notification to BSP under Circular 1048 incident reporting requirements when email-based breaches occur.

## 9.2  PCI DSS v4.0 Compliance

For BFS systems and personnel within PCI DSS scope:

PCI DSS Requirement 5 (Protect All Systems and Networks from Malicious Software): The email attachment controls, sandboxing, and browser malware protections in this policy directly implement Requirement 5 for email and web browser vectors;

PCI DSS Requirement 5.3 — Anti-malware mechanisms and processes: BFS's email gateway malware scanning, attachment sandboxing, and browser SWG scanning implement this requirement for email and web-based malware delivery;

PCI DSS Requirement 5.4 — Anti-phishing mechanisms: BFS's URL rewriting, time-of-click protection, DMARC enforcement, and phishing awareness training implement PCI DSS Requirement 5.4 explicitly;

PCI DSS Requirement 12.6 — Security awareness education: BFS's mandatory security awareness training and phishing simulation program implements Requirement 12.6 for email security awareness.

## 9.3  Philippine Data Privacy Act (RA 10173)

Email and web security controls support BFS's DPA obligations through:

Preventing unauthorized disclosure of personal data through outbound email DLP controls, encryption enforcement, and the prohibition on auto-forwarding to personal accounts;

Protecting customer personal data from phishing-induced account compromise — a primary source of personal data breaches in the financial services sector;

Enabling forensic investigation of email-based personal data breaches through email gateway logging and email archiving, supporting NPC breach notification obligations;

Ensuring that customer-facing transactional email does not request sensitive personal data (credentials, PINs) via email — reducing the risk of customer data exposure through social engineering.

# 10.  COMPLIANCE AND ENFORCEMENT

## 10.1  Compliance Monitoring

Continuous email gateway monitoring for malware detections, phishing detections, DMARC failures, and DLP triggers, with SIEM forwarding;

Daily SWG and DNS filtering block report review by IT Security;

Weekly DMARC report analysis by the Email Operations team;

Monthly phishing simulation results and security awareness training completion reporting to CISO;

Quarterly browser extension allowlist review and browser patch compliance reporting;

Annual independent email security posture assessment;

Monthly email security KPI report to CISO and CIO.

## 10.2  Key Performance Indicators (KPIs)

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| DMARC policy at 'reject' for all BFS primary sending domains | 100% | Monthly |

| DKIM signing enabled for all BFS sending domains | 100% | Monthly |

| Email gateway signature and intelligence update currency (within 24 hours) | 100% | Daily |

| Email gateway attachment sandboxing coverage (% of applicable attachments) | 100% | Daily |

| DMARC aggregate report review completion | Weekly | Weekly |

| Phishing simulation click rate (all employees, per campaign) | < 5% | Per campaign (quarterly) |

| Phishing simulation credential submission rate | < 2% | Per campaign (quarterly) |

| Phishing simulation reporting rate (employees who report rather than click) | > 80% | Per campaign (quarterly) |

| Security awareness training completion rate | 100% within 30 days of due date | Annual |

| Reported phishing email SOC investigation within 1 hour | 100% | Per report |

| Retroactive quarantine of confirmed phishing campaigns within 4 hours | 100% | Per incident |

| Browser patch deployment within 72 hours of release | ≥ 98% of endpoints | Weekly |

| Endpoints running EOL browser versions (target: zero) | 0 | Daily |

| Unapproved browser extensions detected on managed endpoints (target: zero) | 0 | Weekly |

| SWG DNS filtering enforced on all managed endpoints | 100% | Daily |

| Look-alike domain monitoring alerts reviewed | Weekly | Weekly |

| BEC incident response — Finance notified within 15 minutes | 100% | Per incident |

| Outbound email DLP blocking for CONFIDENTIAL data to unauthorized recipients | 100% | Per trigger |

## 10.3  Enforcement and Disciplinary Action

| Severity | Examples of Violation | Consequence |

| --- | --- | --- |

| Minor | Failure to complete annual security awareness training within the required timeframe; installing an unapproved browser extension; using personal email for non-sensitive BFS communications. | Formal written notice; mandatory training completion; supervisory follow-up. |

| Moderate | Clicking a confirmed phishing link and not reporting it; using personal email to send INTERNAL USE data; deliberately bypassing SWG DNS filtering for unauthorized content; sharing BFS data via non-approved email channels. | Formal warning; mandatory targeted security training; access review; reporting to direct manager. |

| Serious | Using personal email to send CONFIDENTIAL data externally; deliberately disabling browser security settings; repeated failure to report phishing incidents; clicking phishing links repeatedly without reporting and concealing the activity. | Suspension pending investigation; formal disciplinary action up to termination; CISO escalation; data breach assessment. |

| Critical / Legal | Using email to facilitate BEC fraud; deliberately forwarding sensitive customer data to unauthorized external accounts; using BFS email infrastructure to conduct phishing campaigns against BFS customers or external parties. | Immediate termination; referral to law enforcement; prosecution under RA 10175 and applicable fraud laws; mandatory NPC and BSP notification. |

# 11.  EXCEPTIONS HANDLING

## 11.1  Exception Principles

Email and browser security exceptions reduce the effectiveness of controls that protect against the highest-volume, highest-success attack categories. Exceptions shall be rare, specific, time-limited, and subject to compensating controls. Generic or permanently standing exceptions are not acceptable for email security controls.

## 11.2  Exception Categories and Approval Authority

| Exception Type | Example / Condition | Max Duration | Approval Authority |

| --- | --- | --- | --- |

| DMARC Quarantine (not Reject) | Transactional subdomain during alignment phase before reject enforcement. | 90 days maximum | CISO |

| Attachment Type Allowance | Specific business-justified file type from a verified, approved sender. | Permanent (quarterly review) | CISO + Business Owner |

| SWG URL Category Exception | Legitimate business site blocked by URL categorization. | Permanent (quarterly review) | IT Security Manager |

| Newly-Registered Domain Allow | Verified legitimate vendor domain newly registered. | Per case; max 30 days initial | IT Security Manager |

| Macro Execution Allow | Specific digitally-signed macro-enabled workbook from a trusted publisher. | Permanent (requires code signing) | CISO + Application Owner |

| Browser Extension Approval | New extension required for a specific business function. | Permanent (quarterly review) | IT Security Manager |

| TLS Inspection Bypass | Specific URL category excluded from SSL/TLS inspection for legal/privacy. | Permanent (annual review) | CISO + Legal |

| Personal Email for BFS Use | No BFS device available in emergency scenario (temporary, isolated incident). | Per incident; max 24 hours | Direct Manager + CISO notification |

| ABSOLUTE RESTRICTIONS:  No exception may be granted for: (a) operating a BFS email domain at DMARC p=none (monitoring-only) as a permanent configuration; (b) permitting executable file (.exe, .bat, .ps1, .vbs) attachments from unknown or unverified external senders; (c) disabling URL rewriting or time-of-click protection; (d) disabling attachment sandboxing for emails from unknown external senders; (e) permitting direct DNS resolution bypassing BFS DNS filtering for managed endpoints. These restrictions are non-negotiable. |

| --- |

## 11.3  Exception Process

Requestor submits an Email/Browser Security Exception Request via the ITSM portal, providing: specific control, business justification, affected users/systems, risk assessment, duration, and compensating controls.

IT Security reviews the request and assesses residual risk with proposed compensating controls.

Exception is approved per the authority matrix above and logged in the Exception Register.

All email and browser security exceptions are reviewed quarterly as part of the broader exception register review.

Expired exceptions not renewed are treated as policy violations and escalated to the CISO.

# 12.  REVIEW AND REVISION HISTORY

## 12.1  Policy Review Schedule

This policy shall be reviewed annually or upon any of the following triggering events:

Significant changes to BFS's email platform (e.g., migration to a new email provider or gateway platform);

Material shift in the email threat landscape — emergence of new phishing techniques, novel malware delivery methods, or significant BEC campaign patterns targeting Philippine financial institutions;

New or amended BSP circulars, NPC issuances, or PCI DSS requirements affecting email security, anti-phishing, or browser security obligations;

Significant email-based security incident, including a successful BEC attack, large-scale phishing compromise, or domain spoofing campaign impersonating BFS;

Major browser platform changes (new browser version, deprecation of security APIs, significant change in browser extension policies).

## 12.2  Revision History

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Aligned with CIS Controls v8 Control 9, ISO/IEC 27001:2022, PCI DSS v4.0, BSP Circulars 1140 and 1048, and RFC 7208/6376/7489 email authentication standards. | IT Head and Infrastructure Team | IT Head |

|  |  |  |  |  |

# APPENDIX A:  CIS Controls v8 ↔ ISO/IEC 27001:2022 Control Mapping

The table below maps all CIS Controls v8, Control 9 safeguards to their ISO/IEC 27001:2022 Annex A controls, with PCI DSS v4.0 cross-references where applicable.

| CIS Safeguard | CIS Description | ISO Ctrl | ISO Control Title | IG Level |

| --- | --- | --- | --- | --- |

| 9.1 | Ensure Use of Only Fully Supported Browsers and Email Clients | A.8.8 | Management of technical vulnerabilities | IG1 |

| 9.2 | Use DNS Filtering Services | A.8.23 | Web filtering | IG1 |

| 9.3 | Maintain and Enforce Network-Based URL Filters | A.8.23 | Web filtering | IG2 |

| 9.4 | Restrict Unnecessary or Unauthorized Browser and Email Client Extensions | A.8.19 | Installation of software on operational systems | IG2 |

| 9.5 | Implement DMARC | A.5.14 | Information transfer | IG1 |

| 9.6 | Block Unnecessary File Types | A.8.7 | Protection against malware | IG2 |

| 9.7 | Deploy and Maintain Email Server Anti-Malware Protections | A.8.7 | Protection against malware | IG2 |

| N/A | SPF (Sender Policy Framework) — domain spoofing prevention | A.5.14 | Information transfer | All |

| N/A | DKIM (DomainKeys Identified Mail) — email signing and integrity | A.5.14 | Information transfer | All |

| N/A | Anti-phishing — URL rewriting, time-of-click, sandboxing | A.8.7 | Protection against malware | IG2 |

| N/A | BEC detection and executive impersonation controls | A.8.7 | Protection against malware | IG2/3 |

| N/A | Outbound email DLP — data leakage prevention | A.8.12 | Data leakage prevention | IG2 |

| N/A | Email encryption — TLS / S/MIME for CONFIDENTIAL communications | A.8.24 | Use of cryptography | All |

| N/A | Browser hardening — security configuration baseline | A.8.9 | Configuration management | All |

| N/A | Browser patching — supported and current versions | A.8.8 | Management of technical vulnerabilities | All |

| N/A | Network service security — email gateway and SWG | A.8.21 | Security of network services | All |

| N/A | Security awareness and phishing simulation training | A.6.3 | Information security awareness, education and training | All |

| N/A | Audit logging — email gateway and browser events | A.8.15 | Logging | All |

| N/A | Monitoring — email-based threat detection in SIEM | A.8.16 | Monitoring activities | All |

| N/A | Privacy — outbound email DLP for PII protection (RA 10173) | A.5.34 | Privacy and protection of PII | All |

| N/A | Application security — transactional email security | A.8.26 | Application security requirements | All |

| N/A | PCI DSS Req. 5 — protect all systems from malicious software | A.8.7 | Protection against malware | All |

| N/A | PCI DSS Req. 5.4 — anti-phishing mechanisms | A.8.7 | Protection against malware | All |

| N/A | PCI DSS Req. 12.6 — security awareness education program | A.6.3 | Information security awareness, education and training | All |

Legend: IG1 = All organizations (foundational); IG2 = Intermediate maturity; IG3 = Advanced / highest maturity. BFS targets full IG2 compliance enterprise-wide, with IG3 controls (browser isolation for high-risk personnel, BIMI implementation, advanced BEC ML detection, AI-powered phishing simulation) deployed for executives, finance team, and privileged IT personnel.

# APPENDIX B:  Email Attachment Control Standard

The following table defines the BFS action for each attachment file type received from external senders. This standard is maintained by the IT Security team and reviewed quarterly in response to evolving threat intelligence. Entries marked 'BLOCK' are removed before delivery. 'SANDBOX' indicates delivery after passing behavioral analysis. 'ALLOW' indicates standard delivery after AV scan.

| File Type / Extension | Description | BFS Action | Notes |

| --- | --- | --- | --- |

| .exe, .msi, .com, .scr | Windows executables and installers | BLOCK | No legitimate business case for receiving executables via email. |

| .bat, .cmd | Windows batch / command scripts | BLOCK | Command execution risk. |

| .ps1, .psm1, .psd1 | PowerShell scripts and modules | BLOCK | High malware delivery vector. |

| .vbs, .vbe, .js, .jse, .wsf | VBScript and JScript files | BLOCK | Malware execution vector. |

| .lnk | Windows shortcut files | BLOCK | LNK-based malware delivery vector. |

| .iso, .img, .vhd | Disk image files | BLOCK | Used to bypass MOTW; malware delivery. |

| .docm, .xlsm, .xlsb, .pptm | Macro-enabled Office documents | SANDBOX | Block if macros detected and unsigned. Sandbox non-macro. |

| .doc, .xls, .ppt (legacy) | Legacy Office formats (OLE compound) | SANDBOX | Legacy formats have embedded macro risks. |

| .docx, .xlsx, .pptx | Modern Office formats (Open XML) | SANDBOX | Standard sandbox; deliver if clean. |

| .pdf | PDF documents | SANDBOX | PDF exploit vectors; mandatory sandbox. |

| .html, .htm (as attachment) | HTML attachments (often used in phishing) | SANDBOX | HTML smuggling technique; enhanced scrutiny. |

| .zip, .7z, .rar, .tar, .gz | Archive files | SANDBOX | Inspect contents; block if contains blocked type. PW-protected: quarantine. |

| .ace, .arj | Legacy archive formats | BLOCK | Rarely legitimate; exploit history. |

| .jar, .class | Java archive / class files | BLOCK | Java execution risk. |

| .dll, .sys, .ocx | Windows library / driver files | BLOCK | No legitimate business email use. |

| .apk | Android application packages | BLOCK | Mobile malware delivery. |

| .one, .onepkg | OneNote files | SANDBOX | Active OneNote-based phishing campaigns (2023+). |

| .csv, .txt, .log | Plain text / data files | ALLOW | AV scan; low inherent execution risk. |

| .jpg, .png, .gif, .bmp, .webp | Standard image formats | ALLOW | AV scan; standard delivery. |

| .mp3, .mp4, .wav | Audio / video files | ALLOW | AV scan; verify extension matches content type. |

| Unknown / unlisted extension | Any file type not listed above | SANDBOX | Unknown types treated as high-risk; mandatory sandbox. |

# APPENDIX C:  Quick Reference Card

## C.1  Employee — What To Do With Suspicious Email

| Situation | What To Do |

| --- | --- |

| Received a suspicious email — haven't clicked anything | Report using the 'Report Phishing' button in your email client. Do not forward, do not reply, do not click any links. |

| Clicked a link in a suspicious email — no credentials entered | Immediately call the IT Service Desk (ext. 8000). Do not close the browser tab — wait for IT Security guidance. Describe the URL and any actions taken. |

| Entered credentials on a suspicious website | Call the IT Service Desk IMMEDIATELY. Time is critical — credentials must be reset before the attacker uses them. Do not use any BFS systems until IT Security clears you. |

| Opened an attachment and something unexpected happened | Disconnect from the network immediately (unplug LAN cable or disable Wi-Fi). Call the IT Service Desk immediately. Do not turn off the device — preserve evidence. |

| Received an email requesting a wire transfer or payment | Do NOT process. Verify by calling the requester on a known phone number. Report the email to IT Security if the request seems suspicious. |

| Received a suspicious email from a 'BFS executive' | Do NOT comply with any unusual requests. Call the executive directly on their known phone number. Report to IT Security. |

| Noticed a look-alike BFS website (fake BFS login page) | Do NOT enter any credentials. Note the URL. Report to IT Security (security@bfs.com.ph) and the IT Service Desk. |

## C.2  Key Contacts

| Function | Role / Team | Contact |

| --- | --- | --- |

| Report phishing email | Report Phishing button in email client OR | phishing@bfs.com.ph \| IT Service Desk ext. 8000 |

| Report suspected account compromise | IT Service Desk / SOC (URGENT) | ext. 8000 \| soc@bfs.com.ph \| 24/7 hotline |

| Suspected BEC / wire fraud | Finance + IT Security / SOC (IMMEDIATE) | finance-security@bfs.com.ph \| CISO hotline |

| Look-alike domain report | IT Security Team | security@bfs.com.ph |

| Email gateway management | Email & Messaging Operations | email-ops@bfs.com.ph |

| DMARC queries | Email & Messaging Operations / IT Security | security@bfs.com.ph |

| Browser extension requests | IT Security (via ITSM) | ITSM Portal – Software Request |

| Policy exceptions | CISO Office | ciso@bfs.com.ph |

| Awareness training queries | Security Awareness Program Manager | secawareness@bfs.com.ph |

## C.3  Key Timelines at a Glance

| Requirement | Timeframe |

| --- | --- |

| Reported phishing email SOC initial triage | Within 1 hour |

| Retroactive mailbox quarantine for confirmed phishing campaign | Within 4 hours of confirmation |

| BEC — Finance team notification to stop transaction | Within 15 minutes of detection |

| BEC — CISO notification | Within 15 minutes of detection |

| Email gateway threat intel update (critical — active financial sector campaign) | Within 4 hours of receipt |

| Email gateway signature update (standard) | Daily |

| DMARC report review | Weekly |

| DMARC enforcement target — all primary sending domains at p=reject | Before production email use |

| New domain DMARC enforcement progression (none → quarantine → reject) | 90 days maximum |

| DKIM key rotation | Annual |

| Browser critical security patch deployment | Within 72 hours of release |

| Phishing simulation campaign frequency | Quarterly |

| Phishing simulation failure — targeted training enrollment | Within 5 business days |

| Annual security awareness training completion deadline | Within 30 days of due date |

| Browser extension allowlist quarterly review | Quarterly |

| SWG URL category policy review | Quarterly |

| Look-alike domain monitoring alert review | Weekly |

| Email security posture independent assessment | Annual |

| Policy review cycle | Annual or on triggering event |

BFS-ISP-009  |  Email and Web Browser Protections Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services – All Rights Reserved. CONFIDENTIAL – Authorized Internal Use Only.
