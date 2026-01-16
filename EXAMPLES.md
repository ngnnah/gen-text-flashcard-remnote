# Remnote Flashcard Examples

Examples using correct Remnote import syntax.

---

## Example 1: Technical Article (Concept/Descriptor Style)

```
# Neural Networks

Source:: https://example.com/neural-networks-intro
Tags:: #AI #deeplearning

Neural Network :: A computing system inspired by biological neurons that learns from examples
  main components ;; input layer, hidden layers, output layer
  training algorithm ;; backpropagation
  key characteristic ;; learns hierarchical representations

Backpropagation :: Algorithm that calculates gradients to adjust weights and minimize error
  direction ;; propagates error backward through network
  purpose ;; optimize weights to improve predictions

Deep Learning :: Neural networks with multiple hidden layers
  advantage ;; can learn hierarchical representations
  requirement ;; large amounts of training data

The {{input layer}} receives data, {{hidden layers}} process it, and the {{output layer}} produces predictions.
```

---

## Example 2: YouTube Video (Mixed Style)

```
# Effective Study Techniques

Source:: https://youtube.com/watch?v=abc123
Tags:: #study #learning #productivity

Pomodoro Technique :: A time management method using 25-minute focused work sessions
  work duration ;; 25 minutes
  break duration ;; 5 minutes (3:42)
  benefit ;; maintains focus and prevents burnout

Active Recall :: Testing yourself rather than passively re-reading material
  key principle ;; retrieval strengthens memory more than review
  how to apply ;; self-test without looking at notes

Spaced Repetition :: Reviewing information at increasing intervals
  benefit ;; strengthens long-term memory
  mechanism ;; leverages the spacing effect

The {{spacing effect}} means learning is greater when studying is {{spread out over time}}.
```

---

## Example 3: Personal Notes (Concept-Heavy)

```
# JavaScript Promises

Source:: Personal notes
Tags:: #javascript #async #programming

Promise :: An object representing the eventual completion or failure of an async operation
  states ;; pending, fulfilled, rejected
  advantage ;; cleaner async code than callbacks

Promise States >>>
  - Pending: initial state
  - Fulfilled: operation completed successfully  
  - Rejected: operation failed

Promise.all() :: Takes array of promises, resolves when all fulfill, rejects if any rejects
  use case ;; waiting for multiple async operations

Promise.race() :: Resolves or rejects as soon as the first promise settles
  difference from Promise.all() ;; only waits for first, not all

Common Promise Methods >>1.
  - .then() for success
  - .catch() for errors
  - .finally() runs regardless of outcome
```

---

## Example 4: Multiple Choice

```
# Biology Quiz

Which organelle produces ATP >>A)
  - Mitochondria
  - Nucleus
  - Ribosome
  - Golgi apparatus

What is the powerhouse of the cell >>A)
  - Mitochondria
  - Chloroplast
  - Endoplasmic reticulum
  - Lysosome
```

---

## Syntax Cheat Sheet

| Type | Syntax | Result |
|------|--------|--------|
| Concept (bidirectional) | `Name :: Definition` | Tests both directions |
| Concept (forward only) | `Name :> Definition` | Shows name, asks definition |
| Descriptor | `  prop ;; value` | Property of parent concept |
| Basic forward | `Q >> A` | Simple Q&A |
| Basic bidirectional | `Q <> A` | Tests both directions |
| Cloze | `{{hidden}}` | Fill in blank |
| Cloze with hint | `{{answer}}{({hint})}` | Shows hint during review |
| Multi-line | `Q >>>` + nested items | List as answer |
| Numbered list | `Q >>1.` + nested items | Ordered list answer |
| Multiple choice | `Q >>A)` + nested items | First = correct |
