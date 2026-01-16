# Gen-Text-Flashcard-Remnote

AI-powered flashcard generator for [Remnote](https://www.remnote.com/) using VSCode/Ampcode.

## What It Does

Generates study flashcards from:
- 📄 Website URLs (articles, blogs, docs)
- 🎬 YouTube videos (with transcripts)
- 📝 Personal notes or selected text

Cards follow evidence-based learning principles (active recall, atomic concepts, spaced repetition).

## Setup

### For Ampcode

The skill is ready to use. Files are in `.agent/skills/`.

### For Other AI Editors

Copy the skill spec from `.agent/skills/generate-text-remnote-flashcard.md` to your editor's agent configuration.

## Usage

```
Generate Remnote flashcards from https://example.com/article
Create 10 cloze flashcards from this YouTube: https://youtube.com/...
Make study cards from my notes (with file open or text selected)
```

### Customize

- **Card count**: "Generate 20 flashcards..."
- **Style**: "Create only cloze cards..." or "Q&A format only..."
- **Focus**: "Flashcards about neural networks from..."
- **Detail**: "Comprehensive flashcards..." or "Quick overview cards..."

## Import to Remnote

1. Copy generated output
2. Paste into Remnote document
3. Done — cards auto-format

## Files

| File | Purpose |
|------|---------|
| `.agent/skills/generate-text-remnote-flashcard.md` | Skill spec (the AI instructions) |
| `AGENTS.md` | Quick reference for the agent |
| `EXAMPLES.md` | Sample outputs |

## Limitations

- YouTube needs available captions/transcript
- Works best with text-heavy content
- Visual diagrams won't be captured

## License

Open source. Use freely.
