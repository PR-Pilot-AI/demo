# Automated Code Review Summarizer

## Overview
This demo showcases how PR Pilot can automate the process of summarizing code changes in pull requests. By analyzing the diffs, identifying key changes, and highlighting potential issues, PR Pilot provides a concise summary that helps developers quickly understand the impact of the PR.

## How It Works
1. **Collect Information**: The CLI gathers data from the specified pull request.
2. **Generate Summary**: Using a Jinja template, the CLI organizes the collected data into a structured summary.
3. **Deliver Summary**: The summary is saved as a Markdown file.

## Benefits
- **Time-Saving**: Automates the process of reviewing code changes.
- **Consistency**: Ensures thorough and consistent code reviews.
- **Customization**: Users can customize the summary template.
- **Integration**: Can be run as a Github Action.

## Usage
1. Place the `summarize-pr.md.jinja2` template and `run.sh` script in the `automated-code-review-summarizer` directory.
2. Run the script with the pull request number as an argument:
   ```bash
   ./run.sh <pr_number>
   ```

## Files
- `summarize-pr.md.jinja2`: Jinja template for generating the summary.
- `run.sh`: Script to run the PR Pilot CLI command.
