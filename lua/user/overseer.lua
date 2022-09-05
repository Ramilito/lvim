local M = {}

M.config = function()
  local status_ok, overseer = pcall(require, "overseer")
  if not status_ok then
    return
  end

  overseer.setup()

end

return M
