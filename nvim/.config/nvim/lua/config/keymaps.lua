-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", {})

-- Maintains cursor position when yanking selected text
-- https://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set("v", "y", "myy`y")

-- Replace visual selection without copying it
vim.keymap.set("v", "p", '"_dP')

-- Move lines
--vim.keymap.set("i", "<C-j>", "‹Esc>:move .+1<CR>==gi")
--vim.keymap.set("i", "<C-k>", "<Esc>:move .-2<CR>==gi")
-- vim.keymap.set("n", "<C-j>", ":move .+1<CR>==")
-- vim.keymap.set("n", "<C-k>", ":move .-2<CR>==")

-- nneds to be set to option or command
-- vim.keymap.set("v", "<C-k>", ":move '—2<CR>gv=gv")
-- vim.keymap.set("v", "<C-j>", ":move '>+1<CR>gv=gv")
--
-- my normal vim config
--
--
--aa
-- my normal vim config
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
