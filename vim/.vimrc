set nocompatible

" Load plugins.
source $DOTFILES_DIR/vim/vundle.vim
source $DOTFILES_DIR/vim/keymappings.vim

set encoding=utf-8
syntax on

set term=screen-256color

" Prevent Vundle failure when initially installing vim-colorschemes.
if filereadable( expand("$HOME/.vim/bundle/vim-colorschemes/colors/wombat256.vim") )
  colorscheme wombat256
endif

" Show line numbers, relative to cursor.
" Cursor shows absolute line number.
set number
set relativenumber

" Expand tabs into spaces and use 2 spaces per tab.
set expandtab
set ts=2
set shiftwidth=2

" Show whitespace characters.
set list
set listchars=tab:▸\ ,eol:¬

" Indent when moving to next line.
set autoindent

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:ycm_show_diagnostics_ui = 1

" Save when switching pane in tmux. 
let g:tmux_navigator_save_on_switch = 1

let NERDTreeIgnore = ['\.pyc$', '\.swp'] 

set undofile
set nobackup

" Create missing directories.
silent execute '!mkdir -p $HOME/.vim/.{swaps,undo}'

" Trailing // creates matching absolute path in directory.
set undodir=~/.vim/.undo//
set directory=~/.vim/.swaps//

let g:ycm_global_ycm_extra_conf = '$HOME/.ycm_extra_conf.py'
