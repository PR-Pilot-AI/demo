#!/usr/bin/env bash
set -e

# Generate REACT component based on screenshot content
pilot --no-sync --verbose task --code --snap -o component.tsx -f generate-component.md.jinja2