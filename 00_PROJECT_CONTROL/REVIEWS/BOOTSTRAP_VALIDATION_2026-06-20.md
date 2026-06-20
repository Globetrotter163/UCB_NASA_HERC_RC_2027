---
type: bootstrap_validation
date: 2026-06-20
status: historical
---

# Validación de la estructura inicial — 2026-06-20

> [!info] Registro histórico
> Este informe describe la primera creación de estructura. La configuración actual se valida en [[WORKSPACE_FRICTION_ACCEPTANCE_CHECKLIST]] y en el informe de beta más reciente.

## Resultado de aquella pasada

- Archivos requeridos comprobados: 172.
- Archivos requeridos faltantes: 0.
- Archivos requeridos vacíos: 0.
- Vault anidado prohibido `01_OBSIDIAN_VAULT`: ausente.
- Complementos instalados o descargados por esa pasada: 0.
- Archivos existentes movidos o eliminados por esa pasada: 0.
- Commits creados: 0.

## Observación de integridad de `.obsidian/`

Huella agregada anterior:

`FFAD0903D758E2BB03C6353AB6DE454B792AD4C59CB5A88D79276E6CFBDB5875`

Huella durante aquella validación:

`9150E1B019BFCA9F4D4BE8A102646328683CF8AE18A2124A75E2788E974A8B03`

El número de archivos permaneció en 35, pero la huella cambió mientras Obsidian o la sincronización estaban activos. En particular, `workspace.json` actualizó el archivo activo y la lista de recientes. No se revirtieron esos cambios porque eran estado vivo y no existía un respaldo byte a byte.

Para futuras comparaciones exactas, cierre Obsidian y pause la sincronización.

## Riesgo Git preexistente

Antes de aquella creación inicial, Git ya informaba modificaciones, eliminaciones y archivos no rastreados. Estos elementos requerían revisión humana antes de preparar o confirmar cambios.

## Validación de paneles

Los cuatro mapas de calor contenían:

- bloque DataviewJS;
- protección cuando falta `renderHeatmapCalendar`;
- exclusión de `status: example`;
- respaldo Dataview visible.

El renderizado completo requiere Dataview y Heatmap Calendar habilitados.
