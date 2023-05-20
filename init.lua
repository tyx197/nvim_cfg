-- Basic settings
vim.opt.tabstop           = 4
vim.opt.expandtab         = true
vim.opt.softtabstop       = 4
vim.opt.shiftwidth        = 4
vim.opt.autoindent        = true
vim.opt.termguicolors     = true
vim.opt.wrap              = false

-- Theme
require("core.theme")

-- Plugins
require("core.plugins")

-- Plugins' cfg
require("configs.nvim-tree").cfg()
require("configs.bufferline").cfg()
require("configs.lualine").cfg()
require("configs.telescope").cfg()
require("configs.alpha-nvim").cfg()
require("configs.toggleterm").cfg()
require("configs.mason").cfg()
require("configs.cmp").cfg()

-- Lsp
require("configs.lspconfig")

-- Keymaps
require("core.keymaps")

-- Autocmd
require("core.au")

