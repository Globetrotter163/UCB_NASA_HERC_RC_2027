---
type: git_cleanup_plan
date: 2026-06-20
status: proposed
execution_authorized: false
---

# Plan de limpieza de Git

Este documento contiene comandos sugeridos. **No se ejecutó `git rm`, no se cambió el índice y no se creó ningún commit.**

## Hallazgos

| Hallazgo | Estado actual | Riesgo | Recomendación |
|---|---|---|---|
| `.obsidian/workspace.json` | Rastreado e ignorado simultáneamente | Cambios locales frecuentes y conflictos | Sacar solo del seguimiento |
| `.obsidian/plugins/` | Archivos de complementos rastreados, incluidos binarios JavaScript grandes | Crecimiento del repositorio, actualizaciones ruidosas y código de terceros | Definir política y posiblemente sacar del seguimiento |
| `.tmp.drivedownload/`, `.tmp.driveupload/` | Ignorados y no rastreados | Bajo mientras siga así | Mantener |
| CAD SolidWorks | Ignorado; no hay archivos maestros binarios rastreados actualmente | Alto si se fuerza su incorporación | Mantener en Drive |
| Videos | Ignorados y no rastreados | Tamaño del repositorio | Mantener en Drive |
| `02_MECHANICAL/` | Solo notas o marcadores de texto rastreados | Duplicidad funcional, no tamaño | Resolver en migración, no durante la limpieza de Git |

## Fase A1 — revisión previa

Ejecutar solo después de cerrar Obsidian y pausar sincronización:

```powershell
git status --short --branch
git ls-files -ci --exclude-standard
git ls-files ".obsidian/**"
git ls-files | Select-String -Pattern '\.(SLDPRT|SLDASM|SLDDRW|mp4|mov|avi|mkv)$'
```

Revisar el resultado antes de modificar el índice.

## Fase A2 — retirar el estado local del seguimiento

Comando recomendado, pendiente de aprobación:

```powershell
git rm --cached -- .obsidian/workspace.json
git status --short
git diff --cached -- .obsidian/workspace.json
```

`--cached` conserva el archivo local y solo propone retirarlo del índice Git.

## Fase A3 — política para complementos

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

### Opción alternativa: versionar complementos

Mantener el estado actual, asignar un responsable y exigir revisión explícita de actualizaciones. Esta opción aumenta el tamaño y ruido del repositorio.

## Fase A4 — si aparece un CAD o video ya rastreado

No ejecute con patrones globales sin revisar primero la lista exacta. Para cada archivo aprobado:

```powershell
git rm --cached -- "ruta\exacta\archivo.SLDPRT"
git rm --cached -- "ruta\exacta\video.mp4"
git status --short
git diff --cached --stat
```

Después verificar que el archivo exista localmente y que su copia oficial esté en Drive e indexada en `15_CAD_DRIVE_LINKS/`.

## Validación antes de crear un commit

```powershell
git status --short
git diff
git diff --cached
git check-ignore -v -- .obsidian/workspace.json
```

El commit debe ser manual, pequeño y describir únicamente la limpieza de seguimiento. No lo combine con una migración de contenido.
