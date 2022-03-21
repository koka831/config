require('nvim-tree').setup {
  diagnostics = {
    enable = true,
  },
  git = {
    ignore = false,
  }
}

require('nvim-web-devicons').setup {
  default = true,
}

require('telescope').setup {
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
  }
}
