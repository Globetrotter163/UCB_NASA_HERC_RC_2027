# NASA HERC RC 2027

Workspace técnico y vault de Obsidian del equipo de la Universidad Católica Boliviana San Pablo, Sede La Paz, para la división **Remote-Controlled Rover** de NASA Human Exploration Rover Challenge.

## Start here

1. Abra esta carpeta raíz directamente como vault de Obsidian.
2. Lea [[00_DASHBOARD/Home]] y [[00_PROJECT_CONTROL/PROJECT_STARTUP_CHECKLIST]].
3. Consulte [[00_PROJECT_CONTROL/SOURCE_OF_TRUTH_MAP]] antes de crear o aprobar información.
4. Registre trabajo diario con [[12_TEMPLATES/Template_Daily_Status]].
5. Revise [[AGENTS]] antes de usar Codex u otro agente IA.

## Organización

| Información | Ubicación oficial |
|---|---|
| Requisitos y trazabilidad | `01_Requirements/` |
| Arquitectura, interfaces, decisiones y riesgos técnicos | `02_Systems_Engineering/` |
| Memoria técnica por disciplina | `03_MECHANICAL/` a `10_STEM_MEDIA_SPONSORS/` |
| Minutas | `11_MEETINGS/` |
| Plantillas | `12_TEMPLATES/` |
| Código y configuración | `13_SOFTWARE/` |
| Fuentes formales LaTeX | `14_LATEX_REPORTS/` |
| Índice de CAD pesado en Drive | `15_CAD_DRIVE_LINKS/` |
| Datos y evidencia de pruebas | `16_TEST_DATA/` |
| Trabajo de agentes IA | `17_AI_AGENTS/` |
| Paquetes congelados | `18_DELIVERABLES/` |
| Material obsoleto o congelado | `99_ARCHIVE/` |

La estructura histórica detectada durante el bootstrap se conserva sin movimientos. Consulte [[00_PROJECT_CONTROL/MIGRATION_PLAN]].

## Obsidian

La raíz del repositorio **es** el vault. No cree otro vault anidado. `.obsidian/` contiene configuración viva: no debe editarse, reemplazarse ni sincronizarse a ciegas. Los dashboards incluyen vistas Markdown y consultas opcionales para Dataview y Heatmap Calendar.

## Codex y agentes IA

Los agentes pueden preparar borradores, análisis y reportes de inconsistencias. Sus resultados comienzan en `17_AI_AGENTS/03_AGENT_OUTPUTS/` y requieren revisión humana antes de pasar a una fuente oficial. Ningún agente aprueba decisiones, requisitos, interfaces, riesgos, pruebas o entregables.

## Seguridad documental

- No borrar, mover o sobrescribir archivos sin aprobación y trazabilidad.
- No guardar claves API, tokens, contraseñas, `.env`, certificados o llaves privadas.
- No versionar CAD pesado, videos, renders ni datos crudos voluminosos.
- Discord sirve para coordinación; no es fuente de verdad.
- Toda prueba debe enlazar requisitos, criterios de éxito y evidencia.
- Toda decisión oficial debe registrarse en `02_Systems_Engineering/Decision_Log.md`.

## Arranque inicial del equipo

- Asignar owners y completar `00_PROJECT_CONTROL/PROJECT_ROLES.md`.
- Revisar la matriz RACI, calendario y mapa de fuentes.
- Confirmar IDs y estados de requisitos, interfaces, riesgos y pruebas.
- Instalar o validar plugins únicamente mediante el proceso de `PLUGIN_SETUP.md`.
- Revisar el inventario y aprobar, corregir o rechazar la propuesta de migración.
