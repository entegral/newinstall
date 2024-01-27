#!/bin/bash

echo "Cloning the repository using SSH..."

# Clone the private repository using SSH
git clone git@github.com:entegral/gitconfig.git

cd brewfile
brew bundle

echo "Brewfile installation complete!"