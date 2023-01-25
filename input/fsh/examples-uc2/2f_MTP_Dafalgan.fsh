Instance: 2f-MTPDafalgan
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Dafalgan Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:30fe8614-de1d-496f-8723-5059b914d0c6"
* type = #document
* timestamp = "2022-06-01T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2f-CompDafalgan"
* entry[=].resource = 2f-CompDafalgan
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2f-MedStatDafalgan"
* entry[=].resource = 2f-MedStatDafalgan

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Rochat"
* entry[=].resource = Rochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient


Instance: 2f-CompDafalgan
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Dafalgan Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:30fe8614-de1d-496f-8723-5059b914d0c6"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-01T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">DAFALGAN Filmtabl 1 g, 1-1-1-1, in Reserve</p></div>"
* section[treatmentPlan].entry = Reference(2f-MedStatDafalgan)


Instance: 2f-MedStatDafalgan
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Dafalgan MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2f-MedDafalgan
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:30fe8614-de1d-496f-8723-5059b914d0c6"
* status = #completed
* medicationReference = Reference(2f-MedDafalgan)
* subject = Reference(MadameDupont)
* reasonCode.text = "Schmerzen"
* dosage[baseEntry][+].timing.repeat.when[+] = #MORN
* dosage[baseEntry][=].timing.repeat.when[+] = #NOON
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].timing.repeat.when[+] = #NIGHT
* dosage[baseEntry][=].asNeededBoolean = true
* dosage[baseEntry][=].route = $edqm#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2f-MedDafalgan
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680563180062 "DAFALGAN Filmtabl 1 g"
* code.text = "DAFALGAN Filmtabl 1 g"
* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 16 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387517004 "Paracetamol (substance)"
* ingredient.itemCodeableConcept.text = "Paracetamol"
* ingredient.strength.numerator = 1 'g' "gram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"