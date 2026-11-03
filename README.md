# ai-skills

## Installation

Run from the project where you want to use the skills:

```sh
npx skills add YnotnaUK/ai-skills
```

Select the skills and agents to install for, then invoke `setup-ynotna-skills`
in your agent to configure repository preferences. Installation does not run
setup automatically.

## Workflow

Shape (optional) → Discovery → Deep Dive (if needed) → Specify → Plan Tasks.
After implementation, use `review-task` to check the work against the task's
acceptance criteria and linked requirements before accepting or requesting rework.
Reviews are read-only and returned in chat by default; they do not automatically
fix work or close tickets.

## Test installation with Docker

Build an isolated Node.js and Git environment:

```sh
docker build -f tests/docker/Dockerfile -t ai-skills-test .
```

Try the interactive installer in an empty project:

```sh
docker run --rm -it ai-skills-test
npx skills add YnotnaUK/ai-skills
```

Exit the shell to remove the container and its installed skills. Alternatively,
run the automated installation check:

```sh
docker run --rm ai-skills-test bash /opt/skills-smoke-test.sh
```

The check lists the published skills, installs all seven for Claude Code, and
verifies their instruction files and reference templates. It downloads from
GitHub, so local changes must be pushed before they can be tested this way.

No host directories, credentials, or Docker socket are mounted. Network access
is required for npm and GitHub; these commands assume the repository is public.
CLI telemetry and security-audit requests are disabled in this test image.
The image remains available for reuse, whilst each container is disposable.
This tests installation, not skill behaviour inside a running coding agent.