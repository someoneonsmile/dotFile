call plug#begin('~/.vim/plugged')

""" 文本对象 {{{

    Plug 'kana/vim-textobj-user'

    " e 整个文件
    Plug 'kana/vim-textobj-entire'

    " i 缩进
    Plug 'kana/vim-textobj-indent'

    " y 关键字
    Plug 'kana/vim-textobj-syntax'

    " f 函数
    " Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }

    " , 参数
    Plug 'sgur/vim-textobj-parameter'

    " o 创建对象
    Plug 'someoneonsmile/vim-textobj-objnew', { 'rtp': 'textobj-objnew','for':['java'] }

""" }}}

""" 主题 {{{

    set termguicolors

    " gruvbox
    Plug 'morhetz/gruvbox'
    autocmd vimenter * colorscheme gruvbox
    set background=dark
    let g:gruvbox_contrast_dark = 'sort'

""" }}}

" emmet
Plug 'mattn/emmet-vim'

" NERDTree
Plug 'preservim/nerdtree'
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <C-h> :NERDTreeToggle<CR>
tmap <C-h> :NERDTreeToggle<CR>

" mru
Plug 'vim-scripts/mru.vim'
map <C-e> :MRU<CR>
tmap <C-e> :MRU<CR>

" ctrlp
Plug '/ctrlpvim/ctrlp.vim'

" 表格对齐
Plug 'godlygeek/tabular'

" vim easy align
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" 自动补登括号
Plug 'Raimondi/delimitMate'

" vim repeat
Plug 'tpope/vim-repeat'

" 改变包围方式/在两边添加
" cs / ysiw
Plug 'tpope/vim-surround'

" 单词变体/改变连词方式(Coercion)
" 1) :Subvert/child{,ren}/adult{,s}/g
" 2) MixedCase (crm), camelCase (crc), snake_case (crs), UPPER_CASE (cru),
"   dash-case (cr-), dot.case (cr.), space case (cr<space>),
"   and Title Case (crt) are all just 3 keystrokes away.
Plug 'tpope/vim-abolish'

" 注释
Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1
map <C-m> <Plug>NERDCommenterToggle

" vim-go
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" rust
Plug 'rust-lang/rust.vim'

" flake8
Plug 'nvie/vim-flake8'

" less
Plug 'groenewege/vim-less'

" git
Plug 'airblade/vim-gitgutter'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf.vim
" :Buffers 显示 打开的 buffer
" :Lines 显示 loaded buffers lines
" :BLines 显示当前 buffer 行, 可以过虑行
" :Files 显示 file
" :GFiles 显示 git file
" :GFiles? 显示 git modified file
" :Commits 显示 git commit log
" :BCommits 显示 git commit log for current buffer
" :Commands 显示 vim command
" :Maps 显示 所有 noremap
" :Colors 显示所有 color scheme
" <C-d> 退出输入, 退出窗口
" <M-C> 退出窗口 (normal mode)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
noremap <silent> <leader>s :FZF<CR>
noremap <leader>r :Rg<Space>
noremap <leader>b :Buffers<CR>
noremap <leader>g :GFiles<CR>
" Default fzf layout
" - down / up / left / right / window
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
let g:fzf_layout = { 'down': '40%' }

" lightline
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

" wx 小程序支持
Plug 'chemzqm/wxapp.vim'

" 交换行
Plug 'someoneonsmile/vim-plugs', {'rtp': 'swap-line'}
" nmap <c-j> <Plug>(SWAPLINE_swapDown)
" nmap <c-k> <plug>(SWAPLINE_swapUp)
imap <c-j> <plug>(SWAPLINE_swapDown)
imap <c-k> <plug>(SWAPLINE_swapUp)

call plug#end()

