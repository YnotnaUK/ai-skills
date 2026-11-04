# Repository guidance section

Use the following managed section in the selected canonical agent-instructions file. Replace bracketed values with the user's agreed preferences. When the repository has no established convention, recommend `docs/product/` for product documents and `docs/tasks/` for local Markdown task plans; record these values only after the user agrees. Keep other instructions in the file intact.

```markdown
<!-- ynotna-skills:begin -->
## Ynotna skills preferences

- **Deliverables:** [Create/update repository files by default / Return in chat by default / Ask each time]
- **Product documents:** [Agreed repository-relative path, recommend `docs/product/` / Ask each time]
- **Local Markdown tasks:** [Agreed repository-relative path, recommend `docs/tasks/` / Not used / Ask each time]
- **Default task destination:** [Local Markdown / GitHub Issues / Jira / Ask each time]
- **External issue actions:** [Ask for confirmation / Follow existing project policy / Ask each time]
- **Service identifiers:** [Non-secret repository, organisation, Jira site, or project identifiers if verified or supplied; omit otherwise]
<!-- ynotna-skills:end -->
```

Only include a service identifier when it is necessary, non-sensitive, and verified from the repository or provided by the user. Never include tokens, passwords, private keys, or other credentials.

When rerunning setup, update only the content between the exact markers. If one marker is missing, duplicated, or reversed, stop and ask before editing. If the markers are absent, append the section without changing existing text.

## Setup closure report

Use the following in the conversation alongside the change plan and update it
with verification results after applying approved changes. Do not add this
session-specific record to the managed repository guidance above.

```markdown
## Closure and shared understanding
| Question/branch ID (parent if any) | Outcome | Answer/decision and evidence | Deferral reason, next step, and blocks |
| --- | --- | --- | --- |
| [Setup question, including follow-ups] | [Resolved / Excluded / Deferred] | [Choice, permission, check result, or user-agreed disposition] | [Details, or None] |

- **Confirmation:** [Pending before approval; record actual user confirmation of the shared understanding and exact change plan]
- **Verification:** [Guidance/link checks and separate service availability, authentication, and access results; distinguish declined or unavailable checks]
- **Completion blockers:** [Unresolved conflicts, permissions, failed checks, or manual steps and their effect, or None]
```
