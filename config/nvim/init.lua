-- init.lua - Modern Neovim config (2025 style)

-- Leader key (must be set early)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic settings
vim.opt.number = true               -- Show current line number
vim.opt.relativenumber = false      -- Relative line numbers (super useful!)
vim.opt.signcolumn = "yes"          -- Always show sign column (for git, diagnostics)
vim.opt.cursorline = true           -- Highlight current line
vim.opt.termguicolors = true        -- Better colors
vim.opt.background = "dark"         -- or "light"

-- Indentation (most people use 4 spaces)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true            -- Use spaces instead of tabs
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false            -- Don't keep search highlights

-- Splits & windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Scrolling
vim.opt.scrolloff = 8               -- Keep 8 lines visible when scrolling
vim.opt.sidescrolloff = 8

-- Hide ~ on empty lines at end of file
vim.opt.fillchars = { eob = " " }

-- Better statusline (built-in, no plugin needed)
vim.opt.laststatus = 3              -- Global statusline (one for all windows)
vim.opt.statusline = [[ %f %m %= %l:%c %p%% ]]

-- Disable mouse if you hate it (optional)
-- vim.opt.mouse = ""

-- Keymaps (very useful ones)
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Clear search highlight with Esc
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- Better indenting in visual mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move lines up/down (like VS Code)
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)