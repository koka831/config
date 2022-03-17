require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  highlight = {
    enable = true,
    disable = { 'toml', 'yaml', 'markdown', 'make', 'lua' },
    additional_vim_regex_highlighting = {
      'asm',
      'toml',
      'yaml',
      'markdown',
      'make',
      'lua'
    },
  },
}

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

require('bufferline').setup {
  options = {
    numbers = 'none',
    separator_style = {'', ''},
    indicator_icon = '',
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    diagnostics = 'coc',
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  },
  highlights = {
    buffer_selected = {
      guibg = '#3c3836',
      gui = 'bold'
    },
    error_diagnostic = {
      guifg = '#fb4934',
    },
    error_selected = {
      guibg = '#3c3836',
      guifg = '#fb4934',
      gui = 'bold'
    },
    error_diagnostic_selected = {
      guibg = '#3c3836',
      guifg = '#fb4934',
      gui = 'bold'
    },
    warning_diagnostic = {
      guifg = '#fabd2f',
    },
    warning_selected = {
      guibg = '#3c3836',
      guifg = '#fabd2f',
      gui = 'bold'
    },
    warning_diagnostic_selected = {
      guibg = '#3c3836',
      guifg = '#fabd2f',
      gui = 'bold'
    },
    info_selected = {
      guibg = '#3c3836',
      gui = 'bold'
    },
    info_diagnostic_selected = {
      guibg = '#3c3836',
      guifg = '#83a598',
      gui = 'bold'
    },
  }
}
