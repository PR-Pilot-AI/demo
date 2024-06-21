# 📚 Generate Dummy Content
In this demo, we'll explore how you can use PR Pilot to generate dummy content for various purposes. This can be useful for testing, prototyping, or creating placeholder data for your projects.
This content can be in various formats, such as SQL, CSV, JSON, or plain text, and can be used for a wide range of purposes.
## 🎯 Goal
The goal is to demonstrate how you can generate custom, tailored dummy content in seconds. 

## 🛠️ How it works
The [generate-dummy-content.md.jinja2](generate-dummy-content.md.jinja2) template takes three inputs:
1. **Purpose**: The purpose of the dummy content.
2. **Format**: The format in which the dummy content should be.
3. **Volume**: The volume of dummy content required.

Additionally, the template references the [content-criteria.md](content-criteria.md) file to define the content criteria that the dummy content should meet.

## 🚦 How to run

The [run.sh](run.sh) script will generate the dummy content based on the inputs provided:

```bash
➜  generate-dummy-content git:(main) ✗ ./run.sh 
✔ Running shell command: ['cat', 'content-criteria.md'] (0:00:00.00)
✔ Task created: be9623d0-bb2a-42a2-ad14-f3bd659467f9 (0:00:00.00)
✔ Code saved in gen/dummy-content.sql (0:00:22.35)
✔ Running shell command: ['cat', 'content-criteria.md'] (0:00:00.00)
✔ Task created: 41bfe4c4-482a-4691-ac9f-3cf3079c1be4 (0:00:00.00)
✔ Code saved in gen/dummy-content.csv (0:00:28.79)
✔ Running shell command: ['cat', 'content-criteria.md'] (0:00:00.00)
✔ Task created: 47c77f12-2e45-439f-954b-73f27a67c577 (0:00:00.00)
✔ Code saved in gen/apache-logs.json (0:00:26.36)
✔ Running shell command: ['cat', 'content-criteria.md'] (0:00:00.00)
✔ Task created: 1b467ced-bcf5-41b4-aec5-d5e2fa64a4f9 (0:00:00.00)
✔ Code saved in gen/nginx-logs.txt (0:00:30.47)
```

The script generates dummy content in different formats based on the content criteria provided. 
The generated content is saved in the [gen](gen) directory with appropriate file extensions.