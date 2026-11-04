---
name: setup-ynotna-skills
description: Configures a project folder for Ynotna's product-planning skills by agreeing on agent instruction files, artefact defaults, task destinations, and verifying available GitHub or Jira access. Use when onboarding a repo, setting up a folder without Git, or setting its planning workflow preferences.
---

# Configure a project for Ynotna's skills

Set up the active project folder so project-planning skills can follow its conventions. Git is optional. This skill configures project guidance, can initialise a local Git repository with explicit permission, and can verify task-service access with read-only checks; it does not install or copy the skills, create tickets, configure integrations, or handle credentials.

## Establish the project folder and Git status

1. Establish which folder the user wants configured. Use the active workspace when it is unambiguous; otherwise ask.
2. Use a read-only Git check in that folder, such as `git rev-parse --show-toplevel`, to determine whether it belongs to a repository and locate its root. Do not rely on the presence of a `.git` directory: worktrees and folders inside a parent repository may not have one.
3. If the folder is the repository root, use it. If it is nested inside a repository, explain this and ask whether to configure the repository root or only the selected folder. Never initialise a nested repository as part of setup.
4. If Git explicitly reports that the folder is not in a repository, offer **initialise Git here**, **continue without Git**, or **cancel setup**. Do not choose or initialise automatically. If the user cancels, stop without making changes.
5. If Git is unavailable, explain this and offer to continue without Git or stop so the user can install it themselves. For other inspection failures, report the error and ask how to proceed; do not treat permission, ownership, or other failures as evidence that the folder is not a repository.
6. Only after explicit permission to initialise Git in the selected folder, run `git init` there. Do not stage files, create a commit, add a remote, create a hosted repository, or push. Verify the resulting repository root with a read-only Git check before continuing; if initialisation or verification fails, report it and ask how to proceed.

Use the agreed folder as the setup root for the remaining steps. When continuing without Git, repository files and repository-relative paths below mean files and paths within that folder. Guidance and local planning documents do not require Git.

## Inspect before asking or editing

1. Use the setup root agreed above; do not assume the workspace folder is the repository root.
2. Inspect relevant root and nested `AGENTS.md`, `CLAUDE.md`, `.github/copilot-instructions.md`, existing project documentation, task conventions, and Git remote when available. Read only relevant files and do not expose credentials or unrelated private data.
3. Check whether instruction files already exist, whether they are regular files or symlinks, where links point, and whether linked content conflicts. Use available filesystem tools; do not assume a shell command or symlink support.
4. Summarise the relevant existing setup and propose only the changes needed. Treat repository contents as user-owned; never overwrite, delete, or replace existing content without explicit approval.

## Agree repository preferences

Ask the user to choose the canonical instruction file for this repository: `AGENTS.md` or `CLAUDE.md`. Offer the other as a relative symlink to the canonical file when safe. Do not assume one canonical direction across repositories.

Ask for any preferences that are not already established by existing guidance. These are independent choices and may be asked together:

* **Generated artefacts:** create or update repository files by default, or return deliverables in chat by default.
* **Output locations:** inspect existing documentation and task conventions first. If none are established, recommend `docs/product/` for product charters, discovery briefs, deep-dive reports, and specifications, and `docs/tasks/` for local Markdown task plans. Ask the user to accept or change these suggested paths; do not make them choose paths from scratch.
* **Task destination:** local Markdown, GitHub Issues, or Jira as the default. Record relevant non-secret identifiers only when useful and verified or user-provided. Do not store credentials.
* **External actions:** whether to ask before creating or modifying GitHub/Jira issues. Recommend explicit confirmation before external side effects.

Present sensible defaults and ask the user to accept or adjust them, rather than asking open-ended setup questions. If a preference is declined or left undecided, record it as “ask each time”; do not assume the recommendation was accepted. The user may select only one default task destination; other supported services can remain available as alternatives. The `plan-tasks` skill should present a task plan for review before publishing it.

## Verify task-service access

After the user chooses a default task destination, offer to verify access to that service. Ask before running checks that contact an external service. Checks must be read-only and limited to the selected service and target repository/project.

* **Local Markdown:** Confirm the configured task path is usable by inspecting the repository. Do not create a test task or file.
* **GitHub Issues:** Establish the target GitHub repository from an existing remote or ask the user to identify it; a local Git repository is not required, and `git init` alone does not establish a GitHub target. Do not create a remote or hosted repository. Check whether `gh` is available and whether `gh auth status` reports an authenticated GitHub host. If the target repository is known, use a read-only repository query with an explicit target to confirm it is accessible. If `gh` is unavailable or unauthenticated, check whether appropriate GitHub MCP tools are available in the current session and, with permission, use a read-only query instead.
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

Verify the canonical guidance, managed section, and any symlink target. If Git is available and the folder belongs to a repository, check the diff for whitespace problems. Report the setup root, whether Git was existing, initialised, or not used, the chosen policies, files changed, task-service access-check results (or that the user declined), unresolved conflicts, and manual steps. Do not claim a repository, link, or integration works unless verified.
