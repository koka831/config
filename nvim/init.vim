let s:dein_dir = expand('$HOME/.config/nvim/dein')
let s:dein_repos_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repos_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repos_dir
endif

execute 'set runtimepath+=' . s:dein_repos_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  let s:toml        = s:dein_dir . '/dein.toml'
  let s:lazy_toml   = s:dein_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      { 'lazy': 0 })
  call dein#load_toml(s:lazy_toml, { 'lazy': 1 })

  call dein#end()
  call dein#save_state()

  if dein#check_install()
    call dein#install()
  endif
endif

runtime! conf/init/*.vim

filetype plugin indent on
syntax enable

:lua require('impatient')
:lua require('config')
