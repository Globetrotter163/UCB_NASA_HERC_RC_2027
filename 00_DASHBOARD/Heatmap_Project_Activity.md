# Heatmap — Project Activity

Requiere Dataview y Heatmap Calendar. Puede necesitar un ajuste menor si cambia la API del plugin.

```dataviewjs
// Requires the Heatmap Calendar plugin and its renderHeatmapCalendar API.
const pages = dv.pages('"00_PROJECT_CONTROL/DAILY_STATUS"')
  .where(p => p.type === "daily_status" && p.status !== "example" && p.date);
const entries = [];
for (const p of pages) {
  entries.push({
    date: dv.date(p.date).toFormat("yyyy-LL-dd"),
    intensity: Math.max(0, Math.min(5, Number(p.project_score ?? 0))),
    content: `${p.project_score ?? 0}/5 — ${p.file.name}`
  });
}
if (typeof renderHeatmapCalendar === "function") {
  renderHeatmapCalendar(this.container, {
    year: Number(dv.date("today").toFormat("yyyy")),
    colors: { green: ["#d8f3dc", "#95d5b2", "#52b788", "#2d6a4f", "#1b4332"] },
    entries
  });
} else {
  dv.paragraph("Heatmap Calendar no está disponible. Use la tabla fallback.");
}
```

## Fallback Dataview

```dataview
TABLE date, project_score, owner, status
FROM "00_PROJECT_CONTROL/DAILY_STATUS"
WHERE type = "daily_status" AND status != "example"
SORT date DESC
```
