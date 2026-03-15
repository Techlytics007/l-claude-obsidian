# Module 11 — Claude + Obsidian for Data Science

**Goal:** Build a complete DS workflow in Obsidian — experiment tracking, EDA documentation, model cards, project journals, and a living reference for your work.

**Time:** 3-4 hours

---

## The DS Knowledge Problem

Data scientists have a unique knowledge management problem:
- Experiments multiply quickly (dozens of runs, slight variations)
- "Why did I try that?" is impossible to answer months later
- EDA insights get lost in notebooks
- Model decisions aren't documented
- Multiple projects run in parallel, context-switching kills flow

Obsidian + Claude solves all of this.

---

## Vault Structure for Data Science

```
MyBrain/
├── Projects/
│   ├── march-madness-2026/
│   │   ├── MOC.md              ← project map of content
│   │   ├── EDA/
│   │   ├── Experiments/
│   │   ├── Models/
│   │   └── Journal/
│   └── customer-churn/
├── Resources/
│   ├── Algorithms/             ← concept notes on algorithms
│   ├── Libraries/              ← sklearn, pandas, BigQuery refs
│   └── Papers/                 ← literature notes
└── Daily Notes/
```

---

## Experiment Tracking

The Templater experiment template from Module 06 — put it to real use.

**Best practice:** Every experiment run gets its own note. Don't edit old experiment notes to add new results — create a new note. Your vault becomes an audit trail.

**Experiment note anatomy:**
```markdown
---
created: 2026-03-15 14:30
project: march-madness
model: random-forest
n_estimators: 200
max_depth: 10
accuracy: 0.687
f1: 0.701
status: done
tags: [experiment, #project/march-madness]
---

# Experiment: RF-v3 — increased n_estimators

## Hypothesis
More trees should reduce variance and improve accuracy on the holdout.

## Config
\`\`\`python
RandomForestClassifier(n_estimators=200, max_depth=10, random_state=42)
\`\`\`

## Dataset
- Train: 2003-2023 seasons (80%)
- Val: 2024 season (20%)
- Features: [[Feature Engineering v2]]

## Results
| Metric | Value |
|--------|-------|
| Accuracy | 0.687 |
| F1 | 0.701 |
| AUC | 0.731 |

## Analysis
Marginal improvement over RF-v2 (0.682). Not worth the compute cost.
Next: try gradient boosting.

## Next
→ [[Experiment: XGBoost-v1]]
```

Now Dataview gives you a live leaderboard:
````markdown
```dataview
TABLE model, accuracy, f1, created
FROM #experiment AND #project/march-madness
SORT accuracy DESC
```
````

---

## EDA Documentation Workflow

During EDA in a Jupyter notebook, run Claude as a co-analyst:

```
I'm doing EDA on a dataset of NCAA basketball games.
Here are my findings so far (from notebook cells):

[paste key findings: shape, dtypes, null counts, distributions, correlations]

Write an EDA summary note for my Obsidian vault:
- Key statistics table
- Callout: > [!warning] for data quality issues I should fix
- Callout: > [!insight] for patterns that might be predictive features
- Feature Engineering Ideas section
- Open Questions section
```

---

## Feature Engineering Notes

Track your feature engineering decisions as notes:

```markdown
# Feature: Win Rate Last 5 Games

**Created for:** [[March Madness 2026]]
**Status:** in experiments RF-v2+

## Definition
\`\`\`python
df['win_rate_l5'] = df.groupby('team')['won'].transform(
    lambda x: x.shift(1).rolling(5).mean()
)
\`\`\`

## Rationale
Recent form matters more than season-long average in tournament play.
Hypothesis: teams on a hot streak perform better.

## Performance Impact
- Without: 0.671 accuracy
- With: 0.682 accuracy (+1.1%)
- Decision: **include**

## Caveats
- Nulls for first 4 games of season — filled with season average
```

---

## Model Card Template

For any model you deploy or present:

```markdown
---
created: 2026-03-15
model: Random Forest Classifier
version: v3
project: march-madness-2026
status: production
tags: [model-card, #project/march-madness]
---

# Model Card: March Madness 2026 — Random Forest v3

## Model Summary
- **Algorithm:** Random Forest (sklearn)
- **Task:** Binary classification — predict game winner
- **Accuracy:** 68.7% on 2024 holdout

## Training Data
- Source: [[Historical NCAA Data (2003-2023)]]
- Rows: 191,796 games
- Features: 23 engineered features (see [[Feature Engineering v2]])

## Performance
| Split | Accuracy | F1 | AUC |
|-------|----------|-----|-----|
| Train | 0.841 | 0.836 | 0.912 |
| Val (2024) | 0.687 | 0.701 | 0.731 |

## Limitations
- Trained on regular season data only; tournament games may differ
- No real-time injury or lineup data
- Conference strength not normalized

## Known Issues
None

## Usage
\`\`\`python
import pickle
model = pickle.load(open("model.pkl", "rb"))
pred = model.predict(X_test)
\`\`\`
```

---

## Project Journal

Keep a running journal per project — daily entries, one note per week or per milestone:

```
You: I spent today working on march-madness predictions.
Here's what I did (rough notes):
- Tried XGBoost, got 0.71 accuracy (better than RF)
- Noticed that seed difference is the strongest feature
- Bracket data finally available — fetched it
- Next: need to handle play-in games

Write this as an Obsidian project journal entry.
Include links to [[XGBoost-v1 Experiment]] and [[Bracket 2026 Data]].
```

---

## Claude as DS Advisor

Use Claude to pressure-test your thinking:

```
I'm building a bracket prediction model. Here's my current approach:
[paste your MOC or model card]

Ask me 5 hard questions about my methodology that I might not have considered.
Then for each question, suggest how I could address it.
```

Or:
```
Here are my EDA findings:
[paste EDA note]

What features should I engineer based on this? Rank them by likely predictive value.
```

---

## Hands-On Exercises

- [ ] Set up the DS vault structure above (or adapt to your actual project)
- [ ] Create 3 experiment notes for real or mock experiments — confirm Dataview leaderboard works
- [ ] Run the EDA documentation workflow on a real dataset you've analyzed
- [ ] Write a feature engineering note for one feature in a project
- [ ] Write a model card for a model you've built (real or mock)
- [ ] Start a project journal — write today's entry with Claude's help

---

## What's Next

[Module 12 — Claude + Obsidian for Software Engineering](../12-claude-software-engineering/README.md): SWE workflows — architecture notes, ADRs, debugging journals, PR prep, and codebase documentation.
