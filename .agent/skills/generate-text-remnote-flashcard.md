---
name: Remnote Flashcard Generator
description: Generate optimized flashcards from URLs, YouTube videos, or notes for Remnote import
version: 2.0.0
triggers:
  - generate remnote flashcards
  - create flashcards from
  - make study cards
  - convert to remnote
parameters:
  card_budget:
    type: number
    default: 15
    description: Target number of cards (auto-adjusts based on content length)
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

Generate optimized flashcards using Remnote's native syntax and Concept/Descriptor Framework.

## Remnote Import Syntax Reference

### Basic Cards
```
Question >> Answer                    # Forward only
Question << Answer                    # Backward only  
Question <> Answer                    # Both directions
Question >- Answer                    # Disabled (no flashcard)
```

### Concept Cards (RECOMMENDED - bold text, bidirectional by default)
```
Concept Name :: Definition            # Both directions
Concept Name :> Definition            # Forward only
Concept Name :< Definition            # Backward only
Concept Name :- Definition            # Disabled
```

### Descriptor Cards (italic text, indented under Concepts)
```
property ;; value                     # Forward only
property ;< value                     # Backward only
property ;;< value                    # Both directions
property ;- value                     # Disabled
```

### Cloze Deletions
```
This is a {{cloze deletion}} example.
Multiple {{clozes}} in {{one line}}.
With hint: {{answer}}{({hint text})}
```

### Multi-line Cards (nested items become card content)
```
Question >>>                          # Forward multi-line
  - Answer item 1
  - Answer item 2
```

### List-Answer Cards (numbered list on back)
```
Question >>1.                         # Forward list
  - First item
  - Second item
```

### Multiple Choice (first answer = correct)
```
Question >>A)
  - Correct answer (always first)
  - Wrong answer B
  - Wrong answer C
```

### Hierarchy and Indentation
- Use consistent spaces for nesting (2 or 4 spaces)
- Dashes `-` at line start become bullet points
- Nested items under Concepts become Descriptors

## Concept/Descriptor Framework (CDF)

The recommended approach for structured learning:

1. **Concepts** = Things (concrete or abstract) — shown in **bold**
2. **Descriptors** = Properties/questions about concepts — shown in *italics*
3. Descriptors indent under their parent Concept

### Example Structure
```
Cell :: The basic structural unit of all living organisms
  contains ;; cytoplasm, nucleus, and organelles
  function ;; to carry out life processes

Mitochondria :: Organelles that produce energy for the cell
  nickname ;; "powerhouse of the cell"
  origin ;; thought to have evolved from bacteria (endosymbiosis)
```

## Workflow

### Phase 1: Extract & Analyze
1. Identify input type (URL, YouTube, text, file)
2. Extract content structure
3. Identify key concepts, definitions, relationships
4. Map concept hierarchy

### Phase 2: Generate Cards
Apply these principles:
- **Use Concept/Descriptor Framework** for structured topics
- **One concept per card** (atomic principle)
- **Concepts** for definitions of things
- **Descriptors** for properties/attributes under concepts
- **Cloze** for facts-in-context
- **Basic cards** only when CDF doesn't fit

Card budget heuristics:
- Short content (<500 words): 5-8 cards
- Medium (500-1500 words): 10-15 cards
- Long (1500+ words): 15-25 cards
- Videos: ~1 card per 2 minutes

### Phase 3: Format & QA
- Verify Remnote syntax is correct
- Add metadata header
- Organize hierarchically

## Output Template

```
# Topic Title

Source:: [URL or description]
Generated:: [date]
Cards:: [count]
Tags:: #tag1 #tag2

---

Main Concept :: Definition here
  property ;; value
  another property ;; value

Related Concept :: Another definition
  attribute ;; detail

## Additional Context (if needed)

Standalone fact with {{cloze deletion}} for emphasis.

Complex Question >>>
  - Answer point 1
  - Answer point 2
```

## Card Type Selection Guide

| Content Type | Recommended Format | Example |
|--------------|-------------------|---------|
| Definition of a thing | Concept `::` | `Photosynthesis :: Process plants use to convert light to energy` |
| Property of a thing | Descriptor `;;` | `  location ;; chloroplasts` |
| Fact in context | Cloze `{{}}` | `Plants use {{chlorophyll}} to capture light` |
| Simple Q&A | Basic `>>` | `What color is chlorophyll >> Green` |
| List of items | List `>>1.` | `Steps of photosynthesis >>1.` |
| Process steps | Multi-line `>>>` | `How photosynthesis works >>>` |

## Best Practices

1. **Prefer Concepts over Basic cards** — better for search and cross-references
2. **Nest Descriptors under Concepts** — creates logical structure
3. **Use bidirectional Concepts** (`::`) — tests both name→definition and definition→name
4. **Keep cloze text short** — 1-5 words per deletion
5. **Capitalize Concepts, lowercase Descriptors** — Remnote convention

## Error Handling

**URL inaccessible**: "Unable to access URL. Please check the link or paste content directly."

**No transcript**: "YouTube transcript unavailable. Provide a video with captions or paste transcript."

**Insufficient content**: "Content too short for meaningful cards. Generated [X] cards."
