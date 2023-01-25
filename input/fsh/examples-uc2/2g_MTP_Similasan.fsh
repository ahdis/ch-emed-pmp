Instance: 2g-MTPSimilasan
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Similasan Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:06724d50-e6b6-44fa-8df3-62e14b406b3c"
* type = #document
* timestamp = "2022-06-15T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2g-CompSimilasan"
* entry[=].resource = 2g-CompSimilasan
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2g-MedStatSimilasan"
* entry[=].resource = 2g-MedStatSimilasan

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



Instance: 2g-CompSimilasan
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Similasan Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:06724d50-e6b6-44fa-8df3-62e14b406b3c"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-15T11:00:00+01:00"
* author = Reference(Pharmacist)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Pharmacy)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">SIMILASAN Schlafstörungen Tropfen, 10 Tropfen am Abend vor dem Schlafengehen, erneuern Sie nach 15 Minuten, wenn nötig, max. 3 Mal an den ersten 3 Abenden. Danach nur noch 10 Tropfen vor dem Schlafengehen einnehmen.</p></div>"
* section[treatmentPlan].entry = Reference(2g-MedStatSimilasan)


Instance: 2g-MedStatSimilasan
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Similasan MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = 2g-MedSimilasan
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:06724d50-e6b6-44fa-8df3-62e14b406b3c"
* status = #completed
* medicationReference = Reference(2g-MedSimilasan)
* subject = Reference(MadameDupont)
* reasonCode.text = "Schlaflosigkeit"
* dosage[baseEntry][+].text = "10 Tropfen am Abend vor dem Schlafengehen, erneuern Sie nach 15 Minuten, wenn nötig, max. 3 Mal an den ersten 3 Abenden. Danach nur noch 10 Tropfen vor dem Schlafengehen einnehmen."
// * dosage[baseEntry][=].timing.repeat.boundsPeriod.start = "2022-06-15"


Instance: 2g-MedSimilasan
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680497900163 "SIMILASAN Schlafstörungen Tropfen"
* code.text = "SIMILASAN Schlafstörungen Tropfen"
* form = $edqm#50037750	"Oral drops, liquid"
* amount.numerator = 50 'mL' "milliliter"
* amount.denominator = 1 '{Package}' "Package"
