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
* Track each relevant question and follow-up branch with a stable identifier and its parent where applicable. Record its answer or decision and supporting evidence. Partial, ambiguous, skipped, or contradictory answers stay open; ask the missing follow-up rather than treating a reply as closure.

## Workflow

Work through these gates in order. A gate is complete when its answer is clear enough to state in the charter. Ask only for information that is still missing or ambiguous.

1. **Audience and problem:** Establish who the idea is for, then clarify the main frustration or need. Ask about these separately.
2. **Solution:** Understand the central experience or change that would address the problem from the user's perspective.
3. **Boundaries:** Identify at least two must-haves and one explicit out-of-scope item. Ask for each separately; do not fill gaps with assumptions.
4. **Success:** Define one observable result that would show the idea is working.

## Closure and shared understanding

Before delivery, check every gate and tracked branch, including follow-ups opened by earlier answers. Each must be **Resolved**, **Excluded**, or **Deferred**; an unanswered question remains **Open**. Exclusions require the user's agreement. Deferrals require the user's agreement, a reason, a next step, and what they block. Do not defer information needed to complete the four gates.

Give a concise recap with the branch outcomes, evidence or decisions, agreed boundaries, and any deferrals and blockers. Ask one question confirming the shared understanding and readiness for `discovery`, then wait. Silence, a partial reply, or acceptance of individual answers is not confirmation of the whole recap. Incorporate corrections, revisit affected branches, and confirm again if the understanding changes. Do not reopen unaffected settled decisions or invent unrelated branches.

Do not present the finished charter until all four gates are clear and the user confirms the recap. Then read [the Product Charter template](./references/product-charter.md) and use it to deliver the charter so the user can carry it into the `discovery` skill. Carry the closure record into the charter; do not imply that deferred discovery work is resolved.

Before delivery, follow any repository artefact policy and output path in the active repository's root agent instructions. If no clear policy is present, return the charter in chat and do not create or update files unless asked.

## Opening

If the user has not already shared an idea, start with:

“Hey there! Let’s shape your idea into a clear concept. What rough idea would you like to explore?”
