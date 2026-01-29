# Artifacts Summary - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Logical Models 

Data Models representing the data structures and requirements for interoperability.

| | |
| :--- | :--- |
| [PSS Consent](StructureDefinition-PSSConsentModel.md) | Consent statement about using PSS and agreeing with (or opting out of) the Terms and Conditions. |
| [PSS Feedback](StructureDefinition-PSSFeedbackModel.md) | Feedback containing the acceptance of the PSS results. |
| [PSS Request](StructureDefinition-PSSRequest.md) | A request for PSS (Prescriber Support System) results. |
| [PSS Response](StructureDefinition-PSSResponse.md) | A response containing the results from the PSS. |

### PlanDefinitions (services) 

PlanDefinitions defining the service endpoints for using the PSS. These have the inputs and outputs represented by the profiles

| | |
| :--- | :--- |
| [GetDataToCollect](PlanDefinition-GetDataToCollect.md) | Get Data to Collect |
| [GetDiagnoses](PlanDefinition-GetDiagnoses.md) | Get Diagnoses Data |
| [GetRecommendations](PlanDefinition-GetRecommendations.md) | Get recommendations for potential treatments based on patient information |

### Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide

| | |
| :--- | :--- |
| [PSS anonymised Patient](StructureDefinition-PSSPatient.md) | PSS anonymised Patient |
| [PSS Data Acquisition Form](StructureDefinition-PSSDataAcquisitionForm.md) | The PSS Data Acquisition Form is used to inform what data needs to be acquired and provided to the PSS system. |
| [PSS MedicationRequest Task](StructureDefinition-PSSMedicationRequest.md) | PSS MedicationRequest - using anonymised patient |
| [PSS Questionnaire Task](StructureDefinition-PSSQuestionnaireTask.md) | PSS Task for Questionnaire - using anonymised patient |
| [PSS Request Bundle](StructureDefinition-PSSRequestBundle.md) | The PSS Request Data Bundle is used to request data from the PSS system. |
| [PSS Response Bundle](StructureDefinition-PSSResponseBundle.md) | The PSS Response Bundle is used to return data from the PSS system. |
| [PSS Response Communication Request](StructureDefinition-PSSResponseCommunicationRequest.md) | All PSS responses contain a PSS Communication Request conformant to this profile. |
| [PSS Response Medication Request](StructureDefinition-PSSResponseMedicationRequest.md) | The PSS Response Medication Request is used when the PSS system returns a MedicationRequest |
| [PSS Response Request Group](StructureDefinition-PSSResponseRequestGroup.md) | All PSS responses contain a PSS RequestGroup conformant to this profile. |
| [PSS Response Service Request](StructureDefinition-PSSResponseServiceRequest.md) | The PSS Response Service Request is used when the PSS system returns a ServiceRequest |

### Extensions 

These define additional elements that can be exchanged with the respective FHIR resources

| | |
| :--- | :--- |
| [AnswerOption Additional Code](StructureDefinition-AnswerOptionAdditionalCode.md) | An additional code for an option in a choice question |
| [Code ValueSet](StructureDefinition-CodeValueSet.md) | A ValueSet used when a question / item can correspond not just to a single code but to a set of concepts |
| [PSS Rating Extension](StructureDefinition-PSSStructuredRating.md) | A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing. |
| [PSS Relevant Patient Age](StructureDefinition-PSSRelevantAge.md) | The approximate, relevant age of the patient at the time of the search. |

### Feedback 

Feedback resources for the PSS services

| | |
| :--- | :--- |
| [PSS Feedback Operation Definition](OperationDefinition-Feedback.md) | Operation to provide feedback on PSS suggestions |

### Common examples 

Common examples - valid to multiple PSS services

| | |
| :--- | :--- |
| [Antimicrobiology - No permission to use system - 11.1. Task](Task-26491cef-c5c7-4c5f-b10b-839e938f6b3d.md) | Antimicrobiology - No permission to use system - 11.1. Task |
| [Antimicrobiology - PSS not activated- Response](CommunicationRequest-1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2.md) | Antimicrobiology - PSS not activated- Response |
| [Generic response - Guidance unavailable](Bundle-no-response-response.md) | Generic response - PSS not activated- 1. Bundle |
| [Generic response - No permission to use system](RequestGroup-26491cef-c5c7-4c5f-b10b-839e938f6b3c.md) | Antimicrobiology - No permission to use system - 11.1. RequestGroup |
| [Generic response - No permission to use system - 11. Bundle](Bundle-any-service-no-consent-response-response.md) | Antimicrobiology - No permission to use system - 11. Bundle |
| [Generic response - PSS not activated- 10.1. RequestGroup](RequestGroup-no-response-group.md) | Generic response - PSS not activated- 10.1. RequestGroup |
| [Terms and Conditions Consent Form](Questionnaire-26491cef-c5c7-4c5f-b10b-839e938f6b3e.md) | Terms and Conditions Consent Form |

### Examples - Antimicrobiology 

Antimicrobiology PSS resource examples

| | |
| :--- | :--- |
| [30551ce1-5a28-4356-b684-2e639094ad48](Patient-30551ce1-5a28-4356-b684-2e639094ad48.md) | Example anonymised patient A |
| [Antimicrobiology - S2 Get data to collect - Request - 1. - Bundle](Bundle-getdatatocollect-a-data.md) | Antimicrobiology - S2 Get data to collect - Request - 1. Bundle |
| [Antimicrobiology - S2 Get data to collect - Request - 1.1. Diagnostic hypothesis - vulvovaginitis](Condition-30551ce1-5a28-4356-b684-2e639094ad01.md) | Antimicrobiology - S2 Get data to collect - Request - 1.1. Diagnostic hypothesis - vulvovaginitis |
| [Antimicrobiology - S2 Get data to collect - Request - 1.2. Known allergy - sulfonamide](AllergyIntolerance-30551ce1-5a28-4356-b684-2e639094ad02.md) | Antimicrobiology - S2 Get data to collect - Request - 1.2. Known allergy - sulfonamide |
| [Antimicrobiology - S2 Get data to collect - Request - 1.3. Considered treatment - clindamycin](MedicationRequest-30551ce1-5a28-4356-b684-2e639094ad12.md) | Antimicrobiology - S2 Get data to collect - Request - 1.3. Considered treatment - clindamycin |
| [Antimicrobiology - S2 Get data to collect - Response - 1. Bundle](Bundle-getdatatocollect-a-response.md) | Antimicrobiology - S2 Get data to collect - Response - 1. Bundle |
| [Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup](RequestGroup-getdatatocollect-a-response-group.md) | Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup |
| [Antimicrobiology - S2 Get data to collect - Response - 1.2. Task for collecting information](Task-30551ce1-5a28-4356-b684-11ef43a67755.md) | Antimicrobiology - S2 Get data to collect - Response - 1.2. Task for collecting information |
| [Antimicrobiology - S2 Get data to collect - Response - 1.3. Questionnaire](Questionnaire-30551ce1-5a28-4356-b684-2e639094ad4c.md) | Antimicrobiology - S2 Get data to collect - Response - 1.3. Questionnaire |
| [Antimicrobiology - S3 Get Recommendations - Request- 1. Bundle](Bundle-getrecommendations-a-data.md) | Antimicrobiology - S3 Get Recommendations - Request- 1. Bundle |
| [Antimicrobiology - S3 Get Recommendations - Request- 1.1. QuestionnaireResponse](QuestionnaireResponse-30551ce1-5a28-4356-b684-2e639094ac02.md) | Antimicrobiology - S3 Get Recommendations - Request- 1.1. QuestionnaireResponse |
| [Antimicrobiology - S3 Get Recommendations - Response - 1. Bundle](Bundle-getrecommendations-a-response.md) | Antimicrobiology - S3 Get Recommendations - Response - 1. Bundle |
| [Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup](RequestGroup-getrecommendations-a-response-group.md) | Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup |
| [Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice](CommunicationRequest-30551ce1-5a28-4356-b684-1e639094dd22.md) | Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice |
| [Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ac23.md) | Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol |
| [Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3.1 - Clindamycine ovule](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad24.md) | Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3.1 - Clindamycine ovule |
| [Antimicrobiology - S3 Get Recommendations - Response - 1.1.4. option 4 - fluconazol](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad26.md) | Antimicrobiology - S3 Get Recommendations - Response - 1.1.4. option 4 - fluconazol |
| [Antimicrobiology - S3 Get Recommendations - Response - 1.1.5. option 5 - miconazol](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad29.md) | Antimicrobiology - S3 Get Recommendations - Response - 1.1.5. option 5 - miconazol |
| [Pregnancy Codes](ValueSet-PregnancyCodes.md) | Pregnancy Codes - used for EHRs to consider pregnancy status |

### Examples - Radiology 

Radiology PSS resource examples

| | |
| :--- | :--- |
| [Anonymised Patient R](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md) | Example anonymised patient R |
| [Radiology - S1 Get Diagnoses - Request - 1. Bundle](Bundle-radiology-getdiagnoses.md) | Radiology - S1 Get Diagnoses - Request - 1. Bundle |
| [Radiology - S1 Get Diagnoses - Request - 1.1. Observed data](Observation-ataxia.md) | Radiology - S1 Get Diagnoses - Request - 1.1. Observed data |
| [Radiology - S1 Get Diagnoses - Request - 1.3 Original suggestion - CT head wo IV contrast](ServiceRequest-ct-head-wo-iv-contrast.md) | Radiology - S1 Get Recommendations - Request - 1.3 Original suggestion - CT head wo IV contrast |
| [Radiology - S1 Get Diagnoses - Response - 1. Bundle](Bundle-radiology-getdiagnoses-response.md) | Radiology - S1 Get Diagnoses - Response - 1. Bundle |
| [Radiology - S1 Get Diagnoses - Response - 1.1. RequestGroup with options](RequestGroup-30551ce1-5a28-4356-b684-3e639094ad08.md) | Radiology - S1 Get Diagnoses - Response - 1.1. RequestGroup with options |
| [Radiology - S1 Get Diagnoses - Response - 1.10. Task to propose diagnosis - Post-trauma ataxia](Task-54aad964-ad8a-4985-8ff1-3b09d707ee1e.md) | Radiology - S1 Get Diagnoses - Response - 1.10. Task to propose diagnosis - Post-trauma ataxia |
| [Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia](Condition-b90ca57a-1ae5-4ff6-8dce-48488660ea65.md) | Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia |
| [Radiology - S1 Get Diagnoses - Response - 1.2. Task to propose diagnosis - Stroke](Task-1cdd5aab-1d4d-4965-bbe1-c851698d07f0.md) | Radiology - S1 Get Diagnoses - Response - 1.2. Task to propose diagnosis - Stroke |
| [Radiology - S1 Get Diagnoses - Response - 1.3. Diagnosis - Stroke](Condition-287e8fe2-3e83-44bd-92e7-962bc90b6d67.md) | Radiology - S1 Get Diagnoses - Response - 1.3. Diagnosis - Stroke |
| [Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection](Task-db2698ba-cd0b-4c08-b57c-868ab5b95af6.md) | Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection |
| [Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection](Condition-5f3aafb8-643c-4ed5-ad54-199939e7b2d1.md) | Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection |
| [Radiology - S1 Get Diagnoses - Response - 1.6. Task to propose diagnosis - Head trauma](Task-30551ce1-5a28-4356-b684-3e639094ad11.md) | Radiology - S1 Get Diagnoses - Response - 1.6. Task to propose diagnosis - Head trauma |
| [Radiology - S1 Get Diagnoses - Response - 1.7. Diagnosis - Head trauma](Condition-30551ce1-5a28-4356-b684-4e639094ad11.md) | Radiology - S1 Get Diagnoses - Response - 1.7. Diagnosis - Head trauma |
| [Radiology - S1 Get Diagnoses - Response - 1.8. Task to propose diagnosis - Chronic or slow progression-ataxia](Task-cfdfee5b-1db1-43fe-af72-4ea54b4e1a16.md) | Radiology - S1 Get Diagnoses - Response - 1.8 Task to propose diagnosis - Chronic or slow progression-ataxia |
| [Radiology - S1 Get Diagnoses - Response - 1.9. Diagnosis - Chronic or slow progression-ataxia](Condition-72d3ced6-5133-4042-931e-04284c9f4283.md) | Radiology - S1 Get Diagnoses - Response - 1.9. Diagnosis - Chronic or slow progression-ataxia |
| [Radiology - S3 Get Recommendations - Request- 1. request Bundle](Bundle-getrecommendations-data3.md) | Radiology - S3 Get Recommendations - Request - 1. request Bundle |
| [Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma](Condition-pss-30551ce1-5a28-4356-b684-4e639094ad11.md) | Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma |
| [Radiology - S3 Get Recommendations - Request- 1.2 Scored procedure from initially considered: CT head wo IV contrast](ServiceRequest-pss-ct-head-wo-iv-contrast.md) | Radiology - S3 Get Recommendations - Request- 1.2. Initially considered procedure: CT head wo IV contrast |
| [Radiology - S3 Get Recommendations - Response - 1. Bundle](Bundle-getrecommendations-r-response.md) | Radiology - S3 Get Recommendations - Response - 1. Bundle |
| [Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup](RequestGroup-getrecommendations-r-response-1.md) | Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup |
| [Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT head wo IV contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639094ad23.md) | Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT head wo IV contrast |
| [Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 3 - CT head wo/w iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639094ad22.md) | Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 3 - CT head wo/w iv contrast |
| [Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 2 - MR head wo iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639044ad77.md) | Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 2 - MR head wo iv contrast |

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [PSS Provider System Capability Statement](CapabilityStatement-PSSProviderCapabilityStatement.md) | CapabilityStatement for PSS provider systems. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [requestgroup-action](SearchParameter-requestgroup-action.md) | Resources referenced anywhere in RequestGroup.action[*.].resource (supports one level of nested actions). |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PSS Feedback Task](StructureDefinition-FeedbackTask.md) | Task to collect feedback on PSS suggestions |
| [PSS Response Bundle](StructureDefinition-PSSFeedbackBundle.md) | The PSS Response Bundle is used to return data from the PSS system. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bacterial Codes](ValueSet-BacterialCodes.md) | Bacterial Codes |
| [Candida Codes](ValueSet-CandidaCodes.md) | Candida Codes |
| [Chlamydia Codes](ValueSet-ChlamydiaCodes.md) | Chlamydia Codes |
| [CompromisedImmuneSystem Codes](ValueSet-CompromisedImmuneSystemCodes.md) | CompromisedImmuneSystem Codes |
| [Gonokok Codes](ValueSet-GonokokCodes.md) | Gonokok Codes |
| [Mycoplasma Codes](ValueSet-MycoplasmaCodes.md) | Mycoplasma Codes |
| [OncologyPatient Codes](ValueSet-OncologyPatientCodes.md) | OncologyPatient Codes |
| [Other Codes](ValueSet-OtherCodes.md) | Other Codes |
| [PSS Exception ValueSet](ValueSet-pss-exception-valueset.md) | ValueSet including exception codes for Patient Summary (PSS). |
| [PSS Feedback Code Reasons](ValueSet-PSSFeedbackReasonsVS.md) | Feedback code reasons for PSS |
| [PSS Feedback Codes](ValueSet-PSSFeedbackCodesVS.md) | Feedback codes for PSS |
| [Trichomonas Codes](ValueSet-TrichomonasCodes.md) | Trichomonas Codes |
| [Types of rating provided by the PSS system](ValueSet-PSSRatingTypesVS.md) | ValueSet - Types of rating provided by the PSS system |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CodeSystem: Types of rating provided by the PSS system](CodeSystem-PSSRatingTypes.md) | CodeSystem: Types of rating provided by the PSS system |
| [PSS Bundle Tags](CodeSystem-PSSBundleTags.md) | PSS Bundle Tags - Feedback, Recommendation |
| [PSS Exception Codes](CodeSystem-pss-exception-codes.md) | Exception codes for Patient Summary (PSS) processing. |
| [PSS Feedback Codes](CodeSystem-PSSFeedbackCodes.md) | Feedback codes for PSS |
| [PSS-QSI condition codes](CodeSystem-PSSQSIConditions.md) | Condition codes from the QSI system |
| [PSS-QSI procedure codes](CodeSystem-PSSQSIProcedures.md) | Procedure codes from the QSI system |
| [PSSa Feedback Code Reasons](CodeSystem-PSSaFeedbackReasons.md) | Feedback code reasons for PSS antimicrobial |
| [PSSr Feedback Code Reasons](CodeSystem-PSSrFeedbackReasons.md) | Feedback code reasons for PSS radiology |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Antimicrobial - Select another option that is not in the recommendations](Task-alternative-request-task.md) | Prescriber decides to use another treatment that is not in the PSS recommendations |
| [Antimicrobial - Select green recommendation](Task-task-accepted-green-a.md) | Prescriber selects a green antimicrobial recommendation |
| [Antimicrobial - Select red recommendation](Task-task-accepted-red-a.md) | Prescriber selects an red antimicrobial recommendation with a reason |
| [Antimicrobial feedback - green recommendation](Parameters-antimicrobial-feedback-green.md) | Prescriber selects a green antimicrobial recommendation |
| [Antimicrobial feedback - red recommendation](Parameters-antimicrobial-feedback-red.md) | Prescriber selects an red antimicrobial recommendation with a reason |
| [Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3.2 - Clindamycine vaginale crème](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad25.md) | Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3.2 - Clindamycine vaginale crème |
| [Example of feedback on a PSS suggestion](Parameters-feedback-example.md) | Example of how to provide feedback on a PSS suggestion, including the outcome of the suggestion and the reason for overriding it. |
| [Radiology - Select green recommendation](Task-task-accepted-green-r.md) | Prescriber selects a green recommendation |
| [Radiology - Select orange recommendation](Task-task-accepted-orange-r.md) | Prescriber selects an orange recommendation |
| [Radiology - Select other recommendation](Task-task-accepted-other-r.md) | Prescriber selects an other recommendation |
| [Radiology feedback](Parameters-radiology-feedback.md) |  |
| [alternative-request](ServiceRequest-alternative-request.md) |  |
| [alternative-request-bundle](Bundle-alternative-request-bundle.md) |  |

