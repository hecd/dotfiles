# (Re-)create directory so Vundle can be cloned (idempotency).
rm -rf $HOME/.vim/bundle
mkdir -p $HOME/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Compile YMC with semantic support.
cd $HOME/.vim/bundle/YouCompleteMe
./install.py --clang-completer
cd -
