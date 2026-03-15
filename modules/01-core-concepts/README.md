# Module 01 — Core Concepts

**Goal:** Understand how Obsidian organizes information — notes, folders, tags, properties, and search.

**Time:** 1-2 hours

---

## The Three Ways to Organize in Obsidian

Obsidian gives you three orthogonal organization systems. Power users use all three.

### 1. Folders
Traditional hierarchy. Good for broad categories.
```
MyBrain/
├── Projects/
├── Areas/
├── Resources/
├── Archive/
└── Inbox/
```
**Rule of thumb:** Keep folder structure shallow (max 3 levels). Let links do the heavy lifting.

### 2. Tags
Flat labels you add to notes. Great for cross-cutting concerns.
```markdown
#status/active   #status/done
#type/book       #type/paper   #type/project
#topic/ml        #topic/python
```
Tags are searchable, filterable, and show up in the Tags pane.

### 3. Links
The Obsidian superpower. `[[Note Name]]` creates a connection between notes. Unlike folders, one note can link to many others. Unlike tags, links have context.

**The key insight:** In Obsidian, links > folders. Build a web of ideas, not a filing cabinet.

---

## Notes

Every note is a `.md` file. Notes have:

**YAML Frontmatter** (optional metadata at the top):
```yaml
---
title: Python Decorators
created: 2026-03-15
tags: [python, advanced, #type/concept]
status: evergreen
aliases: [decorator pattern]
---
```

**Body** (markdown content):
```markdown
# Python Decorators

A decorator is a function that wraps another function...

## Related
- [[Higher-Order Functions]]
- [[Python Functions]]
```

---

## Search

Two types:

| Search | Shortcut | Use for |
|--------|----------|---------|
| In-note | `⌘F` | Find within current note |
| Vault-wide | `⌘Shift+F` | Find across all notes |

**Vault search operators:**
```
file:python          # notes whose filename contains "python"
tag:#status/active   # notes with that tag
path:Projects/       # notes inside Projects folder
"exact phrase"       # exact match
line:("TODO")        # notes where TODO appears on a line
```

---

## Properties (Frontmatter)

Since Obsidian 1.4 (2023), the UI shows frontmatter as **Properties** — a structured panel at the top of each note. You can:
- Add/edit properties without touching raw YAML
- Set property types (text, number, date, list, checkbox)
- Search and filter by property values

**Useful properties to always set:**
```yaml
---
created: {{date}}
modified: {{date}}
status: draft | active | evergreen | archived
tags: []
---
```

---

## Settings to Configure Now

Open `⌘,` → Settings:

| Setting | Where | Recommended |
|---------|-------|-------------|
| Default folder for new notes | Files & Links | `Inbox` |
| Wikilinks vs markdown links | Files & Links | Wikilinks (default) |
| Spellcheck | Editor | On |
| Live Preview | Editor | On (default) |
| Show line numbers | Editor | On |
| Readable line length | Editor | On |
| Appearance → Theme | Appearance | Try "Minimal" or "AnuPpuccin" |

---

## Obsidian Sync vs Local Vault

You do NOT need Obsidian Sync (paid). Your vault is just a folder — you can sync it with:
- **iCloud** — put vault in `~/Library/Mobile Documents/iCloud~md~obsidian/Documents/`
- **Git** — `git init` your vault, push to GitHub (what we'll do in Module 08)
- **Dropbox / Google Drive** — works fine for single-device or rare multi-device

---

## Hands-On Exercises

- [ ] Create the folder structure: `Inbox/`, `Projects/`, `Areas/`, `Resources/`, `Archive/`
- [ ] Create a note `Resources/Python/Python Decorators` — add YAML frontmatter with tags and status
- [ ] Create a note `Inbox/Test Note` — add 2-3 tags (`#draft`, `#topic/python`)
- [ ] Use vault search (`⌘Shift+F`) to find notes tagged `#draft`
- [ ] Try the search operator: `tag:#draft` — confirm it finds your note
- [ ] Set "Default folder for new notes" to `Inbox` in Settings

---

## What's Next

[Module 02 — Markdown Mastery](../02-markdown-mastery/README.md): Every markdown feature Obsidian supports — including callouts, embeds, LaTeX, and code blocks.
