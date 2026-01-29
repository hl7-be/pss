# Home - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/ImplementationGuide/hl7.fhir.be.pss | *Version*:1.0.0 |
| Active as of 2024-04-26 | *Computable Name*:PrescriptionSearchSupport |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2 | |

This publication contains the specification for the Prescription Search Support.

The functional scope is to provide options during a prescription. The initial focus is on Antimicrobiology, i.e. searches related to ordering of antibiotics.

Acknowledging the impact and complexity of providing feedback on ordering, the PSS project uses an overall approach taken based on the existing guidance, namely [Clinical Practice Guidelines](https://hl7.org/fhir/uv/cpg)

Note:

* The Questionnnaires, ValueSets and CodeSystems depend on the actual guidelines, so they are not normative, and may change. They will be subject to different updates.

-------

### Dependencies

This IG Contains the following dependencies on other IGs.





### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (hl7.fhir.be.pss.r4)](package.r4.tgz) and [R4B (hl7.fhir.be.pss.r4b)](package.r4b.tgz) are available. 

### Global Profiles

*There are no Global profiles defined*

### Intellectual Property

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.1.0/CodeSystem-ISO3166Part1.html): [AnswerOptionAdditionalCode](StructureDefinition-AnswerOptionAdditionalCode.md), [BacterialCodes](ValueSet-BacterialCodes.md)... Show 49 more, [CandidaCodes](ValueSet-CandidaCodes.md), [CapabilityStatement/PSSProviderCapabilityStatement](CapabilityStatement-PSSProviderCapabilityStatement.md), [ChlamydiaCodes](ValueSet-ChlamydiaCodes.md), [CodeValueSet](StructureDefinition-CodeValueSet.md), [CompromisedImmuneSystemCodes](ValueSet-CompromisedImmuneSystemCodes.md), [Feedback](OperationDefinition-Feedback.md), [FeedbackTask](StructureDefinition-FeedbackTask.md), [GonokokCodes](ValueSet-GonokokCodes.md), [MycoplasmaCodes](ValueSet-MycoplasmaCodes.md), [OncologyPatientCodes](ValueSet-OncologyPatientCodes.md), [OtherCodes](ValueSet-OtherCodes.md), [PSSBundleTags](CodeSystem-PSSBundleTags.md), [PSSConsentModel](StructureDefinition-PSSConsentModel.md), [PSSDataAcquisitionForm](StructureDefinition-PSSDataAcquisitionForm.md), [PSSExceptionCodes](CodeSystem-pss-exception-codes.md), [PSSExceptionValueSet](ValueSet-pss-exception-valueset.md), [PSSFeedbackBundle](StructureDefinition-PSSFeedbackBundle.md), [PSSFeedbackCodes](CodeSystem-PSSFeedbackCodes.md), [PSSFeedbackCodesVS](ValueSet-PSSFeedbackCodesVS.md), [PSSFeedbackModel](StructureDefinition-PSSFeedbackModel.md), [PSSFeedbackReasonsVS](ValueSet-PSSFeedbackReasonsVS.md), [PSSMedicationRequest](StructureDefinition-PSSMedicationRequest.md), [PSSPatient](StructureDefinition-PSSPatient.md), [PSSQSIConditions](CodeSystem-PSSQSIConditions.md), [PSSQSIProcedures](CodeSystem-PSSQSIProcedures.md), [PSSQuestionnaireTask](StructureDefinition-PSSQuestionnaireTask.md), [PSSRatingTypes](CodeSystem-PSSRatingTypes.md), [PSSRatingTypesVS](ValueSet-PSSRatingTypesVS.md), [PSSRelevantAge](StructureDefinition-PSSRelevantAge.md), [PSSRequest](StructureDefinition-PSSRequest.md), [PSSRequestBundle](StructureDefinition-PSSRequestBundle.md), [PSSResponse](StructureDefinition-PSSResponse.md), [PSSResponseBundle](StructureDefinition-PSSResponseBundle.md), [PSSResponseCommunicationRequest](StructureDefinition-PSSResponseCommunicationRequest.md), [PSSResponseMedicationRequest](StructureDefinition-PSSResponseMedicationRequest.md), [PSSResponseRequestGroup](StructureDefinition-PSSResponseRequestGroup.md), [PSSResponseServiceRequest](StructureDefinition-PSSResponseServiceRequest.md), [PSSStructuredRating](StructureDefinition-PSSStructuredRating.md), [PSSaFeedbackReasons](CodeSystem-PSSaFeedbackReasons.md), [PSSrFeedbackReasons](CodeSystem-PSSrFeedbackReasons.md), [PlanDefinition/GetDataToCollect](PlanDefinition-GetDataToCollect.md), [PlanDefinition/GetDiagnoses](PlanDefinition-GetDiagnoses.md), [PlanDefinition/GetRecommendations](PlanDefinition-GetRecommendations.md), [PregnancyCodes](ValueSet-PregnancyCodes.md), [PrescriptionSearchSupport](index.md), [Questionnaire/30551ce1-5a28-4356-b684-2e639094ad4c](Questionnaire-30551ce1-5a28-4356-b684-2e639094ad4c.md), [RequestGroupActionResource](SearchParameter-requestgroup-action.md), [TCConsentForm](Questionnaire-26491cef-c5c7-4c5f-b10b-839e938f6b3e.md) and [TrichomonasCodes](ValueSet-TrichomonasCodes.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-ucum.html): [Bundle/getrecommendations-a-response](Bundle-getrecommendations-a-response.md), [MedicationRequest/30551ce1-5a28-4356-b684-1e639094ac23](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ac23.md), [MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad24](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad24.md) and [MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad25](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad25.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [AllergyIntolerance/30551ce1-5a28-4356-b684-2e639094ad02](AllergyIntolerance-30551ce1-5a28-4356-b684-2e639094ad02.md), [BacterialCodes](ValueSet-BacterialCodes.md)... Show 15 more, [Bundle/getdatatocollect-a-data](Bundle-getdatatocollect-a-data.md), [Bundle/getrecommendations-a-data](Bundle-getrecommendations-a-data.md), [Bundle/radiology-getdiagnoses](Bundle-radiology-getdiagnoses.md), [CandidaCodes](ValueSet-CandidaCodes.md), [ChlamydiaCodes](ValueSet-ChlamydiaCodes.md), [CompromisedImmuneSystemCodes](ValueSet-CompromisedImmuneSystemCodes.md), [Condition/30551ce1-5a28-4356-b684-2e639094ad01](Condition-30551ce1-5a28-4356-b684-2e639094ad01.md), [GonokokCodes](ValueSet-GonokokCodes.md), [MycoplasmaCodes](ValueSet-MycoplasmaCodes.md), [Observation/ataxia](Observation-ataxia.md), [OncologyPatientCodes](ValueSet-OncologyPatientCodes.md), [OtherCodes](ValueSet-OtherCodes.md), [PSSResponseServiceRequest](StructureDefinition-PSSResponseServiceRequest.md), [PregnancyCodes](ValueSet-PregnancyCodes.md) and [TrichomonasCodes](ValueSet-TrichomonasCodes.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [AllergyIntolerance Clinical Status Codes](http://terminology.hl7.org/7.0.1/CodeSystem-allergyintolerance-clinical.html): [AllergyIntolerance/30551ce1-5a28-4356-b684-2e639094ad02](AllergyIntolerance-30551ce1-5a28-4356-b684-2e639094ad02.md), [Bundle/getdatatocollect-a-data](Bundle-getdatatocollect-a-data.md) and [Bundle/getrecommendations-a-data](Bundle-getrecommendations-a-data.md)
* [Condition Category Codes](http://terminology.hl7.org/7.0.1/CodeSystem-condition-category.html): [Bundle/getdatatocollect-a-data](Bundle-getdatatocollect-a-data.md), [Bundle/getrecommendations-a-data](Bundle-getrecommendations-a-data.md)... Show 12 more, [Bundle/getrecommendations-data3](Bundle-getrecommendations-data3.md), [Bundle/radiology-getdiagnoses-response](Bundle-radiology-getdiagnoses-response.md), [Condition/287e8fe2-3e83-44bd-92e7-962bc90b6d67](Condition-287e8fe2-3e83-44bd-92e7-962bc90b6d67.md), [Condition/30551ce1-5a28-4356-b684-2e639094ad01](Condition-30551ce1-5a28-4356-b684-2e639094ad01.md), [Condition/30551ce1-5a28-4356-b684-4e639094ad11](Condition-30551ce1-5a28-4356-b684-4e639094ad11.md), [Condition/5f3aafb8-643c-4ed5-ad54-199939e7b2d1](Condition-5f3aafb8-643c-4ed5-ad54-199939e7b2d1.md), [Condition/72d3ced6-5133-4042-931e-04284c9f4283](Condition-72d3ced6-5133-4042-931e-04284c9f4283.md), [Condition/b90ca57a-1ae5-4ff6-8dce-48488660ea65](Condition-b90ca57a-1ae5-4ff6-8dce-48488660ea65.md), [Condition/pss-30551ce1-5a28-4356-b684-4e639094ad11](Condition-pss-30551ce1-5a28-4356-b684-4e639094ad11.md), [PlanDefinition/GetDataToCollect](PlanDefinition-GetDataToCollect.md), [PlanDefinition/GetDiagnoses](PlanDefinition-GetDiagnoses.md) and [PlanDefinition/GetRecommendations](PlanDefinition-GetRecommendations.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.0.1/CodeSystem-condition-clinical.html): [Bundle/getdatatocollect-a-data](Bundle-getdatatocollect-a-data.md), [Bundle/getrecommendations-a-data](Bundle-getrecommendations-a-data.md)... Show 9 more, [Bundle/getrecommendations-data3](Bundle-getrecommendations-data3.md), [Bundle/radiology-getdiagnoses-response](Bundle-radiology-getdiagnoses-response.md), [Condition/287e8fe2-3e83-44bd-92e7-962bc90b6d67](Condition-287e8fe2-3e83-44bd-92e7-962bc90b6d67.md), [Condition/30551ce1-5a28-4356-b684-2e639094ad01](Condition-30551ce1-5a28-4356-b684-2e639094ad01.md), [Condition/30551ce1-5a28-4356-b684-4e639094ad11](Condition-30551ce1-5a28-4356-b684-4e639094ad11.md), [Condition/5f3aafb8-643c-4ed5-ad54-199939e7b2d1](Condition-5f3aafb8-643c-4ed5-ad54-199939e7b2d1.md), [Condition/72d3ced6-5133-4042-931e-04284c9f4283](Condition-72d3ced6-5133-4042-931e-04284c9f4283.md), [Condition/b90ca57a-1ae5-4ff6-8dce-48488660ea65](Condition-b90ca57a-1ae5-4ff6-8dce-48488660ea65.md) and [Condition/pss-30551ce1-5a28-4356-b684-4e639094ad11](Condition-pss-30551ce1-5a28-4356-b684-4e639094ad11.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.0.1/CodeSystem-condition-ver-status.html): [Bundle/getdatatocollect-a-data](Bundle-getdatatocollect-a-data.md), [Bundle/getrecommendations-a-data](Bundle-getrecommendations-a-data.md)... Show 10 more, [Bundle/getrecommendations-data3](Bundle-getrecommendations-data3.md), [Bundle/radiology-getdiagnoses-response](Bundle-radiology-getdiagnoses-response.md), [Condition/287e8fe2-3e83-44bd-92e7-962bc90b6d67](Condition-287e8fe2-3e83-44bd-92e7-962bc90b6d67.md), [Condition/30551ce1-5a28-4356-b684-2e639094ad01](Condition-30551ce1-5a28-4356-b684-2e639094ad01.md), [Condition/30551ce1-5a28-4356-b684-4e639094ad11](Condition-30551ce1-5a28-4356-b684-4e639094ad11.md), [Condition/5f3aafb8-643c-4ed5-ad54-199939e7b2d1](Condition-5f3aafb8-643c-4ed5-ad54-199939e7b2d1.md), [Condition/72d3ced6-5133-4042-931e-04284c9f4283](Condition-72d3ced6-5133-4042-931e-04284c9f4283.md), [Condition/b90ca57a-1ae5-4ff6-8dce-48488660ea65](Condition-b90ca57a-1ae5-4ff6-8dce-48488660ea65.md), [Condition/pss-30551ce1-5a28-4356-b684-4e639094ad11](Condition-pss-30551ce1-5a28-4356-b684-4e639094ad11.md) and [PlanDefinition/GetDataToCollect](PlanDefinition-GetDataToCollect.md)
* [Observation Category Codes](http://terminology.hl7.org/7.0.1/CodeSystem-observation-category.html): [PlanDefinition/GetDataToCollect](PlanDefinition-GetDataToCollect.md), [PlanDefinition/GetDiagnoses](PlanDefinition-GetDiagnoses.md) and [PlanDefinition/GetRecommendations](PlanDefinition-GetRecommendations.md)
* [PlanDefinitionType](http://terminology.hl7.org/7.0.1/CodeSystem-plan-definition-type.html): [PlanDefinition/GetDataToCollect](PlanDefinition-GetDataToCollect.md), [PlanDefinition/GetDiagnoses](PlanDefinition-GetDiagnoses.md) and [PlanDefinition/GetRecommendations](PlanDefinition-GetRecommendations.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.be.pss",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/ImplementationGuide/hl7.fhir.be.pss",
  "version" : "1.0.0",
  "name" : "PrescriptionSearchSupport",
  "title" : "Prescription Search Support",
  "status" : "active",
  "date" : "2024-04-26",
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
  "description" : "Example IG exercises many of the fields in a SUSHI configuration.",
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
  "packageId" : "hl7.fhir.be.pss",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.1"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "cpg",
      "uri" : "http://hl7.org/fhir/uv/cpg/ImplementationGuide/hl7.fhir.uv.cpg",
      "packageId" : "hl7.fhir.uv.cpg",
      "version" : "2.0.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2021+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "STU1"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "auto-oid-root"
          },
          {
            "url" : "value",
            "valueString" : "2.16.840.1.113883.2.51.22.2"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://www.ehealth.fgov.be/standards/fhir/pss/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.9.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2021+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "STU1"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "auto-oid-root"
          },
          {
            "url" : "value",
            "valueString" : "2.16.840.1.113883.2.51.22.2"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://www.ehealth.fgov.be/standards/fhir/pss/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "grouping" : [
      {
        "id" : "LogicalModels",
        "name" : "Logical Models",
        "description" : "Data Models representing the data structures and requirements for interoperability."
      },
      {
        "id" : "PlanDefinitions",
        "name" : "PlanDefinitions (services)",
        "description" : "PlanDefinitions defining the service endpoints for using the PSS. These have the inputs and outputs represented by the profiles"
      },
      {
        "id" : "Profiles",
        "name" : "Resource Profiles",
        "description" : "These define constraints on FHIR resources for systems conforming to this implementation guide"
      },
      {
        "id" : "Extensions",
        "name" : "Extensions",
        "description" : "These define additional elements that can be exchanged with the respective FHIR resources"
      },
      {
        "id" : "Feedback",
        "name" : "Feedback",
        "description" : "Feedback resources for the PSS services"
      },
      {
        "id" : "Common-resources",
        "name" : "Common examples",
        "description" : "Common examples - valid to multiple PSS services"
      },
      {
        "id" : "Antimicrobiology",
        "name" : "Examples - Antimicrobiology",
        "description" : "Antimicrobiology PSS resource examples"
      },
      {
        "id" : "Radiology",
        "name" : "Examples - Radiology",
        "description" : "Radiology PSS resource examples"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/30551ce1-5a28-4356-b684-2e639094ad48"
        },
        "name" : "30551ce1-5a28-4356-b684-2e639094ad48",
        "description" : "Example anonymised patient A",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSPatient",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ServiceRequest"
          }
        ],
        "reference" : {
          "reference" : "ServiceRequest/alternative-request"
        },
        "name" : "alternative-request",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/alternative-request-bundle"
        },
        "name" : "alternative-request-bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSFeedbackBundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
        },
        "name" : "Anonymised Patient R",
        "description" : "Example anonymised patient R",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSPatient",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/AnswerOptionAdditionalCode"
        },
        "name" : "AnswerOption Additional Code",
        "description" : "An additional code for an option in a choice question",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/alternative-request-task"
        },
        "name" : "Antimicrobial - Select another option that is not in the recommendations",
        "description" : "Prescriber decides to use another treatment that is not in the PSS recommendations",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/task-accepted-green-a"
        },
        "name" : "Antimicrobial - Select green recommendation",
        "description" : "Prescriber selects a green antimicrobial recommendation",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/task-accepted-red-a"
        },
        "name" : "Antimicrobial - Select red recommendation",
        "description" : "Prescriber selects an red antimicrobial recommendation with a reason",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/antimicrobial-feedback-green"
        },
        "name" : "Antimicrobial feedback - green recommendation",
        "description" : "Prescriber selects a green antimicrobial recommendation",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/antimicrobial-feedback-red"
        },
        "name" : "Antimicrobial feedback - red recommendation",
        "description" : "Prescriber selects an red antimicrobial recommendation with a reason",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/26491cef-c5c7-4c5f-b10b-839e938f6b3d"
        },
        "name" : "Antimicrobiology - No permission to use system - 11.1. Task",
        "description" : "Antimicrobiology - No permission to use system - 11.1. Task",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSQuestionnaireTask",
        "groupingId" : "Common-resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CommunicationRequest"
          }
        ],
        "reference" : {
          "reference" : "CommunicationRequest/1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2"
        },
        "name" : "Antimicrobiology - PSS not activated- Response",
        "description" : "Antimicrobiology - PSS not activated- Response",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseCommunicationRequest",
        "groupingId" : "Common-resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/getdatatocollect-a-data"
        },
        "name" : "Antimicrobiology - S2 Get data to collect - Request - 1. - Bundle",
        "description" : "Antimicrobiology - S2 Get data to collect - Request - 1. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequestBundle",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/30551ce1-5a28-4356-b684-2e639094ad01"
        },
        "name" : "Antimicrobiology - S2 Get data to collect - Request - 1.1. Diagnostic hypothesis - vulvovaginitis",
        "description" : "Antimicrobiology - S2 Get data to collect - Request - 1.1. Diagnostic hypothesis - vulvovaginitis",
        "exampleBoolean" : true,
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AllergyIntolerance"
          }
        ],
        "reference" : {
          "reference" : "AllergyIntolerance/30551ce1-5a28-4356-b684-2e639094ad02"
        },
        "name" : "Antimicrobiology - S2 Get data to collect - Request - 1.2. Known allergy - sulfonamide",
        "description" : "Antimicrobiology - S2 Get data to collect - Request - 1.2. Known allergy - sulfonamide",
        "exampleBoolean" : true,
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-2e639094ad12"
        },
        "name" : "Antimicrobiology - S2 Get data to collect - Request - 1.3. Considered treatment - clindamycin",
        "description" : "Antimicrobiology - S2 Get data to collect - Request - 1.3. Considered treatment - clindamycin",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSMedicationRequest",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/getdatatocollect-a-response"
        },
        "name" : "Antimicrobiology - S2 Get data to collect - Response - 1. Bundle",
        "description" : "Antimicrobiology - S2 Get data to collect - Response - 1. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RequestGroup"
          }
        ],
        "reference" : {
          "reference" : "RequestGroup/getdatatocollect-a-response-group"
        },
        "name" : "Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup",
        "description" : "Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup",
        "exampleBoolean" : true,
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/30551ce1-5a28-4356-b684-11ef43a67755"
        },
        "name" : "Antimicrobiology - S2 Get data to collect - Response - 1.2. Task for collecting information",
        "description" : "Antimicrobiology - S2 Get data to collect - Response - 1.2. Task for collecting information",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSQuestionnaireTask",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/30551ce1-5a28-4356-b684-2e639094ad4c"
        },
        "name" : "Antimicrobiology - S2 Get data to collect - Response - 1.3. Questionnaire",
        "description" : "Antimicrobiology - S2 Get data to collect - Response - 1.3. Questionnaire",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSDataAcquisitionForm",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/getrecommendations-a-data"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Request- 1. Bundle",
        "description" : "Antimicrobiology - S3 Get Recommendations - Request- 1. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequestBundle",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "QuestionnaireResponse"
          }
        ],
        "reference" : {
          "reference" : "QuestionnaireResponse/30551ce1-5a28-4356-b684-2e639094ac02"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Request- 1.1. QuestionnaireResponse",
        "description" : "Antimicrobiology - S3 Get Recommendations - Request- 1.1. QuestionnaireResponse",
        "exampleBoolean" : true,
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/getrecommendations-a-response"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Response - 1. Bundle",
        "description" : "Antimicrobiology - S3 Get Recommendations - Response - 1. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RequestGroup"
          }
        ],
        "reference" : {
          "reference" : "RequestGroup/getrecommendations-a-response-group"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup",
        "description" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseRequestGroup",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CommunicationRequest"
          }
        ],
        "reference" : {
          "reference" : "CommunicationRequest/30551ce1-5a28-4356-b684-1e639094dd22"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice",
        "description" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseCommunicationRequest",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ac23"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol",
        "description" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad24"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3.1 - Clindamycine ovule",
        "description" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3.1 - Clindamycine ovule",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad25"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3.2 - Clindamycine vaginale crème",
        "description" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3.2 - Clindamycine vaginale crème",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad26"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.4. option 4 - fluconazol",
        "description" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.4. option 4 - fluconazol",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad29"
        },
        "name" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.5. option 5 - miconazol",
        "description" : "Antimicrobiology - S3 Get Recommendations - Response - 1.1.5. option 5 - miconazol",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest",
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/BacterialCodes"
        },
        "name" : "Bacterial Codes",
        "description" : "Bacterial Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/CandidaCodes"
        },
        "name" : "Candida Codes",
        "description" : "Candida Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/ChlamydiaCodes"
        },
        "name" : "Chlamydia Codes",
        "description" : "Chlamydia Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/CodeValueSet"
        },
        "name" : "Code ValueSet",
        "description" : "A ValueSet used when a question / item can correspond not just to a single code but to a set of concepts",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/PSSRatingTypes"
        },
        "name" : "CodeSystem: Types of rating provided by the PSS system",
        "description" : "CodeSystem: Types of rating provided by the PSS system",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/CompromisedImmuneSystemCodes"
        },
        "name" : "CompromisedImmuneSystem Codes",
        "description" : "CompromisedImmuneSystem Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/feedback-example"
        },
        "name" : "Example of feedback on a PSS suggestion",
        "description" : "Example of how to provide feedback on a PSS suggestion, including the outcome of the suggestion and the reason for overriding it.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/no-response-response"
        },
        "name" : "Generic response - Guidance unavailable",
        "description" : "Generic response - PSS not activated- 1. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle",
        "groupingId" : "Common-resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RequestGroup"
          }
        ],
        "reference" : {
          "reference" : "RequestGroup/26491cef-c5c7-4c5f-b10b-839e938f6b3c"
        },
        "name" : "Generic response - No permission to use system",
        "description" : "Antimicrobiology - No permission to use system - 11.1. RequestGroup",
        "exampleBoolean" : true,
        "groupingId" : "Common-resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/any-service-no-consent-response-response"
        },
        "name" : "Generic response - No permission to use system - 11. Bundle",
        "description" : "Antimicrobiology - No permission to use system - 11. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle",
        "groupingId" : "Common-resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RequestGroup"
          }
        ],
        "reference" : {
          "reference" : "RequestGroup/no-response-group"
        },
        "name" : "Generic response - PSS not activated- 10.1. RequestGroup",
        "description" : "Generic response - PSS not activated- 10.1. RequestGroup",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseRequestGroup",
        "groupingId" : "Common-resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/GetDataToCollect"
        },
        "name" : "GetDataToCollect",
        "description" : "Get Data to Collect",
        "exampleBoolean" : true,
        "groupingId" : "PlanDefinitions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/GetDiagnoses"
        },
        "name" : "GetDiagnoses",
        "description" : "Get Diagnoses Data",
        "exampleBoolean" : true,
        "groupingId" : "PlanDefinitions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PlanDefinition"
          }
        ],
        "reference" : {
          "reference" : "PlanDefinition/GetRecommendations"
        },
        "name" : "GetRecommendations",
        "description" : "Get recommendations for potential treatments based on patient information",
        "exampleBoolean" : true,
        "groupingId" : "PlanDefinitions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/GonokokCodes"
        },
        "name" : "Gonokok Codes",
        "description" : "Gonokok Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/MycoplasmaCodes"
        },
        "name" : "Mycoplasma Codes",
        "description" : "Mycoplasma Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/OncologyPatientCodes"
        },
        "name" : "OncologyPatient Codes",
        "description" : "OncologyPatient Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/OtherCodes"
        },
        "name" : "Other Codes",
        "description" : "Other Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/PregnancyCodes"
        },
        "name" : "Pregnancy Codes",
        "description" : "Pregnancy Codes - used for EHRs to consider pregnancy status",
        "exampleBoolean" : false,
        "groupingId" : "Antimicrobiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSPatient"
        },
        "name" : "PSS anonymised Patient",
        "description" : "PSS anonymised Patient",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/PSSBundleTags"
        },
        "name" : "PSS Bundle Tags",
        "description" : "PSS Bundle Tags - Feedback, Recommendation",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSConsentModel"
        },
        "name" : "PSS Consent",
        "description" : "Consent statement about using PSS and agreeing with (or opting out of) the Terms and Conditions.",
        "exampleBoolean" : false,
        "groupingId" : "LogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSDataAcquisitionForm"
        },
        "name" : "PSS Data Acquisition Form",
        "description" : "The PSS Data Acquisition Form is used to inform what data needs to be acquired and provided to the PSS system.",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/pss-exception-codes"
        },
        "name" : "PSS Exception Codes",
        "description" : "Exception codes for Patient Summary (PSS) processing.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/pss-exception-valueset"
        },
        "name" : "PSS Exception ValueSet",
        "description" : "ValueSet including exception codes for Patient Summary (PSS).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSFeedbackModel"
        },
        "name" : "PSS Feedback",
        "description" : "Feedback containing the acceptance of the PSS results.",
        "exampleBoolean" : false,
        "groupingId" : "LogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/PSSFeedbackReasonsVS"
        },
        "name" : "PSS Feedback Code Reasons",
        "description" : "Feedback code reasons for PSS",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/PSSFeedbackCodesVS"
        },
        "name" : "PSS Feedback Codes",
        "description" : "Feedback codes for PSS",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/PSSFeedbackCodes"
        },
        "name" : "PSS Feedback Codes",
        "description" : "Feedback codes for PSS",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/Feedback"
        },
        "name" : "PSS Feedback Operation Definition",
        "description" : "Operation to provide feedback on PSS suggestions",
        "exampleBoolean" : false,
        "groupingId" : "Feedback"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/FeedbackTask"
        },
        "name" : "PSS Feedback Task",
        "description" : "Task to collect feedback on PSS suggestions",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSMedicationRequest"
        },
        "name" : "PSS MedicationRequest Task",
        "description" : "PSS MedicationRequest - using anonymised patient",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/PSSProviderCapabilityStatement"
        },
        "name" : "PSS Provider System Capability Statement",
        "description" : "CapabilityStatement for PSS provider systems.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSQuestionnaireTask"
        },
        "name" : "PSS Questionnaire Task",
        "description" : "PSS Task for Questionnaire - using anonymised patient",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSStructuredRating"
        },
        "name" : "PSS Rating Extension",
        "description" : "A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSRelevantAge"
        },
        "name" : "PSS Relevant Patient Age",
        "description" : "The approximate, relevant age of the patient at the time of the search.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSRequest"
        },
        "name" : "PSS Request",
        "description" : "A request for PSS (Prescriber Support System) results.",
        "exampleBoolean" : false,
        "groupingId" : "LogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSRequestBundle"
        },
        "name" : "PSS Request Bundle",
        "description" : "The PSS Request Data Bundle is used to request data from the PSS system.",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSResponse"
        },
        "name" : "PSS Response",
        "description" : "A response containing the results from the PSS.",
        "exampleBoolean" : false,
        "groupingId" : "LogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSFeedbackBundle"
        },
        "name" : "PSS Response Bundle",
        "description" : "The PSS Response Bundle is used to return data from the PSS system.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSResponseBundle"
        },
        "name" : "PSS Response Bundle",
        "description" : "The PSS Response Bundle is used to return data from the PSS system.",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSResponseCommunicationRequest"
        },
        "name" : "PSS Response Communication Request",
        "description" : "All PSS responses contain a PSS Communication Request conformant to this profile.",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSResponseMedicationRequest"
        },
        "name" : "PSS Response Medication Request",
        "description" : "The PSS Response Medication Request is used when the PSS system returns a MedicationRequest",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSResponseRequestGroup"
        },
        "name" : "PSS Response Request Group",
        "description" : "All PSS responses contain a PSS RequestGroup conformant to this profile.",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/PSSResponseServiceRequest"
        },
        "name" : "PSS Response Service Request",
        "description" : "The PSS Response Service Request is used when the PSS system returns a ServiceRequest",
        "exampleBoolean" : false,
        "groupingId" : "Profiles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/PSSQSIConditions"
        },
        "name" : "PSS-QSI condition codes",
        "description" : "Condition codes from the QSI system",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/PSSQSIProcedures"
        },
        "name" : "PSS-QSI procedure codes",
        "description" : "Procedure codes from the QSI system",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/PSSaFeedbackReasons"
        },
        "name" : "PSSa Feedback Code Reasons",
        "description" : "Feedback code reasons for PSS antimicrobial",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/PSSrFeedbackReasons"
        },
        "name" : "PSSr Feedback Code Reasons",
        "description" : "Feedback code reasons for PSS radiology",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/radiology-getdiagnoses"
        },
        "name" : "Radiology - S1 Get Diagnoses - Request - 1. Bundle",
        "description" : "Radiology - S1 Get Diagnoses - Request - 1. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequestBundle",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ataxia"
        },
        "name" : "Radiology - S1 Get Diagnoses - Request - 1.1. Observed data",
        "description" : "Radiology - S1 Get Diagnoses - Request - 1.1. Observed data",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ServiceRequest"
          }
        ],
        "reference" : {
          "reference" : "ServiceRequest/ct-head-wo-iv-contrast"
        },
        "name" : "Radiology - S1 Get Diagnoses - Request - 1.3 Original suggestion - CT head wo IV contrast",
        "description" : "Radiology - S1 Get Recommendations - Request - 1.3 Original suggestion - CT head wo IV contrast",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/radiology-getdiagnoses-response"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1. Bundle",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RequestGroup"
          }
        ],
        "reference" : {
          "reference" : "RequestGroup/30551ce1-5a28-4356-b684-3e639094ad08"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.1. RequestGroup with options",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.1. RequestGroup with options",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/54aad964-ad8a-4985-8ff1-3b09d707ee1e"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.10. Task to propose diagnosis - Post-trauma ataxia",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.10. Task to propose diagnosis - Post-trauma ataxia",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/b90ca57a-1ae5-4ff6-8dce-48488660ea65"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/1cdd5aab-1d4d-4965-bbe1-c851698d07f0"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.2. Task to propose diagnosis - Stroke",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.2. Task to propose diagnosis - Stroke",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/287e8fe2-3e83-44bd-92e7-962bc90b6d67"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.3. Diagnosis - Stroke",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.3. Diagnosis - Stroke",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/db2698ba-cd0b-4c08-b57c-868ab5b95af6"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/5f3aafb8-643c-4ed5-ad54-199939e7b2d1"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/30551ce1-5a28-4356-b684-3e639094ad11"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.6. Task to propose diagnosis - Head trauma",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.6. Task to propose diagnosis - Head trauma",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/30551ce1-5a28-4356-b684-4e639094ad11"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.7. Diagnosis - Head trauma",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.7. Diagnosis - Head trauma",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/cfdfee5b-1db1-43fe-af72-4ea54b4e1a16"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.8. Task to propose diagnosis - Chronic or slow progression-ataxia",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.8 Task to propose diagnosis - Chronic or slow progression-ataxia",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/72d3ced6-5133-4042-931e-04284c9f4283"
        },
        "name" : "Radiology - S1 Get Diagnoses - Response - 1.9. Diagnosis - Chronic or slow progression-ataxia",
        "description" : "Radiology - S1 Get Diagnoses - Response - 1.9. Diagnosis - Chronic or slow progression-ataxia",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/getrecommendations-data3"
        },
        "name" : "Radiology - S3 Get Recommendations - Request- 1. request Bundle",
        "description" : "Radiology - S3 Get Recommendations - Request - 1. request Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequestBundle",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Condition"
          }
        ],
        "reference" : {
          "reference" : "Condition/pss-30551ce1-5a28-4356-b684-4e639094ad11"
        },
        "name" : "Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma",
        "description" : "Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma",
        "exampleBoolean" : true,
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ServiceRequest"
          }
        ],
        "reference" : {
          "reference" : "ServiceRequest/pss-ct-head-wo-iv-contrast"
        },
        "name" : "Radiology - S3 Get Recommendations - Request- 1.2 Scored procedure from initially considered: CT head wo IV contrast",
        "description" : "Radiology - S3 Get Recommendations - Request- 1.2. Initially considered procedure: CT head wo IV contrast",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/getrecommendations-r-response"
        },
        "name" : "Radiology - S3 Get Recommendations - Response - 1. Bundle",
        "description" : "Radiology - S3 Get Recommendations - Response - 1. Bundle",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RequestGroup"
          }
        ],
        "reference" : {
          "reference" : "RequestGroup/getrecommendations-r-response-1"
        },
        "name" : "Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup",
        "description" : "Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseRequestGroup",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ServiceRequest"
          }
        ],
        "reference" : {
          "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639094ad23"
        },
        "name" : "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT head wo IV contrast",
        "description" : "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT head wo IV contrast",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ServiceRequest"
          }
        ],
        "reference" : {
          "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639094ad22"
        },
        "name" : "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 3 - CT head wo/w iv contrast",
        "description" : "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 3 - CT head wo/w iv contrast",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ServiceRequest"
          }
        ],
        "reference" : {
          "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639044ad77"
        },
        "name" : "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 2 - MR head wo iv contrast",
        "description" : "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 2 - MR head wo iv contrast",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest",
        "groupingId" : "Radiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/task-accepted-green-r"
        },
        "name" : "Radiology - Select green recommendation",
        "description" : "Prescriber selects a green recommendation",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/task-accepted-orange-r"
        },
        "name" : "Radiology - Select orange recommendation",
        "description" : "Prescriber selects an orange recommendation",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Task"
          }
        ],
        "reference" : {
          "reference" : "Task/task-accepted-other-r"
        },
        "name" : "Radiology - Select other recommendation",
        "description" : "Prescriber selects an other recommendation",
        "exampleCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/radiology-feedback"
        },
        "name" : "Radiology feedback",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "SearchParameter"
          }
        ],
        "reference" : {
          "reference" : "SearchParameter/requestgroup-action"
        },
        "name" : "requestgroup-action",
        "description" : "Resources referenced anywhere in RequestGroup.action[*.].resource (supports one level of nested actions).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Questionnaire"
          }
        ],
        "reference" : {
          "reference" : "Questionnaire/26491cef-c5c7-4c5f-b10b-839e938f6b3e"
        },
        "name" : "Terms and Conditions Consent Form",
        "description" : "Terms and Conditions Consent Form",
        "exampleBoolean" : true,
        "groupingId" : "Common-resources"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/TrichomonasCodes"
        },
        "name" : "Trichomonas Codes",
        "description" : "Trichomonas Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/PSSRatingTypesVS"
        },
        "name" : "Types of rating provided by the PSS system",
        "description" : "ValueSet - Types of rating provided by the PSS system",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "functional-overview.html"
            }
          ],
          "nameUrl" : "functional-overview.html",
          "title" : "Functional Overview",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "services.html"
            }
          ],
          "nameUrl" : "services.html",
          "title" : "Overview of PSS services",
          "generation" : "markdown",
          "page" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "radiology.html"
                }
              ],
              "nameUrl" : "radiology.html",
              "title" : "Radiology",
              "generation" : "markdown"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
                  "valueUrl" : "antimicrobiology.html"
                }
              ],
              "nameUrl" : "antimicrobiology.html",
              "title" : "Antimicrobiology",
              "generation" : "markdown"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "changes.html"
            }
          ],
          "nameUrl" : "changes.html",
          "title" : "Changes",
          "generation" : "html"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "downloads.html"
            }
          ],
          "nameUrl" : "downloads.html",
          "title" : "Downloads",
          "generation" : "html"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
