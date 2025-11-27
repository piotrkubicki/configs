require('snacks').setup({
	terminal = { enabled = true }
})
require('claudecode').setup()

local map = vim.keymap.set
local opts = { silent = true }

-- Normal mode
map("n", "<leader>ac", "<cmd>ClaudeCode<cr>",           vim.tbl_extend("force", opts, { desc = "Toggle Claude" }))
map("n", "<leader>af", "<cmd>ClaudeCodeFocus<cr>",      vim.tbl_extend("force", opts, { desc = "Focus Claude" }))
map("n", "<leader>ar", "<cmd>ClaudeCode --resume<cr>",  vim.tbl_extend("force", opts, { desc = "Resume Claude" }))
map("n", "<leader>aC", "<cmd>ClaudeCode --continue<cr>",vim.tbl_extend("force", opts, { desc = "Continue Claude" }))
map("n", "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>",vim.tbl_extend("force", opts, { desc = "Select Claude model" }))
map("n", "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>",      vim.tbl_extend("force", opts, { desc = "Add current buffer" }))
map("n", "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", vim.tbl_extend("force", opts, { desc = "Accept diff" }))
map("n", "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>",   vim.tbl_extend("force", opts, { desc = "Deny diff" }))

-- Visual mode
map("v", "<leader>as", "<cmd>ClaudeCodeSend<cr>",       vim.tbl_extend("force", opts, { desc = "Send to Claude" }))

-- Filetype-specific mapping (NvimTree / neo-tree / etc.)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
  callback = function()
    vim.keymap.set("n", "<leader>as", "<cmd>ClaudeCodeTreeAdd<cr>", {
      buffer = true,
      silent = true,
      desc = "Add file",
    })
  end,
})
