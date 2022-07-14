Instance: 3b-PADVSintrom
InstanceOf: $ChEmedBundlePADV
Usage: #example
Title: "PADV Sintrom Bundle"
Description: "Example for a bundle (CH EMED Document PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:60a00193-baf0-4c47-8e79-1ebff3341f02"
* type = #document
* timestamp = "2022-07-01T12:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3b-CompSintrom"
* entry[=].resource = 3b-CompSintrom
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/3b-ObsSintrom"
* entry[=].resource = 3b-ObsSintrom

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 3b-CompSintrom
InstanceOf: $ChEmedCompPADV
Usage: #example
Title: "PADV Sintrom Comp"
Description: "Example for a composition (CH EMED Composition PADV)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:60a00193-baf0-4c47-8e79-1ebff3341f02"
* status = #final
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-07-01T12:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Kommentar zur Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[pharmaceuticalAdvice][+].title = "Hinweise zur Medikation"
* section[pharmaceuticalAdvice][=].code = $lnc#61357-0 "Medication pharmaceutical advice.brief"
* section[pharmaceuticalAdvice][=].text.status = #generated
* section[pharmaceuticalAdvice][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Falsche Dauer</p></div>"
* section[pharmaceuticalAdvice][=].entry = Reference(3b-ObsSintrom)


Instance: 3b-ObsSintrom
InstanceOf: $ChEmedObs
Usage: #example
Title: "PADV Sintrom Obs"
Description: "Example for an observation (CH EMED Observation PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:60a00193-baf0-4c47-8e79-1ebff3341f02"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CANCEL
* subject = Reference(MadameDupont)
* effectiveDateTime = "2022-07-01"  // A PADV item shall not be effective in the future [PMP].
* note.text = "Falsche Dauer"

* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[+].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:fcd5ad6c-5cb7-4ca9-881a-726e99d2c3da"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:fcd5ad6c-5cb7-4ca9-881a-726e99d2c3da"
