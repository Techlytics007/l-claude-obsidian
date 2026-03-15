#!/usr/bin/env bash
# setup.sh — Obsidian + Claude setup for Mac
# Installs Obsidian, creates vault, copies templates, downloads curriculum
#
# Usage (one-liner from Terminal):
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Techlytics007/l-claude-obsidian/main/setup.sh)"
#
# Or if you already cloned the repo:
#   bash setup.sh

set -euo pipefail

VAULT_NAME="MyBrain"
VAULT_PATH="$HOME/Documents/$VAULT_NAME"
CURRICULUM_PATH="$HOME/Documents/l-claude-obsidian"
GITHUB_REPO="https://github.com/Techlytics007/l-claude-obsidian.git"

# ── Colors ─────────────────────────────────────────────────────────────────
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

info()    { echo -e "${BLUE}→ $1${NC}"; }
success() { echo -e "${GREEN}✓ $1${NC}"; }
warn()    { echo -e "${YELLOW}⚠ $1${NC}"; }

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Obsidian + Claude Setup"
echo "  Vault: $VAULT_PATH"
echo "  Curriculum: $CURRICULUM_PATH"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# ── Step 1: Install Homebrew if needed ────────────────────────────────────
if ! command -v brew &>/dev/null; then
    info "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    success "Homebrew installed"
else
    success "Homebrew already installed"
fi

# ── Step 2: Install Obsidian ──────────────────────────────────────────────
if [ -d "/Applications/Obsidian.app" ]; then
    success "Obsidian already installed"
else
    info "Installing Obsidian..."
    brew install --cask obsidian
    success "Obsidian installed"
fi

# ── Step 3: Install Git (needed for later modules) ────────────────────────
if ! command -v git &>/dev/null; then
    info "Installing git..."
    brew install git
    success "git installed"
else
    success "git already installed"
fi

# ── Step 4: Download curriculum ───────────────────────────────────────────
if [ -d "$CURRICULUM_PATH" ]; then
    info "Curriculum already exists at $CURRICULUM_PATH — pulling latest..."
    git -C "$CURRICULUM_PATH" pull --quiet
    success "Curriculum updated"
else
    info "Downloading curriculum..."
    git clone --quiet "$GITHUB_REPO" "$CURRICULUM_PATH"
    success "Curriculum downloaded to $CURRICULUM_PATH"
fi

# ── Step 5: Create vault folder structure ────────────────────────────────
info "Creating vault at $VAULT_PATH..."

mkdir -p "$VAULT_PATH"/{Inbox,Projects,Areas,Resources,Archive,"Daily Notes",Templates,Canvas}
mkdir -p "$VAULT_PATH/Resources"/{ML,"Software-Engineering",Python,Books,Papers}
mkdir -p "$VAULT_PATH/.obsidian"

success "Vault folders created"

# ── Step 6: Copy vault templates ─────────────────────────────────────────
info "Copying note templates into vault..."

cp "$CURRICULUM_PATH/vault-templates/"*.md "$VAULT_PATH/Templates/" 2>/dev/null || \
    warn "Templates folder not found in curriculum — skip"

success "Templates copied to $VAULT_PATH/Templates/"

# ── Step 7: Create starter notes ─────────────────────────────────────────
info "Creating starter notes..."

# Home note
cat > "$VAULT_PATH/Home.md" << 'EOF'
---
tags: [home]
---

# Home 🏠

Welcome to your Second Brain! Start here.

## Active Projects
-

## Learning
- [[Obsidian + Claude MOC]]

## Quick Capture Inbox
→ [[Inbox/]] folder

## Daily Notes
→ [[Daily Notes/]] folder

---
*Tip: Bookmark this note (right-click → Bookmark) for instant access.*
EOF

# Obsidian + Claude MOC
cat > "$VAULT_PATH/Resources/Obsidian + Claude MOC.md" << 'EOF'
---
tags: [#type/moc, #topic/obsidian]
status: active
---

# Obsidian + Claude MOC

My learning map for Obsidian + Claude.

## Curriculum
Working through: [l-claude-obsidian](https://github.com/Techlytics007/l-claude-obsidian)

## Modules Progress
- [ ] Module 00 — Orientation
- [ ] Module 01 — Core Concepts
- [ ] Module 02 — Markdown Mastery
- [ ] Module 03 — Linking Your Thinking
- [ ] Module 04 — Maps of Content
- [ ] Module 05 — Core Plugins
- [ ] Module 06 — Templater
- [ ] Module 07 — Dataview
- [ ] Module 08 — Community Plugins
- [ ] Module 09 — Claude + Obsidian Basics
- [ ] Module 10 — Claude as Research Partner
- [ ] Module 11 — Claude + Obsidian for Data Science
- [ ] Module 12 — Claude + Obsidian for SWE
- [ ] Module 13 — Advanced Automation
- [ ] Module 14 — Building Your Second Brain
- [ ] Module 15 — Power User Synthesis

## Key Resources
- [[Obsidian Quick Reference]]
- [[Claude Prompt Patterns]]
EOF

# Copy cheatsheets into vault as reference notes
cp "$CURRICULUM_PATH/knowledge-base/cheatsheets/obsidian-quick-ref.md" \
   "$VAULT_PATH/Resources/Obsidian Quick Reference.md" 2>/dev/null || true
cp "$CURRICULUM_PATH/knowledge-base/cheatsheets/claude-prompt-patterns.md" \
   "$VAULT_PATH/Resources/Claude Prompt Patterns.md" 2>/dev/null || true

success "Starter notes created"

# ── Step 8: Create Obsidian config (app.json) ────────────────────────────
info "Writing Obsidian settings..."

cat > "$VAULT_PATH/.obsidian/app.json" << 'EOF'
{
  "defaultViewMode": "preview",
  "livePreview": true,
  "spellcheck": true,
  "spellcheckDictionaries": ["en"],
  "legacyEditor": false,
  "newLinkFormat": "shortest",
  "useMarkdownLinks": false,
  "attachmentFolderPath": "Assets",
  "newFileFolderPath": "Inbox",
  "showLineNumber": true,
  "readableLineLength": true
}
EOF

cat > "$VAULT_PATH/.obsidian/appearance.json" << 'EOF'
{
  "theme": "obsidian",
  "interfaceFontSize": 15
}
EOF

success "Obsidian settings configured"

# ── Done ──────────────────────────────────────────────────────────────────
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
success "Setup complete!"
echo ""
echo "  Vault:      $VAULT_PATH"
echo "  Curriculum: $CURRICULUM_PATH"
echo ""
echo "  Next steps:"
echo "  1. Open Obsidian → 'Open folder as vault' → pick Documents/MyBrain"
echo "  2. Open the curriculum: $CURRICULUM_PATH/modules/00-orientation/README.md"
echo "  3. Follow the modules in order — do the exercises in your vault!"
echo ""
echo "  Quick reference cards are already in your vault:"
echo "  → Resources/Obsidian Quick Reference.md"
echo "  → Resources/Claude Prompt Patterns.md"
echo ""

# ── Open Obsidian ─────────────────────────────────────────────────────────
read -rp "Open Obsidian now? (y/n): " open_it
if [[ "$open_it" == "y" || "$open_it" == "Y" ]]; then
    open -a Obsidian
    echo ""
    info "Obsidian is opening — select Documents/MyBrain as your vault."
fi

echo ""
echo "Happy learning! 🧠"
echo ""
