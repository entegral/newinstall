#!/bin/bash

echo "Cloning the repository using SSH..."

# Prompt for GitHub username
read -p "Enter your GitHub username: " github_username

# Clone the private repository using SSH
git clone git@github.com:${github_username}/brewfile.git

cd brewfile
brew bundle

echo "Brewfile installation complete!"