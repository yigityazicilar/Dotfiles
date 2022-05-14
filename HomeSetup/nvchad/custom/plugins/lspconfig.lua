local M = {}

M.setup_lsp =function (attach, capabilities)
 local lspconfig = require "lspconfig"

 local servers = {"html", "cssls", "bashls", "clangd", "dockerls", "gopls",
                  "hls", "java_language_server", "jsonls", "pyright", "rust_analyzer",
                  "svelte"}

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = attach,
      capabilities = capabilities,
    }
  end
end

return M