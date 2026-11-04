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
configure repository preferences. Setup does not run automatically.

## Workflow

Shape (optional) → Discovery → Deep Dive (if needed) → Specify → Plan Tasks.
After implementation, use `review-task` to check acceptance criteria and linked
requirements. Reviews are read-only and returned in chat by default; they do not
fix work or close tickets.

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