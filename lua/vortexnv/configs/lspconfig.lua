local M = {}

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.servers = {
  "lua_ls",
  "clangd",
  "dartls",
  "jdtls",
  "roslyn_ls",
}

M.defaults = function()
  local jdtls_cmd = {
    "java",
    "-jar",
    "c:/tools/jdtls/plugins/org.eclipse.equinox.launcher_1.7.100.v20251111-0406.jar",
    "-configuration",
    "c:/tools/jdtls/config_win/",
    "-data",
    "c:/tools/jdtls/workspace",
  }

  local roslyn_ls_cmd = {
    'dotnet',
    'C:/tools/Microsoft.CodeAnalysis.LanguageServer/content/LanguageServer/win-x64/Microsoft.CodeAnalysis.LanguageServer.dll',
    '--logLevel',
    'Information',
    '--extensionLogDirectory',
    vim.fs.joinpath(vim.uv.os_tmpdir(), 'roslyn_ls/logs'),
    '--stdio',
  }

  vim.lsp.config("*", { capabilities = M.capabilities })
  vim.lsp.config("roslyn_ls", { cmd = roslyn_ls_cmd })
  vim.lsp.config("jdtls", { cmd = jdtls_cmd })
  vim.lsp.enable (M.servers)
end

return M
