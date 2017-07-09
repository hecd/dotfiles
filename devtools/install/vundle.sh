# Since developer mode will be enabled after base vundle plugins were installed -> run install again.
vim +PluginInstall +qall

# Compile YMC with semantic support.
cd $HOME/.vim/bundle/YouCompleteMe
./install.py --clang-completer
cd -
