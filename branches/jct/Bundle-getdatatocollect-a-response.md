# Antimicrobiology - S2 Get data to collect - Response - 1. Bundle - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobiology - S2 Get data to collect - Response - 1. Bundle**

## Example Bundle: Antimicrobiology - S2 Get data to collect - Response - 1. Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "getdatatocollect-a-response",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle"
    ]
  },
  "identifier" : {
    "value" : "response1"
  },
  "type" : "collection",
  "timestamp" : "2025-02-20T00:00:00Z",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4d",
      "resource" : {
        "resourceType" : "RequestGroup",
        "id" : "getdatatocollect-a-response-group",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"RequestGroup_getdatatocollect-a-response-group\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RequestGroup getdatatocollect-a-response-group</b></p><a name=\"getdatatocollect-a-response-group\"> </a><a name=\"hcgetdatatocollect-a-response-group\"> </a><p><b>status</b>: Active</p><p><b>intent</b>: Proposal</p><p><b>subject</b>: <a href=\"Patient-30551ce1-5a28-4356-b684-2e639094ad48.html\"> Female, DoB Unknown</a></p><blockquote><p><b>action</b></p><p><b>selectionBehavior</b>: At Most One</p><h3>Actions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>TextEquivalent</b></td><td><b>Resource</b></td></tr><tr><td style=\"display: none\">*</td><td>Collect information</td><td><a href=\"Task-30551ce1-5a28-4356-b684-11ef43a67755.html\">Task Collect information</a></td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "intent" : "proposal",
        "subject" : {
          "reference" : "Patient/30551ce1-5a28-4356-b684-2e639094ad48"
        },
        "action" : [
          {
            "selectionBehavior" : "at-most-one",
            "action" : [
              {
                "textEquivalent" : "Collect information",
                "resource" : {
                  "reference" : "Task/30551ce1-5a28-4356-b684-11ef43a67755"
                }
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:30551ce1-5a28-4356-b684-11ef43a67755",
      "resource" : {
        "resourceType" : "Task",
        "id" : "30551ce1-5a28-4356-b684-11ef43a67755",
        "meta" : {
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSQuestionnaireTask"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Task_30551ce1-5a28-4356-b684-11ef43a67755\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Task 30551ce1-5a28-4356-b684-11ef43a67755</b></p><a name=\"30551ce1-5a28-4356-b684-11ef43a67755\"> </a><a name=\"hc30551ce1-5a28-4356-b684-11ef43a67755\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PSSQuestionnaireTask.html\">PSS Questionnaire Task</a></p></div><p><b>status</b>: Requested</p><p><b>intent</b>: proposal</p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs collect-information}\">Collect information</span></p><p><b>for</b>: <a href=\"Patient-30551ce1-5a28-4356-b684-2e639094ad48.html\"> Female, DoB Unknown</a></p><h3>Inputs</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs collect-information}\">Collect information</span></td><td><a href=\"Questionnaire-30551ce1-5a28-4356-b684-2e639094ad4c.html\">Questionnaire[https://www.ehealth.fgov.be/standards/fhir/pss/Questionnaire/30551ce1-5a28-4356-b684-2e639094ad4c|1.0.0]</a></td></tr></table></div>"
        },
        "status" : "requested",
        "intent" : "proposal",
        "code" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs",
              "code" : "collect-information",
              "display" : "Collect information"
            }
          ]
        },
        "for" : {
          "reference" : "Patient/30551ce1-5a28-4356-b684-2e639094ad48"
        },
        "input" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs",
                  "code" : "collect-information",
                  "display" : "Collect information"
                }
              ]
            },
            "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/Questionnaire/30551ce1-5a28-4356-b684-2e639094ad4c"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4c",
      "resource" : {
        "resourceType" : "Questionnaire",
        "id" : "30551ce1-5a28-4356-b684-2e639094ad4c",
        "meta" : {
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSDataAcquisitionForm"
          ]
        },
        "language" : "nl-BE",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"nl-BE\" lang=\"nl-BE\"><a name=\"Questionnaire_30551ce1-5a28-4356-b684-2e639094ad4c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Questionnaire 30551ce1-5a28-4356-b684-2e639094ad4c</b></p><a name=\"30551ce1-5a28-4356-b684-2e639094ad4c\"> </a><a name=\"hc30551ce1-5a28-4356-b684-2e639094ad4c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: nl-BE</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PSSDataAcquisitionForm.html\">PSS Data Acquisition Form</a></p></div><b>Structure</b><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Cardinality</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Type</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Additional information about the item\">Description &amp; Constraints</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireRoot\" class=\"hierarchy\"/> </td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" id=\"item.sp_excMand_knownPathogen_vag\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-choice.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"choice\" class=\"hierarchy\"/> sp_excMand_knownPathogen_vag</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Oorzakelijke kiem vulvo-vaginitis</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Options: <a href=\"#opt-item.sp_excMand_knownPathogen_vag\">3 options</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" id=\"item.pv_pregnant\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-boolean.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"boolean\" class=\"hierarchy\"/> pv_pregnant</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Zwangerschap</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean\">boolean</a></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" id=\"item.sp_exc_causalPathogen_ure\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-choice.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"choice\" class=\"hierarchy\"/> sp_exc_causalPathogen_ure</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Oorzakelijke kiem Urethritis</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-choice\">choice</a></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Options: <a href=\"#opt-item.sp_exc_causalPathogen_ure\">4 options</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\" id=\"item.sp_riskPatient_ast\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-boolean.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"boolean\" class=\"hierarchy\"/> sp_riskPatient_ast</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Risicopatiënt</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean\">boolean</a></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" id=\"item.pv_compromisedImmuneSystem\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-boolean.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"boolean\" class=\"hierarchy\"/> pv_compromisedImmuneSystem</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Gecompromitteerd immuunsysteem</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean\">boolean</a></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck000.png)\" id=\"item.pv_oncologyPatient\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-boolean.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"boolean\" class=\"hierarchy\"/> pv_oncologyPatient</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Oncologische patiënt</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-boolean\">boolean</a></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr><td colspan=\"5\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table><hr/><p><b>Options Sets</b></p><a name=\"opt-item.sp_excMand_knownPathogen_vag\"> </a><p><b>Answer options for sp_excMand_knownPathogen_vag </b></p><ul><li style=\"font-size: 11px\">null#pv_candida_vag (&quot;Candida vaginitis&quot;)</li><li style=\"font-size: 11px\">null#pv_trichomonas_vag (&quot;Trichomonas vaginalis&quot;)</li><li style=\"font-size: 11px\">null#pv_bacterial_vag (&quot;Bacteriële vaginose&quot;)</li></ul><a name=\"opt-item.sp_exc_causalPathogen_ure\"> </a><p><b>Answer options for sp_exc_causalPathogen_ure </b></p><ul><li style=\"font-size: 11px\">null#pv_causalPatChlamydia_ure (&quot;Chlamydia&quot;)</li><li style=\"font-size: 11px\">null#pv_causalPatGonokok_ure (&quot;Gonokok&quot;)</li><li style=\"font-size: 11px\">null#pv_causalPatMycoplasma_ure (&quot;Mycoplasma genitalium&quot;)</li><li style=\"font-size: 11px\">null#pv_causalPatOther_ure (&quot;Andere&quot;)</li></ul></div>"
        },
        "status" : "active",
        "item" : [
          {
            "linkId" : "sp_excMand_knownPathogen_vag",
            "text" : "Oorzakelijke kiem vulvo-vaginitis",
            "_text" : {
              "extension" : [
                {
                  "extension" : [
                    {
                      "url" : "lang",
                      "valueCode" : "fr-BE"
                    },
                    {
                      "url" : "content",
                      "valueString" : "Germe causal vulvo vaginite"
                    }
                  ],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            },
            "type" : "choice",
            "required" : true,
            "repeats" : false,
            "answerOption" : [
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/CandidaCodes"
                  }
                ],
                "valueCoding" : {
                  "code" : "pv_candida_vag",
                  "display" : "Candida vaginitis",
                  "_display" : {
                    "extension" : [
                      {
                        "extension" : [
                          {
                            "url" : "lang",
                            "valueCode" : "fr-BE"
                          },
                          {
                            "url" : "content",
                            "valueString" : "Vaginite à candida"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              },
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/TrichomonasCodes"
                  }
                ],
                "valueCoding" : {
                  "code" : "pv_trichomonas_vag",
                  "display" : "Trichomonas vaginalis",
                  "_display" : {
                    "extension" : [
                      {
                        "extension" : [
                          {
                            "url" : "lang",
                            "valueCode" : "fr-BE"
                          },
                          {
                            "url" : "content",
                            "valueString" : "Trichomonas vaginalis"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              },
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/BacterialCodes"
                  }
                ],
                "valueCoding" : {
                  "code" : "pv_bacterial_vag",
                  "display" : "Bacteriële vaginose",
                  "_display" : {
                    "extension" : [
                      {
                        "extension" : [
                          {
                            "url" : "lang",
                            "valueCode" : "fr-BE"
                          },
                          {
                            "url" : "content",
                            "valueString" : "Vaginose bactérienne"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              }
            ]
          },
          {
            "extension" : [
              {
                "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/PregnancyCodes"
              }
            ],
            "linkId" : "pv_pregnant",
            "text" : "Zwangerschap",
            "_text" : {
              "extension" : [
                {
                  "extension" : [
                    {
                      "url" : "lang",
                      "valueCode" : "fr-BE"
                    },
                    {
                      "url" : "content",
                      "valueString" : "Grossesse"
                    }
                  ],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            },
            "type" : "boolean"
          },
          {
            "linkId" : "sp_exc_causalPathogen_ure",
            "text" : "Oorzakelijke kiem Urethritis",
            "_text" : {
              "extension" : [
                {
                  "extension" : [
                    {
                      "url" : "lang",
                      "valueCode" : "fr-BE"
                    },
                    {
                      "url" : "content",
                      "valueString" : "Germe causal Urétrite"
                    }
                  ],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            },
            "type" : "choice",
            "repeats" : false,
            "answerOption" : [
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/ChlamydiaCodes"
                  }
                ],
                "valueCoding" : {
                  "code" : "pv_causalPatChlamydia_ure",
                  "display" : "Chlamydia",
                  "_display" : {
                    "extension" : [
                      {
                        "extension" : [
                          {
                            "url" : "lang",
                            "valueCode" : "fr-BE"
                          },
                          {
                            "url" : "content",
                            "valueString" : "Chlamydia"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              },
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/GonokokCodes"
                  }
                ],
                "valueCoding" : {
                  "code" : "pv_causalPatGonokok_ure",
                  "display" : "Gonokok",
                  "_display" : {
                    "extension" : [
                      {
                        "extension" : [
                          {
                            "url" : "lang",
                            "valueCode" : "fr-BE"
                          },
                          {
                            "url" : "content",
                            "valueString" : "Gonocoque"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              },
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/MycoplasmaCodes"
                  }
                ],
                "valueCoding" : {
                  "code" : "pv_causalPatMycoplasma_ure",
                  "display" : "Mycoplasma genitalium",
                  "_display" : {
                    "extension" : [
                      {
                        "extension" : [
                          {
                            "url" : "lang",
                            "valueCode" : "fr-BE"
                          },
                          {
                            "url" : "content",
                            "valueString" : "Mycoplasma genitalium"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              },
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/OtherCodes"
                  }
                ],
                "valueCoding" : {
                  "code" : "pv_causalPatOther_ure",
                  "display" : "Andere",
                  "_display" : {
                    "extension" : [
                      {
                        "extension" : [
                          {
                            "url" : "lang",
                            "valueCode" : "fr-BE"
                          },
                          {
                            "url" : "content",
                            "valueString" : "Autres"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              }
            ]
          },
          {
            "linkId" : "sp_riskPatient_ast",
            "text" : "Risicopatiënt",
            "_text" : {
              "extension" : [
                {
                  "extension" : [
                    {
                      "url" : "lang",
                      "valueCode" : "fr-BE"
                    },
                    {
                      "url" : "content",
                      "valueString" : "Patient à risque"
                    }
                  ],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            },
            "type" : "boolean",
            "item" : [
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/CompromisedImmuneSystemCodes"
                  }
                ],
                "linkId" : "pv_compromisedImmuneSystem",
                "text" : "Gecompromitteerd immuunsysteem",
                "_text" : {
                  "extension" : [
                    {
                      "extension" : [
                        {
                          "url" : "lang",
                          "valueCode" : "fr-BE"
                        },
                        {
                          "url" : "content",
                          "valueString" : "Immunosuppression / système immunitaire déprimé"
                        }
                      ],
                      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                    }
                  ]
                },
                "type" : "boolean"
              },
              {
                "extension" : [
                  {
                    "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
                    "valueCanonical" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/OncologyPatientCodes"
                  }
                ],
                "linkId" : "pv_oncologyPatient",
                "text" : "Oncologische patiënt",
                "_text" : {
                  "extension" : [
                    {
                      "extension" : [
                        {
                          "url" : "lang",
                          "valueCode" : "fr-BE"
                        },
                        {
                          "url" : "content",
                          "valueString" : "Patient oncologique"
                        }
                      ],
                      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                    }
                  ]
                },
                "type" : "boolean"
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad48",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "30551ce1-5a28-4356-b684-2e639094ad48",
        "meta" : {
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSPatient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_30551ce1-5a28-4356-b684-2e639094ad48\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient 30551ce1-5a28-4356-b684-2e639094ad48</b></p><a name=\"30551ce1-5a28-4356-b684-2e639094ad48\"> </a><a name=\"hc30551ce1-5a28-4356-b684-2e639094ad48\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PSSPatient.html\">PSS anonymised Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\"> Female, DoB Unknown</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The approximate, relevant age of the patient at the time of the search.\"><a href=\"StructureDefinition-PSSRelevantAge.html\">PSS Relevant Patient Age</a></td><td colspan=\"3\">36 y<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codey = 'y')</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRelevantAge",
            "valueAge" : {
              "value" : 36,
              "system" : "http://unitsofmeasure.org",
              "code" : "y"
            }
          }
        ],
        "active" : true,
        "name" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                "valueCode" : "masked"
              }
            ]
          }
        ],
        "gender" : "female",
        "deceasedBoolean" : false
      }
    }
  ]
}

```
