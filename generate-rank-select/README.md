# 🚀 Demo: Content Generaion and Ranking with PR Pilot

In this experimental demo, we'll explore you can use PR Pilot in creative ways to 
come up with new ideas, evaluate and rank these ideas and find the one that best fits your needs.

## 🎯 Goal
This can be done with any goal in mind, but for this demo, we'll focus on **generating new interesting use cases for PR Pilot**. 

## 🛠️ How it works

Running [run.sh](run.sh) will:

1. **📂 Analyze Existing Demos**: PR Pilot will analyze the existing demos in the repository to understand the pain points they solve, how the PR Pilot CLI helps, and the main benefits for the user. The analysis will be saved in the [`analysis`](analysis) directory.
2. **🔍 Search for Developer Problems**: PR Pilot will search the internet for specific problems that developers are facing and how they use LLMs to improve their daily workflows.
3. **🧠 Propose New Use Cases**: Based on the existing demos and internet research, PR Pilot will generate new demo proposals and save them in the [`proposals`](proposals) directory.
4. **🚦 Ranking the proposals**: Based on the criteria of LLM necessity, novelty, effort-to-gain ratio, and selecting the top 3 proposals is done in [select-best-proposals.md.jinja2](select-best-proposals.md.jinja2).

## 🚦 How to run

To generate new proposals:

```bash
./generate_proposals.sh
```

To rank the proposals:

```bash
./select_best_proposals.sh
```

## 📄 Example Output

Eventually, the script will generate a list of the top 3 proposals based on the selection criteria:

### 1. **Automated Issue Triage**
**Explanation:**
- **LLM Necessity:** This use case leverages natural language processing to analyze and categorize issues, which is not typically covered by existing tools.
- **Novelty and WOW Effect:** Automating the triage process is innovative and can significantly reduce the manual effort required to manage issues.
- **Effort-to-Gain Ratio:** The implementation effort is moderate, but the value it provides in terms of efficiency and organization is high.

### 2. **Automated Release Note Generation**
**Explanation:**
- **LLM Necessity:** Generating comprehensive release notes from commit messages and pull requests requires understanding and summarizing text, a task well-suited for LLMs.
- **Novelty and WOW Effect:** Automating release note generation is a novel approach that can save developers a lot of time and ensure accuracy.
- **Effort-to-Gain Ratio:** The effort to implement this is relatively low compared to the high value it provides in maintaining accurate and detailed release notes.

### 3. **Automated Bug Reproduction Script Generation**
**Explanation:**
- **LLM Necessity:** Creating scripts to reproduce bugs based on issue descriptions and code snippets requires advanced understanding and synthesis of information, ideal for LLMs.
- **Novelty and WOW Effect:** This is a highly innovative use case that can greatly enhance the bug-fixing process by providing developers with ready-to-use reproduction scripts.
- **Effort-to-Gain Ratio:** While the implementation effort is higher, the potential gain in terms of speeding up the bug resolution process is substantial.

These proposals stand out for their innovative use of LLM capabilities, their potential to significantly improve developer workflows, and the high value they provide relative to the effort required to
implement them.


## Customization Options
You can use this workflow to generate and rank proposals for any use case you have in mind. Simply adjust the search queries, selection criteria, and evaluation process to fit your specific needs.

Here are some ideas for real-life projects:
- **Feature Prioritization**: Use PR Pilot to analyze user feedback and generate feature proposals, then rank them based on user impact and development effort.
- **Issue Analysis**: Automatically categorize and prioritize incoming issues based on their content and severity, then rank them for resolution.
- **Layout Variations**: Generate and evaluate different layout designs for a website or application based on user preferences and usability metrics.