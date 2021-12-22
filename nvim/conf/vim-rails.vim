augroup UserVimRailsGroup
  autocmd!

  let g:rails_projections = {
  \   'app/controllers/*_controller.rb': {
  \     'alternate': [
  \       'spec/requests/{}_spec.rb',
  \       'spec/requests/{}_controller_spec.rb',
  \       'spec/controllers/{}_spec.rb'
  \     ]
  \   },
  \   'spec/requests/*_spec.rb': {
  \     'alternate': [
  \       'app/controllers/{}_controller.rb',
  \       'app/controllers/{}.rb'
  \     ],
  \   }
  \ }
augroup end
