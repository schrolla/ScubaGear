# CISA M365 Security Configuration Baseline for [M365 Product]
The Secure Cloud Business Applications (SCuBA) project provides guidance and capabilities to secure agencies’ cloud business application environments and protect federal information that is created, accessed, shared, and stored in those environments. The SCuBA Secure Configuration Baselines (SCB) for Microsoft 365 (M365) will help secure federal civilian executive branch (FCEB) information assets stored within M365 cloud environments through consistent, effective, modern, and manageable security configurations.

Description of the M365 product (formally the introduction section)

## License Compliance and Copyright 
Portions of this document are adapted from documents in Microsoft’s [Microsoft 365](https://github.com/MicrosoftDocs/microsoft-365-docs/blob/public/LICENSE) and [Azure](https://github.com/MicrosoftDocs/azure-docs/blob/main/LICENSE) GitHub repositories. The respective documents are subject to copyright and are adapted under the terms of the Creative Commons Attribution 4.0 International license. Source documents are linked throughout this document. The United States Government has adapted selections of these documents to develop innovative and scalable configuration standards to strengthen the security of widely used cloud-based software services.

## Assumptions
The **License Requirements** sections of this document assume the organization is using an [M365 E3](https://www.microsoft.com/en-us/microsoft-365/compare-microsoft-365-enterprise-plans) or [G3](https://www.microsoft.com/en-us/microsoft-365/government) license level. Therefore, only licenses not included in E3/G3 are listed.

## Key Terminology (if applicable) 

Example:
Access to Teams can be controlled by the user type. In this baseline,
the types of users are defined as follows (Note: these terms vary in use
across Microsoft documentation):

1.  **Internal users**: members of the agency’s M365 tenant.

2.  **External users**: members of a different M365 tenant.

3.  **Business to Business** (B2B) guest users: external users that are
    formally invited to collaborate with the team and added to the
    agency’s Azure Active Directory (AAD) as guest users. These users
    authenticate with their home organization/tenant and are granted
    access to the team by virtue of being listed as guest users on the
    tenant’s AAD.

4.  **Unmanaged users**: users who are not members of any M365 tenant or
    organization (e.g., personal Microsoft accounts).

5.  **Anonymous users**: Teams users joining calls that are not
    authenticated through the agency’s tenant, including unmanaged
    users, external users (except for B2B guests), and true anonymous
    users, meaning users that are not logged in to any Microsoft or
    organization account, such as dial-in users.[^1]
    
# Baseline Policies
## 1. Policy Group 1
This section helps reduce security risks related to [Policy Group]. This includes [Scope of policies ] (This sentence is as needed). 
- Example: "This section helps reduce security risks related to the sharing of files with users external to the agency. This includes guest users, users who use a verification code and users who access an Anyone link."

### Policies

#### MS.M365PRODUCT.1.1v1
POLICY 1.
- _Rationale:_
  - 1st sentence: Security risk if policy is not implemented. "The security risk of [context of policy]"
  - 2nd sentence: How this policy minimizes this risk. By [Verb] the risk of [Vulnerability] is minimized."
  - Example: "The security risk with Microsoft Team's email integration is due to the fact that Teams channel's email addresses are not under the tenant’s domain, rather they are associated with the Microsoft-owned domain of "teams.ms". By disabling Teams email integration the risk of use of emails outside of the agency's security settings control is minimized."
- _Last modified:_ July 2023
- _Note:_ [As needed to note dependancies or "MAY" statements for more flexibility]
  - Example: "This policy is only applicable if the external sharing slider on the admin page is set to any value other than Only People in your Organization."

#### MS.M365PRODUCT.1.2v1
POLICY 2.
- _Rationale:_
  - 1st sentence: Security risk if policy is not implemented. "The security risk of [context of policy]"
  - 2nd sentence: How this policy minimizes this risk. By [Verb] the risk of [Vulnerability] is minimized."
- _Last modified:_ July 2023

### Resources

- [Title of article \|Publisher](Link) 
  - Example: [Overview of external sharing in SharePoint and OneDrive in Microsoft 365 \| Microsoft Documents](https://learn.microsoft.com/en-us/sharepoint/external-sharing-overview)

### License Requirements

- [any additional add-on licenses]

### Implementation

#### MS.M365PRODUCT.1.1v1 instructions:
1.  For sequential steps utilize “\>”
    - Example: **Policies** \> **Sharing**)
2.  Bold all-important buttonology
    - Example **Policies**, **Sharing**, **More external sharing settings**)

#### MS.M365PRODUCT.1.2v1 instructions:
1.  For sequential steps utilize “\>”
    - Example: **Policies** \> **Sharing**)
2.  Bold all-important buttonology
    - Example **Policies**, **Sharing**, **More external sharing settings**)

## 2. Policy Group 2

This section helps reduce security risks related to [Policy Group]. This includes [Scope of policies ] (This sentence is as needed). 

### Policies

#### MS.M365Product.2.1v1
POLICY 1.
- _Rationale:_
  - 1st sentence: Security risk if policy is not implemented. "The security risk of [context of policy]"
  - 2nd sentence: How this policy minimizes this risk. By [Verb] the risk of [Vulnerability] is minimized."
- _Last modified:_ July 2023

#### MS.M365PRODUCT.2.2v1
Policy 2.
- _Rationale:_
  - 1st sentence: Security risk if policy is not implemented. "The security risk of [context of policy]"
  - 2nd sentence: How this policy minimizes this risk. By [Verb] the risk of [Vulnerability] is minimized."
- _Last modified:_ July 2023

### Resources

- [Title of article \|Publisher](Link) 

### License Requirements

- [any additional add-on licenses]

### Implementation

#### MS.M365PRODUCT.2.1v1 instructions:
1.  For sequential steps utilize “\>”
    - Example: **Policies** \> **Sharing**)
2.  Bold all-important buttonology
    - Example **Policies**, **Sharing**, **More external sharing settings**)

#### MS.M365PRODUCT.2.2v1 instructions:
1.  For sequential steps utilize “\>”
    - Example: **Policies** \> **Sharing**)
2.  Bold all-important buttonology
    - Example **Policies**, **Sharing**, **More external sharing settings**)

# Acknowledgements

In addition to acknowledging the important contributions of a diverse
team of Cybersecurity and Infrastructure Security Agency (CISA) experts,
CISA thanks the following federal agencies and private sector
organizations that provided input during the development of the Secure
Business Cloud Application’s security configuration baselines in
response to Section 3 of [Executive Order (EO) 14028, *Improving the
Nation’s
Cybersecurity*](https://www.federalregister.gov/documents/2021/05/17/2021-10460/improving-the-nations-cybersecurity):

- Consumer Financial Protection Bureau (CFPB)

- Department of the Interior (DOI)

- National Aeronautics and Space Administration (NASA)

- Sandia National Laboratories (Sandia)

- U.S. Census Bureau (USCB)

- U.S. Geological Survey (USGS)

- U.S. Office of Personnel Management (OPM)

- U.S. Small Business Administration (SBA)

The cross-agency collaboration and partnerships developed during this
initiative serve as an example for solving complex problems faced by the
federal government.

**Cybersecurity Innovation Tiger Team (CITT) Leadership**

Beau Houser (USCB), Sanjay Gupta (SBA), Michael Witt (NASA), James
Saunders (OPM), Han Lin (Sandia), Andrew Havely (DOI).

**CITT Authors**

Trafenia Salzman (SBA), Benjamin McChesney (OPM), Robert Collier (USCB),
Matthew Snitchler (Sandia), Darryl Purdy (USCB), Brandon Frankens
(NASA), Brandon Goss (NASA), Nicole Bogeajis (DOI/USGS), Kevin Kelly
(DOI), Adnan Ehsan (CFPB), Michael Griffin (CFPB), Vincent Urias
(Sandia), Angela Calabaza (Sandia).

**CITT Contributors**

Dr. Mukesh Rohatgi (MITRE), Lee Szilagyi (MITRE), Nanda Katikaneni
(MITRE), Ted Kolovos (MITRE), Thomas Comeau (MITRE), Karen Caraway
(MITRE), Jackie Whieldon (MITRE), Jeanne Firey (MITRE), Kenneth Myers
(General Services Administration).

