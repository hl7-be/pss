Instance: careplan-radiology-step2
InstanceOf: CarePlan
* contained[+] = questionnaire-task
* contained[+] = temp-patient
//* contained[+] = indications-response
* status = #active
* intent = #order
* subject = Reference(temp-patient)
* activity.reference = Reference(questionnaire-task)


Instance: questionnaire-task
InstanceOf: Task

* focus = Reference(indications-response)
* status = #requested
* intent = #order


