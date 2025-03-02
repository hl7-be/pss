Extension: PSSCodedRating
//Id: pss-coded-rating
Title: "PSS Rating Extension"
Description: "A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing."
Context: Resource, PlanDefinition.action

* value[x] only CodeableConcept


Extension: PSSStructuredRating
//Id: structured-rating
Title: "PSS Rating Extension"
Description: "A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing."
Context: Resource, RequestGroup.action

* extension contains
    ratingType 1..1 MS and
    ratingValue 0..1 MS and
    ratingText 0..1 MS

* extension[ratingType].value[x] only CodeableConcept
* extension[ratingValue].value[x] only Quantity or Ratio
* extension[ratingText].value[x] only markdown

* insert DocumentExtension (
    ratingType,
    "Volume in the body where radiation was delivered",
    "A BodyStructure resource representing the body structure treated\, for example\, Chest Wall Lymph Nodes.")
* insert DocumentExtension (
    ratingValue, 
    "Total Radiation Dose Delivered",
    "The total amount of radiation delivered to this volume within the scope of this dose delivery.")
* insert DocumentExtension (
    ratingText,
    "Number of Fractions Delivered",
    "The number of fractions delivered to this volume.")


// This rule set limits the application of an extension to the given path
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

// The strings defined for short and definition should not be quoted, and any comma must be escaped with a backslash.
RuleSet: DocumentExtension(path, short, definition)
* extension[{path}] ^short = {short}
* extension[{path}] ^definition = {definition}

Alias: UCUM = http://unitsofmeasure.org