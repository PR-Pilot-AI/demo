#!/usr/bin/env bash
set -e

PILOT_COMMAND="pilot --no-sync --verbose task --code -f convert.md.jinja2"

generate_dockerfile() {
  # Generate a Dockerfile
  export CONVERT="pyproject.toml"   # Build file for Python projects
  export TO="A Dockerfile that runs the CLI by default and passes all args and params to it"
  $PILOT_COMMAND -o Dockerfile
}

generate_docker_compose() {
  # Generate a docker-compose file
  k8s_files=$(ls k8s | sed 's/^/k8s\//' | tr '\n' ',' | sed 's/,$//')
  export CONVERT="Makefile,$k8s_files"  # Info about all our services, images, etc
  export TO="A docker-compose file, with my images from the registry"
  # Will have images, services, DBs, env vars and volumes setup correctly
  $PILOT_COMMAND -o docker-compose.yml
}

transfer_makefile_commands() {
  # Transfer Makefile commands into a build file
  export CONVERT="Makefile,pyproject.toml"  # Makefile with build commands
  export TO="A new pyproject.toml that has the Makefile commands integrated"
  $PILOT_COMMAND -o pyproject.toml
}

generate_ci_cd_for_tests() {
  # Generate a CI/CD pipeline for tests
  export CONVERT="pyproject.toml"  # Contains info about the tests
  export TO="A GitHub Actions workflow that runs the tests"
  $PILOT_COMMAND -o .github/workflows/tests.yml
}

generate_ci_cd_for_deploy() {
  # Generate a CI/CD pipeline for deployment
  export CONVERT="Makefile,pyproject.toml"  # Knows how to build and deploy the app
  export TO="A GitHub Actions workflow that builds/pushes the images and deploys the app"
  $PILOT_COMMAND -o .github/workflows/deploy.yml
}

# Call one of the functions
generate_ci_cd_for_deploy