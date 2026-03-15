---
created: <% tp.date.now("YYYY-MM-DD HH:mm") %>
project: <% await tp.system.prompt("Project name?") %>
model: <% await tp.system.prompt("Model/algorithm?") %>
accuracy:
f1:
status: running
tags: [experiment]
---

# Experiment: <% await tp.system.prompt("Experiment name?") %>

**Date:** <% tp.date.now("YYYY-MM-DD") %>

## Hypothesis
<% tp.file.cursor() %>

## Setup
- Dataset:
- Features:
- Target:
- Train/Val/Test split:

## Config
```python
# hyperparameters here
```

## Results
| Metric | Value |
|--------|-------|
| Accuracy | |
| F1 | |
| AUC | |

## Analysis

## Next Steps
→ [[]]
