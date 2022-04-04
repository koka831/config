require('nvim-tree').setup({
  diagnostics = {
    enable = true,
  },
  git = {
    ignore = false,
  }
})

require('nvim-web-devicons').setup({
  default = true,
})

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
    }
  }
})
telescope.load_extension('ui-select')
