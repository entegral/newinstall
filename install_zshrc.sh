#!/bin/bash

echo "Cloning the zshrc repository using SSH..."
github_username=$(cat /tmp/github_username)

# Clone the zshrc repository using SSH
git clone git@github.com:$github_username/zshrc.git

# Copy the .zshrc file to the home directory
cp zshrc/.zshrc ~/

echo "Zshrc installation complete!"