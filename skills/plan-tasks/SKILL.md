---
name: plan-tasks
description: Breaks an agreed Product Specification into ordered, actionable implementation tasks with acceptance criteria, dependencies, and traceability. Use after specification approval to prepare local Markdown tasks, GitHub Issues, or Jira tickets.
---

# Plan implementation tasks

Turn an agreed Product Specification into a coherent, appropriately sized set of implementation tasks. Preserve the specification's intent and boundaries; do not silently make product decisions, expand scope, or turn unresolved assumptions into commitments.

## Find the source and task destination

1. Prefer an approved Product Specification in the conversation, then a clearly relevant specification in the repository, then a specific task-planning prompt. A **Ready for review** specification is not approved unless the user explicitly asks to plan tasks from it.
2. Do not treat a provisional specification as approved. You may draft a provisional task plan if asked, but identify blockers and do not publish tasks that depend on unresolved decisions.
3. If there is no suitable specification and the prompt does not define a bounded change, recommend `specify` and stop. If material product questions remain, recommend resolving them with `deep-dive` or `discovery` first.
4. Read the active repository's root agent instructions for task destination, task-file location, and external-action policy. Use the user's explicit request when no preference is configured; otherwise ask which destination to use.
5. Inspect existing tasks/issues and project conventions when accessible to avoid duplicate work and match local terminology. Do not infer repository or Jira identifiers from unrelated context.

## Build the task plan

1. Extract requirements, acceptance criteria, constraints, dependencies, and exclusions from the specification. Map each task to one or more requirement IDs; preserve traceability.
2. Identify any missing implementation decisions that materially affect the task breakdown. Find repository facts before asking the user. Ask focused questions with recommendations in numbered rounds when needed; do not ask about details already settled in the spec.
3. Group work into small, independently understandable tasks that deliver verifiable progress. Order tasks by actual dependency, not merely by preference. Record dependencies explicitly and avoid circular dependencies.
4. Give each task a clear outcome, actionable description, testable acceptance criteria, relevant requirement references, and dependencies where applicable. Include testing, documentation, migration, accessibility, security, or operational work only when required by the specification.
5. Do not invent estimates, assignees, labels, deadlines, architectural decisions, or scope. Include them only when provided or requested; state blockers rather than disguising them as tasks.
6. Review the complete plan for coverage, duplicates, oversized tasks, missing dependencies, and work outside scope. If the task set is too large to be useful, propose sensible phases and keep the first batch focused.

## Review and publish

Present the proposed plan for review before creating or modifying task records. Respect the configured output and external-action policy; when none is clear, return the plan in chat and ask before creating files or external tickets.

For local Markdown, follow the configured path and format, preserve existing content, and ask before overwriting or adding to an existing task file.

For GitHub Issues or Jira:

* Confirm the target repository/project and the full proposed task list before creating issues or tickets, unless an explicit repository policy already authorises this exact action.
* Use available tools and service conventions; do not claim a ticket was created unless the service confirms it.
* Report links/identifiers for created records, and clearly distinguish any failures or skipped tasks.

After review, use [the task plan template](./references/task-plan.md) to return the plan in chat or to structure local task files as appropriate. Do not create tasks until the user has approved the proposed set.
