# Vault Structure Guide

## PARA Structure (Recommended)

```
MyBrain/
├── Projects/           ← Active work with a deadline
│   ├── march-madness-2026/
│   │   ├── MOC.md
│   │   ├── Experiments/
│   │   ├── EDA/
│   │   └── Journal/
│   └── my-api-service/
│       ├── MOC.md
│       ├── Architecture/
│       ├── Decisions/
│       └── Debugging/
│
├── Areas/              ← Ongoing responsibilities
│   ├── Work/
│   ├── Learning/
│   └── Health/
│
├── Resources/          ← Reference material by topic
│   ├── Machine-Learning/
│   ├── Python/
│   ├── System-Design/
│   ├── Papers/
│   └── Books/
│
├── Archive/            ← Done, inactive, or old
│   ├── Projects-2025/
│   └── Old-Notes/
│
├── Daily Notes/        ← One note per day (YYYY-MM-DD.md)
├── Templates/          ← Templater templates
├── Inbox/              ← Unprocessed captures
└── .obsidian/          ← Obsidian config (auto-managed)
```

## Note Naming Conventions

| Type | Convention | Example |
|------|-----------|---------|
| Daily note | `YYYY-MM-DD` | `2026-03-15` |
| Concept note | `Title Case` | `Gradient Descent` |
| MOC | `Topic MOC` | `Machine Learning MOC` |
| Project | `Project Name Year` | `March Madness 2026` |
| Experiment | `Exp: Description` | `Exp: XGBoost v2` |
| ADR | `ADR: Decision` | `ADR: PostgreSQL over MongoDB` |
| Paper | `Author Year - Title` | `Breiman 2001 - Random Forests` |

## Folder Rules

- **Max 3 folder levels deep** — use links for deeper organization
- **Move to Archive when done** — never delete
- **One note per concept** — split if a note gets too big
- **Inbox → process weekly** — don't let it pile up

## Tags vs Folders vs Links

| Use | For |
|-----|-----|
| Folders | Broad PARA categories only |
| Tags | Status, type, topic labels |
| Links | Content relationships, navigation |
| MOCs | Curated indexes within a topic |

## Recommended Tags

```
#status/draft     #status/active    #status/evergreen   #status/archived
#type/project     #type/moc         #type/experiment    #type/adr
#type/paper       #type/book        #type/reference     #type/daily
#topic/ml         #topic/python     #topic/swe          #topic/data-eng
```
