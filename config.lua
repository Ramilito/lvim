local home = os.getenv("HOME")
package.path = package.path .. ";" .. home .. "/.config/lvim/?.lua"

-- general
lvim.log.level = "info"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"
lvim.transparent_window = false
-- lvim.leader = "space"

-- customization
lvim.builtin.terminal.active = true
lvim.builtin.alpha.active = true
lvim.builtin.dap.active = true
-- lvim.builtin.cheat.active = true
lvim.builtin.autopairs.active = true
lvim.builtin.notify.active = true

lvim.builtin.project.patterns = { ".git" }
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.bufferline.active = true

lvim.builtin.lualine.active = true
lvim.builtin.lualine.options.globalstatus = true

lvim.builtin.nvimtree.active = false

lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

require("user.init")
require("lsp.init")

-- lvim.autocommands.custom_groups = {
--   { "WinEnter,CursorHold,TabEnter,FocusGained", "*", ":checktime" },
-- }
