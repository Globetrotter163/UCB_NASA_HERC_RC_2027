---
type: dashboard
status: active
---

# Project Dashboard

[[Visual_Navigation|Visual legend]] · [[Team_Onboarding_Map|Team onboarding]]

## Executive Summary

Bootstrap estructural completado. El estado técnico permanece **por evaluar** hasta que owners revisen requisitos, arquitectura, CAD, software, pruebas y evidencia existente.

> [!info] Índices humanos y objetos Dataview
> `Decision_Log.md`, `Risk_Register.md`, `Interface_Control_Document.md`, `Test_Log_Index.md` y registros equivalentes son índices humanos. Las notas individuales dentro de `Decisions/`, `Risks/`, `Interfaces/`, `Tests/`, `Failures/`, `Hazards/` y `Deliverable_Items/` alimentan las consultas. Los ejemplos con `status: example` se excluyen del estado operativo.

## Status by Area

![[Engineering_Status]]

## Open Risks

```dataview
TABLE id, severity, owner, mitigation
FROM "02_Systems_Engineering/Risks" OR "08_SAFETY_QUALITY/Hazards"
WHERE (type = "risk" OR type = "hazard") AND status != "example" AND status != "closed" AND status != "accepted"
SORT severity DESC
```

Fallback: [[../02_Systems_Engineering/Risk_Register|Risk Register]] · [[../08_SAFETY_QUALITY/Hazard_Log|Hazard Log]]

## Open Decisions

```dataview
TABLE id, owner, date, affected_subsystems
FROM "02_Systems_Engineering/Decisions"
WHERE type = "decision" AND status != "example" AND status != "approved" AND status != "rejected"
SORT date ASC
```

Fallback: [[../02_Systems_Engineering/Decision_Log|Decision Log]]

## Open Interfaces

```dataview
TABLE id, owners, subsystems, last_review
FROM "02_Systems_Engineering/Interfaces"
WHERE type = "interface" AND status != "example" AND status != "approved" AND status != "verified"
SORT id ASC
```

Fallback: [[../02_Systems_Engineering/Interface_Control_Document|Interface Control Document]]

## Planned Tests

```dataview
TABLE id, owner, date, related_requirements
FROM "07_TESTING_VALIDATION/Tests"
WHERE type = "test" AND status != "example" AND status = "planned"
SORT date ASC
```

## Recent Tests

```dataview
TABLE id, status, owner, date, related_requirements
FROM "07_TESTING_VALIDATION/Tests"
WHERE type = "test" AND status != "example"
SORT date DESC
LIMIT 10
```

Fallback: [[../07_TESTING_VALIDATION/Test_Log_Index|Test Log Index]]

## Recent Failures

```dataview
TABLE id, severity, owner, date, related_test
FROM "07_TESTING_VALIDATION/Failures"
WHERE type = "failure_report" AND status != "example" AND status != "closed"
SORT date DESC
LIMIT 10
```

Fallback: [[../07_TESTING_VALIDATION/Failure_Reports|Failure Reports]]

## Upcoming Deliverables

```dataview
TABLE id, due, owner, status
FROM "18_DELIVERABLES/Deliverable_Items"
WHERE type = "deliverable" AND status != "example" AND status != "submitted" AND status != "obsolete"
SORT due ASC
```

Fallback: [[../18_DELIVERABLES/Deliverables_Index|Deliverables Index]]

## Blockers and pending tasks

```dataview
TASK
FROM ""
WHERE !completed
GROUP BY file.folder
```

Fallback: [[Open_Loops]]

## Agent Outputs Pending Review

```dataview
TABLE type, owner, status, file.mtime AS "Updated"
FROM "17_AI_AGENTS/03_AGENT_OUTPUTS"
WHERE status = "draft" OR status = "in_review" OR !status
SORT file.mtime DESC
```

## Next milestones

| Milestone | Date | Owner | Status |
|---|---|---|---|
| Requirements baseline | TBD | TBD | planned |
| Architecture baseline | TBD | TBD | planned |
| Design Review | TBD | TBD | planned |
| ORR | TBD | TBD | planned |
