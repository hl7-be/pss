Instance: GetDiagnoses
InstanceOf: PlanDefinition
Description: "Get Diagnoses Data"
Usage: #example
* url = "http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetDiagnoses"
* type = $plan-definition-type#eca-rule
* status = #active
* action
  * title = "Determine potential diagnoses given relevant patient information"
  * description = "Given input data, including age, gender, and symptoms, determine potential diagnoses"
  * input[0]
    * type = #Patient
    * mustSupport[0] = "birthDate"
    * mustSupport[+] = "gender"
  * input[+]
    * type = #Observation
    * mustSupport[0] = "category"
    * mustSupport[+] = "code"
    * mustSupport[+] = "value"
    * codeFilter
      * path = "category"
      * code = $observation-category#vital-signs
  * input[+]
    * type = #Condition
    * mustSupport[0] = "category"
    * mustSupport[+] = "code"
    * mustSupport[+] = "clinicalStatus"
    * mustSupport[+] = "verificationStatus"
    * mustSupport[+] = "onset"
    * codeFilter
      * path = "category"
      * code[0] = $condition-category#encounter-diagnosis
      * code[+] = $condition-category#problem-list-item
  * output[0]
    * type = #Task
//    * profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
//    * profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task"
  * output[+]
    * type = #Condition
    * profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
    * codeFilter
      * path = "category"
      * code = $condition-category#problem-list-item