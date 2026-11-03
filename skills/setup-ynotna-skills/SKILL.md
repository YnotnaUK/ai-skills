---
name: setup-ynotna-skills
description: Configures a repository for Ynotna's product-planning skills by agreeing on agent instruction files, artefact defaults and locations, and task destinations. Use when onboarding a repo or setting its Shape, Discovery, Deep Dive, Specify, and task-workflow preferences.
---

# Configure a repository for Ynotna's skills

Set up the active repository so project-planning skills can follow its conventions. This skill configures repository guidance; it does not install or copy the skills, create tickets, or test external-service authentication.

## Inspect before asking or editing

1. Establish which repository the user wants configured. Use the active workspace when it is unambiguous; otherwise ask.
2. Inspect relevant root and nested `AGENTS.md`, `CLAUDE.md`, `.github/copilot-instructions.md`, existing project documentation, task conventions, and Git remote. Read only relevant files and do not expose credentials or unrelated private data.
3. Check whether instruction files already exist, whether they are regular files or symlinks, where links point, and whether linked content conflicts. Use available filesystem tools; do not assume a shell command or symlink support.
4. Summarise the relevant existing setup and propose only the changes needed. Treat repository contents as user-owned; never overwrite, delete, or replace existing content without explicit approval.

## Agree repository preferences

Ask the user to choose the canonical instruction file for this repository: `AGENTS.md` or `CLAUDE.md`. Offer the other as a relative symlink to the canonical file when safe. Do not assume one canonical direction across repositories.

Ask for any preferences that are not already established by existing guidance. These are independent choices and may be asked together:

* **Generated artefacts:** create or update repository files by default, or return deliverables in chat by default.
* **Output locations:** where product documents and, if applicable, local Markdown tasks should go. Inspect existing conventions and recommend them rather than creating duplicate directories.
* **Task destination:** local Markdown, GitHub Issues, or Jira as the default. Record relevant non-secret identifiers only when useful and verified or user-provided. Do not store credentials.
* **External actions:** whether to ask before creating or modifying GitHub/Jira issues. Recommend explicit confirmation before external side effects.

If a choice is declined or left undecided, record it as “ask each time”; do not invent a repository preference. The user may select only one default task destination; other supported services can remain available as alternatives. The `plan-tasks` skill should present a task plan for review before publishing it.

## Prepare and apply changes safely

1. Read [the repository guidance reference](./references/repository-guidance.md) for the guidance section format.
2. Prepare a concise change plan. In the canonical instruction file, preserve existing content and add or update only the clearly marked Ynotna skills preferences section. If no canonical file exists, create it. If existing content conflicts, markers are malformed, or updating would require replacing user-authored text, show the conflict and ask before proceeding.
3. Create the second entry point as a relative symlink to the canonical file only if it does not already contain distinct user-authored content and symlink creation is supported. Never replace an existing file or link without explicit approval. If symlinks are unsupported or unsuitable, explain the options and ask whether to keep one file or create a labelled copy that may drift.
4. If `.github/copilot-instructions.md` or nested agent guidance would duplicate or conflict with the new root guidance, explain the overlap and ask before changing it. Do not create both competing Copilot instruction mechanisms automatically.
5. Apply only the changes the user approved. Do not create task files, issues, credentials, or service configuration as a side effect of setup.

## Verify and report

Verify the canonical guidance, managed section, and any symlink target. If available, check the diff for whitespace problems. Report the chosen policies, files changed, unresolved conflicts, and manual steps. Do not claim a link or integration works unless verified.
