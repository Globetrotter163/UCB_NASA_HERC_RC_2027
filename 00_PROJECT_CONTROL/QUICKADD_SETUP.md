---
type: workspace_setup
status: manual_configuration_required
---

# QuickAdd Setup

**QuickAdd 2.12.3** is present. It appeared during this review through an external action. Codex did not install it or modify its internal configuration. This guide defines the menu to configure manually after owner approval.

## Menu structure

Create a **Multi choice** named:

`NASA HERC QuickAdd`

Add these Template choices:

| Choice | Template | Destination | File-name suggestion |
|---|---|---|---|
| New Requirement | `12_TEMPLATES/Template_Requirement.md` | `01_Requirements/Requirements/` | `REQ-{{VALUE}}` |
| New Interface | `12_TEMPLATES/Template_Interface.md` | `02_Systems_Engineering/Interfaces/` | `ICD-{{VALUE}}` |
| New Decision | `12_TEMPLATES/Template_Decision.md` | `02_Systems_Engineering/Decisions/` | `DEC-{{VALUE}}` |
| New Risk | `12_TEMPLATES/Template_Risk.md` | `02_Systems_Engineering/Risks/` | `RSK-{{VALUE}}` |
| New Test | `12_TEMPLATES/Template_Test.md` | `07_TESTING_VALIDATION/Tests/` | `TST-{{VALUE}}` |
| New Failure Report | `12_TEMPLATES/Template_Failure_Report.md` | `07_TESTING_VALIDATION/Failures/` | `FR-{{VALUE}}` |
| New Meeting Note | `12_TEMPLATES/Template_Meeting.md` | Select appropriate `11_MEETINGS/` folder | `MTG-{{DATE:YYYY-MM-DD}}-{{VALUE}}` |
| New Daily Status | `12_TEMPLATES/Template_Daily_Status.md` | `00_PROJECT_CONTROL/DAILY_STATUS/` | `{{DATE:YYYY-MM-DD}}` |
| New Calendar Event | `12_TEMPLATES/Template_Calendar_Event.md` | `00_PROJECT_CONTROL/CALENDAR_EVENTS/` | `{{DATE:YYYY-MM-DD}}_{{VALUE}}` |

## Capture Open Loop

Create a **Capture choice**:

| Setting | Value |
|---|---|
| Name | `Capture Open Loop` |
| Capture to | `02_Systems_Engineering/Open_Technical_Questions.md` |
| Write position | Bottom of file |
| Capture format | `- [ ] {{DATE:YYYY-MM-DD}} — {{VALUE}} #open-loop` |
| Open captured file | Off |
| Create file if it doesn't exist | Off |

Captured bullets are an inbox. A systems owner must triage them into the official table or another appropriate register.

## Safe behavior

- For existing filenames, choose **Ask every time** or **Create another file**.
- Do not enable overwrite.
- Open created notes in Live Preview or default view.
- Do not run arbitrary scripts.
- Leave “Run Templater on entire destination file” off unless specifically reviewed.
- Test each choice using example IDs before team rollout.

## Validation

- [ ] Multi menu opens.
- [ ] Each note lands in the listed folder.
- [ ] Templates render without losing frontmatter.
- [ ] Duplicate IDs do not overwrite files.
- [ ] Example notes remain `status: example`.
- [ ] Capture Open Loop does not alter existing register rows.

References:

- [QuickAdd Template choices](https://quickadd.obsidian.guide/docs/Choices/TemplateChoice/)
- [QuickAdd Capture choices](https://quickadd.obsidian.guide/docs/Choices/CaptureChoice/)
- [QuickAdd Multi choices](https://quickadd.obsidian.guide/docs/Choices/MultiChoice/)
