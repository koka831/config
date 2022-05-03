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
