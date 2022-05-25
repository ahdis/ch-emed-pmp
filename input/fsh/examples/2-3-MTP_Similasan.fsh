// SIMILASAN Troubles du sommeil gouttes, dosage spécial: prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher. Raison: insomnies

Instance: 2-3-MTPSimilasan
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Similasan Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9012f5d8-1091-4a76-bfdb-130bb0892799"
* type = #document
* timestamp = "2019-02-15T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/2-3-CompSimilasan"
* entry[=].resource = 2-3-CompSimilasan
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2-3-MedStatSimilasan"
* entry[=].resource = 2-3-MedStatSimilasan

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Pharmacy"
* entry[=].resource = Pharmacy


Instance: 2-3-CompSimilasan
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Similasan Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9012f5d8-1091-4a76-bfdb-130bb0892799"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-15T11:00:00+01:00"
* author = Reference(Pharmacy)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Pharmacy)

* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">SIMILASAN Troubles du sommeil gouttes, dosage spécial: prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher. Raison: insomnies</p></div>"
* section[treatmentPlan].entry = Reference(2-3-MedStatSimilasan)


Instance: 2-3-MedStatSimilasan
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Similasan MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedSimilasan
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b45f6f1a-8c13-41a3-bbfe-4a2ff85bc3dc"
* status = #completed
* medicationReference = Reference(MedSimilasan)
* subject = Reference(MadameDupont)
* reasonCode.text = "insomnies"
* dosage[nonstructured][+].text = "Prendre 10 gouttes le soir avant le coucher, renouveler après 15 minutes si nécessaire, max 3 fois les 3 premiers soirs. Ensuite ne prendre plus que 10 gouttes avant le coucher."


Instance: MedSimilasan
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680497900163 "SIMILASAN Troubles du sommeil gouttes 50 ml"
* code.text = "SIMILASAN Troubles du sommeil gouttes 50 ml"
* form = $edqm#50037750	"Oral drops, liquid"
* amount.numerator = 50 'mL' "milliliter"
* amount.denominator = 1 '{Package}' "Package"
