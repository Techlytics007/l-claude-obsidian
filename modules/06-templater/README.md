# Module 06 — Templater Plugin

**Goal:** Master Templater — the community plugin that replaces Core Templates with dynamic, JavaScript-powered templates. This is the foundation for automation.

**Time:** 2-3 hours

---

## Why Templater Over Core Templates?

Core Templates: static variables only (`{{date}}`, `{{title}}`).

Templater: full JavaScript runtime inside your templates.
- Dynamic dates (yesterday, next Monday, etc.)
- Prompt the user for input
- Auto-fill from existing note data
- Run system commands
- Conditional logic
- Trigger templates from hotkeys

---

## Install

`⌘,` → Community Plugins → Browse → search "Templater" → Install → Enable

**Settings to configure:**
- Template folder: `Templates/`
- Enable: "Trigger Templater on new file creation"
- Enable: "Automatic jump to cursor" (moves cursor to `<% tp.file.cursor() %>` after insert)

---

## Templater Syntax

```
<% tp.xxx %>      — execute/output
<%* tp.xxx %>     — execute WITHOUT output (side effects only)
<% tp.file.cursor() %>   — place cursor here after template runs
```

---

## Core Variables

### Dates
```javascript
<% tp.date.now() %>                    // 2026-03-15
<% tp.date.now("YYYY-MM-DD HH:mm") %> // 2026-03-15 14:30
<% tp.date.now("dddd, MMMM D YYYY") %> // Sunday, March 15 2026
<% tp.date.yesterday("YYYY-MM-DD") %>  // 2026-03-14
<% tp.date.tomorrow("YYYY-MM-DD") %>   // 2026-03-16
<% tp.date.now("YYYY-MM-DD", 7) %>     // 7 days from now
<% tp.date.now("YYYY-MM-DD", -7) %>    // 7 days ago
```

### File Info
```javascript
<% tp.file.title %>          // Current note title
<% tp.file.folder() %>       // Current folder
<% tp.file.creation_date() %> // File creation date
<% tp.file.path() %>         // Full file path
```

### User Input (prompts)
```javascript
<% await tp.system.prompt("Project name?") %>
<% await tp.system.suggester(["Option A", "Option B"], ["val_a", "val_b"]) %>
```

The `suggester` shows a dropdown — user picks an option, Templater outputs the matching value.

---

## Practical Templates

### Daily Note Template
```markdown
---
date: <% tp.date.now("YYYY-MM-DD") %>
day: <% tp.date.now("dddd") %>
tags: [daily]
---

# <% tp.date.now("dddd, MMMM D") %>

## Top 3 Today
1. <% tp.file.cursor() %>
2.
3.

## Log

## Notes & Learnings

## Tomorrow's Focus

---
← [[<% tp.date.now("YYYY-MM-DD", -1) %>]] | [[<% tp.date.now("YYYY-MM-DD", 1) %>]] →
```

The last line creates navigation links to yesterday and tomorrow — automatically.

### Experiment Tracking Template (Data Science)
```markdown
---
created: <% tp.date.now("YYYY-MM-DD HH:mm") %>
project: <% await tp.system.prompt("Project name?") %>
model: <% await tp.system.prompt("Model/algorithm?") %>
status: running
tags: [experiment, data-science]
---

# Experiment: <% await tp.system.prompt("Experiment name?") %>

**Date:** <% tp.date.now("YYYY-MM-DD") %>
**Project:** linked above
**Model:** linked above

## Hypothesis
<% tp.file.cursor() %>

## Setup
- Dataset:
- Features:
- Target:
- Train/Val/Test split:

## Config
```python
# hyperparameters
```

## Results
| Metric | Value |
|--------|-------|
| Accuracy | |
| F1 | |
| AUC | |

## Analysis

## Next Steps
```

### ADR Template (Software Engineering)
```markdown
---
created: <% tp.date.now("YYYY-MM-DD") %>
status: <% await tp.system.suggester(["Proposed", "Accepted", "Deprecated", "Superseded"], ["proposed", "accepted", "deprecated", "superseded"]) %>
tags: [adr, decision]
---

# ADR: <% await tp.system.prompt("Decision title?") %>

**Date:** <% tp.date.now("YYYY-MM-DD") %>
**Status:** above

## Context
<% tp.file.cursor() %>

## Decision

## Consequences

## Alternatives Considered
```

---

## Hotkeys for Templates

Map templates to hotkeys so you can create a new daily note, experiment log, or ADR in one keypress.

`⌘,` → Hotkeys → search "Templater: Create new note from template"

Or in Templater settings: add each template with a hotkey in the "Template Hotkeys" section.

---

## Conditional Logic

```javascript
<%* if (tp.file.folder() === "Projects") { %>
This is a project note.
<%* } else { %>
This is not in Projects.
<%* } %>
```

---

## Running System Commands

```javascript
<% await tp.system.exec("date") %>      // run shell command, insert output
<% await tp.system.exec("whoami") %>    // insert current user
```

Use with caution — only runs when template is inserted.

---

## Hands-On Exercises

- [ ] Install and enable Templater
- [ ] Create `Templates/Daily Note.md` using the template above
- [ ] Create a new daily note and verify the ← previous | next → navigation links work
- [ ] Create `Templates/Experiment.md` — test it with a mock ML experiment note
- [ ] Create `Templates/ADR.md` — test it with a mock architecture decision
- [ ] Set a hotkey for your Daily Note template (`⌥D`)
- [ ] Use `tp.system.prompt()` in a template — confirm it prompts you at insert time

---

## What's Next

[Module 07 — Dataview Plugin](../07-dataview/README.md): Query your vault like a database — build dynamic tables, task lists, and dashboards from your notes' metadata.
