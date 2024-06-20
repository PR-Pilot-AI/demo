# 🔍 Demo: Automated Code Review

Every developer knows the importance of code reviews, but they can be time-consuming and sometimes tedious. With PR Pilot, you can automate the initial code review process, allowing you to focus on the more critical aspects of the review.

## 🛠️ How it works

Running [run.sh](run.sh) will:

1. **📥 Collect Information**: PR Pilot gathers data from the pull request, including the code changes and any related issues.
2. **📝 Generate Review**: Using a template, PR Pilot analyzes the code changes and generates a review report.
3. **💾 Deliver Review**: The review report is saved as a Markdown file in `code-reviews/<PR_NUMBER>.md`

### 🤖 Automation

Instead of running the script manually, you can run it as a [Github Action to generate code reviews](../.github/workflows/code-review.yml) for your team.

## 📄 Example Output

Running the script might look something like this:

```bash
Generating review for PR #42
✔ Task created: 1c8d1b65-30a8-45b6-b737-38ac56306984 (0:00:00.00)
✔ Result saved in code-reviews/42.md (0:00:13.58)
```

## 🎨 Make it your own
This example is just a starting point. You can **customize the review template and the information collected** to suit your needs.

Some ideas that might inspire you:
- 📬 Add instructions to **summarize new comments** from the pull request
- ✅ Include a section on **potential issues or improvements**
- 📢 **Post the review to #code-reviews on Slack** for easy access
- 🔍 Add instructions to find **related issues or pull requests**
