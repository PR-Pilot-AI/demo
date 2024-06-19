#!/usr/bin/env bash

pilot --sync task "Create gol.py, which plays a random game of life every time it is run."
pilot --sync task "Identify dependencies in gol.py, find their latest versions and create a pyproject.toml file."
poetry lock
poetry install
poetry run python gol.py
