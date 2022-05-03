local telescope = require('telescope')
telescope.setup({
  defaults = {
    mappings = {
      i = {
        ['<esc>'] = require('telescope.actions').close
      }
    },
    vimgrep_arguments = {
      'rg',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    }
  },
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown({})
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = 'smart_case'
    },
  }
})

telescope.load_extension('fzf')
telescope.load_extension('ui-select')
