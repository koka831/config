require('nvim-treesitter.configs').setup({
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
  -- nvim-ts-context-commentstring
  context_commentstring = {
    enable = true
  }
})
