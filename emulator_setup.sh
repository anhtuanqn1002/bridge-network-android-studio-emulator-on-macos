#!/bin/bash

# Check if telnet is installed
if ! command -v telnet &> /dev/null; then
    echo "telnet is not installed. Installing..."

    # Install telnet using brew on macOS
    if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install telnet
    else
        echo "Unsupported operating system. Please install telnet manually."
        exit 1
    fi
fi

# Get the current user's username
user=$(whoami)

# Construct the path to the auth token file using the HOME environment variable
auth_token_file="$HOME/.emulator_console_auth_token"

# Print description
echo "Setting up emulator connection..."

# Read authentication token from file
auth_token=$(cat "$auth_token_file")

{
    sleep 2
    echo "auth $auth_token"
    sleep 2
    echo "redir add udp:14550:14550"
    sleep 2
    echo "quit"
} | telnet localhost 5554

# Print completion message
echo "Emulator setup completed."
