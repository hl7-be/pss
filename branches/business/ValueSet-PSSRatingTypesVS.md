# Types of rating provided by the PSS system - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Types of rating provided by the PSS system**

## ValueSet: Types of rating provided by the PSS system 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/PSSRatingTypesVS | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*:PSSRatingTypesVS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.48.9 | |

 
ValueSet - Types of rating provided by the PSS system 

 **References** 

* [PSS Rating Extension](StructureDefinition-PSSStructuredRating.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSRatingTypes`](CodeSystem-PSSRatingTypes.md)version 📦1.0.0

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "PSSRatingTypesVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/PSSRatingTypesVS",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.48.9"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSRatingTypesVS",
  "title" : "Types of rating provided by the PSS system",
  "status" : "active",
  "experimental" : false,
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
  "description" : "ValueSet - Types of rating provided by the PSS system",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSRatingTypes"
      }
    ]
  }
}

```
