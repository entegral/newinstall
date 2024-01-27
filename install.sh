#!/bin/bash

echo "Starting master setup..."

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

echo "Master setup complete!"
