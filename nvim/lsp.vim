:lua << EOF
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.hls.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.pyls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.vuels.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.vimls.setup{}

require'lspconfig'.purescriptls.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.yamlls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.sqlls.setup{}
EOF

set omnifunc=v:lua.vim.lsp.omnifunc
