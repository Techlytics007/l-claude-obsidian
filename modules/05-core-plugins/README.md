# Module 05 — Core Plugins

**Goal:** Activate and configure the most useful built-in Obsidian plugins: Daily Notes, Templates, Canvas, Bookmarks, and more.

**Time:** 1-2 hours

---

## What Are Core Plugins?

Obsidian ships with "core" plugins — first-party features that are off by default. Enable them in `⌘,` → Core Plugins. They're stable and maintained by the Obsidian team.

Community plugins (Module 08) are third-party — more powerful but require more trust and setup.

---

## The Essential Core Plugins

### 1. Daily Notes

Creates a note for each day automatically.

**Setup:**
- `⌘,` → Core Plugins → Daily Notes → Enable
- Settings:
  - Date format: `YYYY-MM-DD` (ISO standard, sorts correctly)
  - New file location: `Daily Notes/`
  - Template file location: `Templates/Daily Note Template`

**Usage:** `⌘P` → "Open today's daily note" (set a hotkey: `⌥D`)

**Power use with Claude:**
At the end of a day, paste your daily note into Claude and ask:
> "Summarize the key decisions, learnings, and blockers from this daily note."

### 2. Templates

Insert pre-built note templates into any note.

**Setup:**
- `⌘,` → Core Plugins → Templates → Enable
- Settings → Template folder: `Templates/`

**Usage:** `⌘P` → "Insert template" → pick a template

**Built-in template variables:**
```
{{title}}     — note's filename (title)
{{date}}      — today's date (YYYY-MM-DD)
{{time}}      — current time (HH:mm)
```

**Example daily note template:**
```markdown
---
date: {{date}}
tags: [#daily]
---

# {{date}} — Daily Note

## Focus for Today
-

## Log

## Notes Created Today
-

## Wins
-

## Tomorrow
-
```

### 3. Canvas

A visual, infinite whiteboard. Drag notes onto it, connect them with arrows, add cards.

**When to use:**
- Brainstorming a new project
- Mapping out a ML architecture visually
- Creating a visual knowledge map for a topic
- Planning a system design (SWE)

**Usage:** `⌘P` → "Create new canvas" → drag notes in from file explorer

**With Claude:** Ask Claude to outline a system, then map it visually on Canvas.

### 4. Bookmarks

Pin notes, headings, searches, and folders to the left sidebar for quick access.

**Usage:** Right-click any note/heading → "Add to bookmarks"

**Recommended bookmarks:**
- `Home` note
- `Inbox/` folder
- Today's daily note
- Your top 3 active project notes

### 5. Backlinks

Shows what notes link to the current note. Enable it in Core Plugins.

In right sidebar: shows both "Linked mentions" and "Unlinked mentions".

### 6. Outgoing Links

Shows what the current note links to. Identifies ghost links (notes that don't exist yet).

### 7. Graph View

Visual map of your vault. Already covered in Module 03.
Enable in Core Plugins if not already on.

### 8. Search

Full-text search across your vault. Enable and configure in Core Plugins.

Advanced search syntax:
```
file:python         # filename contains "python"
content:gradient    # content contains "gradient"
tag:#status/active  # has this tag
path:Projects/      # in this folder
-tag:#archived      # exclude archived
```

### 9. Command Palette

`⌘P` — run any command. This is essential. Learn to use it instead of menus.
Always on by default.

### 10. Slash Commands

Type `/` in a note body to insert commands inline (headers, callouts, etc.).
Enable in Core Plugins.

---

## Recommended Core Plugin Stack

| Plugin | Enable? | Why |
|--------|---------|-----|
| Daily Notes | ✅ Yes | Daily journaling + activity log |
| Templates | ✅ Yes | Reusable note structures |
| Canvas | ✅ Yes | Visual brainstorming |
| Bookmarks | ✅ Yes | Quick access to key notes |
| Backlinks | ✅ Yes | See what links here |
| Outgoing Links | ✅ Yes | See where you link |
| Graph View | ✅ Yes | Visual map of vault |
| Search | ✅ Yes | Vault-wide search |
| Command Palette | ✅ Yes | Run anything quickly |
| Slash Commands | ✅ Yes | Inline command access |
| Word Count | ✅ Yes | Useful for writing |
| Unique Note Creator | Optional | Creates Zettelkasten IDs |
| Random Note | Optional | Rediscover old notes |

---

## Hands-On Exercises

- [ ] Enable Daily Notes — configure with `YYYY-MM-DD` format, set template
- [ ] Create a `Templates/` folder and write your daily note template
- [ ] Press `⌥D` (or your chosen hotkey) to open today's daily note
- [ ] Enable Templates — insert the daily template into a new note
- [ ] Create a new Canvas (`⌘P` → "Create new canvas") — drag 3 notes onto it, connect them
- [ ] Bookmark your `Home` note and Inbox folder
- [ ] Use vault search with at least one operator (`tag:`, `file:`, or `path:`)

---

## What's Next

[Module 06 — Templater Plugin](../06-templater/README.md): The community plugin that replaces Core Templates — with JavaScript-powered dynamic templates, hotkeys, and automation.
