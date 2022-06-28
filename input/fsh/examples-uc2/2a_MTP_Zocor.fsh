Instance: 2a-MTPZocor
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Zocor Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4ddc9108-4681-4c50-81f9-f6212a1d2d01"
* type = #document
* timestamp = "2022-03-05T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2a-CompZocor"
* entry[=].resource = 2a-CompZocor
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2a-MedStatZocor"
* entry[=].resource = 2a-MedStatZocor

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 2a-CompZocor
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Zocor Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4ddc9108-4681-4c50-81f9-f6212a1d2d01"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-03-05T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">ZOCOR Filmtabl 40 mg, 0-0-1-0</p></div>"
* section[treatmentPlan].entry = Reference(2a-MedStatZocor)


Instance: 2a-MedStatZocor
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Zocor MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2a-MedZocor
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4ddc9108-4681-4c50-81f9-f6212a1d2d01"
* status = #completed
* medicationReference = Reference(2a-MedZocor)
* subject = Reference(MadameDupont)
//* reasonCode.text = "douleurs"
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2022-03-05"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = "2022-05-03"
* dosage[structurednormal][=].timing.repeat.when[+] = #EVE
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2a-MedZocor
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680497420531 "ZOCOR Filmtabl 40 mg"
* code.text = "ZOCOR Filmtabl 40 mg"
//* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 28 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387584000 "Simvastatin (substance)"
* ingredient.itemCodeableConcept.text = "Simvastatin"
* ingredient.strength.numerator = 40 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"