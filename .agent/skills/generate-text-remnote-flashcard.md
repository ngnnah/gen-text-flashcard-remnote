# Generate Remnote Flashcards Skill

## Skill Configuration
**Name**: Generate Text Remnote Flashcard
**Version**: 1.0.0
**Category**: Education, Learning, Knowledge Management
**Platforms**: VSCode, Ampcode

## Description
Generate optimized flashcards from various content sources for import into Remnote. This skill follows evidence-based learning principles to create effective study materials.

## Usage

### Activation Commands
- "Generate Remnote flashcards from [source]"
- "Create flashcards from [URL/content]"
- "Convert to Remnote flashcards"
- "Make study cards from this"

### Input Types
1. **Website URL**: Provide a URL to a blog, article, or documentation
2. **YouTube URL**: Provide a YouTube video link
3. **Selected Text**: Highlight text in your editor
4. **File Content**: Open file in editor

## Quick Start Examples

### Example 1: From Website
```
User: Generate Remnote flashcards from https://example.com/article
Agent: [Extracts content and generates flashcards]
```

### Example 2: From YouTube
```
User: Create flashcards from https://youtube.com/watch?v=example
Agent: [Processes transcript and generates flashcards]
```

### Example 3: From Selected Text
```
User: [Selects text] Make study cards from this
Agent: [Generates flashcards from selection]
```

## Processing Flow

### Step 1: Input Identification
- Detect input type (URL, text, file)
- Validate source accessibility
- Extract or read content

### Step 2: Content Analysis
- Identify main topics and concepts
- Extract key definitions and principles
- Locate important examples and relationships
- Determine concept hierarchy

### Step 3: Flashcard Generation
- Apply atomic card principle (one concept per card)
- Create question-answer pairs
- Generate cloze deletions for contextual facts
- Add elaborative interrogation questions
- Include concrete examples

### Step 4: Format Output
- Structure for Remnote import
- Add metadata (source, tags, date)
- Organize hierarchically if applicable
- Include card count summary

### Step 5: Quality Assurance
- Verify card clarity
- Check for redundancy
- Ensure self-contained cards
- Validate answer accuracy

## Output Format

### Standard Q&A Cards
```
Q: What is spaced repetition?
A: A learning technique that involves increasing intervals between reviews of material to improve long-term retention

Q: What is the main benefit of spaced repetition?
A: Improved long-term retention of information

Q: How does spaced repetition work?
A: By increasing the time intervals between reviews of learned material
```

### Cloze Deletion Cards
```
{{Spaced repetition}} is a learning technique that involves {{increasing intervals}} between reviews of material to improve {{long-term retention}}.

The main benefit of spaced repetition is {{improved long-term retention}} of information.
```

### Hierarchical Structure
```
Spaced Repetition
  Definition
    A learning technique with increasing review intervals
  Benefits
    Improved long-term retention
    Efficient use of study time
    Reduced forgetting
  Key Principles
    Increasing intervals
    Active recall
    Spacing effect
```

### List Format
```
Benefits of Spaced Repetition
- Improved long-term retention
- More efficient studying
- Reduced forgetting curve
- Better knowledge consolidation
```

## Learning Principles Applied

### 1. Active Recall
Generate questions that require retrieving information from memory rather than recognition.

**Example:**
- Good: "Q: What is the spacing effect? A: The phenomenon where learning is greater when studying is spread out over time"
- Avoid: "Q: Is the spacing effect real? A: Yes"

### 2. Elaborative Interrogation
Ask "why" and "how" questions to promote deeper understanding.

**Example:**
```
Q: Why is spaced repetition more effective than massed practice?
A: Because it leverages the spacing effect, which strengthens memory consolidation through timed retrieval practice
```

### 3. Atomic Cards
Each card should focus on one concept or fact.

**Example:**
- Good: Two cards - one for definition, one for benefit
- Avoid: One card asking multiple unrelated things

### 4. Contextual Learning
Provide sufficient context without making cards too long.

**Example:**
```
Q: In the context of memory formation, what is consolidation?
A: The process by which short-term memories are transformed into long-term memories
```

### 5. Bidirectional Thinking
Create reverse cards for important relationships.

**Example:**
```
Q: What learning technique uses increasing intervals?
A: Spaced repetition

Q: What is characteristic of spaced repetition's timing?
A: Increasing intervals between reviews
```

## Content-Specific Strategies

### For Technical Documentation
- Focus on APIs, functions, syntax
- Include code examples in answers
- Create cards for common patterns
- Add troubleshooting tips

### For Academic Articles
- Extract main arguments and evidence
- Create cards for methodology
- Include key statistics or findings
- Link concepts to theories

### For Tutorial Videos
- Focus on step-by-step processes
- Extract key tips and tricks
- Include timestamps for complex topics
- Create cards for prerequisites

### For Personal Notes
- Respect user's terminology
- Maintain original context
- Focus on areas marked as important
- Create clarifying questions

## Metadata Tags

Include relevant tags for organization:
- Source type: #website, #youtube, #notes
- Subject area: #programming, #science, #language
- Difficulty: #beginner, #intermediate, #advanced
- Card type: #definition, #concept, #example, #process

## Quality Checklist

Before finalizing output, ensure:
- [ ] Each card is atomic (one concept)
- [ ] Questions are clear and unambiguous
- [ ] Answers are concise (preferably under 20 words)
- [ ] No yes/no questions (unless meaningful)
- [ ] Context is included where necessary
- [ ] Cards are self-contained
- [ ] Format is Remnote-compatible
- [ ] Source attribution is included
- [ ] Cards promote active recall
- [ ] Minimum 5 cards generated (if content permits)

## Error Handling

### URL Not Accessible
```
Error: Unable to access the provided URL.
Action: Please check the URL and your internet connection, or provide the content directly.
```

### Insufficient Content
```
Warning: Limited content available (less than 100 words).
Action: Generated [X] cards. Consider providing more detailed source material for comprehensive flashcards.
```

### Video Without Transcript
```
Error: YouTube video transcript not available.
Action: Please provide a video with captions/transcript, or manually paste the content.
```

## Integration Notes

### For VSCode
- Activate via Command Palette
- Output to new untitled file
- Support clipboard input
- Save as .txt or .md file

### For Ampcode
- Use as inline skill
- Support multi-step refinement
- Preview before export
- Direct Remnote integration (if available)

## Customization Options

Users can specify:
- Number of cards to generate
- Card type preference (Q&A, cloze, hierarchical)
- Detail level (summary vs. comprehensive)
- Focus areas (highlight specific topics)
- Language for non-English content

## Example Usage Session

```
User: Generate Remnote flashcards from my notes about photosynthesis

Agent: I'll create flashcards from your notes about photosynthesis, following evidence-based learning principles.

[Processes content...]

Generated 12 flashcards for import to Remnote:

Q: What is photosynthesis?
A: The process by which plants convert light energy into chemical energy stored in glucose

Q: What are the main inputs of photosynthesis?
A: Carbon dioxide, water, and light energy

Q: What are the main outputs of photosynthesis?
A: Glucose (sugar) and oxygen

Q: Where does photosynthesis occur in plant cells?
A: In chloroplasts

Q: What pigment is essential for photosynthesis?
A: Chlorophyll

Q: Why do plants appear green?
A: Because chlorophyll reflects green light while absorbing red and blue light

Q: What is the overall equation for photosynthesis?
A: 6CO2 + 6H2O + light energy → C6H12O6 + 6O2

[... 5 more cards ...]

Source: User notes
Generated: 12 cards
Topics: #biology #photosynthesis #cellular-processes
Ready to import to Remnote
```

## Tips for Best Results

1. **Provide Quality Sources**: Well-written, accurate content generates better flashcards
2. **Be Specific**: Specify focus areas if you want cards on particular topics
3. **Review and Refine**: Always review generated cards and adjust as needed
4. **Iterate**: Generate cards in batches and refine your source material
5. **Combine Sources**: Use multiple sources for comprehensive coverage
6. **Update Regularly**: Regenerate flashcards when source material is updated

## Limitations

- Requires internet access for URL-based content
- YouTube videos need available transcripts
- Quality depends on source material clarity
- May not capture visual diagrams or images
- Works best with text-heavy content

## Future Enhancements

- Image-to-flashcard conversion
- Audio file processing
- PDF document support
- Multi-language support
- Direct Remnote API integration
- Collaborative deck creation
- Flashcard quality scoring
