# ⭐️ Generate PR Description & Title
Creating **good** PR descriptions is essential for effective collaboration,
but difficult in real life:
- Collecting and linking relevant context (tickets, etc) is **tedious**
- Ensuring the PR is understood by non-authors is **challenging**
- Enforcing team/org guidelines is **tough**

## 🎯 Goal
The goal of this demo is to show how PR Pilot can help you generate high-quality PR descriptions and titles by:
- **Analyzing the PR Content**: PR Pilot will analyze the changes in the PR to understand the context and purpose of the PR.
- **Generating Descriptions**: Based on the analysis, PR Pilot will generate a detailed description that includes relevant context and links to related issues or tickets.
- **Enforcing Rules and Guidelines**: PR Pilot will ensure that the description follows the team/org guidelines and includes all necessary information for reviewers.

This not only **saves you a lot of time**, but can **improve the quality and clarity of your PRs**, making the review process smoother and more efficient.

## 🛠️ How it works
The prompt template in [pr-description.md.jinja2](pr-description.md.jinja2) defines rules and guidelines that the 
generated content needs to follow:
- **Formatting**: emojis, bullet points, sections, headers, etc.
- **Context**: related issues, tickets, etc.
- **Language**: tone, style, etc.

It uses the `env('PR_NUMBER')` to ask you for the PR number when you run the command:

```shell
➜  demo git:(main) pilot run pr-description
> Pr number: 25
╭─────────────────────────────────────────────────── Result ────────────────────────────────────────────────────╮
│ Here is the updated PR #25 with the new title and description.                                                │
╰───────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
```

## Real-Life Examples

We use this prompt in all of our repositories. Here are some real-life examples:

- https://github.com/PR-Pilot-AI/demo/pull/25
- https://github.com/PR-Pilot-AI/pr-pilot-cli/pull/82
- https://github.com/PR-Pilot-AI/pr-pilot-cli/pull/81
- https://github.com/PR-Pilot-AI/pr-pilot/pull/174
- https://github.com/PR-Pilot-AI/pr-pilot/pull/173
