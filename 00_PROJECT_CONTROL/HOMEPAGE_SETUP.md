---
type: workspace_setup
status: plugin_not_detected
---

# Homepage Setup

Homepage was not detected during this pass. If the team installs it manually, configure:

| Setting | Recommended value |
|---|---|
| Homepage | `00_DASHBOARD/Command_Center.md` |
| Open on startup | Enabled |
| View mode | Reading view / Preview |
| Replace all open notes | Disabled initially |
| Reopen when vault is already open | Team preference |

## Setup

1. Assign a plugin owner.
2. Install Homepage manually from Community plugins.
3. Select `00_DASHBOARD/Command_Center.md`.
4. Choose Reading view.
5. Restart Obsidian.
6. Confirm Command Center opens without changing workspace layout unexpectedly.
7. Keep `Home.md` as a secondary index and fallback.

## Rollback

Disable **Open on startup** or disable the Homepage plugin. Do not edit `workspace.json`.

Reference: [Homepage plugin repository](https://github.com/mirnovov/obsidian-homepage).
