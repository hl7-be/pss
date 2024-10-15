Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status

Instance: GetDataToCollect
InstanceOf: PlanDefinition
Usage: #example
* url = "http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetDataToCollect"
* type = $plan-definition-type#eca-rule
* status = #active
* action.title = "Determine additional information required"
* action.description = "Given input data, including age, gender, symptoms, and suspected diagnoses, determine what additional information should be collected"
* action.code.coding.system = "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs"
* action.code.coding.code = #determine-diagnosis
* action.input[0].type = #Patient
* action.input[=].mustSupport[0] = "birthDate"
* action.input[=].mustSupport[+] = "gender"
* action.input[+].type = #Observation
* action.input[=].mustSupport[0] = "category"
* action.input[=].mustSupport[+] = "code"
* action.input[=].mustSupport[+] = "value"
* action.input[=].codeFilter.path = "category"
* action.input[=].codeFilter.code = $observation-category#vital-signs
* action.input[+].type = #Condition
* action.input[=].mustSupport[0] = "category"
* action.input[=].mustSupport[+] = "code"
* action.input[=].mustSupport[+] = "clinicalStatus"
* action.input[=].mustSupport[+] = "verificationStatus"
* action.input[=].mustSupport[+] = "onset"
* action.input[=].codeFilter.path = "category"
* action.input[=].codeFilter.code[0] = $condition-category#encounter-diagnosis
* action.input[=].codeFilter.code[+] = $condition-category#problem-list-item
* action.input[+].type = #Condition
* action.input[=].codeFilter.path = "verificationStatus"
* action.input[=].codeFilter.code = $condition-ver-status#unconfirmed
* action.output[0].type = #Task
* action.output[=].profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* action.output[=].profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task"
* action.output[+].type = #Questionnaire
* action.output[=].profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnaire"