Instance: 3f-MTPPaspertin
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Paspertin Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5927568d-b0ef-41a0-9f2c-ecd0f77cba1b"
* type = #document
* timestamp = "2022-07-01T16:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3f-CompPaspertin"
* entry[=].resource = 3f-CompPaspertin
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3f-MedStatPaspertin"
* entry[=].resource = 3f-MedStatPaspertin

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 3f-CompPaspertin
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Paspertin Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5927568d-b0ef-41a0-9f2c-ecd0f77cba1b"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-07-01T16:00:00+01:00"
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
* section[treatmentPlan].entry = Reference(3f-MedStatPaspertin)


Instance: 3f-MedStatPaspertin
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Paspertin MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedPaspertin
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5927568d-b0ef-41a0-9f2c-ecd0f77cba1b"
* status = #completed
* medicationReference = Reference(MedPaspertin)
* subject = Reference(MadameDupont)
//* reasonCode.text = ""
//* note.text = ""
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2022-07-15"
//* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = ""
* dosage[structurednormal][=].timing.repeat.when[+] = #MORN
* dosage[structurednormal][=].route = $edqm#20045000 "Intravenous use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 '{Dose}' "Dose"


