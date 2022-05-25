// Dafalgan cpr pell 1 g, créer un commentaire: la patiente n’a pas pris le médicament car pas nécessaire, le Voltarène émulgel a fait son effet

Instance: 2-2-PADVDafalgan
InstanceOf: $ChEmedBundlePADV
Usage: #example
Title: "PADV Dafalgan Bundle"
Description: "Example for a bundle (CH EMED Document PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a6a96b32-2a77-4bd8-a32b-adc46b7a8eb1"
* type = #document
* timestamp = "2019-02-15T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2-2-CompDafalgan"
* entry[=].resource = 2-2-CompDafalgan
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/2-2-ObsDafalgan"
* entry[=].resource = 2-2-ObsDafalgan

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Pharmacy"
* entry[=].resource = Pharmacy


Instance: 2-2-CompDafalgan
InstanceOf: $ChEmedCompPADV
Usage: #example
Title: "PADV Dafalgan Comp"
Description: "Example for a composition (CH EMED Composition PADV)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a6a96b32-2a77-4bd8-a32b-adc46b7a8eb1"
* status = #final
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-15T11:00:00+01:00"
* author = Reference(Pharmacy)
* title = "Commentaire relatif à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Pharmacy)

* section[pharmaceuticalAdvice][+].title = "Conseils sur les médicaments"
* section[pharmaceuticalAdvice][=].code = $lnc#61357-0 "Medication pharmaceutical advice.brief"
* section[pharmaceuticalAdvice][=].text.status = #generated
* section[pharmaceuticalAdvice][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">la patiente n’a pas pris le médicament car pas nécessaire, le Voltarène émulgel a fait son effet</p></div>"
* section[pharmaceuticalAdvice][=].entry = Reference(2-2-ObsDafalgan)


Instance: 2-2-ObsDafalgan
InstanceOf: $ChEmedObs
Usage: #example
Title: "PADV Dafalgan Obs"
Description: "Example for an observation (CH EMED Observation PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a60ec70c-3089-47b2-84bc-41f0d26f6ff1"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#COMMENT
* subject = Reference(MadameDupont)
* effectiveDateTime = "2019-02-15T11:00:00+01:00"
* note.text = "la patiente n’a pas pris le médicament car pas nécessaire, le Voltarène émulgel a fait son effet"

* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[+].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:45c6b4d4-19e7-4ae9-9809-37ec009deaec"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:45c6b4d4-19e7-4ae9-9809-37ec009deaec"
