# ai-skills

Product-planning and review skills for AI coding agents.

## Installation

### With Node.js

Run from your project:

```sh
npx skills add YnotnaUK/ai-skills
```

Select the skills and target agents when prompted.

### Manual installation (no Node.js or Git required)

For GitHub Copilot in VS Code, including Insiders:

1. [Open this repository](https://github.com/YnotnaUK/ai-skills) and select
   **Code → Download ZIP**, then extract it.
2. Copy the individual skill folders from `skills/` into one of these locations,
   creating the destination folder if needed:

   | Scope | Location |
   | --- | --- |
   | Personal, across projects (recommended for individual use) | `~/.copilot/skills/` |
   | Project, shared with contributors | `.github/skills/` inside your repository |

   On Windows, the personal location is `%USERPROFILE%\.copilot\skills\`.
   Insiders uses the same skill locations as stable VS Code.
3. Keep each complete skill folder, including `SKILL.md` and `references/`.
   For example, a personal installation should contain
   `~/.copilot/skills/discovery/SKILL.md`, not an extra `skills/` wrapper.
4. Start a fresh Copilot chat and type `/` to check that the skills appear.

For Claude Code, use `~/.claude/skills/` for personal skills or `.claude/skills/`
inside the project instead. See the [VS Code skill locations documentation](https://code.visualstudio.com/docs/agent-customization/agent-skills#_skill-locations).

To update a manual installation, download a fresh ZIP and replace only the skill
folders you installed from this repository, preserving any local customisations.

### Configure your project

After either installation method, invoke `setup-ynotna-skills` in your agent to
configure project preferences. Setup does not run automatically.

Git is optional. If the folder is not in a Git repository, setup offers to
initialise one with your explicit permission, continue without Git, or cancel.
Initialising only runs `git init`; it does not stage files, commit, add a remote,
or publish anything. If the folder is inside an existing repository, setup asks
whether to configure its root or only that folder rather than creating a nested
repository. Without Git, guidance and local planning documents still work;
GitHub Issues requires a separately identified GitHub repository.

## Workflow

Shape (optional) → Discovery → Deep Dive (if needed) → Specify → Plan Tasks.
After implementation, use `review-task` to check acceptance criteria and linked
requirements. Reviews are read-only and returned in chat by default; they do not
fix work or close tickets.

### Stage closure

Each skill tracks relevant questions and follow-up branches rather than treating
every reply as a complete answer. Before hand-off, it checks for missing answers,
contradictions, and newly opened branches, then asks you to confirm a concise
closure checklist and shared understanding.

Each branch must be resolved, explicitly excluded, or explicitly deferred with
your agreement. Deferrals record why, the next step, and what they block; they
are not treated as answers. Discovery can hand agreed investigations to Deep
Dive, but unresolved material blockers prevent downstream readiness. Provisional
specifications and task plans require an explicit request. A completed review
can report defects or missing evidence without implying acceptance. Setup
confirms its closure checklist and change plan before editing guidance.

## Test installation with Docker

Requires Docker, not a local Node.js installation. Build the image and run the
automated installation check:

```sh
docker build -f tests/docker/Dockerfile -t ai-skills-test .
docker run --rm ai-skills-test bash /opt/skills-smoke-test.sh
```

Or try the installer interactively:

```sh
docker run --rm -it ai-skills-test
npx skills add YnotnaUK/ai-skills
```

The check lists published skills, installs all seven for Claude Code, and verifies
their instruction files and reference templates. It tests the public GitHub
version, so push local changes first. It does not test agent behaviour.

No host directories, credentials, or Docker socket are mounted. Network access
to npm and GitHub is required. CLI telemetry and security-audit requests are
disabled. Containers and their installed skills are removed on exit; the image
remains available for reuse. This does not install skills on your host.