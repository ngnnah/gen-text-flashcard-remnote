# Remnote Flashcard Examples

Copy-paste ready format. Each line starts with `-` for proper bullet import.

---

## Example 1: Technical Article

```
- Neural Networks
  - Source: https://example.com/neural-networks
  - Tags: #AI #deeplearning
  - Neural Network :: Computing system inspired by biological neurons
    - key components ;; input layer, hidden layers, output layer
    - training method ;; backpropagation
  - Backpropagation :: Algorithm that adjusts weights by propagating error backward
```

---

## Example 2: YouTube Video

```
- Study Techniques
  - Source: https://youtube.com/watch?v=abc123
  - Tags: #study #learning
  - Pomodoro Technique :: 25-minute focused sessions followed by 5-minute breaks
  - Active Recall :: Testing yourself rather than passively re-reading
  - Spaced Repetition :: Reviewing at increasing intervals for long-term memory
```

---

## Example 3: With Cloze

```
- JavaScript Promises
  - Source: Personal notes
  - Tags: #javascript #async
  - Promise :: Object representing eventual completion of an async operation
    - three states ;; pending, fulfilled, rejected
  - {{Promise.all()}} resolves when all promises fulfill
  - {{Promise.race()}} resolves when the first promise settles
```

---

## Example 4: Multi-line Answer

```
- Fitness Challenge
  - 75 Hard Daily Requirements >>>
    - Two 45-min workouts (one outdoors)
    - Drink one gallon of water
    - Read 10 pages non-fiction
    - Follow strict diet
    - Take progress photo
```

---

## Syntax Cheat Sheet

| Type | Syntax |
|------|--------|
| Concept (bidirectional) | `- Name :: Definition` |
| Descriptor (nested) | `  - prop ;; value` |
| Basic forward | `- Q >> A` |
| Basic bidirectional | `- Q <> A` |
| Cloze | `- Text with {{hidden}}` |
| Multi-line | `- Q >>>` + nested items |
| List answer | `- Q >>1.` + nested items |
| Multiple choice | `- Q >>A)` + nested items |

---

## Format Rules

1. Start each line with `-` (dash + space)
2. Use 2 spaces per indent level
3. Plain `Source:` not `Source::` for metadata
4. Each flashcard on its own line
