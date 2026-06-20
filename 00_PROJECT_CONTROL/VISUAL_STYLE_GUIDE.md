---
type: visual_style_guide
status: active
date: 2026-06-20
---

# Guía de estilo visual

## Principio

El color identifica **dónde pertenece la información**. No comunica verdad técnica, aprobación, urgencia ni finalización.

- Prioridad: `priority`, fechas límite y decisiones de revisión.
- Estado técnico: `status`.
- Riesgo: `severity`, probabilidad, impacto y mitigación.
- Presión de ejecución: bloqueos e hitos.
- Responsabilidad: `owner` y revisor.
- Confianza: evidencia y revisión.

El vault debe continuar funcionando aunque el snippet CSS esté deshabilitado.

## Paleta por área

| Carpeta | Color | Hex | Significado | Responsable |
|---|---|---|---|---|
| `00_DASHBOARD` | Azul eléctrico | `#2F80ED` | Centro de mando y navegación | Líder del proyecto — Israel Silva |
| `00_PROJECT_CONTROL` | Gris azulado | `#4B5563` | Gobernanza y operación | Líder del proyecto — Israel Silva |
| `00_Index` | Azul gris histórico | `#64748B` | Índice histórico anterior a la beta | Responsable del vault por definir |
| `01_Requirements` / `01_REQUIREMENTS` | Amarillo | `#F2C94C` | Requisitos y trazabilidad | Jefe/sistemas — Alan Gonzales |
| `02_Systems_Engineering` / `02_SYSTEMS_ENGINEERING` | Morado | `#9B51E0` | Arquitectura, interfaces, decisiones y riesgos | Jefe/sistemas — Alan Gonzales |
| `02_MECHANICAL` / `03_MECHANICAL` | Naranja | `#F2994A` | Diseño mecánico, CAD y manufactura | Mecánica — Israel Silva |
| `03_ELECTRICAL` / `04_ELECTRICAL_ELECTRONICS` | Rojo | `#EB5757` | Potencia, electrónica y cableado | Eléctrica — Slevana |
| `04_SOFTWARE` / `05_SOFTWARE_CONTROL` | Verde | `#27AE60` | Memoria de software, firmware, control y telemetría | Software/control — Jhoe Marin |
| `05_TESTING` / `07_TESTING_VALIDATION` | Verde lima | `#6FCF97` | Pruebas y validación | Pruebas — Pops Racer |
| `06_TASK_PAYLOADS` | Cian | `#2D9CDB` | Tareas de suelo, agua y aire | Cargas — Jamie Oliver |
| `06_RENDERS` | Rosado | `#FF6B9A` | Medios visuales históricos | Responsable de medios por definir |
| `07_RELEASE` | Dorado | `#F59E0B` | Versiones históricas | Documentación — Manuel |
| `08_SAFETY_QUALITY` | Rojo oscuro | `#B91C1C` | Seguridad, FMEA, peligros y calidad | Seguridad — Jon Doe |
| `08_ARCHIVE` / `99_ARCHIVE` | Gris | `#9CA3AF` | Material histórico, obsoleto o congelado | Control del proyecto |
| `09_DOCUMENTATION` | Azul claro | `#56CCF2` | Informes, figuras y documentación | Documentación — Manuel |
| `10_STEM_MEDIA_SPONSORS` | Rosado | `#FF6B9A` | Divulgación, patrocinadores y medios | Por definir |
| `11_MEETINGS` | Celeste | `#38BDF8` | Minutas y revisiones | Control del proyecto |
| `12_TEMPLATES` | Lavanda | `#A78BFA` | Plantillas controladas | Responsable del vault por definir |
| `13_SOFTWARE` | Verde fuerte | `#16A34A` | Código y configuración versionados | Software/control — Jhoe Marin |
| `14_LATEX_REPORTS` | Azul documento | `#0EA5E9` | Fuentes formales LaTeX | Documentación — Manuel |
| `15_CAD_DRIVE_LINKS` | Naranja CAD | `#F97316` | Archivos maestros CAD indexados en Drive | Mecánica/CAD — Israel Silva |
| `16_TEST_DATA` | Lima evidencia | `#84CC16` | Registros, datos y evidencia de pruebas | Pruebas — Pops Racer |
| `17_AI_AGENTS` | Violeta IA | `#7C3AED` | Agentes, instrucciones, resultados y auditoría | Responsable de flujo de IA por definir |
| `18_DELIVERABLES` | Dorado | `#F59E0B` | Entregables congelados | Documentación — Manuel |

## Reglas visuales

- El rojo identifica dominios eléctricos y de seguridad, no urgencia.
- El rojo oscuro pertenece únicamente a seguridad y peligros.
- El dorado pertenece a versiones y entregables.
- El gris pertenece a material histórico o archivado.
- Use un color principal por carpeta raíz.
- Nunca coloree por persona.
- Nunca infiera el estado a partir del color.
- Las notas técnicas, mapas de calor y datos Dataview no dependen del color.

## Snippet CSS

El snippet activo es `.obsidian/snippets/herc-folder-colors.css`. Solo modifica el explorador de archivos:

- texto y fondo suave de carpetas raíz;
- marcador visible en el borde izquierdo;
- menor intensidad en carpetas y archivos anidados;
- estados de cursor y foco de teclado;
- compatibilidad con temas claros y oscuros.

Para volver al aspecto predeterminado, desactívelo en **Ajustes → Apariencia → Fragmentos CSS → herc-folder-colors**.

## Complementos visuales

El vault contiene varios complementos de color. Para evitar señales contradictorias:

1. Use este snippet como sistema visual documentado.
2. No aplique un segundo color a las mismas carpetas.
3. Si se adopta File Color, Folder Color, Color Folders and Files o Iconize, reutilice esta paleta.
4. Use iconos para tipo de objeto, nunca para aprobación o estado técnico.
5. Pruebe temas claros y oscuros.
6. Registre cambios de complemento o versión en [[PLUGIN_SETUP]].
