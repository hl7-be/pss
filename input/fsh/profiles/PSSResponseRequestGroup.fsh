Profile: PSSResponseRequestGroup
Parent: RequestGroup
Title: "PSS Response Request Group"
Description: "All PSS responses contain a PSS RequestGroup conformant to this profile."
* subject 0..1
* subject only Reference(PSSPatient)
* action 1..1
  * action
    * extension contains
      PSSStructuredRating named structured-rating 0..*
