Profile: USCorePatientProfile
Parent: Patient
Id: us-core-patient
Title: "US Core Patient Profile"
Description: "The US Core Patient Profile meets the U.S. Core Data for Interoperability (USCDI) v2 'Patient Demographics' requirements. This profile sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
* ^version = "5.0.1"
* ^experimental = false
* ^date = "2022-04-20T15:02:49-07:00"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* obeys us-core-6
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* extension contains
    $us-core-race named race 0..1 and
    $us-core-ethnicity named ethnicity 0..1 and
    $us-core-birthsex named birthsex 0..1 and
    $us-core-genderIdentity named genderIdentity 0..1
* extension[race] ^mustSupport = false
* extension[ethnicity] ^mustSupport = false
* extension[birthsex] ^mustSupport = false
* extension[genderIdentity] ^mustSupport = false
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier.value ^short = "The value that is unique within the system."
* name 1.. MS
* name.family MS
* name.family ^condition = "us-core-6"
* name.given MS
* name.given ^condition = "us-core-6"
* name.suffix ^mustSupport = false
* name.period ^mustSupport = false
* telecom ^mustSupport = false
* telecom.system 1.. MS
* telecom.system from ContactPointSystem (required)
* telecom.system ^binding.description = "Telecommunications form for contact point."
* telecom.value 1.. MS
* telecom.use MS
* telecom.use from ContactPointUse (required)
* gender 1.. MS
* gender only code
* gender from AdministrativeGender (required)
* birthDate MS
* address MS
* address.line MS
* address.city MS
* address.state MS
* address.state from $us-core-usps-state (extensible)
* address.state ^binding.description = "Two Letter USPS alphabetic codes."
* address.postalCode MS
* address.postalCode ^short = "US Zip Codes"
* address.postalCode ^alias = "Zip Code"
* address.period MS
* communication ^mustSupport = false
* communication.language MS
* communication.language from $simple-language (extensible)