---
type: git_cleanup_plan
date: 2026-06-20
status: proposed
execution_authorized: false
---

# Git Cleanup Plan

Este documento contiene comandos sugeridos. **No se ejecutó `git rm`, no se cambió el índice y no se creó ningún commit.**

## Hallazgos

| Hallazgo | Estado actual | Riesgo | Recomendación |
|---|---|---|---|
| `.obsidian/workspace.json` | Rastreado e ignorado simultáneamente | Cambios locales frecuentes y conflictos | Sacar solo del tracking |
| `.obsidian/plugins/` | 29 archivos de plugins rastreados, varios binarios JS grandes | Crecimiento del repo, actualizaciones ruidosas, vendor code | Definir política y posiblemente sacar del tracking |
| `.tmp.drivedownload/`, `.tmp.driveupload/` | Ignorados y no rastreados | Bajo mientras siga así | Mantener |
| CAD SolidWorks | Ignorado; no hay masters binarios rastreados actualmente | Alto si se fuerza su incorporación | Mantener en Drive |
| Videos | Ignorados y no rastreados | Tamaño del repositorio | Mantener en Drive |
| `02_MECHANICAL/` | Solo notas/placeholders de texto rastreados | Duplicidad funcional, no tamaño | Resolver en migración, no con cleanup Git |

## Phase A1 — revisión previa

Ejecutar solo después de cerrar Obsidian y pausar sincronización:

```powershell
git status --short --branch
git ls-files -ci --exclude-standard
git ls-files ".obsidian/**"
git ls-files | Select-String -Pattern '\.(SLDPRT|SLDASM|SLDDRW|mp4|mov|avi|mkv)$'
```

Revisar el resultado antes de modificar el índice.

## Phase A2 — sacar workspace local del tracking

Comando recomendado, pendiente de aprobación:

```powershell
git rm --cached -- .obsidian/workspace.json
git status --short
git diff --cached -- .obsidian/workspace.json
```

`--cached` conserva el archivo local y solo propone retirarlo del índice Git.

## Phase A3 — política para plugins

### Opción recomendada: no versionar binarios instalados

1. Agregar a `.gitignore`:

```gitignore
.obsidian/plugins/
```

2. Después, y solo con aprobación:

```powershell
git rm -r --cached -- .obsidian/plugins
git status --short
git diff --cached --stat
```

Conservar `community-plugins.json` y `PLUGIN_SETUP.md` como inventario reproducible si el equipo acepta esta política.

### Opción alternativa: versionar plugins

Mantener el estado actual, asignar un owner y exigir revisión explícita de upgrades. Esta opción aumenta el tamaño y ruido del repositorio.

## Phase A4 — si aparece un CAD/video ya rastreado

No ejecutar con globs sin revisar primero la lista exacta. Para cada archivo aprobado:

```powershell
git rm --cached -- "ruta\exacta\archivo.SLDPRT"
git rm --cached -- "ruta\exacta\video.mp4"
git status --short
git diff --cached --stat
```

Después verificar que el archivo exista localmente y que su copia oficial esté en Drive e indexada en `15_CAD_DRIVE_LINKS/`.

## Validación antes de commit

```powershell
git status --short
git diff
git diff --cached
git check-ignore -v -- .obsidian/workspace.json
```

El commit debe ser manual, pequeño y describir únicamente limpieza de tracking. No combinarlo con una migración de contenido.
