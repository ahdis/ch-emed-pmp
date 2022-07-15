Instance: 3a-MTPSintrom
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Sintrom Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fcd5ad6c-5cb7-4ca9-881a-726e99d2c3da"
* type = #document
* timestamp = "2022-07-01T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3a-CompSintrom"
* entry[=].resource = 3a-CompSintrom
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3a-MedStatSintrom"
* entry[=].resource = 3a-MedStatSintrom

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 3a-CompSintrom
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Sintrom Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #de-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fcd5ad6c-5cb7-4ca9-881a-726e99d2c3da"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2022-07-01T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Therapieentscheid Medikation"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan].title = "Medikamentöser Behandlungsplan"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">SINTROM 4 Tabl 4 mg</p></div>"
* section[treatmentPlan].entry = Reference(3a-MedStatSintrom)


Instance: 3a-MedStatSintrom
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Sintrom MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedSintrom
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fcd5ad6c-5cb7-4ca9-881a-726e99d2c3da"
* status = #completed
* medicationReference = Reference(MedSintrom)
* subject = Reference(MadameDupont)
//* reasonCode.text = ""
//* note.text = "" 
* dosage[nonstructured][+].text = "1. Tag 1 x tgl. 6 mg, 2. Tag 1 x tgl. 4 mg"
//* dosage[nonstructured][=].timing.repeat.boundsPeriod.start = "2022-07-10"
//* dosage[nonstructured][=].timing.repeat.boundsPeriod.end = "2022-07-16"


Instance: MedSintrom
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680216930303 "SINTROM 4 Tabl 4 mg"
* code.text = "SINTROM 4 Tabl 4 mg"
* form = $edqm#10219000	"Tablet"
* amount.numerator = 20 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387457003 "Acenocoumarol (substance)"
* ingredient.itemCodeableConcept.text = "Acenocoumarol"
* ingredient.strength.numerator = 4 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"