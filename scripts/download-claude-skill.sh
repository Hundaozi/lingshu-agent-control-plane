#!/usr/bin/env sh
set -eu

url="https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/lingshu-control-plane-skill.zip"
target_file="lingshu-control-plane-skill.zip"

curl -fL "$url" -o "$target_file"

printf '%s\n' "Downloaded Lingshu Claude Skill ZIP:"
printf '%s\n' "$target_file"
printf '%s\n' "Upload this ZIP in Claude: Customize > Skills > + > Upload a skill."

