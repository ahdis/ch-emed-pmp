// DER-MED lotion lavante pH5.5, raison: peau sensible, instruction au patient: pour se laver

Instance: 3-3-MTPDermed
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Dermed Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5f1329d6-8eee-40dc-96a2-905e286e319b"
* type = #document
* timestamp = "2019-03-01T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3-3-CompDermed"
* entry[=].resource = 3-3-CompDermed
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3-3-MedStatDermed"
* entry[=].resource = 3-3-MedStatDermed

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hospital"
* entry[=].resource = Hospital
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorHospital"
* entry[=].resource = DoctorHospital


Instance: 3-3-CompDermed
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Dermed Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5f1329d6-8eee-40dc-96a2-905e286e319b"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-03-01T11:00:00+01:00"
* author = Reference(DoctorHospital)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Hospital)

* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">DER-MED lotion lavante pH5.5, raison: peau sensible, instruction au patient: pour se laver</p></div>"
* section[treatmentPlan].entry = Reference(3-3-MedStatDermed)


Instance: 3-3-MedStatDermed
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Dermed MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedDermed
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fc4ce14e-fc6a-4499-a619-98a0a55c5fb8"
* status = #completed
* medicationReference = Reference(MedDermed)
* subject = Reference(MadameDupont)
* reasonCode.text = "peau sensible"
* note.text = "pour se laver"
//* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2019-03-01"
* dosage[nonstructured][+].text = "Date de fin inconnue"


Instance: MedDermed
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680431100390 "DER-MED lotion lavante pH 5.5 flacon 150 ml (hc 05/21)"
* code.text = "DER-MED lotion lavante pH 5.5 flacon 150 ml (hc 05/21)"
* form = $edqm#10516000 "Cutaneous emulsion"
* amount.numerator = 150 'mL' "milliliter"
* amount.denominator = 1 $sct#732986007 "Bottle"
* ingredient.itemCodeableConcept.text = "Undécylénamide MEA-sulfosuccinate disodique"
* ingredient.strength.numerator = 30 'mg' "milligram"
* ingredient.strength.denominator = 1 'g' "gram"