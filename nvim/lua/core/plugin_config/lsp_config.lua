--old
--require("mason").setup()
--require("mason-lspconfig").setup({
--  ensure_installed = { "lua_ls" }
--})
--
--local on_attach = function(_, _)
--  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
--  vim.keymap.set('n', '<leader>ca', vim.lsp.code_action, {})
--
--  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
--  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
--  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp.references, {})
--  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
--end
--
--require("lspconfig").lua_ls.setup {
--  on_attach = on_attach
--}

--new
local lsp = require("lsp-zero")

--new
lsp.preset("recommended")

--new
--Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.ensure_installed({
  'clangd',
  'lua_ls',
  'rust_analyzer',
--  'ruby_ls', all broken. Figure out when necessary
  'vimls',
  'jedi_language_server',
  'jdtls',
  'html'
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}


  vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set('n', '<leader>ca',  function() vim.lsp.buf.code_action() end, opts)

  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
  vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)

  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
