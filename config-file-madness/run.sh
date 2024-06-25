#!/usr/bin/env bash
set -e

generate_dockerfile() {
  # Generate a Dockerfile
  export CONVERT="pyproject.toml"   # Build file for Python projects
  export TO="A Dockerfile that runs the CLI by default and passes all args and params to it"
  $PILOT_COMMAND -o Dockerfile
}

generate_docker_compose() {
  # Generate a docker-compose file
  k8s_files=$(ls k8s | sed 's/^/k8s\//' | tr '\n' ',' | sed 's/,$//')
  export CONVERT="Makefile,$k8s_files"  # Use Makefile and Kubernetes resources as input
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

# Run one of the examples
generate_dockerfile