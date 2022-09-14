vim.opt.autoread = true

vim.opt.laststatus = 3
-- vim.opt.winbar = "%f"

vim.o.number = true
vim.o.relativenumber = true

vim.opt.timeoutlen = 20
vim.opt.confirm = true
vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

-- Bottom line
vim.opt.cmdheight = 1
vim.opt.shortmess:append "c"

-- Folding
-- vim.wo.foldcolumn = '1'
-- vim.wo.foldlevel = 99 -- feel free to decrease the value
-- vim.wo.foldenable = true
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- vim.o.foldlevelstart = -1

--rust
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })


if vim.fn.has "wsl" == 1 then
  vim.g.clipboard = {
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
  }
end
