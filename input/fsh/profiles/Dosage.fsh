Profile: ChEmedPmpDosageNonstructured
Parent: $ChEmedDosageNonstructured
Id: ch-emed-pmp-dosage-nonstructured
Title: "CH EMED PMP Dosage Nonstructured Profile"
Description: "Definition of the unstructured dosage"
* text ^short = "Unstructured Dosage"

* timing.repeat.boundsPeriod.start ^short = "Start of treatment"
* timing.repeat.boundsPeriod.start 0..1

* timing.repeat.boundsPeriod.end ^short = "End of treatment"
* timing.repeat.boundsPeriod.end 0..1




Profile: ChEmedPmpDosageStructured
Parent: $ChEmedDosageStructured
Id: ch-emed-pmp-dosage-structured
Title: "CH EMED PMP Dosage Structured Profile"
Description: "Definition of the structured dosage"
* asNeededBoolean ^short = "'true' if the medication is 'in reserve'"
