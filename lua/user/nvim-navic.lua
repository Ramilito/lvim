local M = {}

M.config = function()
  local status_ok, navic = pcall(require, "nvim-navic")
  if not status_ok then
    return
  end
  require("lspconfig").clangd.setup {
    on_attach = function(client, bufnr)
      navic.attach(client, bufnr)
    end
  }
end

return M
