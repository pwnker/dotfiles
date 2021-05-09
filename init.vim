" install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')

Plug 'danilo-augusto/vim-afterglow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" settings
let g:afterglow_use_italics=0
colorscheme afterglow
set number
set termguicolors
