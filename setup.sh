#!/bin/bash

# This script is idempotent, i.e. safe to run multiple times.

DOTFILES_DIR=`dirname $(readlink -f $0)`

# Create symlinks. 
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sfv "$DOTFILES_DIR/zsh/.zshenv" ~

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/vim/ycm/.ycm_extra_conf.py" ~

ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore" ~

ln -sfv "$DOTFILES_DIR/tmux/.tmux.conf" ~

ln -sfv "$DOTFILES_DIR/rc/.inputrc" ~
ln -sfv "$DOTFILES_DIR/rc/.procmailrc" ~

# Source environment so environment variables such as $DOTFILES_DIR can be used during installation. 
source "$DOTFILES_DIR/system/.env"

# Install packages and plugins.
source "$DOTFILES_DIR/install/apt.sh"
source "$DOTFILES_DIR/install/oh-my-zsh.sh"
source "$DOTFILES_DIR/install/vundle.sh"

echo
echo
echo "Installation completed!"
echo "Log out and login again."
echo
echo
