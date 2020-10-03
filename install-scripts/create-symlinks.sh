#!/bin/bash

ln -sfv -T "$DOTFILES_DIR/zsh/zshrc" ~/.zshrc
ln -sfv -T "$DOTFILES_DIR/zsh/zshenv" ~/.zshenv
ln -sfv -T "$DOTFILES_DIR/vim/vimrc" ~/.vimrc
ln -sfv -T "$DOTFILES_DIR/vim/colors" ~/.vim/colors
ln -sfv -T "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
ln -sfv -T "$DOTFILES_DIR/git/gitignore" ~/.gitignore
ln -sfv -T "$DOTFILES_DIR/tmux/tmux.conf" ~/.tmux.conf
# TODO: Fix i3 for arch
#ln -sfv -T "$DOTFILES_DIR/i3/config" ~/.config/i3/config
ln -sfv -T "$DOTFILES_DIR/x11/xprofile" ~/.xprofile
ln -sfv -T "$DOTFILES_DIR/vscode/user/settings.json" ~/.config/Code\ -\ OSS/User/settings.json