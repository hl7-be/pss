Instance: getrecommendations-a-return
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1. Bundle"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1. Bundle"
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = getrecommendations-a-return-group
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad21"
* entry[+].resource = ab-advice
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad22"
* entry[+].resource = metronidazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ac22"
* entry[+].resource = clindamycin
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad24"
* entry[+].resource = fluconazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad26"
* entry[+].resource = miconazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad29"

Instance: getrecommendations-a-return-group
InstanceOf: RequestGroup
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Usage: #example
* id = "getrecommendations-a-return-group"
* status = #active
* intent = #proposal
* subject = Reference(X)
* action[0]
  * selectionBehavior = #at-most-one
  * action[0]
    * textEquivalent = "Generic Antibiotic advice"
    * resource = Reference(ab-advice)
  * action[+]
    * textEquivalent = "Metronidazol Oraal"
    * resource = Reference(metronidazol)
  * action[+]
    * textEquivalent = "Fosfomycin (7/10), single 3g dose"
    * resource = Reference(30551ce1-5a28-4356-b684-1e639094ad24)
  * action[+]
    * textEquivalent = "Fluconazol Oraal"
    * resource = Reference(fluconazol)
  * action[+]
    * textEquivalent = "Miconazol lokaal"
    * resource = Reference(miconazol)


Instance: ab-advice
InstanceOf: Communication
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 3
    * denominator.value = 3
* status = #in-progress
* payload[0].contentString = "Traitement antibiotique uniquemene en cas de symptômes dérangeants ou de risque accru de naissance prématurée..."
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/language"
    * valueCode = #nl


* payload[+].contentString = "Antibioticum behandeling etc... but in French"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/translation"
    * valueCode = #fr

* subject = Reference(X)


Instance: metronidazol
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 9
    * denominator.value = 10
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Nitrofurantoin 2x 100mg x 5 days"
* subject = Reference(X)

Instance: clindamycin
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3 - clindamycin"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3 - clindamycin"
Usage: #example
//* id = "30551ce1-5a28-4356-b684-1e639094ad24"
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 3
    * denominator.value = 10
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Fosfomycin, single 3g dose"
* subject = Reference(X)


Instance: fluconazol
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.4. option 4 - fluconazol"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.4. option 4 - fluconazol"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 1
    * denominator.value = 10
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Fluconazol"
* subject = Reference(X)


Instance: miconazol
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.5. option 5 - miconazol"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.5. option 5 - miconazol"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 1
    * denominator.value = 10
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Miconazol"
* subject = Reference(X)
