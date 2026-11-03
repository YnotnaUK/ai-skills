---
name: setup-ynotna-skills
description: Configures a repository for Ynotna's product-planning skills by agreeing on agent instruction files, artefact defaults, task destinations, and verifying available GitHub or Jira access. Use when onboarding a repo or setting its planning workflow preferences.
---

# Configure a repository for Ynotna's skills

Set up the active repository so project-planning skills can follow its conventions. This skill configures repository guidance and can verify task-service access with read-only checks; it does not install or copy the skills, create tickets, configure integrations, or handle credentials.

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

## Verify task-service access

After the user chooses a default task destination, offer to verify access to that service. Ask before running checks that contact an external service. Checks must be read-only and limited to the selected service and target repository/project.

* **Local Markdown:** Confirm the configured task path is usable by inspecting the repository. Do not create a test task or file.
* **GitHub Issues:** Check whether `gh` is available and whether `gh auth status` reports an authenticated GitHub host. If the target repository is known, use a read-only repository query to confirm it is accessible. If `gh` is unavailable or unauthenticated, check whether appropriate GitHub MCP tools are available in the current session and, with permission, use a read-only query instead.
* **Jira:** Check whether Jira MCP tools are available in the current session. With permission, use an available read-only operation to confirm access to the user-selected Jira site/project. If no suitable tool or read-only check is available, report that access could not be verified; do not guess an endpoint or try another authentication method.

Report tool availability, authentication status, and target access as separate results. Never print or store tokens, passwords, or other credentials; do not copy account details into repository guidance. Do not install tools, change authentication, request secrets, create tickets, or modify service settings. If access is missing, explain what the user needs to configure and leave the chosen backend unchanged unless they ask to switch.

Verification is only evidence for the current environment and session; do not persist a claim that access is available in repository instructions. Recheck when a later skill is about to publish tasks.

## Prepare and apply changes safely

1. Read [the repository guidance reference](./references/repository-guidance.md) for the guidance section format.
2. Prepare a concise change plan. In the canonical instruction file, preserve existing content and add or update only the clearly marked Ynotna skills preferences section. If no canonical file exists, create it. If existing content conflicts, markers are malformed, or updating would require replacing user-authored text, show the conflict and ask before proceeding.
3. Create the second entry point as a relative symlink to the canonical file only if it does not already contain distinct user-authored content and symlink creation is supported. Never replace an existing file or link without explicit approval. If symlinks are unsupported or unsuitable, explain the options and ask whether to keep one file or create a labelled copy that may drift.
4. If `.github/copilot-instructions.md` or nested agent guidance would duplicate or conflict with the new root guidance, explain the overlap and ask before changing it. Do not create both competing Copilot instruction mechanisms automatically.
5. Apply only the changes the user approved. Do not create task files, issues, credentials, or service configuration as a side effect of setup.

## Verify and report

Verify the canonical guidance, managed section, and any symlink target. If available, check the diff for whitespace problems. Report the chosen policies, files changed, task-service access-check results (or that the user declined), unresolved conflicts, and manual steps. Do not claim a link or integration works unless verified.
