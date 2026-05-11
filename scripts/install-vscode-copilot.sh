#!/usr/bin/env sh
set -eu

target_dir=".github"
target_file="$target_dir/copilot-instructions.md"
lang="${1:-${LINGSHU_LANG:-cn}}"
if [ "$lang" = "en" ]; then
  file_name="lingshu.cursor-rules-en.md"
else
  file_name="lingshu.cursor-rules.md"
fi
url="https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/$file_name"

mkdir -p "$target_dir"
curl -fsSL "$url" -o "$target_file"

printf '%s\n' "Installed Lingshu VSCode/Copilot instructions:"
printf '%s\n' "$target_file"
