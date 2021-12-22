augroup UserColorGroup
  autocmd!

  set background=dark
  colorscheme gruvbox-material

  hi clear CursorLine
  " for rustOperator in floating window
  highlight Normal ctermbg=none guibg=none
  highlight LineNr ctermbg=none guibg=none
  highlight CursorLineNr term=bold cterm=none ctermfg=yellow
  highlight PmenuSel ctermbg=Yellow ctermfg=Black
  highlight PmenuSbar ctermfg=Yellow guifg=Yellow
  highlight VertSplit ctermbg=none ctermfg=green guibg=none

  highlight SignColumn ctermbg=black guibg=#282828
  highlight GitGutterAdd ctermfg=green guibg=#282828 guifg=#b8bb26
  highlight GitGutterChange ctermfg=yellow guifg=#fabd2f
  highlight GitGutterDelete ctermfg=red guifg=#fb4934
  highlight GitGutterChangeDelete ctermfg=blue guifg=#83a598

  highlight CocErrorSign ctermfg=red guibg=#282828 guifg=#fb4934
  highlight CocWarningSign ctermfg=yellow guibg=#282828 guifg=#fabd2f
  highlight CocHintSign ctermfg=green guibg=#282828 guifg=#b8bb26
  highlight CocInfoSign ctermfg=blue guibg=#282828 guifg=#83a598

  " for rust-analyzer.inlayHints
  highlight CocRustChainingHint ctermfg=gray guifg=#928374
  highlight CocRustTypeHint ctermfg=gray guifg=#928374
  autocmd FileType list set winhighlight=CursorLine:CocUnderline

  highlight commentTSNote guifg=#83a598 cterm=bold gui=bold
  highlight link commentTSWarning Yellow
  highlight link commentTSDanger Red

  " for Ruby symbols
  highlight link TSSymbol Purple

  " @keyword in comment
  highlight link commentTSConstant Purple

  " rust
  highlight link rustTSType Yellow
  highlight link rustTSNamespace Green
  highlight link rustTSFuncMacro Green
  highlight link rustTSConstant Green
augroup END
