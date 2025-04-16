RuleSet: SctCopyright
* ^copyright = """
*   This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement
    
*   The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/). For more information, see [SNOMED IPS Terminology](https://www.snomed.org/snomed-ct/Other-SNOMED-products/international-patient-summary-terminology)
    
*   The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review [usage terms](https://www.snomed.org/get-snomed) or directly contact SNOMED International: info@snomed.org
"""

RuleSet: proposeDiagnosisTask(patient,diagnosisId)
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference({patient})
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(proposed-diagnosis-{diagnosisId})


RuleSet: proposeDiagnosisCondition(patient,diagnosisId,diagnosisName,qsiDiagnosisCode)
* id = "proposed-diagnosis-{diagnosisId}"
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code.coding[0] = $PSSQSIConditions#{qsiDiagnosisCode} "Ataxia, {diagnosisName}"
* subject = Reference({patient})
* onsetDateTime = "2024-10-13"


RuleSet: AddTranslation(lang,text)
* extension[+]
  * url = $translation
  * extension[+].url = "lang"
  * extension[=].valueCode = #{lang}
  * extension[+].url = "content"
  * extension[=].valueString = "{text}"