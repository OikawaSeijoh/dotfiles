" ========================
" Vim Plugin Setup
" ========================
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rainglow/vim'
call plug#end()

" ========================
" General Settings
" ========================
syntax on
set clipboard=unnamedplus
set laststatus=2
set termguicolors
set noshowmode
colorscheme kaliarch

" Set tab width to 4 spaces
set tabstop=4       " Number of visual spaces per TAB
set shiftwidth=4    " Number of spaces to use for each indentation level
set softtabstop=4   " Number of spaces a <Tab> counts for while editing
set expandtab       " Convert tabs to spaces


" FZF shortcut to search files
nnoremap <C-p> :Files<CR>

