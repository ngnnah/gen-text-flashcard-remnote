# Copilot Instructions for Remnote Flashcard Generator

## Project Overview
- **Purpose:** Generate high-quality Remnote flashcards from URLs, YouTube videos, or notes, using Remnote's native import syntax.
- **Output:** Always saves flashcards to `output/YYYY-MM-DD-topic-slug.txt` for copy-paste import into Remnote.
- **Focus:** Minimal, essential, testable knowledge. Quality over quantity.

## Key Architecture & Patterns
- **Single-purpose workflow:** Main logic is to extract, synthesize, and format knowledge into Remnote's syntax (see `AGENTS.md` for full card spec and examples).
- **No build/test pipeline:** This repo is content- and agent-driven; there are no build scripts or test runners.
- **Output directory:** All generated flashcards are written to the `output/` folder. File naming must follow the `YYYY-MM-DD-topic-slug.txt` pattern.
- **Remnote syntax:** Use `::` for concepts, `;;` for descriptors, `>>` for Q&A, `{{}}` for cloze. Indent with exactly 2 spaces per level for hierarchy.
- **Metadata:** Each output file should start with `Source:` and `Tags:` lines (plain text, not Remnote syntax).

## Project-Specific Conventions
- **Indentation:** 2 spaces per level, no dash prefix for nested bullets (see `AGENTS.md`).
- **Minimalism:** Skip trivial or filler cards; target 5-10 strong cards per topic.
- **Parameters:** Card generation can be tuned with `style`, `card_budget`, and `detail_level` (see `AGENTS.md`).
- **No code execution:** This project does not run code or scripts; it generates text files only.

## Examples & References
- See `AGENTS.md` for syntax, parameters, and output examples.
- See `output/` for real generated files.
- See `README.md` for user workflow and file purpose table.

## Integration Points
- **Remnote import:** Output is designed for direct copy-paste into Remnote (see [Remnote import docs](https://help.remnote.com/en/articles/9252072-how-to-import-flashcards-from-text)).
- **No external APIs or dependencies** are required for core functionality.

## Quickstart for AI Agents
- Read `AGENTS.md` for all card types, formatting, and output rules.
- Always write to `output/YYYY-MM-DD-topic-slug.txt`.
- Follow indentation and syntax rules strictly for Remnote compatibility.
- Prioritize actionable, essential knowledge in generated cards.
