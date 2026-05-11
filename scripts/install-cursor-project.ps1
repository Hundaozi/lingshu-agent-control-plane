$ErrorActionPreference = "Stop"

$repoRaw = "https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/lingshu.cursor-rules.md"
$targetDir = Join-Path (Get-Location) ".cursor\rules"
$targetFile = Join-Path $targetDir "lingshu.mdc"

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
Invoke-WebRequest -Uri $repoRaw -OutFile $targetFile -UseBasicParsing

Write-Host "Installed Lingshu Cursor rule:"
Write-Host $targetFile

