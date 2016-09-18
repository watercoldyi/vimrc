set nocompatible 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'ctags.vim'
Bundle 'taglist.vim'
Bundle 'echofunc.vim'
Bundle 'winmanager'
set nu
set nocp
set ruler
set hlsearch
filetype plugin on
syntax enable
syntax on
colorscheme desert
autocmd bufwritepost vimrc source ~/.vimrc
set tags =tags
set tags +=/usr/include/systags
set tags +=/usr/local/include/usrtags
set tags +=./tags
set autochdir
"current line color
set cursorline
set nocursorcolumn

nmap <F4> :set tags+=/usr/include/lib.tags,/usr/local/freetds/include/tags<cr>
nmap <F3> :!ctags -R --fields=+iaS<cr>

set completeopt =menu,menuone

"-- auto ident
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
"set netrw
let g:loaded_netrw=1
let g:loaded_netrwPlugin=1
"--set taglist
let Tlist_Show_One_file=1
let Tlist_exit_OnlyWindow=1
"--set winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap <F2> :WMToggle<cr>
