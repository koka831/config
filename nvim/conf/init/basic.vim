set termguicolors
set backspace=2
set clipboard=unnamedplus
set cmdheight=2
set expandtab
set hidden
set ignorecase
set list
" set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set nobackup
set noswapfile
set nowritebackup
" set relativenumber
set number
set shiftwidth=4
set smarttab
set splitbelow
set splitright
set updatetime=300
set tabstop=4
" to keep it unfolded on open file
set foldlevel=99
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set inccommand=split
set pumblend=10
set winblend=10

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
