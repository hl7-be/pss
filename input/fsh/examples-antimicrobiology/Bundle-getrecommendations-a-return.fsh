Instance: getrecommendations-a-response
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1. Bundle"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1. Bundle"
InstanceOf: PSSResponseBundle
Usage: #example
* identifier.value = "response1"
* timestamp = "2025-02-20T00:00:00Z"
* type = #collection
* entry[0].resource = getrecommendations-a-response-group
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad21"
* entry[+].resource = ab-advice
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad22"
* entry[+].resource = metronidazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ac23"
* entry[+].resource = clindamycin
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad24"
* entry[+].resource = fluconazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad26"
* entry[+].resource = miconazol
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad29"

Instance: getrecommendations-a-response-group
InstanceOf: PSSResponseRequestGroup
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Usage: #example
* id = "getrecommendations-a-response-group"
* status = #active
* intent = #proposal
* subject = Reference(patient-a)
* action[0]
  * selectionBehavior = #at-most-one
  * documentation[+]
    * type = #documentation
    * label = "Meer details op de BCFI site"
      * extension[http://hl7.org/fhir/StructureDefinition/language].valueCode = #nl-BE
    * url = "https://bcfi.be/nl/chapters/12?frag=8001869)"
  * documentation[+]
    * type = #documentation
    * label = "Plus de details sur le site CBIP"
      * extension[http://hl7.org/fhir/StructureDefinition/language].valueCode = #fr-BE
    * url = "https://cbip.be/fr/chapters/12?frag=8001869)"

  * action[0]
    * textEquivalent = "Generic Antibiotic advice"
    * resource = Reference(ab-advice)
  * action[+]
    * textEquivalent = "Metronidazol Oraal"
    * resource = Reference(metronidazol)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 2
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Recommended"

  * action[+]
    * textEquivalent = "Clindamycin local"
    * resource = Reference(clindamycin)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 2
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Recommended"
  * action[+]
    * textEquivalent = "Fluconazol Oraal"
    * resource = Reference(fluconazol)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 2
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Recommended"
  * action[+]
    * textEquivalent = "Miconazol lokaal"
    * resource = Reference(miconazol)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 2
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Recommended"


Instance: ab-advice
InstanceOf: PSSResponseCommunicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
// * extension[structured-rating][+]
//   * extension[ratingType].valueCode = #overall
//   * extension[ratingValue].valueRatio
//     * numerator.value = 3
//     * denominator.value = 3
//   * extension[ratingText].valueMarkdown = "Recommended"
* status = #active
// * payload[0].contentString = "Antibioticum behandeling enkel bij storende klachten of bij verhoogd risico op vroeggeboorte..."
* payload[+].contentString
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
    * valueMarkdown = "Antibioticum behandeling enkel bij storende klachten of bij verhoogd risico op vroeggeboorte...: [site BCFI](https://www.bcfi.be/nl/chapters/12?frag=8000010)"
    * valueMarkdown
      * insert AddTranslation(fr-BE,Traitement antibiotique uniquement en cas de symptômes dérangeants ou de risque accru de naissance prématurée: [site BCFI](https://www.bcfi.be/nl/chapters/12?frag=8000010\))

* subject = Reference(patient-a)


Instance: metronidazol
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol"
Usage: #example
* status = #active
* intent = #proposal
* medicationCodeableConcept.coding[+] = $atc#J01XD01
* medicationCodeableConcept.text = "metronidazol"
* subject = Reference(patient-a)

// this is WIP - note the codes and names - Metronidazole XD01, Nitrofurantoin XE01
* dosageInstruction.text = "Timing = 3 times a day for 7 days. Dosage depends on patient age: If age < 2 years, 375 mg; If age is between 2 and 10 years, 750 mg, if age > 10 years, 1500 mg"
* dosageInstruction.timing.repeat[0]
  * frequency = 3
  * period = 1
  * periodUnit = #d 
  * boundsDuration = 7 'd'


Instance: clindamycin
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3 - clindamycin"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.3. option 3 - clindamycin"
Usage: #example
//* id = "30551ce1-5a28-4356-b684-1e639094ad24"
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
// * extension[structured-rating][+]
//   * extension[ratingType].valueCode = #radiationexposure
//   * extension[ratingValue].valueRatio
//     * numerator.value = 3
//     * denominator.value = 3
//   * extension[ratingText].valueMarkdown = "Recommended"

* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "clindamycin, single 3g dose"
* subject = Reference(patient-a)


Instance: fluconazol
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.4. option 4 - fluconazol"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.4. option 4 - fluconazol"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Fluconazol"
* subject = Reference(patient-a)


Instance: miconazol
InstanceOf: PSSResponseMedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.5. option 5 - miconazol"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.5. option 5 - miconazol"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"

// * extension[structured-rating][+]
//   * extension[ratingType].valueCode = #overall
//   * extension[ratingValue].valueRatio
//     * numerator.value = 3
//     * denominator.value = 3
//   * extension[ratingText].valueMarkdown = "Not recommended"

* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Miconazol"
* subject = Reference(patient-a)

