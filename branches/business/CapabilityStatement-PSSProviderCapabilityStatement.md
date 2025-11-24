# PSS Provider System Capability Statement - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Provider System Capability Statement**

## CapabilityStatement: PSS Provider System Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CapabilityStatement/PSSProviderCapabilityStatement | *Version*:1.0.0 |
| Active as of 2025-05-22 | *Computable Name*: |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.13.1 | |

 
CapabilityStatement for PSS provider systems. 

 [Raw OpenAPI-Swagger Definition file](PSSProviderCapabilityStatement.openapi.json) | [Download](PSSProviderCapabilityStatement.openapi.json) 

## PSS Provider System Capability Statement

* Implementation Guide Version: 1.0.0 
* FHIR Version: 4.0.1 
* Supported Formats: `xml`
* Published on: 2025-05-22 
* Published by: eHealth Platform Belgium 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [PlanDefinition](#PlanDefinition1-1) |   |  |  |  |  |  |  |  | `$$apply` |
| [Consent](#Consent1-2) |   |  |  |  | y |  |  |  |  |
| [Bundle](#Bundle1-3) |   | y |  |  |  |  |  |  |  |

-------

#### Resource Conformance: supported PlanDefinition

Core FHIR Resource

[PlanDefinition](http://hl7.org/fhir/R4/plandefinition.html)

Reference Policy

Interaction summary

Extended Operations


#### Resource Conformance: supported Consent

Core FHIR Resource

[Consent](http://hl7.org/fhir/R4/consent.html)

Reference Policy

Interaction summary

* Supports `create`.

#### Resource Conformance: supported Bundle

Core FHIR Resource

[Bundle](http://hl7.org/fhir/R4/bundle.html)

Reference Policy

Interaction summary

* Supports `read`.



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "PSSProviderCapabilityStatement",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CapabilityStatement/PSSProviderCapabilityStatement",
  "version" : "1.0.0",
  "title" : "PSS Provider System Capability Statement",
  "status" : "active",
  "date" : "2025-05-22",
  "publisher" : "eHealth Platform Belgium",
  "contact" : [
    {
      "name" : "eHealth Platform Belgium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ehealth.fgov.be/standards/fhir/"
        },
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net"
        }
      ]
    },
    {
      "name" : "Message Structure eHealth",
      "telecom" : [
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "CapabilityStatement for PSS provider systems.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["xml"],
  "rest" : [
    {
      "mode" : "server",
      "resource" : [
        {
          "type" : "PlanDefinition",
          "operation" : [
            {
              "name" : "$apply",
              "definition" : "http://hl7.org/fhir/uv/cpg/OperationDefinition/cpg-plandefinition-apply"
            }
          ]
        },
        {
          "type" : "Consent",
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        },
        {
          "type" : "Bundle",
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        }
      ]
    }
  ]
}

```
