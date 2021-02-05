set exrc

call plug#begin("~/.vim/plugged")
Plug 'wadackel/vim-dogrun'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'haishanh/night-owl.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dbeniamine/cheat.sh-vim'
call plug#end()

" Color theme
colorscheme night-owl

"Mappings
let mapleader = " "

" Navigation between tabs
nnoremap <leader>h :tabn<CR>
nnoremap <leader>l :tabp<CR>

nnoremap <leader>nt :tabnew .<CR>
nnoremap <leader>e :CocCommand explorer<CR>

" Format before save
nnoremap <leader>f :Prettier<CR>

nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q1 :q!<CR>

nnoremap <leader>sl <C-w>l
nnoremap <leader>sh <C-w>h

" GIT
nnoremap <leader>gpom :!git push origin master<CR>
nnoremap <leader>gaa :!git add .<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>

" CC compiler
nnoremap <leader>ccf :!cc %:t<CR>
nnoremap <leader>eb :!./a.out<CR>

" LaTex 
nnoremap <leader>lt :!pdflatex %:t<CR>






