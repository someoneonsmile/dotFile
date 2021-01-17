fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" augroup 可以避免多次设置
augroup AUG_TrimWhitespace
    " au = autocmd
    au!
    au BufWritePre * :call TrimWhitespace()
augroup END
