-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Define leader key as space
vim.g.mapleader = " "

-- Basic key mappings
keymap.set("n", "x", '"_X', { noremap = true, silent = true })  -- Delete without copying to register
keymap.set("n", "+", "<C-a>", { noremap = true, silent = true })  -- Increment number
keymap.set("n", "-", "<C-x>", { noremap = true, silent = true })  -- Decrement number
keymap.set("n", "<C-a>", "gg<S-v>G", { noremap = true, silent = true })  -- Select all

-- Custom key mappings for system clipboard
keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })  -- Copy to system clipboard
keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true })  -- Paste from system clipboard

-- Quick save and quit
keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })  -- Save
keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })  -- Quit
keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true })  -- Save and quit

-- Navigation enhancements
keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })  -- Move left in split windows
keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })  -- Move down in split windows
keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })  -- Move up in split windows
keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })  -- Move right in split windows

-- Buffer management
keymap.set("n", "<leader>bn", ":bnext<CR>", { noremap = true, silent = true })  -- Next buffer
keymap.set("n", "<leader>bp", ":bprevious<CR>", { noremap = true, silent = true })  -- Previous buffer
keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true })  -- Close buffer

-- Window management
keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })  -- Vertical split
keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })  -- Horizontal split
keymap.set("n", "<leader>se", "<C-w>=", { noremap = true, silent = true })  -- Equalize window sizes
keymap.set("n", "<leader>sx", ":close<CR>", { noremap = true, silent = true })  -- Close current split

-- Code commenting
keymap.set("n", "<leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })  -- Comment/Uncomment line
keymap.set("v", "<leader>/", ":'<,'>CommentToggle<CR>", { noremap = true, silent = true })  -- Comment/Uncomment selection

-- Git shortcuts (using fugitive or lazygit)
keymap.set("n", "<leader>gs", ":Git<CR>", { noremap = true, silent = true })  -- Git status
keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>", { noremap = true, silent = true })  -- Git diff
keymap.set("n", "<leader>gc", ":Git commit<CR>", { noremap = true, silent = true })  -- Git commit
keymap.set("n", "<leader>gp", ":Git push<CR>", { noremap = true, silent = true })  -- Git push
keymap.set("n", "<leader>gl", ":LazyGit<CR>", { noremap = true, silent = true })  -- Open LazyGit

-- Telescope integration for finding files, searching, etc.
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })  -- Find files
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })  -- Live grep
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })  -- Find buffers
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true, silent = true })  -- Find help tags


keymap.set("n", "<leader>a", "ggVG", { noremap = true, silent = true })


-- LSP and code actions
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })  -- Go to definition
keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })  -- Find references
keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })  -- Hover
keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })  -- Rename
keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })  -- Code actions

-- Formatting
keymap.set("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", { noremap = true, silent = true })  -- Format file

-- Terminal integration
keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true })  -- Toggle terminal
