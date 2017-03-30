#!/bin/bash

# This script is idempotent, i.e. safe to run multiple times.

rm -f .devmode

DOTFILES_DIR=`dirname $(readlink -f $0)`

# Create symlinks. 
ln -sfv -T "$DOTFILES_DIR/base/zsh/zshrc" ~/.zshrc
ln -sfv -T "$DOTFILES_DIR/base/zsh/zshenv" ~/.zshenv

ln -sfv -T "$DOTFILES_DIR/base/vim/vimrc" ~/.vimrc

ln -sfv -T "$DOTFILES_DIR/base/git/gitconfig" ~/.gitconfig
ln -sfv -T "$DOTFILES_DIR/base/git/gitignore" ~/.gitignore

ln -sfv -T "$DOTFILES_DIR/base/tmux/tmux.conf" ~/.tmux.conf

# TODO: Warn if $EXTERNAL_EMAIL is missing. 
ln -sfv -T "$DOTFILES_DIR/base/rc/inputrc" ~/.inputrc
ln -sfv -T "$DOTFILES_DIR/base/rc/procmailrc" ~/.procmailrc

# Source environment so environment variables such as $DOTFILES_DIR can be used in install scripts.
source "$DOTFILES_DIR/base/system/env"

source "$DOTFILES_DIR/base/install/apt.sh"
source "$DOTFILES_DIR/base/install/oh-my-zsh.sh"
source "$DOTFILES_DIR/base/install/vundle.sh"
source "$DOTFILES_DIR/base/install/tmux.sh"

[ -x "$EXTRA_DIR/setup.sh" ] && source $EXTRA_DIR/setup.sh

if [ "$1" = "dev" ] ; then
  touch "$DOTFILES_DIR/.devmode"
  ln -sfv "$DOTFILES_DIR/devtools/vim/ycm/.ycm_extra_conf.py" ~
  "$DOTFILES_DIR/devtools/install/vundle.sh"
fi

echo
echo
echo "Installation completed!"
echo "Log out and login again."
echo
echo
