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
