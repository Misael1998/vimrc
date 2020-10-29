syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set number relativenumber
set t_Co=256
set guicursor=
set noshowmode

set updatetime=50

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin("~/.vim/plugged")

Plug 'wadackel/vim-dogrun'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'

call plug#end()

" Color theme
colorscheme dogrun

let g:lightline = {
      \'colorscheme':'dogrun',
      \'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ },
      \}


" Coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"Mappings
nnoremap <SPACE> <Nop>

let mapleader = "\<Space>"

" Navigation between tabs
noremap <leader>h :tabp<CR>
noremap <leader>l :tabn<CR>

let NERDTreeShowHidden=1

function! ToggleNERDTree()
  NERDTreeToggle
  " Set NERDTree instances to be mirrored
  silent NERDTreeMirror
endfunction

" Bind "<leader>n" to toggle NERDTree
nmap <leader>n :call ToggleNERDTree()<CR>
nmap <C-n> :tabnew .<CR>

" Format before save
nmap <leader>f :Prettier<CR>

nmap <leader>q :q<CR>
nmap <leader>wq :wq<CR>
nmap <leader>w :w<CR>
nmap <leader>q1 :q!<CR>

" GIT
nmap <leader>gpom :!git push origin master<CR>
nmap <leader>gaa :!git add .<CR>
nmap <leader>gs :!git status<CR>










