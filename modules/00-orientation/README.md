# Module 00 — Orientation

**Goal:** Get Obsidian installed and running. Understand what it is, what a vault is, and why it's different from Notion/Evernote.

**Time:** ~30 minutes

---

## What is Obsidian?

Obsidian is a **local-first, markdown-based knowledge management app**. Every note is a plain `.md` file on your hard drive — no proprietary format, no lock-in. You own your data.

Key differentiators:
- **Local files** — not a database, not a cloud blob. Your vault is a folder.
- **Bidirectional links** — notes link to each other; Obsidian tracks who links to whom.
- **Graph view** — visual map of your connected knowledge.
- **Extensible** — hundreds of community plugins; you can write your own.
- **Works offline** — no internet required.

Why it pairs so well with Claude:
> Your vault becomes a structured knowledge base. Claude can help you write, refine, summarize, query, and synthesize that knowledge. Together they form a system that amplifies your thinking.

---

## Step 1: Install Obsidian

```bash
# Option A: Homebrew (recommended)
brew install --cask obsidian

# Option B: Direct download
# → obsidian.md → Download → macOS
```

Verify: Open Spotlight (⌘ Space) → type "Obsidian" → launch it.

---

## Step 2: Create Your First Vault

A **vault** is just a folder. Obsidian treats everything inside it as your knowledge base.

1. Open Obsidian → "Create new vault"
2. Name it: `MyBrain` (or anything you like)
3. Location: `~/Documents/MyBrain` (keep it simple for now)
4. Click "Create"

You now have a vault. It's just a folder at `~/Documents/MyBrain/`.

```bash
# Verify in terminal
ls ~/Documents/MyBrain/
# You'll see: .obsidian/   (Obsidian config folder)
```

---

## Step 3: Anatomy of the App

```
┌─────────────────────────────────────────────────────┐
│  Left Sidebar   │   Editor (main area)   │  Right   │
│                 │                        │ Sidebar  │
│  • File tree   │   Your note content    │          │
│  • Search      │   (markdown editor)    │ Backlinks│
│  • Bookmarks   │                        │ Outgoing │
│  • Tags        │                        │  links   │
└─────────────────────────────────────────────────────┘
```

Key UI elements:
| Element | What it does |
|---------|-------------|
| File Explorer (left) | Browse your vault folders and notes |
| Command Palette (⌘P) | Run any Obsidian command by name |
| Search (⌘F / ⌘Shift+F) | Search within note / across vault |
| Graph View | Visual map of all linked notes |
| Editor | Write markdown — has Live Preview and Source modes |
| Status bar (bottom) | Word count, cursor position |

---

## Step 4: Write Your First Note

1. Press `⌘N` → creates a new note
2. Title it: `Welcome`
3. Type this content:

```markdown
# Welcome to My Brain

This is my Obsidian vault. I'm learning to use it with Claude.

## Goals
- Learn Obsidian from scratch
- Combine it with Claude for data science and software engineering
- Build a Second Brain

## First link
I'll learn about [[Core Concepts]] next.
```

4. Notice `[[Core Concepts]]` is highlighted — that's a **wikilink** to a note that doesn't exist yet. Click it to create it.

---

## Key Keyboard Shortcuts (Mac)

| Shortcut | Action |
|----------|--------|
| `⌘N` | New note |
| `⌘P` | Command palette |
| `⌘O` | Quick open (fuzzy search notes) |
| `⌘Shift+F` | Search across vault |
| `⌘E` | Toggle edit/preview mode |
| `⌘,` | Settings |
| `⌘G` | Open graph view |

---

## Hands-On Exercises

- [ ] Install Obsidian via Homebrew
- [ ] Create a vault called `MyBrain` (or your preferred name)
- [ ] Write your `Welcome` note (copy from above, personalize it)
- [ ] Click the `[[Core Concepts]]` wikilink — confirm it creates a new note
- [ ] Open the Graph View (⌘G) — you'll see your two notes connected
- [ ] Find the `.obsidian/` folder in Finder — notice it's just files

---

## What's Next

[Module 01 — Core Concepts](../01-core-concepts/README.md): Notes, folders, tags, search, and Obsidian settings.
