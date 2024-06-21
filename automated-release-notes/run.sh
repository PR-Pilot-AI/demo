#!/usr/bin/env bash
set -e

project="PR-Pilot-AI/demo"
version="v1.0.0"
output_dir="release-notes"
mkdir -p "$output_dir"

echo "Generating release notes for $project version $version"
pilot --no-sync --verbose --repo "$project" task -o "$output_dir/$version.md" -f generate-release-notes.md.jinja2
