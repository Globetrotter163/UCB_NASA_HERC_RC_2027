---
type: dashboard
status: active
---

# Team Calendar

[[Command_Center|Command Center]] · [[../00_PROJECT_CONTROL/GOOGLE_CALENDAR_INTEGRATION|Google Calendar setup]] · [[../12_TEMPLATES/Template_Calendar_Event|New event template]]

> [!info] Source
> This dashboard reads local event notes from `00_PROJECT_CONTROL/CALENDAR_EVENTS/`. External calendars remain read-only context until a relevant event is captured locally.

## This Week

```dataview
TABLE date AS "Date", start_time AS "Start", title AS "Event", event_kind AS "Kind", owner AS "Owner", status AS "Status"
FROM "00_PROJECT_CONTROL/CALENDAR_EVENTS"
WHERE type = "calendar_event"
  AND status != "example"
  AND status != "cancelled"
  AND date >= date(today)
  AND date <= date(today) + dur(7 days)
SORT date ASC, start_time ASC
```

Fallback:

| Date | Time | Event | Kind | Owner | Status |
|---|---|---|---|---|---|
| TBD | TBD | Create from `Template_Calendar_Event` | TBD | TBD | planned |

## Upcoming Reviews

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

## Upcoming Tests

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

Fallback: [[../07_TESTING_VALIDATION/Test_Plan|Test Plan]]

## Upcoming Deliverables

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

Fallback: [[../18_DELIVERABLES/Deliverables_Index|Deliverables Index]]

## Add an event

Copy `12_TEMPLATES/Template_Calendar_Event.md` to:

`00_PROJECT_CONTROL/CALENDAR_EVENTS/YYYY-MM-DD_Event_Title.md`
