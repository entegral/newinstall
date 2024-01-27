#!/bin/bash

echo "Installing Homebrew..."

if which brew > /dev/null; then
    echo "Homebrew is already installed."
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Homebrew installation complete!"
