# Module 14 — Building Your Second Brain

**Goal:** Design and implement a complete, sustainable Personal Knowledge Management (PKM) system using the PARA method and evergreen note principles.

**Time:** 2-3 hours

---

## What is a Second Brain?

A Second Brain is an external system that stores, organizes, and connects your knowledge — so your biological brain can focus on thinking, not remembering.

The goal: **capture everything, find anything, create effortlessly**.

Key principle (Tiago Forte): your notes are not an archive, they're a **creative resource**. Every note should be actionable or connected to something actionable.

---

## The PARA Method

PARA is the organizing framework. Four top-level folders:

### P — Projects
Things with a clear outcome and deadline. Currently active.
```
Projects/
├── march-madness-2026/
├── customer-churn-model/
└── api-service-v2/
```

**Ask yourself:** "Is this something I'm actively working on this week/month?"

### A — Areas
Ongoing responsibilities with no end date. Standards to maintain.
```
Areas/
├── Work/
├── Health/
├── Finance/
├── Learning/
└── Home/
```

**Ask yourself:** "Is this something I need to maintain indefinitely?"

### R — Resources
Topics you're interested in. Reference material. Not tied to a project.
```
Resources/
├── Machine-Learning/
├── Python/
├── System-Design/
├── Books/
└── Papers/
```

**Ask yourself:** "Might I want this information someday?"

### A — Archive
Everything that's done, inactive, or not currently relevant.
```
Archive/
├── Projects-2025/
├── Old-Experiments/
└── Past-Courses/
```

**Rule:** Never delete — archive. Information you thought was useless often becomes useful.

---

## Evergreen Notes

Coined by Andy Matuschak. An evergreen note:
- Is **atomic** — one idea per note
- Is **concept-oriented** — title is a claim or idea, not a category
- Is **densely linked** — connects to many other notes
- Is **updated** — refined over time as your understanding grows

**Not evergreen:**
- "Python Notes" (too broad, a category)
- "Meeting with team 2026-03-15" (ephemeral)
- "Chapter 3 Summary" (not standalone)

**Evergreen:**
- "Gradient descent converges faster with normalized features"
- "Backlinks in Obsidian replace the need for hierarchical folders"
- "Random forests reduce variance by averaging many high-variance trees"

Over time, your evergreen notes become a **permanent knowledge graph** — your intellectual capital.

---

## The Capture → Organize → Distill → Express Workflow (CODE)

**C — Capture**
Use QuickAdd (`⌥C`) to capture ideas, insights, and references the moment they occur.
Don't organize now — just capture to Inbox.

**O — Organize**
Weekly: go through Inbox, move notes to P/A/R/A. Add frontmatter, links, tags.

**D — Distill**
Progressively summarize. When you revisit a note, **bold** the most important line.
Next visit, add a summary at the top. Over time, the note becomes easy to skim.

**E — Express**
When you create something — a blog post, report, PR, model — pull from your vault.
Your notes are raw material. Claude helps you synthesize them.

---

## Progressive Summarization

Every time you revisit a note, leave it slightly better:

1. **First pass:** Just highlight (bold in Obsidian) the most important sentences
2. **Second pass:** Add a `## Summary` section at the top (1-3 sentences)
3. **Third pass:** Extract key insights into bullet points
4. **Final pass:** Turn the note evergreen — make it timeless, well-linked

With Claude:
```
Here's a note I've had for a while:
[paste note]

Apply progressive summarization:
1. Bold the most important sentences
2. Write a 2-sentence summary for the top
3. Extract 3 key insights as bullet points
Return the revised note in full.
```

---

## Weekly Review

The most important habit. Every week (30 min):

1. **Inbox** → empty it, move to PARA
2. **Projects** → review each active project: is it progressing?
3. **Daily notes from this week** → any insights to promote to evergreen notes?
4. **Dataview: Open Tasks** → any tasks overdue or stale?
5. **Random note** (`⌘P` → "Open random note") → rediscover something old

**Weekly review note template:**
```markdown
# Weekly Review — Week of {{date}}

## Projects Status
- [[Project A]]:
- [[Project B]]:

## Insights from This Week

## New Notes to Create

## Archive These
```

---

## Linking as a Habit

Every time you write a note, ask:
- What does this connect to? (add `[[wikilinks]]`)
- What notes should link TO this? (go add a link in those notes)
- What does this make me think of? (create a new note or ghost link)

This habit, done consistently, is what turns a collection of notes into a Second Brain.

---

## Hands-On Exercises

- [ ] Reorganize your vault into PARA folders (Projects, Areas, Resources, Archive)
- [ ] Write 5 evergreen notes — one idea per note, titled as a claim or concept
- [ ] Set up the weekly review Dataview dashboard on your `Home` note
- [ ] Apply progressive summarization to your oldest note
- [ ] Configure Obsidian Git (Module 08) so your Second Brain is backed up automatically
- [ ] Set up the `⌥C` QuickAdd capture — use it every day this week

---

## What's Next

[Module 15 — Power User Synthesis](../15-power-user-synthesis/README.md): The guru level — combine everything into a daily driver system that makes you a more effective data scientist and engineer.
