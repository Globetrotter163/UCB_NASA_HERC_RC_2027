---
type: bootstrap_validation
date: 2026-06-20
status: completed_with_external_state_change
---

# Bootstrap Validation — 2026-06-20

## Result

- Required files checked: 172.
- Missing required files: 0.
- Empty required files: 0.
- Forbidden nested vault `01_OBSIDIAN_VAULT`: absent.
- Plugins installed/downloaded by bootstrap: 0.
- Existing files moved or deleted by bootstrap: 0.
- Commits created: 0.

## `.obsidian/` integrity observation

Pre-bootstrap aggregate:

`FFAD0903D758E2BB03C6353AB6DE454B792AD4C59CB5A88D79276E6CFBDB5875`

Validation aggregate:

`9150E1B019BFCA9F4D4BE8A102646328683CF8AE18A2124A75E2788E974A8B03`

The file count remained 35, but the aggregate changed. No bootstrap command targeted `.obsidian/`. Timestamps and Git diff show that active Obsidian/synchronization state updated while new notes appeared, notably:

- `.obsidian/workspace.json` updated its active file and recent-file list.
- `.obsidian/graph.json` and some plugin/config timestamps also changed externally.

These files were not reverted because the task prohibits modifying live Obsidian configuration and the initial bytes were not captured as a restorable backup. Close Obsidian and pause synchronization before any future byte-for-byte integrity test.

## Preexisting Git risk

Before bootstrap, Git already reported modified `.obsidian` files, deleted historical notes/configuration, deleted CAD files and many untracked files. These remain unresolved and require human review before staging or committing.

## Dashboard validation

All four heatmap pages include:

- a DataviewJS block,
- a guard for missing `renderHeatmapCalendar`,
- exclusion of `status: example`,
- a visible Dataview fallback.

Full rendering still requires Dataview and Heatmap Calendar enabled in Obsidian.
