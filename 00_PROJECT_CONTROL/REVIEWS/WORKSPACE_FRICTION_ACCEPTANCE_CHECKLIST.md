---
type: workspace_acceptance
version: 0.1
status: pending_manual_validation
date: 2026-06-20
---

# Workspace Friction Acceptance Checklist

> [!note] Concurrent Obsidian activity
> Full Calendar and QuickAdd appeared during this pass, and Obsidian updated `workspace.json`, `graph.json`, `community-plugins.json` and plugin files externally. Codex did not write those protected paths. Review their current configuration manually before acceptance.

## Daily Notes

- [ ] Date format is `YYYY-MM-DD`.
- [ ] New file location is `00_PROJECT_CONTROL/DAILY_STATUS`.
- [ ] Template is `12_TEMPLATES/Template_Daily_Status`.
- [ ] Default new-note location is “Same folder as current file”.
- [ ] Test note appears in the project heatmap.

## Calendar

- [ ] `00_PROJECT_CONTROL/CALENDAR_EVENTS/` exists.
- [ ] `Template_Calendar_Event.md` creates valid frontmatter.
- [ ] [[../../00_DASHBOARD/Team_Calendar|Team Calendar]] renders without Dataview errors.
- [ ] Reviews, tests and deliverables appear in their sections.
- [ ] Any ICS source is read-only.
- [ ] No ICS URLs, OAuth credentials or plugin `data.json` are tracked.

## Command Center and navigation

- [ ] [[../../00_DASHBOARD/Command_Center|Command Center]] opens all critical destinations.
- [ ] “What do you want to do?” maps each action to a template and folder.
- [ ] Home links Command Center, Team Calendar, NASA SE Process Map and Visual Navigation.
- [ ] Visual Navigation links calendar, Graph View and QuickAdd setup.
- [ ] Team Onboarding includes the 30-minute route.

## Graph View

- [ ] Archive, `.obsidian`, agent outputs and temporary folders are filtered.
- [ ] Attachments are hidden for normal navigation.
- [ ] Folder color groups match the visual style guide.
- [ ] REQ–ICD–TST–RSK traceability filter works.
- [ ] `.obsidian/graph.json` was not edited automatically.

## Bases

- [ ] Bases core plugin is enabled.
- [ ] Requirements, Decisions, Interfaces, Risks, Tests, Failures and Deliverables views exist.
- [ ] Task view lists incomplete tasks.
- [ ] Every operational view excludes `status: example`.
- [ ] Base results match human indexes.

## QuickAdd

- [ ] QuickAdd has an assigned owner and was installed manually if approved.
- [ ] `NASA HERC QuickAdd` Multi exists.
- [ ] Each Template choice writes to the canonical folder.
- [ ] Duplicate IDs cannot overwrite files silently.
- [ ] Capture Open Loop appends an inbox bullet without changing official rows.
- [ ] No arbitrary scripts or whole-file Templater execution are enabled.

## Homepage

- [ ] Homepage has an assigned owner and was installed manually if approved.
- [ ] Startup target is `00_DASHBOARD/Command_Center.md`.
- [ ] View mode is Reading/Preview.
- [ ] Existing workspace layout is not unexpectedly replaced.

## Safety and regression

- [ ] No tokens, passwords, private ICS URLs or OAuth secrets exist in tracked files.
- [ ] `workspace.json`, `community-plugins.json` and plugin internals were not modified by this pass.
- [ ] Existing Project Dashboard queries still render.
- [ ] Existing four heatmaps still render or show their fallbacks.
- [ ] No historical files were moved, renamed or deleted.
- [ ] No technical object was marked `approved`.
- [ ] Git diff was reviewed before any future commit.

## Acceptance

| Role | Person | Date | Result | Notes |
|---|---|---|---|---|
| Project Lead | Israel Silva | TBD | pending | |
| Systems Engineer | Alan Gonzales | TBD | pending | |
| Vault/Workflow Owner | TBD | TBD | pending | |
