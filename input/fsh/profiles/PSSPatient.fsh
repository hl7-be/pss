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
