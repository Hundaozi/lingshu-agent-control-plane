$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$skillDir = Join-Path $root "adapters\claude-skill\lingshu-control-plane"
$packageDir = Join-Path $root "packages"
$zipPath = Join-Path $packageDir "lingshu-control-plane-skill.zip"
$staging = Join-Path $root ".package-staging"

if (Test-Path $staging) {
  Remove-Item -LiteralPath $staging -Recurse -Force
}

New-Item -ItemType Directory -Force -Path $packageDir | Out-Null
New-Item -ItemType Directory -Force -Path $staging | Out-Null
Copy-Item -LiteralPath $skillDir -Destination $staging -Recurse

if (Test-Path $zipPath) {
  Remove-Item -LiteralPath $zipPath -Force
}

Compress-Archive -Path (Join-Path $staging "lingshu-control-plane") -DestinationPath $zipPath
Remove-Item -LiteralPath $staging -Recurse -Force

Write-Host "Packaged Claude Skill:"
Write-Host $zipPath

