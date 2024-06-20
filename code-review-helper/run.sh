#!/usr/bin/env bash
set -e

projects=("PR-Pilot-AI/demo" "PR-Pilot-AI/pr-pilot" "PR-Pilot-AI/pr-pilot-cli")
today=$(date +'%Y-%m-%d')

for project in "${projects[@]}"; do
  echo "Reviewing code for $project"
  mkdir -p "$project"
  pilot --no-sync --verbose --repo "$project" task -o "$project/review-$today.md" -f review-template.md.jinja2
done
