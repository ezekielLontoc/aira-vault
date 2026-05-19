---
title: "BFS-ISP-023-Cryptography-Policy"
source_file: "02-PPG-ISMS-ISO-27001/Policies/Cryptography-and-Information-Transfer/BFS-ISP-023-Cryptography-Policy.docx"
source_format: "docx"
generated_at: "2026-05-18T09:17:38Z"
tags:
  - "aira-vault"
  - "imported-docx"
  - "02-PPG-ISMS-ISO-27001"
  - "Policies"
  - "Cryptography-and-Information-Transfer"
aliases:
  - "BFS-ISP-023-Cryptography-Policy"
creator: "Un-named"
created: "2026-04-30T01:05:00Z"
modified: "2026-05-02T13:38:00Z"
---

| BFS INFORMATION SECURITY MANAGEMENT SYSTEM<br>CRYPTOGRAPHY<br>POLICY<br>Approved Cryptographic Algorithms, Key Management Lifecycle, Hardware Security Modules, Certificate Management, and Post-Quantum Cryptography Preparation<br>Policy Reference: BFS-ISP-023<br>Version: 1.0  \|  Classification: CONFIDENTIAL<br>Effective Date: April 2026<br>Review Cycle: Annual<br>Closes ISO/IEC 27001:2022 Annex A.8.24<br>Aligned with NIST FIPS 140-3, NIST SP 800-57, PCI DSS v4.0 Requirements 3 and 4, BSP Cryptographic Expectations<br>Single-Control Closure with Significant Operational Depth — Foundational to BFS Information Protection |

| --- |

# DOCUMENT CONTROL INFORMATION

| Policy Title | Cryptography Policy |

| --- | --- |

| Policy Reference | BFS-ISP-023 |

| Policy Owner | IT Head |

| Document Author | Enterprise Architecture and Security Team / CISO Office / Cryptography Subject Matter Experts |

| Version | 1.0 |

| Status | Approved – Active |

| Classification | CONFIDENTIAL — For Internal, Audit, and Certification Body Use Only |

| Effective Date | April 2026 |

| Review Date | April 2026 |

| Review Cycle | Annual or upon material changes to cryptographic standards (NIST guidance updates), discovered cryptographic vulnerabilities (algorithm deprecations), regulatory expectations, or BFS technology stack affecting cryptographic implementations |

| Supersedes | Not Applicable (New Document) |

| Document Hierarchy Position | TIER 2 — Information Security Policy. Subordinate to BFS-ISMS-001. |

| Parent Document | BFS-ISMS-001 (Top-Level Information Security Policy) |

| Companion Documents | BFS-ISP-003 (Data Protection — classification driving encryption requirements); BFS-ISP-004 (Secure Configuration — cryptographic configuration baselines); BFS-ISP-005 (Account Management — credential cryptographic protection); BFS-ISP-008 (Audit Logs — log integrity through cryptographic mechanisms); BFS-ISP-012 (Network Infrastructure — TLS for network communications); BFS-ISP-016 (Application Software Security — application cryptography); BFS-ISP-022 (Remote Working — device encryption) |

| Framework Alignment | ISO/IEC 27001:2022 Annex A.8.24 (Use of cryptography); ISO/IEC 27002:2022 implementation guidance; NIST FIPS 140-3 (Security Requirements for Cryptographic Modules); NIST SP 800-57 (Key Management Recommendations); NIST SP 800-131A (Transitioning Cryptographic Algorithms); NIST PQC Standardization (Post-Quantum Cryptography); PCI DSS v4.0 Requirements 3 (Protect Stored Account Data) and 4 (Protect Cardholder Data with Strong Cryptography); CIS Controls v8 cryptographic elements |

| Regulatory Reference | BSP Circular 1140 (Cryptographic controls for financial institutions); BSP Circular 1048 (Cryptography in cybersecurity); BSP Circular 982 (Electronic Banking — secure electronic communications); RA 10173 Data Privacy Act §28 (Security measures including encryption); PCI DSS v4.0 §3 and §4 (Cryptographic protection of cardholder data); RA 8792 E-Commerce Act (Electronic signatures and authentication); RA 11055 Philippine Identification System Act (Cryptographic protection considerations) |

## Approval and Sign-Off

| Role | Name | Signature | Date |

| --- | --- | --- | --- |

| President |  |  |  |

| Chief Human Resources Officer |  |  |  |

| IT Head |  |  |  |

| Infrastructure Manager |  |  |  |

| Security Administrator |  |  |  |

| Chief Risk Officer |  |  |  |

| Chief Compliance Officer |  |  |  |

| Board Audit & Risk Committee |  |  |  |

# 1.  PURPOSE

This document establishes the BFS Financial Services Cryptography Policy governing the use of cryptography across BFS systems, applications, and operations. It operationalizes ISO/IEC 27001:2022 Annex A.8.24 (Use of cryptography) and provides the comprehensive cryptographic framework supporting all other BFS information protection mechanisms — encryption of data at rest, encryption of data in transit, cryptographic authentication, digital signatures, and cryptographic integrity protection.

Cryptography is foundational. Effectively all other BFS information protection mechanisms depend on cryptography operating correctly: confidential data is protected through encryption; authentication relies on cryptographic credential protection; transaction integrity depends on cryptographic signatures and message authentication codes; secure communications require TLS or equivalent; digital identity systems use cryptographic certificates; backup integrity uses cryptographic hashes. Failure of cryptographic implementation is failure of multiple layers of protection simultaneously.

BFS as a regulated financial institution operates with elevated cryptographic expectations. PCI DSS v4.0 mandates strong cryptography for cardholder data protection (Requirements 3 and 4); BSP Circulars 1140 and 1048 establish cryptographic expectations for IT and cybersecurity in supervised institutions; RA 10173 Section 28 establishes encryption as expected security measure for personal data; RA 8792 E-Commerce Act establishes legal recognition of electronic signatures based on cryptographic mechanisms. Cryptographic compliance is not optional supplementary control; it is core regulatory expectation.

Cryptography also evolves continuously. Algorithms considered strong are eventually deprecated as cryptanalysis advances or computing capabilities increase. Key sizes considered adequate are eventually recognized as insufficient. New cryptographic categories emerge (post-quantum cryptography is the current major transition). This policy establishes BFS approach not as fixed standards but as managed evolution — current approved algorithms with documented deprecation pathways, current key sizes with planned transitions, current operational practices with evolution roadmap.

The specific objectives of this policy are to:

Establish BFS approved cryptographic algorithms calibrated to use case and security level required;

Mandate minimum key sizes and other cryptographic parameters per NIST guidance and industry standards;

Operationalize complete cryptographic key lifecycle — generation, distribution, storage, use, rotation, archival, destruction;

Establish hardware security module (HSM) requirements for high-value key protection;

Govern certificate management — TLS certificates, code signing certificates, S/MIME certificates, internal CA operations;

Address algorithm deprecation and transition — managing evolution from deprecated to current algorithms;

Establish post-quantum cryptography (PQC) preparation framework — positioning BFS for the most significant cryptographic transition since the introduction of public-key cryptography;

Coordinate with BFS-ISP-003 data classification driving encryption requirements at appropriate strength;

Coordinate with PCI DSS Requirements 3 and 4 cardholder data cryptographic protection;

Provide audit-friendly documentation supporting ISO 27001 certification, PCI QSA assessments, BSP examinations, and NPC compliance verification.

# 2.  DEFINITIONS AND SCOPE

## 2.1  Definitions

| Term | Definition |

| --- | --- |

| Cryptography | The discipline that embodies principles, means, and methods for transformation of data to hide its information content, prevent its undetected modification, prevent its unauthorized use, or a combination thereof. (NIST SP 800-12) |

| Encryption | The cryptographic transformation of data to produce ciphertext, conceals the data's original meaning to prevent it from being known or used. (NIST SP 800-12) |

| Symmetric Encryption | Encryption where the same key is used for both encryption and decryption. Examples: AES, ChaCha20. Generally faster than asymmetric encryption; requires secure key sharing. |

| Asymmetric Encryption / Public-Key Cryptography | Encryption using key pairs (public and private). Examples: RSA, ECC, post-quantum candidates. Slower than symmetric; eliminates key sharing problem. |

| Hash Function | Mathematical function transforming arbitrary-length input into fixed-length output (hash/digest). Cryptographic hashes (SHA-2, SHA-3) provide one-way property and collision resistance. Used for integrity verification, password storage, digital signatures. |

| Digital Signature | Cryptographic mechanism providing authentication, integrity, and non-repudiation for digital data. Combines hashing and asymmetric cryptography. Examples: RSA-PSS, ECDSA, EdDSA. |

| Message Authentication Code (MAC) | Cryptographic mechanism providing authentication and integrity using shared secret key. Examples: HMAC-SHA256, AES-GMAC. Distinct from digital signature in not providing non-repudiation. |

| Key | Cryptographic input parameter controlling cryptographic operations. Key strength determines cryptographic strength. Key compromise compromises everything protected by that key. |

| Key Management | Activities involving handling of cryptographic keys throughout their lifecycle including generation, distribution, storage, use, rotation, archival, and destruction. (NIST SP 800-57) |

| Key Lifecycle | The complete sequence of states a cryptographic key passes through from generation to final destruction. Lifecycle stages defined in Section 5. |

| Hardware Security Module (HSM) | Dedicated cryptographic hardware device providing physical and logical protection of cryptographic keys and operations. FIPS 140-3 validated HSMs provide highest assurance. Used for high-value keys including root signing keys, CA keys, payment system keys. |

| FIPS 140-3 | NIST standard 'Security Requirements for Cryptographic Modules' establishing four security levels (1-4) with progressively more rigorous physical and logical security requirements. FIPS 140-3 validation provides independent verification that cryptographic implementation meets requirements. |

| Certificate | Digital document binding identity to public key, signed by trusted certificate authority. X.509 certificates are predominant standard. Used for TLS, code signing, S/MIME, document signing, and other authentication purposes. |

| Certificate Authority (CA) | Trusted entity issuing and managing digital certificates. May be public CA (commercial CAs in browser trust stores) or private/internal CA (operated by BFS for internal certificates). |

| Public Key Infrastructure (PKI) | Framework of policies, procedures, and technologies supporting certificate-based cryptographic operations including CAs, registration authorities, certificate revocation mechanisms, certificate stores. |

| TLS (Transport Layer Security) | Cryptographic protocol providing communications security over computer networks. Successor to SSL. Current versions: TLS 1.2, TLS 1.3. Used for HTTPS, secure email transport, and many other secure communications. |

| Algorithm Agility | System design property enabling cryptographic algorithm replacement without major system redesign. Particularly important for post-quantum cryptography transition. |

| Post-Quantum Cryptography (PQC) | Cryptographic algorithms designed to be secure against attack by quantum computers. NIST PQC standardization process (2022-2024) selected initial algorithms (CRYSTALS-Kyber, CRYSTALS-Dilithium, FALCON, SPHINCS+) for standardization. Major cryptographic transition over the coming decade. |

| Quantum-Resistant | Property of cryptographic algorithm believed to be secure against quantum computer attacks. PQC algorithms are quantum-resistant by design; current symmetric algorithms (AES) are largely quantum-resistant with appropriate key sizes; current public-key algorithms (RSA, ECC) are quantum-vulnerable. |

| Crypto-Agility | System architecture supporting cryptographic algorithm change without disrupting business operations. Particularly important given anticipated PQC transition and ongoing algorithm evolution. |

| Hardware Random Number Generator (HRNG) | Physical device producing random numbers using physical entropy sources. Critical for cryptographic key generation. Distinguished from pseudo-random number generators (PRNG) which produce deterministic sequences from seeds. |

## 2.2  Scope

### 2.2.1  In-Scope Cryptographic Uses

Encryption of data at rest — database encryption, file system encryption, full disk encryption, backup encryption, archive encryption;

Encryption of data in transit — TLS for web/API/database communications, IPsec for network tunnels, secure email transport, SFTP/FTPS for file transfer;

Authentication mechanisms — password storage hashing, MFA cryptographic operations, certificate-based authentication, hardware token cryptography;

Digital signatures — code signing, document signing, transaction signing, email signing (S/MIME);

Integrity protection — file integrity monitoring hashes, log integrity, message authentication codes, blockchain/distributed ledger applications where used;

Cryptographic random number generation — for keys, tokens, nonces, initialization vectors;

Key management operations — generation, distribution, storage, rotation, recovery, destruction;

Certificate management — issuance, distribution, renewal, revocation, validation;

Hardware security module operations — HSM-protected key storage, HSM-performed cryptographic operations;

Specific banking cryptography — payment card EMV operations, ATM PIN encryption, payment network HSM operations, BSP-mandated cryptographic operations.

# 3.  APPROVED CRYPTOGRAPHIC ALGORITHMS

This section establishes BFS approved cryptographic algorithms organized by cryptographic function. The approved list reflects current NIST guidance, industry standards, and BFS-specific considerations. Algorithms not on the approved list shall not be used in BFS systems for new implementations; legacy systems using deprecated algorithms shall be transitioned per Section 7.

## 3.1  Symmetric Encryption Algorithms

| Algorithm | Status | Minimum Key Size | Use Cases / Notes |

| --- | --- | --- | --- |

| AES-256-GCM | APPROVED | 256 bits | Preferred for general use; provides confidentiality and authentication |

| AES-256-CBC with HMAC-SHA256 | APPROVED | 256 bits | Acceptable for legacy compatibility; ensure proper IV handling |

| AES-128-GCM | APPROVED | 128 bits | Acceptable; AES-256 preferred for new implementations |

| ChaCha20-Poly1305 | APPROVED | 256 bits | Approved alternative to AES; particularly useful where AES hardware acceleration unavailable |

| 3DES (Triple DES) | DEPRECATED | N/A | Deprecated per NIST SP 800-131A; legacy systems shall transition to AES per Section 7. Not for new implementations. |

| DES | PROHIBITED | N/A | Cryptographically broken; shall not be used |

| RC4 | PROHIBITED | N/A | Cryptographically broken; shall not be used |

| Blowfish | PROHIBITED | N/A | Insufficient block size for modern use; shall not be used in new implementations |

## 3.2  Asymmetric Encryption and Key Exchange

| Algorithm | Status | Minimum Key Size | Use Cases / Notes |

| --- | --- | --- | --- |

| RSA-3072 | APPROVED | 3072 bits | Current standard for new RSA implementations; 2048 acceptable for legacy |

| RSA-2048 | ACCEPTABLE | 2048 bits | Acceptable for existing implementations; new implementations should use 3072 minimum; transition planning per NIST SP 800-131A |

| RSA-1024 | DEPRECATED | N/A | Insufficient strength; legacy systems shall transition immediately per Section 7 |

| ECDSA P-256 | APPROVED | 256 bits curve | Preferred elliptic curve digital signature for general use |

| ECDSA P-384 | APPROVED | 384 bits curve | Higher security level; appropriate for high-value applications |

| EdDSA (Ed25519) | APPROVED | 256 bits curve | Modern signature algorithm; preferred for new implementations where supported |

| ECDH P-256, P-384 | APPROVED | 256/384 bits curve | Elliptic curve Diffie-Hellman for key agreement |

| X25519 | APPROVED | 256 bits | Modern key agreement; preferred for new implementations where supported |

| DH (Diffie-Hellman) ≥ 3072 | APPROVED | 3072 bits | Classical Diffie-Hellman for legacy compatibility; ECDH preferred |

| DH < 2048 | PROHIBITED | N/A | Insufficient strength |

| DSA | DEPRECATED | N/A | Legacy algorithm; ECDSA or EdDSA preferred |

## 3.3  Cryptographic Hash Functions

| Algorithm | Status | Output Size | Use Cases / Notes |

| --- | --- | --- | --- |

| SHA-256 | APPROVED | 256 bits | General-purpose cryptographic hash; predominant use in BFS |

| SHA-384 | APPROVED | 384 bits | Higher security level; used with ECDSA P-384 |

| SHA-512 | APPROVED | 512 bits | Higher security level; used where 512-bit output appropriate |

| SHA-3 (256/384/512) | APPROVED | 256/384/512 bits | Modern alternative to SHA-2; approved for new implementations |

| BLAKE2b/BLAKE2s | APPROVED | Variable | Approved for performance-sensitive applications |

| SHA-1 | DEPRECATED | N/A | Cryptographically weak; legacy systems shall transition immediately; not for digital signatures or new uses |

| MD5 | PROHIBITED | N/A | Cryptographically broken; shall not be used for security purposes |

| MD4 / MD2 | PROHIBITED | N/A | Cryptographically broken; shall not be used |

## 3.4  Message Authentication and Password Storage

| Algorithm | Status | Use Cases / Notes |

| --- | --- | --- |

| HMAC-SHA256 | APPROVED | Predominant message authentication code |

| HMAC-SHA384/SHA512 | APPROVED | Higher security levels |

| AES-GMAC | APPROVED | Authentication-only use of AES-GCM |

| Argon2id | APPROVED | Preferred password hashing for new implementations |

| bcrypt | APPROVED | Acceptable password hashing; long-established |

| scrypt | APPROVED | Acceptable password hashing |

| PBKDF2-HMAC-SHA256 (≥ 600,000 iterations) | ACCEPTABLE | Acceptable for legacy systems; Argon2id preferred for new |

| MD5/SHA-1 for password hashing | PROHIBITED | Insufficient — even with salt |

| Plaintext password storage | PROHIBITED | Catastrophic; never permitted |

## 3.5  TLS Versions and Cipher Suites

| TLS Version / Cipher | Status | Notes |

| --- | --- | --- |

| TLS 1.3 | APPROVED | Preferred for new implementations; modern cipher suites only |

| TLS 1.2 | APPROVED | Acceptable with strong cipher suites; widely deployed |

| TLS 1.1 | PROHIBITED | Deprecated by IETF; shall not be used |

| TLS 1.0 | PROHIBITED | Deprecated; shall not be used; PCI DSS prohibits |

| SSL 2.0 / SSL 3.0 | PROHIBITED | Cryptographically broken; shall not be used |

| AES-GCM cipher suites | APPROVED | Preferred for both confidentiality and authentication |

| ChaCha20-Poly1305 cipher suites | APPROVED | Approved alternative |

| AES-CBC with HMAC cipher suites | ACCEPTABLE | For TLS 1.2 compatibility |

| RC4 cipher suites | PROHIBITED | RC4 broken |

| 3DES cipher suites | PROHIBITED | 3DES insufficient |

| NULL cipher suites | PROHIBITED | No encryption |

| Anonymous cipher suites | PROHIBITED | No authentication |

## 3.6  Random Number Generation

Cryptographic random number generation shall use cryptographically secure random number generators (CSPRNG) — operating system CSPRNG (e.g., /dev/urandom on Linux, BCryptGenRandom on Windows) or hardware random number generators;

Hardware random number generators (HRNG) shall be used for high-value key generation — particularly root keys, CA keys, and HSM-protected keys;

Pseudo-random number generators (PRNG) without cryptographic guarantees (e.g., Math.random in JavaScript, rand() in C) shall not be used for security purposes;

Random number generator outputs shall not be used directly as keys without appropriate post-processing per NIST SP 800-90 series guidance;

Initialization vectors (IVs), nonces, and salts shall be generated using cryptographically secure random number generators with sufficient entropy.

# 4.  USE CASE ENCRYPTION REQUIREMENTS

This section specifies encryption requirements by use case, integrating data classification per BFS-ISP-003 with cryptographic algorithms per Section 3.

## 4.1  Data at Rest Encryption

| Data Storage Context | Encryption Required | Specifications |

| --- | --- | --- |

| Database — RESTRICTED data | REQUIRED | AES-256-GCM minimum; HSM-protected keys for keys protecting RESTRICTED data; transparent database encryption (TDE) acceptable; column-level encryption for specific high-sensitivity fields |

| Database — CONFIDENTIAL data | REQUIRED | AES-256-GCM minimum; encryption keys managed per Section 5 |

| Database — INTERNAL data | Risk-based | Generally encrypted at storage layer (full disk/volume) at minimum |

| File systems hosting BFS information | REQUIRED | Full disk encryption (FDE) for systems hosting BFS information; AES-256 minimum |

| BFS-issued laptops | REQUIRED | Full disk encryption per BFS-ISP-022 §4.2; BitLocker, FileVault, or equivalent |

| BFS-issued mobile devices | REQUIRED | Device encryption per platform; managed via MDM |

| Backup media | REQUIRED | Backup encryption per BFS-ISP-011; encryption keys managed separately from backup media |

| Archive media | REQUIRED | Long-term archive encryption considering algorithm longevity; PQC consideration for very long-term archives |

| Removable storage with BFS information | REQUIRED | Encrypted regardless of classification per BFS-ISP-019 §5.10 |

| Cloud storage | REQUIRED | Encryption at cloud provider (CSP-managed) acceptable as baseline; customer-managed keys (CMK) for higher classifications; HSM-protected keys for RESTRICTED |

| Cardholder data (PCI scope) | REQUIRED | Per PCI DSS §3 — strong cryptography (AES-128 or stronger); key management per PCI DSS §3.6 expectations |

| Personal data per RA 10173 | REQUIRED | Per NPC expectations and §28; AES-256 standard for sensitive personal data |

## 4.2  Data in Transit Encryption

| Communication Context | Encryption Required | Specifications |

| --- | --- | --- |

| Web traffic — external | REQUIRED | HTTPS with TLS 1.2 minimum (TLS 1.3 preferred); strong cipher suites; HSTS enabled; certificate pinning where applicable |

| Web traffic — internal | REQUIRED | TLS for all internal HTTP traffic; private CA acceptable for internal use; service mesh mTLS where deployed |

| API communications | REQUIRED | TLS 1.2 minimum; mutual TLS (mTLS) for sensitive API endpoints; OAuth/OIDC token transport over TLS |

| Email transport (between servers) | REQUIRED | STARTTLS opportunistic encryption minimum; mandatory TLS for sensitive correspondents; MTA-STS for stronger guarantees |

| Email content (sensitive) | Risk-based | S/MIME or PGP for sensitive email content where end-to-end protection appropriate |

| File transfer | REQUIRED | SFTP, FTPS, or HTTPS-based transfer; FTP without TLS prohibited |

| Database connections | REQUIRED | TLS-encrypted database connections; client certificate authentication where appropriate |

| Cardholder data transmission (PCI scope) | REQUIRED | Per PCI DSS §4 — strong cryptography; TLS 1.2 minimum; never sent via insecure protocols (unencrypted email, FTP) |

| Network tunnels (site-to-site, remote access) | REQUIRED | IPsec with strong algorithms or TLS-based VPN with current cipher suites |

| Wireless networks | REQUIRED | WPA3 preferred; WPA2-Enterprise minimum for BFS networks; WPA2-Personal acceptable for guest networks; open WiFi prohibited for BFS internal |

| Inter-datacenter traffic | REQUIRED | Encrypted regardless of physical network security |

## 4.3  Authentication and Credential Cryptography

Password storage shall use Argon2id (preferred), bcrypt, scrypt, or PBKDF2-HMAC-SHA256 (≥ 600,000 iterations) with unique salt per password;

Session tokens shall be cryptographically secure random values of at least 128 bits;

API keys and access tokens shall be cryptographically secure random values; long-lived API keys discouraged in favor of short-lived OAuth tokens;

MFA mechanisms employ standard cryptographic protocols — TOTP per RFC 6238, FIDO2/WebAuthn per FIDO Alliance specifications, hardware security tokens with documented cryptographic properties;

Certificate-based authentication uses X.509 certificates with appropriate algorithms per Section 3.2.

## 4.4  Digital Signatures

Code signing for BFS-developed applications uses ECDSA P-256 or RSA-3072 minimum with code signing certificates from approved CAs;

Document signing for legally-significant documents uses qualified electronic signatures per RA 8792 E-Commerce Act;

Transaction signing for high-value or high-risk transactions uses appropriate cryptographic mechanisms with signature verification;

Software supply chain signing — verifying authenticity of software components and updates;

Container image signing for BFS-developed container images using current standards (Sigstore, Notary v2, or equivalent).

# 5.  KEY MANAGEMENT LIFECYCLE

This section establishes the cryptographic key lifecycle. Cryptographic key management discipline often determines actual cryptographic security more than algorithm strength — strong algorithms with weak key management provide weak protection.

## 5.1  Key Lifecycle Stages

| Stage | Definition | Key Activities |

| --- | --- | --- |

| Pre-Activation | Key generated but not yet used | Generation per Section 5.2; secure storage; access control establishment |

| Active | Key in operational use | Use per intended purpose; access controlled per authorization; usage logged |

| Rotation | Key being transitioned to successor | Successor key generated; transition managed; previous key may continue for verification of historical material |

| Suspended | Key temporarily not used (e.g., during investigation) | Use blocked; key retained pending decision on reactivation or destruction |

| Compromised | Key potentially or confirmed compromised | Immediate revocation; affected material assessment; emergency replacement; incident response |

| Deactivated | Key no longer used for new operations but retained for verification | Used only for verifying material protected during active period; not for new protection |

| Archived | Long-term storage of deactivated keys | Required for verification of historical material (signatures, encrypted archives); enhanced storage protection given persistence |

| Destroyed | Key cryptographically destroyed; recovery infeasible | Key material zeroized; HSM-stored keys destroyed per HSM procedures; destruction documented |

## 5.2  Key Generation

PS-2.1  Cryptographic keys shall be generated using cryptographically secure mechanisms — operating system CSPRNG, HSM key generation, or dedicated cryptographic hardware as appropriate to key sensitivity.

PS-2.2  High-value keys (root keys, CA signing keys, payment system keys) shall be generated within HSMs or equivalent dedicated cryptographic hardware. Generation in software not permitted for high-value keys.

PS-2.3  Key generation shall include sufficient entropy — verified for hardware random number generators; multiple entropy sources combined where appropriate.

PS-2.4  Key generation events shall be logged including generation date, generation mechanism, key purpose, key strength, and accountable personnel.

PS-2.5  Generated keys shall be assigned identifiers enabling lifecycle management and audit traceability without exposing key material.

## 5.3  Key Storage and Protection

PS-3.1  Cryptographic keys shall be protected commensurate with the value of material they protect. High-value keys protected within HSMs; medium-value keys protected within key management systems with strong access controls; low-value keys may be protected within encrypted storage.

PS-3.2  Plaintext key material shall not be stored on general-purpose file systems, databases, or configuration files. Keys at rest shall always be encrypted using key encryption keys (KEKs) or stored in HSM/KMS.

PS-3.3  Key encryption keys (KEKs) shall be protected at higher assurance level than keys they protect — establishing key hierarchy where root keys are most strongly protected.

PS-3.4  Hardware Security Modules (HSMs) shall be FIPS 140-3 Level 2 minimum for general use; FIPS 140-3 Level 3 for high-value keys including payment system master keys, certificate authority signing keys, and root keys.

PS-3.5  Cloud key management services may be used for cloud-deployed systems with appropriate evaluation — including support for customer-managed keys (CMK), HSM-backed key storage option, and audit logging of key operations.

PS-3.6  Key access controls shall enforce separation of duties — key administrators shall not have access to material protected by keys they administer; key custodians shall not have unilateral key recovery capability for sensitive keys.

## 5.4  Key Rotation

| Key Type | Maximum Lifetime | Notes |

| --- | --- | --- |

| Symmetric data encryption keys (DEK) | 2 years | Or per data lifecycle if shorter; PCI requirement may be more stringent |

| Symmetric key encryption keys (KEK) | 3 years | Higher in hierarchy; longer lifetime acceptable with HSM protection |

| TLS server certificates | ≤ 1 year | Industry standard; some CAs limit to 90 days (Let's Encrypt) or 13 months |

| TLS client certificates | ≤ 1 year | Per use case; longer lifetimes for embedded systems with appropriate justification |

| Code signing certificates | ≤ 3 years | Per CA policy; longer lifetimes acceptable for code signing where signature verification requires long-term trust |

| CA root certificates | 10-20 years | Long lifetime appropriate; protected within HSM; rotation requires significant planning |

| CA intermediate certificates | 5-10 years | Intermediate between root and end-entity |

| Database encryption keys | 2 years | Coordinated with database lifecycle |

| Backup encryption keys | Per backup retention | Sufficient lifetime to support backup retention period |

| API/service authentication keys | ≤ 1 year | Shorter lifetimes preferred; OAuth tokens preferred over long-lived API keys |

Key rotation operations shall be planned and tested — coordinated rotation supports business continuity; emergency rotation capability required for compromise scenarios.

## 5.5  Key Recovery

Key recovery capabilities shall exist for keys protecting persistent data — preventing data loss through key loss;

Key recovery shall require multi-party authorization (M-of-N) for sensitive keys — preventing single-person compromise enabling key recovery for malicious purposes;

Key recovery operations shall be logged and reviewed — providing audit trail and enabling detection of unauthorized recovery attempts;

Key escrow arrangements may be appropriate for specific business requirements — such arrangements documented with clear authorization, oversight, and audit;

Recovery keys (e.g., backup of master keys) shall be protected at highest assurance level — typically requiring multiple custodians and physical security beyond standard.

## 5.6  Key Compromise Response

Suspected or confirmed key compromise triggers immediate response per BFS-ISP-017 incident response;

Compromised keys are immediately revoked — preventing further use;

Material protected by compromised keys is assessed for exposure; affected systems may require re-encryption with new keys;

Certificate compromise triggers Certificate Revocation List (CRL) update and OCSP responder update;

Compromise scope investigation determines whether additional keys (sharing infrastructure, access control, or generation methodology) require precautionary rotation;

Post-incident review per BFS-ISP-017 §5.8 captures lessons learned including key management improvements.

## 5.7  Key Destruction

Cryptographic destruction shall use methods preventing recovery — zeroization of key material, destruction of HSM-stored keys per HSM procedures, physical destruction of key storage media where appropriate;

Destruction shall be performed by authorized personnel with documented procedure;

Destruction shall be logged with key identifier, destruction date, destruction method, and accountable personnel;

Verification that destruction completed shall be performed — confirming key material is no longer recoverable;

Destruction records retained per BFS-ISMS-006 — providing audit trail of complete key lifecycle.

# 6.  HARDWARE SECURITY MODULES AND CERTIFICATE MANAGEMENT

## 6.1  Hardware Security Module (HSM) Framework

Hardware Security Modules provide the strongest cryptographic key protection available — combining cryptographic operations with physical and logical security measures resistant to logical and physical attack.

### 6.1.1  HSM Requirements by Use Case

| Use Case | HSM Required | Specifications |

| --- | --- | --- |

| Payment system master keys (EMV, ATM PIN) | REQUIRED | FIPS 140-3 Level 3 minimum; PCI HSM where applicable |

| Certificate Authority root signing keys | REQUIRED | FIPS 140-3 Level 3 minimum; offline operation for highest-tier roots |

| Certificate Authority intermediate signing keys | REQUIRED | FIPS 140-3 Level 2 minimum |

| Code signing — production releases | REQUIRED | FIPS 140-3 Level 2 minimum |

| Database encryption — RESTRICTED data | REQUIRED | FIPS 140-3 Level 2 minimum; HSM-backed KMS acceptable |

| Database encryption — CONFIDENTIAL data | RECOMMENDED | HSM or HSM-backed KMS preferred; software KMS acceptable with strong controls |

| TLS private keys — high-value endpoints | RECOMMENDED | HSM-backed for high-traffic high-value endpoints; load balancer / reverse proxy HSM integration |

| TLS private keys — general | Optional | Software-protected acceptable for general TLS endpoints |

| Backup encryption keys | RECOMMENDED | HSM-backed for backups containing high-classification data |

| Multi-signature wallet keys (if any) | REQUIRED | Where BFS operates any cryptocurrency or distributed ledger keys |

### 6.1.2  HSM Operational Requirements

HSM deployment shall include physical security per BFS-ISP-019 — TIER 1 or TIER 2 facility for HSM hosting; access controls; environmental protection;

HSM administration shall employ separation of duties — typically requiring multi-party authorization for sensitive operations (key generation, key export if permitted, configuration changes);

HSM access shall be logged and reviewed — administrative actions and cryptographic operations logging per HSM capabilities and BFS-ISP-008 requirements;

HSM firmware shall be maintained current with vendor security updates per BFS-ISP-007 patching;

HSM backup arrangements shall preserve key material for recovery while preserving security — typically through M-of-N split key recovery shares;

HSM lifecycle (procurement, deployment, decommissioning) follows BFS-ISP-019 §7 equipment lifecycle with HSM-specific considerations;

HSM decommissioning shall include cryptographic destruction of all stored keys and physical destruction of cryptographic boundaries before disposal.

## 6.2  Certificate Management

### 6.2.1  TLS Certificate Management

TLS certificates for BFS public-facing services obtained from publicly-trusted Certificate Authorities — certificates must chain to roots in major browser/OS trust stores;

Domain Validation (DV) certificates acceptable for low-risk services; Organization Validation (OV) preferred for general services; Extended Validation (EV) for specific high-trust contexts;

Wildcard certificates (e.g., *.bfs.com.ph) used judiciously — convenience benefit balanced against scope of compromise impact; specific high-value subdomains use dedicated certificates;

Certificate inventory maintained — all BFS TLS certificates tracked including expiration dates, owners, and dependent systems;

Certificate renewal automated where possible — automated renewal (e.g., ACME protocol) for general certificates; managed processes for high-value certificates;

Certificate expiration monitoring — alerts at 60 days, 30 days, 14 days, 7 days before expiration triggering renewal action;

Certificate Transparency monitoring — BFS monitors CT logs for unauthorized certificate issuance for BFS domains.

### 6.2.2  Internal Certificate Authority

BFS may operate internal Certificate Authority for internal use cases — internal service mesh mTLS, internal API authentication, internal user certificates, etc.

Internal CA shall be operated per industry CA practices including secure root key protection (HSM, offline root for high-tier internal CAs), documented Certificate Policy and Certification Practice Statement;

Internal CA root certificates distributed to BFS-managed devices through configuration management;

Internal CA shall not be used for public-facing services — public services use publicly-trusted CAs;

Internal CA infrastructure subject to standard BFS security controls — change management, audit logging, vulnerability management, periodic external review.

### 6.2.3  Certificate Revocation

Certificate revocation mechanisms operational — Certificate Revocation Lists (CRL) and Online Certificate Status Protocol (OCSP) responders;

Revocation triggered by compromise, personnel termination (for personnel certificates), service decommissioning, or key rotation;

Revocation propagation timing — CRL updates typically within 24 hours of revocation event; OCSP responder updates within 1 hour;

Revocation event logging supports incident investigation and audit verification.

# 7.  ALGORITHM TRANSITION AND POST-QUANTUM CRYPTOGRAPHY PREPARATION

## 7.1  Algorithm Deprecation Management

Cryptographic algorithms have lifecycles. Algorithms approved today are eventually deprecated as cryptanalysis advances or computing capabilities increase. BFS approach to algorithm transition:

Annual review of NIST cryptographic guidance, industry standards (PCI DSS, BSI, ENISA), and academic cryptographic literature for algorithm strength updates;

Approved algorithm list (Section 3) maintained current with deprecation timelines documented;

Deprecated algorithms identified through inventory of BFS systems using them — typically requiring code analysis, configuration analysis, or runtime observation;

Transition plans developed for systems using deprecated algorithms — including risk assessment, transition approach, timeline, dependencies, testing requirements;

Transition execution per documented plan with testing including interoperability with external parties using compatible algorithms;

Legacy compatibility periods limited to genuine compatibility need with documented deprecation timeline.

## 7.2  Crypto-Agility

Crypto-agility — the ability to change cryptographic algorithms without major system redesign — is increasingly important given anticipated cryptographic transitions including PQC. BFS approach:

New BFS-developed systems shall employ crypto-agile design — algorithm selection through configuration rather than hardcoded; standard cryptographic libraries with algorithm enumeration support;

Cryptographic algorithm choices documented at architecture level — supporting future transition impact assessment;

Cryptographic identifiers (algorithm OIDs, cipher suite identifiers) used systematically — avoiding cryptographic primitive assumptions throughout codebase;

Vendor-supplied systems evaluated for crypto-agility — preference for vendors with documented algorithm flexibility and transition support;

Industry standard protocols (TLS, IPsec, etc.) prioritized over custom cryptographic protocols — standard protocols typically have crypto-agility designed in;

BFS AI-native platform development includes crypto-agility as architectural requirement given platform longevity and likely PQC transition during operational lifetime.

## 7.3  Post-Quantum Cryptography Preparation

Post-Quantum Cryptography (PQC) represents the most significant cryptographic transition since the introduction of public-key cryptography. Quantum computers, when sufficiently advanced, will break currently deployed public-key cryptography (RSA, ECC) used in TLS, code signing, certificate authentication, and many other contexts. NIST's PQC standardization process (2022-2024) selected initial algorithms; transition to PQC is anticipated over the coming decade.

| HARVEST NOW, DECRYPT LATER:  An immediate concern even before quantum computers exist: 'harvest now, decrypt later' attacks. Adversaries may be capturing encrypted communications today intending to decrypt them once quantum computers are available. Information with long-term sensitivity (customer financial records, identity information, business strategy) encrypted today using quantum-vulnerable algorithms may become decryptable within the data's relevant lifetime. PQC transition urgency depends on data sensitivity duration and quantum computing timeline assumptions. |

| --- |

### 7.3.1  PQC Preparation Phases

| Phase | Timeline | Activities |

| --- | --- | --- |

| Phase 1: Awareness | 2026-2027 | CISO Office monitoring NIST PQC standardization; engagement with industry working groups; cryptographic inventory establishing baseline of public-key cryptography use across BFS |

| Phase 2: Inventory and Assessment | 2027-2028 | Comprehensive cryptographic inventory across BFS systems; risk assessment by data sensitivity duration; vendor engagement on PQC roadmaps; pilot deployment of hybrid (classical + PQC) implementations |

| Phase 3: Hybrid Deployment | 2028-2030 | Hybrid cryptographic implementations for high-sensitivity long-lifetime data; standards refinement integration as PQC standards mature; expanded vendor coordination |

| Phase 4: Migration | 2030-2034 | Systematic migration to PQC algorithms as standards stabilize; transition prioritized by sensitivity duration; legacy algorithm deprecation |

| Phase 5: Full PQC | Post-2034 (per quantum threat timeline) | Quantum-vulnerable algorithms deprecated; PQC algorithms primary for public-key cryptography |

This timeline reflects current expectations and will be revised as PQC standards mature, quantum computing progresses, and regulatory expectations evolve. BFS positions itself as actively preparing rather than waiting — recognizing that PQC transition is complex and beneficial to begin early.

### 7.3.2  Current PQC Considerations

CRYSTALS-Kyber (FIPS 203) for key encapsulation;

CRYSTALS-Dilithium (FIPS 204) for digital signatures;

FALCON (FIPS 205) for digital signatures with smaller signature sizes;

SPHINCS+ (FIPS 205) for hash-based signatures providing alternative cryptographic foundation;

Hybrid implementations combining classical and PQC algorithms providing security if either underlying algorithm remains secure;

Symmetric algorithms (AES) and hash functions (SHA-2, SHA-3) believed largely quantum-resistant with appropriate key sizes — focus is on public-key transition.

# 8.  ROLES AND RESPONSIBILITIES

| Role | Cryptography Responsibilities |

| --- | --- |

| Board Audit & Risk Committee | Approves this policy and material revisions. Receives reporting on cryptographic effectiveness, incidents, and major transitions. Approves strategic decisions on PQC preparation and material cryptographic infrastructure investment. |

| Chief Information Officer | Co-approver. Ensures IT capabilities support cryptographic implementations — HSM infrastructure, KMS platforms, certificate management infrastructure. Champions crypto-agility in technology decisions. |

| Chief Information Security Officer | Document owner. Operationally accountable for cryptographic policy effectiveness, algorithm approval decisions, key management oversight, and PQC preparation strategy. |

| Chief Technology Officer | Co-approver. Coordinates technology architecture aspects of cryptography including algorithm selection in BFS-developed systems, vendor selection considering crypto-agility, and PQC architectural preparation. |

| Chief Risk Officer | Co-approver. Integrates cryptographic risk into enterprise risk management. Reviews PQC transition risks and timeline assumptions. |

| Chief Compliance Officer | Co-approver. Ensures cryptographic compliance with PCI DSS, BSP expectations, RA 10173, RA 8792. Coordinates regulatory examination of cryptographic controls. |

| CISO Office Cryptography Team | Subject matter expertise on cryptographic standards, algorithm selection, key management oversight, and PQC preparation. Provides guidance to engineering teams. |

| IT Operations | Operates cryptographic infrastructure — HSMs, KMS, PKI, certificate management systems. Manages routine certificate renewals and operational key management. |

| Security Engineers | Implement cryptographic controls in BFS systems per this policy. Review proposed implementations for cryptographic correctness. |

| Software Developers | Implement cryptography per this policy in BFS-developed systems. Use approved algorithms and key sizes. Apply crypto-agile design principles. |

| Database Administrators | Implement and maintain database encryption per Section 4.1. Manage database encryption keys per Section 5. |

| Network Engineers | Implement TLS, IPsec, and other network cryptographic controls. Maintain TLS configurations meeting Section 3.5 standards. |

| Application Owners | Ensure their applications use cryptography per this policy. Coordinate cryptographic transitions affecting their applications. |

| Certificate Management Personnel | Operate certificate lifecycle — issuance, distribution, renewal, revocation. Maintain certificate inventory and monitoring. |

| HSM Custodians | Designated personnel for HSM operations including key generation participation, recovery operations, and HSM administration. Subject to background screening per BFS-ISP-021 CRITICAL role expectations. |

| Internal Audit | Independently audits cryptographic policy implementation per BFS-ISMS-008 — including algorithm compliance, key management discipline, certificate management effectiveness, and PQC preparation progress. |

# 9.  KEY PERFORMANCE INDICATORS AND COMPLIANCE MONITORING

Cryptographic effectiveness is measured through the following KPIs reviewed quarterly by CISO Office and reported to the Information Security Steering Committee.

| Key Performance Indicator | Target | Frequency |

| --- | --- | --- |

| Approved cryptographic algorithm compliance — BFS systems using approved algorithms only | 100% for new systems; transition plan for legacy | Quarterly |

| Deprecated algorithm transition completion | Per documented plan timelines | Quarterly |

| Prohibited algorithms detected in BFS systems (DES, MD5, SSL, etc.) | Zero — immediate remediation if detected | Continuous |

| TLS configuration scan compliance — all BFS public endpoints | ≥ 98% A or A+ rating (Qualys SSL Labs or equivalent) | Monthly |

| TLS 1.0/1.1 elimination | 100% | Monthly |

| Certificate inventory completeness | 100% of BFS certificates inventoried | Quarterly |

| Certificate expiration prevented (no expired certificates causing service impact) | 100% | Continuous |

| Certificate Transparency monitoring — unauthorized certificate detection | 100% of unauthorized issuances detected within 24 hours | Continuous |

| HSM availability for production cryptographic services | ≥ 99.9% | Monthly |

| Key rotation per schedule | 100% per Section 5.4 schedule | Per rotation cycle |

| Key compromise incidents | Zero target; address immediately if any | Per incident |

| FIPS 140-3 validation currency for in-use HSMs | 100% with current validation | Annual |

| Database encryption coverage — RESTRICTED data | 100% | Quarterly |

| Database encryption coverage — CONFIDENTIAL data | 100% | Quarterly |

| Cardholder data encryption per PCI DSS | 100% per PCI scope | Per QSA cycle |

| BFS-issued device full disk encryption | 100% | Monthly |

| Backup encryption coverage | 100% | Quarterly |

| Cryptographic incident occurrences | Track and trend | Quarterly |

| PQC preparation milestone completion | Per Section 7.3.1 timeline | Quarterly |

| Cryptographic inventory currency | 100% systems inventoried | Annual |

| Internal Audit findings on cryptographic policy operation | Track and remediate per BFS-ISMS-010 | Per audit |

# 10.  REVISION HISTORY

| Version | Date | Description | Author | Approved By |

| --- | --- | --- | --- | --- |

| 1.0 | April 2026 | Initial release. Establishes BFS Cryptography Policy operationalizing ISO/IEC 27001:2022 Annex A.8.24 (Use of cryptography). Single-control closure with significant operational depth — comprehensive cryptographic framework supporting all other BFS information protection mechanisms. Approved cryptographic algorithms across 6 categories (symmetric encryption, asymmetric encryption, hash functions, MAC and password hashing, TLS versions/ciphers, RNG) with status calibration (APPROVED/ACCEPTABLE/DEPRECATED/PROHIBITED). Use case encryption requirements integrating BFS-ISP-003 data classification with cryptographic strength. 8-stage key lifecycle (Pre-Activation/Active/Rotation/Suspended/Compromised/Deactivated/Archived/Destroyed) with comprehensive lifecycle PS statements. HSM framework with FIPS 140-3 calibration by use case. Certificate management including TLS, internal CA, and revocation. Algorithm transition framework with deprecation management. Post-Quantum Cryptography preparation with 5-phase timeline addressing 'harvest now, decrypt later' threat. | IT Head / Infrastructure Manager | IT Head |

|  |  |  |  |  |

# APPENDIX A:  ISO/IEC 27001:2022 Annex A.8.24 Mapping

Direct mapping of A.8.24 control to specific provisions, providing certification audit evidence.

| Control | Title and Requirement | How This Policy Operationalizes |

| --- | --- | --- |

| A.8.24 | Use of cryptography — Rules for the effective use of cryptography, including cryptographic key management, shall be defined and implemented. | Comprehensive operationalization across 7 substantive sections: Section 3 (Approved Cryptographic Algorithms with 6 algorithm category tables totaling 50+ algorithm/use-case entries with calibrated status); Section 4 (Use Case Encryption Requirements integrating data classification); Section 5 (Key Management Lifecycle — 8-stage lifecycle with comprehensive PS statements covering generation, storage, rotation, recovery, compromise response, and destruction); Section 6 (HSM Framework with FIPS 140-3 calibration and Certificate Management); Section 7 (Algorithm Transition and PQC Preparation with 5-phase PQC timeline). Coordinated with NIST FIPS 140-3, NIST SP 800-57, NIST SP 800-131A, PCI DSS Requirements 3 and 4, and BSP cryptographic expectations. |

# APPENDIX B:  Cryptography Quick Reference

Single-page reference for personnel implementing cryptography in BFS systems.

| Question | Quick Answer (with Section reference) |

| --- | --- |

| What symmetric encryption should I use for new code? | AES-256-GCM is preferred. AES-128-GCM acceptable. ChaCha20-Poly1305 alternative where AES hardware acceleration unavailable. Avoid 3DES (deprecated), DES/RC4/Blowfish (prohibited). See §3.1. |

| What asymmetric algorithm should I use? | RSA-3072 minimum for new RSA. ECDSA P-256 or EdDSA (Ed25519) preferred for signatures. ECDH P-256 or X25519 for key agreement. RSA-1024 immediately deprecated. See §3.2. |

| What hash function should I use? | SHA-256 for general use. SHA-384/SHA-512 for higher security. SHA-3 family approved alternative. SHA-1 deprecated; MD5/MD4 prohibited. See §3.3. |

| How should I store passwords? | Argon2id preferred for new code. bcrypt or scrypt acceptable. PBKDF2-HMAC-SHA256 with ≥600,000 iterations acceptable for legacy. Never plaintext, MD5, or SHA-1. Always with unique salt per password. See §3.4. |

| What TLS version should I require? | TLS 1.3 preferred; TLS 1.2 acceptable with strong cipher suites. TLS 1.1/1.0 and SSL prohibited. Strong cipher suites required (AES-GCM or ChaCha20-Poly1305 preferred). See §3.5. |

| When do I need to encrypt data at rest? | RESTRICTED and CONFIDENTIAL data: REQUIRED. INTERNAL data: risk-based (typically full disk minimum). PCI cardholder data: REQUIRED per PCI §3. Personal data per RA 10173: REQUIRED. See §4.1. |

| When do I need TLS for data in transit? | All web traffic (internal and external). All API communications. All file transfers. Database connections. Cardholder data transmission. Inter-datacenter traffic. Wireless networks. See §4.2. |

| When do I need an HSM? | Payment system master keys, CA root signing keys, code signing for production releases, RESTRICTED database encryption: REQUIRED (FIPS 140-3 Level 2 minimum; Level 3 for highest tiers). RECOMMENDED for CONFIDENTIAL DB encryption, high-value TLS endpoints, sensitive backup keys. See §6.1.1. |

| How often do keys need to rotate? | Symmetric DEK: 2 years. Symmetric KEK: 3 years. TLS certs: ≤1 year. Code signing certs: ≤3 years. CA roots: 10-20 years. API keys: ≤1 year. Database keys: 2 years. See §5.4. |

| What if a key is compromised? | Immediate revocation; affected material assessment; emergency replacement; incident response per BFS-ISP-017. Investigation determines whether related keys also need precautionary rotation. See §5.6. |

| How should I prepare for post-quantum cryptography? | Use crypto-agile design enabling algorithm change without major redesign. New BFS systems should support algorithm change through configuration. Industry standard protocols (TLS) over custom cryptography. Track NIST PQC standardization. Hybrid implementations for long-sensitivity data. See §7.2 and §7.3. |

| Where do I get TLS certificates for BFS services? | Public-facing services: publicly-trusted CAs (must chain to browser/OS trust stores). Internal services: BFS internal CA where deployed. Certificate inventory tracked. Automated renewal preferred (ACME for general; managed for high-value). See §6.2.1. |

BFS-ISP-023  |  Cryptography Policy  |  v1.0  |  CONFIDENTIAL

© BFS Financial Services. Closes ISO/IEC 27001:2022 A.8.24. Foundational to BFS Information Protection.
