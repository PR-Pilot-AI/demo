# 📝 Demo: Code Review Summary for Github Repositories

Every developer knows the importance of code reviews:
- 🔍 Reviewing new pull requests
- 🛠️ Ensuring code quality and consistency
- ✅ Approving changes and merging them

With PR Pilot, you can automate the process of summarizing code reviews, creating a daily summary that you can read to catch up on the latest code changes and reviews.

## 🛠️ How it works

Running [run.sh](run.sh) will:

1. **📥 Collect Information**: PR Pilot gathers data from Github to summarize the latest code reviews from a list of Github repos
2. **📝 Generate Summary**: Using a template, PR Pilot organizes the information into a structured summary.
3. **💾 Deliver Summary**: The summary is saved as a Markdown file in `code-review-summaries/<OWNER>/<REPO>/<DATE>.md`

### 🤖 Automation

Instead of running the script manually, you can run it as a [Github Action to generate daily code review summaries](../.github/workflows/code-review-summary.yml) for your team.

## 📄 Example Output

Running the script might look something like this:

```bash
Generating summary for PR-Pilot-AI/demo
✔ Task created: 1c8d1b65-30a8-45b6-b737-38ac56306984 (0:00:00.00)
✔ Result saved in PR-Pilot-AI/demo/2024-06-20.md (0:00:13.58)
Generating summary for PR-Pilot-AI/pr-pilot
✔ Task created: 13c51b00-5e06-4ab7-af60-e62158e7d4c7 (0:00:00.00)
✔ Result saved in PR-Pilot-AI/pr-pilot/2024-06-20.md (0:00:19.90)
Generating summary for PR-Pilot-AI/pr-pilot-cli
✔ Task created: 2601efa5-07b8-4de4-b972-8fc49f29a80c (0:00:00.00)
✔ Result saved in PR-Pilot-AI/pr-pilot-cli/2024-06-20.md (0:00:22.01)
```

We're generating summaries daily in the [PR-Pilot-AI](PR-Pilot-AI) folder for you
so you can see what it looks like for some of our repositories:
- [PR Pilot Agent](PR-Pilot-AI/pr-pilot-cli)
- [PR Pilot Demos Repository](PR-Pilot-AI/demo)
- [PR Pilot Command-Line Interface](PR-Pilot-AI/pr-pilot)

## 🎨 Make it your own
This example is just a starting point. You can **customize the summary template and the information collected** to suit your needs.

Some ideas that might inspire you:
- 📬 Add instructions to **summarize new Slack messages** from a specific channel
- ✅ Include a section on **recently merged pull requests** to highlight progress
- 📢 **Post the summary to #code-reviews on Slack** for easy access
- 🔍 Add instructions to find **new Linear issues** created by your team
