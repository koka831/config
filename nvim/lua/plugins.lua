require('nvim-tree').setup({
  diagnostics = {
    enable = true,
    -- show_on_dirs = true,
  },
  filters = {
    custom = {
      'node_modules',
      '.cache',
    }
  },
  git = {
    ignore = false,
  },
  view = {
    mappings = {
      list = {
        -- set empty action to use scroll action
        { key = "<C-e>", action = "" }
      }
    }
  }
})

require('nvim-web-devicons').setup({
  default = true,
})

require('fidget').setup({
  text = {
    spinner = 'dots',
    done = ''
  }
})
