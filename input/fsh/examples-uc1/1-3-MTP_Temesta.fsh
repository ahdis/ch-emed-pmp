// Temesta Expidet cpr orodisp 1 mg, 0-0-0-1, durant 4 jours, raison: pour dormir
// instruction au patient: laisser fondre 1 comprimé sous la langue ½ heure avant le coucher
// + insérer un commentaire: si aucune amélioration au bout de 3 jours, reprendre contact avec le médecin

Instance: 1-3-MTPTemesta
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Temesta Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7ade729c-a8c6-4b23-8daa-2c78a22ce153"
* type = #document
* timestamp = "2019-02-12T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/1-3-CompTemesta"
* entry[=].resource = 1-3-CompTemesta
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/1-3-MedStatTemesta"
* entry[=].resource = 1-3-MedStatTemesta

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: 1-3-CompTemesta
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Temesta Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7ade729c-a8c6-4b23-8daa-2c78a22ce153"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-12T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)

* section[treatmentPlan][+].title = "Plan de traitement médicamenteux"
* section[treatmentPlan][=].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan][=].text.status = #generated
* section[treatmentPlan][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Temesta Expidet cpr orodisp 1 mg, 0-0-0-1, durant 3 jours, raison: pour dormir</p></div>"
* section[treatmentPlan][=].entry = Reference(1-3-MedStatTemesta)


Instance: 1-3-MedStatTemesta
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Temesta MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedTemesta
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7ade729c-a8c6-4b23-8daa-2c78a22ce153"
* status = #completed
* medicationReference = Reference(MedTemesta)
* subject = Reference(MadameDupont)
* reasonCode.text = "pour dormir"
* dosage[structurednormal][+].patientInstruction = "laisser fondre 1 comprimé sous la langue ½ heure avant le coucher 
(si aucune amélioration au bout de 4 jours, reprendre contact avec le médecin)"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.start = "2019-02-12"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = "2019-02-15"
* dosage[structurednormal][=].timing.repeat.when[+] = #NIGHT
* dosage[structurednormal][=].route = $edqm#20053000 "Oral use"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


Instance: MedTemesta
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680471020733 "TEMESTA Expidet cpr orodisp 1 mg blister 20 pce"
* code.text = "TEMESTA Expidet cpr orodisp 1 mg blister 20 pce"
* form = $edqm#10221000 "Film-coated tablet"
* amount.numerator = 20 '{Piece}' "Piece(s)"
* amount.denominator = 1 '{Package}' "Package"
* ingredient.itemCodeableConcept = $sct#387106007 "Lorazepam (substance)"
* ingredient.itemCodeableConcept.text = "Lorazépam"
* ingredient.strength.numerator = 1 'mg' "milligram"
* ingredient.strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"