# Module 09 — Claude + Obsidian Basics

**Goal:** Learn the fundamental patterns for using Claude as your note-writing partner. Draft notes, refine existing ones, and build your first Claude-powered workflow.

**Time:** 2-3 hours

---

## The Core Idea

Obsidian is your **knowledge store**. Claude is your **thinking partner**.

The combination:
1. Claude helps you **write and structure** knowledge faster than you could alone
2. Obsidian **stores and connects** that knowledge permanently
3. You **curate and grow** it over time — Claude + Obsidian replace the blank page problem

---

## How to Feed Notes to Claude

Claude can't read your vault directly (unless you use MCP — Module 13). For now, you'll copy-paste.

**Pattern A: Draft from scratch**
```
You: I want to add a note to my Obsidian vault about [topic].
     Format it as markdown with:
     - YAML frontmatter (created, tags, status)
     - H2 sections for key concepts
     - Code examples where relevant
     - Callouts for important warnings
     - 2-3 [[wikilinks]] to related topics I should create

Claude: [outputs formatted markdown ready to paste into Obsidian]
```

**Pattern B: Refine an existing note**
```
You: Here's my rough note on [topic]. Please:
     - Fix structure and flow
     - Add YAML frontmatter
     - Add callouts for key warnings
     - Suggest 3 wikilinks I should add
     - Keep it concise — I'll expand specific sections later

[paste note]
```

**Pattern C: Expand a stub**
```
You: I have this stub note:
[paste stub]

Please expand the "## Examples" section with 3 real Python code examples.
Keep the rest of the note exactly as is.
```

**Pattern D: Summarize for a note**
```
You: I just read [paper/article/video]. Here's my rough notes:
[paste messy notes]

Convert this into a clean Obsidian note with:
- YAML frontmatter
- Key Takeaways callout
- Structured sections
- My Action Items at the bottom
```

---

## Prompt Patterns That Work Well

### 1. "Obsidian Format" prompt
Always tell Claude to output Obsidian-ready markdown:

```
Format the output as Obsidian markdown with:
- YAML frontmatter (created: YYYY-MM-DD, tags: [], status: draft)
- Obsidian callouts (> [!note], > [!tip], > [!warning]) for key points
- [[wikilinks]] for related concepts (use the concept name as the link)
- Code blocks with language specified
```

### 2. "Wikilink suggestions" prompt
```
At the end of the note, add a section:
## Suggested Links
List 5-10 concepts from this note that I should create as separate Obsidian notes,
formatted as [[Concept Name]].
```

### 3. "Zettelkasten atomic note" prompt
```
Write a single, focused atomic note on ONE concept: [concept].
The note should:
- Cover only this concept, nothing else
- Be self-contained and understandable without context
- Be 200-400 words
- Link out to related concepts via [[wikilinks]]
- Have YAML: tags: [evergreen] (because it's a timeless concept)
```

### 4. "Learning note" prompt
```
I'm learning [topic] at a [beginner/intermediate] level.
Write an Obsidian note that:
- Explains the core concept simply
- Gives me a mental model (analogy is great)
- Shows a minimal code example
- Lists 3 common mistakes
- Links to [[related concepts]] I should learn next
```

---

## Building a Topic Map with Claude

Use Claude to rapidly seed a new topic in your vault:

**Step 1:** Ask Claude for a curriculum
```
I want to learn [topic] in my Obsidian vault.
Give me a list of 10-15 atomic concept notes I should create,
organized in learning order. Format as a markdown list of [[Note Names]].
```

**Step 2:** Create the MOC
Paste the list into a new `[Topic] MOC` note in Obsidian.

**Step 3:** Generate notes one by one
For each item in the MOC, ask Claude:
```
Write an atomic Obsidian note for [[Concept Name]].
Use Obsidian format. Link to the other concepts in this list: [paste list].
```

**Step 4:** Paste and connect
Paste each generated note into Obsidian. Your MOC is now populated with real, linked content.

This workflow turns hours of manual note-taking into 20 minutes.

---

## The Edit-Don't-Accept Mindset

Claude's output is a **first draft**, not a final note. Always:
1. Read it before pasting
2. Edit anything that's wrong or not your voice
3. Remove generic fluff — keep your vault personal
4. Add your own observations in a `## My Take` section

Your vault should sound like you, augmented by Claude — not like a Wikipedia article.

---

## Claude Code vs Claude Web

You're using **Claude Code** (the CLI). This has an important advantage:

- Claude Code can **read files** from your vault directly with permission
- Ask: "Read my note at `~/Documents/MyBrain/Projects/march-madness.md` and suggest improvements"
- This removes the copy-paste step

In Module 13 (Advanced Automation), you'll set up MCP to let Claude browse your vault automatically.

---

## Hands-On Exercises

- [ ] Use Pattern A to draft a note on a topic you're learning right now
- [ ] Use Pattern D to convert messy rough notes into a clean Obsidian note
- [ ] Use the "curriculum + MOC" workflow: pick a topic, generate 10 concept note stubs, paste into an MOC
- [ ] Generate 3 atomic notes using the Zettelkasten prompt — paste them into your vault with correct links
- [ ] Edit a Claude-generated note to add your own `## My Take` section
- [ ] Ask Claude Code to read one of your vault files and suggest improvements (use the full path)

---

## What's Next

[Module 10 — Claude as Research Partner](../10-claude-research/README.md): Use Claude to read papers, summarize content, build literature review notes, and Q&A over your knowledge base.
