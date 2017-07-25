filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle - required!
Plugin 'VundleVim/Vundle.vim'

if filereadable(expand("$DOTFILES_DIR/.devmode"))
  source $DOTFILES_DIR/devtools/vim/vundle.vim
endif

call vundle#end()

" Required by vundle.
filetype plugin indent on 
