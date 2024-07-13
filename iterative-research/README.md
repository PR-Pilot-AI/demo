# 📚 Iterative Research Demo
This demo showcases how to use PR Pilot to **iteratively explore open-ended questions** by building a knowledge base of Markdown files.

## ⚙️ How it Works

* An [index.md](index.md) file contains the question and serves as a table of contents for the knowledge base.
* A prompt template [iterate.md.jinja2](iterate.md.jinja2) that guides the iterative research process.

## 🚀 How to Run This Demo

Run `run.sh` as many times as you want to iterate on the research question. With every iteration, PR Pilot will:
1. Pick an item from the backlog and resarch it
2. Write a new Markdown file with the findings
3. Update the index.md file and backlog accordingly
4. Respond with a summary of the insights gained from this iteration

```shell
demo git:(main) pilot task -f iterative-research/iterate.md.jinja2
✔ Task created: 28317ca0-31c1-43d3-b25d-81035843456d (0:00:00.00)
✔ Conduct online research and document fin (0:00:28.25)
╭────────────────────────────────────────────────────────── Result ──────────────────────────────────────────────────────────╮
│                                            Insights Gained from This Iteration                                             │
│                                                                                                                            │
│  1 Tailoring Instruction to Individual Needs: AI personalizes learning by analyzing student data to tailor instruction,    │
│    pace, methods, and content to individual learners' needs and goals.                                                     │
│  2 Enhancing Student Engagement: AI platforms enhance student engagement by providing interactive and adaptive learning    │
│    experiences.                                                                                                            │
│  3 Addressing Challenges and Ethical Concerns: Challenges such as effectiveness, access, and ethics need to be addressed   │
│    for successful AI implementation in personalized learning.                                                              │
│  4 Future Directions: The future of AI in personalized learning involves innovative design concepts and new technologies   │
│    that go beyond conventional ideas of personalized, adaptive, or blended learning.                                       │
│                                                                                                                            │
│ The new research document has been added to the knowledge base, and the backlog has been updated accordingly.              │
╰────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
✔ Pull latest changes from iterative-research (0:00:02.42)
```

That way, over time, you build a comprehensive knowledge base that explores the question from different angles and perspectives.