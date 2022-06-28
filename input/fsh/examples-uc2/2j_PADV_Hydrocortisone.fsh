Instance: 2j-PADVHydrocortisone
InstanceOf: $ChEmedBundlePADV
Usage: #example
Title: "PADV Hydrocortisone Bundle"
Description: "Example for a bundle (CH EMED Document PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dd3dff37-2636-4333-aa83-3c309d711691"
* type = #document
* timestamp = "2022-06-24T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2j-CompHydrocortisone"
* entry[=].resource = 2j-CompHydrocortisone
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/2j-ObsHydrocortisone"
* entry[=].resource = 2j-ObsHydrocortisone

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hospital"
* entry[=].resource = Hospital
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorHospital"
* entry[=].resource = DoctorHospital


Instance: 2j-CompHydrocortisone
InstanceOf: $ChEmedCompPADV
Usage: #example
Title: "PADV Hydrocortisone Comp"
Description: "Example for a composition (CH EMED Composition PADV)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dd3dff37-2636-4333-aa83-3c309d711691"
* status = #final
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-06-24T11:00:00+01:00"
* author = Reference(DoctorHospital)
* title = "Kommentar zur Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Hospital)

* section[pharmaceuticalAdvice][+].title = "Hinweise zur Medikation"
* section[pharmaceuticalAdvice][=].code = $lnc#61357-0 "Medication pharmaceutical advice.brief"
* section[pharmaceuticalAdvice][=].text.status = #generated
* section[pharmaceuticalAdvice][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Die Person verträgt die Behandlung nicht. Behandlung gestoppt</p></div>"
* section[pharmaceuticalAdvice][=].entry = Reference(2j-ObsHydrocortisone)


Instance: 2j-ObsHydrocortisone
InstanceOf: $ChEmedObs
Usage: #example
Title: "PADV Hydrocortisone Obs"
Description: "Example for an observation (CH EMED Observation PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dd3dff37-2636-4333-aa83-3c309d711691"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CANCEL
* subject = Reference(MadameDupont)
* effectiveDateTime = "2022-06-24T11:00:00+01:00"
* note.text = "Die Person verträgt die Behandlung nicht. Behandlung gestoppt"

* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[+].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:20ca0910-f592-410f-a73a-14f88a8a2448"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:20ca0910-f592-410f-a73a-14f88a8a2448"
