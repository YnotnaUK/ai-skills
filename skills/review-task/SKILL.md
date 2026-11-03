---
name: review-task
description: Reviews delivered work against a task, its acceptance criteria, and linked requirements using implementation and validation evidence. Use when checking whether a completed task meets expectations, identifying gaps, or preparing work for acceptance.
---

# Review delivery against a task

Assess whether the produced work meets the agreed expectations. This is a task-focused acceptance review, not a general code review or an implementation workflow. Review code, documents, configuration, or other deliverables as appropriate to the task.

## Establish the review baseline

1. Use the task identified by the user or already established in the conversation. Otherwise, look for a clearly relevant task in repository files or the configured GitHub/Jira destination. If several tasks are plausible, ask which to review. Use read-only service operations.
2. Read the task's description, acceptance criteria, and linked specification or requirements. Reuse existing context; do not ask for facts available in the repository or task service.
3. Identify the delivered work and version being reviewed: relevant files, working-tree changes, commit range, pull request, or other artefacts. Do not assume every current change belongs to the task. Ask when the review scope or comparison baseline is ambiguous.
4. If the task or its expectations are missing, inaccessible, or contradictory, explain the gap and ask for clarification. Do not invent acceptance criteria or silently choose between conflicting requirements. Clearly distinguish user-confirmed clarifications from the original baseline.

## Review workflow

1. Map every acceptance criterion to the relevant implementation, deliverable, and validation evidence. Use the task's criterion identifiers where available; otherwise assign review-local identifiers.
2. Inspect the work against the expected behaviour and outcomes, including relevant failure paths, business rules, constraints, and exclusions. Flag missing behaviour, task-related regressions, and unintended scope changes. Avoid unrelated improvements or stylistic preferences.
3. Inspect existing test results and other validation evidence for relevance to the reviewed version. Where useful, run the smallest existing safe validation command that directly checks the requirement. Do not install dependencies, edit files, use auto-fix tools, or run checks that mutate shared or external state without permission.
4. Mark each criterion **Met**, **Not met**, or **Unverified**. Cite concrete evidence such as file locations, observed output, or relevant test results. A passing test suite alone does not demonstrate that the expected outcome is satisfied; missing evidence is not proof of failure.
5. Distinguish observed defects from assumptions, pre-existing issues, and verification limits. Report failed or unavailable checks explicitly; do not claim tests were run or behaviour was verified when it was not.
6. Review the assessment for complete criterion coverage and evidence-backed findings. Recommend **Ready for acceptance** only when all criteria are met and no material task-related defects remain. Recommend **Changes required** when criteria are not met or material defects are found. If there are no demonstrated defects but required evidence is missing, report **Unable to verify** rather than approving the task.

## Report and hand-off

Read [the task review template](./references/task-review.md) only when ready to produce the report. Return it in the conversation by default.

Do not fix the work, write a report file, post comments, change task status, close tickets, or commit changes automatically. If the user asks for a saved or published review, follow the repository's output paths and external-action policy and preserve existing content. A review recommendation is not user acceptance or permission to close a task.

For changes required, identify the specific rework needed and affected criteria. For unverified outcomes, state what evidence would resolve the gap. After rework, reassess affected criteria and relevant regressions against the same baseline unless the user approves a scope change.
