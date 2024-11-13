Profile: BeRadiologyGetIndicationsInput
Parent: Parameters
Id: be-radiology-get-indications-input
Title: "Radiology Get Indications Payload"
Description: "A FHIR profile for representing radiology indication parameters."
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains age 1..1 MS and 
    gender 1..1 MS and 
    indication_proposal 0..* MS and
    freetext_indication 0..1 MS and
    intention 1..1 MS
* parameter[age].name = "age"
* parameter[age].value[x] only Age
* parameter[age].valueAge  1..1 MS
* parameter[age].valueAge.value 1..1 MS  // Required age value
* parameter[age].valueAge.system = "http://unitsofmeasure.org" (exactly)
  

* parameter[gender].name = "gender"
* parameter[gender].value[x] only code
* parameter[gender].valueCode  1..1 MS // Required gender value
* parameter[gender].valueCode from  	http://hl7.org/fhir/ValueSet/administrative-gender

* parameter[indication_proposal].name = "indication_proposal"
* parameter[indication_proposal].value[x] only CodeableConcept
* parameter[indication_proposal].valueCodeableConcept 1..1 MS  // Required indication proposal value
* parameter[indication_proposal].valueCodeableConcept.coding.system = "http://snomed.info/sct" 
* parameter[indication_proposal].valueCodeableConcept.text MS // Display text for the SNOMED code

* parameter[freetext_indication].name = "freetext_indication"
* parameter[freetext_indication].value[x] only string
* parameter[freetext_indication].valueString MS  // free-text indication

* parameter[intention].name = "intention"
* parameter[intention].value[x] only CodeableConcept
* parameter[intention].valueCodeableConcept 1..1 MS  // Required intention value
* parameter[intention].valueCodeableConcept.coding.system = "http://pss/qsi-examinations" (exactly)
* parameter[intention].valueCodeableConcept.text MS // Display text for the QSI code
