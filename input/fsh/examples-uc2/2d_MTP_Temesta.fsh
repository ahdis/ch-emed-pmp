Instance: 2d-MTPTemesta
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Temesta Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9e2843b4-5a21-4ede-b1dc-8434b4c6d254"
* type = #document
* timestamp = "2022-05-15T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2d-CompTemesta"
* entry[=].resource = 2d-CompTemesta
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2d-MedStatTemesta"
* entry[=].resource = 2d-MedStatTemesta

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 2d-CompTemesta
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Temesta Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9e2843b4-5a21-4ede-b1dc-8434b4c6d254"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-05-15T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan][+].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan][=].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan][=].text.status = #generated
* section[treatmentPlan][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">TEMESTA EXPIDET Schmelztabl 1 mg, 0-0-0-1</p></div>"
* section[treatmentPlan][=].entry = Reference(2d-MedStatTemesta)


Instance: 2d-MedStatTemesta
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Temesta MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2d-MedTemesta
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9e2843b4-5a21-4ede-b1dc-8434b4c6d254"
* status = #completed
* medicationReference = Reference(2d-MedTemesta)
* subject = Reference(MadameDupont)
* reasonCode.text = "zum Schlafen"
* note.text = "1 Tablette ½ Stunde vor dem Schlafengehen unter der Zunge zergehen lassen. 
(Wenn nach 3 Tagen keine Besserung eintritt, erneut Kontakt mit dem Arzt aufnehmen.)"
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2022-05-15"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = "2022-05-18"
* dosage[structurednormal][=].timing.repeat.when[+] = #NIGHT
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2d-MedTemesta
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680471020733 "TEMESTA EXPIDET Schmelztabl 1 mg"
* code.text = "TEMESTA EXPIDET Schmelztabl 1 mg"
* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 20 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387106007 "Lorazepam (substance)"
* ingredient.itemCodeableConcept.text = "Lorazepam"
* ingredient.strength.numerator = 1 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"