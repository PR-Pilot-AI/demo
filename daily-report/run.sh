#!/usr/bin/env bash
set -e

projects=("PR-Pilot-AI/demo" "PR-Pilot-AI/pr-pilot" "PR-Pilot-AI/pr-pilot-cli")
today=$(date +'%Y-%m-%d')

for project in "${projects[@]}"; do
  echo "Generating report for $project"
  mkdir -p "$project"
  pilot --no-sync --verbose --no-spinner --repo "$project" task -o "$project/$today.md" -f generate-report.md.jinja2
done