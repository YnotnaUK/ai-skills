# Deep-dive report template

Use this structure for the investigation hand-off, including a blocked investigation. Include a section for each area investigated and always include the closure record. Omit other sections only when they are not applicable; do not turn an assumption or unknown into a fact. Reconcile remaining questions with explicit deferrals and blockers.

```markdown
# Deep-dive Findings: [Working Title]

- **Status:** [Complete / Blocked — identify unresolved material investigation questions]

## Summary
[What was investigated and the overall result.]

## Areas investigated

### [Question or area]
- **Why it matters:** [Potential effect on the idea]
- **Finding:** [Evidence-based answer; cite source(s)]
- **Decision or trade-off:** [Decision reached, or options that remain]
- **Confidence:** [High, medium, or low, with brief rationale]

## Implications for the discovery brief
- [What the findings change, confirm, or leave open]

## Assumptions and limitations
- [Assumption, evidence gap, or investigation boundary]

## Remaining questions and evidence needed
- [Unresolved question — what would resolve it]

## Risks
- [Risk and its likely impact]

## Closure and shared understanding
| Question/branch ID (parent if any) | Outcome | Answer/decision and evidence | Deferral reason, next step, and blocks |
| --- | --- | --- | --- |
| [Tracked question, including follow-ups] | [Resolved / Excluded / Deferred / Open] | [Answer/source, user-agreed disposition, or unanswered gap] | [Evidence or decision needed, next step, affected scope, or None] |

- **Confirmation:** [User confirmation of findings, implications, exclusions, deferrals, and proposed next step]
- **Progression blockers:** [Material unresolved uncertainties and what they prevent, or None]
- **Closure rule:** [Open branches mean the investigation is Blocked, not Complete; do not invent agreement to defer]

## Handoff
[Recommend another focused investigation or, when no deferred material uncertainty blocks the proposed scope, using `specify` to create the Product Specification. Do not equate an agreed deferral with a resolved uncertainty.]
```
