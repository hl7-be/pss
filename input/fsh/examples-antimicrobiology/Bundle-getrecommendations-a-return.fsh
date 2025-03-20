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
    * textEquivalent = "Algemeen advies"
    * textEquivalent.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Conseil général"
    * resource = Reference(ab-advice)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 3
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Over het algemeen aangewezen"
        * insert AddTranslation(fr-BE,Généralement approprié)


  * action[+]
    * textEquivalent = "Metronidazol Oraal"
    * textEquivalent.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Métronidazole orale"
    * resource = Reference(metronidazol)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 3
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Over het algemeen aangewezen"
        * insert AddTranslation(fr-BE,Généralement approprié)


  * action[+]
    * textEquivalent = "Clindamycin local"
    * textEquivalent.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Clindamycine localement"
    * resource = Reference(clindamycin)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 3
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Over het algemeen aangewezen"
        * insert AddTranslation(fr-BE,Généralement approprié)


  * action[+]
    * textEquivalent = "Fluconazol Oraal"
    * textEquivalent.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Fluconazole orale"
    * resource = Reference(fluconazol)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 1
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Niet aangewezen"
        * insert AddTranslation(fr-BE,Pas approprié)


  * action[+]
    * textEquivalent = "Miconazol lokaal"
    * textEquivalent.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Miconazole localement"
    * resource = Reference(miconazol)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 1
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Niet aangewezen"
        * insert AddTranslation(fr-BE,Pas approprié)


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
    * valueMarkdown = "Antibioticum behandeling enkel bij storende klachten of bij verhoogd risico op vroeggeboorte. Metronidazol en clindamycine worden in de SKP afgeraden in het eerste trimester. De klinische gegevens omtrent gebruik tijdens het eerste trimester van de zwangerschap zijn nochtans geruststellend en de meeste bronnen geven aan dat het kan gebruikt worden."
      * insert AddTranslation(fr-BE,Traitement antibiotique uniquement en cas de symptômes dérangeants ou de risque accru de naissance prématurée. Le RCP déconseille l'utilisation du métronidazole et de la clindamycine pendant le premier trimestre de la grossesse. Les données cliniques concernant leur utilisation pendant le premier trimestre de grossesse sont pourtant rassurantes et la plupart des sources acceptent leur utilisation en période de grossesse.)
* subject = Reference(patient-a)


Instance: metronidazol
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol"
Description: "Antimicrobiology - S3 Get Recommendations - Response - 1.1.2. option 2 - metronidazol"
Usage: #example
* status = #active
* intent = #proposal
* medicationCodeableConcept.coding[+] = $atc#J01XD01
* medicationCodeableConcept.coding[+] = $VMPG#1842
* subject = Reference(patient-a)

// this is WIP - note the codes and names - Metronidazole XD01, Nitrofurantoin XE01
* dosageInstruction.text = "1000 mg per dag in 2 giften gedurende 7 dagen"
  * extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "1000 mg par jour en 2 prises pendant 7 jours"
* dosageInstruction.doseAndRate[0]
  * doseQuantity.value = 1000
  * doseQuantity.unit = "mg"
  * doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.timing.repeat[0]
  * frequency = 2
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
* medicationCodeableConcept.coding[+] = $atc#G01AA10
* subject = Reference(patient-a)

* dosageInstruction.text = "ovule: 100 mg per dag in 1 gift gedurende 3 dagen OF vaginale crème: 2% 5 g per dag in 1 gift gedurende 7 dagen"
  * extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "ovule : 100 mg par jour en 1 prise pendant 3 jours OU crème vaginale : 2 % 5 g par jour en 1 prise pendant 7 jours"

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
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Miconazol"
* subject = Reference(patient-a)