#!/bin/bash

echo "Cloning the gitconfig repository using SSH..."

# Clone the gitconfig repository using SSH
git clone git@github.com:entegral/gitconfig.git

# Copy the .gitconfig file to the home directory
cp gitconfig/.gitconfig* ~/

echo "Gitconfig installation complete!"