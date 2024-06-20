set -e
#!/usr/bin/env bash

pilot --sync --verbose task "Create game-of-life/gol.py, which plays a random game of life every time it is run."
pilot --sync --verbose task "Identify dependencies in game-of-life/gol.py, find their latest versions and create a pyproject.toml file next to it."
pilot --sync --verbose task -f verify.md.jinja2
poetry lock
poetry install
python gol.py
