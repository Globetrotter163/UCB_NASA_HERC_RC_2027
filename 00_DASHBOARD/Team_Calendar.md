---
type: dashboard
status: active
---

# Calendario del equipo

[[Command_Center|Centro de mando]] · [[../00_PROJECT_CONTROL/GOOGLE_CALENDAR_INTEGRATION|Configurar Google Calendar]] · [[../12_TEMPLATES/Template_Calendar_Event|Plantilla de evento]]

> [!info] Fuente
> Este panel lee notas de eventos locales desde `00_PROJECT_CONTROL/CALENDAR_EVENTS/`. Los calendarios externos son solo contexto de lectura hasta que el evento relevante se registre localmente.

## Esta semana

```dataview
TABLE date AS "Fecha", start_time AS "Inicio", title AS "Evento", event_kind AS "Tipo", owner AS "Responsable", status AS "Estado"
FROM "00_PROJECT_CONTROL/CALENDAR_EVENTS"
WHERE type = "calendar_event"
  AND status != "example"
  AND status != "cancelled"
  AND date >= date(today)
  AND date <= date(today) + dur(7 days)
SORT date ASC, start_time ASC
```

Respaldo manual:

| Fecha | Hora | Evento | Tipo | Responsable | Estado |
|---|---|---|---|---|---|
| Por definir | Por definir | Crear desde `Template_Calendar_Event` | Por definir | Por definir | planned |

## Próximas revisiones

```dataview
TABLE date, start_time, title, owner, status
FROM "00_PROJECT_CONTROL/CALENDAR_EVENTS"
WHERE type = "calendar_event"
  AND event_kind = "review"
  AND status != "example"
  AND status != "cancelled"
  AND date >= date(today)
SORT date ASC
```

## Próximas pruebas

```dataview
TABLE date, start_time, title, owner, related_tests, status
FROM "00_PROJECT_CONTROL/CALENDAR_EVENTS"
WHERE type = "calendar_event"
  AND event_kind = "test"
  AND status != "example"
  AND status != "cancelled"
  AND date >= date(today)
SORT date ASC
```

Respaldo manual: [[../07_TESTING_VALIDATION/Test_Plan|Plan de pruebas]]

## Próximos entregables

```dataview
TABLE date, title, owner, related_deliverable, status
FROM "00_PROJECT_CONTROL/CALENDAR_EVENTS"
WHERE type = "calendar_event"
  AND event_kind = "deliverable"
  AND status != "example"
  AND status != "cancelled"
  AND date >= date(today)
SORT date ASC
```

Respaldo manual: [[../18_DELIVERABLES/Deliverables_Index|Índice de entregables]]

## Añadir un evento

Copie `12_TEMPLATES/Template_Calendar_Event.md` en:

`00_PROJECT_CONTROL/CALENDAR_EVENTS/YYYY-MM-DD_Event_Title.md`
