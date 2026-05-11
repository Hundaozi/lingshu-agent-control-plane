#!/usr/bin/env sh
set -eu

target_dir=".github"
target_file="$target_dir/copilot-instructions.md"
url="https://raw.githubusercontent.com/Hundaozi/lingshu-agent-control-plane/main/adapters/cursor-vscode/lingshu.cursor-rules.md"

mkdir -p "$target_dir"
curl -fsSL "$url" -o "$target_file"

printf '%s\n' "Installed Lingshu VSCode/Copilot instructions:"
printf '%s\n' "$target_file"

