---
type: workspace_setup
status: manual_configuration_required
owner: Project Control
---

# Obsidian Daily Notes Setup

Daily Notes debe crear estados diarios dentro de Project Control, no en la raíz del vault.

## Configuración requerida

Abra **Settings → Core plugins → Daily notes** y configure:

| Setting | Value |
|---|---|
| Date format | `YYYY-MM-DD` |
| New file location | `00_PROJECT_CONTROL/DAILY_STATUS` |
| Template file location | `12_TEMPLATES/Template_Daily_Status` |

Después abra **Settings → Files & Links**:

| Setting | Value |
|---|---|
| Default location for new notes | `Same folder as current file` |

## Validación

1. Ejecute **Open today's daily note** desde Command Palette.
2. Confirme que se crea `00_PROJECT_CONTROL/DAILY_STATUS/YYYY-MM-DD.md`.
3. Confirme que contiene el frontmatter de `Template_Daily_Status`.
4. Complete `owner` y cambie `status: draft` solo según el workflow.
5. Abra [[../00_DASHBOARD/Heatmap_Project_Activity|Project Activity Heatmap]].

## Si ya existe una nota en la raíz

No la mueva automáticamente. Compare su contenido, preserve evidencia y proponga la consolidación en `MIGRATION_PLAN.md`.

## Seguridad

Esta guía no modifica `.obsidian/app.json`, `workspace.json` ni configuraciones de plugins. La configuración es manual y reversible.

Referencia: [Obsidian Daily notes](https://obsidian.md/help/Plugins/Daily%2Bnotes).
