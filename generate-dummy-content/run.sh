#!/usr/bin/env bash
set -e

# Command stays the same, but the output file changes
CMD="pilot --no-sync --verbose task --code -f generate-dummy-content.md.jinja2 -o"

# Generate user data content for a database
export PURPOSE="Populate database with user data"
export FORMAT="sql"
export VOLUME="3 tables with a total of 15 columns and 100 rows"
$CMD gen/dummy-content.sql

# Generate dummy content as a CSV file
export PURPOSE="Test a script that reads airplane geo data from CSV files"
export FORMAT="csv"
export VOLUME="3 tables with a total of 15 columns and 100 rows"
$CMD gen/dummy-content.csv

# Synthesize Apache log data in JSON format
export PURPOSE="Test log data"
export FORMAT="json"
export VOLUME="20 Apache-format log entries"
$CMD gen/apache-logs.json

# Synthesize Nginx log data in plain text format
export FORMAT="plain text"
export VOLUME="20 nginx log entries"
$CMD gen/nginx-logs.txt

