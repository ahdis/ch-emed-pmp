// ​Hydrocortisone Galepharm cpr 10 mg, 0.5-0-0.5, en réserve, raison: prurit, instruction au patient: en cas de crise de prurit

Instance: 3-5-MTPHydrocortisone
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Hydrocortisone Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a482dd5e-456b-4b82-bd39-7c46b8cd48a2"
* type = #document
* timestamp = "2019-03-01T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3-5-CompHydrocortisone"
* entry[=].resource = 3-5-CompHydrocortisone
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3-5-MedStatHydrocortisone"
* entry[=].resource = 3-5-MedStatHydrocortisone

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hospital"
* entry[=].resource = Hospital
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/DoctorHospital"
* entry[=].resource = DoctorHospital
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Hopital"
* entry[=].resource = Hopital


Instance: 3-5-CompHydrocortisone
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Hydrocortisone Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a482dd5e-456b-4b82-bd39-7c46b8cd48a2"
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
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Hydrocortisone Galepharm cpr 10 mg, 0.5-0-0.5, en réserve, raison: prurit, instruction au patient: en cas de crise de prurit</p></div>"
* section[treatmentPlan].entry = Reference(3-5-MedStatHydrocortisone)


Instance: 3-5-MedStatHydrocortisone
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Hydrocortisone MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedHydrocortisone
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:50ac3e1c-a9f6-454e-9624-9398ecf200a2"
* status = #completed
* medicationReference = Reference(MedHydrocortisone)
* subject = Reference(MadameDupont)
* reasonCode.text = "prurit"
* dosage[baseEntry][+].patientInstruction = "en cas de crise de prurit"
* dosage[baseEntry][=].timing.repeat.when[+] = #MORN
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].asNeededBoolean = true
* dosage[baseEntry][=].route = $edqm#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 0.5 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedHydrocortisone
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680579700018 "HYDROCORTISON Galepharm Tabl 10 mg blister 20 pce"
* code.text = "HYDROCORTISON Galepharm Tabl 10 mg blister 20 pce"
* amount.numerator = 20 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#396458002 "Hydrocortisone (substance)"
* ingredient.itemCodeableConcept.text = "Hydrocortisone"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"