vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.keymap.set("n", "<A-t>", "<cmd>:NvimTreeToggle<cr>")
vim.keymap.set("n", "<A-f>", "<cmd>:NvimTreeFocus<cr>")

require("nvim-tree").setup()
