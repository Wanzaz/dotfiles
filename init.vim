set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
au Bufenter .c,.h set comments=sl:/,mb:\ ,elx:*/
set fileencodings=utf-8

function WriteCFile()
	put ='#include<stdio.h>'
	put ='#include<stdlib.h>'
	put =''
	put ='int main()'
	put ='{'
	put ='  return 0;'
	put ='}'
endfunction

au BufNewFile *.c call WriteCFile()

call plug#begin()

Plug 'vim-airline/vim-airline' " status bar
Plug 'tpope/vim-surround' " surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'morhetz/gruvbox'
Plug 'simeji/winresizer'

call plug#end()

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

colorscheme gruvbox
set background=dark " Setting dark mode


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
