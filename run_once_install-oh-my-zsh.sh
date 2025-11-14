#!/bin/bash

# Install zsh if not present
if ! command -v zsh &> /dev/null; then
    echo "Zsh is not installed. Installing zsh..."
    sudo apt update
    sudo apt install zsh -y
fi

# Install Oh My Zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi
