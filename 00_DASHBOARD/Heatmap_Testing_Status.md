# Heatmap — Testing Status

Intensidad = `tests_completed` por día, limitada visualmente a 5.

```dataviewjs
// Requires the Heatmap Calendar plugin and may need minor API adjustment by version.
const pages = dv.pages('"00_PROJECT_CONTROL/DAILY_STATUS"')
  .where(p => p.type === "daily_status" && p.status !== "example" && p.date);
const entries = pages.array().map(p => ({
  date: dv.date(p.date).toFormat("yyyy-LL-dd"),
  intensity: Math.max(0, Math.min(5, Number(p.tests_completed ?? 0))),
  content: `${p.tests_completed ?? 0} tests`
}));
if (typeof renderHeatmapCalendar === "function") {
  renderHeatmapCalendar(this.container, { year: Number(dv.date("today").toFormat("yyyy")), entries });
} else dv.paragraph("Heatmap Calendar no disponible; revise la tabla fallback.");
```

## Fallback diario

```dataview
TABLE date, tests_completed, failures_reported, owner
FROM "00_PROJECT_CONTROL/DAILY_STATUS"
WHERE type = "daily_status" AND status != "example"
SORT date DESC
```

## Pruebas recientes

```dataview
TABLE id, status, date, owner, related_requirements
FROM "07_TESTING_VALIDATION/Tests"
WHERE type = "test" AND status != "example"
SORT date DESC
LIMIT 15
```

## Fallas abiertas

```dataview
LIST
FROM "07_TESTING_VALIDATION/Failures"
WHERE type = "failure_report" AND status != "example" AND status != "closed"
SORT severity DESC
```
