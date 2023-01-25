Instance: 2k-MTPCetirizine
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Cetirizine Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9ab76c09-b7a5-445f-9d27-d363ddb5b953"
* type = #document
* timestamp = "2022-06-24T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2k-CompCetirizine"
* entry[=].resource = 2k-CompCetirizine
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2k-MedStatCetirizine"
* entry[=].resource = 2k-MedStatCetirizine

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Pharmacy"
* entry[=].resource = Pharmacy
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/Pharmacist"
* entry[=].resource = Pharmacist
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pharm"
* entry[=].resource = Pharm



Instance: 2k-CompCetirizine
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Cetirizine Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9ab76c09-b7a5-445f-9d27-d363ddb5b953"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-24T11:00:00+01:00"
* author = Reference(Pharmacist)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Pharmacy)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">CETIRIZIN Mepha Lactab 10 mg, 0-0-1-0</p></div>"
* section[treatmentPlan].entry = Reference(2k-MedStatCetirizine)


Instance: 2k-MedStatCetirizine
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Cetirizine MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2k-MedCetirizine
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9ab76c09-b7a5-445f-9d27-d363ddb5b953"
* status = #completed
* medicationReference = Reference(2k-MedCetirizine)
* subject = Reference(MadameDupont)
* reasonCode.text = "Allergie"
* dosage[baseEntry][+].timing.repeat.boundsPeriod.start = "2022-06-24"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = "2022-06-26"
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].route = $edqm#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2k-MedCetirizine
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680651190041 "CETIRIZIN Mepha Lactab 10 mg"
* code.text = "CETIRIZIN Mepha Lactab 10 mg"
* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 10 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#372523007 "Cetirizine (substance)"
* ingredient.itemCodeableConcept.text = "Cetirizine"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"