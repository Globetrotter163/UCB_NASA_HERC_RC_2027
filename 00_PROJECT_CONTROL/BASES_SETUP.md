---
type: workspace_setup
status: manual_configuration_required
---

# Bases Setup

Obsidian Bases creates database-like views from Markdown notes and their properties. The notes remain the data source; a Base is only a view.

## Decision for this pass

No `.base` files were generated manually. Create them from the Obsidian UI to ensure compatibility with the installed Obsidian version, then save them in `00_DASHBOARD/BASES/`.

## Bases to create

| Base file | Source folder | Required filter | Useful columns |
|---|---|---|---|
| `Requirements.base` | `01_Requirements/Requirements/` | `type = requirement`, exclude `status = example` | id, status, owner, source, verification_method, linked_tests |
| `Decisions.base` | `02_Systems_Engineering/Decisions/` | `type = decision`, exclude examples | id, status, owner, date, affected_subsystems, evidence |
| `Interfaces.base` | `02_Systems_Engineering/Interfaces/` | `type = interface`, exclude examples | id, status, owners, subsystems, last_review |
| `Risks.base` | `02_Systems_Engineering/Risks/` | `type = risk`, exclude examples | id, severity, probability, impact, owner, mitigation, status |
| `Tests.base` | `07_TESTING_VALIDATION/Tests/` | `type = test`, exclude examples | id, status, owner, date, related_requirements, result |
| `Failures.base` | `07_TESTING_VALIDATION/Failures/` | `type = failure_report`, exclude examples | id, status, severity, owner, date, related_test |
| `Deliverables.base` | `18_DELIVERABLES/Deliverable_Items/` | `type = deliverable`, exclude examples | id, status, due, owner, source_path, artifact_path |
| `Tasks.base` | Entire vault | incomplete Markdown tasks | file, task, due, priority, owner/context |

## Manual creation

For each Base:

1. Confirm the **Bases** core plugin is enabled.
2. Create a new Base from Obsidian.
3. Save it in `00_DASHBOARD/BASES/`.
4. Add a table view.
5. Filter by source folder and `type`.
6. Exclude `status: example`.
7. Add only the columns needed for decisions.
8. Sort by severity/due/date where useful.
9. Compare results with the human index.

## Suggested views

- Requirements: `Open`, `Without tests`, `Verified`.
- Risks: `Active by severity`, `Without mitigation`, `Closed`.
- Tests: `Planned`, `Ready`, `Failed`, `Completed`.
- Deliverables: `Upcoming`, `Without owner`, `Frozen`.
- Tasks: `Due this week`, `Blocked`, `By area`.

## Rules

- Do not edit a property through Bases unless you understand which Markdown note changes.
- A row appearing in a Base is not approval.
- Keep the human indexes and Dataview fallbacks.
- Do not use Bases to hide missing owners or missing evidence.

Reference: [Introduction to Obsidian Bases](https://obsidian.md/help/bases).
