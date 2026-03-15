# Module 04 — Maps of Content (MOCs)

**Goal:** Learn the MOC pattern — the key structural technique for navigating large vaults without over-relying on folders.

**Time:** 1-2 hours

---

## What is an MOC?

A **Map of Content** is a note whose primary job is to link to other notes on a topic. It's a table of contents you write yourself — not generated automatically.

MOCs exist because:
- Folders force notes into one location
- Tags are flat — no hierarchy or narrative
- Links are powerful but unstructured
- MOCs give you **curated, navigable structure** without sacrificing flexibility

Think of an MOC like a **Wikipedia article that just links** — it tells you how concepts relate, in what order to read them, and what the key sub-topics are.

---

## Anatomy of an MOC

```markdown
---
tags: [#type/moc, #topic/machine-learning]
created: 2026-03-15
---

# Machine Learning MOC

My map of everything I know about ML. Start here.

## Foundations
- [[What is Machine Learning]] — the big picture
- [[Supervised vs Unsupervised Learning]]
- [[Bias-Variance Tradeoff]] ← start here if confused about overfitting

## Algorithms
- [[Linear Regression]] — simplest baseline
- [[Random Forest]] — my go-to ensemble
- [[Gradient Boosting]] — XGBoost, LightGBM
- [[Neural Networks MOC]] ← sub-MOC for deep learning

## Workflow
- [[Data Preprocessing Checklist]]
- [[Feature Engineering Patterns]]
- [[Model Evaluation Metrics]]
- [[Hyperparameter Tuning Strategies]]

## My Projects Using ML
- [[March Madness Bracket Prediction 2026]]
- [[Customer Churn Model]]

## Resources
- [[Hands-On Machine Learning (Book Notes)]]
- [[Fast.ai Course Notes]]
```

---

## MOC vs Folder

| Dimension | Folder | MOC |
|-----------|--------|-----|
| A note can be in... | One folder only | Many MOCs |
| Structure | Fixed hierarchy | Flexible, narrative |
| Searchable | Via path: | Via link/tag |
| Easy to reorganize | No (have to move files) | Yes (edit the note) |
| Good for | Broad categories | Deep topic maps |

**Best practice:** Use a few broad folders (Projects, Areas, Resources, Archive) and use MOCs for topic navigation within them.

---

## MOC Levels

MOCs can be nested:

```
📄 Learning MOC               ← top-level hub
  ├── 📄 Machine Learning MOC ← topic MOC
  │     ├── 📄 Neural Networks MOC ← sub-topic MOC
  │     └── 📄 NLP MOC
  ├── 📄 Software Engineering MOC
  └── 📄 Data Engineering MOC
```

The top-level MOC is sometimes called a **Home note** — the single entry point to your entire vault. Many power users have a note literally called `Home` or `START HERE`.

---

## The Home Note

```markdown
# Home

Welcome to my Second Brain.

## Active Projects
- [[March Madness 2026]] — predictions due March 19
- [[Customer Churn Project]] — presentation April 5

## Learning
- [[Machine Learning MOC]]
- [[Python MOC]]
- [[Obsidian + Claude MOC]]

## Areas of Life
- [[Work MOC]]
- [[Health MOC]]
- [[Reading MOC]]

## Jump To
- Today's note: [[2026-03-15]]
- Inbox: [[Inbox MOC]]
```

Set a keyboard shortcut or use the Bookmarks plugin to open Home instantly.

---

## MOC Creation Workflow

**When to create an MOC:**
- You have 5+ notes on a topic and feel lost navigating them
- You want to plan a learning path through a topic
- You're starting a new project and want an index

**How to create one:**
1. Create a new note: `⌘N` → title: `Machine Learning MOC`
2. Add tag `#type/moc`
3. Start writing sections — rough groupings of related notes
4. Add `[[links]]` as you go — ghost links for notes you haven't written yet are fine
5. As you learn more, update the MOC (it's evergreen, not a snapshot)

---

## Hands-On Exercises

- [ ] Create a `Home` note — add links to your active projects and key topics
- [ ] Create one topic MOC (e.g., `Python MOC` or `Data Science MOC`) with at least 3 sections
- [ ] Add the tag `#type/moc` to it
- [ ] Bookmark your Home note (Bookmarks panel → right-click → Bookmark)
- [ ] Create a ghost link in your MOC for a note you'll write later
- [ ] Open Graph View and note how your MOC is now a hub with many connections

---

## What's Next

[Module 05 — Core Plugins](../05-core-plugins/README.md): Activate and configure the built-in Obsidian plugins — Daily Notes, Templates, Canvas, and more.
