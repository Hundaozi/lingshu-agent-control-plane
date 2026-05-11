$ErrorActionPreference = "Stop"

$lang = if ($env:LINGSHU_LANG) { $env:LINGSHU_LANG.ToLowerInvariant() } else { "cn" }
$zipName = if ($lang -eq "en") { "lingshu-control-plane-skill-en.zip" } else { "lingshu-control-plane-skill.zip" }
$url = "https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/$zipName"
$targetFile = Join-Path (Get-Location) $zipName

Invoke-WebRequest -Uri $url -OutFile $targetFile -UseBasicParsing

Write-Host "Downloaded Lingshu Claude Skill ZIP:"
Write-Host $targetFile
Write-Host "Upload this ZIP in Claude: Customize > Skills > + > Upload a skill."
