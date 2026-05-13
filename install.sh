#!/usr/bin/env bash
# Install my-skills by symlinking each skill into ~/.claude/skills/
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DST="$HOME/.claude/skills"
SKIP_NAMES="template-skill"

mkdir -p "$SKILLS_DST"

link_skill() {
    local skill_dir="$1"
    local name
    name="$(basename "$skill_dir")"

    # Skip template and non-skill directories
    for skip in $SKIP_NAMES; do
        [ "$name" = "$skip" ] && return
    done

    # Verify SKILL.md exists
    [ -f "$skill_dir/SKILL.md" ] || return

    local target="$SKILLS_DST/$name"

    if [ -L "$target" ]; then
        rm "$target"
        echo "  [replaced] $name"
    elif [ -d "$target" ]; then
        echo "  [skipped]  $name (existing directory, not a symlink)"
        return
    fi

    ln -s "$skill_dir" "$target"
    echo "  [linked]   $name"
}

echo "Installing skills..."

# 1. Custom skills at repo root (directories with SKILL.md)
shopt -s nullglob
for skill_dir in "$SCRIPT_DIR"/*/; do
    link_skill "$skill_dir"
done
shopt -u nullglob

# 2. Skills from submodules
# ui-ux-pro-max-skill
UI_UX_DIR="$SCRIPT_DIR/ui-ux-pro-max-skill/.claude/skills"
if [ -d "$UI_UX_DIR" ]; then
    shopt -s nullglob
    for skill_dir in "$UI_UX_DIR"/*/; do
        link_skill "$skill_dir"
    done
    shopt -u nullglob
fi

# anthropics-skills (pptx, pdf, etc.)
ANTHROPICS_DIR="$SCRIPT_DIR/anthropics-skills/skills"
if [ -d "$ANTHROPICS_DIR" ]; then
    shopt -s nullglob
    for skill_dir in "$ANTHROPICS_DIR"/*/; do
        link_skill "$skill_dir"
    done
    shopt -u nullglob
fi

echo ""
echo "Done. Installed skills:"
ls -1 "$SKILLS_DST"
