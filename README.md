# Reminder-Collection

Goal: to advance standardized collections of clinical reminders in primary care settings. 

This repository will includes a sample collection of reminders assembled by a primary care actor. The example use case is  management of primary care patients during an ambulatory office encounter. In principle a collection like this could serve as part of a health information technology or a healthcare organization. This concept incorporates reminders created, promoted or approved by speciality organizations which may overlap with the primary care scope. Primary care settings may include explicit ones such as Family Medicine, Pediatrics, Internal Medicine and Geriatrics practices in the US (general practice in the UK); or more general circumstanes where no primary care actor is responsible for overall care, such as when a patient sees a specialist or variety of specialists. In these cases  reminders may be loosely organized or expressly assumed by a medical specialist. Examples of this scenarios include: a Nephrologist as the main doctor caring for a dialysis patient, or an Endocrinologist managing a patient with complicated diabetes, where it is not unusual for the specialist assumes some primary care duties such as routine vaccination. It is also possible that patient-facing versions of these collections could be created. 

The example use case is family medicine doctor who assumes responsibility for overall care and routine aspects of disease management. 

This collection is draft and experimental. It has not been applied in patient care. It is not to be used live patient care. 

These are modeled as discretionary reminders to be used as medical actors see fit. In no way are these collections intended as "Standards of Care" or "Clinical Quality Guidelines". 

There are many component to this repository: 

- CQL "Clinical Quality Language"
- FHIR "Fast Health Information Resources"
- FSH "FHIR Shorthand"
- CDS Hooks "Clinical Decision Support Hooks"
- FHIR "Fast Health Information Resources"*

Before I retired from active patient care I really felt the need for a reminder system. I had about sixty item that I wanted to be reminded about, which I intended to apply at each office visit. Initially I used a spreadsheet, which quickly became tedious. I eventually developed a rudimentry web application in Ruby Sinatra, which was what I was using when I retired. This web app had no integration with my online EMR, and I had no reasonable hope of getting it integrated. This meant I had to spent an hour or two every day reviewing patient's charts to put it to work. 

Since that time I have learned about the FHIR and its ecosystem. It appears that all of the tools to integrate with EMRs are now well-developed and available (assuming EMR companies expose suitable FHIR APIs). So even though I don't see patients any more, this project is still interesting to me. 

To date I have written (draft, experimental) CQL and CDS Hooks for six reminders. I've been able to publish synthetic patient data to LogicaHealth and use the LogicaHealth apps feature to process these patients in the CDS Hooks Web site, using the CDS service that I set up. That's not a complete technology stack for a project like this, however. One important piece is constraing the patient data that these collections are run against. With the introduction of FSH creating the necessary FHIR profiles should be _relatively_ easy. 

These reminder are grouped into four catagores of routine care:

- prevention
- screening
- disease management
- education

Examples: 

* annual influenza vaccines for all adults
* screening for breast cancer
* interval blood testing to check for diabetes control
* intruction in healthy diet and exercise

This use case has not been addressed as far as I can see in the FHIR or FSH repositories. If it has, please let me know. 



