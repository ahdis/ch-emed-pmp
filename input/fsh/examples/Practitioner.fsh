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
* name.prefix[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix[=].extension.valueCode = #AC
* address.line = "Krankenstrasse 2"
* address.city = "Zürich"
* address.postalCode = "8005"
* address.country = "CH"
