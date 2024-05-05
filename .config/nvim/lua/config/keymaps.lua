-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", {})
--
--
-- my normal vim config
--
-- set relativenumber number

--" Set the indent size to four spaces
--set shiftwidth=4
--
--" Set the tab size to four spaces
--set tabstop=4
--
--" Use spaces instead of tabs
--set expandtab
--
--" This is for using jj as the way we hit Esc
--inoremap jk <ESC>
--
--
--" Maintains center when we use Ctrl - d/u for moving
--nnoremap <C-d> <C-d>zz
--nnoremap <C-u> <C-u>zz
