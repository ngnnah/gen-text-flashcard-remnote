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

Source:: https://example.com/ml-intro
Tags:: #machinelearning #AI

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

## Import to Remnote

1. Copy generated output
2. Paste directly into Remnote document
3. Cards auto-convert based on `::`, `;;`, `>>`, `{{}}` syntax
