$ErrorActionPreference = "Stop"

$url = "https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/lingshu-control-plane-skill.zip"
$targetFile = Join-Path (Get-Location) "lingshu-control-plane-skill.zip"

Invoke-WebRequest -Uri $url -OutFile $targetFile -UseBasicParsing

Write-Host "Downloaded Lingshu Claude Skill ZIP:"
Write-Host $targetFile
Write-Host "Upload this ZIP in Claude: Customize > Skills > + > Upload a skill."

