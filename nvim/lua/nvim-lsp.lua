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
local lsp_status = require('lsp-status')
capabilities = vim.tbl_extend('keep', capabilities, lsp_status.capabilities)
local lspconfig = require('lspconfig')

for _, ls in ipairs(servers) do
  lspconfig[ls].setup({
    capabilities = capabilities,
    on_attach = lsp_status.on_attach,
  })
end

lspconfig.sumneko_lua.setup({
  capabilities = capabilities,
  on_attach = lsp_status.on_attach,
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
