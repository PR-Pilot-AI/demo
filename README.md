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

This repository contains demos and examples for showcasing the capabilities of [PR Pilot](https://docs.pr-pilot.ai/user_guide.html) to help you:
* **Save time** by automating routine tasks
* **Stay in the flow** by delegating work to PR Pilot from [anywhere](https://docs.pr-pilot.ai/user_guide.html#python-sdk)
* **Avoid context switching** by [integrating](https://docs.pr-pilot.ai/integrations.html) with your existing tools and services

## How to Run

To run the demos:
1. Make sure you have the **[CLI installed](https://github.com/PR-Pilot-AI/pr-pilot-cli)** and created an **[API key](https://app.pr-pilot.ai/dashboard/api-keys/)**
2. **[Fork this repository](https://github.com/PR-Pilot-AI/demo/fork)**
3. **[Invite PR Pilot](https://github.com/apps/pr-pilot-ai/installations/new)** to your forked repository

Then, you can run the demos by following the instructions in each demo's directory.

## Demos

The following demos showcase how PR Pilot **solves common tasks developers have to do on a daily basis**:

| Demo                                                    | Description                                                                              |
|---------------------------------------------------------|------------------------------------------------------------------------------------------|
| ⭐️ **[PR Descriptions](pr-description)**                | Create consistent, high-quality PR descriptions in seconds                               |
| 🐞 **[Instant Bug Ticket](instant-bug-ticket)**         | Create bug tickets when and where they happen - instantly                                |
| 💬 **[Conversations](conversation)**                    | Chat with PR Pilot, save conversations and share them with your team                     |
| 🐛 **[Sentry Error Analysis](error-analysis)**          | Quickly analyze and fix Sentry issues from the command line                              |
| 📝 **[Daily Reports](daily-report)**                    | Generate daily digests for Github, Linear, Slack and more!                               |
| 📊 **[Multi-Search](multi-search)**                     | Run a search across services like Github, Slack, and your codebase.                      |
| 📸 **[Screenshot to Code](screenshot-to-code)**         | Convert a screenshot of something into UI component in seconds.                          |
| 🧪 **[Analyze test results](analyze-test-results)**     | Analyze the output of unit tests, understand what caused them to fail and suggest fixes. |
| 🎨 **[Style Guidelines](style-guidelines)**             | Extract style guidelines from different sources and apply them to your documents.        |
| 🛠 **[Config File Madness](config-file-madness)**       | You'll never _ever_ write a single build file by hand ever again.                        |
| 📦 **[Generate-Rank-Select](generate-rank-select)**     | Generate new ideas, evaluate and rank them and find the best one for your needs.         |
| 📚 **[Generate Dummy Content](generate-dummy-content)** | Quick and flexible dummy content generation for testing purposes.                        |
| 🎮 **[Game of Life with PR Pilot](game-of-life)**       | Implement Conway's Game of Life with PR Pilot.                                           |
| 🌟 **[Search Protobufs](search-protobufs)**             | Perform semantic search over files in a repository, focusing on protobuf files.          |

Each directory contains a README with instructions on how to run the demo.

## Grab a Command

Some of the demo prompts are saved as [commands](https://docs.pr-pilot.ai/user_guide.html#sharing-and-importing-commands). You can 
**easily transfer them into other repos** with a single command:

```shell
pilot grab commands pr-pilot-ai/demo
```

Then, you can customize and run them with `pilot run <command>`:

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
