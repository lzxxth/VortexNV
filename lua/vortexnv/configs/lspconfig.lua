local lspconfig = require("lspconfig")
local blink = require("blink.cmp").capabilities()

local capabilities = vim.tbl_deep_extend(
  "force",
  {},
  vim.lsp.protocol.make_client_capabilities(),
  blink
)
