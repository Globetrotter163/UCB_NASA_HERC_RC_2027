---
type: migration_plan
date: 2026-06-20
status: proposed
execution_authorized: false
---

# Plan de migración

## Alcance

Propuesta para armonizar la estructura histórica con el nuevo mapa del vault. **No se ejecutó ningún movimiento, renombre, borrado o archivado.**

## Resumen de lo detectado

- Índices y minutas en `00_Index/`.
- Requisitos ya existentes en `01_Requirements/`.
- Ingeniería de sistemas existente con uso de mayúsculas diferente al solicitado.
- Mecánica histórica y CAD pesado en `02_MECHANICAL/`.
- Eléctrica histórica en `03_ELECTRICAL/`.
- Software histórico en `04_SOFTWARE/`.
- Pruebas históricas en `05_TESTING/`.
- Renders/medios en `06_RENDERS/`.
- Versiones en `07_RELEASE/`.
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
| `02_MECHANICAL/` notas técnicas | `03_MECHANICAL/` o enlaces desde allí | MEDIUM | review | Requiere responsable y revisión de enlaces |
| `02_MECHANICAL/` CAD maestro | Google Drive + índice en `15_CAD_DRIVE_LINKS/` | HIGH | move_later | Evitar CAD pesado en Git |
| `03_ELECTRICAL/` | `04_ELECTRICAL_ELECTRONICS/` | MEDIUM | review | Revisar enlaces y responsables |
| `04_SOFTWARE/Software.md` | `05_SOFTWARE_CONTROL/` como memoria; código a `13_SOFTWARE/` | MEDIUM | review | Separar documentación de código |
| `05_TESTING/TESTS.md` | `07_TESTING_VALIDATION/` | HIGH | move_later | Alinear planes y resultados |
| `06_RENDERS/` | Drive; índices en documentación/STEM/CAD | MEDIUM | review | Clasificar fotos, video y presentaciones |
| `07_RELEASE/Releases.md` | `18_DELIVERABLES/Deliverables_Index.md` | MEDIUM | review | Distinguir release interno de envío oficial |
| `08_ARCHIVE/*.pdf` | `99_ARCHIVE/Previous_Deliverables/` o referencias | HIGH | archive_later | Material 2026, conservar contexto |
| `.tmp.driveupload/`, `.tmp.drivedownload/` | Ninguno | HIGH | keep | Estado temporal de sincronización; no tocar durante sync |

## Reglas para una segunda pasada

1. Congelar actividad de sincronización de Drive.
2. Revisar `git status` y recuperar/confirmar eliminaciones preexistentes.
3. Aprobar cada fila con responsable.
4. Crear backup verificable antes de mover.
5. Actualizar enlaces Obsidian y registrar cada acción en `MIGRATION_LOG.md`.
6. Validar que Git no incorpore CAD o binarios pesados.

## Migración por fases

Ninguna fase está autorizada para ejecución. Cada fase requiere revisión de diferencias, responsable y criterio de reversión.

### Fase A — limpieza Git y protección de temporales

Objetivo: separar estado local, archivos de terceros y binarios pesados del contenido técnico versionable.

- Revisar `GIT_CLEANUP_PLAN.md`.
- Retirar `.obsidian/workspace.json` del seguimiento con `git rm --cached` si se aprueba.
- Definir si `.obsidian/plugins/` debe permanecer versionado.
- Confirmar que temporales de Drive, CAD maestro y videos no estén rastreados.
- Cerrar Obsidian y pausar Drive durante la operación.

**Criterio de salida:** `git status` entendido, archivos locales preservados y política de seguimiento aprobada.

### Fase B — consolidación de índices

Objetivo: acordar qué registros humanos siguen vigentes sin mover notas técnicas.

- Validar `CANONICAL_PATHS.md`.
- Comparar índices históricos con `Decision_Log`, ICD, Risk Register, Test Log y Deliverables Index.
- Asignar responsables y marcar duplicidades.
- Crear enlaces cruzados y registrar decisiones de conservación.

**Criterio de salida:** un índice humano designado por objeto y sin fuentes ambiguas.

### Fase C — migración de notas técnicas

Objetivo: trasladar contenido histórico revisado a rutas canónicas y notas de objeto.

- Migrar una disciplina o tipo de objeto por lote pequeño.
- Crear backup y mapa origen-destino antes de cada lote.
- Asignar IDs y frontmatter sin inventar estado o evidencia.
- Actualizar enlaces Obsidian y registrar cada movimiento en `MIGRATION_LOG.md`.

**Criterio de salida:** enlaces válidos, contenido preservado y revisión del responsable.

### Fase D — CAD a Drive e índices

Objetivo: retirar archivos maestros CAD pesados del repositorio de trabajo y controlar sus versiones.

- Definir carpeta de Drive, permisos, responsable y política de bloqueo.
- Verificar hashes/revisiones antes de retirar tracking.
- Completar índice CAD, responsables y registros de bloqueo y versiones.
- Mantener en Git solo notas, índices y exports expresamente aprobados.

**Criterio de salida:** CAD maestro verificable en Drive y trazable a una línea base.

### Fase E — validación de paneles

Objetivo: comprobar que objetos individuales e índices humanos producen vistas consistentes.

- Validar Dataview sobre Requirements, Decisions, Interfaces, Risks, Tests, Failures, Hazards, Procurement y Deliverables.
- Confirmar exclusión de `status: example`.
- Comparar consultas con registros humanos.
- Validar mapas de calor con notas reales y tablas de respaldo.
- Registrar discrepancias sin cambiar silenciosamente fuentes oficiales.

**Criterio de salida:** dashboards reproducibles y reconciliados con los índices humanos.

## Preguntas para el equipo

- ¿Las eliminaciones Git bajo `00_PROJECT/` fueron intencionales?
- ¿`00_Index/` seguirá como índice histórico o debe congelarse?
- ¿Qué ubicación en Google Drive será el CAD maestro oficial?
- ¿Quién puede liberar y bloquear archivos CAD?
- ¿Los documentos de requisitos actuales son baseline, borrador o material 2026?
- ¿Qué documentos de `07_RELEASE/` fueron realmente enviados?
- ¿Debe conservarse `06_RENDERS/` localmente o solo su índice?
- ¿Qué ramas/repositorios alojarán firmware, telemetría y control?
