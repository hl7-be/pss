CodeSystem: PSSExceptionCodes
Id: pss-exception-codes
Title: "PSS Exception Codes"
Description: "Exception codes for Patient Summary (PSS) processing."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #guidance-unavailable "Guidance unavailable"
* #no-consent-found "User Consent not found"

ValueSet: PSSExceptionValueSet
Id: pss-exception-valueset
Title: "PSS Exception ValueSet"
Description: "ValueSet including exception codes for Patient Summary (PSS)."
* ^status = #active
* include codes from system PSSExceptionCodes


Instance: no-response-response
InstanceOf: PSSResponseBundle
Title: "Generic response - Guidance unavailable"
Description: "Generic response - PSS not activated- 1. Bundle"
Usage: #example
* identifier.value = "response01"
* timestamp = "2025-02-20T00:00:00Z"
* type = #collection
* entry[0].resource = no-response-group
* entry[=].fullUrl = "urn:uuid:c174873b-e39a-4eba-aff4-72708dd6c34d"



Instance: no-response-group
InstanceOf: PSSResponseRequestGroup
Title: "Generic response - PSS not activated- 10.1. RequestGroup"
Description: "Generic response - PSS not activated- 10.1. RequestGroup"
Usage: #example
* id = "no-response-group"
* status = #active
* intent = #proposal
* subject = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* action[0]
  * action[0]
    * title = "PSS niet geactiveerd"
    * title.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "PSS non activé"
    * code = PSSExceptionCodes#guidance-unavailable
    * resource = Reference(1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2)

Instance: 1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2
InstanceOf: PSSResponseCommunicationRequest
Title: "Antimicrobiology - PSS not activated- Response"
Description: "Antimicrobiology - PSS not activated- Response"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* status = #active
* payload[+].contentString
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
    * valueMarkdown = "In het kader van de pilootfase is het PSS-systeem momenteel niet geactiveerd. Het zal later opnieuw geactiveerd worden. Ter info: we blijven de gegevens die naar PSS worden doorgestuurd, registreren."
      * insert AddTranslation("fr-BE","Dans le cadre de la phase pilote，le système PSS n'est pas activé pour le moment. Celui-ci sera réactivé. Pour votre information, sachez que nous continuons de capturer les données transmises à PSS.") 

Instance: any-service-no-consent-response-response
InstanceOf: PSSResponseBundle
Title: "Generic response - No permission to use system - 11. Bundle"
Description: "Antimicrobiology - No permission to use system - 11. Bundle"
Usage: #example
* identifier.value = "response1"
* timestamp = "2025-02-20T00:00:00Z"
* type = #collection
* entry[0].resource = 26491cef-c5c7-4c5f-b10b-839e938f6b3c
* entry[=].fullUrl = "urn:uuid:26491cef-c5c7-4c5f-b10b-839e938f6b3c"
* entry[+].resource = 26491cef-c5c7-4c5f-b10b-839e938f6b3d
* entry[=].fullUrl = "urn:uuid:26491cef-c5c7-4c5f-b10b-839e938f6b3d"
* entry[+].resource = 26491cef-c5c7-4c5f-b10b-839e938f6b3e
* entry[=].fullUrl = "urn:uuid:26491cef-c5c7-4c5f-b10b-839e938f6b3e"
// * entry[+].resource = 30551ce1-5a28-4356-d684-2e639094ad48
// * entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-d684-2e639094ad48"





Instance: 26491cef-c5c7-4c5f-b10b-839e938f6b3c
InstanceOf: RequestGroup
Title: "Generic response - No permission to use system"
Description: "Antimicrobiology - No permission to use system - 11.1. RequestGroup"
Usage: #example
* id = "26491cef-c5c7-4c5f-b10b-839e938f6b3c"
* status = #active
* intent = #proposal
* action[0]
  * selectionBehavior = #at-most-one
  * action[0]
    * title = "Toegang geweigerd"
    * title.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Accès refusé"
    * textEquivalent = "U hebt (nog) geen toestemming gegeven voor het gebruik van het systeem. Gelieve eerst akkoord te gaan met de gebruiksvoorwaarden."
    * textEquivalent.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Vous n'avez pas (encore) donné votre consentement pour l'utilisation du système. Veuillez d'abord accepter les conditions d'utilisation."
    * code = PSSExceptionCodes#no-consent-found
    * resource = Reference(26491cef-c5c7-4c5f-b10b-839e938f6b3d)


Instance: 26491cef-c5c7-4c5f-b10b-839e938f6b3d
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
  * valueCanonical = Canonical(26491cef-c5c7-4c5f-b10b-839e938f6b3e)


Instance: 26491cef-c5c7-4c5f-b10b-839e938f6b3e
InstanceOf: CPGComputableQuestionnaire
Description: "Terms and Conditions Consent Form"
Title: "Terms and Conditions Consent Form"
Usage: #example
* name = "TCConsentForm"
* version = "2025"
* language = #en
* status = #draft
* url = "http://openhie.org/fhir/Questionnaire/hiv-case-report-questionnaire"

* insert Question(,tc,Terms and Conditions,group,true,false)
//* insert Question(item[=].,tcpolicy,Policy,display,true,false)
* item[=].item[+].linkId = "tcpolicy"
* item[=].item[=].text = "Policy"
* item[=].item[=].type = #display


* item[=].item[=].text = "Door een account aan te maken gaat u akkoord met de [Gebruiksvoorwaarden en privacyverklaring](https://www.riziv.fgov.be/nl/thema-s/egezondheid/beslissingsondersteunend-platform-voor-voorschrijvers-meer-gepaste-zorg-en-minder-veiligheidsrisico-s/gebruiksvoorwaarden-en-privacyverklaring-voor-de-applicatie-pss)."
  * extension[http://hl7.org/fhir/StructureDefinition/rendering-markdown] 
    * valueMarkdown =  "Door een account aan te maken gaat u akkoord met de [Gebruiksvoorwaarden en privacyverklaring](https://www.riziv.fgov.be/nl/thema-s/egezondheid/beslissingsondersteunend-platform-voor-voorschrijvers-meer-gepaste-zorg-en-minder-veiligheidsrisico-s/gebruiksvoorwaarden-en-privacyverklaring-voor-de-applicatie-pss)."
  * extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "En créant un compte, vous acceptez les [Conditions d'utilisation et politique de confidentialité](https://www.inami.fgov.be/fr/themes/esante/plateforme-d-aide-a-la-decision-pour-les-prescripteurs-des-soins-plus-adaptes-et-moins-de-risques-de-securite/conditions-d-utilisation-et-politique-de-confidentialite-pour-l-application-pss)."
      * extension[http://hl7.org/fhir/StructureDefinition/rendering-markdown] 
        * valueMarkdown =  "En créant un compte, vous acceptez les [Conditions d'utilisation et politique de confidentialité](https://www.inami.fgov.be/fr/themes/esante/plateforme-d-aide-a-la-decision-pour-les-prescripteurs-des-soins-plus-adaptes-et-moins-de-risques-de-securite/conditions-d-utilisation-et-politique-de-confidentialite-pour-l-application-pss"

  


//* insert Question(item[=].,tcversion,Version,display,true,false)

* item[=].item[+].linkId = "tcversion"
* item[=].item[=].text = "version"
* item[=].item[=].type = #display


* insert Question(item[=].,consent,Consent,boolean,true,false)

* insert Question(,anonymizationPreference,Statistical anonymization preference,choice,true,false)

* item[=].answerOption[+].valueCoding
  * code = #cluster-anon
  * display = "Ik geef toestemming om gegevens over mijn gebruik van deze app anoniem te verzamelen op het niveau van mijn onderwijsinstelling (cluster) voor statistische doeleinden."
    * extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Je donne mon consentement pour que les données concernant mon utilisation de cette application soient collectées anonymement au niveau de mon établissement d'enseignement (cluster) à des fins statistiques."

* item[=].answerOption[+].valueCoding
  * code = #full-anon
  * display = "Ik geef de voorkeur aan volledige anonimiteit wanneer voor statistische doeleinden gegevens worden verzameld over mijn gebruik van deze app."
    * extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Je préfère une anonymité totale lors de la collecte de données sur mon utilisation de cette application à des fins statistiques."

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


