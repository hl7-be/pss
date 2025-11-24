# PSS Consent - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Consent**

## Logical Model: PSS Consent 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSConsentModel | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*:PSSConsentModel |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.17 | |

 
Consent statement about using PSS and agreeing with (or opting out of) the Terms and Conditions. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSConsentModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSConsentModel.csv), [Excel](StructureDefinition-PSSConsentModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSConsentModel",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSConsentModel",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.17"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSConsentModel",
  "title" : "PSS Consent",
  "status" : "active",
  "date" : "2025-11-04T09:37:58+00:00",
  "publisher" : "eHealth Platform Belgium",
  "contact" : [
    {
      "name" : "eHealth Platform Belgium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ehealth.fgov.be/standards/fhir/"
        },
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net"
        }
      ]
    },
    {
      "name" : "Message Structure eHealth",
      "telecom" : [
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Consent statement about using PSS and agreeing with (or opting out of) the Terms and Conditions.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSConsentModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PSSConsentModel",
        "path" : "PSSConsentModel",
        "short" : "PSS Consent",
        "definition" : "Consent statement about using PSS and agreeing with (or opting out of) the Terms and Conditions."
      },
      {
        "id" : "PSSConsentModel.HCP-ID",
        "path" : "PSSConsentModel.HCP-ID",
        "short" : "The anonymised ID of the healthcare professional",
        "definition" : "The anonymised ID of the healthcare professional",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.recordedDate",
        "path" : "PSSConsentModel.recordedDate",
        "short" : "Date on which the information was recorded",
        "definition" : "Date on which the information was recorded",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.instruction",
        "path" : "PSSConsentModel.instruction",
        "short" : "The instruction to the HCP",
        "definition" : "The instruction to the HCP",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.termsConditions",
        "path" : "PSSConsentModel.termsConditions",
        "short" : "Terms and Conditions",
        "definition" : "Terms and Conditions",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.termsConditions.policy",
        "path" : "PSSConsentModel.termsConditions.policy",
        "short" : "Link to the Terms and Conditions",
        "definition" : "Link to the Terms and Conditions",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.termsConditions.version",
        "path" : "PSSConsentModel.termsConditions.version",
        "short" : "Version of the Terms and Conditions",
        "definition" : "Version of the Terms and Conditions",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.consent",
        "path" : "PSSConsentModel.consent",
        "short" : "accepted, rejected",
        "definition" : "accepted, rejected",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.provision",
        "path" : "PSSConsentModel.provision",
        "short" : "Provision of the consent",
        "definition" : "Provision of the consent",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.provision.provisionType",
        "path" : "PSSConsentModel.provision.provisionType",
        "short" : "opt-in, opt-out",
        "definition" : "opt-in, opt-out",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "PSSConsentModel.provision.provisionStatus",
        "path" : "PSSConsentModel.provision.provisionStatus",
        "short" : "accepted, rejected",
        "definition" : "accepted, rejected",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      }
    ]
  }
}

```
