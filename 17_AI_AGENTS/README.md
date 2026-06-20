# AI Agents

Zona controlada para reglas, prompts, tareas, outputs, logs y context packs.

## Workflow

`Input → Agent Output → Human Review → Official Document`

- Create tasks in `02_AGENT_TASKS/Pending/`.
- Draft outputs go to `03_AGENT_OUTPUTS/Drafts/`.
- Move/copy only after human review and according to approved workflow.
- Record runs and errors.
- Never treat an agent output as an approval or source of truth.
