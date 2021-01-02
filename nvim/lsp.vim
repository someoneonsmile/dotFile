:lua << EOF
    local nvim_lsp = require'lspconfig'
    local on_attach = function(_, bufnr)
        require'completion'.on_attach()
    end
    local servers = {
        'rust_analyzer', 'hls', 'gopls',$
        'jedi_language_server', 'pyls',
        'pyright', 'vuels', 'tsserver',
        'vimls', 'purescriptls', 'jsonls',
        'jsonls', 'yamlls', 'html',
        'bashls', 'sqlls'
    }
    for _, server in ipairs(servers) do
        nvim_lsp[server].setup{

        }
    end
EOF

set omnifunc=v:lua.vim.lsp.omnifunc

command! Format execute 'lua vim.lsp.buf.formatting()'
