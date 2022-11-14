-- unmap a default keymapping
lvim.keys.insert_mode["kj"] = false -- Better Escape doesnt handle kj delay input
lvim.keys.insert_mode["jj"] = false -- Better Escape doesnt handle kj delay input
lvim.keys.insert_mode["jk"] = false -- Better Escape doesnt handle kj delay input

-- keymappings
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<TAB>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-TAB>"] = ":bprevious<CR>"

-- Better window navigation
lvim.keys.normal_mode["<C-Left>"] = "<C-w><left>"
lvim.keys.normal_mode["<C-Right>"] = "<C-w><right>"
lvim.keys.normal_mode["<C-Up>"] = "<C-w><up>"
lvim.keys.normal_mode["<C-Down>"] = "<C-w><down>"

-- Resize windows
lvim.keys.normal_mode["<C-S-Left>"] = ":vertical resize -2<CR>"
lvim.keys.normal_mode["<C-S-Right>"] = ":vertical resize +2<CR>"
lvim.keys.normal_mode["<C-S-Up>"] = ":resize -2<CR>"
lvim.keys.normal_mode["<C-S-Down>"] = ":resize +2<CR>"

-- Move text up and down
lvim.keys.insert_mode["<S-Down>"] = "<Esc>:m .+1<CR>==gi"
lvim.keys.insert_mode["<S-Up>"] = "<Esc>:m .-2<CR>==gi"
lvim.keys.normal_mode["<S-Down>"] = ":m .+1<CR>=="
lvim.keys.normal_mode["<S-Up>"] = ":m .-2<CR>=="
lvim.keys.visual_mode["<S-Up>"] = ":m '<-2<CR>gv=gv"
lvim.keys.visual_mode["<S-Down>"] = ":m '>+1<CR>gv=gv"

-- Telescope
lvim.keys.normal_mode["<C-p>"] = ":lua require'user/telescope'.find_open_buffers()<CR>"

-- Don't overrite yanked text
lvim.keys.visual_mode["<leader>p"] = "\"_dP"

-- 
lvim.keys.normal_mode["<leader>y"] = "\"+y"
lvim.keys.visual_mode["<leader>y"] = "\"+y"

lvim.keys.visual_mode["<leader>d"] = "\"_d"
lvim.keys.normal_mode["<leader>d"] = "\"_d"

-- unmaps
vim.api.nvim_set_keymap('n', 'q', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'Q', '<nop>', { noremap = true, silent = true })
-- vim.keymap.del("n", "<C-Up>")

vim.api.nvim_set_keymap('n', 'h', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'l', '<nop>', { noremap = true, silent = true })

-- delete word ctrl bs seems to be sent as C-H 
vim.api.nvim_set_keymap('i', '<C-H>', '<C-w>', { noremap = true, silent = true })
