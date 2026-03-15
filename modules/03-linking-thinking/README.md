# Module 03 — Linking Your Thinking

**Goal:** Master wikilinks, backlinks, graph view, and unlinked mentions. This is the core of what makes Obsidian different from a simple notes app.

**Time:** 2-3 hours

---

## The Philosophy: Notes as a Network

In a filing cabinet, you put a note in one folder. In Obsidian, a note can link to and be linked from hundreds of other notes simultaneously. This mirrors how your brain actually works — by association, not by hierarchy.

> "A note without links is a note that will be forgotten."

The goal: build a **network of ideas** where every note is connected to the concepts it relates to. Over time, your vault becomes a web of your own knowledge.

---

## Wikilinks

The core linking syntax:

```markdown
# Basic link
[[Note Name]]

# Link with custom display text
[[Note Name|What you see]]

# Link to a specific heading
[[Note Name#Heading]]

# Link to a specific block (block ID)
[[Note Name#^block-id]]

# Embed (transclude) instead of link
![[Note Name]]
![[Note Name#Heading]]
```

**Creating links to non-existent notes:**
Just type `[[New Idea]]`. Obsidian creates a "ghost" note. When you're ready to flesh it out, click the link. This lets you capture ideas without stopping to write them — you can link first, write later.

---

## Backlinks

Every note has a **Backlinks** panel (right sidebar or `⌘P → "Show backlinks"`).

Backlinks show you: *"Which notes link TO this note?"*

This is powerful because you didn't have to anticipate the connection when you wrote the note. If you wrote about `[[Random Forests]]` in 5 different project notes, the Random Forests note automatically knows about all 5.

**Unlinked mentions** (also in the Backlinks panel):
Obsidian scans all your notes for the title of the current note, even if it's not wrapped in `[[]]`. This finds connections you forgot to make explicit.

Example: You have a note called `Gradient Descent`. Obsidian finds every note that mentions the words "gradient descent" without a wikilink. You can then click to convert them to real links.

---

## Outgoing Links

The **Outgoing Links** panel (right sidebar) shows:
- All notes that THIS note links to
- Which of those links are valid (note exists) vs ghost (note doesn't exist yet)

Ghost links are shown in a different color — they're a to-do list for expanding your vault.

---

## Graph View

Open with `⌘G` (or Ribbon icon).

The graph shows every note as a node and every link as an edge. It reveals the structure of your thinking.

**Graph controls:**
| Option | What it does |
|--------|-------------|
| Filters → Tags | Show only notes with certain tags |
| Groups → Colors | Color-code notes by tag/path/text |
| Forces → Repel | Adjust spacing between nodes |
| Display → Orphans | Show/hide notes with no links |

**Local graph:** Right-click a note → "Open local graph"
Shows only the notes directly connected to the current note (and their connections). More useful than the full graph for understanding context.

---

## Practical Linking Strategies

### 1. Concept Notes
For any recurring concept (a technique, tool, term), create a dedicated note. Then link to it from every note that mentions it.

```
[[Random Forest]] appears in:
  - Project: March Madness Prediction
  - Study Note: Ensemble Methods
  - Code Note: sklearn API Reference
```

### 2. MOC Links (see Module 04)
Index notes that aggregate links to all notes in a topic.

### 3. Tag + Link Combo
Use tags for status/type, links for content:
```markdown
---
tags: [#status/active, #type/project]
---
# March Madness 2026

## Related Concepts
- [[Random Forest]]
- [[Feature Engineering]]
- [[BigQuery]]
```

### 4. Daily Note Links
Link from your daily note to whatever you're working on. Over time, the daily note becomes a journal of activity that points into your knowledge base.

---

## Block References

You can link to a specific paragraph (block) in a note:

1. In a note, type `^` at the end of a paragraph to give it a block ID:
   ```markdown
   The most important insight about gradient descent is... ^key-insight
   ```
2. From another note, link to it:
   ```markdown
   See: [[Machine Learning Fundamentals#^key-insight]]
   ```

Block references let you pull specific pieces of notes into context without embedding the whole note.

---

## Hands-On Exercises

Start building a real topic you care about (e.g., "Machine Learning" or "Python"):

- [ ] Create 5 connected notes on a topic you know well (e.g., Linear Regression, Gradient Descent, Loss Function, Model Evaluation, Overfitting)
- [ ] Link each note to at least 2 others with `[[wikilinks]]`
- [ ] Open the Graph View — see the connections
- [ ] Open Local Graph on one note — see its neighborhood
- [ ] Enable "Unlinked mentions" in the Backlinks panel — find a missed connection
- [ ] Create a ghost link `[[Future Topic]]` — confirm it shows in Outgoing Links as unresolved
- [ ] Add a block reference: give a key paragraph a `^block-id`, reference it from another note

---

## What's Next

[Module 04 — Maps of Content](../04-maps-of-content/README.md): The MOC pattern — how to create index notes that bring structure to a large, interlinked vault.
