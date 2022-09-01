Instance: 2i-MTPHydrocortisone
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Hydrocortisone Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:20ca0910-f592-410f-a73a-14f88a8a2448"
* type = #document
* timestamp = "2022-06-23T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2i-CompHydrocortisone"
* entry[=].resource = 2i-CompHydrocortisone
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2i-MedStatHydrocortisone"
* entry[=].resource = 2i-MedStatHydrocortisone

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hospital"
* entry[=].resource = Hospital
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorHospital"
* entry[=].resource = DoctorHospital


Instance: 2i-CompHydrocortisone
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Hydrocortisone Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:20ca0910-f592-410f-a73a-14f88a8a2448"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-23T11:00:00+01:00"
* author = Reference(DoctorHospital)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Hospital)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">HYDROCORTISON Galepharm Tabl 10 mg, 0.5-0-1-0</p></div>"
* section[treatmentPlan].entry = Reference(2i-MedStatHydrocortisone)


Instance: 2i-MedStatHydrocortisone
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Hydrocortisone MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2i-MedHydrocortisone
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:20ca0910-f592-410f-a73a-14f88a8a2448"
* status = #completed
* medicationReference = Reference(2i-MedHydrocortisone)
* subject = Reference(MadameDupont)
* reasonCode.text = "Juckreiz"

* dosage[structuredsplit][+].sequence = 1
* dosage[structuredsplit][=].patientInstruction = "bei einem Juckreizanfall"
* dosage[structuredsplit][=].timing.repeat.boundsPeriod.start = "2022-06-23"
* dosage[structuredsplit][=].timing.repeat.boundsPeriod.end = "2022-06-25"
* dosage[structuredsplit][=].timing.repeat.when[+] = #MORN
* dosage[structuredsplit][=].asNeededBoolean = true
* dosage[structuredsplit][=].route = $edqm#20053000 "Oral use"
* dosage[structuredsplit][=].doseAndRate.doseQuantity = 0.5 $sct#732936001 "Tablet (unit of presentation)"
* dosage[structuredsplit][+].sequence = 2
* dosage[structuredsplit][=].patientInstruction = "bei einem Juckreizanfall"
* dosage[structuredsplit][=].timing.repeat.boundsPeriod.start = "2022-06-23"
* dosage[structuredsplit][=].timing.repeat.boundsPeriod.end = "2022-06-25"
* dosage[structuredsplit][=].timing.repeat.when[+] = #EVE
* dosage[structuredsplit][=].asNeededBoolean = true
* dosage[structuredsplit][=].route = $edqm#20053000 "Oral use"
* dosage[structuredsplit][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2i-MedHydrocortisone
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680579700018 "HYDROCORTISON Galepharm Tabl 10 mg"
* code.text = "HYDROCORTISON Galepharm Tabl 10 mg"
* amount.numerator = 20 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#396458002 "Hydrocortisone (substance)"
* ingredient.itemCodeableConcept.text = "Hydrocortison"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"