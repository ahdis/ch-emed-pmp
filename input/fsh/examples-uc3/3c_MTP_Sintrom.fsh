Instance: 3c-MTPSintrom
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Sintrom Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e53309e7-ac2b-4162-9c43-cd735fc88943"
* type = #document
* timestamp = "2022-07-01T13:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3c-CompSintrom"
* entry[=].resource = 3c-CompSintrom
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3c-MedStatSintrom"
* entry[=].resource = 3c-MedStatSintrom

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 3c-CompSintrom
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Sintrom Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e53309e7-ac2b-4162-9c43-cd735fc88943"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-07-01T13:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">SINTROM 4 Tabl 4 mg</p></div>"
* section[treatmentPlan].entry = Reference(3c-MedStatSintrom)


Instance: 3c-MedStatSintrom
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Sintrom MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedSintrom
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e53309e7-ac2b-4162-9c43-cd735fc88943"
* status = #completed
* medicationReference = Reference(MedSintrom)
* subject = Reference(MadameDupont)
//* reasonCode.text = ""
* note.text = "1. Tag 1 x tgl. 6 mg, 2. Tag 1 x tgl. 4 mg" // TBD: unstrukturierte Dosierung vs. Anwendungsinstruktion?
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2022-07-10"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = "2022-07-19"
* dosage[structurednormal][=].timing.repeat.when[+] = #MORN // TBD ?
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 '{Dose}' "Dose" // TBD ?
// ch.qligier.hug.pmp.commons.errors.exceptions.PmpInternalException: Encountered a normal dosage instructions without timing or quantity

