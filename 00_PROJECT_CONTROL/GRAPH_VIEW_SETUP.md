---
type: workspace_setup
status: configured
owner: Vault owner
---

# Configuración de la vista de grafo

La vista de grafo está configurada con filtros y grupos por área. Visualiza enlaces; no demuestra trazabilidad completa ni aprobación.

## Filtro global aplicado

```text
-path:"99_ARCHIVE" -path:".obsidian" -path:"17_AI_AGENTS/03_AGENT_OUTPUTS" -path:".tmp.drivedownload" -path:".tmp.driveupload"
```

También se recomienda ocultar adjuntos, mostrar solo archivos existentes y dejar los huérfanos desactivados durante la navegación cotidiana.

## Grupos y colores

| Grupo | Búsqueda | Color |
|---|---|---|
| Requisitos | `path:"01_Requirements"` | `#F2C94C` |
| Sistemas | `path:"02_Systems_Engineering"` | `#9B51E0` |
| Mecánica | `path:"03_MECHANICAL" OR path:"02_MECHANICAL"` | `#F2994A` |
| Eléctrica | `path:"04_ELECTRICAL_ELECTRONICS"` | `#EB5757` |
| Software | `path:"05_SOFTWARE_CONTROL" OR path:"13_SOFTWARE"` | `#27AE60` |
| Cargas | `path:"06_TASK_PAYLOADS"` | `#2D9CDB` |
| Pruebas | `path:"07_TESTING_VALIDATION" OR path:"16_TEST_DATA"` | `#6FCF97` |
| Seguridad | `path:"08_SAFETY_QUALITY"` | `#B91C1C` |
| Documentación | `path:"09_DOCUMENTATION" OR path:"14_LATEX_REPORTS"` | `#56CCF2` |
| Agentes de IA | `path:"17_AI_AGENTS"` | `#7C3AED` |
| Entregables | `path:"18_DELIVERABLES"` | `#F59E0B` |

## Etiquetas técnicas opcionales

Las propiedades YAML continúan siendo primarias. Use etiquetas solo como ayuda:

| Objeto | Etiqueta |
|---|---|
| Requisito | `#herc/requirement` |
| Interfaz | `#herc/interface` |
| Decisión | `#herc/decision` |
| Riesgo | `#herc/risk` |
| Prueba | `#herc/test` |
| Falla | `#herc/failure` |
| Peligro | `#herc/hazard` |
| Entregable | `#herc/deliverable` |

No añada etiquetas mecánicamente a archivos históricos sin revisión.

## Búsqueda de trazabilidad

```text
(path:"01_Requirements/Requirements" OR path:"02_Systems_Engineering/Interfaces" OR path:"02_Systems_Engineering/Risks" OR path:"07_TESTING_VALIDATION/Tests") -[status:example]
```

Para incluir decisiones:

```text
(path:"01_Requirements/Requirements" OR path:"02_Systems_Engineering/Decisions" OR path:"02_Systems_Engineering/Interfaces" OR path:"02_Systems_Engineering/Risks" OR path:"07_TESTING_VALIDATION/Tests") -[status:example]
```

Referencia: [Vista de grafo de Obsidian](https://obsidian.md/help/Plugins/Graph%2Bview).
