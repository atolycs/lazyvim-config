-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts_silent = { noremap = true, silent = true }
local opts_default = { noremap = true, silent = false }

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Control a All select
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", "<cmd>tabedit<CR>")
keymap.set("n", "<tab>", "<cmd>tabnext<CR>", opts_silent)
keymap.set("n", "<S-tab>", "<cmd>tabprev<CR>", opts_silent)

-- Split window
keymap.set("n", "ss", "<cmd>split<CR>", opts_silent)
keymap.set("n", "sv", "<cmd>vsplit<CR>", opts_silent)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts_silent)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts_silent)

-- Clear Highlights
keymap.set("n", "<esc><esc>", "<cmd>noh<CR>", opts_silent)
