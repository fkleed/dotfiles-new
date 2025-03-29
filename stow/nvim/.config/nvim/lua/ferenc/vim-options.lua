vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.o.background = "dark"

vim.opt.swapfile = false

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("v", "<leader>y", '"+y', opts)
vim.wo.number = true
