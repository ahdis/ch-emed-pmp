// Traitement préexistant

Instance: 0-1-MTPReniten
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Reniten Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cfacdd0b-1797-4beb-bfad-6ea931dd91ef"
* type = #document
* timestamp = "2019-02-08T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/0-1-CompReniten"
* entry[=].resource = 0-1-CompReniten
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/0-1-MedStatReniten"
* entry[=].resource = 0-1-MedStatReniten

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


Instance: 0-1-CompReniten
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Reniten Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cfacdd0b-1797-4beb-bfad-6ea931dd91ef"
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
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Reniten cpr 20 mg, 1-0-0</p></div>"
* section[treatmentPlan].entry = Reference(0-1-MedStatReniten)


Instance: 0-1-MedStatReniten
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Reniten MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedReniten
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5ebf2920-5f54-41f0-8651-d4a365ee8b4f"
* status = #completed
* medicationReference = Reference(MedReniten)
* subject = Reference(MadameDupont)
//* reasonCode.text = "douleurs"
//* dosage[+].timing.repeat.boundsPeriod.start = ""
* dosage[baseEntry][+].timing.repeat.when[+] = #MORN
* dosage[baseEntry][=].route = $edqm#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedReniten
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680460380107 "RENITEN cpr 20 mg 28 pce"
* code.text = "RENITEN cpr 20 mg 28 pce"
//* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 28 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#372658000 "Enalapril (substance)"	
* ingredient.itemCodeableConcept.text = "Énalapril"
* ingredient.strength.numerator = 20 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"