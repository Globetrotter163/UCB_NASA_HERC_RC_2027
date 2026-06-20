# Heatmap — Deliverables Status

Intensidad = `documentation_score` de la nota diaria.

```dataviewjs
// Requires Heatmap Calendar; plugin API may require a minor version-specific adjustment.
const pages = dv.pages('"00_PROJECT_CONTROL/DAILY_STATUS"')
  .where(p => p.type === "daily_status" && p.status !== "example" && p.date);
const entries = pages.array().map(p => ({
  date: dv.date(p.date).toFormat("yyyy-LL-dd"),
  intensity: Math.max(0, Math.min(5, Number(p.documentation_score ?? 0))),
  content: `Documentation ${p.documentation_score ?? 0}/5`
}));
if (typeof renderHeatmapCalendar === "function") {
  renderHeatmapCalendar(this.container, { year: Number(dv.date("today").toFormat("yyyy")), entries });
} else dv.paragraph("Heatmap Calendar no disponible; revise la tabla fallback.");
```

## Fallback diario

```dataview
TABLE date, documentation_score, owner, status
FROM "00_PROJECT_CONTROL/DAILY_STATUS"
WHERE type = "daily_status" AND status != "example"
SORT date DESC
```

## Design Review checklist

- [ ] Requisitos baseline y trazabilidad.
- [ ] Arquitectura y ConOps.
- [ ] ICD con owners.
- [ ] Decisiones y trade studies.
- [ ] Riesgos/FMEA.
- [ ] Evidencia de diseño por disciplina.
- [ ] BOM, manufactura y presupuesto.
- [ ] Reporte DR revisado.

## ORR checklist

- [ ] Configuración del rover congelada.
- [ ] Requisitos críticos verificados.
- [ ] Pruebas de banco, campo y obstáculos.
- [ ] Fallas críticas cerradas.
- [ ] Safety plan y hazard log revisados.
- [ ] Procedimientos, checklists y roles.
- [ ] Evidencia y reporte ORR revisados.

## Entregables sin owner

```dataview
LIST
FROM "18_DELIVERABLES/Deliverable_Items"
WHERE type = "deliverable" AND status != "example" AND (!owner OR owner = "") AND status != "submitted"
```
