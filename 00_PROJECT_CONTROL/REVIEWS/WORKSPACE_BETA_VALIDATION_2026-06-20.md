---
type: workspace_validation
version: 0.1-beta
date: 2026-06-20
status: automated_checks_passed_manual_checks_pending
owner: Project Control
---

# Validación de la beta del espacio de trabajo — 2026-06-20

## Resultado automatizado

| Comprobación | Resultado |
|---|---|
| Archivos Markdown revisados | 209 |
| Enlaces internos rotos | 0 |
| Enlaces ambiguos | 0 |
| Tablas Markdown con columnas inconsistentes | 0 |
| Bloques de código sin cierre | 0 |
| Rutas `FROM` de Dataview inexistentes | 0 |
| JSON de `.obsidian/` con error de sintaxis | 0 de 36 |
| Frontmatter sin cierre | 0 |
| Claves repetidas en frontmatter | 0 |
| Plantillas sin `type` o `status` | 0 de 15 |
| Rutas de plantillas o destinos QuickAdd inexistentes | 0 |
| Notas de ejemplo con estado incorrecto | 0 |
| Archivos Markdown vacíos fuera de respaldos exactos | 0 |
| Posibles secretos en contenido del proyecto | 0 |
| Documentos con predominio claro de texto operativo en inglés | 0 |

## Configuración comprobada

- Notas diarias, Plantillas, Bases y Grafo están habilitados.
- Notas diarias crean `YYYY-MM-DD` en `00_PROJECT_CONTROL/DAILY_STATUS`.
- Templater y el complemento nativo de plantillas usan `12_TEMPLATES`.
- QuickAdd contiene un menú de diez acciones en español.
- QuickAdd evita sobrescritura silenciosa, deshabilita funciones en línea y no contiene claves de API.
- Existe un instalador sanitizado y versionable para QuickAdd y Templater.
- El grafo contiene 11 grupos de color y filtros de ruido.
- El snippet `herc-folder-colors` está activo.
- Full Calendar no contiene una fuente externa configurada.
- Homepage no está instalado y se documenta como opcional.

## Delimitación de ejemplos e historia

- Cinco objetos `*-000_Example.md` usan `status: example`.
- `00_PROJECT_CONTROL/DAILY_STATUS/0001_Daily_Status.md` también usa `status: example`.
- Seis notas históricas vacías de `02_MECHANICAL/` ahora son marcadores `status: archived` con enlace canónico.
- Tres archivos vacíos en `99_ARCHIVE/Migration_Backups/` permanecen intactos porque son copias exactas del estado previo.
- No se movió ni renombró ningún directorio principal.

## Excepciones deliberadas al español

Se conservan en inglés:

- nombres de directorios y archivos existentes;
- claves YAML como `type`, `status`, `owner` y `date`;
- valores controlados como `draft`, `approved`, `verified`, `example` y `closed`;
- nombres de complementos, productos, siglas y comandos;
- rutas, consultas Dataview, etiquetas y código.

Traducir estos elementos rompería conexiones o automatizaciones. Todo el texto operativo y las instrucciones para personas se mantienen en español.

## Validación manual pendiente

La inspección de archivos no demuestra el renderizado visual dentro de Obsidian. Una persona debe completar:

- creación de una nota de cada tipo mediante QuickAdd;
- apertura de la nota diaria de hoy;
- renderizado de Dataview, Tasks y los cuatro mapas de calor;
- visualización del calendario local;
- revisión del grafo;
- legibilidad del snippet en tema claro y oscuro;
- creación de vistas Bases desde la interfaz;
- revisión final de `git diff`.

Use [[WORKSPACE_FRICTION_ACCEPTANCE_CHECKLIST|Lista de aceptación]] para registrar el resultado humano.
