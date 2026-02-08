local map = vim.keymap.set
vim.g.mapleader = " "
local opts = { silent = true }
map({ "n", "i" }, "<C-z>", "<Cmd>undo<CR>", opts)
map("n", "xx", '"_dd', { noremap = true, silent = true })
map("n", "<leader>hl", "<Cmd>nohlsearch<CR>", opts)
map("n", "<leader>bh", "<Cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<leader>bl", "<Cmd>BufferLineCycleNext<CR>", opts)
map("n", "<leader>bp", "<Cmd>BufferLineCyclePick<CR>", opts)
map("n", "<leader>bd", "<Cmd>Bdelete<CR>", opts)
map("n", "<leader>hp", "<Cmd>HopWord<CR>", opts)
