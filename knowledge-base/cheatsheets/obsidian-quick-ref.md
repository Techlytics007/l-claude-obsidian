# Obsidian Quick Reference

## Essential Shortcuts (Mac)

| Shortcut | Action |
|----------|--------|
| `⌘N` | New note |
| `⌘O` | Quick open (fuzzy search notes) |
| `⌘P` | Command palette |
| `⌘Shift+F` | Search vault |
| `⌘E` | Toggle edit/preview |
| `⌘G` | Graph view |
| `⌘,` | Settings |
| `⌘[` / `⌘]` | Navigate back/forward |
| `⌘Click` | Open link in new pane |
| `⌥D` | Today's daily note (set in hotkeys) |

## Links

```markdown
[[Note Name]]                    # wikilink
[[Note Name|Display text]]      # with alias
[[Note Name#Heading]]           # to a section
[[Note Name#^block-id]]         # to a block
![[Note Name]]                  # embed (transclude)
![[Note Name#Section]]          # embed section only
```

## Callouts

```markdown
> [!note]        > [!tip]        > [!warning]
> [!danger]      > [!info]       > [!example]
> [!question]    > [!success]    > [!quote]

> [!note]- Collapsed       > [!note]+ Expanded
```

## Frontmatter

```yaml
---
created: 2026-03-15
tags: [#topic/ml, #status/active]
status: draft | active | evergreen | archived
aliases: [alternate name]
---
```

## Search Operators

```
file:keyword        # filename contains
content:keyword     # content contains
tag:#tag-name       # has this tag
path:folder/        # in this folder
"exact phrase"      # exact match
-keyword            # exclude
```

## Dataview Quick Queries

```dataview
TABLE status, created FROM #experiment SORT created DESC
LIST FROM #status/active
TASK FROM "Projects" WHERE !completed
```

## Markdown Extras

```markdown
==highlight==       ~~strikethrough~~   `inline code`
$inline math$       $$block math$$
> [!note] callout   ![[embed]]
```
