#!/usr/bin/env sh
set -eu

lang="${1:-${LINGSHU_LANG:-cn}}"
if [ "$lang" = "en" ]; then
  zip_name="lingshu-control-plane-skill-en.zip"
else
  zip_name="lingshu-control-plane-skill.zip"
fi
url="https://github.com/Hundaozi/lingshu-agent-control-plane/raw/main/packages/$zip_name"
target_file="$zip_name"

curl -fL "$url" -o "$target_file"

printf '%s\n' "Downloaded Lingshu Claude Skill ZIP:"
printf '%s\n' "$target_file"
printf '%s\n' "Upload this ZIP in Claude: Customize > Skills > + > Upload a skill."
