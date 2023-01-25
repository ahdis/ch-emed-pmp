Instance: DoctorRochat
InstanceOf: $ChEmedPractitionerRole
Usage: #example
Title: "Docteur Rochat @ General Practitioner"
Description: "Example for a practitioner role (CH EMED PractitionerRole)"
* practitioner = Reference(Rochat)
* organization = Reference(GeneralPractitioner)


Instance: Pharmacist
InstanceOf: $ChEmedPractitionerRole
Usage: #example
Title: "Pharmacien @ Pharmacie"
Description: "Example for a practitioner role (CH EMED PractitionerRole)"
* practitioner = Reference(Pharm)
* organization = Reference(Pharmacy)


Instance: DoctorHospital
InstanceOf: $ChEmedPractitionerRole
Usage: #example
Title: "Docteur Hôpital @ Hôpital"
Description: "Example for a practitioner role (CH EMED PractitionerRole)"
* practitioner = Reference(Hopital)
* organization = Reference(Hospital)
