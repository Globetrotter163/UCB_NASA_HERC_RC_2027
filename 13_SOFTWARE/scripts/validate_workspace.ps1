[CmdletBinding()]
param(
    [string]$RootPath
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

if ([string]::IsNullOrWhiteSpace($RootPath)) {
    $scriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
    $RootPath = (Resolve-Path (Join-Path $scriptDirectory '..\..')).Path
}

function Add-Issue {
    param(
        [System.Collections.Generic.List[string]]$List,
        [string]$Message
    )
    $List.Add($Message)
}

$issues = [System.Collections.Generic.List[string]]::new()
$root = (Resolve-Path -LiteralPath $RootPath).Path
$markdownFiles = @(Get-ChildItem -LiteralPath $root -Recurse -File -Filter '*.md')

# JSON de Obsidian.
$jsonFiles = @(Get-ChildItem -LiteralPath (Join-Path $root '.obsidian') -Recurse -File -Filter '*.json')
foreach ($file in $jsonFiles) {
    try {
        $null = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8 | ConvertFrom-Json
    }
    catch {
        Add-Issue $issues "JSON inválido: $($file.FullName.Substring($root.Length + 1))"
    }
}

# Índices de notas para resolver enlaces de Obsidian.
$byRelativePath = @{}
$byBaseName = @{}
foreach ($file in $markdownFiles) {
    $relative = $file.FullName.Substring($root.Length + 1).Replace('\', '/')
    $key = [IO.Path]::ChangeExtension($relative, $null).ToLowerInvariant()
    $byRelativePath[$key] = $relative
    $baseName = [IO.Path]::GetFileNameWithoutExtension($relative).ToLowerInvariant()
    if (!$byBaseName.ContainsKey($baseName)) {
        $byBaseName[$baseName] = @()
    }
    $byBaseName[$baseName] += $relative
}

foreach ($file in $markdownFiles) {
    $relative = $file.FullName.Substring($root.Length + 1).Replace('\', '/')
    $text = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8
    if ($null -eq $text) {
        $text = ''
    }

    # Bloques de código.
    $fenceCount = ([regex]::Matches($text, '(?m)^```')).Count
    if ($fenceCount % 2 -ne 0) {
        Add-Issue $issues "Bloque de código sin cierre: $relative"
    }

    # Frontmatter.
    $lines = @(Get-Content -LiteralPath $file.FullName -Encoding UTF8)
    if ($lines.Count -gt 0 -and $lines[0] -eq '---') {
        $end = -1
        for ($i = 1; $i -lt $lines.Count; $i++) {
            if ($lines[$i] -eq '---') {
                $end = $i
                break
            }
        }
        if ($end -lt 0) {
            Add-Issue $issues "Frontmatter sin cierre: $relative"
        }
        else {
            $keys = @{}
            for ($i = 1; $i -lt $end; $i++) {
                if ($lines[$i] -match '^([A-Za-z0-9_-]+):') {
                    $key = $Matches[1]
                    if ($keys.ContainsKey($key)) {
                        Add-Issue $issues "Clave frontmatter repetida '$key': $relative"
                    }
                    $keys[$key] = $true
                }
            }
        }
    }

    # Tablas Markdown.
    $expectedColumns = $null
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        if ($line -match '^\s*\|') {
            $normalized = [regex]::Replace(
                $line,
                '\[\[[^\]]+\]\]',
                { param($match) $match.Value.Replace('|', '¦') }
            ).Replace('\|', '¦')
            $columns = [Math]::Max(0, ([regex]::Matches($normalized, '\|')).Count - 1)
            if ($null -eq $expectedColumns) {
                $expectedColumns = $columns
            }
            elseif ($columns -ne $expectedColumns) {
                Add-Issue $issues "Tabla inconsistente en ${relative}:$($i + 1)"
            }
        }
        else {
            $expectedColumns = $null
        }
    }

    # Enlaces internos.
    $directory = [IO.Path]::GetDirectoryName($relative)
    if ($null -eq $directory) {
        $directory = ''
    }
    else {
        $directory = $directory.Replace('\', '/')
    }

    foreach ($match in [regex]::Matches($text, '!?\[\[([^\]]+)\]\]')) {
        $raw = $match.Groups[1].Value
        $target = ($raw -split '\|', 2)[0]
        $target = ($target -split '#', 2)[0]
        $target = ($target -split '\^', 2)[0]
        if ([string]::IsNullOrWhiteSpace($target)) {
            continue
        }

        $target = $target.Trim().Replace('\', '/')
        $extension = [IO.Path]::GetExtension($target)
        if ($extension -and $extension -ne '.md') {
            $absoluteAsset = Join-Path $root $target
            $relativeAsset = Join-Path $file.DirectoryName $target
            if (!(Test-Path -LiteralPath $absoluteAsset) -and !(Test-Path -LiteralPath $relativeAsset)) {
                Add-Issue $issues "Adjunto inexistente: $relative -> $raw"
            }
            continue
        }

        if ($extension -eq '.md') {
            $withoutExtension = $target.Substring(0, $target.Length - 3)
        }
        else {
            $withoutExtension = $target
        }

        $candidates = @()
        $vaultKey = $withoutExtension.TrimStart('/').ToLowerInvariant()
        if ($byRelativePath.ContainsKey($vaultKey)) {
            $candidates += $byRelativePath[$vaultKey]
        }

        if ($directory) {
            try {
                $absoluteCandidate = [IO.Path]::GetFullPath(
                    (Join-Path $root (Join-Path $directory $withoutExtension))
                )
                if ($absoluteCandidate.StartsWith($root, [StringComparison]::OrdinalIgnoreCase)) {
                    $relativeKey = $absoluteCandidate.Substring($root.Length + 1).Replace('\', '/').ToLowerInvariant()
                    if ($byRelativePath.ContainsKey($relativeKey)) {
                        $candidates += $byRelativePath[$relativeKey]
                    }
                }
            }
            catch {
                Add-Issue $issues "Ruta de enlace inválida: $relative -> $raw"
            }
        }

        $baseName = [IO.Path]::GetFileName($withoutExtension).ToLowerInvariant()
        if ($byBaseName.ContainsKey($baseName)) {
            $candidates += $byBaseName[$baseName]
        }
        $candidates = @($candidates | Sort-Object -Unique)

        if ($candidates.Count -eq 0) {
            Add-Issue $issues "Enlace roto: $relative -> $raw"
        }
        elseif ($candidates.Count -gt 1 -and $withoutExtension -notmatch '/') {
            Add-Issue $issues "Enlace ambiguo: $relative -> $raw"
        }
    }
}

# Plantillas mínimas.
$templates = @(Get-ChildItem -LiteralPath (Join-Path $root '12_TEMPLATES') -File -Filter '*.md')
foreach ($template in $templates) {
    $text = Get-Content -LiteralPath $template.FullName -Raw -Encoding UTF8
    if ($text -notmatch '(?m)^type:' -or $text -notmatch '(?m)^status:') {
        Add-Issue $issues "Plantilla sin type/status: $($template.Name)"
    }
}

# Ejemplos claramente delimitados.
$exampleFiles = @(Get-ChildItem -LiteralPath $root -Recurse -File -Filter '*Example*.md')
foreach ($example in $exampleFiles) {
    $text = Get-Content -LiteralPath $example.FullName -Raw -Encoding UTF8
    if ($text -notmatch '(?m)^status:\s*example\s*$') {
        Add-Issue $issues "Ejemplo sin status: example: $($example.FullName.Substring($root.Length + 1))"
    }
}

# Los únicos Markdown vacíos permitidos son respaldos exactos.
$emptyMarkdown = @($markdownFiles | Where-Object { $_.Length -eq 0 })
foreach ($empty in $emptyMarkdown) {
    if ($empty.FullName -notmatch '\\99_ARCHIVE\\Migration_Backups\\') {
        Add-Issue $issues "Markdown vacío fuera de respaldos: $($empty.FullName.Substring($root.Length + 1))"
    }
}

Write-Host "Archivos Markdown: $($markdownFiles.Count)"
Write-Host "Archivos JSON: $($jsonFiles.Count)"
Write-Host "Plantillas: $($templates.Count)"
Write-Host "Ejemplos: $($exampleFiles.Count)"
Write-Host "Problemas: $($issues.Count)"

if ($issues.Count -gt 0) {
    $issues | Sort-Object -Unique | ForEach-Object { Write-Error $_ }
    exit 1
}

Write-Host 'VALIDACION CORRECTA'
exit 0
