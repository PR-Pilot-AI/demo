#!/usr/bin/env bash
set -e

pr_number=$1

if [ -z "$pr_number" ]; then
  echo "Usage: $0 <pr_number>"
  exit 1
fi

output_dir="code-reviews"
mkdir -p "$output_dir"

output_file="$output_dir/$pr_number.md"

echo "Generating review for PR #$pr_number"
pilot --no-sync --verbose --pr "$pr_number" task -o "$output_file" -f review.md.jinja2
