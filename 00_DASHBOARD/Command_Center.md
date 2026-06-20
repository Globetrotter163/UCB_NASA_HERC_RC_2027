---
type: dashboard
status: active
---

# Command Center

> [!info] NASA HERC RC 2027
> One entry point for finding status, creating the right note and reaching the human source of truth.

## Mission status

| Now                  | Plan                 | Evidence                                | Escalate          |                                           |             |                                           |                 |
| -------------------- | -------------------- | --------------------------------------- | ----------------- | ----------------------------------------- | ----------- | ----------------------------------------- | --------------- |
| [[Project_Dashboard  | Project Dashboard]]  | [[Team_Calendar                         | Team Calendar]]   | [[../16_TEST_DATA/00_TEST_INDEX           | Test Data]] | [[Open_Loops                              | Open Loops]]    |
| [[Engineering_Status | Engineering Status]] | [[../00_PROJECT_CONTROL/MASTER_CALENDAR | Master Calendar]] | [[../07_TESTING_VALIDATION/Test_Log_Index | Test Log]]  | [[../02_Systems_Engineering/Risk_Register | Risk Register]] |

## What do you want to do?

| Action                  | Template or command                   | Destination                           |
| ----------------------- | ------------------------------------- | ------------------------------------- |
| Record today's work     | `Template_Daily_Status` / Daily Notes | `00_PROJECT_CONTROL/DAILY_STATUS/`    |
| Add a project event     | `Template_Calendar_Event`             | `00_PROJECT_CONTROL/CALENDAR_EVENTS/` |
| Create a requirement    | `Template_Requirement`                | `01_Requirements/Requirements/`       |
| Record an interface     | `Template_Interface`                  | `02_Systems_Engineering/Interfaces/`  |
| Propose a decision      | `Template_Decision`                   | `02_Systems_Engineering/Decisions/`   |
| Record a technical risk | `Template_Risk`                       | `02_Systems_Engineering/Risks/`       |
| Plan or record a test   | `Template_Test`                       | `07_TESTING_VALIDATION/Tests/`        |
| Report a failure        | `Template_Failure_Report`             | `07_TESTING_VALIDATION/Failures/`     |
| Create meeting notes    | `Template_Meeting`                    | Appropriate folder in `11_MEETINGS/`  |
| Capture an open loop    | QuickAdd capture after setup          | `Open_Technical_Questions.md`         |

Setup automation: [[../00_PROJECT_CONTROL/QUICKADD_SETUP|QuickAdd]] · [[../00_PROJECT_CONTROL/OBSIDIAN_DAILY_NOTES_SETUP|Daily Notes]]

## Technical control

- Requirements: [[../01_Requirements/Requirements_Traceability_Matrix|Traceability Matrix]]
- Interfaces: [[../02_Systems_Engineering/Interface_Control_Document|Interface Control Document]]
- Decisions: [[../02_Systems_Engineering/Decision_Log|Decision Log]]
- Risks: [[../02_Systems_Engineering/Risk_Register|Risk Register]]
- Tests: [[../07_TESTING_VALIDATION/Test_Plan|Test Plan]]
- Safety: [[../08_SAFETY_QUALITY/Safety_Plan|Safety Plan]]
- Deliverables: [[../18_DELIVERABLES/Deliverables_Index|Deliverables Index]]

## New here?

> [!tip] First 30 minutes
> Open [[Team_Onboarding_Map]], learn the folder colors in [[Visual_Navigation]], then find your lead in [[../00_PROJECT_CONTROL/PROJECT_ROLES|Project Roles]].

> [!warning] Authority boundary
> Creating a note does not approve it. Discord coordinates; official registers and reviewed evidence remain the source of truth.

## Workspace tools

- [[NASA_SE_Process_Map|NASA SE Process Map]]
- [[../00_PROJECT_CONTROL/GRAPH_VIEW_SETUP|Graph View]]
- [[../00_PROJECT_CONTROL/BASES_SETUP|Bases]]
- [[../00_PROJECT_CONTROL/HOMEPAGE_SETUP|Homepage]]
- [[../00_PROJECT_CONTROL/GOOGLE_CALENDAR_INTEGRATION|Google Calendar]]
