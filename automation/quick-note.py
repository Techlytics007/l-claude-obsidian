#!/usr/bin/env python3
"""
quick-note.py — Generate an Obsidian note via Claude API and write it to your vault.

Usage:
    python quick-note.py "Topic name" "Resources/ML"
    python quick-note.py "Gradient Descent" "Resources/ML"
    python quick-note.py "Docker Compose" "Resources/DevOps"
    python quick-note.py "Experiment: XGBoost v2" "Projects/my-project/Experiments"

Prerequisites:
    pip install anthropic
    export ANTHROPIC_API_KEY="sk-ant-..."

Configuration:
    Edit VAULT_PATH below to point to your Obsidian vault.
"""

import sys
import anthropic
from pathlib import Path
from datetime import datetime

# ── Config ────────────────────────────────────────────────────────────────────
VAULT_PATH = Path.home() / "Documents" / "MyBrain"
MODEL = "claude-opus-4-6"
MAX_TOKENS = 2000

SYSTEM_PROMPT = """You are an expert note-writer for Obsidian.
Always output clean, well-structured markdown with:
- YAML frontmatter (created, tags, status)
- H2 sections for key concepts
- Obsidian callouts (> [!note], > [!tip], > [!warning]) for key points
- [[wikilinks]] for related concepts
- Code blocks with language specified
- A ## Suggested Links section at the end listing 5-10 [[wikilinks]] for related topics
Keep notes atomic, focused, and actionable. No fluff."""

# ── Main ──────────────────────────────────────────────────────────────────────
def generate_note(topic: str, folder: str) -> None:
    target_folder = VAULT_PATH / folder
    target_folder.mkdir(parents=True, exist_ok=True)

    print(f"Generating note: '{topic}' → {target_folder}")

    prompt = f"""Write an Obsidian note on: {topic}

YAML frontmatter should include:
- created: {datetime.now().strftime('%Y-%m-%d')}
- tags: [auto-generated]
- status: draft

The note title (H1) should be the topic name.
Include H2 sections for the most important sub-concepts.
Add a ## Suggested Links section at the end."""

    client = anthropic.Anthropic()
    message = client.messages.create(
        model=MODEL,
        max_tokens=MAX_TOKENS,
        system=SYSTEM_PROMPT,
        messages=[{"role": "user", "content": prompt}]
    )

    content = message.content[0].text

    # Sanitize filename
    filename = topic.replace(" ", "-").replace(":", "").replace("/", "-").lower() + ".md"
    filepath = target_folder / filename

    filepath.write_text(content)
    print(f"Note written: {filepath}")
    print(f"\n--- Preview (first 300 chars) ---")
    print(content[:300])
    print("...")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python quick-note.py <topic> [folder]")
        print('Example: python quick-note.py "Gradient Descent" "Resources/ML"')
        sys.exit(1)

    topic = sys.argv[1]
    folder = sys.argv[2] if len(sys.argv) > 2 else "Inbox"

    generate_note(topic, folder)
