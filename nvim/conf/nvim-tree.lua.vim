augroup UserNvimTreeLuaGroup
  autocmd!

  let g:nvim_tree_ignore = ['.git', 'node_modules', '.cache']
  let g:nvim_tree_icons = {
  \ 'git': {
  \   'unstaged': '!',
  \   'staged': '+',
  \   'untracked': '?'
  \ }
  \ }
augroup end
