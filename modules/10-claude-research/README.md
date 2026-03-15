# Module 10 — Claude as Research Partner

**Goal:** Use Claude to consume and synthesize research — papers, articles, docs — and turn it into permanent, searchable knowledge in your vault.

**Time:** 2-3 hours

---

## The Research Problem

Reading a paper or article and retaining it is hard. Most people:
1. Read it → forget it in a week
2. Highlight it → never review highlights
3. Take rough notes → can't find them later

The Obsidian + Claude solution:
1. Read → paste key content to Claude
2. Claude extracts structure → clean note ready to paste
3. Paste into vault → linked to your existing knowledge
4. Dataview query → find it when needed

---

## Paper Summary Workflow

### Step 1: Get the abstract + key sections

For any paper, copy:
- Title, authors, year
- Abstract
- Introduction (or your notes on it)
- Key findings / results
- Conclusion

### Step 2: Prompt Claude

```
Here's a paper I just read:

Title: [title]
Authors: [authors]
Year: [year]

[paste abstract + key sections]

Create an Obsidian note with:
---
title: [title]
authors: [authors]
year: [year]
tags: [paper, #topic/ml]
status: read
rating: /10
---

## Summary (3 sentences max)
## Key Contributions (bullet list)
## Method (how they did it)
## Results (numbers!)
## Limitations
## My Takeaways
## Questions I Still Have
## Related Papers → [[wikilinks]]
## Connections to My Work → [[my notes]]
```

### Step 3: Fill in your personal sections

The "My Takeaways", "Questions", and "Connections" sections are for YOU — don't let Claude fill these in. They're where your thinking goes.

---

## Book Notes Workflow

For a book chapter or section:

```
I'm reading [book title] by [author].
Here are my rough notes on Chapter [N]: [chapter title]

[paste rough notes]

Convert to a clean Obsidian note:
- Key concepts as H3 headings
- Author's main argument per section
- My examples/analogies (label these "My Note:")
- Direct quotes in > blockquotes with page numbers
- Callout: > [!key-idea] for the 2-3 most important ideas
- Action items: things I want to do because of this chapter
```

---

## Article / Blog Post Workflow

Paste the full text of an article:

```
Summarize this article for my Obsidian vault.
[paste article]

Format:
- 2-sentence summary
- 5 key points (bullet)
- 1 thing I should do differently
- 3 wikilinks to concepts I should know
```

---

## Building a Literature Map

As you read more papers on a topic, your vault accumulates paper notes. Use Dataview to build a literature map:

```markdown
# Literature: Machine Learning

\`\`\`dataview
TABLE authors, year, rating, file.link AS "Note"
FROM #paper AND #topic/ml
SORT year DESC
\`\`\`
```

Now you have a living literature review — sorted by year, searchable, linked to your concept notes.

---

## Q&A Over Your Vault (Manual)

Before MCP exists, you can do Q&A by pasting vault content to Claude:

**Pattern: "What do I know about X?"**
1. Search vault: `⌘Shift+F` → search "gradient descent"
2. Find the 3-4 most relevant notes
3. Paste them all to Claude:
```
Here are my Obsidian notes on gradient descent:
[paste notes]

Based on ONLY these notes:
1. What are the key things I understand well?
2. What gaps or contradictions do you notice in my knowledge?
3. What should I add to these notes?
```

**Pattern: "Pre-write a section using my notes"**
```
I'm writing a technical blog post section on [topic].
Here are my Obsidian notes on it:
[paste 2-3 notes]

Draft a section using only facts from my notes.
Write in my voice — direct, technical, minimal fluff.
```

---

## Documentation / Codebase Research

When exploring a new library or tool:

```
I'm learning [library/tool]. Here are the docs I've read:
[paste relevant docs sections]

Create an Obsidian note:
## What It Is (1 sentence)
## Why I'd Use It (vs alternatives)
## Core API / Commands (with examples)
## Gotchas & Warnings
## My First Use Case: [[project]]
## Resources
```

---

## Hands-On Exercises

- [ ] Find a paper or long article you've been meaning to read — run the paper summary workflow
- [ ] Take rough notes on a book chapter you're reading — convert with Claude prompt
- [ ] Build a literature Dataview table for papers you've read (need at least 2 paper notes)
- [ ] Do a "What do I know?" Q&A: paste 3 notes on a topic, ask Claude to find gaps
- [ ] Document a library/tool you use often — create a reference note with the docs workflow

---

## What's Next

[Module 11 — Claude + Obsidian for Data Science](../11-claude-data-science/README.md): DS-specific workflows — experiment tracking, EDA documentation, model cards, and project journals.
