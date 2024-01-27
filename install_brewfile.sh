#!/bin/bash

echo "Cloning the repository using SSH..."
github_username=$(cat /tmp/github_username)

# Clone the private repository using SSH
git clone git@github.com:$github_username/brewfile.git

cd brewfile
brew bundle

echo "Brewfile installation complete!"