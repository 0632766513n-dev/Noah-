#!/usr/bin/env bash
# Installs the Claude / AI-coding toolset listed in README.md.
# Requirements: git, Node.js >= 18 (npm), and uv (https://docs.astral.sh/uv/).
# Usage: ./install.sh [target-dir-for-cloned-repos]   (default: ~/claude-tools)
set -u
DEST="${1:-$HOME/claude-tools}"
FAILED=()

step() { echo; echo "==> $*"; }
try()  { "$@" || FAILED+=("$*"); }

step "npm CLIs"
try npm install -g \
  @anthropic-ai/claude-code \
  @musistudio/claude-code-router \
  task-master-ai \
  @anthropic-ai/mcpb \
  @continuedev/cli \
  cline

step "Python CLIs (uv tool)"
try uv tool install aider-chat --python 3.12
try uv tool install open-interpreter --python 3.11
try uv tool install SuperClaude
command -v superclaude >/dev/null && try superclaude install

step "Cloning source / reference repos into $DEST"
mkdir -p "$DEST"
REPOS=(
  anthropics/claude-cookbooks
  anthropics/claude-quickstarts
  anthropics/mcpb
  hesreallyhim/awesome-claude-code
  punkpeye/awesome-mcp-servers
  Doriandarko/claude-engineer
  liuyoshio/mcp-compass
  anaisbetts/mcp-installer
  samanhappy/mcphub
  All-Hands-AI/OpenHands
)
for r in "${REPOS[@]}"; do
  name="${r#*/}"
  if [ -d "$DEST/$name/.git" ]; then
    echo "update $r"; try git -C "$DEST/$name" pull -q --ff-only
  else
    echo "clone  $r"; try git clone -q --depth 1 "https://github.com/$r.git" "$DEST/$name"
  fi
done

echo
if [ ${#FAILED[@]} -eq 0 ]; then echo "All steps succeeded."; else
  echo "Failed steps:"; printf '  - %s\n' "${FAILED[@]}"; exit 1; fi
