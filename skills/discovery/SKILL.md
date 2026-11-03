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

Do not treat an unrelated repository document as the user's starting point. If multiple plausible charters exist, ask which one to use. Reuse known information and do not make the user repeat it.

## Discovery workflow

Run discovery as an adaptive decision tree, in rounds:

1. Identify the important decisions and questions that are answerable from what is already known.
2. Ask the whole current frontier in one round. Number each question, give a clear recommendation, and phrase it so “yes” accepts that recommendation. Do not ask a question whose answer depends on another unresolved question in the same round.
3. Wait for the user's answers. Update the tree, record settled decisions, and ask the next frontier. Do not ask again for settled information.
4. Find relevant facts in available conversation or repository context before asking the user. Distinguish evidence from assumptions; include a source when useful. Ask the user for decisions, preferences, and facts that cannot be verified from context.
5. Begin with the opportunity, audience, problem, and desired outcome. Map the major areas that affect scope, value, or feasibility. Do not conduct detailed exploration of each area here.
6. Identify which unanswered questions merit a focused deep dive because their answers could materially change the solution, scope, risk, or feasibility. For each, record why it matters and what needs to be established. Capture lower-impact unknowns as open questions or investigations without forcing decisions.
7. When the material decisions are covered, give a concise recap and ask the user to confirm the shared understanding. Incorporate corrections before producing the final brief.

Keep each round concise. Use plain language, explain unfamiliar terms when needed, and avoid presenting a menu of speculative options when one recommendation with a clear alternative is enough.

## Completion

Discovery is ready to hand off when the opportunity and intended outcome are clear, important boundaries and constraints are captured, and areas needing focused investigation are prioritised with a reason and a clear question or evidence need. Do not claim that an idea is feasible unless the available evidence supports that conclusion.

After the user confirms the recap, read [references/discovery-brief.md](references/discovery-brief.md) and use its template to return the brief in the conversation as Markdown. Do not conduct the listed deep dives, create or edit files, generate a full product specification, or create tickets unless the user asks. When the brief recommends deep dives, identify `deep-dive` as the next step; otherwise, recommend `specify` when the discovery is sufficiently clear.
