---
name: Remnote Flashcard Generator
description: Generate optimized flashcards from URLs, YouTube videos, or notes for Remnote import
version: 1.1.0
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
    values: [qa, cloze, mixed, outline]
    default: mixed
    description: Card format style
  detail_level:
    type: enum
    values: [overview, standard, comprehensive]
    default: standard
    description: Depth of coverage
  include_timestamps:
    type: enum
    values: [auto, always, never]
    default: auto
    description: Include video timestamps (YouTube only)
---

# Remnote Flashcard Generator

Generate optimized flashcards for Remnote import using evidence-based learning principles.

## Workflow

### Phase 1: Extract & Analyze
1. Identify input type (URL, YouTube, text, file)
2. Extract content and structure
3. Identify key concepts, definitions, relationships
4. Create outline of main topics

### Phase 2: Generate Cards
Apply these rules:
- **One concept per card** (atomic principle)
- **Active recall**: Questions require retrieval, not recognition
- **Concise answers**: Under 20 words when possible
- **No yes/no questions** unless meaningful
- **Include context** where needed for clarity

Card budget heuristics:
- Short content (<500 words): 5-8 cards
- Medium (500-1500 words): 10-15 cards  
- Long (1500+ words): 15-25 cards
- Videos: ~1 card per 2 minutes

### Phase 3: Format & QA
- Deduplicate similar cards
- Verify Remnote formatting compliance
- Add metadata block
- Flag uncertain items for review

## Output Template

Always produce this structure:

```
# [Topic Title]

**Source:** [URL or description]
**Generated:** [date]
**Cards:** [count]
**Tags:** #tag1 #tag2

---

## Cards

Q: [Question]
A: [Answer]

Q: [Question]  
A: [Answer]

---

## Outline (if applicable)

Topic
  Subtopic
    {{cloze}} detail
    {{cloze}} detail

---

## Review Notes (if any)
- [Uncertain items or suggestions]
```

## Remnote Format Rules

### Q&A Cards
```
Q: What is X?
A: Definition here
```

### Cloze Deletions
```
{{Term}} is defined as {{definition}}.
```
- Use `{{double braces}}` for cloze
- Avoid nested braces
- Keep cloze text short (1-5 words)

### Hierarchical Outline
```
Parent Topic
  Child Topic
    Detail with {{cloze}}
```
- Use **2 spaces** for indentation (not tabs)
- Remnote converts hierarchy to cards automatically

### Safe Formatting
- Avoid code blocks inside outlines
- Escape colons in card text if needed
- Keep bullet lists simple (single level preferred)

## Card Types by Content

### Definitions
```
Q: What is [term]?
A: [Concise definition]
```

### Relationships  
```
Q: How does [A] relate to [B]?
A: [Relationship]
```

### Processes
```
Q: What are the steps in [process]?
A: 1) First, 2) Then, 3) Finally
```

### Comparisons
```
Q: What is the difference between [A] and [B]?
A: [Key difference]
```

### Why/How (Elaborative)
```
Q: Why is [X] important?
A: Because [reason]
```

## YouTube-Specific

When processing videos:
- Focus on key concepts, not filler
- Include timestamps for complex explanations: `(12:34)`
- Place timestamps at end of answer or in outline
- Summarize demonstrations, don't transcribe verbatim

## Error Handling

**URL inaccessible**: "Unable to access URL. Please check the link or paste content directly."

**No transcript**: "YouTube transcript unavailable. Provide a video with captions or paste transcript."

**Insufficient content**: "Content too short for meaningful cards. Generated [X] cards."

## Quality Checklist

Before output:
- [ ] Each card = one concept
- [ ] Questions are specific and clear
- [ ] Answers are concise
- [ ] Format is Remnote-compatible
- [ ] Metadata included
- [ ] No duplicate cards
