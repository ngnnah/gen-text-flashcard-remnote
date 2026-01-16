# Remnote Flashcard Generator

AI-powered flashcard generator using [Remnote's native import syntax](https://help.remnote.com/en/articles/9252072-how-to-import-flashcards-from-text).

## What It Does

Generates study flashcards from:
- 📄 Website URLs (articles, blogs, docs)
- 🎬 YouTube videos (with transcripts)
- 📝 Personal notes or selected text

Uses the **Concept/Descriptor Framework** — Remnote's recommended approach for structured learning.

## Usage

```
Generate Remnote flashcards from https://example.com/article
Create flashcards from this YouTube: https://youtube.com/...
Make study cards from my notes
```

## Output Format

Cards use Remnote's native syntax (not Q:/A: format):

```
Machine Learning :: A subset of AI where systems learn from data
  key types ;; supervised, unsupervised, reinforcement
  
A {{neural network}} learns by adjusting {{weights}}.
```

## Syntax Quick Reference

| Card Type | Syntax |
|-----------|--------|
| Concept (definition) | `Name :: Definition` |
| Descriptor (property) | `  prop ;; value` |
| Basic Q&A | `Question >> Answer` |
| Cloze | `{{hidden text}}` |
| Multi-line answer | `Question >>>` + nested items |
| Multiple choice | `Question >>A)` + nested items |

## Import to Remnote

1. Copy generated output
2. Paste into Remnote document
3. Done — syntax auto-converts to flashcards

## Files

| File | Purpose |
|------|---------|
| `.agent/skills/generate-text-remnote-flashcard.md` | Full skill spec |
| `AGENTS.md` | Quick reference |
| `EXAMPLES.md` | Sample outputs |

## References

- [Remnote: Import Flashcards from Text](https://help.remnote.com/en/articles/9252072-how-to-import-flashcards-from-text)
- [Remnote: Concept/Descriptor Framework](https://help.remnote.com/en/articles/6026154-structuring-knowledge-with-the-concept-descriptor-framework)
- [Remnote: Creating Flashcards](https://help.remnote.com/en/articles/6025481-creating-flashcards)
