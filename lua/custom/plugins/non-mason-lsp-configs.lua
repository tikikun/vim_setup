return {
  'neovim/nvim-lspconfig',
  config = function()
    vim.diagnostic.config({
      update_in_insert = true
    })
    vim.lsp.config('clangd', {
      on_attach = require("custom.utils.lsp"),
      capabilities = vim.lsp.protocol.make_client_capabilities()
    })
    vim.lsp.enable('clangd')
  end
}
