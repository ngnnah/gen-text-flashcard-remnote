#!/usr/bin/env bash
#
# Setup symlinks for multi-tool AI agent compatibility
# Supports: Claude Code, AmpCode, VSCode Copilot (GitHub)
#
# Source of truth:
#   - AGENTS.md (instructions)
#   - .agent/skills/ (skills)
#
# Run from repo root: ./scripts/setup-symlinks.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$REPO_ROOT"

echo "Setting up symlinks for AI agent tools..."

# Claude Code: CLAUDE.md -> AGENTS.md
mkdir -p .claude
ln -sf ../AGENTS.md .claude/CLAUDE.md
echo "  ✓ .claude/CLAUDE.md -> ../AGENTS.md"

# Claude Code: skill symlink
mkdir -p .claude/skills/generate-remnote-flashcard
ln -sf ../../../.agent/skills/generate-text-remnote-flashcard.md .claude/skills/generate-remnote-flashcard/SKILL.md
echo "  ✓ .claude/skills/generate-remnote-flashcard/SKILL.md -> .agent/skills/..."

# VSCode Copilot: copilot-instructions.md -> AGENTS.md
mkdir -p .github
ln -sf ../AGENTS.md .github/copilot-instructions.md
echo "  ✓ .github/copilot-instructions.md -> ../AGENTS.md"

echo ""
echo "Done! Symlink structure:"
echo ""
echo "  AGENTS.md                          <- Source of truth (instructions)"
echo "  .agent/skills/                     <- Source of truth (skills, AmpCode)"
echo "  │"
echo "  ├── .claude/CLAUDE.md              -> AGENTS.md (Claude Code)"
echo "  ├── .claude/skills/.../SKILL.md   -> .agent/skills/... (Claude Code)"
echo "  └── .github/copilot-instructions.md -> AGENTS.md (VSCode Copilot)"
echo ""
echo "All tools now share the same instructions and skills!"
