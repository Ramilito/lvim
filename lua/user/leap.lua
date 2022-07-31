local M = {}

M.config = function()
  local status_ok, leap = pcall(require, "leap")
  if not status_ok then
    return
  end



leap.setup {
  case_insensitive = true,
  -- Leaving the appropriate list empty effectively disables "smart" mode,
  -- and forces auto-jump to be on or off.
  safe_labels = { . . . },
  labels = { . . . },
  -- These keys are captured directly by the plugin at runtime.
  special_keys = {
    repeat_search = '<enter>',
    next_match    = '<enter>',
    prev_match    = '<tab>',
    next_group    = '<space>',
    prev_group    = '<tab>',
    eol           = '<space>',
  },
}
end

return M
