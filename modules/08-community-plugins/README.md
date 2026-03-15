# Module 08 — Community Plugins

**Goal:** Install and configure the best community plugins: QuickAdd, Kanban, Excalidraw, and Obsidian Git. Build a complete plugin stack.

**Time:** 2-3 hours

---

## How Community Plugins Work

`⌘,` → Community Plugins → "Turn on community plugins" → Browse

Each plugin is open-source, maintained by the community. Review stars and last-updated date before installing.

**Trust model:** Plugins run JavaScript in your vault. Only install well-known plugins with many downloads.

---

## QuickAdd

**What it does:** Run custom macros — capture ideas quickly, create notes from templates in one command, chain actions together.

**Install:** Community Plugins → "QuickAdd"

### Capture Macro (most used)
Add a "capture" that appends text to a file:

Settings → QuickAdd → Add Choice → "Capture" → "Quick Capture"
- Capture to: `Inbox/Quick Capture.md`
- Format: `- {{DATE}} — {{VALUE}}`
- Ask for value: ✅

Now bind to hotkey (`⌥C`). Anywhere in Obsidian, press `⌥C`, type a thought, press Enter — it appends to your Quick Capture inbox.

### Template Macro
QuickAdd → Add Choice → "Template" → "New Experiment"
- Template file: `Templates/Experiment.md`
- Create in folder: `Projects/Experiments/`
- Open note after creation: ✅

Bind to hotkey (`⌥E`). Press it anywhere → prompted for experiment name → note created from template → opens.

### Multi-Choice (command menu)
Chain multiple macros under one hotkey:
QuickAdd → Add Choice → "Multi" → "New Note..."
- Add: "New Experiment", "New ADR", "New Daily Note", "Quick Capture"

Press your hotkey → pick from a menu.

---

## Kanban

**What it does:** Adds a Kanban board view for any note. Each note becomes a card; columns are workflow stages.

**Install:** Community Plugins → "Kanban"

**Create a board:** `⌘P` → "Create new Kanban board"

```
| Backlog | In Progress | Review | Done |
|---------|-------------|--------|------|
| Card    | Card        | Card   |      |
```

Cards can be notes or plain text. Drag between columns. Great for:
- Project task management
- ML experiment pipeline (Data → EDA → Train → Eval → Deploy)
- Learning curriculum tracking

---

## Excalidraw

**What it does:** Full drawing tool embedded in Obsidian. Whiteboard, diagrams, sketches — all stored as `.excalidraw` files in your vault.

**Install:** Community Plugins → "Excalidraw"

**Why it beats Canvas for some use cases:**
- Freehand drawing
- Beautiful arrows and shapes
- Export to PNG/SVG
- Embed in notes with `![[diagram.excalidraw]]`

**Best uses:**
- System architecture diagrams
- ML pipeline sketches
- Neural network diagrams
- Brainstorming mind maps

**Create:** `⌘P` → "Create new Excalidraw drawing"

---

## Obsidian Git

**What it does:** Auto-commit and push your vault to GitHub on a schedule. Version control your entire knowledge base.

**Install:** Community Plugins → "Obsidian Git"

**Prerequisites:**
```bash
# Initialize your vault as a git repo
cd ~/Documents/MyBrain
git init
git remote add origin https://github.com/YOUR_USERNAME/my-brain.git
git add .
git commit -m "Initial vault commit"
git push -u origin main
```

**Settings:**
- Auto-commit interval: 10 (minutes)
- Auto-push: ✅
- Auto-pull on startup: ✅
- Commit message: `vault backup: {{date}}`

Now your vault is backed up to GitHub automatically. You can sync across machines by pulling on the other device.

**Commands (⌘P):**
```
Obsidian Git: Commit all changes
Obsidian Git: Push
Obsidian Git: Pull
Obsidian Git: Open source control view
```

---

## Other Plugins Worth Knowing

| Plugin | What it does | When to use |
|--------|-------------|-------------|
| **Calendar** | Shows a calendar, click to open daily note | Always |
| **Periodic Notes** | Weekly/monthly notes in addition to daily | Good for reviews |
| **Natural Language Dates** | Type "next Monday" → inserts date | Note taking |
| **Linter** | Auto-formats notes (frontmatter, spacing) | Quality |
| **Note Refactor** | Split a long note into smaller notes | Refactoring |
| **Hider** | Hide UI elements for distraction-free writing | Focus mode |
| **Advanced Tables** | Better table editing | Heavy table use |
| **Citations** | Zotero integration for academic papers | Research |
| **Pandoc** | Export notes to PDF, Word, LaTeX | Sharing |

---

## Recommended Plugin Stack (Full)

Core plugins (from Module 05):
- Daily Notes, Templates, Canvas, Bookmarks, Backlinks, Graph View, Search, Command Palette

Community plugins:
- **Templater** — dynamic templates (Module 06)
- **Dataview** — query your vault (Module 07)
- **QuickAdd** — capture + macros
- **Obsidian Git** — version control
- **Calendar** — daily note navigation
- **Excalidraw** — diagrams
- **Kanban** — task boards (optional)
- **Linter** — formatting

---

## Hands-On Exercises

- [ ] Install QuickAdd — set up a "Quick Capture" macro, bind to `⌥C`
- [ ] Set up a "New Experiment" template macro, bind to `⌥E`
- [ ] Create a Kanban board for your current project or learning curriculum
- [ ] Install Excalidraw — draw a simple ML pipeline diagram, embed it in a note
- [ ] Install Obsidian Git — initialize vault as git repo, configure auto-commit every 10 min
- [ ] Install Calendar plugin — verify clicking a date opens/creates daily note

---

## What's Next

[Module 09 — Claude + Obsidian Basics](../09-claude-basics/README.md): Start combining Claude with your vault — prompt patterns for drafting, refining, and expanding notes.
