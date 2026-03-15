# Software Engineering Workflows with Claude + Obsidian

## Workflow 1: Debugging Journal

**When:** Every time you solve a non-trivial bug.

**Prompt:**
```
I just solved this bug. Write a debugging note for Obsidian:
Symptom: [WHAT I SAW]
Investigation: [STEPS I TOOK, WHAT I ELIMINATED]
Root cause: [THE ACTUAL PROBLEM]
Fix: [WHAT I CHANGED — include code snippet]
Lesson: [WHAT TO WATCH FOR]
Tags: [debugging, #lang/python, #component/database]
```

**Dataview to find past debugging notes:**
```dataview
LIST FROM #debugging SORT file.mtime DESC LIMIT 20
```

---

## Workflow 2: Architecture Decision Record

**When:** Any time you make a significant technical decision.

**Prompt:**
```
I made this decision:
Decision: [WHAT YOU CHOSE]
Context: [WHY THIS PROBLEM EXISTED]
Alternatives: [WHAT ELSE YOU CONSIDERED AND WHY REJECTED]

Write an ADR: YAML (status: Accepted), Context, Decision,
Consequences (positive and negative), Alternatives Considered.
```

---

## Workflow 3: System Architecture Note

**When:** Starting a new service or understanding an existing one.

**Prompt:**
```
Here's the system I'm working on:
[DESCRIBE OR PASTE README/DESIGN DOC]

Write an architecture note:
- What it does (one sentence)
- Component diagram (Mermaid)
- Data flow description
- Key design decisions → [[ADR wikilinks]]
- Failure modes
- How to deploy/debug
```

---

## Workflow 4: Code Understanding

**When:** Reading complex code you need to understand deeply.

**Prompt:**
```
Here's code I'm trying to understand:
[PASTE CODE]

Write a note explaining:
- What this does (plain English)
- Step-by-step logic breakdown
- Parameter meanings
- Edge cases handled (and not handled)
- Potential issues
```

---

## Workflow 5: PR Prep

**When:** Before opening a pull request.

**Prompt:**
```
I'm opening a PR for this change:
[DESCRIBE CHANGE OR PASTE DIFF]

Context from my notes:
[PASTE DEBUGGING NOTES OR DESIGN NOTES]

Write a PR description:
## Summary (3 bullets)
## Context
## Changes (technical details)
## Testing
## Notes for Reviewers
```

---

## Workflow 6: Onboarding Guide

**When:** Joining a new project or team.

**Prompt:**
```
I'm onboarding to [PROJECT/CODEBASE]. Here's what I've learned:
[PASTE ROUGH NOTES FROM FIRST WEEK]

Write an onboarding guide:
- Project overview
- Getting started commands
- Key files and their purpose
- Key concepts
- Common tasks
- Gotchas
```

---

## Workflow 7: Context Brief

**When:** Starting a complex feature or refactor.

**Prompt:**
```
I'm about to implement [FEATURE].
Here are my relevant notes:
[PASTE: architecture notes, ADRs, debugging history]

Write a context brief:
- What I need to remember
- Files I'll likely touch
- Gotchas from past debugging
- Suggested implementation order
```

---

## Workflow 8: README Generation

**When:** Documenting a new service or tool.

**Prompt:**
```
Here are my notes on [SERVICE/TOOL]:
[PASTE: architecture note, setup notes, ADRs]

Write a README using only this information:
- What it does
- Prerequisites
- Installation/setup
- Usage examples
- Configuration
- Architecture overview (reference the Mermaid diagram)
- Contributing
```
