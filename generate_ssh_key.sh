#!/bin/bash

echo "Generating a new SSH key for GitHub..."

github_username=$(cat /tmp/github_username)

# Check if the SSH key already exists
if [ -f ~/.ssh/id_rsa ]; then
  echo "SSH key already exists. Exiting..."
  exit 0
fi

# Create the SSH key using the provided username
ssh-keygen -t rsa -b 4096 -C "$github_username" -f ~/.ssh/id_rsa -N ""

# Start the ssh-agent in the background
eval "$(ssh-agent -s)"

# Add SSH key to ssh-agent
ssh-add ~/.ssh/id_rsa

echo "Generating a new SSH key for GitHub complete!"