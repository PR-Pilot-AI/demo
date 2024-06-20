#!/usr/bin/env bash
set -e

project="PR-Pilot-AI/demo"
today=$(date +'%Y-%m-%d')

mkdir -p "$project"
echo "Running code review for $project"
pilot --no-sync --verbose --repo "$project" task -o "$project/$today-code-review.md" -f code-review-report.md.jinja2
