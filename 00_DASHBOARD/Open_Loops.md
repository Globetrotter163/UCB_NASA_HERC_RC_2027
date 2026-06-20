# Open Loops

## Preguntas técnicas abiertas

```dataview
TABLE owner, subsystem, status, file.mtime AS "Updated"
FROM "02_Systems_Engineering"
WHERE type = "technical_question" AND status != "closed"
SORT file.mtime ASC
```

Fallback: [[../02_Systems_Engineering/Open_Technical_Questions]]

## Interfaces pendientes

```dataview
TABLE id, owners, subsystems, status
FROM "02_Systems_Engineering/Interfaces"
WHERE type = "interface" AND status != "example" AND status != "verified" AND status != "closed"
```

## Decisiones sin evidencia

```dataview
LIST
FROM "02_Systems_Engineering/Decisions"
WHERE type = "decision" AND status != "example" AND status != "rejected" AND (!evidence OR evidence = "")
```

## Requisitos sin prueba

```dataview
TABLE id, owner, verification_method, status
FROM "01_Requirements/Requirements"
WHERE type = "requirement" AND status != "example" AND status != "retired" AND (!linked_tests OR length(linked_tests) = 0)
```

## Tareas bloqueadas

```tasks
not done
description includes #blocked
sort by due
```

## Fallback manual

| ID | Tipo | Descripción | Owner | Bloqueo | Próxima acción | Fecha |
|---|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD | TBD | TBD |
