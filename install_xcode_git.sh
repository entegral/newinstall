#!/bin/bash

echo "Installing Xcode Command Line Tools and Git..."

# Check if Xcode Command Line Tools are installed
if xcode-select -p 1>/dev/null; then   
    echo "Xcode Command Line Tools already installed."
else
    xcode-select --install
fi

# Wait until Xcode Command Line Tools are installed
read -p "Press [Enter] key after Xcode Command Line Tools installation is complete..."

# Validate Git installation
if which git > /dev/null; then
    echo "Git is already installed."
else
    echo "Error: Git was not installed. Please resolve any issues with Xcode Command Line Tools installation and try again."
    exit 1
fi

# Setting up Git configurations
echo "Setting up Git configurations..."

# Create required directories
mkdir -p ~/repos ~/go/src/github.com/Lightspeed-Systems ~/myrepos

# Main .gitconfig
GITCONFIG=$HOME/.gitconfig
cat <<EOT > $GITCONFIG
[includeIf "gitdir:~/repos/"]
  path = .gitconfig-lightspeed
[includeIf "gitdir:~/go/src/github.com/Lightspeed-Systems/"]
  path = .gitconfig-lightspeed
[includeIf "gitdir:~/myrepos/"]
  path = .gitconfig-personal
EOT

# .gitconfig-lightspeed
GITCONFIG_LS=$HOME/.gitconfig-lightspeed
cat <<EOT > $GITCONFIG_LS
[user]
	name = Robert Bruce
	email = rbruce@lightspeedsystems.com
[url "git@github.com:"]
	insteadOf = https://github.com/
[url "ssh://git@github.com"]
	insteadOf = https://github.com
[pull]
	rebase = false
[credential]
	helper = osxkeychain
EOT

# .gitconfig-personal
GITCONFIG_PERS=$HOME/.gitconfig-personal
cat <<EOT > $GITCONFIG_PERS
[user]
	name = Robert Bruce
	email = entegral@protonmail.com
[url "git@github.com:"]
	insteadOf = https://github.com/
[url "ssh://git@github.com"]
	insteadOf = https://github.com
[pull]
	rebase = false
[credential]
	helper = osxkeychain
EOT

echo "Xcode Command Line Tools and Git installation complete!"