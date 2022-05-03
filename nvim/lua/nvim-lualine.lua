require('lualine').setup({
  options = {
    theme = 'gruvbox',
    component_separators = '',
    section_separators = '',
    disabled_filetypes = { 'NvimTree' },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'filename' },
    lualine_c = { { 'lsp_progress', spinner_symbols = { '⠏', '⠛', '⠹', '⢸', '⣰', '⣤', '⣆', '⡇' } } },
    lualine_x = { 'filetype' },
    lualine_y = {},
    lualine_z = { 'location' },
  },
})
