# Automated Release Notes Generation

## Overview
This demo showcases how to use PR Pilot CLI to automate the generation of release notes for new software versions. By collecting information from GitHub issues, pull requests, and commit messages, PR Pilot can create a structured release notes document, saving developers time and ensuring consistency.

## How It Works
1. **Collect Information**: The CLI gathers data from GitHub issues, pull requests, and commit messages.
2. **Generate Release Notes**: Using a Jinja template, the CLI organizes the collected data into a structured release notes document.
3. **Save Release Notes**: The release notes are saved as a Markdown file in a designated directory.

## Benefits
- **Time-Saving**: Automates the process of gathering and summarizing information for release notes.
- **Consistency**: Ensures that the release notes are generated in a consistent format.
- **Customization**: Users can customize the release notes template and the information collected to suit their specific needs.
- **Integration**: Can be run as a GitHub Action for seamless integration into the development workflow.

## Usage
1. **Run the Script**:
    ```bash
    ./run.sh
    ```

2. **Customize the Template**:
    - Modify the `generate-release-notes.md.jinja2` file to change the format and content of the release notes.

## Files
- `generate-release-notes.md.jinja2`: Jinja template for generating release notes.
- `run.sh`: Script to run the PR Pilot CLI and generate release notes.
