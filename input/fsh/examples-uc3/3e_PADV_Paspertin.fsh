Instance: 3e-PADVPaspertin
InstanceOf: $ChEmedBundlePADV
Usage: #example
Title: "PADV Paspertin Bundle"
Description: "Example for a bundle (CH EMED Document PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:06c38351-0547-4ff7-a42e-763a96591bb7"
* type = #document
* timestamp = "2022-07-01T15:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3e-CompPaspertin"
* entry[=].resource = 3e-CompPaspertin
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/3e-ObsPaspertin"
* entry[=].resource = 3e-ObsPaspertin

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 3e-CompPaspertin
InstanceOf: $ChEmedCompPADV
Usage: #example
Title: "PADV Paspertin Comp"
Description: "Example for a composition (CH EMED Composition PADV)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:06c38351-0547-4ff7-a42e-763a96591bb7"
* status = #final
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-07-01T15:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Kommentar zur Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[pharmaceuticalAdvice][+].title = "Hinweise zur Medikation"
* section[pharmaceuticalAdvice][=].code = $lnc#61357-0 "Medication pharmaceutical advice.brief"
* section[pharmaceuticalAdvice][=].text.status = #generated
* section[pharmaceuticalAdvice][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Falsche Posologie</p></div>"
* section[pharmaceuticalAdvice][=].entry = Reference(3e-ObsPaspertin)


Instance: 3e-ObsPaspertin
InstanceOf: $ChEmedObs
Usage: #example
Title: "PADV Paspertin Obs"
Description: "Example for an observation (CH EMED Observation PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:06c38351-0547-4ff7-a42e-763a96591bb7"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CANCEL
* subject = Reference(MadameDupont)
* effectiveDateTime = "2022-07-01" // A PADV item shall not be effective in the future [PMP].
* note.text = "Falsche Posologie"

* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[+].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:fe9f1e16-d2ca-4329-af86-f661d2626842"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:fe9f1e16-d2ca-4329-af86-f661d2626842"
