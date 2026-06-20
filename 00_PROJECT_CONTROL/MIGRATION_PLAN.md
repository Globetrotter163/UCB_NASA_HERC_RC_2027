---
type: migration_plan
date: 2026-06-20
status: proposed
execution_authorized: false
---

# Migration Plan

## Alcance

Propuesta para armonizar la estructura histórica con el nuevo mapa del vault. **No se ejecutó ningún movimiento, renombre, borrado o archivado.**

## Resumen de lo detectado

- Índices y minutas en `00_Index/`.
- Requisitos ya existentes en `01_Requirements/`.
- Systems Engineering existente con casing diferente al solicitado.
- Mecánica histórica y CAD pesado en `02_MECHANICAL/`.
- Eléctrica histórica en `03_ELECTRICAL/`.
- Software histórico en `04_SOFTWARE/`.
- Pruebas históricas en `05_TESTING/`.
- Renders/medios en `06_RENDERS/`.
- Releases en `07_RELEASE/`.
- PDFs históricos en `08_ARCHIVE/`.
- Cambios Git preexistentes y temporales de Google Drive.

## Propuesta de destino

| Origen | Destino propuesto | Confianza | Acción recomendada | Motivo |
|---|---|---|---|---|
| `00_Index/HOME.md` | Conservar y enlazar desde `00_DASHBOARD/Home.md` | HIGH | keep | Índice histórico útil |
| `00_Index/PROJECT_MAP.md` | Revisar contra dashboard y luego decidir | MEDIUM | review | Puede contener contexto no migrado |
| `00_Index/Meeting Notes/*` | `11_MEETINGS/` según tipo | HIGH | move_later | Centralizar minutas después de asignar IDs |
| `01_Requirements/HERC_REQUIREMENTS.md` | Mantener como fuente existente | HIGH | keep | Colisiona por casing con nombre solicitado |
| `01_Requirements/DERIVED_REQUIREMENTS.md` | Mantener como fuente existente | HIGH | keep | Colisiona por casing con nombre solicitado |
| `02_Systems_Engineering/` | Mantener ubicación actual | HIGH | keep | Windows trata el casing como la misma ruta |
| `02_MECHANICAL/` notas técnicas | `03_MECHANICAL/` o enlaces desde allí | MEDIUM | review | Requiere owner y revisión de enlaces |
| `02_MECHANICAL/` CAD master | Google Drive + índice en `15_CAD_DRIVE_LINKS/` | HIGH | move_later | Evitar CAD pesado en Git |
| `03_ELECTRICAL/` | `04_ELECTRICAL_ELECTRONICS/` | MEDIUM | review | Revisar enlaces y ownership |
| `04_SOFTWARE/Software.md` | `05_SOFTWARE_CONTROL/` como memoria; código a `13_SOFTWARE/` | MEDIUM | review | Separar documentación de código |
| `05_TESTING/TESTS.md` | `07_TESTING_VALIDATION/` | HIGH | move_later | Alinear planes y resultados |
| `06_RENDERS/` | Drive; índices en documentación/STEM/CAD | MEDIUM | review | Clasificar fotos, video y presentaciones |
| `07_RELEASE/Releases.md` | `18_DELIVERABLES/Deliverables_Index.md` | MEDIUM | review | Distinguir release interno de envío oficial |
| `08_ARCHIVE/*.pdf` | `99_ARCHIVE/Previous_Deliverables/` o referencias | HIGH | archive_later | Material 2026, conservar contexto |
| `.tmp.driveupload/`, `.tmp.drivedownload/` | Ninguno | HIGH | keep | Estado temporal de sincronización; no tocar durante sync |

## Reglas para una segunda pasada

1. Congelar actividad de sincronización de Drive.
2. Revisar `git status` y recuperar/confirmar eliminaciones preexistentes.
3. Aprobar cada fila con owner.
4. Crear backup verificable antes de mover.
5. Actualizar enlaces Obsidian y registrar cada acción en `MIGRATION_LOG.md`.
6. Validar que Git no incorpore CAD o binarios pesados.

## Preguntas para el equipo

- ¿Las eliminaciones Git bajo `00_PROJECT/` fueron intencionales?
- ¿`00_Index/` seguirá como índice histórico o debe congelarse?
- ¿Qué ubicación en Google Drive será el CAD master oficial?
- ¿Quién puede liberar y bloquear archivos CAD?
- ¿Los documentos de requisitos actuales son baseline, borrador o material 2026?
- ¿Qué documentos de `07_RELEASE/` fueron realmente enviados?
- ¿Debe conservarse `06_RENDERS/` localmente o solo su índice?
- ¿Qué ramas/repositorios alojarán firmware, telemetría y control?
