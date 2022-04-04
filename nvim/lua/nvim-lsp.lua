local lsp_installer = require("nvim-lsp-installer")
lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

-- setup lsp capabilities
local capabilities = require('cmp_nvim_lsp')
  .update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_status = require('lsp-status')
capabilities = vim.tbl_extend('keep', capabilities, lsp_status.capabilities)

lsp_installer.on_server_ready(function(server)
  local config = {
    capabilities = capabilities,
    on_attach = lsp_status.on_attach,
  }

  if server.name == 'sumneko_lua' then
    config.settings = {
      Lua = {
        diagnostics = {
          globals = { 'vim' },
        },
      },
    }
  end

  server:setup(config)
end)

require('rust-tools').setup({
  tools = {
    inlay_hints = {
      parameter_hints_prefix = '- ',
      other_hints_prefix = '-> ',
    }
  }
})

-- flutter-tools
require('flutter-tools').setup({
  fvm = true,
  lsp = {
    capabilities = capabilities,
    on_attach = lsp_status.on_attach,
    color = {
      -- only available on flutter >= 2.10
      enabled = true,
      virtual_text = true,
      virtual_text_str = '■',
    },
  },
})

-- statusline
require('lualine').setup({
  options = {
    theme = 'gruvbox',
    component_separators = '',
    section_separators = '',
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

-- nvim-cmp
local cmp = require('cmp')
require('nvim-autopairs').setup({ check_ts = true })
local cmp_pair = require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_pair.on_confirm_done({ map_char = { tex = '' } }))
cmp.setup({
  mapping = {
    ['<C-k>'] = cmp.mapping.scroll_docs(-2),
    ['<C-j>'] = cmp.mapping.scroll_docs(2),
  },
  snippet = {
    expand = function(args)
      vim.fn['vsnip#anonymous'](args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'buffer' },
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'vsnip' },
  }),
  formatting = {
    format = require('lspkind').cmp_format({
        mode = 'symbol',
        maxwidth = 50,
    })
  }
})
