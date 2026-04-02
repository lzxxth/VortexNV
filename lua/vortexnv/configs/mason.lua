require("mason").setup({
  ensure_installed = { "lua-language-server","dart","clangd","c_sharp" },
   registries = {
      "github:mason-org/mason-registry",     -- official Mason registry
      "github:Crashdummyy/mason-registry",   -- custom / unofficial registry
    },
})
