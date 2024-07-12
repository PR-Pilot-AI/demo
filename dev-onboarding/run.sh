#!/usr/bin/env bash
set -e

# Which Github project do you want to get onboarded to?
PROJECT="PR-Pilot-AI/pr-pilot"

# Start the pre-populated conversation conversation
pilot --repo=$PROJECT chat --history onboarding.json