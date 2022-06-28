Instance: 2c-MTPAspirin
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Aspirin Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1627fe0a-cb01-4334-9eea-d740cb812bed"
* type = #document
* timestamp = "2022-05-05T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2c-CompAspirin"
* entry[=].resource = 2c-CompAspirin
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2c-MedStatAspirin"
* entry[=].resource = 2c-MedStatAspirin

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 2c-CompAspirin
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Aspirin Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1627fe0a-cb01-4334-9eea-d740cb812bed"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-05-05T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">ASPIRIN CARDIO Fimtabl 100 mg, 1-0-0-0</p></div>"
* section[treatmentPlan].entry = Reference(2c-MedStatAspirin)


Instance: 2c-MedStatAspirin
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Aspirin MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2c-MedAspirin
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1627fe0a-cb01-4334-9eea-d740cb812bed"
* status = #completed
* medicationReference = Reference(2c-MedAspirin)
* subject = Reference(MadameDupont)
//* reasonCode.text = "douleurs"
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2022-05-05"
* dosage[structurednormal][=].timing.repeat.when[+] = #MORN
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2c-MedAspirin
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680517950406 "ASPIRIN CARDIO Fimtabl 100 mg"
* code.text = "ASPIRIN CARDIO Fimtabl 100 mg"
//* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 28 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387458008 "Aspirin (substance)"
* ingredient.itemCodeableConcept.text = "Acetylsalicylsäure"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"