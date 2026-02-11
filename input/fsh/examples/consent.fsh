// Instance: PSS-Consent
// InstanceOf: Questionnaire
// Title: "Example of consent/statistics questionnaire"
// Description: "Example of questions on consent and statistics preference in PSS."
// Usage: #example

// * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablequestionnaire"
// * language = #en
// * url = "https://www.ehealth.fgov.be/standards/fhir/pss/Questionnaire/PSS-Consent"
// * version = "2025"
// * name = "TCConsentForm"
// * status = #draft
// * item[0]
//   * linkId = "tc"
//   * text = "Terms and Conditions"
//   * type = #group
//   * required = true
//   * repeats = false
//   * item[0]
//     * linkId = "tcpolicy"
//     * text = "Door een account aan te maken gaat u akkoord met de [Gebruiksvoorwaarden en privacyverklaring](https://www.riziv.fgov.be/nl/thema-s/egezondheid/beslissingsondersteunend-platform-voor-voorschrijvers-meer-gepaste-zorg-en-minder-veiligheidsrisico-s/gebruiksvoorwaarden-en-privacyverklaring-voor-de-applicatie-pss)."
//       * extension[0]
//         * url = "http://hl7.org/fhir/StructureDefinition/translation"
//         * extension[0]
//           * url = "lang"
//           * valueCode = #nl-BE
//         * extension[+]
//           * url = "content"
//           * valueString = "Door een account aan te maken gaat u akkoord met de [Gebruiksvoorwaarden en privacyverklaring](https://www.riziv.fgov.be/nl/thema-s/egezondheid/beslissingsondersteunend-platform-voor-voorschrijvers-meer-gepaste-zorg-en-minder-veiligheidsrisico-s/gebruiksvoorwaarden-en-privacyverklaring-voor-de-applicatie-pss)."
//             * extension
//               * url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
//               * valueMarkdown = "Door een account aan te maken gaat u akkoord met de [Gebruiksvoorwaarden en privacyverklaring](https://www.riziv.fgov.be/nl/thema-s/egezondheid/beslissingsondersteunend-platform-voor-voorschrijvers-meer-gepaste-zorg-en-minder-veiligheidsrisico-s/gebruiksvoorwaarden-en-privacyverklaring-voor-de-applicatie-pss)."
//       * extension[+]
//         * url = "http://hl7.org/fhir/StructureDefinition/translation"
//         * extension[0]
//           * url = "lang"
//           * valueCode = #fr-BE
//         * extension[+]
//           * url = "content"
//           * valueString = "En créant un compte, vous acceptez les [Conditions d'utilisation et politique de confidentialité](https://www.inami.fgov.be/fr/themes/esante/plateforme-d-aide-a-la-decision-pour-les-prescripteurs-des-soins-plus-adaptes-et-moins-de-risques-de-securite/conditions-d-utilisation-et-politique-de-confidentialite-pour-l-application-pss)."
//             * extension
//               * url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
//               * valueMarkdown = "En créant un compte, vous acceptez les [Conditions d'utilisation et politique de confidentialité](https://www.inami.fgov.be/fr/themes/esante/plateforme-d-aide-a-la-decision-pour-les-prescripteurs-des-soins-plus-adaptes-et-moins-de-risques-de-securite/conditions-d-utilisation-et-politique-de-confidentialite-pour-l-application-pss)."
//     * type = #display
//   * item[+]
//     * linkId = "tcversion"
//     * text = "Version"
//     * type = #display
//   * item[+]
//     * linkId = "consent"
//     * text = "Consent"
//     * type = #boolean
//     * required = true
//     * repeats = false
// * item[+]
//   * linkId = "anonymizationPreference"
//   * text = "Statistical anonymization preference"
//   * type = #choice
//   * required = true
//   * repeats = false
//   * answerOption[0].valueCoding = #cluster-anon "Ik geef toestemming om gegevens over mijn gebruik van deze app anoniem te verzamelen op het niveau van mijn onderwijsinstelling (cluster) voor statistische doeleinden."
//     * display.extension
//       * url = "http://hl7.org/fhir/StructureDefinition/translation"
//       * extension[0]
//         * url = "lang"
//         * valueCode = #fr-BE
//       * extension[+]
//         * url = "content"
//         * valueString = "Je donne mon consentement pour que les données concernant mon utilisation de cette application soient collectées anonymement au niveau de mon établissement d'enseignement (cluster) à des fins statistiques."
//   * answerOption[+].valueCoding = #full-anon "Ik geef de voorkeur aan volledige anonimiteit wanneer voor statistische doeleinden gegevens worden verzameld over mijn gebruik van deze app."
//     * display.extension
//       * url = "http://hl7.org/fhir/StructureDefinition/translation"
//       * extension[0]
//         * url = "lang"
//         * valueCode = #fr-BE
//       * extension[+]
//         * url = "content"
//         * valueString = "Je préfère une anonymité totale lors de la collecte de données sur mon utilisation de cette application à des fins statistiques."