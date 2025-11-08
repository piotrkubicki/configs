require("copilot").setup({
	filetypes = {
		markdown = true,
		json = true,
		yaml = true,
	},
	suggestion = {
	  enabled = true,
	  auto_trigger = true,
	  hide_during_completion = true,
	  debounce = 75,
	  trigger_on_accept = true,
	  keymap = {
		  accept = "<C-c>",
		  accept_word = "<C-x>",
		  accept_line = "<C-v>",
		  next = "<M-v>",
		  prev = "<M-x>",
		  dismiss = "<C-]>",
	  },
	},
})
