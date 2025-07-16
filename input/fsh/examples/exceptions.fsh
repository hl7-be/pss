
Instance: any-service-no-response-response
InstanceOf: PSSResponseBundle
Title: "Generic response - No guidance found"
Description: "Generic response - No guidance found - 1. Bundle"
Usage: #example
* identifier.value = "response01"
* timestamp = "2025-02-20T00:00:00Z"
* type = #collection
* entry[0].resource = any-service-no-response-group
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-c684-2e639094ad4d"




Instance: any-service-no-response-group
InstanceOf: PSSResponseRequestGroup
Title: "Generic response - No guidance found - 10.1. RequestGroup"
Description: "Generic response - No guidance foun - 10.1. RequestGroup"
Usage: #example
* id = "any-service-no-response-group"
* status = #active
* intent = #proposal
* subject = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* action[0]
  * selectionBehavior = #at-most-one
  * title = "Geen aanbevelingen gevonden"
  * textEquivalent = "Geen aanbevelingen gevonden"
  * code = #noAdviceforyou
