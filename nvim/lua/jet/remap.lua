local map = vim.keymap.set

map("n", "WW", ":Ex<CR>")

-- Move visual blocks
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Append the line below to the current line without losing cursor position
map("n", "J", "mzJ`z")

-- Scroll by half screen keeping cursor in center of screen
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "Q", "<nop>")

-- Quick fix
map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Make the current file executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
