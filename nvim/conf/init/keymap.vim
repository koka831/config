inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap jj <Esc>

noremap <C-_> :Commentary<CR>
noremap <C-n> :NvimTreeToggle<CR>
noremap <C-p> :bp<CR>
noremap <C-t> :TagbarToggle<CR>

noremap ; <CMD>Telescope buffers<CR>

nnoremap <leader>ff <CMD>Telescope find_files<CR>
nnoremap <leader>fb <CMD>Telescope buffers<CR>
nnoremap <leader>fg <CMD>Telescope live_grep<CR>
nnoremap <leader>fh <CMD>Telescope oldfiles<CR>
