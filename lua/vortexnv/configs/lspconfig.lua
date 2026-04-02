local lspconfig = require('lspconfig')

local servers = {
  lua_ls = {},
  clangd = {},
  csharp_ls_ = {},
  dartls = {},
}

for server, config in pairs(opts.servers) do
  config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
  lspconfig[server].setup(config)
end
