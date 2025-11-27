local vim = vim
local Plug = vim.fn["plug#"]

vim.g.mapleader = " "

vim.call("plug#begin")

Plug("nvim-tree/nvim-tree.lua")
Plug("nvim-tree/nvim-web-devicons")
Plug("romgrk/barbar.nvim")
Plug("nvim-lualine/lualine.nvim")
Plug("nvim-treesitter/nvim-treesitter", {["branch"] = "main", ["do"] = ":TSUpdate"})
Plug("neovim/nvim-lspconfig")
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug('hrsh7th/cmp-nvim-lsp' ) 
Plug('hrsh7th/cmp-buffer') 
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline') 
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp-signature-help')
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim", {["tag"] = "0.1.8"})
Plug("sindrets/diffview.nvim")
Plug("NeogitOrg/neogit")
Plug("navarasu/onedark.nvim")
Plug("mbbill/undotree")
Plug("copilotlsp-nvim/copilot-lsp")
Plug("zbirenbaum/copilot.lua")
Plug("folke/snacks.nvim")
Plug("coder/claudecode.nvim")

vim.call("plug#end")

home = os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require "common"
require "vimtree"
require "barbar_config"
require "lua_line"
require "treesitter"
require "lsp_conf"
require "cmp_conf"
require "telescope_conf"
require "onedark_conf"
require "mason_conf"
require "undotree_conf"
require "copilot_conf"
require "neogit_conf"
require "claudecode_conf"
