
Instance: any-service-no-response-response
InstanceOf: PSSResponseBundle
Title: "Generic response - No guidance found"
Description: "Generic response - No guidance found - 1. Bundle"
Usage: #example
* identifier.value = "response01"
* timestamp = "2025-02-20T00:00:00Z"
* type = #collection
* entry[0].resource = any-service-no-response-group
* entry[=].fullUrl = "urn:uuid:any-service-no-response-group"




Instance: any-service-no-response-group
InstanceOf: PSSResponseRequestGroup
Title: "Generic response - No guidance found - 10.1. RequestGroup"
Description: "Generic response - No guidance found - 10.1. RequestGroup"
Usage: #example
* id = "any-service-no-response-group"
* status = #active
* intent = #proposal
* subject = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* action[0]
  * textEquivalent = "In het kader van de pilootfase is het PSS-systeem momenteel niet geactiveerd. Het zal later opnieuw geactiveerd worden. Ter info: we blijven de gegevens die naar PSS worden doorgestuurd, registreren."
  * textEquivalent.extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "Dans le cadre de la phase pilote, le système PSS n'est pas activé pour le moment. Celui-ci sera réactivé. Pour votre information, sachez que nous continuons de capturer les données transmises à PSS."
  * code = #guidanceUnavailable


Instance: any-service-no-consent-response-response
InstanceOf: PSSResponseBundle
Title: "Generic response - No permission to use system - 11. Bundle"
Description: "Antimicrobiology - No permission to use system - 11. Bundle"
Usage: #example
* identifier.value = "response1"
* timestamp = "2025-02-20T00:00:00Z"
* type = #collection
* entry[0].resource = any-service-no-consent-group
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-d684-2e639094ad4d"
* entry[+].resource = consent-request-task
* entry[=].fullUrl = "urn:uuid:consent-request-task"
* entry[+].resource = consent-request
* entry[=].fullUrl = "urn:uuid:consent-request"
// * entry[+].resource = 30551ce1-5a28-4356-d684-2e639094ad48
// * entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-d684-2e639094ad48"





Instance: any-service-no-consent-group
InstanceOf: PSSResponseRequestGroup
Title: "Generic response - No permission to use system"
Description: "Antimicrobiology - No permission to use system - 11.1. RequestGroup"
Usage: #example
* id = "any-service-no-consent"
* status = #active
* intent = #proposal
* subject = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* action[0]
  * selectionBehavior = #at-most-one
  * title = "Geen aanbevelingen gevonden"
  * textEquivalent = "Geen aanbevelingen gevonden"
  * code = #noAdviceforyou





Instance: consent-request-task
Title: "Antimicrobiology - No permission to use system - 11.1. Task"
Description: "Antimicrobiology - No permission to use system - 11.1. Task"
InstanceOf: PSSQuestionnaireTask
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
//* for = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = Canonical(consent-request)



Instance: consent-request
InstanceOf: CPGComputableQuestionnaire
Description: "Terms and Conditions Consent Form"
Title: "Terms and Conditions Consent Form"
Usage: #example
* name = "TCConsentForm"
* version = "2025"
* subjectType = #Patient
* language = #en
* status = #draft
* url = "http://openhie.org/fhir/Questionnaire/hiv-case-report-questionnaire"
* insert Question(,hcp,The anonymised ID of the healthcare professional,text,true,false)
* insert Question(,recordedDate,The date on which the information was recorded,date,true,false)
* insert Question(,instruction,The instruction to the HCP,text,true,false)
* insert Question(,tc,Terms and Conditions,group,true,false)
* insert Question(item[=].,tcpolicy,Policy,display,true,false)
* item[=].item[=].text = "Terms and Conditions"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].extension[=].extension[=].valueCode = #nl-BE
* item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].extension[=].extension[=].valueString = "Door een account aan te maken gaat u akkoord met de [Gebruiksvoorwaarden en privacyverklaring](https://www.riziv.fgov.be/nl/thema-s/egezondheid/beslissingsondersteunend-platform-voor-voorschrijvers-meer-gepaste-zorg-en-minder-veiligheidsrisico-s/gebruiksvoorwaarden-en-privacyverklaring-voor-de-applicatie-pss)."

* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].item[=].extension[=].extension[+].url = "lang"
* item[=].item[=].extension[=].extension[=].valueCode = #fr-BE
* item[=].item[=].extension[=].extension[+].url = "content"
* item[=].item[=].extension[=].extension[=].valueString = "En créant un compte, vous acceptez les [Conditions d'utilisation et politique de confidentialité](https://www.inami.fgov.be/fr/themes/esante/plateforme-d-aide-a-la-decision-pour-les-prescripteurs-des-soins-plus-adaptes-et-moins-de-risques-de-securite/conditions-d-utilisation-et-politique-de-confidentialite-pour-l-application-pss)."

* insert Question(,anonymizationPreference,Statistical anonymization preference,choice,true,false)
* item[=].answerOption[+].valueCoding.code = #cluster-anon
* item[=].answerOption[=].valueCoding.display = "Ik geef toestemming om gegevens over mijn gebruik van deze app anoniem te verzamelen op het niveau van mijn onderwijsinstelling (cluster) voor statistische doeleinden."
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension[=].extension[+].url = "lang"
* item[=].answerOption[=].extension[=].extension[=].valueCode = #fr-BE
* item[=].answerOption[=].extension[=].extension[+].url = "content"
* item[=].answerOption[=].extension[=].extension[=].valueString = "Je donne mon consentement pour que les données concernant mon utilisation de cette application soient collectées anonymement au niveau de mon établissement d'enseignement (cluster) à des fins statistiques."

* item[=].answerOption[+].valueCoding.code = #full-anon
* item[=].answerOption[=].valueCoding.display = "Ik geef de voorkeur aan volledige anonimiteit wanneer voor statistische doeleinden gegevens worden verzameld over mijn gebruik van deze app."
* item[=].answerOption[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[=].extension[=].extension[+].url = "lang"
* item[=].answerOption[=].extension[=].extension[=].valueCode = #fr-BE
* item[=].answerOption[=].extension[=].extension[+].url = "content"
* item[=].answerOption[=].extension[=].extension[=].valueString = "Je préfère une anonymité totale lors de la collecte de données sur mon utilisation de cette application à des fins statistiques."


// Add a Question in a questionnaire

/* usage:
* insert Question(,clinical-status,Clinical Status,string,false)
* insert Question(item[=].,clinical-status,Clinical Status,string,false)
*/

RuleSet: Question(context, linkId, text, type, required, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].repeats = {repeats}
* {context}item[=].required = {required}
