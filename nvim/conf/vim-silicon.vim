augroup UserVimSiliconGroup
  autocmd!

  let g:silicon = {
    \   'theme':        'gruvbox',
    \   'background':   '#32302f',
    \   'line-number':  v:true,
    \   'round-corner': v:true,
    \   'output': '~/documents/pictures/screenshots/{time:%Y-%m-%d_%H-%M-%S}.png'
    \ }
augroup END
