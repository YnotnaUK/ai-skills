#!/bin/sh
set -eu

npx --yes skills add YnotnaUK/ai-skills --list
npx --yes skills add YnotnaUK/ai-skills --skill '*' --agent claude-code --yes

for skill in shape discovery deep-dive specify plan-tasks review-task setup-ynotna-skills; do
    test -s ".claude/skills/$skill/SKILL.md"
    printf 'Verified skill: %s\n' "$skill"
done

for reference in \
    shape/references/product-charter.md \
    discovery/references/discovery-brief.md \
    deep-dive/references/deep-dive-report.md \
    specify/references/product-specification.md \
    plan-tasks/references/task-plan.md \
    review-task/references/task-review.md \
    setup-ynotna-skills/references/repository-guidance.md; do
    test -s ".claude/skills/$reference"
    printf 'Verified reference: %s\n' "$reference"
done

printf '\nPublished skills and reference templates installed successfully.\n'
