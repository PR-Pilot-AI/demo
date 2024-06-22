#!/bin/bash

# Re-run the last command
last_command=$(fc -ln -1)
echo "Re-running: $last_command"
eval $last_command

# Capture the output and exit status
output=$(eval $last_command 2>&1)
status=$?

# Analyze the output
if [ $status -ne 0 ]; then
    echo "Command failed with status $status"
    echo "Analyzing output for common errors..."

    if echo "$output" | grep -q "command not found"; then
        echo "Error: Command not found. Please check if the command is installed and in your PATH."
    elif echo "$output" | grep -q "permission denied"; then
        echo "Error: Permission denied. Try running the command with sudo."
    elif echo "$output" | grep -q "No such file or directory"; then
        echo "Error: No such file or directory. Please check the file path."
    else
        echo "Error: An unknown error occurred. Please check the output above."
    fi
else
    echo "Command executed successfully!"
fi
