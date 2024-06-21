#!/usr/bin/env bash
set -e

pr_number=$1
output_file="pr_summary.md"

echo "Generating summary for PR #$pr_number"
pilot --no-sync --verbose --repo "PR-Pilot-AI/demo" task -o "$output_file" -f summarize-pr.md.jinja2 --pr-number "$pr_number"
