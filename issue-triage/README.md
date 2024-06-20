# 🛠️ Demo: Automated Issue Triage for Github Repositories

Every developer knows the pain of managing a growing list of issues:
- 🐛 Identifying and labeling new issues
- 🔍 Prioritizing bugs and feature requests
- 📊 Keeping track of issue status and progress
- etc

With PR Pilot, you can automate the process of triaging issues, ensuring that new issues are properly labeled and prioritized, and that you have a clear overview of the current state of your project.

## 🛠️ How it works

Running [run.sh](run.sh) will:

1. **📥 Collect Information**: PR Pilot gathers data from Github to identify new and updated issues.
2. **🏷️ Label Issues**: Using a template, PR Pilot assigns appropriate labels to new issues based on their content.
3. **📊 Generate Triage Report**: A summary report is created, highlighting the most critical issues and their current status.

### 🤖 Automation

Instead of running the script manually, you can run it as a [Github Action to automate issue triage](../.github/workflows/issue-triage.yml) for your team.

## 📄 Example Output

Running the script might look something like this:

```bash
Triaging issues for PR-Pilot-AI/demo
✔ Task created: 1c8d1b65-30a8-45b6-b737-38ac56306984 (0:00:00.00)
✔ Result saved in PR-Pilot-AI/demo/triage-report-2024-06-20.md (0:00:13.58)
Triaging issues for PR-Pilot-AI/pr-pilot
✔ Task created: 13c51b00-5e06-4ab7-af60-e62158e7d4c7 (0:00:00.00)
✔ Result saved in PR-Pilot-AI/pr-pilot/triage-report-2024-06-20.md (0:00:19.90)
Triaging issues for PR-Pilot-AI/pr-pilot-cli
✔ Task created: 2601efa5-07b8-4de4-b972-8fc49f29a80c (0:00:00.00)
✔ Result saved in PR-Pilot-AI/pr-pilot-cli/triage-report-2024-06-20.md (0:00:22.01)
```

We're generating triage reports daily in the [PR-Pilot-AI](PR-Pilot-AI) folder for you so you can see what it looks like for some of our repositories:
- [PR Pilot Agent](PR-Pilot-AI/pr-pilot-cli)
- [PR Pilot Demos Repository](PR-Pilot-AI/demo)
- [PR Pilot Command-Line Interface](PR-Pilot-AI/pr-pilot)

## 🎨 Make it your own
This example is just a starting point. You can **customize the triage template and the information collected** to suit your needs.

Some ideas that might inspire you:
- 📬 Add instructions to **summarize new Slack messages** from a specific channel
- ✅ Include a section on **recently closed issues** to highlight progress
- 📢 **Post the triage report to #triage-reports on Slack** for easy access
- 🔍 Add instructions to find **new Linear issues** created by your team
