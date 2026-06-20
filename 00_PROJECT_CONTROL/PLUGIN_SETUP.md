---
type: plugin_setup
status: guidance_only
last_inventory: 2026-06-20
---

# Plugin Setup

## Principio

No instalar, actualizar o configurar plugins sin un owner, una necesidad documentada y un plan de rollback. Este archivo es una guía; el bootstrap no modificó `.obsidian/`.

## Plugins críticos

| Plugin | Prioridad | Estado detectado | Uso |
|---|---|---|---|
| Dataview | critical | INSTALLED 0.5.68 | Consultas de requisitos, riesgos, pruebas, owners y métricas |
| Heatmap Calendar | critical | INSTALLED 0.7.1 | Heatmaps de actividad, pruebas, riesgos y entregables |

## Plugins recomendados

| Plugin          | Prioridad | Estado detectado    | Uso                                    |
| --------------- | --------- | ------------------- | -------------------------------------- |
| Tasks           | high      | INSTALLED 8.2.1     | Tareas, fechas, prioridades y bloqueos |
| Templater       | high      | INSTALLED 2.20.5    | Creación consistente de notas e IDs    |
| Calendar        | medium    | TO_INSTALL_MANUALLY | Navegación de notas diarias/semanales  |
| Kanban          | medium    | TO_INSTALL_MANUALLY | Backlogs de integración, DR y ORR      |
| Excalidraw      | medium    | INSTALLED 2.24.2    | Arquitectura, interfaces y flujos      |
| Advanced Tables | medium    | TO_INSTALL_MANUALLY | BOM, RACI y matrices Markdown          |

## Plugins opcionales

| Plugin          | Prioridad            | Estado detectado    | Uso / advertencia                             |
| --------------- | -------------------- | ------------------- | --------------------------------------------- |
| Heatmap Tracker | optional alternative | TO_INSTALL_MANUALLY | Alternativa anual; evitar duplicar métricas   |
| Obsidian Git    | optional             | INSTALLED 2.38.5    | Nunca sustituye revisión humana de `git diff` |
| Projects        | optional             | TO_INSTALL_MANUALLY | Vistas tipo base de datos                     |

## Configuración recomendada

### Dataview

- Habilitar JavaScript Queries solo si el equipo acepta ejecutar bloques revisados.
- No permitir que consultas sean la única representación de información crítica.
- Mantener las tablas Markdown fallback de los dashboards.
- Probar primero con una nota `daily_status` real.

### Heatmap Calendar

- Confirmar que expone `renderHeatmapCalendar`.
- Fuente: `00_PROJECT_CONTROL/DAILY_STATUS/`.
- Fecha: `date`; intensidad: score o contador indicado por dashboard.
- Excluir `status: example`.
- Si una actualización cambia la API, ajustar solamente el bloque local después de revisar documentación.

### Tasks

- Acordar estados, prioridades y formato de fechas.
- Toda tarea debe tener contexto, owner y enlace a la fuente técnica.
- No usar Tasks como reemplazo de Requirement, Risk, ICD o Test Log.

### Templater

- Configurar manualmente `12_TEMPLATES/` como template folder.
- Probar variables `{{date}}`; si se usa sintaxis Templater avanzada, actualizar una copia de prueba.
- No ejecutar scripts externos desde plantillas sin revisión.

## Riesgos de plugins

- Cambios de API pueden romper dashboards.
- Plugins con acceso a archivos pueden provocar cambios masivos.
- Obsidian Git puede crear commits incompletos o incluir binarios.
- Consultas JavaScript pueden ocultar errores si no hay fallback.
- Demasiados plugins aumentan deuda de configuración y onboarding.

## Checklist de instalación manual

- [ ] Nombrar owner.
- [ ] Documentar necesidad y alternativa.
- [ ] Revisar permisos y repositorio del plugin.
- [ ] Crear backup del vault/configuración.
- [ ] Instalar manualmente desde Obsidian.
- [ ] Aplicar configuración mínima.
- [ ] Validar en copia o cambio reversible.
- [ ] Registrar versión y resultado.
- [ ] Confirmar rollback.

## Validación de dashboards

1. Abrir `00_DASHBOARD/Project_Dashboard.md`.
2. Confirmar que las tablas Markdown son visibles.
3. Confirmar que consultas Dataview no muestran errores.
4. Copiar `Template_Daily_Status.md`, usar una fecha real y `status: active`.
5. Abrir cada heatmap y verificar fecha/intensidad.
6. Comparar el heatmap con la tabla fallback.

## Si un plugin rompe el vault

1. Cerrar Obsidian.
2. No borrar datos ni configuración.
3. Registrar plugin, versión, error y última acción.
4. Abrir el vault en modo restringido/sin community plugins.
5. Restaurar desde backup solo con aprobación.
6. Mantener operación mediante Markdown fallback.
