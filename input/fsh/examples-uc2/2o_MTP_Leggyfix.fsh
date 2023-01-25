Instance: 2o-MTPLeggyfix
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Leggyfix Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:08ad6103-1c65-41ba-bfed-6a4d0b240403"
* type = #document
* timestamp = "2022-06-25T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2o-CompLeggyfix"
* entry[=].resource = 2o-CompLeggyfix
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2o-MedStatLeggyfix"
* entry[=].resource = 2o-MedStatLeggyfix

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


Instance: 2o-CompLeggyfix
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Leggyfix Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:08ad6103-1c65-41ba-bfed-6a4d0b240403"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-25T11:00:00+01:00"
* author = Reference(DoctorHospital)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Hospital)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">IVF LEGGYFIX Fixiersyst Urinbeutel L</p></div>"
* section[treatmentPlan].entry = Reference(2o-MedStatLeggyfix)


Instance: 2o-MedStatLeggyfix
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Leggyfix MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2o-MedLeggyfix
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:08ad6103-1c65-41ba-bfed-6a4d0b240403"
* status = #completed
* medicationReference = Reference(2o-MedLeggyfix)
* subject = Reference(MadameDupont)
* dosage[baseEntry][+].text = "Jeden Abend wechseln"
// * dosage[baseEntry][=].timing.repeat.boundsPeriod.start = "2022-06-25"



Instance: 2o-MedLeggyfix
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7611600625437 "IVF LEGGYFIX Fixiersyst Urinbeutel L"
* code.text = "IVF LEGGYFIX Fixiersyst Urinbeutel L"
