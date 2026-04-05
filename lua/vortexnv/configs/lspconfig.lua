local servers = {
  lua_ls = {},
  clangd = {},
  dartls = {},
  jdtls = {},
  roslyn_ls = { 
    cmd = {
    "dotnet",
    "C:/Users/luis/Downloads/Microsoft.CodeAnalysis.LanguageServer.win-x64.5.4.0-2.26179.14/content/LanguageServer/win-x64/Microsoft.CodeAnalysis.LanguageServer.dll"
  }
 },
}

for server, config in pairs(servers) do
  config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)

  vim.lsp.config(server, config)
  vim.lsp.enable(server)
end
