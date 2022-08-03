// Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Profile: RCPatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Description: "Patient Profile that requires US Core birth sex"
// * name 1..* MS
* us-core-birthsex 1..1

// Instance: PatientExample
// InstanceOf: MyPatient
// Description: "A womann just old enough to require a mammogram."
// * name
//   * given[0] = "James"
//   * family = "Pond"