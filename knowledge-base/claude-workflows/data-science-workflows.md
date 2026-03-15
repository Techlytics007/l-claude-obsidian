# Data Science Workflows with Claude + Obsidian

## Workflow 1: Experiment Tracking

**When:** Every time you run a new model or try a new config.

**Steps:**
1. Press `⌥E` → QuickAdd creates experiment note from template
2. Fill in: hypothesis, config, dataset split
3. Run experiment
4. Fill in: results table, analysis
5. Dataview leaderboard auto-updates

**Dataview dashboard:**
```dataview
TABLE model, accuracy, f1, created
FROM #experiment
SORT accuracy DESC
```

---

## Workflow 2: EDA Documentation

**When:** After exploring a new dataset.

**Prompt:**
```
Here are my EDA findings:
[PASTE: shape, dtypes, nulls, distributions, correlations, anomalies]

Write an Obsidian EDA note:
- Key Stats table
- > [!warning] for data quality issues
- > [!insight] for patterns
- Feature Engineering Ideas section
- Open Questions section
```

---

## Workflow 3: Feature Engineering Log

**When:** Adding/removing/transforming features.

**Keep a note per feature:**
```markdown
# Feature: [Name]
## Definition (code)
## Rationale
## Impact on Model Performance
## Decision: include/exclude
## Caveats
```

---

## Workflow 4: Model Card

**When:** After training a production-worthy model.

**Prompt:**
```
Write a model card for Obsidian:
Model: [ALGORITHM]
Task: [WHAT IT PREDICTS]
Data: [WHAT IT WAS TRAINED ON]
Performance: [METRICS TABLE]
Limitations: [WHAT IT CAN'T DO]
```

---

## Workflow 5: Project Journal

**When:** End of each work day on a DS project.

**Prompt:**
```
Here are my rough notes from today's work on [PROJECT]:
[PASTE DAILY LOG]

Write a project journal entry: what I did, what I learned,
what's blocked, what's next. Link to [[relevant experiment notes]].
```

---

## Workflow 6: Monthly Retrospective

**When:** End of month.

**Prompt:**
```
Here are all my experiment notes from this month:
[PASTE THEM ALL]

Analyze:
1. What worked and what didn't
2. Patterns in what improved performance
3. What to try next month
4. Knowledge gaps to fill
```

---

## Workflow 7: Paper → Feature Idea

**When:** Reading a paper with an interesting technique.

**Prompt:**
```
I read this paper about [TECHNIQUE]:
[PASTE KEY SECTION]

Write an Obsidian note:
1. What the technique does (plain English)
2. Implementation sketch (pseudocode or Python)
3. How I could apply it to [[my current project]]
4. Limitations
```
