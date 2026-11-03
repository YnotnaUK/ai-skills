# Repository guidance section

Use the following managed section in the selected canonical agent-instructions file. Replace bracketed values with the user's agreed preferences. Keep other instructions in the file intact.

```markdown
<!-- ynotna-skills:begin -->
## Ynotna skills preferences

- **Deliverables:** [Create/update repository files by default / Return in chat by default / Ask each time]
- **Product documents:** [Repository-relative path / Ask each time]
- **Local Markdown tasks:** [Repository-relative path / Not used / Ask each time]
- **Default task destination:** [Local Markdown / GitHub Issues / Jira / Ask each time]
- **External issue actions:** [Ask for confirmation / Follow existing project policy / Ask each time]
- **Service identifiers:** [Non-secret repository, organisation, Jira site, or project identifiers if verified or supplied; omit otherwise]
<!-- ynotna-skills:end -->
```

Only include a service identifier when it is necessary, non-sensitive, and verified from the repository or provided by the user. Never include tokens, passwords, private keys, or other credentials.

When rerunning setup, update only the content between the exact markers. If one marker is missing, duplicated, or reversed, stop and ask before editing. If the markers are absent, append the section without changing existing text.
