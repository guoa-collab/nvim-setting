local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set({"n","i"},"<C-z>","<Cmd>undo<CR>",{ silent = true })
keymap.set("n", "xx", '"_dd', { noremap = true, silent = true})
keymap.set("n", "<leader>hl", ":nohlsearch<CR>")
