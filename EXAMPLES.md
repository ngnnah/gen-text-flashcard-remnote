# Flashcard Examples

Real examples showing the expected output format.

---

## Example 1: Technical Article

**Input**: Article about "Introduction to Neural Networks"

### Output:

```
# Neural Networks Overview

**Source:** https://example.com/neural-networks-intro
**Generated:** 2024-01-15
**Cards:** 12
**Tags:** #neuralnetworks #deeplearning #AI

---

## Cards

Q: What is a neural network?
A: A computing system inspired by biological neurons that learns from examples

Q: What are the three layers of a basic neural network?
A: Input layer, hidden layer(s), and output layer

Q: What do activation functions do?
A: Introduce non-linearity and determine if a neuron fires

Q: What is backpropagation?
A: Algorithm that calculates gradients to adjust weights and minimize error

Q: What makes a network "deep"?
A: Having multiple hidden layers

---

## Outline

Neural Networks
  Architecture
    {{Input layer}} receives data
    {{Hidden layers}} process information
    {{Output layer}} produces predictions
  Training
    Forward propagation → Loss calculation → {{Backpropagation}}
```

---

## Example 2: YouTube Video

**Input**: Video "Effective Study Techniques" (15 min)

### Output:

```
# Study Techniques

**Source:** https://youtube.com/watch?v=abc123
**Generated:** 2024-01-15
**Cards:** 10
**Tags:** #study #learning #productivity

---

## Cards

Q: What is the Pomodoro Technique?
A: 25-minute focused work sessions followed by 5-minute breaks

Q: What is active recall?
A: Testing yourself rather than passively re-reading (3:42)

Q: How does spaced repetition work?
A: Reviewing at increasing intervals to strengthen long-term memory

Q: What is the Feynman Technique?
A: Explaining a concept simply, as if teaching someone else (8:15)

---

## Outline

Study Methods
  Pomodoro
    {{25 min}} work, {{5 min}} break
    Prevents burnout
  Spaced Repetition
    Review at {{increasing intervals}}
  Active Recall
    Self-test without notes
```

---

## Example 3: Personal Notes

**Input**: User notes on JavaScript Promises

### Output:

```
# JavaScript Promises

**Source:** Personal notes
**Generated:** 2024-01-15
**Cards:** 8
**Tags:** #javascript #async #programming

---

## Cards

Q: What is a Promise in JavaScript?
A: An object representing eventual completion or failure of an async operation

Q: What are the three Promise states?
A: Pending, fulfilled, rejected

Q: What method handles a fulfilled Promise?
A: .then()

Q: What method handles a rejected Promise?
A: .catch()

Q: What does Promise.all() do?
A: Resolves when all promises fulfill, rejects if any rejects

Q: Difference between Promise.all() and Promise.race()?
A: all() waits for all; race() resolves on first settled

---

## Outline

Promises
  States
    {{Pending}} → {{Fulfilled}} or {{Rejected}}
  Methods
    .then() for success
    .catch() for errors
    .finally() runs always
```

---

## Card Patterns

### Definition
```
Q: What is [term]?
A: [Concise definition]
```

### Comparison
```
Q: Difference between [A] and [B]?
A: [Key difference]
```

### Process
```
Q: Steps to [do X]?
A: 1) First, 2) Then, 3) Finally
```

### Why/How
```
Q: Why is [X] important?
A: Because [reason]
```

### Cloze in Context
```
{{Term}} is used for {{purpose}}.
```
