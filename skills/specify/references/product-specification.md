# Product Specification template

Use this structure for the specification. Omit a section only when it is not applicable; always include the closure record. Mark unknowns and assumptions explicitly, and do not present proposals as approved requirements. Material unresolved decisions require Provisional status and an explicit user request for that provisional output.

```markdown
# Product Specification: [Working Title]

- **Status:** [Provisional / Ready for review]
- **Source material:** [Discovery brief, deep-dive findings, prompt, or other sources]

## Summary
[What is being specified and for whom.]

## Problem and desired outcome
- **Audience:** [Who needs this]
- **Problem:** [Need or friction being addressed]
- **Desired outcome:** [Observable user or business result]

## Goals and non-goals
- **Goals:** [Outcomes this change is intended to achieve]
- **Non-goals:** [Explicitly excluded outcomes or scope]

## Scope
- **In scope:** [Capabilities covered by this specification]
- **Out of scope:** [Deferred or excluded capabilities]

## User journeys and behaviour
### [Journey or scenario]
1. [Trigger or starting state]
2. [User action and expected system response]
3. [Outcome, including relevant alternatives or failure paths]

## Functional requirements
### FR-001: [Requirement title]
- **Requirement:** [One clear, user-observable behaviour]
- **Acceptance criteria:**
  - [Verifiable condition]
- **Source/status:** [Decision or evidence; confirmed, assumed, or provisional]

## Business rules
- **BR-001:** [Rule and its source/status]

## Data and integrations
- [Required information, its use, and relevant system boundaries; include only what is known or decided]

## Quality attributes and constraints
- [Relevant accessibility, privacy, security, performance, operational, regulatory, platform, or other constraints; state source/status]

## Dependencies
- [Dependency and its effect on delivery or behaviour]

## Assumptions
- [Assumption — impact and how it can be validated]

## Open decisions and investigations
- [Question or uncertainty — why it matters and next step; recommend a deep dive if needed]

## Risks
- [Risk — likely impact and any agreed mitigation]

## Validation and success measures
- [How the intended outcome and key requirements will be checked]

## Closure and shared understanding
| Question/branch ID (parent if any) | Outcome | Answer/decision and evidence | Deferral reason, next step, and blocks |
| --- | --- | --- | --- |
| [Inherited or new question, including follow-ups] | [Resolved / Excluded / Deferred / Open] | [Answer/source, user-agreed disposition, or unanswered gap] | [Details and affected requirement IDs, or None] |

- **Confirmation:** [User confirmation of the recap, exclusions, deferrals, readiness, and next step; explicit request if provisional]
- **Progression blockers:** [Unresolved material decisions and affected scope, or None]
- **Closure rule:** [Open branches require Provisional status, not Ready for review; do not invent agreement to defer]

## Handoff
[If Ready for review, review and approve this specification before using `plan-tasks`. If Provisional, resolve the identified blockers before implementation planning; a provisional task plan requires an explicit request. Do not put implementation tasks here.]
```
