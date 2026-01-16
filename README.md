# Gen-Text-Flashcard-Remnote

Generate optimized flashcards from various content sources for import into [Remnote](https://www.remnote.com/), following evidence-based learning principles to maximize retention and understanding.

## Overview

This repository provides system configurations for VSCode/Ampcode to generate flashcards that can be imported into Remnote. The generator supports multiple input sources and applies scientific learning methodologies to create effective study materials.

### Key Features

- 📚 **Multiple Input Sources**: Website URLs, YouTube videos, personal notes
- 🧠 **Evidence-Based**: Follows scientific learning principles (active recall, spaced repetition, elaborative interrogation)
- 🎯 **Optimized Format**: Generates Remnote-compatible text format
- ⚡ **AI-Powered**: Leverages VSCode/Ampcode AI capabilities
- 🔄 **Atomic Cards**: One concept per card for optimal learning

## Files

- **`agent.md`**: System agent configuration defining the flashcard generation behavior, learning principles, and output formats
- **`generate-text-remnote-flashcard.skill`**: Skill file for VSCode/Ampcode with detailed instructions, examples, and processing guidelines

## Quick Start

### 1. Setup

Clone this repository or download the files:

```bash
git clone https://github.com/ngnnah/gen-text-flashcard-remnote.git
cd gen-text-flashcard-remnote
```

### 2. Add to Your AI Editor

**For VSCode with Copilot:**
- Place `agent.md` in your project's `.github/copilot/` directory
- Reference the agent when generating flashcards

**For Ampcode:**
- Import `generate-text-remnote-flashcard.skill` as a custom skill
- Activate via command palette or inline

### 3. Generate Flashcards

**From Website URL:**
```
User: Generate Remnote flashcards from https://example.com/learning-article
```

**From YouTube Video:**
```
User: Create flashcards from https://youtube.com/watch?v=example-video
```

**From Selected Text:**
1. Select text in your editor
2. Command: "Make Remnote flashcards from this"

**From File:**
1. Open your notes file
2. Command: "Generate Remnote flashcards from this file"

### 4. Import to Remnote

1. Copy the generated flashcard text
2. In Remnote, go to the document where you want to add flashcards
3. Paste the formatted text
4. Remnote will automatically create flashcards based on the format

## Supported Formats

The generator creates Remnote-compatible flashcards in multiple formats:

### Basic Q&A Format
```
Q: What is active recall?
A: A learning technique that involves retrieving information from memory
```

### Cloze Deletion Format
```
{{Active recall}} is a learning technique that involves {{retrieving information}} from memory.
```

### Hierarchical Format
```
Learning Techniques
  Active Recall
    Definition: Retrieving information from memory
    Benefit: Strengthens memory consolidation
  Spaced Repetition
    Definition: Reviewing at increasing intervals
    Benefit: Improves long-term retention
```

### List Format
```
Benefits of Active Recall
- Strengthens memory consolidation
- Improves long-term retention
- Identifies knowledge gaps
```

## Learning Principles

The generator applies evidence-based learning principles:

### 1. Active Recall
Questions require retrieving information from memory, not just recognition.

### 2. Spaced Repetition
Cards are designed to work with spaced repetition systems for optimal retention.

### 3. Elaborative Interrogation
Includes "why" and "how" questions to promote deeper understanding.

### 4. Atomic Principle
One concept per card for focused learning.

### 5. Contextual Learning
Provides necessary context without overwhelming the learner.

## Examples

### Input: Blog Article
```
Article URL: https://example.com/machine-learning-basics
```

### Generated Output:
```
Q: What is machine learning?
A: A subset of AI that enables systems to learn from data without explicit programming

Q: How does machine learning differ from traditional programming?
A: ML learns patterns from data rather than following explicitly programmed rules

Q: What are the three main types of machine learning?
A: Supervised learning, unsupervised learning, and reinforcement learning

Machine Learning Overview
  Definition
    A subset of {{AI}} that enables systems to learn from {{data}}
  Types
    Supervised Learning
    Unsupervised Learning  
    Reinforcement Learning
  Key Concept
    Learning from {{patterns in data}} rather than {{explicit rules}}

Source: https://example.com/machine-learning-basics
Generated: 15 cards
Tags: #machinelearning #AI #programming
```

## Customization

You can customize the generation by specifying preferences:

- **Card count**: "Generate 20 flashcards from..."
- **Card type**: "Create cloze deletion cards from..."
- **Focus area**: "Generate flashcards about neural networks from..."
- **Detail level**: "Create summary flashcards from..." or "Create comprehensive flashcards from..."

## Tips for Best Results

1. **Quality Sources**: Use well-written, accurate content
2. **Be Specific**: Indicate focus areas when needed
3. **Review Generated Cards**: Always review and refine
4. **Iterate**: Generate in batches and improve
5. **Combine Sources**: Use multiple sources for comprehensive coverage

## Content Sources

### Supported
- ✅ Blog posts and articles
- ✅ Documentation pages
- ✅ YouTube videos (with transcripts)
- ✅ Personal notes and documents
- ✅ Selected text from any source

### Coming Soon
- 📋 PDF documents
- 🎵 Audio files with transcripts
- 🖼️ Images with OCR
- 📊 Diagrams and visual content

## Remnote Import Reference

For detailed information on importing flashcards to Remnote, see:
- [Remnote Import Guide](https://help.remnote.com/en/articles/9252072-how-to-import-flashcards-from-text)

## Quality Standards

Generated flashcards meet these quality criteria:

- ✅ Atomic (one concept per card)
- ✅ Clear and unambiguous questions
- ✅ Concise answers (typically under 20 words)
- ✅ No yes/no questions (unless meaningful)
- ✅ Self-contained with necessary context
- ✅ Promotes active recall
- ✅ Remnote-compatible formatting

## Limitations

- Requires internet access for URL-based content
- YouTube videos need available transcripts/captions
- Quality depends on source material clarity
- May not capture visual diagrams or complex images
- Works best with text-heavy content

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests to improve the agent configuration or skill definition.

## License

This project is open source. Feel free to use and modify for your learning needs.

## Acknowledgments

- Based on [Remnote's flashcard import format](https://help.remnote.com/en/articles/9252072-how-to-import-flashcards-from-text)
- Incorporates evidence-based learning principles from cognitive science research
- Designed for use with VSCode/Ampcode AI capabilities

## Support

If you encounter issues or have questions:
1. Check the `agent.md` and `generate-text-remnote-flashcard.skill` files for detailed documentation
2. Review the examples in this README
3. Open an issue in the repository

---

**Happy Learning! 🚀📚**
