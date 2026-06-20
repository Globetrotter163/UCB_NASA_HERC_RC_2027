---
type: plugin_setup
status: configured
last_inventory: 2026-06-20
owner: Vault owner
---

# Configuración de complementos

## Principio

No instale, actualice ni configure complementos sin responsable, necesidad documentada y plan de reversión. Prefiera capacidades nativas y mantenga respaldos Markdown para información crítica.

## Complementos operativos

| Complemento | Función |
|---|---|
| Dataview | Consultas de requisitos, riesgos, pruebas, responsables y métricas |
| Tasks | Tareas, fechas, prioridades y bloqueos |
| QuickAdd | Creación guiada y captura de bucles abiertos |
| Templater | Carpeta controlada de plantillas |
| Calendar | Navegación de notas con fecha |
| Full Calendar | Calendarios locales y futura fuente ICS de solo lectura |
| Heatmap Calendar | Mapas de actividad y estado |
| Excalidraw | Diagramas de arquitectura e interfaces |
| Obsidian Git | Apoyo al versionado; no sustituye revisión de diferencias |

## Complementos nativos relevantes

- Bases
- Notas diarias
- Plantillas
- Vista de grafo
- Búsqueda
- Enlaces salientes y menciones

## Configuración segura aplicada

- QuickAdd: funciones en línea deshabilitadas y claves vacías.
- Templater: `12_TEMPLATES/`, sin comandos del sistema.
- Notas diarias: `00_PROJECT_CONTROL/DAILY_STATUS/`.
- Plantillas nativas: `12_TEMPLATES/`.
- Bases: habilitado; vistas pendientes de creación desde la interfaz.
- Full Calendar: sin fuente externa ni secretos.
- Homepage: opcional y no instalado.

## Reglas por complemento

### Dataview y mapas de calor

- Las consultas nunca son la única representación de información crítica.
- Conserve tablas o enlaces de respaldo.
- Excluya `status: example`.
- Si una actualización rompe una API, documente el cambio antes de editar consultas.

### Tasks

- Toda tarea debe tener contexto y enlace a la fuente técnica.
- No sustituye requisitos, riesgos, interfaces ni registros de prueba.

### QuickAdd y Templater

- No habilite sobrescritura silenciosa.
- No ejecute scripts externos desde plantillas.
- Pruebe cambios con `status: example`.

### Obsidian Git

- Revise `git status` y diferencias antes de confirmar.
- No incluya temporales, secretos ni datos personales.
- No confíe en confirmaciones automáticas para cambios de línea base.

## Checklist para cambios futuros

- [ ] Nombrar responsable.
- [ ] Documentar necesidad y alternativa.
- [ ] Revisar permisos, repositorio y mantenimiento.
- [ ] Respaldar configuración.
- [ ] Aplicar el cambio mínimo.
- [ ] Validar en una operación reversible.
- [ ] Registrar versión y resultado.
- [ ] Confirmar plan de reversión.

## Si un complemento rompe el vault

1. Cierre Obsidian.
2. No borre datos ni configuración.
3. Registre complemento, versión, error y última acción.
4. Abra el vault en modo restringido.
5. Restaure desde respaldo solo con aprobación.
6. Continúe mediante los respaldos Markdown.
