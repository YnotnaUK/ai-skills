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

1. Extract the intended outcome, users, scope, constraints, decisions, evidence, and unresolved matters from the available material. Carry forward relevant branch identifiers and outcomes; reassess deferred items against this stage's gate rather than dropping or silently resolving them. Do not ask the user to repeat information already established.
2. Identify missing decisions that materially affect the behaviour or boundaries of the product. Find verifiable facts in the conversation or repository before asking questions. Label facts with their source where useful; distinguish decisions, assumptions, inferences, and unknowns.
3. Track every relevant question and follow-up branch with a stable identifier and its parent where applicable, recording answers, decisions, and supporting evidence. Ask the frontier of material, answerable questions in one numbered round. Include a recommendation for each and phrase it so “yes” accepts the recommendation. Hold questions that depend on unresolved decisions for later rounds. Wait for the user's response before proceeding. Partial, ambiguous, skipped, or contradictory answers stay open.
4. Define requirements in user-observable, testable terms. Include acceptance criteria where they clarify how a requirement will be verified. Keep product behaviour and business rules separate from technical constraints; include technical details only when supported by evidence or an explicit decision.
5. Do not convert an assumption, proposal, or unresolved question into a requirement. Record material gaps explicitly. If a consequential uncertainty needs investigation, recommend `deep-dive`; the user may still request a provisional specification.
6. Check each journey, requirement, constraint, and tracked branch for missing follow-ups or contradictions. Revisit affected decisions when new answers change them; do not reopen unaffected settled decisions or invent unrelated branches.

Be concise and use consistent requirement identifiers within the document. Avoid unnecessary questions, speculative options, and solution details that are not needed to define expected outcomes.

## Completion

Account for inherited open questions as well as those raised here. Each tracked branch must be **Resolved**, **Excluded**, or **Deferred**; an unanswered question remains **Open**. Exclusions require the user's agreement. Deferrals require the user's agreement, a reason, a next step, and the requirements or progression they block. Do not turn missing decisions into requirements or use a deferral to claim readiness.

Recap the important decisions, branch outcomes and their evidence, boundaries, deferrals, blockers, and specification readiness. Ask the user to confirm the shared understanding and the proposed next step, then wait. Silence, partial replies, or approval of individual answers is not confirmation of the whole recap. Incorporate corrections, revisit affected branches, and confirm again if the understanding changes. If material gaps remain, continue clarification or investigation; produce a provisional document only when the user explicitly requests it, with gaps and blockers visible.

After confirmation, read [the Product Specification template](./references/product-specification.md) and use it to deliver the document. Follow any repository artefact policy and output path in the active repository's root agent instructions; if no clear policy is present, return it in chat and do not create or update files unless asked. Mark it **Provisional** if material decisions remain unresolved; otherwise mark it **Ready for review**. Never imply approval or implementation readiness that the user has not given.

Do not produce implementation tickets or a task breakdown here. The next step after the specification is agreed is `plan-tasks`.
