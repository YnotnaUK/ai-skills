# Task review template

Use this structure for the completed review. Include every acceptance criterion, and keep evidence and verification limitations explicit. Omit optional findings sections only when they are not applicable.

```markdown
# Task Review: [Task identifier and title]

- **Task source:** [Task file or service link]
- **Requirements:** [Linked specification and relevant requirement identifiers]
- **Work reviewed:** [Files, commit range, pull request, or deliverable version]
- **Recommendation:** [Ready for acceptance / Changes required / Unable to verify]

## Summary
[Whether the delivered outcome matches the agreed task and why.]

## Acceptance criteria
| Criterion | Status | Evidence or gap |
|-----------|--------|-----------------|
| [Identifier and expected outcome] | [Met / Not met / Unverified] | [Source location, observation, test result, or missing evidence] |

## Findings
- **[Finding]:** [Observed discrepancy and its impact]
  - **Affected criteria/requirements:** [Identifiers]
  - **Evidence:** [Concrete source or observation]
  - **Required rework:** [What must change, without implementing it here]

## Scope changes and regressions
- [Task-related regression or departure from agreed scope, with evidence]

## Validation
- **Checks performed:** [Commands or observations, results, and reviewed version]
- **Checks not performed:** [Reason and any permission or environment needed]

## Remaining uncertainty
- [Unverified outcome and the evidence needed to resolve it]

## Closure and shared understanding
| Question/branch ID (parent if any) | Outcome | Answer/decision and evidence | Deferral reason, next step, and blocks |
| --- | --- | --- | --- |
| [Task-relevant question, including follow-ups] | [Resolved / Excluded / Deferred] | [Answer/source or user-agreed disposition] | [Required rework or evidence, affected criteria, or None] |

- **Confirmation:** [User confirmation of the assessment and next steps, not task acceptance]
- **Acceptance blockers:** [Unmet criteria, material defects, or missing verification evidence, or None; agreement to defer does not remove these blockers]

## Handoff
[User acceptance, specific rework and re-review, or additional verification needed. Do not imply that the task has been closed or accepted.]
```
