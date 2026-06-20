---
type: workspace_setup
status: manual_configuration_required
---

# Graph View Setup

Graph View visualiza enlaces; no demuestra trazabilidad completa ni aprobación. Configure grupos manualmente desde el engranaje de Graph View.

## Global filter

Pegue en **Filters → Search files**:

```text
-path:"99_ARCHIVE" -path:".obsidian" -path:"17_AI_AGENTS/03_AGENT_OUTPUTS" -path:".tmp.drivedownload" -path:".tmp.driveupload"
```

Además:

- Desactive **Attachments** para ocultar binarios.
- Active **Existing files only**.
- Decida si mostrar **Orphans** durante auditorías; normalmente déjelo desactivado para navegación.

## Groups

Use **New group**, agregue la búsqueda y asigne el color indicado:

| Group | Search | Color |
|---|---|---|
| Requirements | `path:"01_Requirements"` | `#F2C94C` |
| Systems | `path:"02_Systems_Engineering"` | `#9B51E0` |
| Mechanical | `path:"03_MECHANICAL" OR path:"02_MECHANICAL"` | `#F2994A` |
| Electrical | `path:"04_ELECTRICAL_ELECTRONICS"` | `#EB5757` |
| Software | `path:"05_SOFTWARE_CONTROL" OR path:"13_SOFTWARE"` | `#27AE60` |
| Payloads | `path:"06_TASK_PAYLOADS"` | `#2D9CDB` |
| Testing | `path:"07_TESTING_VALIDATION" OR path:"16_TEST_DATA"` | `#6FCF97` |
| Safety | `path:"08_SAFETY_QUALITY"` | `#B91C1C` |
| Documentation | `path:"09_DOCUMENTATION" OR path:"14_LATEX_REPORTS"` | `#56CCF2` |
| AI Agents | `path:"17_AI_AGENTS"` | `#7C3AED` |
| Deliverables | `path:"18_DELIVERABLES"` | `#F59E0B` |

## Minimum technical tags

Properties remain primary. Tags are optional navigation aids:

| Object | Suggested tag |
|---|---|
| Requirement | `#herc/requirement` |
| Interface | `#herc/interface` |
| Decision | `#herc/decision` |
| Risk | `#herc/risk` |
| Test | `#herc/test` |
| Failure | `#herc/failure` |
| Hazard | `#herc/hazard` |
| Deliverable | `#herc/deliverable` |

Do not add tags mechanically to historical files until owners review them.

## Traceability-only search

Recommended Search/Graph filter:

```text
(path:"01_Requirements/Requirements" OR path:"02_Systems_Engineering/Interfaces" OR path:"02_Systems_Engineering/Risks" OR path:"07_TESTING_VALIDATION/Tests") -[status:example]
```

To include decisions:

```text
(path:"01_Requirements/Requirements" OR path:"02_Systems_Engineering/Decisions" OR path:"02_Systems_Engineering/Interfaces" OR path:"02_Systems_Engineering/Risks" OR path:"07_TESTING_VALIDATION/Tests") -[status:example]
```

## Display recommendation

- Arrows: on during interface/traceability review.
- Text fade threshold: medium-high.
- Link thickness: moderate.
- Animate: off for normal use.
- Local Graph depth: 1 for routine work, 2 for reviews.

No change was made to `.obsidian/graph.json`.

References:

- [Obsidian Graph view](https://obsidian.md/help/Plugins/Graph%2Bview)
- [Obsidian Search syntax](https://obsidian.md/help/plugins/search)
