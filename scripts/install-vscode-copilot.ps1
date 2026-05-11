$ErrorActionPreference = "Stop"

$repoRaw = "https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/lingshu.cursor-rules.md"
$targetDir = Join-Path (Get-Location) ".github"
$targetFile = Join-Path $targetDir "copilot-instructions.md"

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
Invoke-WebRequest -Uri $repoRaw -OutFile $targetFile -UseBasicParsing

Write-Host "Installed Lingshu VSCode/Copilot instructions:"
Write-Host $targetFile

