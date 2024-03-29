// Excipial U Lipolotion Fl, raison: peau sensible, instruction au patient: appliquer aussi souvent que nécessaire, date de fin inconnue

Instance: 3-4-MTPExcipial
InstanceOf: $ChEmedBundleMTP
Usage: #example
Title: "MTP Excipial Bundle"
Description: "Example for a bundle (CH EMED Document MTP)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0e0fb8f9-afde-41d4-ab22-3f11fbc54032"
* type = #document
* timestamp = "2019-03-01T11:00:00+01:00"

* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/3-4-CompExcipial"
* entry[=].resource = 3-4-CompExcipial
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/3-4-MedStatExcipial"
* entry[=].resource = 3-4-MedStatExcipial

* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupont"
* entry[=].resource = MadameDupont
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MadameDupontInformationRecipient"
* entry[=].resource = MadameDupontInformationRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hospital"
* entry[=].resource = Hospital
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/DoctorHospital"
* entry[=].resource = DoctorHospital
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/Hopital"
* entry[=].resource = Hopital


Instance: 3-4-CompExcipial
InstanceOf: $ChEmedCompMTP
Usage: #example
Title: "MTP Excipial Comp"
Description: "Example for a composition (CH EMED Composition MTP)"
* language = #fr-CH
* extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension.valueReference = Reference(MadameDupontInformationRecipient)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0e0fb8f9-afde-41d4-ab22-3f11fbc54032"
* status = #final
* type.coding[0] = $lnc#77603-9 "Medication treatment plan.extended"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)"
* subject = Reference(MadameDupont)
* date = "2019-03-01T11:00:00+01:00"
* author = Reference(DoctorHospital)
* title = "Décision thérapeutique relative à la médication"
* confidentiality = #N
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* custodian = Reference(Hospital)

* section[treatmentPlan].title = "Plan de traitement médicamenteux"
* section[treatmentPlan].code = $lnc#77604-7 "Medication treatment plan.brief"
* section[treatmentPlan].text.status = #generated
* section[treatmentPlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p id=\"refpdf\">​Excipial U Lipolotion Fl, raison: peau sensible, instruction au patient: appliquer aussi souvent que nécessaire, date de fin inconnue</p></div>"
* section[treatmentPlan].entry = Reference(3-4-MedStatExcipial)


Instance: 3-4-MedStatExcipial
InstanceOf: $ChEmedMedStatMTP
Usage: #example
Title: "MTP Excipial MedStat"
Description: "Example for a medication statement (CH EMED MedicationStatement MTP)"
* contained = MedExcipial
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:281b06ee-bccd-421d-8711-1213f760a285"
* status = #completed
* medicationReference = Reference(MedExcipial)
* subject = Reference(MadameDupont)
* reasonCode.text = "peau sensible"

* dosage[baseEntry][+].text = "posologie selon instruction patient"
* dosage[baseEntry][=].patientInstruction = "appliquer aussi souvent que nécessaire"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.start = "2019-03-01"
// 	Date de fin inconnue




Instance: MedExcipial
InstanceOf: $ChEmedMed
Usage: #inline
* code = $gtin#7680496200127 "EXCIPIAL U lipolotion flacon 200 ml"
* code.text = "EXCIPIAL U lipolotion flacon 200 ml"
* amount.numerator = 200 'mL' "milliliter"
* amount.denominator = 1 $sct#732986007 "Bottle"
// * ingredient.itemCodeableConcept = $sct#387092000 "Urea (substance)" not in the CH EMED value set
* ingredient.itemCodeableConcept.text = "Urée"
* ingredient.strength.numerator = 40 'mg' "milligram"
* ingredient.strength.denominator = 1 'mL' "milliliter"