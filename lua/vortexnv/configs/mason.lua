return function()
  return("mason").setup({
    ensure_installed = { "lua-language-server","dart","clangd","c_sharp" },
  })
end,
