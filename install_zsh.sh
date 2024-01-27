#!/bin/bash

echo "Installing Zsh and Oh My Zsh..."

if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh is already installed."
else
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ "$SHELL" != "$(which zsh)" ]; then
    echo "Setting Zsh as the default shell..."
    chsh -s $(which zsh)
fi

echo "Zsh and Oh My Zsh installation complete!"