#!/bin/bash

echo "Cloning the zshrc repository using SSH..."

# Clone the zshrc repository using SSH
git clone git@github.com:entegral/zshrc.git

# Copy the .zshrc file to the home directory
cp zshrc/.zshrc ~/

echo "Zshrc installation complete!"