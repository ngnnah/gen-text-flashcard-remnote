---
name: Remnote Flashcard Generator
description: Generate optimized flashcards from URLs, YouTube videos, or notes for Remnote import
version: 3.0.0
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

## Core Philosophy (Scientific Learning)

### 1. Minimum Information Principle
- **One idea per card** — prevents memorizing paragraph shapes instead of answers
- Complex ideas must be broken into atomic pieces
- If a card has "and" connecting two ideas, split it

### 2. Active Recall
- Never use passive statements
- Convert "X is Y" → "What is X? >> Y"
- Force the brain to retrieve, not recognize

### 3. Structure Mapping
- `>>>` for **unordered sets** (attributes, examples) — stored as "collection"
- `>>1.` for **ordered sequences** (steps, processes) — stored as "sequence"
- Brain categorizes these differently in memory

### 4. Cloze Usage
- Use `{{cloze}}` for: lists, sequences, code syntax, formulas
- Do NOT use cloze for definitions — use Concept `::` instead
- Keep cloze text short (1-3 words)

## Remnote Import Syntax

### Basic Cards (simplest)
```
Question >> Answer
Question <> Answer (bidirectional)
```

### Concept Cards (recommended for definitions)
```
Concept Name :: Definition here
```

### Descriptor Cards (nested properties)
```
Concept Name :: Definition
  property ;; value
  another property ;; value
```

### Cloze Deletions
```
The {{mitochondria}} is the powerhouse of the cell.
With hint: {{answer}}{({hint text})}
```

### Multi-line Cards (unordered — use for attributes/examples)
```
Complex Concept >>>
  Attribute 1
  Attribute 2
  Attribute 3
```

### List-Answer Cards (ordered — use for sequences/steps)
```
Process Name >>1.
  Step 1
  Step 2
  Step 3
```

### Multiple Choice (first = correct)
```
Question >>A)
  Correct answer
  Distractor 1
  Distractor 2
```

## Workflow

### Phase 1: Ingest

**Article/Blog URL:**
- Extract main content, skip nav/ads/comments
- Focus on headings, definitions, key points

**YouTube URL:**
- Extract transcript or video description
- Focus on main concepts explained, skip filler/intros
- Include timestamps only for complex explanations

**Technical Docs:**
- Focus on APIs, functions, syntax
- Use cloze for code patterns
- Include common gotchas/errors

**Personal Notes:**
- Respect user's terminology
- Focus on areas marked important
- Convert bullet points to proper card types

### Phase 2: Pedagogical Analysis
Categorize content into:
- **Concepts** (Principles, Definitions) → use `::`
- **Facts** (Data, Attributes) → use `;;` descriptors
- **Processes** (Sequences, Steps) → use `>>1.`
- **Collections** (Examples, Lists) → use `>>>`

### Phase 3: Convert Passive → Active
- "X is defined as Y" → `X :: Y`
- "The steps are A, B, C" → `Steps >>1.` with nested items
- "Examples include A, B, C" → `Examples >>>` with nested items

### Phase 4: Output
**Always save to file:** `output/[topic-slug].txt`

## Output Format

**CRITICAL: Indentation**
- Use exactly 2 spaces per indent level
- Proper nesting = proper bullet hierarchy in Remnote
- No `-` dash prefix needed

### Template
```
Topic Name
  Source: URL here
  Tags: #tag1 #tag2
  Concept :: Definition here
    key property ;; value
  Another Concept :: Definition
  Process Name >>1.
    Step 1
    Step 2
  Key fact with {{cloze}} for emphasis.
```

**IMPORTANT:** Use plain `Source:` NOT `Source::` — double colon creates a flashcard!

## Card Budget (LESS IS MORE)

- Most articles: 5-10 cards max
- Long/complex content: 10-15 cards max
- Videos: 5-8 cards
- Ask: "Will I need to recall this?" — if unsure, skip it

## Best Practices

1. **Quality over quantity** — fewer strong cards beat many weak ones
2. **Essential knowledge only** — skip trivia, filler, obvious facts
3. **Atomic cards** — one idea per card, split if needed
4. **Active phrasing** — force retrieval, not recognition
5. **Right structure** — `>>>` for sets, `>>1.` for sequences

## Card Type Selection

| Content Type | Format | Example |
|--------------|--------|---------|
| Definition | `::` | `Photosynthesis :: Process converting light to energy` |
| Property | `;;` | `  location ;; chloroplasts` |
| Simple Q&A | `>>` | `What color is chlorophyll >> Green` |
| Fact in context | `{{}}` | `Plants use {{chlorophyll}} to capture light` |
| Unordered list | `>>>` | `Types of cells >>>` |
| Ordered sequence | `>>1.` | `Steps of mitosis >>1.` |
