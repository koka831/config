local servers = {
  'ccls',
  'eslint',
  'html',
  'solargraph',
  'sumneko_lua',
  'terraformls',
  'tsserver',
  'vimls',
}

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.setup({
    ensure_installed = servers,
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
local lspconfig = require('lspconfig')

for _, ls in ipairs(servers) do
  lspconfig[ls].setup({
    capabilities = capabilities,
  })
end

lspconfig.sumneko_lua.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

require('rust-tools').setup({
  tools = {
    autoSetHints = true,
    inlay_hints = {
      only_current_line = true,
      only_current_line_autocmd = 'CursorHold',
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
    color = {
      -- only available on flutter >= 2.10
      enabled = true,
      virtual_text = true,
      virtual_text_str = '■',
    },
  },
})
