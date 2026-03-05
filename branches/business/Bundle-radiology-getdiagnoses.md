# Radiology - S1 Get Diagnoses - Request - 1. Bundle - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - S1 Get Diagnoses - Request - 1. Bundle**

## Example Bundle: Radiology - S1 Get Diagnoses - Request - 1. Bundle

Profile: [PSS Request Bundle](StructureDefinition-PSSRequestBundle.md)

Bundle radiology-getdiagnoses of type collection

-------

Entry 1 - fullUrl = urn:uuid:30551ce1-5a28-4356-b684-3e639094ad48

Resource Patient:

> 

Profile: [PSS anonymised Patient](StructureDefinition-PSSPatient.md)

Male, DoB Unknown
-------

-------

Entry 2 - fullUrl = urn:uuid:30551ce1-5a28-4356-b684-3e639094ad04

Resource Observation:

> **status**: Final**code**:Ataxia**subject**:[Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)**effective**: 2025-06-02

-------

Entry 3 - fullUrl = urn:uuid:30551ce1-5a28-4356-b684-3e631234ad04

Resource ServiceRequest:

> 

version: v1

Profile: [PSS Response Service Request](StructureDefinition-PSSResponseServiceRequest.md)

**identifier**: urn:uuid:30551ce1-5a28-4356-b684-3e639123ad02**status**: Active**intent**: Proposal**code**: No display for ServiceRequest.code (concept: CT, head, wo iv contrast)**subject**:[Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "radiology-getdiagnoses",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequestBundle"
    ]
  },
  "type" : "collection",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad48",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "30551ce1-5a28-4356-b684-3e639094ad48",
        "meta" : {
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSPatient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_30551ce1-5a28-4356-b684-3e639094ad48\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient 30551ce1-5a28-4356-b684-3e639094ad48</b></p><a name=\"30551ce1-5a28-4356-b684-3e639094ad48\"> </a><a name=\"hc30551ce1-5a28-4356-b684-3e639094ad48\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PSSPatient.html\">PSS anonymised Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\"> Male, DoB Unknown</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The approximate, relevant age of the patient at the time of the search.\"><a href=\"StructureDefinition-PSSRelevantAge.html\">PSS Relevant Patient Age</a></td><td colspan=\"3\">53 y<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codey = 'y')</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRelevantAge",
            "valueAge" : {
              "value" : 53,
              "system" : "http://unitsofmeasure.org",
              "code" : "y"
            }
          }
        ],
        "active" : true,
        "name" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode" : "masked"
              }
            ]
          }
        ],
        "gender" : "male",
        "deceasedBoolean" : false
      }
    },
    {
      "fullUrl" : "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad04",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "ataxia",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_ataxia\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation ataxia</b></p><a name=\"ataxia\"> </a><a name=\"hcataxia\"> </a><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 20262006}\">Ataxia</span></p><p><b>subject</b>: <a href=\"Patient-30551ce1-5a28-4356-b684-3e639094ad48.html\"> Male, DoB Unknown</a></p><p><b>effective</b>: 2025-06-02</p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "20262006",
              "display" : "Ataxia"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
        },
        "effectiveDateTime" : "2025-06-02"
      }
    },
    {
      "fullUrl" : "urn:uuid:30551ce1-5a28-4356-b684-3e631234ad04",
      "resource" : {
        "resourceType" : "ServiceRequest",
        "id" : "ct-head-wo-iv-contrast",
        "meta" : {
          "versionId" : "v1",
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_ct-head-wo-iv-contrast\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest ct-head-wo-iv-contrast</b></p><a name=\"ct-head-wo-iv-contrast\"> </a><a name=\"hcct-head-wo-iv-contrast\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">version: v1</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PSSResponseServiceRequest.html\">PSS Response Service Request</a></p></div><p><b>identifier</b>: urn:uuid:30551ce1-5a28-4356-b684-3e639123ad02</p><p><b>status</b>: Active</p><p><b>intent</b>: Proposal</p><p><b>code</b>: <span title=\"Codes:{https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSQSIProcedures 114055}\">CT, head, wo iv contrast</span></p><p><b>subject</b>: <a href=\"Patient-30551ce1-5a28-4356-b684-3e639094ad48.html\"> Male, DoB Unknown</a></p></div>"
        },
        "identifier" : [
          {
            "value" : "urn:uuid:30551ce1-5a28-4356-b684-3e639123ad02"
          }
        ],
        "status" : "active",
        "intent" : "proposal",
        "code" : {
          "coding" : [
            {
              "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSQSIProcedures",
              "code" : "114055",
              "display" : "CT, head, wo iv contrast"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
        }
      }
    }
  ]
}

```
