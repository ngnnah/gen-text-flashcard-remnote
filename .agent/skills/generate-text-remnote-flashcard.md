---
name: Remnote Flashcard Generator
description: Generate optimized flashcards from URLs, YouTube videos, or notes for Remnote import
version: 2.2.0
triggers:
  - generate remnote flashcards
  - create flashcards from
  - make study cards
  - convert to remnote
parameters:
  card_budget:
    type: number
    default: 10
    description: Target number of cards (keep minimal — essential info only)
  style:
    type: enum
    values: [concept, basic, cloze, mixed]
    default: concept
    description: Card format style (concept recommended for structured learning)
  detail_level:
    type: enum
    values: [overview, standard, comprehensive]
    default: standard
    description: Depth of coverage
---

# Remnote Flashcard Generator

Generate minimal, high-quality flashcards using Remnote's native syntax. Focus on essential knowledge only.

## CRITICAL: Import Format Rules

For text to import correctly into Remnote:
1. **Each line = one bullet point** (use `-` dash prefix or just newlines)
2. **Indentation = nesting** (use consistent 2 spaces per level)
3. **No special characters** in topic names (avoid colons, semicolons in non-flashcard text)
4. **Topic headings** should be plain text, not use `::` unless it's a concept to learn

## Remnote Flashcard Syntax

### Basic Cards (simplest, most reliable)
```
- Question >> Answer
- Question <> Answer (bidirectional)
```

### Concept Cards (bold, bidirectional by default)
```
- Concept Name :: Definition here
```

### Descriptor Cards (italic, nested under concepts)
```
- Concept Name :: Definition
  - property ;; value
  - another property ;; value
```

### Cloze Deletions
```
- This is a {{cloze deletion}} example
- With hint: {{answer}}{({hint text})}
```

### Multi-line Cards
```
- Question >>>
  - Answer item 1
  - Answer item 2
```

### List-Answer Cards
```
- What are the three types >>1.
  - First type
  - Second type
  - Third type
```

### Multiple Choice (first = correct)
```
- Which is correct >>A)
  - Correct answer
  - Wrong answer B
  - Wrong answer C
```

## Output Template

```
- Topic Name
  - Source: URL here
  - Tags: #tag1 #tag2
  - Main Concept :: Definition here
    - key property ;; value
  - Related Concept :: Another definition
  - A {{cloze}} for important facts
```

**RULES:**
- Start each line with `-` for proper bullet import
- Use 2 spaces for each indent level
- Plain `Source:` NOT `Source::` (avoids creating unwanted card)
- Keep it minimal — essential info only

## Card Budget (LESS IS MORE)

- Most articles: 5-10 cards max
- Long/complex content: 10-15 cards max
- Videos: 5-8 cards
- Ask: "Will I need to recall this?" — if unsure, skip it

## Best Practices

1. **Quality over quantity** — fewer strong cards beat many weak ones
2. **Essential knowledge only** — skip trivia, filler, obvious facts
3. **Prefer Concepts** (`::`) — better for structured learning
4. **Keep cloze short** — 1-3 words per deletion
5. **Test**: "Would I need to recall this in real life?"

## Card Type Selection

| Content Type | Format | Example |
|--------------|--------|---------|
| Definition | `::` | `- Photosynthesis :: Process converting light to energy` |
| Property | `;;` | `  - location ;; chloroplasts` |
| Simple fact | `>>` | `- Chlorophyll color >> Green` |
| Fact in context | `{{}}` | `- Plants use {{chlorophyll}} to capture light` |
| List | `>>1.` | `- Steps of X >>1.` |
