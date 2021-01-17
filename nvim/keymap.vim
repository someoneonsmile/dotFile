let mapleader = ","

" force saving
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q!<CR>
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

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

""" unmap {{{
    " you can't unmap internal keybindings, instead of use <Nop>
    " map <key> <Nop>

"""}}}
