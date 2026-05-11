$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$skillDir = Join-Path $root "adapters\claude-skill\lingshu-control-plane"
$skillDirEn = Join-Path $root "adapters\claude-skill\lingshu-control-plane-en"
$packageDir = Join-Path $root "packages"
$zipPath = Join-Path $packageDir "lingshu-control-plane-skill.zip"
$zipPathEn = Join-Path $packageDir "lingshu-control-plane-skill-en.zip"
$staging = Join-Path $root ".package-staging"

if (Test-Path $staging) {
  Remove-Item -LiteralPath $staging -Recurse -Force
}

New-Item -ItemType Directory -Force -Path $packageDir | Out-Null
New-Item -ItemType Directory -Force -Path $staging | Out-Null
Copy-Item -LiteralPath $skillDir -Destination $staging -Recurse
Copy-Item -LiteralPath $skillDirEn -Destination $staging -Recurse

if (Test-Path $zipPath) {
  Remove-Item -LiteralPath $zipPath -Force
}
if (Test-Path $zipPathEn) {
  Remove-Item -LiteralPath $zipPathEn -Force
}

Compress-Archive -Path (Join-Path $staging "lingshu-control-plane") -DestinationPath $zipPath
Compress-Archive -Path (Join-Path $staging "lingshu-control-plane-en") -DestinationPath $zipPathEn
Remove-Item -LiteralPath $staging -Recurse -Force

Write-Host "Packaged Claude Skill:"
Write-Host $zipPath
Write-Host $zipPathEn
