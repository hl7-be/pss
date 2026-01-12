Profile: PSSFeedbackBundle
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