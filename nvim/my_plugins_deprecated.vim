" ale
Plug 'dense-analysis/ale'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}
nmap <silent> <leader>a <Plug>(ale_next_wrap)
" Disabling highlighting
let g:ale_set_highlights = 0
" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" deoplete 自动补全
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
let g:deoplete#enable_at_startup = 1

" airline
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
Plug 'vim-airline/vim-airline-themes'

" auto pair
Plug 'jiangmiao/auto-pairs'

" Ack
Plug 'mileszs/ack.vim'
