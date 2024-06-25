#!/usr/bin/env bash
set -e

# Generate a Dockerfile
export CONVERT="pyproject.toml"   # Build file for Python projects
export TO="A Dockerfile that runs the CLI by default and passes all args and params to it"
export OUTPUT="Dockerfile"        # Output file

# Generate a docker-compose file
k8s_files=$(ls k8s | sed 's/^/k8s\//' | tr '\n' ',' | sed 's/,$//')
export CONVERT="Makefile,$k8s_files"  # Use Makefile and Kubernetes resources as input
export TO="A docker-compose file"     # Will have services, DBs, env vars and volumes setup correctly
export OUTPUT="docker-compose.yml"    # Output file



pilot task --code -f convert.md.jinja2 -o $OUTPUT