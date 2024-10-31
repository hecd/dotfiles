#!/bin/bash

# Generate required locale before installing packages.
sudo sed -i s/"#sv_SE.UTF-8 UTF-8"/"sv_SE.UTF-8 UTF-8"/ /etc/locale.gen
sudo locale-gen sv_SE.UTF-8

# For idempotency.
rm -rf ~/.oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh
sudo chsh -s /bin/zsh $USER

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

mkdir -p ~/.oh-my-zsh/completions