#!/bin/bash

# Remove files possibly created by installation of devmode
rm -f .devmode
rm -rf ~/.vim
if [ "$1" = "dev" ] ; then
  touch "$DOTFILES_DIR/.devmode"
fi

export DOTFILES_DIR=`dirname $(readlink -f $0)`
# Source environment so environment variables such as $DOTFILES_DIR can be used in install scripts.
source "$DOTFILES_DIR/base/system/env"
mkdir -p "$RINGS"/{0..5}

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

source "$DOTFILES_BASE_DIR/install/locale.sh"
source "$DOTFILES_BASE_DIR/install/apt.sh"
source "$DOTFILES_BASE_DIR/install/oh-my-zsh.sh"

[ -x "$EXTRA_DIR/setup.sh" ] && source $EXTRA_DIR/setup.sh

if [ "$1" = "dev" ] ; then
  ln -sfv "$DOTFILES_DEV_DIR/vim/ycm/.ycm_extra_conf.py" ~
  source "$DOTFILES_DEV_DIR/install/vundle.sh"
  source "$DOTFILES_DEV_DIR/install/vagrant.sh"
  source "$DOTFILES_DEV_DIR/install/virtualbox.sh"
fi

echo
echo
echo "Installation completed!"
echo "Log out and login again."
echo
echo
