local M = {}

local navic = require "nvim-navic"
local utils = require "user.utils"

vim.api.nvim_set_hl(0, "WinWarning", { fg = "#e0af68" })
vim.api.nvim_set_hl(0, "WinError", { default = true, bg = "NONE", fg = "#f7768e" })

M.winbar_filetype_exclude = {
  "help",
  "startify",
  "dashboard",
  "packer",
  "neogitstatus",
  "NvimTree",
  "Trouble",
  "alpha",
  "lir",
  "Outline",
  "spectre_panel",
  "toggleterm",
}

local excludes = function()
  if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
    vim.opt_local.winbar = nil
    return true
  end
  return false
end

local is_empty = function(s)
  return s == nil or s == ""
end

local get_buf_option = function(opt)
  local status_ok, buf_option = pcall(vim.api.nvim_buf_get_option, 0, opt)
  if not status_ok then
    return nil
  else
    return buf_option
  end
end

local function get_modified()
  if get_buf_option "mod" then
    return "%#NavicText#" .. "" .. " " .. "%t" .. "%*"
  end
  return "%#NavicText#" .. "%t" .. "%*"
end

-- local diagnostics_indicator = function(level)
--   local icon = level:match("error") and " " or " "
--   return icon
-- end

local function get_diagnostics()
  local diagnostics = utils.get_diagnostics()
  -- local indicator = diagnostics_indicator(diagnostics.level)

  if diagnostics.level == "error" then
    return "%#WinError#" .. " " .. "%t" .. "%*"
  elseif diagnostics.level == "warning" then
    return "%#WinWarning#" .. " " .. "%t" .. "%*"
  elseif get_buf_option "mod" then
    return "%#NavicText#" .. " " .. "%t" .. "%*"
  else
    return "%#NavicText#" .. "  " .. "%t" .. "%*"
  end
end

local function get_location()
  local location = navic.get_location()
  if not is_empty(location) then
    return "%#NavicText#" .. " " .. ">" .. " " .. location .. "%*"
  end
  return ""
end

function M.get_winbar()
  -- Use lualine disable file types
  if excludes() then
    return ""
  end

  if navic.is_available() then
    return "%#NavicSeparator#"
        -- .. "%="
        .. "%*"
        .. get_diagnostics()
        -- .. get_modified()
        .. get_location()
        .. "%#NavicSeparator#"
        .. "%*"
  else
    return "%#NavicSeparator#" .. "%=" .. "%*" .. get_modified() .. "%#NavicSeparator#" .. "%*"
  end
end

return M
