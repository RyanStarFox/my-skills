#!/usr/bin/env bash
# Install my-skills by symlinking each skill into ~/.claude/skills/
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DST="$HOME/.claude/skills"
SKIP_NAMES="template-skill"

mkdir -p "$SKILLS_DST"

echo "Installing skills..."

shopt -s nullglob
for skill_dir in "$SCRIPT_DIR"/*/; do
    name="$(basename "$skill_dir")"

    skip=0
    for s in $SKIP_NAMES; do
        [ "$name" = "$s" ] && skip=1 && break
    done
    [ "$skip" = "1" ] && continue

    # Verify SKILL.md exists
    [ -f "$skill_dir/SKILL.md" ] || continue

    target="$SKILLS_DST/$name"

    if [ -L "$target" ]; then
        rm "$target"
        echo "  [replaced] $name"
    elif [ -d "$target" ]; then
        echo "  [skipped]  $name (existing directory, not a symlink)"
        continue
    fi

    ln -s "$skill_dir" "$target"
    echo "  [linked]   $name"
done
shopt -u nullglob

echo ""
echo "Done. Installed skills:"
ls -1 "$SKILLS_DST"
