# 🔍 Multi-Search
PR Pilot can act as your personal search agent. In this demo, you'll learn how 
you can easily run a search across services like Github, Slack, and your codebase
and get a beautifully formatted list of results.

## 🛠️ How it works

In [multi-search.md.jinja2](multi-search.md.jinja2), you'll find the prompt:

```markdown
I want to search for "{{ env('SEARCH_QUERY') }}" across multiple sources.

1. 🔎 Search for Github issues / PRs
2. 💬 Search for Slack messages
3. 📂 Search for files in our code
4. 📋 Respond with a condensed list of links to the respective results.
```

It's as easy as that! The run script will ask you for a search query, and then
it will search across the specified sources and provide you with a condensed list:

```shell
➜  multi-search git:(main) ✗ ./run.sh     
> Search query: docker-compose
✔ Task created: c5ac240f-b6ea-49e3-b691-71012292f843 (0:00:00.00)
✔ Implement search functionality for "docker-compose" across multiple sources and provide condensed list of links to results (0:00:15.55)
╭────────────────────────────────────────────────────────── Result ──────────────────────────────────────────────────────────╮
│ Here are the results for the search query "docker-compose" across multiple sources:                                        │
│                                                                                                                            │
│                                                    Github Issues / PRs                                                     │
│                                                                                                                            │
│  1 🔧 Add docker-compose.yml for pr-pilot-cli with Redis service                                                           │
│  2 ✨ New Demo: Automated Docker Compose File Generation                                                                   │
│                                                                                                                            │
│                                                       Slack Messages                                                       │
│                                                                                                                            │
│  1 Daily Digest for PR-Pilot Projects on 2024-06-26                                                                        │
│  2 Daily Digest for PR-Pilot Projects on 2024-06-25                                                                        │
│  3 Daily Digest for PR-Pilot Projects on 2024-06-22                                                                        │
│  4 Daily Digest for PR-Pilot-AI Projects on 2024-06-21                                                                     │
│  5 Daily Report for 2024-06-21                                                                                             │
│  6 Daily Report for 2024-06-21                                                                                             │
│  7 Daily Report for 2024-06-21                                                                                             │
│                                                                                                                            │
│                                                         Code Files                                                         │
│                                                                                                                            │
│ An error occurred while searching for "docker-compose" in the code files. The directory or files might not exist.          │
│                                                                                                                            │
│ Feel free to explore these links for more details! 🚀                                                                      │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯

```

# 🎨 Make it your own!
Here are some ideas for how you can customize this demo for your own purposes:
* **💾 Save it as a command**: Use the `--save-command` option to run this search via `pilot run search`
* **➕ Add more sources**: Add more sources to search across, such as Linear or JIRA
* **🖌️ Customize the output**: Change the formatting of the results to suit your needs
* **🔍 Grab it for your repo**: Run `pilot grab commands pr-pilot-ai/demo` and select `multi-search` to add this command to your repository