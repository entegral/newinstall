#!/bin/bash

echo "Starting master setup..."

# Prompt for the GitHub username and save to temporary file
read -p "Enter your GitHub username: " github_username
echo $github_username > /tmp/github_username

# Ensure that the dotfiles directory exists
mkdir -p ~/dotfiles

# Download and run SSH key generation script
curl -fsSL https://raw.githubusercontent.com/entegral/newinstall/master/generate_ssh_key.sh | /bin/bash


# Display the public key
echo "Copy the following SSH public key and add it to your GitHub account:"
cat ~/.ssh/id_rsa.pub
echo

# Prompt to continue after adding the key to GitHub
read -p "Press [Enter] key once the SSH key has been added to your GitHub account..."

# Download and run Xcode Command Line Tools and Git install script
curl -fsSL https://raw.githubusercontent.com/entegral/newinstall/master/install_xcode_git.sh | /bin/bash

# Wait until Xcode Command Line Tools are installed
read -p "Press [Enter] key after Xcode Command Line Tools installation is complete..."

# Validate Git installation
if which git > /dev/null; then
    echo "Git is already installed."
else
    echo "Error: Git was not installed. Please resolve any issues with Xcode Command Line Tools installation and try again."
    exit 1
fi

# Download and run Gitconfig install script
curl -fsSL https://raw.githubusercontent.com/entegral/newinstall/master/install_gitconfig.sh | /bin/bash

# Install Homebrew
sudo dseditgroup -o edit -a $USER -t user admin
echo "Installing Homebrew..."
if which brew > /dev/null; then
    echo "Homebrew is already installed."
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
echo "Homebrew installation complete!"

# Download and run Brewfile install script
curl -fsSL https://raw.githubusercontent.com/entegral/newinstall/master/install_brewfile.sh | /bin/bash

# Download and run Zsh and Oh My Zsh install script
curl -fsSL https://raw.githubusercontent.com/entegral/newinstall/master/install_zsh.sh | /bin/bash

# Download and run Zshrc install script
curl -fsSL https://raw.githubusercontent.com/entegral/newinstall/master/install_zshrc.sh | /bin/bash

# Delete the temporary file
rm /tmp/github_username

echo "Master setup complete!"