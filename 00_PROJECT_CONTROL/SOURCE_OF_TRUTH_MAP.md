# Source of Truth Map

| Tipo de información          | Fuente oficial                                         | Rol de otras plataformas                                |
| ---------------------------- | ------------------------------------------------------ | ------------------------------------------------------- |
| Coordinación y conversación  | No aplica                                              | Discord: coordinación solamente                         |
| Memoria técnica              | Este vault de Obsidian                                 | Resúmenes de Discord deben trasladarse aquí             |
| Decisiones aprobadas         | `02_Systems_Engineering/Decision_Log.md`               | Agentes solo proponen borradores                        |
| Interfaces aprobadas         | `02_Systems_Engineering/Interface_Control_Document.md` | Diagramas apoyan, no sustituyen el ICD                  |
| Riesgos técnicos             | `02_Systems_Engineering/Risk_Register.md`              | Issues pueden enlazar el registro                       |
| Peligros de seguridad        | `08_SAFETY_QUALITY/Hazard_Log.md`                      | FMEA complementa el hazard log                          |
| Código y configuración       | `13_SOFTWARE/` en GitHub                               | El vault documenta arquitectura y operación             |
| Documentos fuente formales   | `14_LATEX_REPORTS/`                                    | PDFs son artefactos derivados                           |
| CAD master                   | Google Drive                                           | `15_CAD_DRIVE_LINKS/` mantiene índice, owner y release  |
| Datos y evidencia de pruebas | `16_TEST_DATA/`                                        | `07_TESTING_VALIDATION/` contiene planes y conclusiones |
| Paquetes congelados          | `18_DELIVERABLES/`                                     | Solo humanos autorizados marcan “submitted”             |

## Regla de conflicto

Si dos fuentes difieren, no elegir silenciosamente. Abrir una pregunta técnica, identificar owners y resolver mediante la fuente oficial correspondiente.
