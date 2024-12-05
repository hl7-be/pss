The overall pattern for PSS data exchange is based on the HL7 GPG FHIR Implementation Guide:

* Requests are done to an endpoint that corresponds to a type of guidance

* The content of the request is a Patient resource and a Bundle with any FHIR resources

* The response to the request is a Bundle containing a RequestGroup with proposals for action presented as Requests:
* Proposal to capture data (with a Task to serve as request and a Questionnaire with the structured data to be captured)
* Proposal to consider a diagnosis (with a Task to serve as request and the Conditions with verificationStatus as provisional)
* Proposal to give medication (with one or more MedicationRequests)
* Proposal to perform a procedure (with one or more ServiceRequests)

