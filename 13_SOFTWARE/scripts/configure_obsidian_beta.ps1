[CmdletBinding()]
param(
    [switch]$Apply,
    [string]$RootPath
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

if ([string]::IsNullOrWhiteSpace($RootPath)) {
    $scriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
    $RootPath = (Resolve-Path (Join-Path $scriptDirectory '..\..')).Path
}

$root = (Resolve-Path -LiteralPath $RootPath).Path
$quickAddPath = Join-Path $root '.obsidian\plugins\quickadd\data.json'
$templaterPath = Join-Path $root '.obsidian\plugins\templater-obsidian\data.json'
$dash = [char]0x2014
$invertedQuestion = [char]0x00BF
$eAcute = [char]0x00E9
$oAcute = [char]0x00F3

if (!$Apply) {
    Write-Host 'Modo de vista previa: no se modifico ningun archivo.'
    Write-Host 'Cierre Obsidian y vuelva a ejecutar con -Apply para instalar el perfil beta.'
    exit 0
}

if (Get-Process -Name Obsidian -ErrorAction SilentlyContinue) {
    throw 'Obsidian esta abierto. Cierre la aplicacion antes de aplicar la configuracion.'
}

$backupFolder = Join-Path $root (
    '99_ARCHIVE\Migration_Backups\plugin-config-' + (Get-Date -Format 'yyyy-MM-dd-HHmmss')
)
New-Item -ItemType Directory -Path $backupFolder -Force | Out-Null

if (Test-Path -LiteralPath $quickAddPath) {
    Copy-Item -LiteralPath $quickAddPath -Destination (Join-Path $backupFolder 'quickadd-data.json')
}
if (Test-Path -LiteralPath $templaterPath) {
    Copy-Item -LiteralPath $templaterPath -Destination (Join-Path $backupFolder 'templater-data.json')
}

function New-FileOpening {
    return [ordered]@{
        location  = 'reuse'
        direction = 'vertical'
        mode      = 'live'
        focus     = $true
    }
}

function New-TemplateChoice {
    param(
        [string]$Id,
        [string]$Name,
        [string]$TemplatePath,
        [string]$FileNameFormat,
        [string[]]$Folders,
        [bool]$ChooseFolder = $false
    )

    return [ordered]@{
        id             = $Id
        name           = $Name
        type           = 'Template'
        command        = $false
        templatePath   = $TemplatePath
        fileNameFormat = [ordered]@{
            enabled = $true
            format  = $FileNameFormat
        }
        folder         = [ordered]@{
            enabled                        = $true
            folders                        = $Folders
            chooseWhenCreatingNote         = $ChooseFolder
            createInSameFolderAsActiveFile = $false
            chooseFromSubfolders           = $false
        }
        appendLink     = $false
        openFile       = $true
        fileOpening    = New-FileOpening
        fileExistsBehavior = [ordered]@{
            kind = 'prompt'
        }
    }
}

$choices = @(
    (New-TemplateChoice 'f4d14a25-bce3-4e1c-81b1-785b0f2bb101' 'Nuevo requisito' `
        '12_TEMPLATES/Template_Requirement.md' 'REQ-{{VALUE}}' `
        @('01_Requirements/Requirements')),
    (New-TemplateChoice 'a5fd21e8-f1c4-4edc-bb1c-3a109a78b102' 'Nueva interfaz' `
        '12_TEMPLATES/Template_Interface.md' 'ICD-{{VALUE}}' `
        @('02_Systems_Engineering/Interfaces')),
    (New-TemplateChoice '2d3ec59b-4dbf-462e-98f5-805db6cd1103' "Nueva decisi${oAcute}n" `
        '12_TEMPLATES/Template_Decision.md' 'DEC-{{VALUE}}' `
        @('02_Systems_Engineering/Decisions')),
    (New-TemplateChoice '2ac09e17-3756-4e76-b73a-17d371088104' 'Nuevo riesgo' `
        '12_TEMPLATES/Template_Risk.md' 'RSK-{{VALUE}}' `
        @('02_Systems_Engineering/Risks')),
    (New-TemplateChoice '4a8acf12-0e6c-49f9-ac43-79b07f2fe105' 'Nueva prueba' `
        '12_TEMPLATES/Template_Test.md' 'TST-{{VALUE}}' `
        @('07_TESTING_VALIDATION/Tests')),
    (New-TemplateChoice '8685fbbc-b263-40ac-8712-b45b673e1106' 'Nuevo reporte de falla' `
        '12_TEMPLATES/Template_Failure_Report.md' 'FR-{{VALUE}}' `
        @('07_TESTING_VALIDATION/Failures')),
    (New-TemplateChoice '779a06fb-811d-4a6d-a9c1-051d36109107' 'Nueva minuta' `
        '12_TEMPLATES/Template_Meeting.md' 'MTG-{{DATE:YYYY-MM-DD}}-{{VALUE}}' `
        @(
            '11_MEETINGS/Weekly_Reviews',
            '11_MEETINGS/Technical_Reviews',
            '11_MEETINGS/Integration_Reviews',
            '11_MEETINGS/Advisor_Meetings',
            '11_MEETINGS/Safety_Reviews'
        ) $true),
    (New-TemplateChoice '1a2a341c-5852-4aa1-bb20-9d4142d7a108' 'Nuevo estado diario' `
        '12_TEMPLATES/Template_Daily_Status.md' '{{DATE:YYYY-MM-DD}}' `
        @('00_PROJECT_CONTROL/DAILY_STATUS')),
    (New-TemplateChoice '6ac5f09e-2c16-4f64-a24f-8a93fbdef109' 'Nuevo evento' `
        '12_TEMPLATES/Template_Calendar_Event.md' '{{DATE:YYYY-MM-DD}}_{{VALUE}}' `
        @('00_PROJECT_CONTROL/CALENDAR_EVENTS')),
    [ordered]@{
        id                        = 'ed0a3b7b-529e-4af1-afeb-3aaec9e52110'
        name                      = 'Capturar bucle abierto'
        type                      = 'Capture'
        command                   = $false
        appendLink                = $false
        captureTo                 = '02_Systems_Engineering/Open_Technical_Questions.md'
        captureToActiveFile       = $false
        captureToCanvasNodeId     = ''
        activeFileWritePosition   = 'bottom'
        createFileIfItDoesntExist = [ordered]@{
            enabled            = $false
            createWithTemplate = $false
            template           = ''
        }
        format                    = [ordered]@{
            enabled = $true
            format  = "`n- [ ] {{DATE:YYYY-MM-DD}} $dash {{VALUE}} #bucle-abierto"
        }
        insertAfter               = [ordered]@{
            enabled                      = $false
            after                        = ''
            insertAtEnd                  = $false
            considerSubsections          = $false
            createIfNotFound             = $false
            createIfNotFoundLocation     = 'top'
            inline                       = $false
            replaceExisting              = $false
            blankLineAfterMatchMode      = 'auto'
        }
        newLineCapture             = [ordered]@{
            enabled   = $false
            direction = 'below'
        }
        prepend                    = $false
        task                       = $false
        openFile                   = $false
        fileOpening                = New-FileOpening
        templater                  = [ordered]@{
            afterCapture = 'none'
        }
    }
)

$quickAdd = [ordered]@{
    choices = @(
        [ordered]@{
            id          = 'c32e4f8b-17dd-4c82-9fd9-813367f54801'
            name        = "NASA HERC $dash Crear nota"
            type        = 'Multi'
            command     = $true
            choices     = $choices
            collapsed   = $false
            placeholder = "${invertedQuestion}Qu${eAcute} nota desea crear?"
        }
    )
    inputPrompt                      = 'single-line'
    persistInputPromptDrafts        = $true
    useSelectionAsCaptureValue      = $true
    devMode                          = $false
    templateFolderPath               = '12_TEMPLATES'
    globalVariables                  = [ordered]@{}
    onePageInputEnabled              = $false
    disableOnlineFeatures            = $true
    enableRibbonIcon                 = $true
    showCaptureNotification          = $true
    showInputCancellationNotification = $false
    enableTemplatePropertyTypes      = $false
    ai                               = [ordered]@{
        defaultModel              = 'Ask me'
        defaultSystemPrompt       = 'Asistente deshabilitado para este proyecto.'
        promptTemplatesFolderPath = ''
        showAssistant             = $false
        providers                 = @()
    }
}

$templater = [ordered]@{
    command_timeout              = 5
    templates_folder            = '12_TEMPLATES'
    templates_pairs             = @(@('', ''))
    trigger_on_file_creation    = $false
    auto_jump_to_cursor         = $false
    enable_system_commands      = $false
    shell_path                  = ''
    user_scripts_folder         = ''
    enable_folder_templates     = $false
    folder_templates            = @()
    enable_file_templates       = $false
    file_templates              = @()
    syntax_highlighting         = $true
    syntax_highlighting_mobile  = $false
    enabled_templates_hotkeys   = @()
    startup_templates           = @()
    intellisense_render         = 1
    ignore_folders_on_creation  = @()
}

New-Item -ItemType Directory -Path (Split-Path -Parent $quickAddPath) -Force | Out-Null
New-Item -ItemType Directory -Path (Split-Path -Parent $templaterPath) -Force | Out-Null

$quickAdd | ConvertTo-Json -Depth 20 | Set-Content -LiteralPath $quickAddPath -Encoding UTF8
$templater | ConvertTo-Json -Depth 20 | Set-Content -LiteralPath $templaterPath -Encoding UTF8

Write-Host "Respaldo: $backupFolder"
Write-Host 'Perfil beta de QuickAdd y Templater aplicado.'
Write-Host 'Abra Obsidian y ejecute la validacion manual.'
