augroup UserVimTestGRoup
  autocmd!

  let test#strategy = 'dispatch'
  let g:test#preserve_screen = 1
  let test#ruby#rspec#executable = 'docker-compose exec -e RAILS_ENV=test api rspec'

  nnoremap <leader>t :TestFile<CR>
  nnoremap <leader>s :TestNearest<CR>
  nnoremap <leader>l :TestLast<CR>
augroup end
