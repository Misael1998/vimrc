syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set number relativenumber
set noshowmode
set showtabline=2

set updatetime=50

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin("~/.vim/plugged")

Plug 'wadackel/vim-dogrun'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

Plug 'haishanh/night-owl.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Color theme
colorscheme night-owl

"status line
let g:lightline = {
      \'colorscheme':'dogrun'
      \}

let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}

let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}

let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
  \ }


" Coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

"Mappings
nnoremap <SPACE> <Nop>

let mapleader = "\<Space>"

" Navigation between tabs
noremap <leader>h :tabp<CR>
noremap <leader>l :tabn<CR>

nmap <leader>nt :tabnew .<CR>
nmap <leader>e :CocCommand explorer<CR>

" Format before save
nmap <leader>f :Prettier<CR>

nmap <leader>q :q<CR>
nmap <leader>wq :wq<CR>
nmap <leader>w :w<CR>
nmap <leader>q1 :q!<CR>

nmap <leader>sl <C-w>l
nmap <leader>sh <C-w>h

" GIT
nmap <leader>gpom :!git push origin master<CR>
nmap <leader>gaa :!git add .<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>










