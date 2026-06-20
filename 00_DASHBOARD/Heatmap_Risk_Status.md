# Heatmap — Risk Status

Intensidad = riesgos abiertos durante el día; el gráfico no representa por sí solo severidad residual.

```dataviewjs
// Requires Heatmap Calendar; plugin API may require a minor version-specific adjustment.
const pages = dv.pages('"00_PROJECT_CONTROL/DAILY_STATUS"')
  .where(p => p.type === "daily_status" && p.status !== "example" && p.date);
const entries = pages.array().map(p => ({
  date: dv.date(p.date).toFormat("yyyy-LL-dd"),
  intensity: Math.max(0, Math.min(5, Number(p.risks_opened ?? 0))),
  content: `+${p.risks_opened ?? 0} / -${p.risks_closed ?? 0}`
}));
if (typeof renderHeatmapCalendar === "function") {
  renderHeatmapCalendar(this.container, { year: Number(dv.date("today").toFormat("yyyy")), entries });
} else dv.paragraph("Heatmap Calendar no disponible; revise la tabla fallback.");
```

## Fallback diario

```dataview
TABLE date, risks_opened, risks_closed, safety_score, owner
FROM "00_PROJECT_CONTROL/DAILY_STATUS"
WHERE type = "daily_status" AND status != "example"
SORT date DESC
```

## Riesgos activos

```dataview
TABLE id, severity, probability, impact, owner, mitigation
FROM "02_Systems_Engineering" OR "08_SAFETY_QUALITY"
WHERE (type = "risk" OR type = "hazard") AND status != "closed"
SORT severity DESC
```

## Sin mitigación

```dataview
LIST
FROM "02_Systems_Engineering" OR "08_SAFETY_QUALITY"
WHERE (type = "risk" OR type = "hazard") AND status != "closed" AND (!mitigation OR mitigation = "")
```
