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

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" 设置 alt 键不映射到菜单栏
set winaltkeys=no
