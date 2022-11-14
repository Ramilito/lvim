local home = os.getenv("HOME")
package.path = package.path .. ";" .. home .. "/.config/lvim/?.lua"

-- general
lvim.log.level = "info"
lvim.format_on_save = false
lvim.colorscheme = "nightowl"
lvim.transparent_window = false

-- customization
lvim.builtin.terminal.active = true
lvim.builtin.alpha.active = true

-- lvim.builtin.project.patterns = { ".git" }
-- lvim.builtin.project.detection_methods = { "pattern" }

lvim.builtin.lualine.active = true
lvim.builtin.lualine.options.globalstatus = true

lvim.builtin.indentlines.active = false
lvim.builtin.dap.active = false
lvim.builtin.project.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
lvim.builtin.breadcrumbs.active = false
lvim.builtin.nvimtree.active = false

require("user.init")
require("lsp.init")

lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
