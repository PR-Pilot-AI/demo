# Weekly Commit Summary and Slack Notification

## Overview
This demo showcases how to use PR Pilot CLI to automate the process of summarizing the commit history of the past week, relating it to relevant Github issues, and sending the summary to a Slack channel.

## How It Works
1. **Collect Commit History**: The CLI gathers commit history from the specified repository for the past week.
2. **Relate to Github Issues**: It relates the commits to relevant Github issues.
3. **Generate Summary**: Using a Jinja template, the CLI organizes the collected data into a structured summary.
4. **Send to Slack**: The summary is sent to a specified Slack channel.

## Benefits
- **Time-Saving**: Automates the routine of gathering and summarizing commit history.
- **Consistency**: Ensures that the summary is generated in a consistent format every week.
- **Integration**: Can be run as a Github Action for seamless integration into the development workflow.
- **Communication**: Keeps the team informed with minimal effort by sending updates to Slack.

## Files
- `generate-summary.md.jinja2`: Jinja template for generating the summary.
- `run.sh`: Script to generate the summary and send it to Slack.

## Usage
1. Customize the `generate-summary.md.jinja2` template as needed.
2. Run the `run.sh` script to generate the summary and send it to Slack.

## Example
```bash
#!/usr/bin/env bash
set -e

repo="PR-Pilot-AI/demo"
channel="#weekly-updates"
today=$(date +'%Y-%m-%d')

echo "Generating weekly commit summary for $repo"
mkdir -p "weekly-summary"
pilot --no-sync --verbose --repo "$repo" task -o "weekly-summary/$today.md" -f generate-summary.md.jinja2

echo "Sending summary to Slack channel $channel"
summary=$(cat "weekly-summary/$today.md")
pilot --no-sync --verbose task "Send the following summary to the Slack channel $channel: $summary"
```
