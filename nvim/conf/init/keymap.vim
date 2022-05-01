inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap jj <Esc>

imap <silent><expr> <C-e> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<C-e>'
smap <silent><expr> <C-e> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<C-e>'

noremap <C-n> :NvimTreeToggle<CR>
noremap <C-p> :bp<CR>
noremap <C-t> :TagbarToggle<CR>

noremap ; <CMD>Telescope buffers<CR>

nnoremap <leader>ff <CMD>Telescope find_files<CR>
nnoremap <leader>fb <CMD>Telescope buffers<CR>
nnoremap <leader>fg <CMD>Telescope live_grep<CR>
nnoremap <leader>fh <CMD>Telescope oldfiles<CR>

" Neovim lsp
nnoremap gn <cmd>lua vim.diagnostic.setqflist()<cr>
nnoremap gd <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>a <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap g[ <cmd>lua vim.diagnostic.goto_prev()<cr>
nnoremap g] <cmd>lua vim.diagnostic.goto_next()<cr>
nnoremap gk <Cmd>lua vim.lsp.buf.hover()<cr>
nnoremap gd <Cmd>lua vim.lsp.buf.definition()<cr>
nnoremap gr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap <leader>f <cmd>lua vim.lsp.buf.formatting()<cr>
