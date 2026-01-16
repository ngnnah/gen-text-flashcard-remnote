# Remnote Flashcard Generator

Generate flashcards from URLs, YouTube videos, or notes for [Remnote](https://www.remnote.com/) import.

## Quick Start

Say: `Generate Remnote flashcards from [URL/content]`

Examples:
- "Generate Remnote flashcards from https://example.com/article"
- "Create flashcards from this YouTube video: https://youtube.com/watch?v=..."
- "Make study cards from my notes" (with text selected or file open)

## Configuration

See `.agent/skills/generate-text-remnote-flashcard.md` for the full skill spec.

### Parameters (can specify in prompt)

| Parameter | Default | Options |
|-----------|---------|---------|
| `card_budget` | 15 | Any number |
| `style` | mixed | qa, cloze, mixed, outline |
| `detail_level` | standard | overview, standard, comprehensive |

Example: "Generate 10 cloze flashcards with comprehensive detail from..."

## Learning Principles

Cards follow evidence-based practices:
- **Atomic**: One concept per card
- **Active recall**: Questions require retrieval
- **Elaborative**: Includes "why/how" questions
- **Concise**: Answers under 20 words

## Output Format

Cards are formatted for direct paste into Remnote:

```
# Topic Title

**Source:** URL
**Generated:** date
**Cards:** count
**Tags:** #topic

---

Q: Question?
A: Answer

Topic Outline
  Subtopic
    {{cloze}} detail
```

## Importing to Remnote

1. Copy the generated output
2. Paste into a Remnote document
3. Cards are created automatically from Q:/A: format
4. Hierarchical outlines become nested flashcards

## Tips

- Specify card count if you want more/fewer cards
- Request specific style: "only cloze" or "only Q&A"
- Focus on topics: "flashcards about X from this article"
- Review generated cards before studying
