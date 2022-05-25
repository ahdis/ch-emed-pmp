// Traitement préexistant

Instance: 0-3-MTPAspirin
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Aspirin Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9bc448a3-d023-44c4-90d1-29bef2bd9cf7"
* type = #document
* timestamp = "2019-02-08T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/0-3-CompAspirin"
* entry[=].resource = 0-3-CompAspirin
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/0-3-MedStatAspirin"
* entry[=].resource = 0-3-MedStatAspirin

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 0-3-CompAspirin
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Aspirin Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9bc448a3-d023-44c4-90d1-29bef2bd9cf7"
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
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Aspirin Cardio cpr pell 100 mg, 1-0-0</p></div>"
* section[treatmentPlan].entry = Reference(0-3-MedStatAspirin)


Instance: 0-3-MedStatAspirin
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Aspirin MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedAspirin
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4f693014-b29c-44af-9140-b79c71eed881"
* status = #completed
* medicationReference = Reference(MedAspirin)
* subject = Reference(MadameDupont)
//* reasonCode.text = "douleurs"
//* dosage[+].timing.repeat.boundsPeriod.start = ""
* dosage[structurednormal][+].timing.repeat.when[+] = #MORN
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedAspirin
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680460380107 "ASPIRINE CARDIO cpr pell 100 mg blister 28 pce"
* code.text = "ASPIRINE CARDIO cpr pell 100 mg blister 28 pce"
//* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 28 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387458008 "Aspirin (substance)"
* ingredient.itemCodeableConcept.text = "Acide acétylsalicylique"
* ingredient.strength.numerator = 100 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"