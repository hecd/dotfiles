#!/bin/bash

# Source environment config, enabling use of environment variables in install scripts.
source "`dirname $(readlink -f $0)`/system/env"

rm -rf ~/.vim
mkdir -p ~/.vim

source "$DOTFILES_DIR/install-scripts/common.sh"

DISTRO=`awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }'`
source "$DOTFILES_DIR/install-scripts/$DISTRO/install-packages.sh"
source "$DOTFILES_DIR/install-scripts/create-symlinks.sh"

echo
echo
echo "Installation completed!"
echo "Log out and login again."
echo
echo
