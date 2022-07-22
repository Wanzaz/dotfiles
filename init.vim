set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set autoindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set mouse=a
set smarttab
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set colorcolumn=80 " line on right side
set signcolumn=yes
set fileencodings=utf-8

au Bufenter .c,.h set comments=sl:/,mb:\ ,elx:*/


call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-airline/vim-airline' " status bar
Plug 'tpope/vim-surround' " surrounding ysw), cssb, css], css', etc.
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'glepnir/dashboard-nvim'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'simeji/winresizer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

call plug#end()

" nmap <F8> :TagbarToggle<CR>
" doesn't work yet

set completeopt-=preview " For No Previews

colorscheme gruvbox
set background=dark " Setting dark mode


nnoremap <C-p> :Files<Cr>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" use ctrl-p, ctrl-n = finder   ctrl-u, ctrl-d = moving inside the file
" ctrl-v open file on side

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

