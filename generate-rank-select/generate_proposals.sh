#!/usr/bin/env bash
set -e
mkdir -p analysis
# Analyze existing demos and save results in analysis/<demo>.md
demo_dirs=("daily-report" "screenshot-to-code" "analyze-test-results")
for demo_dir in "${demo_dirs[@]}"; do

  # Only run if file doesnt exist
  if [ -f "analysis/$demo_dir.md" ]; then
    echo "Analysis for $demo_dir demo exists. Skipping..."
    continue
  fi
  echo "Analyze $demo_dir demo"
  DEMO_DIR=$demo_dir pilot --no-sync --verbose task -f understand-existing-demo.md.jinja2 -o "analysis/$demo_dir.md"
done

# Generate demo proposals
date_time_str=$(date +'%Y-%m-%d-%H-%M-%S')
pilot --no-sync --verbose task --code -o "proposals/$date_time_str.md" -f generate-demo-proposal.md.jinja2