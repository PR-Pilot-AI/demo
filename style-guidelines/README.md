# 🎨 Style Guidelines

Maintaining a consistent style across your repositories and documents is essential for a **professional** and **polished** appearance. Style guidelines help ensure that your content is **clear**, **engaging**, and **visually appealing**. 

**However**, enforcing these guidelines is difficult at best:
- In order to comply, **authors need to be aware** of the guidelines.
- Authors need to **remember** the guidelines while writing.
- Enforcing the guidelines is **manual and time-consuming**.

## 🎯 Goal
This demo showcases how PR Pilot can help you **extract style guidelines** from existing documents and **apply them** to new ones.

## 🛠️ How it works

We define style guidelines as a set of rules and recommendations that dictate the formatting, tone, and structure of your documents:

```markdown
- Use emojis in headers to make the content more engaging.
- Include badges for release notes, CI status, license, and downloads at the top of the document.
- Use in-line links for references instead of lists or reference links.
- Maintain a friendly and personal tone throughout the document.
- Highlight key words or word groups in **bold** to facilitate quick scanning by the reader.
- Ensure the document starts with a clear and concise title followed by a brief description.
- Align badges horizontally at the top of the document for a clean look.
```
### Extract and Apply

In [run.sh](run.sh), we use [extract-guidelines.md.jinja2](extract-guidelines.md.jinja2) to extract style guidelines from three sources:

* The [langchain README](https://raw.githubusercontent.com/langchain-ai/langchain/master/README.md)
* The [Spring Boot README](https://raw.githubusercontent.com/spring-projects/spring-boot/main/README.adoc)
* The [PR Pilot CLI README](https://raw.githubusercontent.com/PR-Pilot-AI/pr-pilot-cli/main/README.md)

The guidelines are saved as _local_ Markdown files in [styles](styles) for reference, where they can be applied to new documents using [apply-guidelines.md.jinja2](apply-guidelines.md.jinja2):

```shell
➜  style-guidelines git:(main) ✗ ./run.sh     
✔ Task created: 0a429f64-f2d2-42a9-9aae-b046072cbe00                                                                                                                                                       
✔ Extract style guidelines from Spring Boot README document (0:00:07.63)
✔ Code saved in styles/spring-boot.md (0:00:00.00)
✔ Task created: 9b8e7890-4d07-4c15-af8d-913b28ebf36a                                                                                                                                                       
✔ Extract style guidelines from document URL (0:00:12.13)
✔ Code saved in styles/pr-pilot.md (0:00:00.00)
✔ Running shell command: cat styles/pr-pilot.md (0:00:00.00)
✔ Running shell command: cat README.md (0:00:00.00)
✔ Task created: a889ff89-3ee2-4d91-a4ac-ffc283cb1174                                                                                                                                                       
✔ Apply Style Guidelines to Document (0:00:17.67)
✔ Code saved in README.md (0:00:00.00)
```

### Direct Style Transfer
For a more direct approach, we use [transfer-style.md.jinja2](transfer-style.md.jinja2) to apply the style guidelines directly to the [README.md](README.md) in this demo directory.
This time, we omit the `-o` and `--code` flags in order to receive the changes as a [pull request](https://github.com/PR-Pilot-AI/demo/pull/37):

```shell
➜  style-guidelines git:(main) ✗ ./run.sh 
✔ Extract style guidelines from document URL (0:00:09.06)
✔ Task created: b02e30b0-e6a2-4ad9-88cf-f987bb792076 (0:00:00.00)
✔ Opened Pull Request: https://github.com/PR-Pilot-AI/demo/pull/37 (0:00:26.38)
╭──────────────────────────────────────────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────────────────────────────────────────╮
│ I have applied the style guidelines to the README.md file. The document now includes emojis in headers and lists, uses in-line links, maintains a friendly and personal tone, and highlights key words  │
│ and word groups in bold for better readability.                                                                                                                                                         │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
✔ Pull latest changes from apply-style-guidelines (0:00:02.55)

```

## 🚀 Make it your own
You can customize this technique in creative ways:
- **Extract guidelines from different sources**: Use different documents or websites to extract guidelines.
- **Apply guidelines to different types of documents**: Apply guidelines to READMEs, blog posts, or documentation.
- **Create a style guide template**: Use a template to define your own style guidelines and apply them to new documents.
- **Automate the process**: Use scripts to automatically extract and apply guidelines to documents in your repository.

By using PR Pilot to extract and apply style guidelines, you can **ensure that your content is consistent, professional, and visually appealing** across all your repositories and documents.