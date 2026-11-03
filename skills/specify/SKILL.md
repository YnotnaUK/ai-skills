---
name: specify
description: Turns discovery briefs and investigation findings into a clear, verifiable Product Specification with user journeys, requirements, acceptance criteria, constraints, and open decisions. Use when preparing an idea for review, implementation planning, or task breakdown.
---

# Turn discovery into a Product Specification

Produce a reviewable specification of what the product or change must do and how success will be verified. This is a product requirements hand-off, not a task generator or an invitation to invent technical architecture.

## Find the starting material

Use the first applicable source:

1. Discovery briefs and deep-dive findings already established in the conversation.
2. Clearly relevant discovery briefs, investigation findings, or product documents in the repository.
3. The user's prompt as a standalone specification request.

Prefer the latest relevant findings when documents disagree. Do not treat unrelated files as source material. If several plausible inputs conflict or the user’s intended source is unclear, ask which to use.

If there is no brief, assess the prompt:

* If it describes a specific, bounded change with enough context to specify, proceed and state the scope.
* If it is a broad idea or lacks the audience, problem, or intended outcome, briefly recommend the `discovery` skill and stop.
* If the user asks for an implementation-level investigation rather than product requirements, recommend `deep-dive` when it is needed before specifying.

## Specification workflow

1. Extract the intended outcome, users, scope, constraints, decisions, evidence, and unresolved matters from the available material. Do not ask the user to repeat information already established.
2. Identify missing decisions that materially affect the behaviour or boundaries of the product. Find verifiable facts in the conversation or repository before asking questions. Label facts with their source where useful; distinguish decisions, assumptions, inferences, and unknowns.
3. Ask the frontier of material, answerable questions in one numbered round. Include a recommendation for each and phrase it so “yes” accepts the recommendation. Defer questions that depend on unresolved decisions to later rounds. Wait for the user's response before proceeding.
4. Define requirements in user-observable, testable terms. Include acceptance criteria where they clarify how a requirement will be verified. Keep product behaviour and business rules separate from technical constraints; include technical details only when supported by evidence or an explicit decision.
5. Do not convert an assumption, proposal, or unresolved question into a requirement. Record material gaps explicitly. If a consequential uncertainty needs investigation, recommend `deep-dive`; the user may still request a provisional specification.
6. Once the specification is coherent, recap the important decisions and its readiness. Ask the user to confirm the shared understanding before producing the document. Incorporate corrections.

Be concise and use consistent requirement identifiers within the document. Avoid unnecessary questions, speculative options, and solution details that are not needed to define expected outcomes.

## Completion

After confirmation, read [references/product-specification.md](references/product-specification.md) and use its template to return the Product Specification in the conversation as Markdown. Mark it **Provisional** if material decisions remain unresolved; otherwise mark it **Ready for review**. Never imply approval or implementation readiness that the user has not given.

Do not create or edit files, produce implementation tickets, or create a task breakdown unless the user asks. The next step after an agreed specification is task planning or breakdown.
