# Task plan template

Use this structure when presenting a task plan for review or recording tasks in local Markdown. For GitHub Issues or Jira, use the same information in the service's native fields and include requirement references in the description.

```markdown
# Task Plan: [Working Title]

- **Source specification:** [Title/path and status]
- **Destination:** [Chat / local Markdown path / GitHub repository / Jira project]
- **Status:** [Provisional / Proposed / Approved / Partially created]

## Summary
[Briefly describe the implementation outcome and task grouping.]

## Tasks

### T-001: [Outcome-focused title]
- **Description:** [What to implement and relevant boundaries]
- **Acceptance criteria:**
  - [Observable, verifiable result]
- **Requirements:** [FR/BR IDs or other source references]
- **Depends on:** [Task IDs, or None]

## Blockers and decisions
- [Unresolved decision or blocker — affected tasks and next step]

## Coverage check
- [Requirement IDs covered by the tasks]
- [Requirements intentionally not tasked and why]

## Closure and shared understanding
| Question/branch ID (parent if any) | Outcome | Answer/decision and evidence | Deferral reason, next step, and blocks |
| --- | --- | --- | --- |
| [Inherited or new question, including follow-ups] | [Resolved / Excluded / Deferred / Open] | [Answer/source, user-agreed disposition, or unanswered gap] | [Details and affected task/requirement IDs, or None] |

- **Confirmation:** [Pending during proposal; record actual user confirmation of the whole plan, exclusions, deferrals, and destination after review]
- **Publication blockers:** [Tasks that cannot be published and why, or None; a provisional plan requires an explicit request]
- **Closure rule:** [Open branches prevent approval and publication of affected tasks; do not invent agreement to defer]
```
