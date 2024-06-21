# 🚀 Demo: Content Generation and Ranking with PR Pilot

In this experimental demo, we'll explore you can use PR Pilot in creative ways to 
come up with new ideas, evaluate and rank these ideas and find the one that best fits your needs.


## 🎯 Goal
This can be done with any goal in mind, but for this demo, we'll focus on **generating new interesting use cases for PR Pilot**.

Our **quality criteria** are as follows:
- It must make sense in the real world - no sci-fi ideas or hallucinations
- Any developer reading the proposal should see the value in it
- The proposal stays within the boundaries of what PR Pilot can do

## 🛠️ How it works

The achieve these quality criteria, the "generate-rank-select" approach helps you generate high quality content in the following way:
- **Analyzing existing content**: By [analyzing existing demos](understand-existing-demo.md.jinja2), PR Pilot can understand what "high quality" means and provide new ideas that are in line with the existing content.
- **Creating novelty with feedback**: By [feeding the existing proposals into the generator](https://github.com/PR-Pilot-AI/demo/blob/1eb9409eef5ff1929b8a2251ec19c48c7396f566/generate-rank-select/select-best-proposals.md.jinja2#L4C1-L5C73), you can generate new ideas that are both novel and useful.
- **Ranking based on criteria**: Asking PR Pilot to [rank the proposals](https://github.com/PR-Pilot-AI/demo/blob/1eb9409eef5ff1929b8a2251ec19c48c7396f566/generate-rank-select/select-best-proposals.md.jinja2#L7) based on specific criteria allows you to quickly identify the most promising ideas and to weed out the less useful or realistic ones.
- **Selecting the best**: By selecting the top 3 proposals, the end result of your script will always be the most relevant content for your needs - in our case, the most promising use cases for PR Pilot.


## 🚦 How to run

To generate new proposals:

```bash
./generate_proposals.sh
```

This will:

1. **📂 Analyze Existing Demos**: PR Pilot will analyze the existing demos in the repository to understand the pain points they solve, how the PR Pilot CLI helps, and the main benefits for the user. The analysis will be saved in the [`analysis`](analysis) directory.
2. **🔍 Search for Developer Problems**: PR Pilot will search the internet for specific problems that developers are facing and how they use LLMs to improve their daily workflows.
3. **🧠 Propose New Use Cases**: Based on the existing demos and internet research, PR Pilot will generate new demo proposals and save them in the [`proposals`](proposals) directory.

You can then rank the proposals:

```bash
./select_best_proposals.sh
```

4. **🚦 Ranking the proposals**: Based on the criteria of LLM necessity, novelty, effort-to-gain ratio, and selecting the top 3 proposals is done in [select-best-proposals.md.jinja2](select-best-proposals.md.jinja2).



# 📄 Example Output

### Top 3 Proposals for PR Pilot 🚀

#### 1. **Automated Issue Triage**
**Explanation:**
Automated Issue Triage stands out as the top proposal due to its high novelty and WOW effect. Managing and prioritizing issues is a common pain point for developers, and while there are tools that help
with issue management, the integration of an LLM to analyze and categorize issues based on context and keywords is innovative. This use case leverages the power of natural language processing to
understand the nuances of issue descriptions, making it a perfect fit for PR Pilot.

**Example:**
Imagine a repository receiving numerous issues daily. PR Pilot can scan new issues, identify whether they are bugs, feature requests, or questions, and apply relevant labels automatically. This not only
saves time but also ensures that issues are categorized accurately, helping maintainers prioritize their work more effectively.

#### 2. **Pull Request Conflict Detection**
**Brief Explanation:**
Pull Request Conflict Detection is highly valuable as it addresses a critical aspect of the development workflow. By automatically detecting potential merge conflicts between open pull requests, PR Pilot
can help developers resolve conflicts early, reducing integration issues. This use case is both novel and provides a high-effort-to-gain ratio, as it streamlines the merge process and enhances
collaboration.

#### 3. **Automated Code Quality Reports**
**Brief Explanation:**
Automated Code Quality Reports offer significant value by integrating with existing code quality tools and generating detailed reports. This use case is essential for maintaining high code standards
without manual effort. The novelty lies in the seamless integration and automation, making it a valuable addition to any development workflow.

### Ranking of Remaining Proposals 📋

4. Automated Security Vulnerability Scanning
5. Automated Performance Benchmarking
6. Automated Release Note Generation
7. Automated Test Coverage Reports
8. Automated Dependency License Checks
9. Automated Environment Setup Scripts
10. Automated API Documentation Generation
11. Automated Code Comment Quality Check
12. Automated Refactoring Suggestions
13. Automated Dependency Conflict Resolution
14. Automated Localization Updates
15. Automated API Endpoint Testing
16. Automated Dependency Update Notifications
17. Code Review Summarization
18. Automated Documentation Updates
19. Bug Reproduction Script Generation
20. Automated Changelog Generation

By focusing on these top proposals, PR Pilot can showcase its capabilities in automating and enhancing various aspects of the development workflow, making it an indispensable tool for developers. 🌟


# Make it your own!
You can use this workflow to generate and rank proposals for any use case you have in mind. Simply adjust the search queries, selection criteria, and evaluation process to fit your specific needs.

Here are some ideas for real-life projects:
- **Feature Prioritization**: Use PR Pilot to analyze user feedback and generate feature proposals, then rank them based on user impact and development effort.
- **Issue Analysis**: Automatically categorize and prioritize incoming issues based on their content and severity, then rank them for resolution.
- **Layout Variations**: Generate and evaluate different layout designs for a website or application based on user preferences and usability metrics.