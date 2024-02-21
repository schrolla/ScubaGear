Baseline Update Example 1:
- updated version number in deleted policy to "X"
- strikethrough policy ID, policy, and rationale
- updated last modified to March 2024
- added note to deleted policy noting the removal and rationale for removal
- noted that the policy was removed in reference to the next baseline version (used minor increase for baseline v1.0.0 -> v1.1.0 
- updated policy id scheme to use policy id instead of baseline version (seen in new policy MS.EXO.2.2v2. This is also a "major" increase in version)
- updated MS.EXO.2.2v1 to MS.EXO.2.2v2
- updated MS.EXO.2.2v2 policy language
- updated MS.EXO.2.2v2 last modified date
- in implementation section updated version number in deleted policy to "X"
- used strikethrough for implmentation section


### Policies

#### ~~MS.EXO.2.1X~~
~~A list of approved IP addresses for sending mail SHALL be maintained.~~

<!--Policy: MS.EXO.2.1v1; Criticality: SHALL -->
~~- _Rationale:_ Failing to maintain an accurate list of authorized IP addresses may result in spoofed email messages or failure to deliver legitimate messages when SPF is enabled. Maintaining such a list helps ensure that unauthorized servers sending spoofed messages can be detected, and permits message delivery from legitimate senders.~~
- _Last modified:_ March 2024
- _Note:_ Policy MS.EXO.2.1v1 was removed in exo.md version 1.1.0 because it is not a security configuation that can be audited and has been added to MS.EXO.2.2v2.


#### MS.EXO.2.2v2
An SPF policy SHALL be published for each domain that fails all non-approved senders.

<!--Policy: MS.EXO.2.2v2; Criticality: SHALL -->
- _Rationale:_ An adversary may modify the `FROM` field
of an email such that it appears to be a legitimate email sent by an
agency, facilitating phishing attacks. Publishing an SPF policy for each agency domain mitigates forged `FROM` fields by providing a means for recipients to detect emails spoofed in this way.  SPF is required for FCEB departments and agencies by Binding Operational Directive (BOD) 18-01, "Enhance Email and Web Security".
- _Last modified:_ March 2024


### Resources

- [Binding Operational Directive 18-01 - Enhance Email and Web Security
  \| DHS](https://cyber.dhs.gov/bod/18-01/)

- [Trustworthy Email \| NIST 800-177 Rev.
  1](https://csrc.nist.gov/publications/detail/sp/800-177/rev-1/final)

- [Set up SPF to help prevent spoofing \| Microsoft
  Learn](https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/email-authentication-spf-configure?view=o365-worldwide)

- [How Microsoft 365 uses Sender Policy Framework (SPF) to prevent
  spoofing \| Microsoft
  Learn](https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/email-authentication-anti-spoofing?view=o365-worldwide)

### License Requirements

- N/A

### Implementation

~~#### MS.EXO.2.1X Instructions
Identify any approved senders specific to your agency.
Additionally, see [External DNS records required for SPF](https://learn.microsoft.com/en-us/microsoft-365/enterprise/external-domain-name-system-records?view=o365-worldwide#external-dns-records-required-for-spf) for
inclusions required for Microsoft to send email on behalf of your domain.~~

#### MS.EXO.2.2v2 Instructions
SPF is not configured through the Exchange admin center, but rather via
DNS records hosted by the agency's domain. Thus, the exact steps needed
to set up SPF varies from agency to agency. See [Add or edit an SPF TXT record to help prevent email spam (Outlook, Exchange Online) \| Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider?view=o365-worldwide#add-or-edit-an-spf-txt-record-to-help-prevent-email-spam-outlook-exchange-online) for more details.

To test your SPF configuration, consider using a web-based tool, such as
those listed under [How can I validate SPF records for my domain? \| Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-365/admin/setup/domains-faq?view=o365-worldwide#how-can-i-validate-spf-records-for-my-domain).
Additionally, SPF records can be requested using the
PowerShell tool `Resolve-DnsName`. For example:

```
Resolve-DnsName example.onmicrosoft.com txt
```

If SPF is configured, you will see a response resembling `v=spf1 include:spf.protection.outlook.com -all`
returned; though by necessity, the contents of the SPF
policy may vary by agency. In this example, the SPF policy indicates
the IP addresses listed by the policy for "spf.protection.outlook.com" are
the only approved senders for "example.onmicrosoft.com." These IPs can be determined
via an additional SPF lookup, this time for "spf.protection.outlook.com." Ensure
the IP addresses listed as approved senders for your domain are those identified for
MS.EXO.2.1v1. See [SPF TXT record syntax for Microsoft 365 \| Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/email-authentication-anti-spoofing?view=o365-worldwide#spf-txt-record-syntax-for-microsoft-365) for a more in-depth discussion
of SPF record syntax.

## 3. DomainKeys Identified Mail

DomainKeys Identified Mail (DKIM) allows digital signatures to be added
to email messages in the message header, providing a layer of both
authenticity and integrity to emails. As with SPF, DKIM relies on DNS
records; thus, its deployment depends on how an agency manages its DNS.
Exchange Online Protection (EOP) features include DKIM signing capabilities.

### Policies

#### MS.EXO.3.1v1
DKIM SHOULD be enabled for all domains.

<!--Policy: MS.EXO.3.1v1; Criticality: SHOULD -->
- _Rationale:_ An adversary may modify the `FROM` field
of an email such that it appears to be a legitimate email sent by an
agency, facilitating phishing attacks. Enabling DKIM is another means for
recipients to detect spoofed emails and verify the integrity of email content.
- _Last modified:_ June 2023

### Resources

- [Binding Operational Directive 18-01 - Enhance Email and Web Security
  \| DHS](https://cyber.dhs.gov/bod/18-01/)

- [Trustworthy Email \| NIST 800-177 Rev.
  1](https://csrc.nist.gov/publications/detail/sp/800-177/rev-1/final)

- [Use DKIM to validate outbound email sent from your custom domain \|
  Microsoft
  Learn](https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/email-authentication-dkim-configure?view=o365-worldwide)

- [Support for validation of DKIM signed messages \| Microsoft
  Learn](https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/email-authentication-dkim-support-about?view=o365-worldwide)

- [What is EOP? \| Microsoft
  Learn](https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/eop-faq?view=o365-worldwide#what-is-eop-)

### License Requirements

- N/A

### Implementation

#### MS.EXO.3.1v1 Instructions
1. To enable DKIM, follow the instructions listed on [Steps to Create,
enable and disable DKIM from Microsoft 365 Defender portal \| Microsoft
Learn](https://learn.microsoft.com/en-us/microsoft-365/security/office-365-security/email-authentication-dkim-configure?view=o365-worldwide#steps-to-create-enable-and-disable-dkim-from-microsoft-365-defender-portal).

