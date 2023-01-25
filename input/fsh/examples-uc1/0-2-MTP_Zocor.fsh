// Traitement préexistant

Instance: 0-2-MTPZocor
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Zocor Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7f4c5d51-8f6c-4d3a-ae28-8bbc762570fb"
* type = #document
* timestamp = "2019-02-08T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/0-2-CompZocor"
* entry[=].resource = 0-2-CompZocor
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/0-2-MedStatZocor"
* entry[=].resource = 0-2-MedStatZocor

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


Instance: 0-2-CompZocor
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Zocor Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7f4c5d51-8f6c-4d3a-ae28-8bbc762570fb"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-08T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Zocor cpr pell 40 mg, 0-0-1</p></div>"
* section[treatmentPlan].entry = Reference(0-2-MedStatZocor)


Instance: 0-2-MedStatZocor
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Zocor MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedZocor
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c66f540c-9610-4e89-8deb-f418c287a6a7"
* status = #completed
* medicationReference = Reference(MedZocor)
* subject = Reference(MadameDupont)
//* reasonCode.text = "douleurs"
//* dosage[+].timing.repeat.boundsPeriod.start = ""
* dosage[baseEntry][+].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].route = $edqm#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedZocor
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680497420531 "ZOCOR cpr pell 40 mg blister 28 pce"
* code.text = "ZOCOR cpr pell 40 mg blister 28 pce"
//* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 28 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387584000 "Simvastatin (substance)"
* ingredient.itemCodeableConcept.text = "Simvastatine"
* ingredient.strength.numerator = 40 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"