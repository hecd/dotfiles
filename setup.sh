#!/bin/bash

rm -rf ~/.vim

# Source environment config, enabling use of environment variables in install scripts.
source "`dirname $(readlink -f $0)`/base/system/env"

# Create symlinks.
ln -sfv -T "$DOTFILES_BASE_DIR/zsh/zshrc" ~/.zshrc
ln -sfv -T "$DOTFILES_BASE_DIR/zsh/zshenv" ~/.zshenv

mkdir -p ~/.vim
ln -sfv -T "$DOTFILES_BASE_DIR/vim/vimrc" ~/.vimrc
ln -sfv -T "$DOTFILES_BASE_DIR/vim/colors" ~/.vim/colors
ln -sfv -T "$DOTFILES_BASE_DIR/git/gitconfig" ~/.gitconfig
ln -sfv -T "$DOTFILES_BASE_DIR/git/gitignore" ~/.gitignore
ln -sfv -T "$DOTFILES_BASE_DIR/tmux/tmux.conf" ~/.tmux.conf
ln -sfv -T "$DOTFILES_BASE_DIR/rc/inputrc" ~/.inputrc
ln -sfv -T "$DOTFILES_BASE_DIR/rc/procmailrc" ~/.procmailrc
ln -sfv -T "$DOTFILES_BASE_DIR/rc/clipitrc" ~/.config/clipit/clipitrc
ln -sfv -T "$DOTFILES_BASE_DIR/x11/xprofile" ~/.xprofile

source "$DOTFILES_BASE_DIR/install/locale.sh"
source "$DOTFILES_BASE_DIR/install/apt.sh"
source "$DOTFILES_BASE_DIR/install/oh-my-zsh.sh"

[ -x "$EXTRA_DIR/setup.sh" ] && source $EXTRA_DIR/setup.sh

echo
echo
echo "Installation completed!"
echo "Log out and login again."
echo
echo
