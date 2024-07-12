#!/usr/bin/env bash
set -e

rm -rf proto_files
mkdir -p proto_files

# Generate all protobufs into a single file
pilot task -f generate.md.jinja2 --code -o out.txt

# Split the generated file into individual protobuf files
python split_proto_files.py

# Remove the generated file
rm out.txt