Instance: plandefinition-flow2
InstanceOf: PlanDefinition
* url = "http://www.example.com/Plandefinition/plandefinition-flow2"
* status = #active
* topic = $sct#65363002 //is this the correct field? should be goal addresses?
* action[+].description = "Collect data for treatment of antimicrobial acute mediotitis"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Condition
* action[=].input[=].codeFilter.code = $sct#313424005 //increased risk of disease
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Age
* action[=].input[+].type = http://hl7.org/fhir/data-types#Observation
* action[=].input[=].codeFilter.code = $sct#275259005 // congenital malformation of ear
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Procedure
* action[=].input[=].codeFilter.code = $sct#68265005 // operation on the ear
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Condition
* action[=].input[=].codeFilter.code = $sct#414030009 // disorder of immune structure
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Condition
* action[=].input[=].codeFilter.code = $sct#275142008 // ziek kind
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Observation
* action[=].input[=].codeFilter.code = $sct#162362000 // loopoor als symptoom
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#AllergyIntolerance
* action[=].input[=].codeFilter.code = $sct#91936005 // penicilline allergie
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#AllergyIntolerance
* action[=].input[=].codeFilter.code = $sct#422076005 //igE gemedieerde allergie
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Observation
* action[=].input[=].codeFilter.code = $sct#281789004 // antibiotics therapy
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Observation
* action[=].input[=].codeFilter.code = $sct#372687004 // Amoxicilline
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Observation
* action[=].input[=].codeFilter.code = $sct#372833007 // Cefuroxim
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Observation
* action[=].input[=].codeFilter.code = $sct#387531004 // Azytromycine
* action[=].input[=].codeFilter.path = "code"
* action[=].input[+].type = http://hl7.org/fhir/data-types#Observation //dubbel?
