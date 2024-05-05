syntax on
set mouse=a
set relativenumber number
" set cursorline
set shiftwidth=4 "Set the indent size to four spaces
set tabstop=4 "Set the tab size to four space
set softtabstop=4
set expandtab "Use spaces instead of tabs
set clipboard=unnamedplus "Use yank and paste with the system clipboard
set nobackup

" Maps
" This is for using jj as the way we hit Esc 
inoremap jk <ESC>

" To use U as the undo-undo
vnoremap <CR>u U

" Maintains center when we use Ctrl - d/u for moving
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

