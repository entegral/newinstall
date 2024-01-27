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

echo "Xcode Command Line Tools and Git installation complete!"