Profile: PSSRequestBundle
Title: "PSS Request Bundle"
Description: "The PSS Request Data Bundle is used to request data from the PSS system."
Parent: Bundle



// * entry contains
//     entryPatient 1..1 and
//     entryCondition 0..* and
//     entryServiceRequest 0..* and
//     entryMedicationRequest 0..* and
//    
//              
// * entry[entryPatient].resource only Patient
//

Profile: PSSResponseBundle
Title: "PSS Response Bundle"
Description: "The PSS Response Bundle is used to return data from the PSS system."
Parent: Bundle
* identifier 1..1
* timestamp 1..1
// * entry contains
//     entryPatient 1..1 and
//     entryCondition 0..* and
//     entryServiceRequest 0..* and
//     entryMedicationRequest 0..* and
//              
// * entry[entryPatient].resource only Patient
//

Profile: PSSResponseServiceRequest
Parent: CPGServiceRequest
Title: "PSS Response Service Request"
Description: "The PSS Response Service Request is used when the PSS system returns a ServiceRequest"
* subject 1..1 
* subject only Reference(PSSPatient)
* intent = #proposal
// * extension contains 
//   // http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating named cpg-rating 0..1 and
//   // PSSCodedRating named coded-rating 0..1 and
//   PSSStructuredRating named structured-rating 0..*
* code ^binding.description = "Codes for tests or services that can be carried out"

* priority MS

Profile: PSSResponseMedicationRequest
Title: "PSS Response Medication Request"
Description: "The PSS Response Medication Request is used when the PSS system returns a MedicationRequest"
Parent: CPGMedicationRequest
* subject 1..1 
* subject only Reference(PSSPatient)
* intent = #proposal
// * extension contains 
//   PSSStructuredRating named structured-rating 0..*

* priority MS


Profile: PSSDataAcquisitionForm
Description: "The PSS Data Acquisition Form is used to inform what data needs to be acquired and provided to the PSS system."
Title: "PSS Data Acquisition Form"
Parent: CPGComputableQuestionnaire
* item.extension contains CodeValueSet named CodeValueSet 0..1
* item.answerOption.extension contains AnswerOptionAdditionalCode named answerOptionAdditionalCode 0..*

Profile: PSSResponseRequestGroup
Parent: RequestGroup
Title: "PSS Response Request Group"
Description: "All PSS responses contain a PSS RequestGroup conformant to this profile."
* subject 1..1
* subject only Reference(PSSPatient)
* action 1..1
  * action
    * extension contains 
      PSSStructuredRating named structured-rating 0..*


Profile: PSSResponseCommunicationRequest
Parent: CPGCommunicationRequest
Title: "PSS Response Communication Request"
Description: "All PSS responses contain a PSS Communication Request conformant to this profile."
* subject only Reference(PSSPatient)



Profile: PSSPatient
Parent: CPGPatient
Title: "PSS anonymised Patient"
Description: "PSS anonymised Patient"

* extension contains PSSRelevantAge named relevantAge 0..1
* name.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named absent 1..1 

* name.extension[absent].valueCode = #masked
* name
  * text 0..0
  * family 0..0
  * given 0..0



Profile: PSSQuestionnaireTask
Parent: CPGQuestionnaireTask
Title: "PSS Questionnaire Task"
Description: "PSS Task for Questionnaire - using anonymised patient"

* for only Reference(PSSPatient)

// Profile: PSSTask
// Parent: CPGTask
// Title: "PSS Task"
// Description: "PSS for Task - using anonymised patient"

// * for only Reference(PSSPatient)


Profile: PSSMedicationRequest
Parent: CPGMedicationRequest
Title: "PSS MedicationRequest Task"
Description: "PSS MedicationRequest - using anonymised patient"

* subject only Reference(PSSPatient)

