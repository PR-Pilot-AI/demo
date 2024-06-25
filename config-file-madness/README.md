# 🛠️ Config File Madness with PR Pilot

Welcome to the **Config File Madness** demo! 🎉 This demo showcases how PR Pilot can help you 
**generate awesome configuration files in a snap**. We do that by using
the information from your existing files to create new ones in a different format.

When this is useful:
- Your project needs a docker-compose setup
- You want to switch from a Makefile to a proper build system (Maven, Gradle, Poetry, etc.)
- Your project builds with shell scripts and you want to set up a CI/CD config (CircleCI, GitHub Actions, etc.)


## 🎯 Goal

The goal of this demo is to demonstrate how **easy** PR Pilot makes it to **generate new configuration files** based on the content of existing ones. This can save you **hours** of manual work and ensure that your new files are **consistent** with the existing ones. 

## 🛠️ How it works

[run.sh](run.sh) contains a simple function for each use case:

TODO Explain each use case and how it saves time/effort.

## 🚦 How to run

At the bottom of [run.sh](run.sh), change the function call to the one you want to run, then execute the script:

```bash
./run.sh
```

## 📄 Example Output

Running the script might look something like this:

```bash
➜  config-file-madness git:(main) ✗ ./run.sh
✔ Running shell command: ['cat', 'Makefile'] (0:00:00.00)
✔ Running shell command: ['cat', 'pyproject.toml'] (0:00:00.00)
✔ Task created: cd2a6add-bf43-48c9-a712-d3a8a186067f (0:00:00.00)
✔ Code saved in .github/workflows/deploy.yml (0:00:34.73)
```

## 🎨 Make it your own

This example is just a starting point. You can **customize the configuration files and the information collected** to suit your needs.

TODO: Add customization options here.