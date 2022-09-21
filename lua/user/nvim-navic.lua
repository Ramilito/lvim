local M = {}

M.config = function()
  local status_ok, navic = pcall(require, "nvim-navic")
  if not status_ok then
    return
  end

  navic.setup {
    highlight = true,
    separator = " " .. ">" .. " ",
    depth_limit = 0,
    depth_limit_indicator = "..",
  }
end
vim.api.nvim_set_hl(0, "WinWarning", { fg = "#e0af68" })
vim.api.nvim_set_hl(0, "WinError", { default = true, bg = "NONE", fg = "#f7768e" })


vim.api.nvim_set_hl(0, "NavicIconsFile",          {default = true, bg = "NONE", fg = "#abb2bf"})
vim.api.nvim_set_hl(0, "NavicIconsModule",        {default = true, bg = "NONE", fg = "#46a6b2"})
vim.api.nvim_set_hl(0, "NavicIconsNamespace",     {default = true, bg = "NONE", fg = "#abb2bf"})
vim.api.nvim_set_hl(0, "NavicIconsPackage",       {default = true, bg = "NONE", fg = "#abb2bf"})
vim.api.nvim_set_hl(0, "NavicIconsClass",         {default = true, bg = "NONE", fg = "#46a6b2"})
vim.api.nvim_set_hl(0, "NavicIconsMethod",        {default = true, bg = "NONE", fg = "#519fdf"})
vim.api.nvim_set_hl(0, "NavicIconsProperty",      {default = true, bg = "NONE", fg = "#d05c65"})
vim.api.nvim_set_hl(0, "NavicIconsField",         {default = true, bg = "NONE", fg = "#d05c65"})
vim.api.nvim_set_hl(0, "NavicIconsConstructor",   {default = true, bg = "NONE", fg = "#46a6b2"})
vim.api.nvim_set_hl(0, "NavicIconsEnum",          {default = true, bg = "NONE", fg = "#46a6b2"})
vim.api.nvim_set_hl(0, "NavicIconsInterface",     {default = true, bg = "NONE", fg = "#46a6b2"})
vim.api.nvim_set_hl(0, "NavicIconsFunction",      {default = true, bg = "NONE", fg = "#519fdf"})
vim.api.nvim_set_hl(0, "NavicIconsVariable",      {default = true, bg = "NONE", fg = "#d05c65"})
vim.api.nvim_set_hl(0, "NavicIconsConstant",      {default = true, bg = "NONE", fg = "#c18a56"})
vim.api.nvim_set_hl(0, "NavicIconsString",        {default = true, bg = "NONE", fg = "#7da869"})
vim.api.nvim_set_hl(0, "NavicIconsNumber",        {default = true, bg = "NONE", fg = "#c18a56"})
vim.api.nvim_set_hl(0, "NavicIconsBoolean",       {default = true, bg = "NONE", fg = "#c18a56"})
vim.api.nvim_set_hl(0, "NavicIconsArray",         {default = true, bg = "NONE", fg = "#46a6b2"})
vim.api.nvim_set_hl(0, "NavicIconsObject",        {default = true, bg = "NONE", fg = "#46a6b2"})
vim.api.nvim_set_hl(0, "NavicIconsKey",           {default = true, bg = "NONE", fg = "#b668cd"})
vim.api.nvim_set_hl(0, "NavicIconsNull",          {default = true, bg = "NONE", fg = "#c18a56"})
vim.api.nvim_set_hl(0, "NavicIconsEnumMember",    {default = true, bg = "NONE", fg = "#c18a56"})
vim.api.nvim_set_hl(0, "NavicIconsStruct",        {default = true, bg = "NONE", fg = "#46a6b2"})
vim.api.nvim_set_hl(0, "NavicIconsEvent",         {default = true, bg = "NONE", fg = "#d5b06b"})
vim.api.nvim_set_hl(0, "NavicIconsOperator",      {default = true, bg = "NONE", fg = "#abb2bf"})
vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", {default = true, bg = "NONE", fg = "#d05c65"})
vim.api.nvim_set_hl(0, "NavicText",               {default = true, bg = "NONE", fg = "#c0caf5"})
vim.api.nvim_set_hl(0, "NavicSeparator",          {default = true, bg = "NONE", fg = "#c0caf5"})

return M
