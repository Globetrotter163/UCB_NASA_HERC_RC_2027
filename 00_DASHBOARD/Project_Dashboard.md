---
type: dashboard
status: active
---

# Panel del proyecto

[[Visual_Navigation|Leyenda visual]] · [[Team_Onboarding_Map|Incorporación del equipo]]

## Resumen ejecutivo

La estructura inicial está completada. El estado técnico permanece **por evaluar** hasta que los responsables revisen requisitos, arquitectura, CAD, software, pruebas y evidencia existente.

> [!info] Índices humanos y objetos Dataview
> `Decision_Log.md`, `Risk_Register.md`, `Interface_Control_Document.md`, `Test_Log_Index.md` y registros equivalentes son índices humanos. Las notas individuales dentro de `Decisions/`, `Risks/`, `Interfaces/`, `Tests/`, `Failures/`, `Hazards/` y `Deliverable_Items/` alimentan las consultas. Los ejemplos con `status: example` se excluyen del estado operativo.

## Estado por área

![[Engineering_Status]]

## Riesgos abiertos

```dataview
TABLE id, severity AS "Severidad", owner AS "Responsable", mitigation AS "Mitigación"
FROM "02_Systems_Engineering/Risks" OR "08_SAFETY_QUALITY/Hazards"
WHERE (type = "risk" OR type = "hazard") AND status != "example" AND status != "closed" AND status != "accepted"
SORT severity DESC
```

Respaldo manual: [[../02_Systems_Engineering/Risk_Register|Registro de riesgos]] · [[../08_SAFETY_QUALITY/Hazard_Log|Registro de peligros]]

## Decisiones abiertas

```dataview
TABLE id, owner AS "Responsable", date AS "Fecha", affected_subsystems AS "Subsistemas afectados"
FROM "02_Systems_Engineering/Decisions"
WHERE type = "decision" AND status != "example" AND status != "approved" AND status != "rejected"
SORT date ASC
```

Respaldo manual: [[../02_Systems_Engineering/Decision_Log|Registro de decisiones]]

## Interfaces abiertas

```dataview
TABLE id, owners AS "Responsables", subsystems AS "Subsistemas", last_review AS "Última revisión"
FROM "02_Systems_Engineering/Interfaces"
WHERE type = "interface" AND status != "example" AND status != "approved" AND status != "verified"
SORT id ASC
```

Respaldo manual: [[../02_Systems_Engineering/Interface_Control_Document|Documento de control de interfaces]]

## Pruebas planificadas

```dataview
TABLE id, owner AS "Responsable", date AS "Fecha", related_requirements AS "Requisitos relacionados"
FROM "07_TESTING_VALIDATION/Tests"
WHERE type = "test" AND status != "example" AND status = "planned"
SORT date ASC
```

## Pruebas recientes

```dataview
TABLE id, status AS "Estado", owner AS "Responsable", date AS "Fecha", related_requirements AS "Requisitos relacionados"
FROM "07_TESTING_VALIDATION/Tests"
WHERE type = "test" AND status != "example"
SORT date DESC
LIMIT 10
```

Respaldo manual: [[../07_TESTING_VALIDATION/Test_Log_Index|Índice de pruebas]]

## Fallas recientes

```dataview
TABLE id, severity AS "Severidad", owner AS "Responsable", date AS "Fecha", related_test AS "Prueba relacionada"
FROM "07_TESTING_VALIDATION/Failures"
WHERE type = "failure_report" AND status != "example" AND status != "closed"
SORT date DESC
LIMIT 10
```

Respaldo manual: [[../07_TESTING_VALIDATION/Failure_Reports|Reportes de fallas]]

## Próximos entregables

```dataview
TABLE id, due AS "Fecha límite", owner AS "Responsable", status AS "Estado"
FROM "18_DELIVERABLES/Deliverable_Items"
WHERE type = "deliverable" AND status != "example" AND status != "submitted" AND status != "obsolete"
SORT due ASC
```

Respaldo manual: [[../18_DELIVERABLES/Deliverables_Index|Índice de entregables]]

## Bloqueos y tareas pendientes

```dataview
TASK
FROM ""
WHERE !completed
GROUP BY file.folder
```

Respaldo manual: [[Open_Loops]]

## Resultados de agentes pendientes de revisión

```dataview
TABLE type AS "Tipo", owner AS "Responsable", status AS "Estado", file.mtime AS "Actualizado"
FROM "17_AI_AGENTS/03_AGENT_OUTPUTS"
WHERE status = "draft" OR status = "in_review" OR !status
SORT file.mtime DESC
```

## Próximos hitos

| Hito | Fecha | Responsable | Estado |
|---|---|---|---|
| Línea base de requisitos | Por definir | Por definir | planned |
| Línea base de arquitectura | Por definir | Por definir | planned |
| Revisión de diseño | Por definir | Por definir | planned |
| Revisión de preparación operativa (ORR) | Por definir | Por definir | planned |
