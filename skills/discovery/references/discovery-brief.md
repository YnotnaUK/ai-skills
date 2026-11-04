# Discovery Brief template

Use this structure for the completed discovery brief. Omit a section only when it is genuinely not applicable; always include the closure record. Mark missing or uncertain information as unknown rather than inventing it. Reconcile open decisions and investigations with the tracked branches; do not list unagreed deferrals as completed discovery.

```markdown
# Discovery Brief: [Working Title]

## Summary
[A concise description of the idea and why it is being explored.]

## Opportunity
- **Audience:** [Who this is for]
- **Problem or need:** [What is not working today]
- **Desired outcome:** [What should improve for the audience]

## Proposed direction
[The current concept or approach, clearly distinguished from settled requirements.]

## Scope and boundaries
- **In scope:** [Needs or capabilities that appear essential]
- **Out of scope:** [Explicit exclusions or deferred areas]

## Constraints and dependencies
[Known business, operational, technical, regulatory, timing, or external constraints and dependencies.]

## Evidence and known facts
- [Fact or observation — source, if available]

## Assumptions
- [Assumption — what would validate or disprove it]

## Open decisions
- [Decision still needed — why it matters]

## Recommended deep dives
- **Question or area:** [What needs focused investigation]
  - **Why it matters:** [How the answer could affect the idea]
  - **What to establish:** [Decision, evidence, or facts the deep dive should produce]
  - **Priority:** [High, medium, or low]

## Other open questions
- [Unresolved question — why it matters, if known]

## Risks
- [Risk — potential impact or mitigation to explore]

## Closure and shared understanding
| Question/branch ID (parent if any) | Outcome | Answer/decision and evidence | Deferral reason, next step, and blocks |
| --- | --- | --- | --- |
| [Tracked question, including follow-ups] | [Resolved / Excluded / Deferred] | [Answer/source or user-agreed disposition] | [Details, including linked deep dive where applicable, or None] |

- **Confirmation:** [User confirmation of the recap, exclusions, deferrals, and proposed next step]
- **Readiness:** [Discovery complete; agreed investigations and any downstream blockers remain explicit]

## Handoff
[Suggested next step: use the `deep-dive` skill for the recommended investigations. When material uncertainties are resolved—or there are no deep dives needed—use `specify` to create the Product Specification. Do not create implementation tickets here.]
```
