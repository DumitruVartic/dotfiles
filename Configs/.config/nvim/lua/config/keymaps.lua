-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Remap Caps to the Ctrl
vim.keymap.set("i", "<C-q>", "<C-o>^", { desc = "Go to start of line while in insert mode" })
vim.keymap.set("i", "<C-e>", "<C-o>$", { desc = "Go to end of line while in insert mode" })
vim.keymap.set("i", "<C-;>", "<C-o>o", { desc = "Go bellow current line while in insert mode" })
vim.keymap.set("i", "<C-'>", "<C-o>O", { desc = "Go above current line while in insert mode" })
