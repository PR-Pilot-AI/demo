# 🚨 Instant Bug Ticket
Imagine you've just observed a crash/error in your application.
You want to quickly create a bug ticket with all the necessary information to help your team resolve the issue, which involves:

1. 🕵️‍♂️ Identifying the error or stack traces in the server logs.
2. 📂 Reading the relevant files to understand the problem better.
3. 🐞 Opening a new issue labeled 'bug' with a concise description of the problem.

This is tedious, time-consuming work that you can now do in seconds with PR Pilot,
without ever leaving your terminal.

## ⚙️ How it Works
The prompt is **simple, but powerful**:

```shell
Here are recent server logs:

---
{{ sh('kubectl logs --tail=60 statefulsets/pr-pilot-worker') }}
---

1. Identify any errors or stacktraces
2. Read the relevant files to get a better understanding of the problem
3. Open a new Github issue labeled 'bug' and a concise description of the problem
```

Run the command, and PR Pilot will automatically create a new issue in your Github repository with the server logs and a concise description of the problem.

```shell
➜  pr-pilot git:(main) ✗ pilot task -f prompts/bug-ticket.md.jinja2
❌  Running shell command: kubectl logs --tail=60 statefulsets/pr-pilot-worker (0:00:00.28)
                                                                                                  
 Found 2 pods, using pod/pr-pilot-worker-0                                                        
                                                                                                  
                                                                                                  
✔ Task created: f08d472c-a658-4ba1-a822-f5d97f4c4235                                              
╭──────────────────────────────────────────── Result ────────────────────────────────────────────╮
│ I have identified the IndexError in the scrape_website function and created a new GitHub issue │
│ to address this bug. You can track the progress and resolution of this issue here: #198 🐛     │
│ IndexError in scrape_website function.                                                         │
│                                                                                                │
│ The issue includes a detailed description of the problem, the stack trace, steps to reproduce, │
│ expected behavior, and a suggested fix.                                                        │
╰────────────────────────────────────────────────────────────────────────────────────────────────╯
```

The result: https://github.com/PR-Pilot-AI/pr-pilot/issues/198

# 🎨 Make it Your Own
Here are some ideas for how you can customize this demo for your own purposes:
* **📝 Add more context**: Include more information in the issue description, such as steps to reproduce, expected behavior, and a suggested fix.
* **🔍 Add more logs**: Include additional logs or files that might help your team diagnose the problem.
* **📚 Import guidelines**: Read issue templates from files or websites to ensure compliance.

This is simple, but powerful technique makes your daily life easier and more productive.
