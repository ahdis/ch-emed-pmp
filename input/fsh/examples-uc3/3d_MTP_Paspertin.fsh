Instance: 3d-MTPPaspertin
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Paspertin Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6da67859-1903-4a8c-a3ea-f60e2dfad7b5"
* type = #document
* timestamp = "2022-07-01T14:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3d-CompPaspertin"
* entry[=].resource = 3d-CompPaspertin
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3d-MedStatPaspertin"
* entry[=].resource = 3d-MedStatPaspertin

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Rochat"
* entry[=].resource = Rochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 3d-CompPaspertin
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Paspertin Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6da67859-1903-4a8c-a3ea-f60e2dfad7b5"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-07-01T14:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">PASPERTIN Inj Lös 10 mg/2ml</p></div>"
* section[treatmentPlan].entry = Reference(3d-MedStatPaspertin)


Instance: 3d-MedStatPaspertin
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Paspertin MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedPaspertin
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6da67859-1903-4a8c-a3ea-f60e2dfad7b5"
* status = #completed
* medicationReference = Reference(MedPaspertin)
* subject = Reference(MadameDupont)
//* reasonCode.text = ""
* dosage[baseEntry][+].timing.repeat.boundsPeriod.start = "2022-07-15"
//* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = ""
* dosage[baseEntry][=].timing.repeat.when[+] = #NIGHT
* dosage[baseEntry][=].route = $edqm#20045000 "Intravenous use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Dose}' "Dose"


Instance: MedPaspertin
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680327330184 "PASPERTIN Inj Lös 10 mg/2ml"
* code.text = "PASPERTIN Inj Lös 10 mg/2ml"
* form = $edqm#11201000	"Solution for injection"
* amount.numerator = 5 $sct#732978007 "Ampule (unit of presentation)"
* amount.denominator = 1 '{Package}' "Package"  
* ingredient.itemCodeableConcept = $sct#372776000 "Metoclopramide (substance)"
* ingredient.itemCodeableConcept.text = "Metoclopramide"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 2 'mL' "milliliter"