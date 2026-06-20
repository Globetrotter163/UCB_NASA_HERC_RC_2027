---
type: canonical_paths
date: 2026-06-20
status: proposed
migration_executed: false
---

# Rutas canónicas

Este documento define roles canónicos para navegación, nuevos documentos y una migración futura. No autoriza movimientos, renombres ni eliminaciones.

## Regla de uso inmediato

- Crear contenido nuevo únicamente en la ruta canónica correspondiente.
- Conservar contenido histórico en su ubicación actual hasta una migración aprobada.
- Los registros agregados son índices humanos; las subcarpetas de objetos contienen una nota por entidad para Dataview.
- Si dos rutas cumplen la misma función, enlazar ambas y marcar la duplicidad; no consolidarlas silenciosamente.

## Rutas actuales y roles canónicos

| Ruta actual | Rol canónico | Destino futuro | Estado | Prioridad de migración | Responsable necesario |
|---|---|---|---|---|---|
| `.agents/` | Configuración local de agentes/herramientas | Mantener fuera de la memoria técnica | local_support | Baja | Responsable de herramientas |
| `.git/` | Historial y metadatos Git | Sin cambio | canonical_internal | Baja | Responsable del repositorio |
| `.obsidian/` | Configuración viva del vault | Sin cambio; no editar sin autorización | canonical_internal | Protección alta | Responsable del vault |
| `.tmp.drivedownload/` | Temporal de sincronización | No migrar; excluir de Git | transient | Limpieza alta | Responsable de Drive |
| `.tmp.driveupload/` | Temporal de sincronización | No migrar; excluir de Git | transient | Limpieza alta | Responsable de Drive |
| `00_DASHBOARD/` | Portada, estado y vistas derivadas | Sin cambio | canonical | Baja | Control del proyecto |
| `00_PROJECT_CONTROL/` | Gobernanza, inventario, calendario y migración | Sin cambio | canonical | Baja | Líder del proyecto |
| `01_Requirements/` | Fuentes, índices y trazabilidad de requisitos | Sin cambio | canonical | Media | Ingeniero de sistemas |
| `01_Requirements/Requirements/` | Una nota por requisito `REQ-*` | Sin cambio | canonical_object_store | Media | Responsable de requisitos |
| `02_MECHANICAL/` | Mecánica y CAD históricos | Notas a `03_MECHANICAL/`; CAD maestro a Drive | duplicate_historical | Alta | Responsables de mecánica y CAD |
| `02_Systems_Engineering/` | Arquitectura, ConOps y registros humanos | Sin cambio | canonical | Baja | Ingeniero de sistemas |
| `02_Systems_Engineering/Architecture/` | Carpeta histórica de arquitectura | Evaluar contra archivos canónicos de raíz | duplicate_historical | Media | Ingeniero de sistemas |
| `02_Systems_Engineering/Requirements/` | Carpeta histórica de requisitos de sistema | `01_Requirements/Requirements/` si corresponde | duplicate_historical | Media | Responsable de requisitos |
| `02_Systems_Engineering/Verification/` | Carpeta histórica de verificación | `01_Requirements/Verification_Matrix.md` y `07_TESTING_VALIDATION/` | duplicate_historical | Media | Líder de pruebas |
| `02_Systems_Engineering/Risk_Analysis/` | Carpeta histórica de análisis de riesgo | `02_Systems_Engineering/Risks/` | duplicate_historical | Media | Responsable de riesgos |
| `02_Systems_Engineering/Decisions/` | Una nota por decisión `DEC-*` | Sin cambio | canonical_object_store | Baja | Ingeniero de sistemas |
| `02_Systems_Engineering/Interfaces/` | Una nota por interfaz `ICD-*` | Sin cambio | canonical_object_store | Baja | Responsables de interfaz |
| `02_Systems_Engineering/Risks/` | Una nota por riesgo técnico `RSK-*` | Sin cambio | canonical_object_store | Baja | Responsable de riesgos |
| `03_MECHANICAL/` | Memoria mecánica canónica | Sin cambio | canonical | Media | Líder mecánico |
| `04_ELECTRICAL_ELECTRONICS/` | Memoria eléctrica/electrónica canónica | Sin cambio | canonical | Baja | Líder eléctrico |
| `05_SOFTWARE_CONTROL/` | Memoria de software y control | Sin cambio | canonical | Baja | Líder de software |
| `06_TASK_PAYLOADS/` | Memoria de cargas y tareas | Sin cambio | canonical | Baja | Líder de cargas |
| `07_TESTING_VALIDATION/` | Planes, índices y conclusiones de prueba | Sin cambio | canonical | Baja | Líder de pruebas |
| `07_TESTING_VALIDATION/Tests/` | Una nota por prueba `TST-*` | Sin cambio | canonical_object_store | Baja | Líder de pruebas |
| `07_TESTING_VALIDATION/Failures/` | Una nota por falla `FR-*` | Sin cambio | canonical_object_store | Baja | Responsable de la falla |
| `08_SAFETY_QUALITY/` | Seguridad, calidad e índices humanos | Sin cambio | canonical | Baja | Líder de seguridad |
| `08_SAFETY_QUALITY/Hazards/` | Una nota por peligro `HAZ-*` | Sin cambio | canonical_object_store | Baja | Líder de seguridad |
| `09_DOCUMENTATION/` | Preparación documental y listas | Sin cambio | canonical | Baja | Líder de documentación |
| `10_STEM_MEDIA_SPONSORS/` | STEM, medios, patrocinadores, presupuesto y compras | Sin cambio | canonical | Baja | Responsable de divulgación/finanzas |
| `10_STEM_MEDIA_SPONSORS/Procurement/` | Una nota por compra `PRC-*` | Sin cambio | canonical_object_store | Baja | Responsable de adquisiciones |
| `11_MEETINGS/` | Minutas y revisiones | Sin cambio | canonical | Baja | Control del proyecto |
| `12_TEMPLATES/` | Plantillas controladas | Sin cambio | canonical | Baja | Responsable del vault |
| `13_SOFTWARE/` | Código, pruebas y configuración versionable | Sin cambio | canonical | Baja | Líder de software |
| `14_LATEX_REPORTS/` | Fuentes formales LaTeX | Sin cambio | canonical | Baja | Líder de documentación |
| `15_CAD_DRIVE_LINKS/` | Índices, responsables y versiones de CAD en Drive | Sin cambio | canonical | Baja | Responsable de CAD |
| `16_TEST_DATA/` | Datos, registros, análisis y evidencia | Sin cambio | canonical | Baja | Responsable de pruebas/datos |
| `17_AI_AGENTS/` | Reglas, tareas y resultados no oficiales de agentes | Sin cambio | canonical | Baja | Responsable del flujo de IA |
| `18_DELIVERABLES/` | Índices y paquetes congelados | Sin cambio | canonical | Baja | Líder de documentación |
| `18_DELIVERABLES/Deliverable_Items/` | Una nota por entregable `DOC-*` | Sin cambio | canonical_object_store | Baja | Responsable del entregable |
| `99_ARCHIVE/` | Material congelado u obsoleto | Sin cambio | canonical | Baja | Control del proyecto |

## Carpetas históricas detectadas previamente

Estas rutas figuran en el inventario inicial o en estados Git anteriores. Las marcadas como ausentes no deben recrearse automáticamente.

| Ruta actual | Rol canónico | Destino futuro | Estado | Prioridad de migración | Responsable necesario |
|---|---|---|---|---|---|
| `00_PROJECT/` | Antigua gestión de proyecto | `00_PROJECT_CONTROL/` y `11_MEETINGS/` | historical_not_present | HIGH review | Project Lead |
| `00_Index/` | Antiguo índice/portada/minutas | `00_DASHBOARD/` y `11_MEETINGS/` | historical_not_present | MEDIUM review | Vault owner |
| `01_Requirements/` | Requisitos históricos y actuales | Mismo path canónico | retained_and_canonical | LOW | Requirements owner |
| `02_MECHANICAL/` | Mecánica/CAD históricos | `03_MECHANICAL/` + Drive/index | present_duplicate | HIGH | Mechanical + CAD owner |
| `02_Systems_Engineering/` | Sistemas histórico y actual | Mismo path canónico | retained_and_canonical | LOW | Systems Engineer |
| `03_ELECTRICAL/` | Eléctrica histórica | `04_ELECTRICAL_ELECTRONICS/` | historical_not_present | MEDIUM review | Electrical Lead |
| `04_SOFTWARE/` | Software histórico | `05_SOFTWARE_CONTROL/` y `13_SOFTWARE/` | historical_not_present | MEDIUM review | Software Lead |
| `05_TESTING/` | Pruebas históricas | `07_TESTING_VALIDATION/` y `16_TEST_DATA/` | historical_not_present | MEDIUM review | Test Lead |
| `06_RENDERS/` | Fotos, renders y presentaciones | Drive + índices documentales | historical_not_present | MEDIUM review | Media/CAD owner |
| `07_RELEASE/` | Releases históricos | `18_DELIVERABLES/` | historical_not_present | MEDIUM review | Documentation Lead |
| `08_ARCHIVE/` | Archivo histórico | `99_ARCHIVE/` | historical_not_present | LOW review | Project Control |

## Duplicidades funcionales abiertas

| Función | Path histórico/duplicado | Path canónico | Resolución pendiente |
|---|---|---|---|
| Mecánica | `02_MECHANICAL/` | `03_MECHANICAL/` | Clasificar notas vs. CAD y preservar enlaces |
| Arquitectura | `02_Systems_Engineering/Architecture/` | Archivos raíz de `02_Systems_Engineering/` | Comparar contenido y revisiones |
| Requisitos de sistema | `02_Systems_Engineering/Requirements/` | `01_Requirements/Requirements/` | Determinar si son requisitos o análisis |
| Riesgos | `Risk_Analysis/` y `Risk_Register.md` | `Risks/` + índice humano | Crear nota individual por riesgo |
| Interfaces | `Interface_Control_Document.md` | `Interfaces/` + índice humano | Mantener ambos como vistas complementarias |

## Convención Dataview

| Objeto | Carpeta | ID | `type` | Índice/registro |
|---|---|---|---|---|
| Requisito | `01_Requirements/Requirements/` | `REQ-000` | `requirement` | `Requirements_Traceability_Matrix.md` |
| Decisión | `02_Systems_Engineering/Decisions/` | `DEC-000` | `decision` | `Decision_Log.md` |
| Interfaz | `02_Systems_Engineering/Interfaces/` | `ICD-000` | `interface` | `Interface_Control_Document.md` |
| Riesgo | `02_Systems_Engineering/Risks/` | `RSK-000` | `risk` | `Risk_Register.md` |
| Prueba | `07_TESTING_VALIDATION/Tests/` | `TST-000` | `test` | `Test_Log_Index.md` |
| Falla | `07_TESTING_VALIDATION/Failures/` | `FR-000` | `failure_report` | `Failure_Reports.md` |
| Peligro | `08_SAFETY_QUALITY/Hazards/` | `HAZ-000` | `hazard` | `Hazard_Log.md` |
| Adquisición | `10_STEM_MEDIA_SPONSORS/Procurement/` | `PRC-000` | `procurement` | `Procurement_Log.md` |
| Entregable | `18_DELIVERABLES/Deliverable_Items/` | `DOC-000` | `deliverable` | `Deliverables_Index.md` |
