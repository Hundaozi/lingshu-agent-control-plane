#!/usr/bin/env sh
set -eu

target_dir=".cursor/rules"
target_file="$target_dir/lingshu.mdc"
url="https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/lingshu.cursor-rules.md"

mkdir -p "$target_dir"
curl -fsSL "$url" -o "$target_file"

printf '%s\n' "Installed Lingshu Cursor rule:"
printf '%s\n' "$target_file"

