#!/bin/bash

echo "Starting master setup..."

# Prompt for the GitHub username and save to temporary file
read -p "Enter your GitHub username: " github_username
echo $github_username > /tmp/github_username

# Ensure that the myrepos directory exists
mkdir -p ~/myrepos

# Run SSH key generation script
/bin/bash generate_ssh_key.sh

# Run Xcode Command Line Tools and Git install script
/bin/bash install_xcode_git.sh

# Run Gitconfig install script
/bin/bash install_gitconfig.sh

# Run Homebrew install script
/bin/bash install_brew.sh

# Run Brewfile install script
/bin/bash install_brewfile.sh

# Run Zsh and Oh My Zsh install script
/bin/bash install_zsh.sh

# Run Zshrc install script
/bin/bash install_zshrc.sh

# Delete the temporary file
rm /tmp/github_username

echo "Master setup complete!"
