// Temesta Expidet cpr orodisp 1 mg, 0-0-0-1, durant 3 jours, raison: pour dormir
// instruction au patient: laisser fondre 1 comprimé sous la langue ½ heure avant le coucher
// + insérer un commentaire: si aucune amélioration au bout de 3 jours, reprendre contact avec le médecin

Instance: MTPTemesta
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Temesta Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8dbe6856-db37-412c-bbcc-6ce14e8d6918"
* type = #document
* timestamp = "2019-02-12T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/CompTemesta"
* entry[=].resource = CompTemesta
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/MedStatTemesta"
* entry[=].resource = MedStatTemesta

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner


Instance: CompTemesta
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Temesta Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c704f3db-772f-48d5-b467-ff5ec64534df"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-02-19T11:00:00+01:00"
* author = Reference(DoctorRochat)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(GeneralPractitioner)
* section[+].title = "Plan de traitement médicamenteux"
* section[=].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Temesta Expidet cpr orodisp 1 mg, 0-0-0-1, durant 3 jours, raison: pour dormir</div>"
* section[=].entry = Reference(MedStatTemesta)
* section[+].title = "Commentaire"
* section[=].code = $lnc#48767-8 "Annotation comment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">si aucune amélioration au bout de 3 jours, reprendre contact avec le médecin</div>"


Instance: MedStatTemesta
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Temesta MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedTemesta
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c1025a1f-e605-43ff-9a50-5d0e4cfcb918"
* status = #completed
* medicationReference = Reference(MedTemesta)
* subject = Reference(MadameDupont)
* reasonCode.text = "pour dormir"
* note.text = "laisser fondre 1 comprimé sous la langue ½ heure avant le coucher"
* dosage[+].timing.repeat.boundsPeriod.start = "2019-02-12"
* dosage[=].timing.repeat.boundsPeriod.end = "2019-02-14"
* dosage[=].timing.repeat.when[+] = #NIGHT
* dosage[=].route = $edqm#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"


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