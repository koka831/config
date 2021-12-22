" Language:     Haskell
" Filenames:    *.hs
"
highlight link haskellType GruvboxYellow
highlight link haskellIdentifier GruvboxGreen
highlight link haskellSeparator GruvboxFg3
highlight link haskellDelimiter GruvboxFg3
highlight link haskellOperators GruvboxFg3
highlight link haskellBacktick haskellOperators
highlight link haskellConditional GruvboxRed
highlight link haskellKeyword GruvboxRed
highlight link haskellLet GruvboxRed
highlight link haskellWhere GruvboxRed
" module
highlight link haskellDeclKeyword GruvboxBlue
highlight link haskellDeriving GruvboxRed

" TODO: make highlight atmark better (working though)
" https://github.com/neovim/neovim/blob/b26411bacdebf2e483ce6bd670cfb573555156ec/runtime/syntax/haskell.vim#L47
syn keyword haskellAtmark @
match haskellAtmark \@\
hi def link haskellAtmark GruvboxBlue

" TODO: make it better (working though)
" let type and data belonging in haskellKeyword group
" since they are rather reserved word.
syn keyword haskellAdditionalKeyword otherwise type data id
match haskellAdditionalKeyword "\<\(otherwise\|type\|data\|id\)\>"
hi def link haskellAdditionalKeyword GruvboxRed
