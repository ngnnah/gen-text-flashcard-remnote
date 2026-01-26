# Remnote Flashcard Generator

Generate flashcards using Remnote's native syntax from URLs, YouTube videos, or notes.

## Quick Start

Say: `Generate Remnote flashcards from [URL/content]`

## Remnote Syntax Quick Reference

### Concepts (definitions of things — **bold**, bidirectional)
```
Concept Name :: Definition
```

### Descriptors (properties — *italic*, under concepts)
```
  property ;; value
```

### Basic Cards
```
Question >> Answer        # forward
Question <> Answer        # bidirectional
```

### Cloze
```
Text with {{hidden part}} revealed on back.
```

### Multi-line / Lists
```
Question >>>              # nested items = answer
Question >>1.             # numbered list answer
Question >>A)             # multiple choice (first = correct)
```

## Example Output

```
# Machine Learning Basics

Source: https://example.com/ml-intro
Tags: #machinelearning #AI

Machine Learning :: A subset of AI where systems learn patterns from data
  key difference from traditional programming ;; learns from data rather than explicit rules
  main types ;; supervised, unsupervised, reinforcement learning

Neural Network :: Computing system inspired by biological neurons
  components ;; input layer, hidden layers, output layer
  training method ;; backpropagation

A {{neural network}} learns by adjusting {{weights}} through {{backpropagation}}.
```

## Parameters

| Parameter | Default | Options |
|-----------|---------|---------|
| `style` | concept | concept, basic, cloze, mixed |
| `card_budget` | 15 | any number |
| `detail_level` | standard | overview, standard, comprehensive |

## Output

**Always save flashcards to:** `output/YYYY-MM-DD-topic-slug.txt`

Example: `output/2026-01-18-machine-learning-basics.txt`

**CRITICAL: Indentation**
- Use exactly 2 spaces per indent level
- Proper nesting = proper bullet hierarchy in Remnote
- No `-` dash prefix needed, just spaces

User workflow:
1. Open the generated file
2. Cmd+A, Cmd+C (select all, copy)
3. Paste into Remnote

## IMPORTANT: Metadata Format

Use plain text (no `::`) for non-card info:
```
Source: URL here          # plain colon, NOT ::
Tags: #tag1 #tag2
```

`::` creates a Concept flashcard — only use for actual content to learn!

## Card Quality Over Quantity

- Focus on **essential, testable knowledge** only
- Skip trivial details, examples-for-examples-sake, filler
- Ask: "Will I need to recall this?" — if no, don't make a card
- Target 5-10 cards for most articles (fewer is often better)
- One strong concept card > three weak ones

---

## Project Info

- **No build/test pipeline:** This repo is content- and agent-driven; no scripts or test runners
- **No code execution:** Generates text files only
- **No external dependencies:** Core functionality requires no APIs
- **Integration:** Output designed for direct copy-paste into [Remnote import](https://help.remnote.com/en/articles/9252072-how-to-import-flashcards-from-text)

### References
- [AGENTS.md](AGENTS.md) — This file (quick reference)
- [.agent/skills/](/.agent/skills/) — Full skill spec with workflow details
- [output/](output/) — Generated flashcard examples
- [README.md](README.md) — User workflow and file purposes
