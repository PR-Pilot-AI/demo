#!/usr/bin/env bash
set -e

export REPO="PR-Pilot-AI/pr-pilot"
pilot --repo=$REPO chat --history analysis_chat.json