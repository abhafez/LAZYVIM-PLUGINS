-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- better up/down
local map = LazyVim.safe_keymap_set
local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")

map("n", "<leader>ww", live_grep_args_shortcuts.grep_word_under_cursor)
