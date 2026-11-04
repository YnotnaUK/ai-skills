---
name: discovery
description: Leads high-level product and project discovery through adaptive, decision-tree questions, then produces a discovery brief that identifies assumptions, risks, and areas needing focused deep dives before requirements or specifications. Use when exploring an idea or deciding what needs further investigation.
---

# Discover an idea and identify what needs deeper investigation

Help the user clarify an idea, its intended outcome, and what must be learned before committing to a solution. This skill covers high-level discovery and identifies where focused deep dives are needed; it is not itself a deep-dive workflow, production requirements specification, or task generator. It can follow the `shape` skill, but does not require it.

## Find the starting point

Use the first applicable source:

1. A Product Charter or equivalent idea already established in the conversation.
2. A clearly relevant Product Charter or equivalent discovery document in the repository.
3. Idea or project text supplied with the skill invocation.
4. If none is available, briefly ask what the user wants to explore.

Do not treat an unrelated repository document as the user's starting point. If multiple plausible charters exist, ask which one to use. Reuse known information and do not make the user repeat it. Carry forward relevant branch identifiers and outcomes from the starting material; reassess deferred items against this stage's gate rather than dropping or silently resolving them.

## Discovery workflow

Run discovery as an adaptive decision tree, in rounds:

1. Identify the important decisions and questions that are answerable from what is already known.
2. Ask the whole current frontier in one round. Number each question, give a clear recommendation, and phrase it so “yes” accepts that recommendation. Do not ask a question whose answer depends on another unresolved question in the same round.
3. Wait for the user's answers. Track every relevant question and follow-up branch with a stable identifier and its parent where applicable. Record answers, decisions, and supporting evidence, then ask the next frontier. Partial, ambiguous, skipped, or contradictory answers stay open. Do not ask again for settled information unless a later answer changes it.
4. Find relevant facts in available conversation or repository context before asking the user. Distinguish evidence from assumptions; include a source when useful. Ask the user for decisions, preferences, and facts that cannot be verified from context.
5. Begin with the opportunity, audience, problem, and desired outcome. Map the major areas that affect scope, value, or feasibility. Do not conduct detailed exploration of each area here.
6. Identify which unanswered questions merit a focused deep dive because their answers could materially change the solution, scope, risk, or feasibility. For each, record why it matters and what needs to be established. Capture lower-impact unknowns as open questions or investigations without forcing decisions.
7. Check the closure gate below before producing the final brief.

Keep each round concise. Use plain language, explain unfamiliar terms when needed, and avoid presenting a menu of speculative options when one recommendation with a clear alternative is enough.

## Completion

Audit every mapped area and tracked branch, including follow-ups opened by earlier answers. Each must be **Resolved**, **Excluded**, or **Deferred**; an unanswered question remains **Open**. Exclusions require the user's agreement. Deferrals require the user's agreement, a reason, a next step, and what they block. A recommended deep dive remains unresolved; its deferral is agreed only when the user accepts that hand-off.

Discovery is ready to hand off when the opportunity and intended outcome are clear, important boundaries and constraints are captured, and areas needing focused investigation are prioritised with a reason and a clear question or evidence need. Do not claim that an idea is feasible unless the available evidence supports that conclusion.

Give a concise recap with branch outcomes, evidence or decisions, agreed boundaries, and deferrals and blockers. Ask the user to confirm the shared understanding and the proposed next step, then wait. Silence, partial replies, or approval of individual answers is not confirmation of the whole recap. Incorporate corrections, revisit affected branches, and confirm again if the understanding changes. Do not reopen unaffected settled decisions or invent unrelated branches. If a gap prevents the discovery readiness conditions above from being met, continue discovery or report it as blocked; do not present a completed brief.

After the user confirms the recap, read [the discovery brief template](./references/discovery-brief.md) and use it to deliver the brief. Follow any repository artefact policy and output path in the active repository's root agent instructions; if no clear policy is present, return it in chat and do not create or update files unless asked. Do not conduct the listed deep dives, generate a full product specification, or create tickets here. When the brief recommends deep dives, identify `deep-dive` as the next step; otherwise, recommend `specify` when the discovery is sufficiently clear.
