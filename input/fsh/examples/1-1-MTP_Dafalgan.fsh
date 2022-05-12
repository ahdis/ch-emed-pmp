// Dafalgan cpr pell 1 g, 1-1-1, dosage avancé: en réserve, raison: douleurs

Instance: 1-1-MTPDafalgan
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Dafalgan Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:45c6b4d4-19e7-4ae9-9809-37ec009deaec"
* type = #document
* timestamp = "2019-02-12T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/1-1-CompDafalgan"
* entry[=].resource = 1-1-CompDafalgan
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/1-1-MedStatDafalgan"
* entry[=].resource = 1-1-MedStatDafalgan

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient


Instance: 1-1-CompDafalgan
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Dafalgan Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:45c6b4d4-19e7-4ae9-9809-37ec009deaec"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-12T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section.title = "Plan de traitement médicamenteux"
* section.code = $lnc#77604-7 "Medication treatment plan.brief"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dafalgan cpr pell 1 g, 1-1-1, dosage avancé: en réserve, raison: douleurs</div>"
* section.entry = Reference(1-1-MedStatDafalgan)


Instance: 1-1-MedStatDafalgan
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Dafalgan MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedDafalgan
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ce620825-baf3-4c6c-813f-4c5ad9a85a55"
* status = #completed
* medicationReference = Reference(MedDafalgan)
* subject = Reference(MadameDupont)
* reasonCode.text = "douleurs"
* dosage[+].timing.repeat.when[+] = #MORN
* dosage[=].timing.repeat.when[+] = #NOON
* dosage[=].timing.repeat.when[+] = #EVE
* dosage[=].asNeededBoolean = true
* dosage[=].route = $edqm#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedDafalgan
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680563180079 "DAFALGAN cpr pell 1 g blister 40 pce"
* code.text = "DAFALGAN cpr pell 1 g blister 40 pce"
* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 40 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387517004 "Paracetamol (substance)"
* ingredient.itemCodeableConcept.text = "Paracétamol"
* ingredient.strength.numerator = 1 'g' "gram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"