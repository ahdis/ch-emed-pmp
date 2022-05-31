// Temesta Expidet cpr orodisp 1 mg, arrêter la médication, commentaire: selon téléphone avec le médecin, arrêter le traitement car inefficace.

Instance: 2-1-PADVTemesta
InstanceOf: $ChEmedBundlePADV
Usage: #example
Title: "PADV Temesta Bundle"
Description: "Example for a bundle (CH EMED Document PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:abb775b3-c6d0-4edd-a988-b4a3335786fc"
* type = #document
* timestamp = "2019-02-15T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2-1-CompTemesta"
* entry[=].resource = 2-1-CompTemesta
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/2-1-ObsTemesta"
* entry[=].resource = 2-1-ObsTemesta

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Pharmacy"
* entry[=].resource = Pharmacy
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pharmacist"
* entry[=].resource = Pharmacist


Instance: 2-1-CompTemesta
InstanceOf: $ChEmedCompPADV
Usage: #example
Title: "PADV Temesta Comp"
Description: "Example for a composition (CH EMED Composition PADV)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8d3a4491-ffa8-4976-81c2-ae22528f06ac"
* status = #final
* type.coding[+] = $lnc#61356-2 "Medication pharmaceutical advice.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-15T11:00:00+01:00"
* author = Reference(Pharmacist)
* title = "Commentaire relatif à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Pharmacy)

* section[pharmaceuticalAdvice][+].title = "Conseils sur les médicaments"
* section[pharmaceuticalAdvice][=].code = $lnc#61357-0 "Medication pharmaceutical advice.brief"
* section[pharmaceuticalAdvice][=].text.status = #generated
* section[pharmaceuticalAdvice][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">selon téléphone avec le médecin, arrêter le traitement car inefficace</p></div>"
* section[pharmaceuticalAdvice][=].entry = Reference(2-1-ObsTemesta)


Instance: 2-1-ObsTemesta
InstanceOf: $ChEmedObs
Usage: #example
Title: "PADV Temesta Obs"
Description: "Example for an observation (CH EMED Observation PADV)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:520a6b08-6700-4605-9019-8da17d54463a"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CANCEL
* subject = Reference(MadameDupont)
* effectiveDateTime = "2019-02-15T11:00:00+01:00"
* note.text = "selon téléphone avec le médecin, arrêter le traitement car inefficace"

* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* extension.extension[+].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:8dbe6856-db37-412c-bbcc-6ce14e8d6918"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:8dbe6856-db37-412c-bbcc-6ce14e8d6918"
