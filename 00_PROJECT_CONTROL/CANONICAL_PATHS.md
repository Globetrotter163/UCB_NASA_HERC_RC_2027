---
type: canonical_paths
date: 2026-06-20
status: proposed
migration_executed: false
---

# Canonical Paths

Este documento define roles canónicos para navegación, nuevos documentos y una migración futura. No autoriza movimientos, renombres ni eliminaciones.

## Regla de uso inmediato

- Crear contenido nuevo únicamente en el path canónico correspondiente.
- Conservar contenido histórico en su ubicación actual hasta una migración aprobada.
- Los registros agregados son índices humanos; las subcarpetas de objetos contienen una nota por entidad para Dataview.
- Si dos rutas cumplen la misma función, enlazar ambas y marcar la duplicidad; no consolidarlas silenciosamente.

## Paths actuales y roles canónicos

| Current Path | Canonical Role | Future Target | Status | Migration Priority | Owner Needed |
|---|---|---|---|---|---|
| `.agents/` | Configuración local de agentes/herramientas | Mantener fuera de la memoria técnica | local_support | LOW | Tooling owner |
| `.git/` | Historial y metadatos Git | Sin cambio | canonical_internal | LOW | Repository owner |
| `.obsidian/` | Configuración viva del vault | Sin cambio; no editar sin autorización | canonical_internal | HIGH protection | Vault owner |
| `.tmp.drivedownload/` | Temporal de sincronización | No migrar; excluir de Git | transient | HIGH cleanup | Drive owner |
| `.tmp.driveupload/` | Temporal de sincronización | No migrar; excluir de Git | transient | HIGH cleanup | Drive owner |
| `00_DASHBOARD/` | Portada, estado y vistas derivadas | Sin cambio | canonical | LOW | Project Control |
| `00_PROJECT_CONTROL/` | Gobernanza, inventario, calendario y migración | Sin cambio | canonical | LOW | Project Lead |
| `01_Requirements/` | Fuentes, índices y trazabilidad de requisitos | Sin cambio | canonical | MEDIUM | Systems Engineer |
| `01_Requirements/Requirements/` | Una nota por requisito `REQ-*` | Sin cambio | canonical_object_store | MEDIUM | Requirements owner |
| `02_MECHANICAL/` | Mecánica y CAD históricos | Notas a `03_MECHANICAL/`; CAD master a Drive | duplicate_historical | HIGH | Mechanical + CAD owner |
| `02_Systems_Engineering/` | Arquitectura, ConOps y registros humanos | Sin cambio | canonical | LOW | Systems Engineer |
| `02_Systems_Engineering/Architecture/` | Carpeta histórica de arquitectura | Evaluar contra archivos canónicos de raíz | duplicate_historical | MEDIUM | Systems Engineer |
| `02_Systems_Engineering/Requirements/` | Carpeta histórica de requisitos de sistema | `01_Requirements/Requirements/` si corresponde | duplicate_historical | MEDIUM | Requirements owner |
| `02_Systems_Engineering/Verification/` | Carpeta histórica de verificación | `01_Requirements/Verification_Matrix.md` y `07_TESTING_VALIDATION/` | duplicate_historical | MEDIUM | Test Lead |
| `02_Systems_Engineering/Risk_Analysis/` | Carpeta histórica de análisis de riesgo | `02_Systems_Engineering/Risks/` | duplicate_historical | MEDIUM | Risk owner |
| `02_Systems_Engineering/Decisions/` | Una nota por decisión `DEC-*` | Sin cambio | canonical_object_store | LOW | Systems Engineer |
| `02_Systems_Engineering/Interfaces/` | Una nota por interfaz `ICD-*` | Sin cambio | canonical_object_store | LOW | Interface owners |
| `02_Systems_Engineering/Risks/` | Una nota por riesgo técnico `RSK-*` | Sin cambio | canonical_object_store | LOW | Risk owner |
| `03_MECHANICAL/` | Memoria mecánica canónica | Sin cambio | canonical | MEDIUM | Mechanical Lead |
| `04_ELECTRICAL_ELECTRONICS/` | Memoria eléctrica/electrónica canónica | Sin cambio | canonical | LOW | Electrical Lead |
| `05_SOFTWARE_CONTROL/` | Memoria de software y control | Sin cambio | canonical | LOW | Software Lead |
| `06_TASK_PAYLOADS/` | Memoria de payloads y tareas | Sin cambio | canonical | LOW | Payload Lead |
| `07_TESTING_VALIDATION/` | Planes, índices y conclusiones de prueba | Sin cambio | canonical | LOW | Test Lead |
| `07_TESTING_VALIDATION/Tests/` | Una nota por prueba `TST-*` | Sin cambio | canonical_object_store | LOW | Test Lead |
| `07_TESTING_VALIDATION/Failures/` | Una nota por falla `FR-*` | Sin cambio | canonical_object_store | LOW | Failure owner |
| `08_SAFETY_QUALITY/` | Seguridad, calidad e índices humanos | Sin cambio | canonical | LOW | Safety Lead |
| `08_SAFETY_QUALITY/Hazards/` | Una nota por peligro `HAZ-*` | Sin cambio | canonical_object_store | LOW | Safety Lead |
| `09_DOCUMENTATION/` | Preparación documental y checklists | Sin cambio | canonical | LOW | Documentation Lead |
| `10_STEM_MEDIA_SPONSORS/` | STEM, medios, sponsors, presupuesto y compras | Sin cambio | canonical | LOW | Outreach/Finance owner |
| `10_STEM_MEDIA_SPONSORS/Procurement/` | Una nota por compra `PRC-*` | Sin cambio | canonical_object_store | LOW | Procurement owner |
| `11_MEETINGS/` | Minutas y revisiones | Sin cambio | canonical | LOW | Project Control |
| `12_TEMPLATES/` | Plantillas controladas | Sin cambio | canonical | LOW | Vault owner |
| `13_SOFTWARE/` | Código, tests y configuración versionable | Sin cambio | canonical | LOW | Software Lead |
| `14_LATEX_REPORTS/` | Fuentes formales LaTeX | Sin cambio | canonical | LOW | Documentation Lead |
| `15_CAD_DRIVE_LINKS/` | Índices, owners y releases de CAD en Drive | Sin cambio | canonical | LOW | CAD owner |
| `16_TEST_DATA/` | Datos, logs, análisis y evidencia | Sin cambio | canonical | LOW | Test/Data owner |
| `17_AI_AGENTS/` | Reglas, tareas y outputs no oficiales de agentes | Sin cambio | canonical | LOW | AI workflow owner |
| `18_DELIVERABLES/` | Índices y paquetes congelados | Sin cambio | canonical | LOW | Documentation Lead |
| `18_DELIVERABLES/Deliverable_Items/` | Una nota por entregable `DOC-*` | Sin cambio | canonical_object_store | LOW | Deliverable owner |
| `99_ARCHIVE/` | Material congelado u obsoleto | Sin cambio | canonical | LOW | Project Control |

## Carpetas históricas detectadas previamente

Estas rutas figuran en el inventario inicial o en estados Git anteriores. Las marcadas como ausentes no deben recrearse automáticamente.

| Current Path | Canonical Role | Future Target | Status | Migration Priority | Owner Needed |
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

| Object | Folder | ID | `type` | Index/log |
|---|---|---|---|---|
| Requirement | `01_Requirements/Requirements/` | `REQ-000` | `requirement` | `Requirements_Traceability_Matrix.md` |
| Decision | `02_Systems_Engineering/Decisions/` | `DEC-000` | `decision` | `Decision_Log.md` |
| Interface | `02_Systems_Engineering/Interfaces/` | `ICD-000` | `interface` | `Interface_Control_Document.md` |
| Risk | `02_Systems_Engineering/Risks/` | `RSK-000` | `risk` | `Risk_Register.md` |
| Test | `07_TESTING_VALIDATION/Tests/` | `TST-000` | `test` | `Test_Log_Index.md` |
| Failure | `07_TESTING_VALIDATION/Failures/` | `FR-000` | `failure_report` | `Failure_Reports.md` |
| Hazard | `08_SAFETY_QUALITY/Hazards/` | `HAZ-000` | `hazard` | `Hazard_Log.md` |
| Procurement | `10_STEM_MEDIA_SPONSORS/Procurement/` | `PRC-000` | `procurement` | `Procurement_Log.md` |
| Deliverable | `18_DELIVERABLES/Deliverable_Items/` | `DOC-000` | `deliverable` | `Deliverables_Index.md` |
