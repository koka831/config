-- nvim-cmp
local cmp = require('cmp')
local ls = require('luasnip')
local types = require('cmp.types')
ls.filetype_extend('rust', { 'rust.generated' })
require('luasnip.loaders.from_snipmate').lazy_load()

local cmp_pair = require('nvim-autopairs.completion.cmp')
cmp.event:on('confirm_done', cmp_pair.on_confirm_done({ map_char = { tex = '' } }))
cmp.setup({
  mapping = {
    ['<C-k>'] = cmp.mapping.scroll_docs(-2),
    ['<C-j>'] = cmp.mapping.scroll_docs(2),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Insert }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Insert }),
    ['<C-y>'] = cmp.mapping.confirm({ select = false }),
  },
  snippet = {
    expand = function(args)
      ls.lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'buffer' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'path' },
    { name = 'luasnip' },
  }),
  formatting = {
    format = require('lspkind').cmp_format({
        mode = 'symbol',
        maxwidth = 50,
    })
  }
})
