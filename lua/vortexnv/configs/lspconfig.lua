local servers = {
  lua_ls = {},
  clangd = {},
  dartls = {},
}

for server, config in pairs(servers) do
  config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)

  vim.lsp.config(server, config)
  vim.lsp.enable(server)
end
