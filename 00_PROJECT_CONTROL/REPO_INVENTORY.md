---
type: repository_inventory
inspection_date: 2026-06-20
status: baseline
---

# Repository Inventory

Inspección no destructiva realizada el **2026-06-20** antes del bootstrap. No se inspeccionó ni modificó contenido binario.

## Estado de la raíz detectado

Carpetas preexistentes:

- `.git/`
- `.obsidian/`
- `.tmp.drivedownload/`
- `.tmp.driveupload/`
- `00_Index/`
- `01_Requirements/`
- `02_MECHANICAL/`
- `02_Systems_Engineering/`
- `03_ELECTRICAL/`
- `04_SOFTWARE/`
- `05_TESTING/`
- `06_RENDERS/`
- `07_RELEASE/`
- `08_ARCHIVE/`

Archivo raíz detectado: `README.md`, vacío (0 bytes). Se preservó una copia en `99_ARCHIVE/Migration_Backups/README.pre-bootstrap.2026-06-20.md` antes de completarlo.

## Archivos principales encontrados

- Índice histórico: `00_Index/HOME.md`, `PROJECT_MAP.md`, `GLOSSARY.md`.
- Requisitos: `01_Requirements/HERC_REQUIREMENTS.md`, `DERIVED_REQUIREMENTS.md`.
- Sistemas: contenido existente bajo `02_Systems_Engineering/`.
- Mecánica/CAD: modelos SolidWorks, notas de CAD, manufactura, BOM, cálculos y FEA bajo `02_MECHANICAL/`.
- Eléctrica: datasheets, PCB y schematics bajo `03_ELECTRICAL/`.
- Software: `04_SOFTWARE/Software.md`.
- Pruebas: `05_TESTING/TESTS.md`.
- Renders/medios: notas y `06_RENDERS/Photos/Logo_Discord.png`.
- Release: `07_RELEASE/Releases.md`.
- Archivo: handbook NASA HERC 2026 y propuesta universitaria 2026 en PDF.

## Archivos potencialmente grandes

| Archivo/área | Tamaño aproximado | Observación |
|---|---:|---|
| `08_ARCHIVE/nasas-herc-2026-handbook (1).pdf` | 10.96 MB | Referencia histórica |
| `.tmp.driveupload/*` | varios, hasta 10.14 MB | Temporales de sincronización; no migrar ni versionar |
| `02_MECHANICAL/.../V0.2.SLDASM` | 1.29 MB | CAD master; candidato a Drive |
| `08_ARCHIVE/2026-University RC-Proposal.pdf` | 1.09 MB | Entregable histórico |
| `06_RENDERS/Photos/Logo_Discord.png` | 1.05 MB | Activo multimedia |

## CAD detectado

Se detectaron al menos **9 `.SLDPRT`** y **3 `.SLDASM`** visibles, principalmente en:

- `02_MECHANICAL/CAD/Powertrain/AGB Transmision V0.2/`
- `02_MECHANICAL/CAD/Powertrain/AGB_V0.1/`

No se movieron ni abrieron. `.gitignore` ahora evita incorporar nuevos masters SolidWorks por accidente.

## LaTeX detectado

No se detectaron archivos `.tex` o `.bib` preexistentes en la inspección inicial. Se creó la estructura fuente en `14_LATEX_REPORTS/`.

## Software detectado

Solo se detectó documentación en `04_SOFTWARE/Software.md`; no se identificaron fuentes por extensión en el listado inicial. Se creó `13_SOFTWARE/` para código y configuración versionable.

## Markdown detectado

Se detectaron **23 archivos Markdown** antes del bootstrap. Ninguno fue movido ni sobrescrito. Las colisiones de nombre por mayúsculas/minúsculas en `01_Requirements/` y `02_Systems_Engineering/` se conservaron.

## Estado de Obsidian

- `.obsidian/`: detectado.
- Archivos detectados bajo `.obsidian/`: 35.
- Huella agregada SHA-256 previa al bootstrap: `FFAD0903D758E2BB03C6353AB6DE454B792AD4C59CB5A88D79276E6CFBDB5875`.
- Había cambios Git preexistentes en `.obsidian/app.json` y `.obsidian/workspace.json`.
- Ningún comando del bootstrap escribió en `.obsidian/`.
- Durante la validación, una aplicación externa activa (Obsidian y/o sincronización) autoactualizó archivos de estado, incluido `workspace.json`, al detectar las notas nuevas. Por seguridad no se revirtió ni editó esa configuración. Consulte `REVIEWS/BOOTSTRAP_VALIDATION_2026-06-20.md`.

### Plugins detectados

| Plugin | ID | Versión | Estado |
|---|---|---:|---|
| Dataview | `dataview` | 0.5.68 | INSTALLED |
| Heatmap Calendar | `heatmap-calendar` | 0.7.1 | INSTALLED |
| Tasks | `obsidian-tasks-plugin` | 8.2.1 | INSTALLED |
| Templater | `templater-obsidian` | 2.20.5 | INSTALLED |
| Excalidraw | `obsidian-excalidraw-plugin` | 2.24.2 | INSTALLED |
| Obsidian Git | `obsidian-git` | 2.38.5 | INSTALLED |

## Estado Git preexistente

El repositorio ya estaba “dirty” antes del bootstrap: incluía modificaciones, eliminaciones y archivos no rastreados. En particular, Git mostraba eliminaciones bajo una estructura histórica `00_PROJECT/` y algunos archivos CAD. El bootstrap no restauró, movió ni eliminó esos elementos. Se requiere revisión humana antes de cualquier commit.
