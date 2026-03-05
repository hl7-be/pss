# PSS Feedback Bundle - Prescription Search Support v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Feedback Bundle**

## Resource Profile: PSS Feedback Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSFeedbackBundle | *Version*:1.1.0 |
| Active as of 2026-03-05 | *Computable Name*:PSSFeedbackBundle |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.21 | |

 
The PSS Response Bundle is used to return data from the PSS system. 

**Usages:**

* Examples for this Profile: [Bundle/alternative-request-bundle](Bundle-alternative-request-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSFeedbackBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSFeedbackBundle.csv), [Excel](StructureDefinition-PSSFeedbackBundle.xlsx), [Schematron](StructureDefinition-PSSFeedbackBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSFeedbackBundle",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSFeedbackBundle",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.21"
  }],
  "version" : "1.1.0",
  "name" : "PSSFeedbackBundle",
  "title" : "PSS Feedback Bundle",
  "status" : "active",
  "date" : "2026-03-05T13:12:31+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be/standards/fhir/"
    },
    {
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net",
      "use" : "work"
    }]
  }],
  "description" : "The PSS Response Bundle is used to return data from the PSS system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "min" : 1
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "min" : 1
    }]
  }
}

```
