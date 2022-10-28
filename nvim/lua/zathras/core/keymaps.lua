vim.g.mapleader = ' '
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map('i', "jk", "<esc>", opts)

-- map("n", "<leader>nh", ":nohl<CR>", opts)

-- Save file and close
map('n', '<C-s>', '<cmd>w<cr>', opts)
map('i', '<C-s>', '<esc><cmd>w<cr>', opts)
map('n', '<C-q>', '<cmd>q<cr>', opts)

-- buffer
map('n', '<S-l>', '<cmd>bnext<cr>', opts)
map('n', '<S-h>', '<cmd>bprevious<cr>', opts)
-- map('n', '<C-x>', '<cmd>bdelete<cr>', opts )

map("n", "x", '"_x', opts)

map("n", "<leader>+", "<C-a>", opts)
map("n", "<leader>-", "<C-x>", opts)

map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)

map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
