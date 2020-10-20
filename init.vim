call plug#begin("~/.vim/plugged")

Plug 'wadackel/vim-dogrun'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'

call plug#end()

set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent on

set colorcolumn=80

" Color theme
set t_Co=256
syntax on
colorscheme dogrun

highlight Normal ctermfg=grey ctermbg=black

let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

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













