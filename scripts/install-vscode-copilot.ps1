$ErrorActionPreference = "Stop"

$lang = if ($env:LINGSHU_LANG) { $env:LINGSHU_LANG.ToLowerInvariant() } else { "cn" }
$fileName = if ($lang -eq "en") { "lingshu.cursor-rules-en.md" } else { "lingshu.cursor-rules.md" }
$repoRaw = "https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/$fileName"
$targetDir = Join-Path (Get-Location) ".github"
$targetFile = Join-Path $targetDir "copilot-instructions.md"

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
Invoke-WebRequest -Uri $repoRaw -OutFile $targetFile -UseBasicParsing

Write-Host "Installed Lingshu VSCode/Copilot instructions:"
Write-Host $targetFile
