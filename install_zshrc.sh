#!/bin/bash

echo "Cloning the zshrc repository using SSH..."
github_username=$(cat /tmp/github_username)

# Change to the dotfiles directory
cd ~/dotfiles

# Clone the zshrc repository using SSH
git clone git@github.com:$github_username/zshrc.git

# Remove the existing .zshrc file in the home directory
rm -rf ~/.zshrc

# Create a symbolic link to the .zshrc file in the home directory
ln -s $PWD/zshrc/.zshrc ~/

echo "Zshrc installation complete!"