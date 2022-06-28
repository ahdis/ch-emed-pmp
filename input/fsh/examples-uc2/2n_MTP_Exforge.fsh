Instance: 2n-MTPExforge
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Exforge Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:37569ba7-878f-49e8-b2eb-8c34466c3b0f"
* type = #document
* timestamp = "2022-06-25T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2n-CompExforge"
* entry[=].resource = 2n-CompExforge
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2n-MedStatExforge"
* entry[=].resource = 2n-MedStatExforge

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 2n-CompExforge
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Exforge Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:37569ba7-878f-49e8-b2eb-8c34466c3b0f"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-25T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">EXFORGE HCT Filmtabl 5mg/160mg/12.5mg, 1-0-0-0</p></div>"
* section[treatmentPlan].entry = Reference(2n-MedStatExforge)


Instance: 2n-MedStatExforge
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Exforge MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2n-MedExforge
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:37569ba7-878f-49e8-b2eb-8c34466c3b0f"
* status = #completed
* medicationReference = Reference(2n-MedExforge)
* subject = Reference(MadameDupont)
* note.text = "Unabhängig der Mahlzeiten"
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2022-06-25"
* dosage[structurednormal][=].timing.repeat.when[+] = #MORN
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2n-MedExforge
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680594070011 "EXFORGE HCT Filmtabl 5mg/160mg/12.5mg"
* code.text = "EXFORGE HCT Filmtabl 5mg/160mg/12.5mg"
* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 28 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient[+].itemCodeableConcept = $sct#386864001 "Amlodipine (substance)"
* ingredient[=].itemCodeableConcept.text = "Amlodipine"
* ingredient[=].strength.numerator = 5 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"
* ingredient[+].itemCodeableConcept = $sct#386876001 "Valsartan (substance)"
* ingredient[=].itemCodeableConcept.text = "Valsartan"
* ingredient[=].strength.numerator = 160 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"
* ingredient[+].itemCodeableConcept = $sct#387525002 "Hydrochlorothiazide (substance)"
* ingredient[=].itemCodeableConcept.text = "Hydrochlorothiazide"
* ingredient[=].strength.numerator = 12.5 'mg' "milligram"
* ingredient[=].strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"