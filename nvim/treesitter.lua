require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "python", "vim", "vimdoc", "query", "go", "markdown" },
	highlight = { enable = true },
	incremental_selection = { enable = true },
	textobjects = { enable = true },
}
