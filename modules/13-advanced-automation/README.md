# Module 13 — Advanced Automation

**Goal:** Automate note creation with the Claude API + Templater, set up Claude Code MCP to read your vault, and build QuickAdd macros that invoke Claude.

**Time:** 3-4 hours

---

## The Automation Vision

At this level, you stop copy-pasting between Claude and Obsidian. Instead:
- A hotkey triggers a script that calls Claude API and writes the note directly
- Claude Code (with MCP) reads your vault files without copy-paste
- QuickAdd macros chain actions (capture → generate → file) in one step

---

## Approach 1: Claude API + Shell Script

Write a shell script that:
1. Takes your input
2. Calls the Claude API
3. Writes the response directly to a new Obsidian note

### Setup

```bash
# Install the Anthropic CLI / use curl
pip install anthropic

# Set your API key
export ANTHROPIC_API_KEY="sk-ant-..."
# Add to ~/.zshrc so it persists
```

### Script: quick-note.py

```python
#!/usr/bin/env python3
"""
quick-note.py — Generate an Obsidian note via Claude API
Usage: python quick-note.py "Explain gradient descent" Resources/ML/
"""

import sys
import anthropic
from pathlib import Path
from datetime import datetime

def generate_note(topic: str, folder: str) -> None:
    vault = Path.home() / "Documents" / "MyBrain"
    target_folder = vault / folder
    target_folder.mkdir(parents=True, exist_ok=True)

    # Build prompt
    prompt = f"""Create an Obsidian note about: {topic}

Format:
---
created: {datetime.now().strftime('%Y-%m-%d')}
tags: [auto-generated]
status: draft
---

# {topic}

[H2 sections for key concepts, with examples, callouts, and [[wikilinks]]]

## Suggested Links
[List of related concepts as [[wikilinks]]]
"""

    client = anthropic.Anthropic()
    message = client.messages.create(
        model="claude-opus-4-6",
        max_tokens=2000,
        messages=[{"role": "user", "content": prompt}]
    )

    content = message.content[0].text

    # Save to vault
    filename = topic.replace(" ", "-").lower() + ".md"
    filepath = target_folder / filename
    filepath.write_text(content)

    print(f"Note created: {filepath}")

if __name__ == "__main__":
    topic = sys.argv[1] if len(sys.argv) > 1 else "New Concept"
    folder = sys.argv[2] if len(sys.argv) > 2 else "Inbox"
    generate_note(topic, folder)
```

### Usage

```bash
python quick-note.py "Gradient Descent" "Resources/ML"
python quick-note.py "Docker Compose" "Resources/DevOps"
python quick-note.py "Experiment: XGBoost v2" "Projects/march-madness/Experiments"
```

---

## Approach 2: Claude Code MCP (Read Your Vault)

With Claude Code running in your terminal, you can ask it to read vault files directly:

```bash
# In your terminal (Claude Code session)
claude

# Then ask:
"Read ~/Documents/MyBrain/Projects/march-madness/MOC.md and tell me
 what experiments I haven't followed up on."

"Read all notes in ~/Documents/MyBrain/Projects/march-madness/Experiments/
 and build a summary table of model performance."

"I want to add a new experiment note. Read my existing experiment notes
 to understand the format, then create a new one for XGBoost with
 n_estimators=500 in the same folder."
```

Claude Code reads, analyzes, and writes files directly in your vault.

**Setting up a vault alias:**
```bash
# ~/.zshrc
export VAULT="$HOME/Documents/MyBrain"
alias vault='cd $VAULT && claude'
```

Now `vault` opens Claude Code at your vault root — it can read any note.

---

## Approach 3: Templater + User Scripts

Templater can run JavaScript that calls external scripts or APIs.

`⌘,` → Templater → User scripts folder: `Templates/scripts/`

### scripts/claude-expand.js

```javascript
// Expands the current note's stub content using Claude API
// Called from a Templater template
async function expandNote(tp, stub) {
    // Uses fetch to call a local Python server that wraps Claude API
    const response = await fetch('http://localhost:8765/expand', {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({stub: stub})
    });
    const data = await response.json();
    return data.expanded;
}

module.exports = expandNote;
```

### Local server (server.py)

```python
from flask import Flask, request, jsonify
import anthropic

app = Flask(__name__)
client = anthropic.Anthropic()

@app.route('/expand', methods=['POST'])
def expand():
    stub = request.json['stub']
    message = client.messages.create(
        model="claude-opus-4-6",
        max_tokens=2000,
        messages=[{
            "role": "user",
            "content": f"Expand this Obsidian note stub into a full note:\n\n{stub}"
        }]
    )
    return jsonify({"expanded": message.content[0].text})

if __name__ == '__main__':
    app.run(port=8765)
```

Run `python server.py` in background, then your Templater script can call it.

---

## Approach 4: QuickAdd + Script Macro

QuickAdd lets you run macros that chain actions. You can add a "Script" step that calls your Python script:

1. QuickAdd → Add Choice → "Macro" → "Claude Note Generator"
2. Add step: "Prompt" → get topic from user
3. Add step: "User Script" → calls `quick-note.py` with the topic
4. Add step: "Open file" → opens the generated note

This gives you a one-hotkey flow: press `⌥G` → type topic → note appears.

---

## Automation Ideas to Build

| Automation | Trigger | Action |
|-----------|---------|--------|
| Daily briefing | Morning hotkey | Read yesterday's notes, generate today's focus |
| Experiment note | `⌥E` | Prompt → call Claude API → create experiment note |
| Code explain | Selection + hotkey | Send selected code to Claude → save explanation note |
| Paper summary | URL + hotkey | Fetch paper abstract → Claude → paper note |
| PR description | Git diff | Run Claude on staged diff → generate PR description note |

---

## Hands-On Exercises

- [ ] Set up `ANTHROPIC_API_KEY` in `~/.zshrc`
- [ ] Write and run `quick-note.py` — generate 2 notes on topics you care about
- [ ] Open a Claude Code session with `cd ~/Documents/MyBrain && claude` — ask it to read and improve one of your notes
- [ ] Set the `VAULT` alias in `~/.zshrc`
- [ ] (Advanced) Set up the local Flask server and call it from a Templater user script

---

## What's Next

[Module 14 — Building Your Second Brain](../14-second-brain/README.md): Bring everything together with the PARA method, evergreen notes, and a sustainable long-term PKM system.
