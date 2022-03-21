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
