# 🚀 Demo: Generate New Demo Script

In this experimental demo, we'll explore how to create a script that comes up with new demo ideas based on existing demos.

## 🛠️ How it works

Running [run.sh](run.sh) will:

1. **📂 Analyze Existing Demos**: PR Pilot will analyze the existing demos in the repository to understand the pain points they solve, how the PR Pilot CLI helps, and the main benefits for the user.
2. **🔍 Search for Examples**: PR Pilot will search the internet for specific examples in which developers use LLMs to improve their daily workflows.
3. **🧠 Imagine New Demos**: Based on the existing demos and the examples found, PR Pilot will generate three new demo ideas!

## 📄 Example Output

Running the script might look something like this:

```bash
Analysis for game-of-life demo exists. Skipping...
Analysis for daily-report demo exists. Skipping...
✔ Running shell command: ['cat', 'analysis/daily-report.md'] (0:00:00.00)
✔ Running shell command: ['cat', 'analysis/game-of-life.md'] (0:00:00.00)
✔ Research and compile examples of developers using LLMs to enhance daily workflows (0:00:13.42)
✔ Task created: 3ee9946b-6a06-4b64-aa21-3b66828a23f1 (0:00:00.00)
✔ Create New PR Pilot Demos for Developer Workflow Enhancement (0:00:24.14)
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Here are three new demo ideas for PR Pilot that meet the specified criteria:                                                                                                                                                    │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                              1. Automated Release Notes Generation                                                                                              │
│                                                                                                                                                                                                                                 │
│                                                                                                      Developer Pain Point                                                                                                       │
│                                                                                                                                                                                                                                 │
│ Manually compiling release notes from merged pull requests and issues can be tedious and error-prone. Developers often need to summarize changes, categorize them, and ensure that all relevant updates are included.           │
│                                                                                                                                                                                                                                 │
│                                                                                                     How PR Pilot CLI Helps                                                                                                      │
│                                                                                                                                                                                                                                 │
│ The PR Pilot CLI can automate the process of generating release notes by collecting information from merged pull requests and issues, categorizing them, and formatting them into a structured document.                        │
│                                                                                                                                                                                                                                 │
│                                                                                                      Detailed Illustration                                                                                                      │
│                                                                                                                                                                                                                                 │
│  1 Collect Information:                                                                                                                                                                                                         │
│                                                                                                                                                                                                                                 │
│     pilot --sync --verbose task "Collect all merged pull requests and closed issues since the last release."                                                                                                                    │
│                                                                                                                                                                                                                                 │
│  2 Generate Release Notes:                                                                                                                                                                                                      │
│                                                                                                                                                                                                                                 │
│     pilot --sync --verbose task -o "release-notes.md" -f generate-release-notes.md.jinja2                                                                                                                                       │
│                                                                                                                                                                                                                                 │
│  3 Jinja Template for Release Notes:                                                                                                                                                                                            │
│                                                                                                                                                                                                                                 │
│     # Release Notes for <version>                                                                                                                                                                                               │
│                                                                                                                                                                                                                                 │
│     ## New Features                                                                                                                                                                                                             │
│     {% for pr in pull_requests if 'feature' in pr.labels %}                                                                                                                                                                     │
│     - {{ pr.title }} ([#{{ pr.number }}]({{ pr.html_url }}))                                                                                                                                                                    │
│     {% endfor %}                                                                                                                                                                                                                │
│                                                                                                                                                                                                                                 │
│     ## Bug Fixes                                                                                                                                                                                                                │
│     {% for issue in issues if 'bug' in issue.labels %}                                                                                                                                                                          │
│     - {{ issue.title }} ([#{{ issue.number }}]({{ issue.html_url }}))                                                                                                                                                           │
│     {% endfor %}                                                                                                                                                                                                                │
│                                                                                                                                                                                                                                 │
│     ## Improvements                                                                                                                                                                                                             │
│     {% for pr in pull_requests if 'improvement' in pr.labels %}                                                                                                                                                                 │
│     - {{ pr.title }} ([#{{ pr.number }}]({{ pr.html_url }}))                                                                                                                                                                    │
│     {% endfor %}                                                                                                                                                                                                                │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                                   Main Benefits for the User                                                                                                    │
│                                                                                                                                                                                                                                 │
│  • Time-Saving: Automates the compilation of release notes.                                                                                                                                                                     │
│  • Consistency: Ensures a consistent format for every release.                                                                                                                                                                  │
│  • Customization: Users can customize the template to fit their specific needs.                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                             2. Automated Dependency Update Checker                                                                                              │
│                                                                                                                                                                                                                                 │
│                                                                                                      Developer Pain Point                                                                                                       │
│                                                                                                                                                                                                                                 │
│ Keeping dependencies up-to-date is crucial for security and performance, but manually checking for updates and testing them can be time-consuming.                                                                              │
│                                                                                                                                                                                                                                 │
│                                                                                                     How PR Pilot CLI Helps                                                                                                      │
│                                                                                                                                                                                                                                 │
│ The PR Pilot CLI can automate the process of checking for dependency updates, creating pull requests for updates, and running tests to ensure compatibility.                                                                    │
│                                                                                                                                                                                                                                 │
│                                                                                                      Detailed Illustration                                                                                                      │
│                                                                                                                                                                                                                                 │
│  1 Check for Updates:                                                                                                                                                                                                           │
│                                                                                                                                                                                                                                 │
│     pilot --sync --verbose task "Check for updates to dependencies in pyproject.toml."                                                                                                                                          │
│                                                                                                                                                                                                                                 │
│  2 Create Pull Requests:                                                                                                                                                                                                        │
│                                                                                                                                                                                                                                 │
│     pilot --sync --verbose task "Create a pull request for each updated dependency."                                                                                                                                            │
│                                                                                                                                                                                                                                 │
│  3 Run Tests:                                                                                                                                                                                                                   │
│                                                                                                                                                                                                                                 │
│     pilot --sync --verbose task "Run tests to ensure compatibility with updated dependencies."                                                                                                                                  │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                                   Main Benefits for the User                                                                                                    │
│                                                                                                                                                                                                                                 │
│  • Automation: Automates the process of checking for and updating dependencies.                                                                                                                                                 │
│  • Error Handling: Ensures that updates do not break the build by running tests.                                                                                                                                                │
│  • Security: Keeps dependencies up-to-date, reducing security vulnerabilities.                                                                                                                                                  │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                                3. Automated Documentation Update                                                                                                │
│                                                                                                                                                                                                                                 │
│                                                                                                      Developer Pain Point                                                                                                       │
│                                                                                                                                                                                                                                 │
│ Keeping documentation up-to-date with the latest code changes is often neglected, leading to outdated or missing information.                                                                                                   │
│                                                                                                                                                                                                                                 │
│                                                                                                     How PR Pilot CLI Helps                                                                                                      │
│                                                                                                                                                                                                                                 │
│ The PR Pilot CLI can automate the process of updating documentation by extracting comments and docstrings from the code and generating updated documentation files.                                                             │
│                                                                                                                                                                                                                                 │
│                                                                                                      Detailed Illustration                                                                                                      │
│                                                                                                                                                                                                                                 │
│  1 Extract Comments and Docstrings:                                                                                                                                                                                             │
│                                                                                                                                                                                                                                 │
│     pilot --sync --verbose task "Extract comments and docstrings from the codebase."                                                                                                                                            │
│                                                                                                                                                                                                                                 │
│  2 Generate Documentation:                                                                                                                                                                                                      │
│                                                                                                                                                                                                                                 │
│     pilot --sync --verbose task -o "docs/updated_docs.md" -f generate-docs.md.jinja2                                                                                                                                            │
│                                                                                                                                                                                                                                 │
│  3 Jinja Template for Documentation:                                                                                                                                                                                            │
│                                                                                                                                                                                                                                 │
│     # Updated Documentation                                                                                                                                                                                                     │
│                                                                                                                                                                                                                                 │
│     {% for file in files %}                                                                                                                                                                                                     │
│     ## {{ file.name }}                                                                                                                                                                                                          │
│     {% for comment in file.comments %}                                                                                                                                                                                          │
│     - {{ comment }}                                                                                                                                                                                                             │
│     {% endfor %}                                                                                                                                                                                                                │
│     {% endfor %}                                                                                                                                                                                                                │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│                                                                                                   Main Benefits for the User                                                                                                    │
│                                                                                                                                                                                                                                 │
│  • Automation: Keeps documentation up-to-date with minimal effort.                                                                                                                                                              │
│  • Consistency: Ensures that documentation is consistent with the latest code changes.                                                                                                                                          │
│  • Customization: Users can customize the template to fit their specific documentation needs.                                                                                                                                   │
│                                                                                                                                                                                                                                 │
│ These demos showcase how PR Pilot can automate various aspects of a developer's daily workflow, saving time and ensuring consistency.                                                                                           │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
➜
```
