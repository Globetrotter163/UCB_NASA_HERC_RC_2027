---
type: workspace_setup
status: ready_for_team_creation
owner: Vault owner
---

# Configuración de Bases

Obsidian Bases crea vistas tipo base de datos a partir de notas Markdown y sus propiedades. Las notas siguen siendo la fuente; una Base es solo una vista.

## Estado

El complemento nativo Bases está habilitado. Los archivos `.base` deben crearse desde la interfaz de Obsidian y guardarse en `00_DASHBOARD/BASES/` para asegurar compatibilidad con la versión instalada.

## Bases recomendadas

| Archivo | Carpeta fuente | Filtro obligatorio | Columnas útiles |
|---|---|---|---|
| `Requirements.base` | `01_Requirements/Requirements/` | `type = requirement`, excluir `status = example` | id, status, owner, source, verification_method, linked_tests |
| `Decisions.base` | `02_Systems_Engineering/Decisions/` | `type = decision`, excluir ejemplos | id, status, owner, date, affected_subsystems, evidence |
| `Interfaces.base` | `02_Systems_Engineering/Interfaces/` | `type = interface`, excluir ejemplos | id, status, owners, subsystems, last_review |
| `Risks.base` | `02_Systems_Engineering/Risks/` | `type = risk`, excluir ejemplos | id, severity, probability, impact, owner, mitigation, status |
| `Tests.base` | `07_TESTING_VALIDATION/Tests/` | `type = test`, excluir ejemplos | id, status, owner, date, related_requirements, result |
| `Failures.base` | `07_TESTING_VALIDATION/Failures/` | `type = failure_report`, excluir ejemplos | id, status, severity, owner, date, related_test |
| `Deliverables.base` | `18_DELIVERABLES/Deliverable_Items/` | `type = deliverable`, excluir ejemplos | id, status, due, owner, source_path, artifact_path |
| `Tasks.base` | Vault completo | tareas Markdown incompletas | file, task, due, priority, owner/context |

## Creación

1. Confirme que **Bases** esté habilitado.
2. Cree una Base desde Obsidian.
3. Guárdela en `00_DASHBOARD/BASES/`.
4. Añada una vista de tabla.
5. Filtre por carpeta fuente y `type`.
6. Excluya `status: example`.
7. Muestre solo columnas útiles para decidir.
8. Ordene por severidad, fecha límite o fecha.
9. Compare el resultado con el índice humano.

## Reglas

- No edite propiedades desde Bases sin comprender qué nota Markdown cambia.
- Una fila visible no significa aprobación.
- Conserve índices humanos y respaldos Dataview.
- No use Bases para ocultar responsables o evidencia faltante.

Referencia: [Introducción a Obsidian Bases](https://obsidian.md/help/bases).

