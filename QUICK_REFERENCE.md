# Quick Reference Guide

## Command Reference

### VSCode/Ampcode Commands

```
# Generate from URL
"Generate Remnote flashcards from [URL]"
"Create flashcards from https://example.com/article"

# Generate from YouTube
"Create flashcards from [YouTube URL]"
"Generate Remnote flashcards from https://youtube.com/watch?v=..."

# Generate from selected text
1. Select text
2. "Make Remnote flashcards from this"
3. "Convert to Remnote flashcards"

# Generate from file
1. Open file
2. "Generate Remnote flashcards from this file"

# Customize generation
"Generate 10 flashcards about [topic] from [source]"
"Create cloze deletion cards from [source]"
"Make comprehensive flashcards from [source]"
```

## Remnote Format Quick Reference

### Q&A Format
```
Q: Question here?
A: Answer here
```

### Cloze Deletion
```
This is a sentence with {{cloze deletion}} in it.
Multiple {{clozes}} can be used {{in one sentence}}.
```

### Hierarchical (Outline)
```
Parent Topic
  Subtopic 1
    Detail A
    Detail B
  Subtopic 2
    Detail C
```

### Bullet List
```
Topic Name
- Point 1
- Point 2
- Point 3
```

## Card Types by Use Case

| Use Case | Recommended Format | Example |
|----------|-------------------|---------|
| Definitions | Q&A | Q: What is X? A: Definition |
| Processes | Hierarchical or List | Steps in Process: 1... 2... 3... |
| Facts in context | Cloze | The {{fact}} occurred in {{year}} |
| Comparisons | Q&A | Q: Difference between X and Y? A: ... |
| Lists/Categories | List Format | Types of X: - Type 1, - Type 2 |
| Relationships | Q&A or Hierarchical | Q: How does X relate to Y? |

## Learning Principles Applied

### ✅ DO
- One concept per card
- Clear, specific questions
- Concise answers (< 20 words)
- Include necessary context
- Ask "why" and "how" questions
- Use concrete examples

### ❌ DON'T
- Multiple concepts in one card
- Vague or ambiguous questions
- Yes/no questions (usually)
- Missing context
- Overly complex answers
- Abstract without examples

## Troubleshooting

### Issue: Generated too many cards
**Solution**: 
- Be more specific: "Generate 5 key flashcards about..."
- Focus on main concepts: "Generate flashcards about the core concepts from..."

### Issue: Cards are too complex
**Solution**:
- Request simpler format: "Create basic Q&A flashcards from..."
- Specify level: "Generate beginner-level flashcards from..."

### Issue: Missing important topics
**Solution**:
- Be explicit: "Generate flashcards specifically about [topic] from..."
- Iterate: Generate in batches for different sections

### Issue: Format not importing to Remnote
**Solution**:
- Check format matches one of the supported types
- Ensure proper syntax (Q: and A: on separate lines, proper indentation for hierarchical)
- Remove extra formatting that Remnote doesn't support

## Workflow Tips

### Efficient Flashcard Generation
1. **First Pass**: Generate comprehensive set
2. **Review**: Check for accuracy and clarity
3. **Refine**: Remove duplicates, improve wording
4. **Organize**: Add tags and hierarchy
5. **Import**: Copy to Remnote
6. **Test**: Review a few cards to ensure proper import

### Best Practices
- Generate flashcards immediately after learning new content
- Review generated cards before importing
- Use consistent tagging strategy
- Combine with spaced repetition in Remnote
- Update cards as understanding deepens

## Keyboard Shortcuts (General)

```
Ctrl/Cmd + Shift + P  → Open command palette
Ctrl/Cmd + A          → Select all text
Ctrl/Cmd + C          → Copy generated flashcards
```

## Import to Remnote Steps

1. **Copy** the generated flashcard text
2. **Open** Remnote application
3. **Navigate** to desired document/folder
4. **Paste** the flashcard text
5. **Verify** cards were created correctly
6. **Tag** and organize as needed

## Quality Checklist

Before importing to Remnote:
- [ ] Each card tests one concept
- [ ] Questions are clear and specific
- [ ] Answers are accurate and concise
- [ ] Format is Remnote-compatible
- [ ] Source attribution included
- [ ] Tags added for organization
- [ ] No duplicate cards
- [ ] Context provided where needed

## Example Workflows

### Workflow 1: From Blog Article
```
1. Find article URL
2. Command: "Generate Remnote flashcards from [URL]"
3. Review generated cards
4. Copy output
5. Paste into Remnote
6. Add tags: #article #[topic]
```

### Workflow 2: From YouTube Video
```
1. Get YouTube URL (ensure captions available)
2. Command: "Create flashcards from [YouTube URL]"
3. Review and edit if needed
4. Copy formatted output
5. Import to Remnote
6. Tag with video topic
```

### Workflow 3: From Personal Notes
```
1. Open notes file
2. Select relevant section (optional)
3. Command: "Generate Remnote flashcards from this"
4. Review generated content
5. Refine cards as needed
6. Import to Remnote study deck
```

### Workflow 4: Mixed Sources
```
1. Generate cards from source A
2. Generate cards from source B
3. Combine and organize
4. Remove duplicates
5. Add hierarchical structure
6. Import complete set
```

## Card Density Guidelines

| Content Length | Recommended Card Count |
|---------------|----------------------|
| 1 paragraph | 2-3 cards |
| 500 words | 5-8 cards |
| 1000 words | 10-15 cards |
| Article (2000+ words) | 15-25 cards |
| Video (10 min) | 8-12 cards |
| Video (30 min) | 20-30 cards |

## Tag Suggestions

### By Subject
- #programming, #science, #history, #language
- #mathematics, #biology, #chemistry, #physics

### By Type
- #definition, #concept, #example, #process
- #fact, #theory, #formula, #code

### By Source
- #article, #youtube, #documentation, #notes
- #book, #lecture, #tutorial, #paper

### By Priority
- #core, #important, #review, #advanced
- #beginner, #intermediate, #exam

## Resources

- **Remnote Help**: https://help.remnote.com
- **This Repository**: https://github.com/ngnnah/gen-text-flashcard-remnote
- **Agent Config**: See `agent.md` for detailed behavior
- **Skill File**: See `generate-text-remnote-flashcard.skill` for examples

## Getting Help

1. Review `agent.md` for system behavior
2. Check `EXAMPLES.md` for sample outputs
3. Read `README.md` for comprehensive guide
4. Open GitHub issue for bugs or questions

---

**Quick Tip**: Start with small batches (5-10 cards) to understand the format, then scale up for comprehensive coverage.
