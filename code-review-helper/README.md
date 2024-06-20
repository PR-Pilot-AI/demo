# 🛠️ Demo: Code Review Helper

Every developer knows the pain of code reviews:
- 🕵️‍♂️ Finding the right files to review
- 📝 Ensuring coding standards are met
- 🔄 Keeping track of requested changes

With PR Pilot, you can automate the process of reviewing code, ensuring that all coding standards are met, and keeping track of requested changes.

## 🚀 How it works

Running [run.sh](run.sh) will:

1. **🔍 Identify Files**: PR Pilot identifies the files that need to be reviewed based on recent changes.
2. **📝 Review Code**: Using a template, PR Pilot reviews the code for coding standards and best practices.
3. **📋 Track Changes**: PR Pilot keeps track of requested changes and ensures they are addressed.

### 🤖 Automation

Instead of running the script manually, you can run it as a [Github Action to automate code reviews](../.github/workflows/code-review-helper.yml) for your team.

## 📄 Example Output

Running the script might look something like this:

```bash
Reviewing code for PR-Pilot-AI/demo
✔ Task created: 1c8d1b65-30a8-45b6-b737-38ac56306984 (0:00:00.00)
✔ Result saved in PR-Pilot-AI/demo/review-2024-06-20.md (0:00:13.58)
Reviewing code for PR-Pilot-AI/pr-pilot
✔ Task created: 13c51b00-5e06-4ab7-af60-e62158e7d4c7 (0:00:00.00)
✔ Result saved in PR-Pilot-AI/pr-pilot/review-2024-06-20.md (0:00:19.90)
Reviewing code for PR-Pilot-AI/pr-pilot-cli
✔ Task created: 2601efa5-07b8-4de4-b972-8fc49f29a80c (0:00:00.00)
✔ Result saved in PR-Pilot-AI/pr-pilot-cli/review-2024-06-20.md (0:00:22.01)
```

We're generating reviews daily in the [PR-Pilot-AI](PR-Pilot-AI) folder for you so you can see what it looks like for some of our repositories:
- [PR Pilot Agent](PR-Pilot-AI/pr-pilot-cli)
- [PR Pilot Demos Repository](PR-Pilot-AI/demo)
- [PR Pilot Command-Line Interface](PR-Pilot-AI/pr-pilot)

## 🎨 Make it your own
This example is just a starting point. You can **customize the review template and the information collected** to suit your needs.

Some ideas that might inspire you:
- 📬 Add instructions to **summarize new Slack messages** from a specific channel
- ✅ Include a section on **recently closed issues** to highlight progress
- 📢 **Post the review to #code-reviews on Slack** for easy access
- 🔍 Add instructions to find **new Linear issues** created by your team
