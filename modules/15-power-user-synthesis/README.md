# Module 15 — Power User Synthesis

**Goal:** Bring everything together into your personal daily driver — the guru-level system that makes you a faster, deeper, more organized data scientist and software engineer.

**Time:** 2-3 hours (ongoing refinement)

---

## What "Guru Level" Looks Like

A guru-level Obsidian + Claude user:
- **Never loses knowledge** — everything important is captured, organized, linked
- **Finds anything in seconds** — search + Dataview + MOCs make retrieval instant
- **Creates faster** — Claude drafts, vault provides context, you curate and ship
- **Thinks more clearly** — writing notes forces clarity; links surface connections
- **Gets smarter over time** — the vault compounds; every note makes future notes better

---

## Your Daily Driver System

### Morning (5-10 min)
1. Open `Home` note (bookmarked, instant access)
2. Check Active Projects Dataview table — what's in progress?
3. Open today's daily note (`⌥D`) — set top 3 focus items
4. Check Open Tasks Dataview — anything overdue?

### During Work
- **New idea / resource?** → `⌥C` (QuickAdd capture) — don't break flow
- **Starting a complex task?** → write a context note first (pull from vault + Claude)
- **Solved a bug?** → open debugging journal, document it immediately
- **Made a decision?** → write an ADR note, link from project MOC
- **Read something?** → run it through Claude → paste into vault

### End of Day (5 min)
- Daily note: fill in Log, Wins, Tomorrow sections
- Any insights → promote to evergreen notes

### Weekly (30 min)
- Weekly review (Module 14)
- Promote best daily insights to evergreen notes
- Archive completed projects / experiments

---

## The Claude + Obsidian Power Moves

### Power Move 1: Context Loading
Before any complex work session, ask Claude to read your relevant notes:
```bash
# In Claude Code:
"Read all notes in ~/Documents/MyBrain/Projects/march-madness/
 and give me a 5-bullet briefing of where this project stands."
```

### Power Move 2: Synthesis
When you have 5+ notes on a topic, synthesize them:
```
Here are 5 notes I've written on [topic]:
[paste them all]

Synthesize these into:
1. A 3-sentence summary of my current understanding
2. The 3 most important insights
3. The 2 biggest gaps in my knowledge
4. An updated MOC I should write
```

### Power Move 3: Pre-Writing
Before writing a report, blog post, or README — pull from vault:
```
I'm writing a [blog post / README / report] on [topic].
Here are my relevant notes:
[paste notes]

Using ONLY the information in these notes, draft the piece.
Don't add external information. I'll fill in gaps.
```

### Power Move 4: Learning Acceleration
When learning something new, use Claude to build the scaffold fast:
```
I'm starting to learn [topic] from scratch.
Build me an Obsidian starter vault structure:
1. An MOC with 10 concept notes I should write
2. The first 3 concept notes (full atomic notes)
3. A resources list of what to read/watch first
```

### Power Move 5: Retrospective
Monthly: paste your month's experiment notes to Claude:
```
Here are all my ML experiment notes from March:
[paste them]

Analyze these experiments:
1. What worked? What didn't?
2. What patterns do you see in what improved accuracy?
3. What should I try next month?
```

---

## Keyboard Shortcut Mastery

Build muscle memory for these — zero friction access to your system:

| Shortcut | Action |
|----------|--------|
| `⌘O` | Quick open any note (use constantly) |
| `⌘P` | Command palette |
| `⌘Shift+F` | Vault search |
| `⌥D` | Open today's daily note |
| `⌥C` | Quick capture |
| `⌥E` | New experiment note |
| `⌥H` | Open Home note |
| `⌘G` | Graph view |
| `⌘E` | Toggle edit/preview |
| `⌘[` / `⌘]` | Navigate back/forward |

---

## Vault Health Metrics

Use Dataview to measure your vault:

```markdown
# Vault Health Dashboard

## Note Count by Folder
\`\`\`dataviewjs
const folders = ["Projects", "Areas", "Resources", "Archive", "Daily Notes"];
const rows = folders.map(f => {
    const count = dv.pages(`"${f}"`).length;
    return [f, count];
});
dv.table(["Folder", "Notes"], rows);
\`\`\`

## Recently Modified (last 7 days)
\`\`\`dataview
TABLE file.mtime AS "Modified"
WHERE file.mtime >= date(today) - dur(7 days)
SORT file.mtime DESC
LIMIT 20
\`\`\`

## Orphan Notes (no links)
\`\`\`dataview
LIST
WHERE length(file.inlinks) = 0 AND length(file.outlinks) = 0
AND !contains(file.path, "Daily Notes")
\`\`\`
```

Review orphans weekly — link them or archive them.

---

## The Compounding Effect

At 1 month: you have 50 notes. Finding things is already better than before.
At 3 months: 200 notes. You're linking new ideas to old ones constantly.
At 6 months: 500 notes. You feel the Second Brain working — Claude can synthesize it.
At 1 year: 1000+ notes. Your vault is a genuine competitive advantage.

The system compounds because:
- Each note creates context for future notes
- More links = more unexpected connections
- Claude gets more useful as the vault grows
- Your thinking becomes more structured by habit

---

## What to Build This Week

1. Finalize your vault structure (PARA)
2. Set up the full plugin stack (Modules 06-08)
3. Create your Home note with all Dataview dashboards
4. Set up Obsidian Git (automatic backup)
5. Write your first 10 evergreen notes on topics you know deeply
6. Run the "learning acceleration" power move on one new topic

---

## You Are Now the Guru

You have:
- A structured vault with PARA organization
- Dynamic Dataview dashboards for experiments, projects, tasks
- Templater templates that generate notes instantly
- QuickAdd macros for zero-friction capture
- Claude workflows for drafting, refining, synthesizing
- Automation scripts that write notes via Claude API
- A Second Brain that compounds over time

The final unlock: **consistency**. The system only works if you use it daily.
10 minutes a day > 2 hours once a week.

---

## Congratulations

You've completed the Obsidian + Claude curriculum. You're now equipped to:
- Build and maintain a personal knowledge graph
- Use Claude to 10x your note-taking and research speed
- Track DS experiments and SWE decisions with discipline
- Create faster by pulling from a well-organized vault
- Keep getting smarter as your Second Brain grows

**What's next?** Return to this curriculum in 3 months and see how much your vault has grown. The concepts will hit differently when you have real experience behind them.
