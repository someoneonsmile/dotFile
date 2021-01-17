" GUI {{{
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
    set nohlsearch

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

""" unmap {{{
    " you can't unmap internal keybindings, instead of use <Nop>
    " map <key> <Nop>

"""}}}

" 使用系统剪贴板
set clipboard^=unnamed,unnamedplus

" 设置行号
set nu

" 添加文件后缀类型
set suffixesadd+=.js

" 语法折叠 {{{
    set foldmethod=syntax
    set foldlevelstart=999
" }}}

" custom command {{{
    " 文件保存没有权限时
    " :W sudo saves the file
    " (useful for handling the permission-denied error)
    command! W w !sudo tee % > /dev/null
" }}}

" leader key {{{
    " With a map leader it's possible to do extra key combinations
    " like <leader>w saves the current file
    let mapleader = ","

    " Fast saving
    nnoremap <leader>w :w!<cr>
    nnoremap <leader>q :q!<CR>
    nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>
" }}}


" 使光标位置屏幕中间位置
noremap j gjzz
noremap k gkzz
noremap * *zz
noremap # #zz
noremap n nzz
noremap <S-n> <S-n>zz
noremap <C-o> <C-o>zz
noremap <C-i> <C-i>zz

" 命令行上下选择
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" 切换窗口
" ^[ = Alt
noremap <M-w> <C-w>w
noremap <M-h> <C-w>h
noremap <M-j> <C-w>j
noremap <M-k> <C-w>k
noremap <M-l> <C-w>l
noremap <M-+> <C-w>+
noremap <M-=> <C-w>=
noremap <M--> <C-w>-
noremap <M-<> <C-w><
noremap <M->> <C-w>>

" <C-w>o 关闭其它所有窗口 :only
" :qa 关闭所有分屏
" <C-w>T move split to new tab
noremap <M-r> <C-w>r
noremap <M-H> <C-w>H
noremap <M-L> <C-w>L
noremap <M-J> <C-w>J
noremap <M-K> <C-w>K
noremap <M-T> <C-w>T

" <C-w>c :close - close split
" <C-w>q :q - close split and quit file
" <C-w>n :new [file]
noremap <M-n> <C-w>n
noremap <M-s> <C-w>s
noremap <M-v> <C-w>v
noremap <M-c> <C-w>c
noremap <M-q> <C-w>q
noremap <M-o> <C-w>o


" 终端模式
" set termwinkey=<C-w>
tnoremap <Esc> <C-\><C-n>
tnoremap <M-w> <C-w>w
tnoremap <M-p> <C-w>p
tnoremap <M-h> <C-w>h
tnoremap <M-j> <C-w>j
tnoremap <M-k> <C-w>k
tnoremap <M-l> <C-w>l
tnoremap <M-+> <C-w>+
tnoremap <M-=> <C-w>=
tnoremap <M--> <C-w>-
tnoremap <M-<> <C-w><
tnoremap <M->> <C-w>>

tnoremap <M-r> <C-w>r
tnoremap <M-L> <C-w>L
tnoremap <M-J> <C-w>J
tnoremap <M-H> <C-w>H
tnoremap <M-K> <C-w>K
tnoremap <M-T> <C-w>T

tnoremap <M-n> <C-w>n
tnoremap <M-s> <C-w>s
tnoremap <M-v> <C-w>v
tnoremap <M-c> <C-w>c
tnoremap <M-q> <C-w>q
tnoremap <M-o> <C-w>o


" 切换标签页
nnoremap <leader>t :tabe<space>
nnoremap H gT
nnoremap L gt

" 编辑器模式下
" 复制新行
inoremap <C-d> <Esc>Ypi
" 移动至行首
inoremap <C-a> <C-o>^
" 移动至行尾
inoremap <C-e> <C-o>$

