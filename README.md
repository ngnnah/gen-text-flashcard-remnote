# Remnote Flashcard Generator

AI-powered flashcard generator using [Remnote's native import syntax](https://help.remnote.com/en/articles/9252072-how-to-import-flashcards-from-text).

## What It Does

Generates **minimal, high-quality** flashcards from:
- 📄 Website URLs
- 🎬 YouTube videos
- 📝 Personal notes

Focus: Essential knowledge only. Quality over quantity.

## Usage

```
Generate Remnote flashcards from https://example.com/article
```

## Output Format

Each line starts with `-` for proper bullet import:

```
- Topic Name
  - Source: https://example.com
  - Tags: #topic
  - Concept :: Definition here
    - property ;; value
  - A {{cloze}} for key facts
```

## Syntax Quick Reference

| Card Type | Syntax |
|-----------|--------|
| Concept | `- Name :: Definition` |
| Descriptor | `  - prop ;; value` |
| Basic Q&A | `- Question >> Answer` |
| Cloze | `- Text with {{hidden}}` |
| Multi-line | `- Question >>>` + nested |

## Import to Remnote

1. Flashcards are saved to `output/[topic].txt`
2. Open the file, select all (Cmd+A), copy (Cmd+C)
3. Paste into Remnote

The `::`, `;;`, `>>`, `{{}}` syntax auto-converts to flashcards.

## Files

| File | Purpose |
|------|---------|
| `output/` | Generated flashcard files (copy from here) |
| `.agent/skills/generate-text-remnote-flashcard.md` | Full skill spec |
| `AGENTS.md` | Quick reference |
| `EXAMPLES.md` | Sample outputs |

## References

- [Remnote: Import from Text](https://help.remnote.com/en/articles/9252072-how-to-import-flashcards-from-text)
- [Remnote: Concept/Descriptor Framework](https://help.remnote.com/en/articles/6026154-structuring-knowledge-with-the-concept-descriptor-framework)
