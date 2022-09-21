local M = {}

local last_diagnostics_result = {}

local mt = {
  __index = function(_, _) return { count = 0, level = nil } end,
}

local severity_name = vim.tbl_add_reverse_lookup({
  [1] = "error",
  [2] = "warning",
  [3] = "info",
  [4] = "hint",
  [5] = "other",
})

setmetatable(severity_name, {
  __index = function() return "other" end,
})

-- local function is_disabled(diagnostics)
--   if
--     not diagnostics
--     or not vim.tbl_contains({ "nvim_lsp", "coc" }, diagnostics)
--     -- check if the current nvim version is one that will have either vim.diagnostics or vim.lsp.diagnostics
--     or (diagnostics == "nvim_lsp")
--     or (diagnostics == "coc" and vim.g.coc_service_initialized ~= 1)
--   then
--     return true
--   end
--   return false
-- end

local function is_insert() -- insert or replace
  local mode = vim.api.nvim_get_mode().mode
  return mode == "i" or mode == "ic" or mode == "ix" or mode == "R" or mode == "Rc" or mode == "Rx"
end

local function get_err_dict(errs)
  local ds = {}
  local max = #severity_name
  for _, err in ipairs(errs) do
    if err then
      -- calculate max severity
      local sev_num = err.severity
      local sev_level = severity_name[sev_num]
      if sev_num < max then max = sev_num end
      -- increment diagnostics dict
      if ds[sev_level] then
        ds[sev_level] = ds[sev_level] + 1
      else
        ds[sev_level] = 1
      end
    end
  end
  local max_severity = severity_name[max]
  return { level = max_severity, errors = ds }
end

function M.get_diagnostics()
  -- if is_disabled(opts.diagnostics) then return setmetatable({}, mt) end
  if is_insert() then
    return setmetatable(last_diagnostics_result, mt)
  end

  local diagnostics = vim.diagnostic.get(vim.fn.bufnr('%'))

  local result = {}
  local d = get_err_dict(diagnostics)
  result = {
    count = #diagnostics,
    level = d.level,
    errors = d.errors,
  }

  last_diagnostics_result = result
  return setmetatable(result, mt)

  -- return result
  -- vim.cmd(
  --   [[autocmd User CocDiagnosticChange lua require('bufferline.diagnostics').refresh_coc_diagnostics()]]
  -- )
end

return M
