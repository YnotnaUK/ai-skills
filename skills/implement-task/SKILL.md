---
name: implement-task
description: Implements an agreed task from a local Markdown plan, GitHub Issue, or Jira ticket, checking dependencies and linked requirements, making scoped changes, and validating acceptance criteria. Use when asked to work on, execute, or implement a planned task and prepare it for review.
---

# Implement a task

Deliver the agreed task within its boundaries and provide evidence for review. Implementation is not user acceptance: do not silently change requirements, declare the work accepted, or close the task.

## Find the task and repository guidance

1. Use the task identified by the user or already established in the conversation. Otherwise, look for a clearly relevant task in repository files or the configured GitHub/Jira destination. If several tasks are plausible, ask which to implement. Select one task rather than executing an entire plan automatically.
2. Read repository instructions and any Ynotna skills preferences before editing. Follow the configured paths and external-action policy; do not assume service access or a task destination.
3. Read the task's description, acceptance criteria, linked specification or requirements, dependencies, and relevant decisions. Reuse available context instead of asking the user to repeat it. If a source cannot be accessed, state what is missing and request access or the relevant content.
4. Inspect the working tree and relevant implementation, tests, and documentation. Identify changes already belonging to the task without treating unrelated work as yours. Preserve existing user changes; ask if they conflict with the task.

## Establish readiness and agree the approach

- Check that the task is agreed and sufficiently defined, and that its prerequisites are satisfied with evidence. A task's position in a plan or ticket status alone does not establish readiness.
- Identify missing decisions, contradictory requirements, and blocked dependencies. Ask only questions that affect scope, correctness, or the implementation approach. Do not invent acceptance criteria or implement prerequisite tasks without agreement.
- Propose a short approach covering the affected areas, intended behaviour, relevant tests or checks, and any documentation changes. Obtain the user's go-ahead before editing. An explicit approval already given for the same approach is sufficient; do not repeatedly seek it.
- If the task is blocked, report the blocker, what would resolve it, and the next step. Do not present a speculative implementation as completed work.

## Implement within scope

1. Follow existing patterns and reuse established helpers. Make the smallest coherent changes that satisfy the task, keeping directly dependent call sites consistent.
2. Add or adjust focused tests for introduced or fixed behaviour and update directly related documentation. Use existing tooling; do not add dependencies or abstractions without a task-related need.
3. Preserve intended behaviour outside the task. Fix issues caused by or inseparable from the change, but report unrelated defects rather than expanding into them.
4. If new evidence requires a material scope or approach change, explain the impact and agree the change before proceeding. Do not weaken criteria, remove tests, or replace requirements merely to make validation pass.

## Validate against the task

Map every acceptance criterion to implementation evidence and an appropriate check. Verify the actual required behaviour, thresholds, and output shape rather than a convenient proxy.

Run the smallest relevant existing tests, lint, type checks, or build commands, expanding validation when failures or shared-code changes warrant it. Use manual checks where automated validation cannot establish the outcome. Record what was actually run, the result, and any limitations; a proposed or unavailable check is not a pass.

Investigate failures and distinguish regressions from evidenced pre-existing failures. Fix task-related failures and rerun affected checks. Do not hide errors, claim unrun tests passed, or report a criterion as met without sufficient evidence.

## Resolve questions and branches

Track task-relevant questions and follow-up branches with stable identifiers and a parent where applicable. Carry forward relevant identifiers, decisions, and deferred items from the task and linked requirements. Record answers and evidence; partial, ambiguous, skipped, or contradictory answers remain **Open**.

Account for each branch as **Resolved**, **Excluded**, or **Deferred**. Exclusions require the user's agreement and must not remove acceptance criteria without an explicit baseline change. Deferrals require the user's agreement, a reason, the evidence or decision needed, a next step, and what they block. Deferred work or missing evidence must remain visible and cannot turn an unmet criterion into a pass.

## Report and hand-off

Read [the implementation hand-off template](./references/implementation-handoff.md) when ready to report. Return the hand-off in chat by default, identifying the task and delivered version or working-tree scope, changes, criterion-level evidence, validation results, and remaining gaps.

Use **Implemented — ready for review** only when all criteria have supporting evidence and no task-related blockers remain. Otherwise report **Incomplete** or **Blocked**, preserving the useful work and explaining what remains. This is an implementation assessment, not an independent review or acceptance decision.

Recommend `review-task` against the same task and delivered scope. Do not automatically invoke a separate reviewer, commit or push changes, open a pull request, post comments, change task status, or close tickets. Perform such actions only when explicitly requested and permitted by repository policy. If asked to save the hand-off, follow repository output preferences and preserve existing content.
