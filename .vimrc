set fileencodings=utf-8 
set encoding=utf-8 
set nocompatible 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'taglist.vim'
Bundle 'echofunc.vim'
Bundle 'winmanager'
Bundle 'AutoComplPop'
Bundle 'OmniCppComplete'
set nu
set nocp
set ruler
set hlsearch
filetype plugin on
syntax enable
syntax on
colorscheme desert
autocmd bufwritepost vimrc source ~/.vimrc
set tags=tags;
set autochdir
"current line color
set cursorline
set nocursorcolumn

nmap <F4> :set tags+=/usr/include/lib.tags,/usr/local/freetds/include/tags<cr>
nmap <F3> :!ctags -R --fields=+iaS<cr>

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

augroup filetype
    au! BufRead,BufNewFile *.sproto setfiletype sproto
augroup end

"成对补全
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest
