# Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup**

## Example RequestGroup: Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup

**status**: Active

**intent**: Proposal

**subject**: [ Female, DoB Unknown](Patient-30551ce1-5a28-4356-b684-2e639094ad48.md)

> **action****selectionBehavior**: At Most One

### Actions

| | | |
| :--- | :--- | :--- |
| - | **TextEquivalent** | **Resource** |
| * | Collect information | [Task Collect information](Task-30551ce1-5a28-4356-b684-11ef43a67755.md) |




## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "getdatatocollect-a-response-group",
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

```
