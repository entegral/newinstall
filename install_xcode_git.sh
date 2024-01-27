#!/bin/bash

echo "Installing Xcode Command Line Tools..."

# Check if Xcode Command Line Tools are installed
if xcode-select -p 1>/dev/null; then   
    echo "Xcode Command Line Tools already installed."
else
    xcode-select --install
fi

echo "Xcode Command Line Tools installation complete!"