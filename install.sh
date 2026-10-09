#!/bin/sh
set -eu

PROJECT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
STARSHIP_VARIANT=${1:-sharp}

if [ "$#" -gt 1 ]; then
    printf '%s\n' "Usage: $0 [round|sharp]" >&2
    exit 2
fi
case "$STARSHIP_VARIANT" in
    round|sharp) ;;
    *)
        printf '%s\n' "Usage: $0 [round|sharp]" >&2
        exit 2
        ;;
esac

mkdir -p "$HOME/.config" "$HOME/.codex/themes" "$HOME/.claude/themes"

cp "$PROJECT_DIR/starship/starship-$STARSHIP_VARIANT.toml" "$HOME/.config/starship.toml"
cp "$PROJECT_DIR/codex/back-to-the-code-dark.tmTheme" "$HOME/.codex/themes/"
cp "$PROJECT_DIR/codex/back-to-the-code-light.tmTheme" "$HOME/.codex/themes/"
cp "$PROJECT_DIR/claude/back-to-the-code-dark.json" "$HOME/.claude/themes/"
cp "$PROJECT_DIR/claude/back-to-the-code-light.json" "$HOME/.claude/themes/"

printf '%s\n' "Installed Starship, Codex and Claude Code theme files."
printf '%s\n' "Starship ($STARSHIP_VARIANT): $HOME/.config/starship.toml"
printf '%s\n' "Codex:    $HOME/.codex/themes/back-to-the-code-{dark,light}.tmTheme"
printf '%s\n' "Claude:   $HOME/.claude/themes/back-to-the-code-{dark,light}.json"
printf '%s\n' ""
printf '%s\n' "For x-cmd Starship in Fish:"
printf '%s\n' "  x starship use \"\$HOME/.config/starship.toml\""
printf '%s\n' "For iTerm2: import the .itermcolors files from iterm2/."
