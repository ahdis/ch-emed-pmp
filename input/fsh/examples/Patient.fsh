Instance: MadameDupont
InstanceOf: $ChCorePatientEpr
Usage: #example
Title: "Madame Dupont (Patient)"
Description: "Example for a patient (CH Core Patient EPR)"
* name
  * family = "Dupont"
  * given = "Madame"
* gender = #female
* birthDate = "1943-05-15"
* identifier
  * type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * type.coding.code = #MR
  * system = "urn:oid:2.999.756.42.2"
  * value = "12345678"


Instance: MadameDupontInformationRecipient
InstanceOf: $ChCorePatient
Usage: #example
Title: "Madame Dupont (Information Recipent)"
Description: "Example for a patient (CH Core Patient)"
* name
  * family = "Dupont"
  * given = "Madame"
* address
  * line = "Wiesenstr. 12"
  * city = "Zürich"
  * postalCode = "8003"
  * country = "CH"
