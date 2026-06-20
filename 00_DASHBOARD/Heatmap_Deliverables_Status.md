# Mapa de calor — Estado de entregables

Intensidad = `documentation_score` de la nota diaria.

```dataviewjs
// Requiere Heatmap Calendar; su API puede necesitar un ajuste menor según la versión.
const pages = dv.pages('"00_PROJECT_CONTROL/DAILY_STATUS"')
  .where(p => p.type === "daily_status" && p.status !== "example" && p.date);
const entries = pages.array().map(p => ({
  date: dv.date(p.date).toFormat("yyyy-LL-dd"),
  intensity: Math.max(0, Math.min(5, Number(p.documentation_score ?? 0))),
  content: `Documentación ${p.documentation_score ?? 0}/5`
}));
if (typeof renderHeatmapCalendar === "function") {
  renderHeatmapCalendar(this.container, { year: Number(dv.date("today").toFormat("yyyy")), entries });
} else dv.paragraph("Heatmap Calendar no disponible; revise la tabla de respaldo.");
```

## Respaldo diario

```dataview
TABLE date, documentation_score, owner, status
FROM "00_PROJECT_CONTROL/DAILY_STATUS"
WHERE type = "daily_status" AND status != "example"
SORT date DESC
```

## Lista de revisión de diseño

- [ ] Línea base de requisitos y trazabilidad.
- [ ] Arquitectura y ConOps.
- [ ] ICD con responsables.
- [ ] Decisiones y estudios comparativos.
- [ ] Riesgos/FMEA.
- [ ] Evidencia de diseño por disciplina.
- [ ] BOM, manufactura y presupuesto.
- [ ] Informe DR revisado.

## Lista ORR

- [ ] Configuración del rover congelada.
- [ ] Requisitos críticos verificados.
- [ ] Pruebas de banco, campo y obstáculos.
- [ ] Fallas críticas cerradas.
- [ ] Plan de seguridad y registro de peligros revisados.
- [ ] Procedimientos, listas de verificación y roles.
- [ ] Evidencia y reporte ORR revisados.

## Entregables sin responsable

```dataview
LIST
FROM "18_DELIVERABLES/Deliverable_Items"
WHERE type = "deliverable" AND status != "example" AND (!owner OR owner = "") AND status != "submitted"
```
