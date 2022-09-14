-- unmap a default keymapping
lvim.keys.insert_mode["kj"] = false -- Better Escape doesnt handle kj delay input
lvim.keys.insert_mode["jj"] = false -- Better Escape doesnt handle kj delay input
lvim.keys.insert_mode["jk"] = false -- Better Escape doesnt handle kj delay input

-- keymappings
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<TAB>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-TAB>"] = ":bprevious<CR>"

-- Better window navigation
lvim.keys.normal_mode["<C-Left>"] = "<C-w>h"
lvim.keys.normal_mode["<C-Right>"] = "<C-w>l"
lvim.keys.normal_mode["<C-Up>"] = "<C-w>k"
lvim.keys.normal_mode["<C-Down>"] = "<C-w>j"

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

lvim.keys.normal_mode["Q"] = "<nop>"
