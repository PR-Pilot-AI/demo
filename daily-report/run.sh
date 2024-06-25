#!/usr/bin/env bash
set -e

projects=("PR-Pilot-AI/demo" "PR-Pilot-AI/pr-pilot" "PR-Pilot-AI/pr-pilot-cli")
today=$(date +'%Y-%m-%d')

for project in "${projects[@]}"; do
  echo "Generating report for $project"
  mkdir -p "$project"
  file_path="$project/$today.md"
  # Only generate report if it doesn't exist, print a skip message otherwise
  if [ ! -f "$file_path" ]; then
    pilot --no-sync --verbose --no-spinner --repo "$project" task -o "$file_path" -f generate-report.md.jinja2
  else
    echo "Skipping $file_path, already exists"
  fi
done

# Combine all generated files into one
for project in "${projects[@]}"; do
  cat "$project/$today.md" >> "$today.md"
  echo -e "\n\n" >> "$today.md"
done

full_report_content=$(cat "$today.md")
prompt="We generated the following reports for today: $full_report_content. \
Merge all reports along topics into a single, compact, daily digest and send it to #daily-reports on Slack. \
Guidelines: \
- Start with an executive summary
- Do not just list the reports, but merge the content into a coherent blocks revolving around common topics \
- '#' (sub)headers are not supported by Slack, use other formatting methods to make it visually appealing. \
- If multiple reports cover the same topic, merge them into a single section. "
pilot --no-sync --verbose --no-spinner task "$prompt"
