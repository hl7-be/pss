Instance: getrecommendations2-return
Title: "Antibiology - S3 Get Recommendations - Response - 1. Bundle"
Description: "Antibiology - S3 Get Recommendations - Response - 1. Bundle"
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = getrecommendations2-return-1
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad21"
* entry[+].resource = metronidazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad22"
* entry[+].resource = clindamycin
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad23"
* entry[+].resource = fluconazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad23"
* entry[+].resource = miconazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad23"

Instance: getrecommendations2-return-1
InstanceOf: RequestGroup
Title: "Antibiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Description: "Antibiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Usage: #example
* id = "getrecommendations2-return-1"
* status = #active
* intent = #proposal
* subject = Reference(X)
* action[0]
  * textEquivalent = "Antibioticum behandeling enkel bij storende klachten of bij verhoogd risico op vroeggeboorte..."
  * selectionBehavior = #at-most-one
  * action[0]
    * textEquivalent = "Metronidazol Oraal"
    * resource = Reference(metronidazol)
  * action[+]
    * textEquivalent = "Fosfomycin (7/10), single 3g dose"
    * resource = Reference(clindamycine)
  * action[+]
    * textEquivalent = "Fluconazol Oraal"
    * resource = Reference(fluconazol)
  * action[+]
    * textEquivalent = "Miconazol lokaal"
    * resource = Reference(miconazol)


Instance: metronidazol
InstanceOf: MedicationRequest
Title: "Antibiology - S3 Get Recommendations - Response - 1.2. option 1 - metronidazol"
Description: "Antibiology - S3 Get Recommendations - Response - 1.2. option 1 - metronidazol"
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
Title: "Antibiology - S3 Get Recommendations - Response - 1.3. option 2 - clindamycin"
Description: "Antibiology - S3 Get Recommendations - Response - 1.3. option 2 - clindamycin"

Usage: #example
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
Title: "Antibiology - S3 Get Recommendations - Response - 1.4. option 3 - fluconazol"
Description: "Antibiology - S3 Get Recommendations - Response - 1.4. option 3 - fluconazol"
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
Title: "Antibiology - S3 Get Recommendations - Response - 1.5. option 4 - miconazol"
Description: "Antibiology - S3 Get Recommendations - Response - 1.5. option 4 - miconazol"
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
