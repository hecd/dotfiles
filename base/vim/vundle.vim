filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle - required!
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'

if filereadable( expand("$DOTFILES_DIR/.devmode") )
  Plugin 'pearofducks/ansible-vim'
  Plugin 'Valloric/YouCompleteMe'
endif 

call vundle#end()

" Required by vundle.
filetype plugin indent on 
