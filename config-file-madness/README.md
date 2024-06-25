# 🛠️ Config File Madness

This demo showcases how PR Pilot can help you 
**generate awesome configuration files in a snap**.

## 🎯 Goal

The goal of this demo is to demonstrate how **easy** PR Pilot makes it to **generate new configuration files** based
on the content of existing ones. **This can save you hours** of manual work and ensure that your new files are **consistent** with the existing ones.

## 💡 Use Cases
This demo covers a few different use cases:

### 🐳 Generate a Dockerfile
**Creating a Dockerfile requires knowledge** of:
- The language/framework to pick the right base image
- Your application's dependencies and how to build it
- How to configure and run your application 

It's usually not something you do every day, so writing 
a proper Dockerfile can be cumbersome.
Luckily, all the information is usually available in your project already.

**PR Pilot can learn from your build files** and generate a Dockerfile that:
- Uses the right base image
- Installs your application in the container
- Does any necessary configuration
- Sets all the right environment variables
- Runs your application

### 🐙 Generate a Docker Compose File
Creating a `docker-compose.yml` file can be a bit of a hassle:
- Setting the right images, ports, environment variables, and volumes
- Linking services together
- Defining databases and other services

By using the information from your `Makefile` and Kubernetes files, you can generate a `docker-compose.yml` file that:
- Sets up all the images and services
- Defines databases and other services
- Sets environment variables and volumes correctly

**Instead of jumping back and forth** between files, the Docker documentation, and Stack Overflow, you can **generate** a `docker-compose.yml` file that works for your project in seconds.

### 🚀 Generate CI/CD Pipelines / Workflows
Nobody likes to write CI/CD configs. They're usually long, repetitive, and error-prone.
By using the information from your `Makefile`, run scripts and other files, PR Pilot can **generate pipeline configs** that:
- Run tests just **like in your scripts** 
- Build and push images **correctly**
- Set up **tokens and secrets** for the CI/CD environment
- Deploy your app with **all bells and whistles**

This way, you can focus on writing code and let PR Pilot handle the CI/CD setup for you.


## 🛠️ How it works

All examples use the following CLI command:

```shell
pilot --no-sync --verbose task --code -f convert.md.jinja2
```

The important parts here are:
- `--code`: Remove any chatter and backticks from the output
- Use [covert.md.jinja2](convert.md.jinja2) as the template file

The template file uses the following environment variables:
- `CONVERT`: The input file(s) to convert
- `TO`: Any instructions on how to convert the input file(s)

At the end, each function uses the `-o` flag to save the output to a file.

[run.sh](run.sh) contains a simple function for each use case:

- **generate_dockerfile**: This function generates a Dockerfile based on the `pyproject.toml` file. It creates a Dockerfile that runs the CLI by default and passes all arguments and parameters to it.
- **generate_docker_compose**: This function generates a `docker-compose.yml` file using information from the `Makefile` and Kubernetes files. It sets up images, services, databases, environment variables, and volumes correctly.
- **transfer_makefile_commands**: This function transfers Makefile commands into a new `pyproject.toml` file, integrating the build commands.
- **generate_ci_cd_for_tests**: This function generates a GitHub Actions workflow for running tests based on the `pyproject.toml` file.
- **generate_ci_cd_for_deploy**: This function generates a GitHub Actions workflow for building, pushing images, and deploying the app using information from the `Makefile` and `pyproject.toml`.

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

These are only a few examples of how you can use this technique. Here are some ideas how you can customize it for your project:

* Customize the templates to your project/language/framework 
* Use different input files or formats
* Use PR Pilot to add another example: `pilot edit run.sh "Add a Maven example"`
