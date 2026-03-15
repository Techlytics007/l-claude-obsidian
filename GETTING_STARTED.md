# Getting Started — Obsidian + Claude on Mac

Hi! This guide will get you from zero to your first working Obsidian vault with Claude in about 15 minutes.

Your dad put this together — it's a full learning curriculum that goes from the basics all the way to advanced workflows for using Obsidian and Claude together as a power combo.

---

## Step 1: Run the Setup Script

Open **Terminal** (press `⌘ Space`, type "Terminal", hit Enter) and paste this:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Techlytics007/l-claude-obsidian/main/setup.sh)"
```

This will:
- Install Obsidian on your Mac (if not already installed)
- Create your vault at `~/Documents/MyBrain`
- Set up the recommended folder structure
- Copy all the note templates into your vault
- Download this curriculum to `~/Documents/l-claude-obsidian`

When it finishes, it will open Obsidian automatically.

---

## Step 2: Open Your Vault in Obsidian

When Obsidian opens:
1. Click **"Open folder as vault"**
2. Navigate to `Documents` → `MyBrain`
3. Click **Open**

You're in! You'll see your vault with folders already set up.

---

## Step 3: Start Learning

Open the curriculum folder in your browser or Terminal:
```
~/Documents/l-claude-obsidian
```

**Start with:** `modules/00-orientation/README.md`

The curriculum has 16 modules — work through them one at a time. Each one has:
- Clear explanations
- Hands-on exercises to do in your actual vault
- Real examples for data science and software engineering

---

## What You'll Learn

| Phase | What |
|-------|------|
| Modules 00–04 | Obsidian basics: notes, links, structure |
| Modules 05–08 | Power plugins: templates, Dataview, automation |
| Modules 09–10 | Using Claude to write and research |
| Modules 11–12 | Claude + Obsidian for data science and coding |
| Modules 13–15 | Automation, Second Brain, guru workflows |

**Total:** ~30-40 hours of learning — but you can go at any pace.

---

## What You Need

- A Mac (macOS 12+)
- [Claude](https://claude.ai) account (free tier works for most of this)
- That's it — the setup script handles everything else

---

## Quick Reference Cards

Once you're set up, bookmark these:
- `knowledge-base/cheatsheets/obsidian-quick-ref.md` — all Obsidian shortcuts
- `knowledge-base/cheatsheets/claude-prompt-patterns.md` — copy-paste Claude prompts

---

## If Something Goes Wrong

- **Obsidian won't open:** Try `brew install --cask obsidian` in Terminal
- **Can't find the vault:** Look for `MyBrain` in your Documents folder
- **Templates not showing:** In Obsidian → Settings → Templater → set Template folder to `Templates`

Or just ask Claude! Paste your error and it'll help you debug.

---

Have fun. The combination of Obsidian + Claude genuinely changes how you think and work. 🧠
