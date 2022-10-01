local status_ok, copilot = pcall(require, "copilot")
if not status_ok then
  return
end

vim.defer_fn(function()
  require("copilot").setup {
    plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
  }
end, 100)
