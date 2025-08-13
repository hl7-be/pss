
These are the services identified for PSS:




### PSS-0 Consent

The Consent service is provided by the PSS system to register a user's acceptance of the terms and conditions for PSS (or opt-out, if that is their preference).  
This service accept POSTs of Consent following the [Consent profile](#).  
This service requests and stores information as described in the [model](StructureDefinition-PSSConsentModel.html).

* The user ID is an anonymised number that uniquely identifies a professional. This way the system doesn't ask for consent in every session.
* The version is important for when the terms change, that the user may need to be asked to renew their consent.

The consent will have 2 provisions:
* use system data exchange, 
* include in statistics for PSS

<!-- ask the WG if they prefer a questionnaire 

We need to catch consent:
- at first usage
- after each change of policy for each user or each new nihdi number

- consent should capture either snapshot OR the versioned terms and condition
  - maybe version to be explicit to allow search

- how does this work wehn consent is withdrawn? 401 

-->




### PSS-1 Get Diagnoses
This service asks for Diagnoses based on some provided data. The response is in the form of a Bundle with a RequestGroup containing a Task with the Conditions to be considered.


### PSS-2 Get Data to Collect
This service asks for Data to be collected. The response is in the form of a Bundle with a RequestGroup containing the task indicating the Questionnaire to be filled in; This Questionnaire can be presented to the user or mapped from FHIR resources. The mapping is out of scope of the current specification.


### PSS-3 Get Recommendations
This service asks for possible matching actions. The response is a Bundle with a RequestGroup containing the different options in form of Requests.


### PSS-4 Give feedback 
This service informs the PSS of the options accepted, refused, or overridden.
It also allows informing that the user selected something different, not one of the returned options


### PSS-5 Consult prior result

This is a simple request for a prior PSS ID. There are no searches possible via the FHIR interface.










