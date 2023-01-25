// Voltarène dolo forte émulgel, 1-1-1-1, durant 7 jours, raison: douleurs

Instance: 1-2-MTPVoltaren
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Voltaren Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b36a2374-1124-4a3f-bc60-7b93fc00c2df"
* type = #document
* timestamp = "2019-02-12T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/1-2-CompVoltaren"
* entry[=].resource = 1-2-CompVoltaren
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/1-2-MedStatVoltaren"
* entry[=].resource = 1-2-MedStatVoltaren

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/DoctorRochat"
* entry[=].resource = DoctorRochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GeneralPractitioner"
* entry[=].resource = GeneralPractitioner
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Rochat"
* entry[=].resource = Rochat
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient



Instance: 1-2-CompVoltaren
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Voltaren Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b36a2374-1124-4a3f-bc60-7b93fc00c2df"
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

* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">Voltarène dolo forte émulgel, 1-1-1-1, durant 7 jours, raison: douleurs</p></div>"
* section[treatmentPlan].entry = Reference(1-2-MedStatVoltaren)


Instance: 1-2-MedStatVoltaren
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Voltaren MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedVoltaren
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1d50c949-c7f3-47d4-a80f-280affbb2154"
* status = #completed
* medicationReference = Reference(MedVoltaren)
* subject = Reference(MadameDupont)
* reasonCode.text = "douleurs"
//* dosage[baseEntry][+].timing.repeat.boundsDuration = 7 'd' "day"
* dosage[baseEntry][+].timing.repeat.boundsPeriod.start = "2019-02-12"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = "2019-02-18"
* dosage[baseEntry][=].timing.repeat.when[+] = #MORN
* dosage[baseEntry][=].timing.repeat.when[+] = #NOON
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].timing.repeat.when[+] = #NIGHT
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Dose}' "Dose"


Instance: MedVoltaren
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680618590037 "VOLTAREN DOLO forte émulgel tube 120 g"
* code.text = "VOLTAREN DOLO forte émulgel tube 120 g"
* form = $edqm#10503000	"Gel"
* amount.numerator = 120 'g' "gram"
* amount.denominator = 1 $sct#733024003 "Tube"
* ingredient.itemCodeableConcept = $sct#7034005 "Diclofenac (substance)"
* ingredient.itemCodeableConcept.text = "diclofénac"
* ingredient.strength.numerator = 2.32 'g' "gram"
* ingredient.strength.denominator = 100 'g' "gram"