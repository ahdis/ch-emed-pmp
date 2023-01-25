Instance: 2m-MTPClexane
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Clexane Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c7c98234-4da4-46c5-9a22-dce3814a69e8"
* type = #document
* timestamp = "2022-06-25T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2m-CompClexane"
* entry[=].resource = 2m-CompClexane
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2m-MedStatClexane"
* entry[=].resource = 2m-MedStatClexane

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



Instance: 2m-CompClexane
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Clexane Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c7c98234-4da4-46c5-9a22-dce3814a69e8"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-25T11:00:00+01:00"
* author = Reference(Pharmacist)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Pharmacy)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">CLEXANE Inj Lös 60 mg/0.6ml Fertigspr, 0-0-1-0</p></div>"
* section[treatmentPlan].entry = Reference(2m-MedStatClexane)


Instance: 2m-MedStatClexane
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Clexane MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2m-MedClexane
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c7c98234-4da4-46c5-9a22-dce3814a69e8"
* status = #completed
* medicationReference = Reference(2m-MedClexane)
* subject = Reference(MadameDupont)
* dosage[baseEntry][+].timing.repeat.boundsPeriod.start = "2022-06-24"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = "2022-07-04"
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].route = $edqm#20066000 "Subcutaneous use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: 2m-MedClexane
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680494564580 "CLEXANE Inj Lös 60 mg/0.6ml Fertigspr"
* code.text = "CLEXANE Inj Lös 60 mg/0.6ml Fertigspr"
* form = $edqm#11201000	"Solution for injection"
* amount.numerator = 10 $sct#733020007 "Syringe (unit of presentation)" // 10 Fertigspritzen
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#108983001 "Enoxaparin sodium (substance)"	
* ingredient.itemCodeableConcept.text = "Enoxaparin natrium"
* ingredient.strength.numerator = 60 'mg' "milligram"
* ingredient.strength.denominator = 0.6 'mL' "milliliter"