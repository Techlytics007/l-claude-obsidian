---
created: <% tp.date.now("YYYY-MM-DD") %>
status: <% await tp.system.suggester(["Proposed", "Accepted", "Deprecated", "Superseded"], ["proposed", "accepted", "deprecated", "superseded"]) %>
tags: [adr, decision]
---

# ADR: <% await tp.system.prompt("Decision title?") %>

**Date:** <% tp.date.now("YYYY-MM-DD") %>

## Context
<% tp.file.cursor() %>

## Decision

## Consequences

### Positive

### Negative

## Alternatives Considered

## Related
- [[]]
