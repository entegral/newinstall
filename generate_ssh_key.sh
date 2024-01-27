#!/bin/bash

echo "Generating a new SSH key for GitHub..."

github_username=$(cat /tmp/github_username)

# Create the SSH key using the provided username
ssh-keygen -t rsa -b 4096 -C "$github_username" -f ~/.ssh/id_rsa -N ""

# Start the ssh-agent in the background
eval "$(ssh-agent -s)"

# Add SSH key to ssh-agent
ssh-add ~/.ssh/id_rsa

# Display the public key
echo "Copy the following SSH public key and add it to your GitHub account:"
cat ~/.ssh/id_rsa.pub
echo

echo "Generating a new SSH key for GitHub complete!"