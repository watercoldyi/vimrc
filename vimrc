set fileencodings=utf-8,cp936,gbk,gb2312 
set encoding=utf-8 
set nocompatible 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'ctags.vim'
Bundle 'taglist.vim'
Bundle 'echofunc.vim'
Bundle 'winmanager'
Bundle 'iamcco/markdown-preview.vim'
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

"--markdown-preview
 let g:mkdp_path_to_chrome = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
    " path to the chrome or the command to open chrome(or other modern browsers)

let g:mkdp_auto_start = 1 
    " set to 1, the vim will open the preview window once enter the markdown
    " buffer

let g:mkdp_auto_open = 1 
    " set to 1, the vim will auto open preview window when you edit the
    " markdown file

let g:mkdp_auto_close = 1
    " set to 1, the vim will auto close current preview window when change
    " from markdown buffer to another buffer

let g:mkdp_refresh_slow = 0
    " set to 1, the vim will just refresh markdown when save the buffer or
    " leave from insert mode, default 0 is auto refresh markdown as you edit or
    " move the cursor

let g:mkdp_command_for_global = 0
    " set to 1, the MarkdownPreview command can be use for all files,
    " by default it just can be use in markdown file
nmap <silent> <F8> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F8> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode	
