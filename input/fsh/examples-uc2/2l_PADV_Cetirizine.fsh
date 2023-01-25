Instance: 2l-PADVCetirizine
InstanceOf: $ChEmedBundlePADV
Usage: #example
Title: "PADV Cetirizine Bundle"
Description: "Example for a bundle (CH EMED Document PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d62f3732-a2a6-4369-9591-bbfd10dd3cbd"
* type = #document
* timestamp = "2022-06-25T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2l-CompCetirizine"
* entry[=].resource = 2l-CompCetirizine
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/2l-ObsCetirizine"
* entry[=].resource = 2l-ObsCetirizine
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2l-MedStatCetirizine"
* entry[=].resource = 2l-MedStatCetirizine

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



Instance: 2l-CompCetirizine
InstanceOf: $ChEmedCompPADV
Usage: #example
Title: "PADV Cetirizine Comp"
Description: "Example for a composition (CH EMED Composition PADV)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d62f3732-a2a6-4369-9591-bbfd10dd3cbd"
* status = #final
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-25T11:00:00+01:00"
* author = Reference(Pharmacist)
* title = "Kommentar zur Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Pharmacy)

* section[pharmaceuticalAdvice][+].title = "Hinweise zur Medikation"
* section[pharmaceuticalAdvice][=].code = $lnc#61357-0 "Medication pharmaceutical advice.brief"
* section[pharmaceuticalAdvice][=].text.status = #generated
* section[pharmaceuticalAdvice][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Keine signifikante Reaktion auf die Behandlung 1 x tgl. -> 2 x/Tag.</p></div>"
* section[pharmaceuticalAdvice][=].entry = Reference(2l-ObsCetirizine)


Instance: 2l-ObsCetirizine
InstanceOf: $ChEmedObs
Usage: #example
Title: "PADV Cetirizine Obs"
Description: "Example for an observation (CH EMED Observation PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d62f3732-a2a6-4369-9591-bbfd10dd3cbd"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CHANGE
* subject = Reference(MadameDupont)
* effectiveDateTime = "2022-06-25T11:00:00+01:00"
* note.text = "Keine signifikante Reaktion auf die Behandlung 1 x tgl. -> 2 x/Tag."

// MTP 
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[+].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:9ab76c09-b7a5-445f-9d27-d363ddb5b953"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:9ab76c09-b7a5-445f-9d27-d363ddb5b953"

// MedStat with updated dosage 
* extension[+].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed"
* extension[=].valueReference = Reference(2l-MedStatCetirizine)



Instance: 2l-MedStatCetirizine
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Cetirizine MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2l-MedCetirizine
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7ddac615-a229-4a4f-a992-63c91cea0550"
* status = #completed
* medicationReference = Reference(2l-MedCetirizine)
* subject = Reference(MadameDupont)
* reasonCode.text = "Allergie"
* dosage[baseEntry][+].timing.repeat.boundsPeriod.start = "2022-06-25"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = "2022-06-26"
* dosage[baseEntry][=].timing.repeat.when[+] = #MORN
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].route = $edqm#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


// https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PADV_Rev1.7_TI_2016-10-21.pdf
// 6.3.4.3.3.13 Changed Medication Treatment Plan Item


Instance: 2l-MedCetirizine
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680651190041 "CETIRIZIN Mepha Lactab 10 mg"
* code.text = "CETIRIZIN Mepha Lactab 10 mg"
* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 10 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#372523007 "Cetirizine (substance)"
* ingredient.itemCodeableConcept.text = "Cetirizine"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"
