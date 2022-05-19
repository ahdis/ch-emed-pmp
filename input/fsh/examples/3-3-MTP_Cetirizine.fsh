// Cetirizine Mepha Lactab 10 mg, changement de posologie, 1-0-1, commentaire: pas de réaction significative avec le traitement 1 x jour. -> 2x/j.

Instance: 3-3-MTPCetirizine
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Cetirizine Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:29d4953b-8f08-45f1-b4a0-b345f83acc72"
* type = #document
* timestamp = "2019-02-28T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3-3-CompCetirizine"
* entry[=].resource = 3-3-CompCetirizine
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3-3-MedStatCetirizine"
* entry[=].resource = 3-3-MedStatCetirizine

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hospital"
* entry[=].resource = Hospital


Instance: 3-3-CompCetirizine
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Cetirizine Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:29d4953b-8f08-45f1-b4a0-b345f83acc72"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-28T11:00:00+01:00"
* author = Reference(Hospital)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Hospital)

* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Cetirizine Mepha Lactab 10 mg, 1-0-1, durant 3 jours, raison: allergie</div>"
* section[treatmentPlan].entry = Reference(3-3-MedStatCetirizine)


Instance: 3-3-MedStatCetirizine
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Cetirizine MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedCetirizine
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0b015b1d-2e25-441a-bb4c-95c39e1de4ad"
* status = #completed
* medicationReference = Reference(MedCetirizine)
* subject = Reference(MadameDupont)
* reasonCode.text = "allergie"
* dosage[structurednormal][+].timing.repeat.boundsPeriod.start = "2019-02-27"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = "2019-03-01"
* dosage[structurednormal][=].timing.repeat.when[+] = #MORN
* dosage[structurednormal][=].timing.repeat.when[+] = #EVE
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


