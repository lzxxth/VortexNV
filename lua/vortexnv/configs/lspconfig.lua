local lspconfig = vim.lsp.config

local servers = {
  lua_ls = {},
  clangd = {},
  csharp_ls = {},
  dartls = {},
}

for server, config in pairs(servers) do
  config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
  lspconfig[server].setup(config)
end
