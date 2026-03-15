# Claude Prompt Patterns for Obsidian

## Universal Prefix (add to any prompt)

```
Format the output as Obsidian markdown with:
- YAML frontmatter (created, tags, status: draft)
- Obsidian callouts > [!note], > [!tip], > [!warning] for key points
- [[wikilinks]] for related concepts
- Code blocks with language specified
```

---

## Draft a New Note

```
Write an Obsidian note on: [TOPIC]
[universal prefix]
Include: H2 sections for key concepts, code examples, a ## Suggested Links section
         with 5-10 [[wikilinks]] to related topics.
```

## Refine an Existing Note

```
Here's my rough note on [TOPIC]:
[PASTE NOTE]

Please: fix structure, add YAML frontmatter, add callouts, suggest 3 wikilinks,
keep it concise.
```

## Atomic/Evergreen Note

```
Write a single atomic note on ONE concept: [CONCEPT]
- 200-400 words, self-contained, timeless
- Title is a claim or insight (not just the concept name)
- Dense [[wikilinks]] to related concepts
- tags: [evergreen]
```

## Summarize a Paper

```
Here's a paper I read:
[PASTE ABSTRACT + KEY SECTIONS]

Create an Obsidian note:
## Summary (3 sentences), ## Key Contributions, ## Method, ## Results,
## Limitations, ## My Takeaways (leave blank), ## Related Papers ([[wikilinks]])
```

## Convert Rough Notes

```
Here are my rough notes from [SOURCE]:
[PASTE MESSY NOTES]

Convert to a clean Obsidian note: YAML frontmatter, Key Takeaways callout,
structured sections, Action Items at the bottom.
```

## Build a Topic Curriculum

```
I want to learn [TOPIC] in Obsidian.
Give me a list of 10-15 atomic concept notes I should create, in learning order.
Format as a markdown list of [[Note Names]] for an MOC.
```

## Data Science: EDA Summary

```
Here are my EDA findings on [DATASET]:
[PASTE FINDINGS]

Write an Obsidian note: key stats table, > [!warning] for data quality issues,
> [!insight] for predictive patterns, Feature Engineering Ideas section,
Open Questions section.
```

## Software Engineering: Debugging Note

```
I solved this bug. Write a debugging note for Obsidian:
Symptom: [WHAT I SAW]
Investigation: [WHAT I TRIED]
Root cause: [WHAT WAS WRONG]
Fix: [WHAT I CHANGED]

Format: Symptom → Investigation → Root Cause → Fix (with code) → Lesson → Tags
```

## Architecture Decision Record

```
I made this architectural decision:
Decision: [WHAT]
Context: [WHY THIS PROBLEM EXISTED]
Alternatives considered: [WHAT ELSE WAS CONSIDERED]

Write an ADR note: YAML (status: Accepted), Context, Decision,
Consequences (positive and negative), Alternatives Considered.
```

## Progressive Summarization

```
Apply progressive summarization to this note:
[PASTE NOTE]

1. Bold the most important sentences
2. Write a 2-sentence ## Summary at the top
3. Extract 3 key insights as bullets
Return the full revised note.
```

## Synthesize Multiple Notes

```
Here are my notes on [TOPIC]:
[PASTE 3-5 NOTES]

Synthesize:
1. 3-sentence summary of my current understanding
2. 3 most important insights
3. 2 biggest gaps in my knowledge
4. Draft MOC structure for these notes
```

## Pre-Write from Vault

```
I'm writing a [BLOG POST / README / REPORT] on [TOPIC].
Here are my relevant notes:
[PASTE NOTES]

Draft the piece using ONLY the information in my notes.
Don't add external information — I'll fill gaps manually.
```
