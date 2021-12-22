augroup UserCocGroup
  autocmd!
  let g:coc_global_extensions = [
      \ 'coc-clangd',
      \ 'coc-css',
      \ 'coc-cssmodules',
      \ 'coc-dictionary',
      \ 'coc-emoji',
      \ 'coc-eslint',
      \ 'coc-flutter',
      \ 'coc-highlight',
      \ 'coc-json',
      \ 'coc-html',
      \ 'coc-lists',
      \ 'coc-pairs',
      \ 'coc-python',
      \ 'coc-rust-analyzer',
      \ 'coc-snippets',
      \ 'coc-solargraph',
      \ 'coc-spell-checker',
      \ 'coc-stylelint',
      \ 'coc-sql',
      \ 'coc-swagger',
      \ 'coc-tsserver',
      \ 'coc-vimlsp',
      \ 'coc-word',
      \ 'coc-yaml',
      \ 'coc-yank'
  \ ]

  function s:show_documentation()
    if (index(['vim', 'help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

  function s:cocActionsOpenFromSelected(type) abort
    execute 'CocCommand actions.open ' . a:type
  endfunction

  nmap <silent> gn :CocList diagnostics<CR>
  nmap <silent> g[ <Plug>(coc-diagnostic-prev)
  nmap <silent> g] <Plug>(coc-diagnostic-next)

  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> gk :call <SID>show_documentation()<CR>

  nmap <leader>qf <Plug>(coc-fix-current)

  nmap <leader>a v<Plug>(coc-codeaction-selected)
  nmap <leader>rn <Plug>(coc-rename)

  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Use <c-space> to trigger completion.
  if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  else
    inoremap <silent><expr> <c-@> coc#refresh()
  endif
augroup end
