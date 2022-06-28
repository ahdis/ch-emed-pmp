Instance: 2b-MTPReniten
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Reniten Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3737c813-1f2a-4132-a59e-c1b633721f74"
* type = #document
* timestamp = "2022-05-05T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2b-CompReniten"
* entry[=].resource = 2b-CompReniten
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2b-MedStatReniten"
* entry[=].resource = 2b-MedStatReniten

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 2b-CompReniten
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Reniten Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3737c813-1f2a-4132-a59e-c1b633721f74"
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
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">RENITEN Tabl 20 mg, 1-0-0-0</p></div>"
* section[treatmentPlan].entry = Reference(2b-MedStatReniten)


Instance: 2b-MedStatReniten
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Reniten MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2b-MedReniten
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3737c813-1f2a-4132-a59e-c1b633721f74"
* status = #completed
* medicationReference = Reference(2b-MedReniten)
* subject = Reference(MadameDupont)
//* reasonCode.text = "douleurs"
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2022-05-05"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = "2022-08-02"
* dosage[structurednormal][=].timing.repeat.when[+] = #MORN
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2b-MedReniten
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680460380107 "RENITEN Tabl 20 mg"
* code.text = "RENITEN Tabl 20 mg"
//* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 28 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#372658000 "Enalapril (substance)"	
* ingredient.itemCodeableConcept.text = "Enalapril"
* ingredient.strength.numerator = 20 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"