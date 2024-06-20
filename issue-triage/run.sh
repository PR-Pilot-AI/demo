#!/usr/bin/env bash
set -e

projects=("PR-Pilot-AI/demo" "PR-Pilot-AI/pr-pilot" "PR-Pilot-AI/pr-pilot-cli")
today=$(date +'%Y-%m-%d')

for project in "${projects[@]}"; do
  echo "Triaging issues for $project"
  mkdir -p "$project"
  pilot --no-sync --verbose --repo "$project" task -o "$project/triage-report-$today.md" -f generate-triage.md.jinja2
  echo "✔ Result saved in $project/triage-report-$today.md"
done
