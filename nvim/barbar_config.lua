require'barbar'.setup {
	animation = true,
	clickable = true,
	exclude_ft = {'javascript'},
	exclude_name = {'package.json'},
	focus_on_close = 'left',
	highlight_inactive_file_icons = false,
	highlight_visible = true,
	icons = {
		buffer_index = false,
		buffer_number = false,
		button = '',
		diagnostics = {
		  [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
		  [vim.diagnostic.severity.WARN] = {enabled = false},
		  [vim.diagnostic.severity.INFO] = {enabled = false},
		  [vim.diagnostic.severity.HINT] = {enabled = true},
		},
		gitsigns = {
		  added = {enabled = true, icon = '+'},
		  changed = {enabled = true, icon = '~'},
		  deleted = {enabled = true, icon = '-'},
		},
		filetype = {
		  custom_colors = false,
		  enabled = true,
		},
		separator = {left = '▎', right = ''},
		separator_at_end = true,
		modified = {button = '●'},
		pinned = {button = '', filename = true},
		preset = 'default',
		alternate = {filetype = {enabled = false}},
		current = {buffer_index = true},
		inactive = {button = '×'},
		visible = {modified = {buffer_number = false}},
	},
	insert_at_end = true,
	maximum_padding = 1,
	minimum_padding = 1,
	maximum_length = 30,
	minimum_length = 0,
	semantic_letters = true,
	sidebar_filetypes = {
		NvimTree = true,
		undotree = {text = 'undotree'},
		['neo-tree'] = {event = 'BufWipeout'},
		Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
	},
	letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
	no_name_title = nil,
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
