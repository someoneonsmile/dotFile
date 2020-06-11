" GUI {{{
    " colorscheme Tomorrow-Night

    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    " 不显示工具/菜单栏
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    " 使用内置 tab 样式而不是 gui
    set guioptions-=e
    set nolist

    " 字体
    set guifont=Consolas:h12

    " 全屏
    au GUIEnter * simalt ~x
" }}}

" General {{{
    set nocompatible
    set history=1024
    set autochdir
    set nobomb
    " 设置 alt 键不映射到菜单栏
    set winaltkeys=no

    " Enable filetype plugins
    filetype plugin on
    filetype indent on

    " Set to auto read when a file is changed from the outside
    set autoread

    " With a map leader it's possible to do extra key combinations
    " like <leader>w saves the current file
    let mapleader = ","

    " Fast saving
    nmap <leader>w :w!<cr>

    "Always show current position
    set ruler

    " Height of the command bar
    set cmdheight=2

    " A buffer becomes hidden when it is abandoned
    set hid

    " Configure backspace so it acts as it should act
    set backspace=eol,start,indent
    set whichwrap+=<,>,h,l

    " Ignore case when searching
    set ignorecase

    " When searching try to be smart about cases 
    set smartcase

    " Highlight search results
    set hlsearch

    " Makes search act like search in modern browsers
    set incsearch 

    " Don't redraw while executing macros (good performance config)
    set lazyredraw 

    " For regular expressions turn magic on
    set magic

    " Show matching brackets when text indicator is over them
    set showmatch 

    " How many tenths of a second to blink when matching brackets
    set mat=2

    " No annoying sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500

    " Properly disable sound on errors on MacVim
    if has("gui_macvim")
        autocmd GUIEnter * set vb t_vb=
    endif

    " Add a bit extra margin to the left
    set foldcolumn=1

    " Set utf8 as standard encoding and en_US as the standard language
    set encoding=utf8

    " Use Unix as the standard file type
    set ffs=unix,dos,mac


    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => Files, backups and undo
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Turn backup off, since most stuff is in SVN, git et.c anyway...
    set nobackup
    set nowb
    set noswapfile


    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => Text, tab and indent related
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Use spaces instead of tabs
    set expandtab

    " Be smart when using tabs ;)
    set smarttab

    " 1 tab == 4 spaces
    set shiftwidth=4
    set tabstop=4

    " Linebreak on 500 characters
    set lbr
    set tw=500

    set ai "Auto indent
    set si "Smart indent
    set wrap "Wrap lines
" }}}


" device 相关 {{{
    " 提示的时候预览有问题, 关掉
    set completeopt-=preview
    autocmd CompleteDone * pclose

    " 设置 python3 支持
    " let &pythonthreedll = 'D:\Program Files (x86)\Python37-32\python37.dll'
    " let g:python3_host_prog = 'D:\Program Files (x86)\Python37-32\python.exe'

    " shell
    " set shell=powershell
" }}}


" leader key
let mapleader=","

" 使用系统剪贴板
set clipboard+=unnamed
set ts=4
set nu

set foldlevelstart=999

" custom command {{{
    " 文件保存没有权限时
    " :W sudo saves the file
    " (useful for handling the permission-denied error)
    command! W w !sudo tee % > /dev/null
" }}}

" leader key {{{
    map <leader>q :q!<CR>
    map <leader>cd :cd %:p:h<cr>:pwd<cr>
" }}}


" 语法折叠 {{{
    set foldmethod=syntax
    set foldlevelstart=999
" }}}


" 使光标位置屏幕中间位置
map j gjzz
map k gkzz
map * *zz
map # #zz
map n nzz
noremap <S-n> <S-n>zz
noremap <C-o> <C-o>zz
noremap <C-i> <C-i>zz

" 命令行上下选择
cmap <C-p> <Up>
cmap <C-n> <Down>

" 切换目录树窗口
map <C-h> :NERDTreeToggle<CR>
tmap <C-h> :NERDTreeToggle<CR>

" 最近文件
map <C-e> :MRU<CR>
tmap <C-e> :MRU<CR>

" 注释
map <C-m> <Plug>NERDCommenterToggle

" 打开的 buffer
map <c-b> :CtrlPBuffer<cr>

" 切换窗口 
" ^[ = Alt
map <M-w> <C-w>w
map <M-p> <C-w>p
map <M-h> <C-w>h
map <M-j> <C-w>j
map <M-k> <C-w>k
map <M-l> <C-w>l
map <M-+> <C-w>+
map <M-=> <C-w>=
map <M--> <C-w>-
map <M-<> <C-w><
map <M->> <C-w>>

" <C-w> o 关闭其它所有窗口 :only
" :qa 关闭所有分屏
map <M-H> <C-w>H
map <M-L> <C-w>L
map <M-J> <C-w>J
map <M-K> <C-w>K
map <M-T> <C-w>T

map <M-s> <C-w>s
map <M-v> <C-w>v
map <M-c> <C-w>c
map <M-o> <C-w>o


" 终端模式
" set termwinkey=<C-w>
tmap <Esc> <C-\><C-n>
tmap <M-w> <C-w>w
tmap <M-p> <C-w>p
tmap <M-h> <C-w>h
tmap <M-j> <C-w>j
tmap <M-k> <C-w>k
tmap <M-l> <C-w>l
tmap <M-+> <C-w>+
tmap <M-=> <C-w>=
tmap <M--> <C-w>-
tmap <M-<> <C-w><
tmap <M->> <C-w>>

tmap <M-L> <C-w>L
tmap <M-J> <C-w>J
tmap <M-H> <C-w>H
tmap <M-K> <C-w>K
tmap <M-T> <C-w>T

tmap <M-s> <C-w>s
tmap <M-v> <C-w>v
tmap <M-c> <C-w>c
tmap <M-o> <C-w>o


" 切换标签页
nnoremap <leader>t :tabe<space>
map H gT
map L gt

" 编辑器模式下复制新行
imap <C-d> <Esc>Vypi

" 添加文件后缀类型
set suffixesadd+=.js

