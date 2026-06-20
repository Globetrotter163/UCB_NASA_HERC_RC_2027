---
type: visual_style_guide
status: active
date: 2026-06-20
---

# Visual Style Guide

## Principle

Color identifies **where information belongs**. It does not communicate technical truth, approval, urgency or completion.

- Priority: `priority`, due dates and review decisions.
- Technical state: `status`.
- Risk: `severity`, probability, impact and mitigation.
- Execution pressure: blockers and milestones.
- Accountability: owner and reviewer.
- Confidence: evidence and revision.

The vault must remain fully usable when the CSS snippet is disabled.

## Area palette

| Folder | Color | Hex | Meaning | Owner |
|---|---|---|---|---|
| `00_DASHBOARD` | Azul eléctrico | `#2F80ED` | Mission Control and navigation | Project Lead — Israel Silva |
| `00_PROJECT_CONTROL` | Gris azulado | `#4B5563` | Governance and operations | Project Lead — Israel Silva |
| `00_Index` | Azul gris histórico | `#64748B` | Historical pre-bootstrap index | Vault owner needed |
| `01_Requirements` / `01_REQUIREMENTS` | Amarillo | `#F2C94C` | Requirements and traceability | Chief/Systems — Alan Gonzales |
| `02_Systems_Engineering` / `02_SYSTEMS_ENGINEERING` | Morado | `#9B51E0` | Architecture, interfaces, decisions and risks | Chief/Systems — Alan Gonzales |
| `02_MECHANICAL` / `03_MECHANICAL` | Naranja | `#F2994A` | Mechanical design, CAD and manufacturing | Mechanical — Israel Silva |
| `03_ELECTRICAL` / `04_ELECTRICAL_ELECTRONICS` | Rojo | `#EB5757` | Power, electronics and wiring | Electrical — Slevana |
| `04_SOFTWARE` / `05_SOFTWARE_CONTROL` | Verde | `#27AE60` | Software memory, firmware, control and telemetry | Software/Control — Jhoe Marin |
| `05_TESTING` / `07_TESTING_VALIDATION` | Verde lima | `#6FCF97` | Testing and validation | Test — Pops Racer |
| `06_TASK_PAYLOADS` | Cian | `#2D9CDB` | Soil, water and air tasks | Payload — Jamie Oliver |
| `06_RENDERS` | Rosa | `#FF6B9A` | Historical visual media | Media owner needed |
| `07_RELEASE` | Dorado | `#F59E0B` | Historical releases | Documentation — Manuel |
| `08_SAFETY_QUALITY` | Rojo oscuro | `#B91C1C` | Safety, FMEA, hazards and quality | Safety — Jon Doe |
| `08_ARCHIVE` / `99_ARCHIVE` | Gris | `#9CA3AF` | Historical, obsolete or frozen material | Project Control |
| `09_DOCUMENTATION` | Azul claro | `#56CCF2` | Reports, figures and documentation | Documentation — Manuel |
| `10_STEM_MEDIA_SPONSORS` | Rosa | `#FF6B9A` | Outreach, sponsors and media | Owner needed |
| `11_MEETINGS` | Celeste | `#38BDF8` | Minutes and reviews | Project Control |
| `12_TEMPLATES` | Lavanda | `#A78BFA` | Controlled templates | Vault owner needed |
| `13_SOFTWARE` | Verde fuerte | `#16A34A` | Versioned code and configuration | Software/Control — Jhoe Marin |
| `14_LATEX_REPORTS` | Azul documento | `#0EA5E9` | Formal LaTeX sources | Documentation — Manuel |
| `15_CAD_DRIVE_LINKS` | Naranja CAD | `#F97316` | CAD masters indexed in Drive | Mechanical/CAD — Israel Silva |
| `16_TEST_DATA` | Lima evidencia | `#84CC16` | Logs, data and test evidence | Test — Pops Racer |
| `17_AI_AGENTS` | Violeta IA | `#7C3AED` | Agents, prompts, outputs and audit | AI workflow owner needed |
| `18_DELIVERABLES` | Dorado | `#F59E0B` | Frozen deliverables | Documentation — Manuel |

## Visual rules

- Red is reserved for electrical and safety domains, not urgency.
- Dark red belongs only to safety and hazards.
- Gold belongs to releases and deliverables.
- Gray belongs to archived or historical material.
- One main color per root folder.
- Never color by person.
- Never infer status from color.
- Technical notes, heatmaps and Dataview data remain unchanged.

## CSS snippet

The active snippet is `.obsidian/snippets/herc-folder-colors.css`. It colors only the file explorer:

- root folder text and a soft background;
- a visible left-edge marker;
- nested folders and files with reduced intensity;
- hover and keyboard focus;
- light and dark themes.

Disable it in **Settings → Appearance → CSS snippets → herc-folder-colors** to return immediately to the default explorer.

## Manual plugin alternatives

If the team later uses **File Color**, **Folder Color**, **Color Folders and Files** or **Iconize**:

1. Assign an owner for the visual configuration.
2. Reuse the hex values in this guide.
3. Apply color only at root-folder level.
4. Use icons for object type, never for approval or technical state.
5. Test light and dark modes.
6. Keep this CSS snippet as the documented fallback.
7. Record plugin/version changes in `PLUGIN_SETUP.md`.

Avoid maintaining two competing color systems at the same time.
