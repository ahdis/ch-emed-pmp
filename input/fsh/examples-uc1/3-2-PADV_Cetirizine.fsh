// Cetirizine Mepha Lactab 10 mg, changement de posologie, 1-0-1, commentaire: pas de réaction significative avec le traitement 1 x jour. -> 2x/j.

Instance: 3-2-PADVCetirizine
InstanceOf: $ChEmedBundlePADV
Usage: #example
Title: "PADV Cetirizine Bundle"
Description: "Example for a bundle (CH EMED Document PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f87c649a-efc2-43c8-963d-585f2f847e6a"
* type = #document
* timestamp = "2019-02-28T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3-2-CompCetirizine"
* entry[=].resource = 3-2-CompCetirizine
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/3-2-ObsCetirizine"
* entry[=].resource = 3-2-ObsCetirizine
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3-2-MedStatCetirizine"
* entry[=].resource = 3-2-MedStatCetirizine

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hospital"
* entry[=].resource = Hospital
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorHospital"
* entry[=].resource = DoctorHospital


Instance: 3-2-CompCetirizine
InstanceOf: $ChEmedCompPADV
Usage: #example
Title: "PADV Cetirizine Comp"
Description: "Example for a composition (CH EMED Composition PADV)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f87c649a-efc2-43c8-963d-585f2f847e6a"
* status = #final
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-28T11:00:00+01:00"
* author = Reference(DoctorHospital)
* title = "Commentaire relatif à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Hospital)

* section[pharmaceuticalAdvice][+].title = "Conseils sur les médicaments"
* section[pharmaceuticalAdvice][=].code = $lnc#61357-0 "Medication pharmaceutical advice.brief"
* section[pharmaceuticalAdvice][=].text.status = #generated
* section[pharmaceuticalAdvice][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">pas de réaction significative avec le traitement 1 x jour. -> 2x/j.</p></div>"
* section[pharmaceuticalAdvice][=].entry = Reference(3-2-ObsCetirizine)


Instance: 3-2-ObsCetirizine
InstanceOf: $ChEmedObs
Usage: #example
Title: "PADV Cetirizine Obs"
Description: "Example for an observation (CH EMED Observation PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1339a426-b61e-4c99-acac-450724fcf6d9"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CHANGE
* subject = Reference(MadameDupont)
* effectiveDateTime = "2019-02-28T11:00:00+01:00"
* note.text = "pas de réaction significative avec le traitement 1 x jour. -> 2x/j."

// MTP (3-1-MTP_Cetirizine)
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[+].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:207f34b9-5bcc-4c99-8203-9bcdb467a9b8"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:207f34b9-5bcc-4c99-8203-9bcdb467a9b8"

// MedStat with updated dosage (3-3-MTP_Cetirizine)
* extension[+].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed"
* extension[=].valueReference = Reference(3-2-MedStatCetirizine)



Instance: 3-2-MedStatCetirizine
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


// https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PADV_Rev1.7_TI_2016-10-21.pdf
// 6.3.4.3.3.13 Changed Medication Treatment Plan Item
