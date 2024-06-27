#!/usr/bin/env bash
set -e

extract_langchain() {
  export URL=https://raw.githubusercontent.com/langchain-ai/langchain/master/README.md
  pilot run extract-style -o styles/langchain.md
}

extract_spring_boot() {
  export URL=https://raw.githubusercontent.com/spring-projects/spring-boot/main/README.adoc
  pilot run extract-style -o styles/spring-boot.md
}

extract_pr_pilot_cli() {
  export URL=https://github.com/PR-Pilot-AI/pr-pilot-cli/blob/main/README.md
  pilot run extract-style -o styles/pr-pilot.md
}

apply_style_guidelines() {
  # Select the style guidelines to apply
  export GUIDELINE_FILE=styles/pr-pilot.md
  # Select the file to apply the style guidelines to
  export DOCUMENT_FILE=README.md
  # Apply the PR Pilot style guidelines to the README.md file in this demo
  pilot run apply-style -o $DOCUMENT_FILE
}

transfer_style_guidelines() {
  # Select the source for the style guidelines
  export URL=https://github.com/PR-Pilot-AI/pr-pilot-cli/blob/main/README.md
  # Select the file to apply the style guidelines to
  export DOCUMENT_FILE=README.md
  # Apply the PR Pilot style guidelines to the README.md file repo
  pilot --verbose task -f transfer-style.md.jinja2
}

extract_langchain
extract_spring_boot
extract_pr_pilot_cli

apply_style_guidelines

transfer_style_guidelines