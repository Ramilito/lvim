local home = os.getenv("HOME")
package.path = package.path .. ";" .. home .. "/.config/lvim/?.lua"

-- general
lvim.log.level = "info"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"
lvim.transparent_window = true
-- lvim.leader = "space"

-- customization
lvim.builtin.terminal.active = true
lvim.builtin.alpha.active = true
lvim.builtin.dap.active = false
-- lvim.builtin.cheat.active = true
lvim.builtin.autopairs.active = true
lvim.builtin.notify.active = true

lvim.builtin.project.patterns = { ".git" }
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.bufferline.active = false
-- lvim.builtin.bufferline.options.indicator_icon = nil
-- lvim.builtin.bufferline.options.indicator = { style = "icon", icon = "▎" }

lvim.builtin.lualine.active = true
lvim.builtin.lualine.options.globalstatus = true

lvim.builtin.nvimtree.active = false

require("user.init")
require("lsp.init")

lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("................", {}),
  callback = function(args)
    if not (args.data and args.data.client_id) then
      return
    end
    local status_ok, navic = pcall(require, "nvim-navic")
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    local disallowed_servers = { "html", "cssls", "ionide", "fsautocomplete", "copilot" }

    if
      status_ok
      and client.server_capabilities.documentSymbolProvider
      and not vim.tbl_contains(disallowed_servers, client.name)
    then
      navic.attach(client, bufnr)
    end
  end
})
