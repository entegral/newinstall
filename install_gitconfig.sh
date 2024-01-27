#!/bin/bash

echo "Cloning the gitconfig repository using SSH..."
github_username=$(cat /tmp/github_username)

# Clone the gitconfig repository using SSH
git clone git@github.com:$github_username/gitconfig.git

# Copy the .gitconfig file to the home directory
cp gitconfig/.gitconfig* ~/

echo "Gitconfig installation complete!"