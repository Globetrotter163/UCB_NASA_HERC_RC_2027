---
type: workspace_setup
status: configured
owner: Project Control
---

# Configuración de notas diarias

El complemento nativo **Notas diarias** está configurado para crear estados dentro de Control del proyecto, no en la raíz del vault.

## Configuración aplicada

| Ajuste | Valor |
|---|---|
| Formato de fecha | `YYYY-MM-DD` |
| Carpeta de archivos nuevos | `00_PROJECT_CONTROL/DAILY_STATUS` |
| Plantilla | `12_TEMPLATES/Template_Daily_Status` |

La configuración se almacena en `.obsidian/daily-notes.json`.

## Uso

1. Ejecute **Abrir la nota diaria de hoy** desde la paleta.
2. Confirme que se crea `00_PROJECT_CONTROL/DAILY_STATUS/YYYY-MM-DD.md`.
3. Complete `owner` y los campos de evidencia.
4. Cambie `status: draft` únicamente según [[FLUJO_DE_NOTAS]].
5. Abra [[../00_DASHBOARD/Heatmap_Project_Activity|Mapa de actividad del proyecto]].

## Si ya existe una nota en otra ubicación

No la mueva automáticamente. Compare contenido, preserve evidencia y proponga la consolidación en [[MIGRATION_PLAN]].

Referencia: [Notas diarias de Obsidian](https://obsidian.md/help/Plugins/Daily%2Bnotes).

