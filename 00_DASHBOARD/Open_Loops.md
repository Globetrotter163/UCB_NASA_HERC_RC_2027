# Bucles abiertos

## Preguntas técnicas abiertas

```dataview
TABLE owner AS "Responsable", subsystem AS "Subsistema", status AS "Estado", file.mtime AS "Actualizado"
FROM "02_Systems_Engineering"
WHERE type = "technical_question" AND status != "closed"
SORT file.mtime ASC
```

Respaldo manual: [[../02_Systems_Engineering/Open_Technical_Questions]]

## Interfaces pendientes

```dataview
TABLE id, owners AS "Responsables", subsystems AS "Subsistemas", status AS "Estado"
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
TABLE id, owner AS "Responsable", verification_method AS "Método de verificación", status AS "Estado"
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

| ID | Tipo | Descripción | Responsable | Bloqueo | Próxima acción | Fecha |
|---|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD | TBD | TBD |
