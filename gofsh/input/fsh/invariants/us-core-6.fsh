Invariant: us-core-6
Description: "Either Patient.name.given and/or Patient.name.family SHALL be present or a Data Absent Reason Extension SHALL be present."
Severity: #error
Expression: "(name.family.exists() or name.given.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
XPath: "(/f:name/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason' and not(/f:name/f:family or /f:name/f:given)) or (not(/f:name/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason') and (/f:name/f:family or /f:name/f:given))"