<div align="center">
<img src="https://avatars.githubusercontent.com/ml/17635?s=140&v=" width="100" alt="PR Pilot Logo">
</div>

<p align="center">
  <a href="https://github.com/apps/pr-pilot-ai/installations/new"><b>Install</b></a> |
  <a href="https://docs.pr-pilot.ai">Documentation</a> | 
  <a href="https://www.pr-pilot.ai/blog">Blog</a> | 
  <a href="https://www.pr-pilot.ai">Website</a>
</p>

# PR Pilot Demos

This repository contains demos and examples for showcasing the capabilities of [PR Pilot](https://docs.pr-pilot.ai/user_guide.html).

## How to Run

To run the demos:
1. Make sure you have the **[CLI installed](https://github.com/PR-Pilot-AI/pr-pilot-cli)**
2. **[Fork this repository](https://github.com/PR-Pilot-AI/demo/fork)**

Then, you can run the demos by following the instructions in each demo's directory.

## Demos

The following demos showcase how your can delegate routine work to PR Pilot with confidence and predictability,
saving you time and helping you stay in the flow:

| Demo                                                     | Description                                                                              |
|----------------------------------------------------------|------------------------------------------------------------------------------------------|
| 📝 **[Daily Reports](daily-report)**                     | Generate daily digests for Github, Linear, Slack and more!                               |
| 🎮 **[Game of Life with PR Pilot](game-of-life)**        | Implement Conway's Game of Life with PR Pilot.                                           |
| 📸 **[Screenshot to Code](screenshot-to-code)**          | Convert a screenshot of something into UI component in seconds.                          |
| 🧪 **[Analyze unit test results](analyze-test-results)** | Analyze the output of unit tests, understand what caused them to fail and suggest fixes. |
| 📦 **[Generate-Rank-Select](generate-rank-select)**      | Generate new ideas, evaluate and rank them and find the best one for your needs.         |
| 📚 **[Generate Dummy Content](generate-dummy-content)**  | Quick and flexible dummy content generation for testing purposes.                        |
| 🛠 **[Config File Madness](config-file-madness)**        | You'll never ever write a build file by hand ever again.                                 |
| 📊 **[Multi-Search](multi-search)**                      | Run a search across services like Github, Slack, and your codebase.                      |

Each directory contains a README with instructions on how to run the demo.

## Quick Access

Some of the demos are saved as commands in [.pilot-commands.yaml](.pilot-commands.yaml). You can 
import them into your own repo with:

```shell
pilot grab commands pr-pilot-ai/demo
```

Then, you can run the demos with `pilot run <command>`:

```shell
Usage: pilot run [OPTIONS] COMMAND [ARGS]...

  🚀 Run a saved command.

  Create new commands by using the --save-command flag when running a task.

Options:
  --help  Show this message and exit.

Commands:
  cfg-file-conversion  Generate a config file based on existing files
  dummy-content        Generate dummy content in any format for any purpose
  pr-description       Generate PR Title & Description
  react-component      Take a screenshot and generate a React component...
  search               Run a search query across Github issues, Slack...
  test-analysis        Run the unit tests and analyze the output

```