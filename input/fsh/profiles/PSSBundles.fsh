Profile: PssRequestDataBundle
Title: "PSS Request Data Bundle"
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

Profile: PssResponseBundle
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
//              
// * entry[entryPatient].resource only Patient
//

Profile: PSSResponseServiceRequest
Title: "PSS Response Service Request"
Description: "The PSS Response Service Request is used when the PSS system returns a ServiceRequest"
Parent: MedicationRequest
* subject 1..1 
* subject only Reference(Patient)
* intent = #proposal


Profile: PSSResponseMedicationRequest
Title: "PSS Response Medication Request"
Description: "The PSS Response Medication Request is used when the PSS system returns a MedicationRequest"
Parent: MedicationRequest
* subject 1..1 
* subject only Reference(Patient)
* intent = #proposal
* extension contains 
  http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating named cpg-rating 0..1 and
  PSSCodedRating named coded-rating 0..1 



Profile: PSSDataAcquisitionForm
Description: "The PSS Data Acquisition Form is used to inform what data needs to be acquired and provided to the PSS system."
Title: "PSS Data Acquisition Form"
Parent: Questionnaire
* item.extension contains CodeValueSet named CodeValueSet 0..1


Profile: PSSResponseRequestGroup
Title: "PSS Response Request Group"
Description: "All PSS responses contain a PSS RequestGroup conformant to this profile."
Parent: RequestGroup
* subject 1..1
