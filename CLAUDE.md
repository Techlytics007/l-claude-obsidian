# l-claude-obsidian

Obsidian + Claude: From Basics to Guru — for Data Science and Software Engineering.

## Context
Part of the ajay-learn workspace at `/Users/ajay/dev/ajay-learn/`.
Inherits global rules from `~/.claude/CLAUDE.md` and workspace rules from `../CLAUDE.md`.

## Project Structure
- `modules/` — 16 learning modules (00-orientation through 15-power-user-synthesis)
- `knowledge-base/` — reference docs (obsidian/, claude-workflows/, cheatsheets/)
- `vault-templates/` — Obsidian Templater templates to copy into your vault
- `sandbox/` — free-form practice area
- `automation/` — Claude API scripts for advanced automation

## Learning Path
Work modules in order: 00 → 15. Each has hands-on exercises.
Do the exercises in your actual Obsidian vault — not just read the module.

## Vault Location
Default assumed vault: `~/Documents/MyBrain`
Change this in automation scripts if your vault is elsewhere.

## Key Commands
```bash
# Generate a note via Claude API
python automation/quick-note.py "Topic" "Resources/Folder"

# Open Claude Code with vault context
cd ~/Documents/MyBrain && claude
```
