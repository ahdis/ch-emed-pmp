Instance: 2h-MTPVoltaren
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Voltaren Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3e97db65-886e-4f2f-b164-154fe6303f67"
* type = #document
* timestamp = "2022-06-23T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2h-CompVoltaren"
* entry[=].resource = 2h-CompVoltaren
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2h-MedStatVoltaren"
* entry[=].resource = 2h-MedStatVoltaren

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient



Instance: 2h-CompVoltaren
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Voltaren Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3e97db65-886e-4f2f-b164-154fe6303f67"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-23T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">VOLTAREN DOLO FORTE Emugel, 1-1-1-1</p></div>"
* section[treatmentPlan].entry = Reference(2h-MedStatVoltaren)


Instance: 2h-MedStatVoltaren
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Voltaren MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2h-MedVoltaren
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3e97db65-886e-4f2f-b164-154fe6303f67"
* status = #completed
* medicationReference = Reference(2h-MedVoltaren)
* subject = Reference(MadameDupont)
* reasonCode.text = "Schmerzen"
//* dosage[structurednormal][+].timing.repeat.boundsDuration = 7 'd' "day"
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2022-06-23"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = "2022-06-29"
* dosage[structurednormal][=].timing.repeat.when[+] = #MORN
* dosage[structurednormal][=].timing.repeat.when[+] = #NOON
* dosage[structurednormal][=].timing.repeat.when[+] = #EVE
* dosage[structurednormal][=].timing.repeat.when[+] = #NIGHT
* dosage[structurednormal][=].route = $edqm#20003000 "Anwendung auf der Haut"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 '{Dose}' "Dose"


Instance: 2h-MedVoltaren
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680618590037 "VOLTAREN DOLO FORTE Emugel"
* code.text = "VOLTAREN DOLO FORTE Emugel"
* form = $edqm#10503000	"Gel"
* amount.numerator = 120 'g' "gram"
* amount.denominator = 1 $sct#733024003 "Tube"
* ingredient.itemCodeableConcept = $sct#7034005 "Diclofenac (substance)"
* ingredient.itemCodeableConcept.text = "Diclofenac"
* ingredient.strength.numerator = 2.32 'g' "gram"
* ingredient.strength.denominator = 100 'g' "gram"