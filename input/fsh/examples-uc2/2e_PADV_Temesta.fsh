Instance: 2e-PADVTemesta
InstanceOf: $ChEmedBundlePADV
Usage: #example
Title: "PADV Temesta Bundle"
Description: "Example for a bundle (CH EMED Document PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid62f64659-5f34-4c8f-8b77-3dffcfa332d4:"
* type = #document
* timestamp = "2022-05-17T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2e-CompTemesta"
* entry[=].resource = 2e-CompTemesta
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/2e-ObsTemesta"
* entry[=].resource = 2e-ObsTemesta

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Pharmacy"
* entry[=].resource = Pharmacy
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pharmacist"
* entry[=].resource = Pharmacist


Instance: 2e-CompTemesta
InstanceOf: $ChEmedCompPADV
Usage: #example
Title: "PADV Temesta Comp"
Description: "Example for a composition (CH EMED Composition PADV)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:62f64659-5f34-4c8f-8b77-3dffcfa332d4"
* status = #final
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-05-17T11:00:00+01:00"
* author = Reference(Pharmacist)
* title = "Kommentar zur Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Pharmacy)

* section[pharmaceuticalAdvice][+].title = "Hinweise zur Medikation"
* section[pharmaceuticalAdvice][=].code = $lnc#61357-0 "Medication pharmaceutical advice.brief"
* section[pharmaceuticalAdvice][=].text.status = #generated
* section[pharmaceuticalAdvice][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Nach Telefonat mit dem Arzt die Behandlung weiterführen, da es doch etwas genutzt hat</p></div>"
* section[pharmaceuticalAdvice][=].entry = Reference(2e-ObsTemesta)


Instance: 2e-ObsTemesta
InstanceOf: $ChEmedObs
Usage: #example
Title: "PADV Temesta Obs"
Description: "Example for an observation (CH EMED Observation PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:62f64659-5f34-4c8f-8b77-3dffcfa332d4"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#COMMENT
* subject = Reference(MadameDupont)
* effectiveDateTime = "2022-05-17T11:00:00+01:00"
* note.text = "Nach Telefonat mit dem Arzt die Behandlung weiterführen, da es doch etwas genutzt hat"

* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[+].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:9e2843b4-5a21-4ede-b1dc-8434b4c6d254"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:9e2843b4-5a21-4ede-b1dc-8434b4c6d254"
