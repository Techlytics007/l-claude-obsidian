# Module 07 — Dataview Plugin

**Goal:** Query your vault like a database. Build dynamic tables of experiments, tasks, projects, and notes using frontmatter metadata.

**Time:** 2-3 hours

---

## What is Dataview?

Dataview treats your vault as a database. Every note's **frontmatter** (YAML properties) and **inline fields** become queryable data. You write queries in code blocks — they render live in the note.

Why it's transformative for DS/SWE:
- See all active experiments in one table
- Track all open TODOs across your vault
- Build a live project dashboard
- Query notes by date, status, tag, folder

---

## Install

`⌘,` → Community Plugins → Browse → "Dataview" → Install → Enable

Settings:
- Enable JavaScript queries: ✅ (needed for advanced DQL)
- Enable inline queries: ✅

---

## Query Types

### TABLE — most useful

````markdown
```dataview
TABLE status, created, model
FROM "Projects/Experiments"
WHERE status = "running"
SORT created DESC
```
````

### LIST

````markdown
```dataview
LIST
FROM #status/active
SORT file.name ASC
```
````

### TASK — query checkboxes across vault

````markdown
```dataview
TASK
FROM "Projects"
WHERE !completed
GROUP BY file.link
```
````

### CALENDAR — view notes on a calendar

````markdown
```dataview
CALENDAR created
FROM "Daily Notes"
```
````

---

## Frontmatter as Database Columns

The key: every frontmatter key becomes a queryable column.

```yaml
---
created: 2026-03-15
project: march-madness
model: random-forest
accuracy: 0.687
status: done
tags: [experiment]
---
```

Now you can:
```
TABLE model, accuracy, status
FROM #experiment
SORT accuracy DESC
```

This gives you a live leaderboard of all your ML experiments.

---

## FROM Clause

```
FROM "folder/path"      # notes in this folder
FROM #tag               # notes with this tag
FROM [[Note Name]]      # notes that link to Note Name
FROM outgoing([[Note]]) # notes that Note links to
FROM -#archived         # exclude archived
FROM "Projects" AND #active   # combine conditions
FROM "Projects" OR "Archive"  # union
```

---

## WHERE Clause

```
WHERE status = "active"
WHERE created >= date(2026-01-01)
WHERE accuracy > 0.7
WHERE contains(tags, "experiment")
WHERE !completed          # for tasks
WHERE file.name != "Home"
WHERE length(file.outlinks) > 5   # notes with 5+ outgoing links
```

---

## Practical Dashboards

### Active Projects Dashboard

```markdown
# Active Projects

\`\`\`dataview
TABLE project, status, file.mtime AS "Last Updated"
FROM #type/project
WHERE status != "archived"
SORT file.mtime DESC
\`\`\`
```

### ML Experiment Leaderboard

```markdown
# Experiment Results

\`\`\`dataview
TABLE model, accuracy, file.link AS "Notes", created
FROM "Projects/Experiments"
SORT accuracy DESC
\`\`\`
```

### Open TODOs Across Vault

```markdown
# Open Tasks

\`\`\`dataview
TASK
FROM "Projects"
WHERE !completed
GROUP BY file.link
\`\`\`
```

### Daily Notes Index

```markdown
\`\`\`dataview
TABLE day, file.link AS "Note"
FROM "Daily Notes"
SORT file.name DESC
LIMIT 14
\`\`\`
```

### Notes I Haven't Touched in 30 Days

```markdown
\`\`\`dataview
TABLE file.mtime AS "Last Modified", status
FROM "Projects"
WHERE file.mtime < date(today) - dur(30 days)
SORT file.mtime ASC
\`\`\`
```

---

## Inline Fields

You can add queryable fields anywhere in a note body (not just frontmatter):

```markdown
Rating:: 8/10
Status:: in-progress
Due:: 2026-04-01
```

Query them the same way:
```
TABLE Rating, Status
FROM "Books"
WHERE Rating > 7
```

---

## DataviewJS (Advanced)

For complex logic, use JavaScript:

````markdown
```dataviewjs
const experiments = dv.pages('"Projects/Experiments"')
    .where(p => p.accuracy > 0.7)
    .sort(p => p.accuracy, 'desc');

dv.table(
    ["Note", "Model", "Accuracy"],
    experiments.map(p => [p.file.link, p.model, p.accuracy])
);
```
````

---

## Hands-On Exercises

Set up real experiment tracking:

- [ ] Install Dataview
- [ ] Create 3 mock experiment notes in `Projects/Experiments/` — each with frontmatter: `model`, `accuracy`, `status`, `created`
- [ ] Build an "Experiment Leaderboard" table sorted by accuracy
- [ ] Build an "Active Projects" dashboard on your `Home` note
- [ ] Build a "Open Tasks" view from your Projects folder
- [ ] Try inline fields — add `Status:: active` to a note body, query it
- [ ] Add a Dataview calendar to your daily notes index

---

## What's Next

[Module 08 — Community Plugins](../08-community-plugins/README.md): The best third-party plugins — QuickAdd, Kanban, Excalidraw, and Obsidian Git.
