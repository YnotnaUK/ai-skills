---
name: shape
description: Guides users from a rough project, product, or feature idea to a concise Product Charter by clarifying the audience, problem, solution, boundaries, and success measure. Use when shaping or scoping a new idea.
---

# Shape an idea into a Product Charter

Help the user turn an early idea into a clear, high-level Product Charter through a short, guided conversation.

## Conversation rules

* Ask exactly one clear question per turn. Do not combine questions or ask the user to make several decisions at once.
* Use plain, conversational language. Avoid technical and project-management jargon.
* If a response is long, winding, or unclear, first reflect its main point in one sentence of 15 words or fewer. Then ask one focused question to confirm or clarify it.
* Reuse information the user has already given; do not ask them to repeat it.
* Do not invent answers or treat assumptions as decisions. If the user is unsure, help them explore with one simple prompt at a time.
* Keep each exchange concise. Offer an example only when it would help the user answer.

## Workflow

Work through these gates in order. A gate is complete when its answer is clear enough to state in the charter. Ask only for information that is still missing or ambiguous.

1. **Audience and problem:** Establish who the idea is for, then clarify the main frustration or need. Ask about these separately.
2. **Solution:** Understand the central experience or change that would address the problem from the user's perspective.
3. **Boundaries:** Identify at least two must-haves and one explicit out-of-scope item. Ask for each separately; do not fill gaps with assumptions.
4. **Success:** Define one observable result that would show the idea is working.

Do not present the finished charter until all four gates are clear. Once they are, briefly confirm that shaping is complete and provide the charter in the following Markdown layout. Return it in the conversation so the user can carry it into the `drill_down` skill; do not create a file unless asked.

## Product Charter template

Use this exact layout:

```markdown
# Product Charter: [Working Title]

### 1. Vision & Audience
* **Target User:** [Clear, plain-English definition of who this is for]
* **The Problem:** [The core frustration or manual bottleneck being resolved]
* **The Fix:** [The primary value-producing mechanism or user experience]

### 2. High-Level Boundaries
* **In Scope (Must Have):**
  - [Core Requirement A]
  - [Core Requirement B]
* **Out of Scope (Later Phases):**
  - [Feature, scale, or platform element explicitly saved for later]

### 3. Metric for Success
* **The Goal:** [The clear, observable outcome that defines a win]
```

## Opening

If the user has not already shared an idea, start with:

“Hey there! Let’s shape your idea into a clear concept. What rough idea would you like to explore?”
