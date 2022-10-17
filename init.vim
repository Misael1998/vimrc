call plug#begin("~/.vim/plugged")
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dbeniamine/cheat.sh-vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'cjuniet/clang-format.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ThePrimeagen/harpoon'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'tmsvg/pear-tree'
call plug#end()

"lua
"lua require('misa')

" Color theme
colorscheme gruvbox-material

"Mappings
let mapleader = " "

let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_transparent_background = 1

" Navigation between tabs
nnoremap <leader>l :tabn<CR>
nnoremap <leader>h :tabp<CR>
nnoremap <leader>c :bd<CR>

nnoremap <leader>nt :tabnew .<CR>

" Format before save
nnoremap <leader>f :Prettier<CR>

nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q1 :q!<CR>

nnoremap <leader>sl <C-w>l
nnoremap <leader>sh <C-w>h
nnoremap <leader>sj <C-w>j
nnoremap <leader>sk <C-w>k

" GIT
nnoremap <leader>gaa :!git add .<CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>

" CC compiler
nnoremap <leader>ccf :!cc %:t<CR>
nnoremap <leader>eb :!./a.out<CR>

" LaTex 
nnoremap <leader>lt :NeoTex<CR>

"Terminal
nnoremap <leader>t :terminal<CR>
tnoremap <Esc> <C-\><C-n>












