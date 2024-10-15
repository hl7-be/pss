Instance: getrecommendations-return
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = Inline-Instance-for-getrecommendations-return-1
* entry[+].resource = nitrofurantoin
* entry[+].resource = fosfomycin
* entry[+].resource = ciprofloxacin
* entry[+].resource = ct-pulmonary-angiography
* entry[+].resource = ventilation-perfusion-scan
* entry[+].resource = mri-with-gd-contrast

Instance: Inline-Instance-for-getrecommendations-return-1
InstanceOf: RequestGroup
Usage: #inline
* id = "getrecommendations-return"
* status = #active
* intent = #proposal
* subject = Reference(Patient/X)
* action[0]
  * textEquivalent = "Potential medications"
  * action[0]
    * textEquivalent = "Nitrofurantoin (9/10), 2x 100mg x 5 days"
    * resource = Reference(nitrofurantoin)
  * action[+]
    * textEquivalent = "Fosfomycin (7/10), single 3g dose"
    * resource = Reference(fosfomycin)
  * action[+]
    * textEquivalent = "Ciprofloxacin (5/10), 250mg twice daily for 3 days"
    * resource = Reference(ciprofloxacin)
* action[+]
  * textEquivalent = "Potential procedures"
  * action[0]
    * textEquivalent = "CT Pulmonary Angiography (9/10)"
    * resource = Reference(ct-pulmonary-angiography)
  * action[+]
    * textEquivalent = "Ventilation-Perfusion (V/Q) Scan (7/10)"
    * resource = Reference(ventilation-perfusion-scan)
  * action[+]
    * textEquivalent = "MRI with Gd contrast (5/10)"
    * resource = Reference(mri-with-gd-contrast)

Instance: nitrofurantoin
InstanceOf: MedicationRequest
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 9
    * denominator.value = 10
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Nitrofurantoin 2x 100mg x 5 days"
* subject = Reference(Patient/X)

Instance: fosfomycin
InstanceOf: MedicationRequest
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 7
    * denominator.value = 10
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Fosfomycin, single 3g dose"
* subject = Reference(Patient/X)

Instance: ciprofloxacin
InstanceOf: MedicationRequest
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 5
    * denominator.value = 10
* status = #active
* intent = #proposal
* medicationCodeableConcept.text = "Ciprofloxacin (250mg twice daily for 3 days)"
* subject = Reference(Patient/X)

Instance: ct-pulmonary-angiography
InstanceOf: ServiceRequest
Usage: #inline
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 9
    * denominator.value = 10
* status = #active
* intent = #proposal
* code.text = "CT Pulmonary Angiography"
* subject = Reference(Patient/X)

Instance: ventilation-perfusion-scan
InstanceOf: ServiceRequest
Usage: #inline
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 7
    * denominator.value = 10
* status = #active
* intent = #proposal
* code.text = "Ventilation-Perfusion (V/Q) Scan"
* subject = Reference(Patient/X)

Instance: mri-with-gd-contrast
InstanceOf: ServiceRequest
Usage: #inline
* extension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating"
  * valueRatio
    * numerator.value = 5
    * denominator.value = 10
* status = #active
* intent = #proposal
* code.text = "MRI with Gd Contrast"
* subject = Reference(Patient/X)
