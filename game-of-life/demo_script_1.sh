set -e
#!/usr/bin/env bash

# Implement game of life in new PR
pilot --sync --verbose task "Create game-of-life/gol.py, which plays a random game of life every time it is run."
# Create dependency file
pilot --sync --verbose task "Identify dependencies in game-of-life/gol.py, find their latest versions and create a pyproject.toml file next to it."
# Run this command as long as poetry lock is not working
while ! poetry lock; do
  pilot --sync --verbose task -f verify.md.jinja2
done
poetry lock
poetry install
poetry run python gol.py
