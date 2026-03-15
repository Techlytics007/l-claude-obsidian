---
title: <% await tp.system.prompt("Paper title?") %>
authors: <% await tp.system.prompt("Authors?") %>
year: <% await tp.system.prompt("Year?") %>
created: <% tp.date.now("YYYY-MM-DD") %>
status: read
rating:
tags: [paper]
---

# <% tp.file.title %>

**Authors:** see frontmatter
**Year:** see frontmatter

## Summary
<% tp.file.cursor() %>

## Key Contributions

## Method

## Results

## Limitations

## My Takeaways

## Questions I Still Have

## Connections to My Work
- [[]]

## Related Papers
- [[]]
