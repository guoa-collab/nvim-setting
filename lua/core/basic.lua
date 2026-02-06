local opt = vim.opt
local api = vim.api
local t = true
local f = false

opt.relativenumber = t
opt.cursorline = t
opt.expandtab = t
opt.tabstop = 4
opt.wrap = f
opt.shiftwidth = 0
opt.smartindent = t
opt.autoindent = t
opt.incsearch = t
opt.ignorecase = t
opt.mouse = ""
opt.termguicolors = t
opt.smartcase = t
opt.clipboard = "unnamedplus"
opt.confirm = t
opt.undofile = t
opt.updatetime = 400
opt.timeoutlen = 400
opt.splitbelow = t
opt.splitright = t
opt.formatoptions:remove({ "c", "r", "o" })
opt.swapfile = f
opt.writebackup = f
opt.signcolumn = "yes"
opt.backup = f
opt.lazyredraw = t

api.nvim_set_hl(0, "CursorLineNr", {
  fg = "#FFD700",
  bold = t,
  italic = f
})

api.nvim_set_hl(0, "LineNr", {
  fg = "#FFFFFF",
  bold = t,
})

api.nvim_set_hl(0, "CursorLine", {
  bg = "#606060",
})

api.nvim_set_hl(0, "Visual", {
  bg = "#444444",
})

api.nvim_set_hl(0, "IncSearch", {
  fg = "#000000",
  bg = "#FF8800",
  bold = t,
})

vim.api.nvim_set_hl(0, "Search", {
  fg = "#000000",
  bg = "#FFD700",
  bold = t,
})
