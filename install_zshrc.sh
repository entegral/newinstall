#!/bin/bash

echo "Cloning the zshrc repository using SSH..."
github_username=$(cat /tmp/github_username)

# Change to the myrepos directory
cd ~/myrepos

# Clone the zshrc repository using SSH
git clone git@github.com:$github_username/zshrc.git

# Create a symbolic link to the .zshrc file in the home directory
ln -s $PWD/zshrc/.zshrc ~/

echo "Zshrc installation complete!"