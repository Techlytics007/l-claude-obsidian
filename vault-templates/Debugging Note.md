---
created: <% tp.date.now("YYYY-MM-DD HH:mm") %>
project: <% await tp.system.prompt("Project?") %>
status: resolved
tags: [debugging]
---

# Bug: <% await tp.system.prompt("Bug description (short)?") %>

**Date:** <% tp.date.now("YYYY-MM-DD") %>
**Time to resolve:**

## Symptom
<% tp.file.cursor() %>

## Investigation Steps
1.
2.
3.

## Root Cause

## Fix
```python
# code here
```

## Lesson / Watch Out For

## Related
- [[]]
