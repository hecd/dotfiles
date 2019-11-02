#!/bin/bash

rm -rf ~/.vim

# Source environment config, enabling use of environment variables in install scripts.
source "`dirname $(readlink -f $0)`/system/env"

# Create symlinks.
ln -sfv -T "$DOTFILES_DIR/zsh/zshrc" ~/.zshrc
ln -sfv -T "$DOTFILES_DIR/zsh/zshenv" ~/.zshenv

mkdir -p ~/.vim
ln -sfv -T "$DOTFILES_DIR/vim/vimrc" ~/.vimrc
ln -sfv -T "$DOTFILES_DIR/vim/colors" ~/.vim/colors
ln -sfv -T "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
ln -sfv -T "$DOTFILES_DIR/git/gitignore" ~/.gitignore
ln -sfv -T "$DOTFILES_DIR/tmux/tmux.conf" ~/.tmux.conf
ln -sfv -T "$DOTFILES_DIR/i3/config" ~/.config/i3/config
ln -sfv -T "$DOTFILES_DIR/x11/xprofile" ~/.xprofile

source "$DOTFILES_DIR/install/locale.sh"
source "$DOTFILES_DIR/install/apt.sh"
source "$DOTFILES_DIR/install/oh-my-zsh.sh"

[ -x "$EXTRA_DIR/setup.sh" ] && source $EXTRA_DIR/setup.sh

echo
echo
echo "Installation completed!"
echo "Log out and login again."
echo
echo
