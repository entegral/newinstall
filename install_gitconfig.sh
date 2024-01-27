#!/bin/bash

echo "Cloning the gitconfig repository using SSH..."
github_username=$(cat /tmp/github_username)

# Change to the dotfiles directory
cd ~/dotfiles

# Clone the gitconfig repository using SSH
git clone git@github.com:$github_username/gitconfig.git

# Create a symbolic link to the .gitconfig file in the home directory
ln -s $PWD/gitconfig/.gitconfig ~/

echo "Gitconfig installation complete!"