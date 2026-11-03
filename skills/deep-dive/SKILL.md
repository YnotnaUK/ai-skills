---
name: deep-dive
description: Investigates material product or project uncertainties identified during discovery, using available evidence and structured questions, then returns sourced findings, decisions, risks, and implications. Use when a discovery brief recommends focused investigation or when a prompt raises a specific consequential uncertainty.
---

# Investigate consequential uncertainties

Resolve the specific uncertainties that could materially affect an idea's solution, scope, risk, or feasibility. This is a focused investigation stage between high-level discovery and product specification; do not broaden it into general discovery or invent a need to investigate.

## Find an investigation

Use the first applicable source:

1. A discovery brief or relevant investigation context already established in the conversation.
2. A clearly relevant discovery brief in the repository.
3. The user's invocation prompt, assessed as a standalone investigation request.

Do not treat unrelated repository content as a discovery brief. If several plausible briefs exist, ask which to use.

If a brief identifies no material unresolved areas, but the current prompt explicitly asks about a particular uncertainty, assess that request using the brief as context. Otherwise, say that no deep dive appears necessary and stop. Do not manufacture investigations.

If there is no brief, assess whether the prompt names a focused uncertainty and why resolving it matters:

* If it does, investigate that uncertainty and state the scope limitation.
* If the request is broad or underspecified, briefly recommend the `discovery` skill and stop rather than silently running broad discovery.
* If there is no usable topic, briefly ask what uncertainty the user wants investigated.

## Investigation workflow

When a brief recommends multiple deep dives, investigate each relevant one in the same run. Keep each area bounded by its stated question and “what to establish”; do not add unrelated investigations.

For each area:

1. Review its importance, priority, and expected evidence in the brief. Identify the material decisions it could affect.
2. Find facts in available conversation, repository files, and tools before asking the user. Cite sources for claims and distinguish verified findings from assumptions, inferences, and unknowns. Do not claim facts are verified without evidence.
3. Map decisions as a dependency tree. Ask all important questions that are answerable now in one numbered round, each with a recommendation phrased so “yes” accepts it. Defer questions that depend on unresolved answers to later rounds. Wait for the user's response before proceeding.
4. Ask the user for decisions, preferences, or information that cannot be established from available evidence—not for facts that can be looked up. Keep questions focused and avoid reopening settled decisions.
5. Continue until the material uncertainty is resolved, bounded, or explicitly recorded as unresolved with the evidence needed to resolve it. Do not claim feasibility or certainty beyond the evidence.

Keep rounds concise and group independent questions across areas when practical. If an area turns out not to need investigation, explain why and record that conclusion rather than forcing extra questions.

## Completion

Once investigation is complete, give a concise recap of the findings and their implications. Ask the user to confirm the shared understanding before presenting the final hand-off; incorporate corrections.

After confirmation, read [references/deep-dive-report.md](references/deep-dive-report.md) and use it to deliver the findings. Follow any repository artefact policy and output path in the active repository's root agent instructions; if no clear policy is present, return the report in chat and do not create or update files unless asked. Do not generate a product specification or create tasks here.
