Instance: DoctorRochat
InstanceOf: $ChEmedPractitioner
Usage: #example
Title: "Docteur Rochat"
Description: "Example for a practitioner (CH EMED Practitioner)"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000201041"
* name.family = "Rochat"
* name.given = "Dr"
* name.prefix[+] = "Dr. med."
// * name.prefix[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
// * name.prefix[=].extension.valueCode = #AC
* address.line = "Krankenstrasse 2"
* address.city = "Zürich"
* address.postalCode = "8005"
* address.country = "CH"


Instance: Pharmacist
InstanceOf: $ChEmedPractitioner
Usage: #example
Title: "Pharmacien"
Description: "Example for a practitioner (CH EMED Practitioner)"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000876546"
* name.family = "Pharm"
* name.given = "Pharmacien"
* address.line = "Apothekerstrasse 22"
* address.city = "Zürich"
* address.postalCode = "8005"
* address.country = "CH"


Instance: DoctorHospital
InstanceOf: $ChEmedPractitioner
Usage: #example
Title: "Docteur Hôpital"
Description: "Example for a practitioner (CH EMED Practitioner)"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234322"
* name.family = "Hôpital"
* name.given = "Docteur"
* address.line = "Spitalgasse 4"
* address.city = "Zürich"
* address.postalCode = "8005"
* address.country = "CH"
