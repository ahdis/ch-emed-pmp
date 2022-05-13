// Cetirizine Mepha Lactab 10 mg, 0-0-1, durant 3 jours, raison: allergie

Instance: 3-1-MTPCetirizine
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Cetirizine Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:207f34b9-5bcc-4c99-8203-9bcdb467a9b8"
* type = #document
* timestamp = "2019-02-27T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3-1-CompCetirizine"
* entry[=].resource = 3-1-CompCetirizine
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3-1-MedStatCetirizine"
* entry[=].resource = 3-1-MedStatCetirizine

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hospital"
* entry[=].resource = Hospital


Instance: 3-1-CompCetirizine
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Cetirizine Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:207f34b9-5bcc-4c99-8203-9bcdb467a9b8"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-27T11:00:00+01:00"
* author = Reference(Hospital)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Hospital)

* section.title = "Plan de traitement médicamenteux"
* section.code = $lnc#77604-7 "Medication treatment plan.brief"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Cetirizine Mepha Lactab 10 mg, 0-0-1, durant 3 jours, raison: allergie</div>"
* section.entry = Reference(3-1-MedStatCetirizine)


Instance: 3-1-MedStatCetirizine
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Cetirizine MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedCetirizine
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4340fa56-50ac-4e90-ae3b-dcd35803ec38"
* status = #completed
* medicationReference = Reference(MedCetirizine)
* subject = Reference(MadameDupont)
* reasonCode.text = "allergie"
* dosage[+].timing.repeat.boundsPeriod.start = "2019-02-27"
* dosage[=].timing.repeat.boundsPeriod.end = "2019-03-02"
* dosage[=].timing.repeat.when[+] = #EVE
* dosage[=].route = $edqm#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedCetirizine
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680651190041 "CETIRIZIN Mepha Lactab 10 mg blister 10 pce"
* code.text = "CETIRIZIN Mepha Lactab 10 mg blister 10 pce"
* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 10 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#108656004 "Cetirizine hydrochloride (substance)"
* ingredient.itemCodeableConcept.text = "Cétirizine dichlorhydrate"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"