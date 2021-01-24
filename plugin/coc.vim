command! -nargs=0 Prettier :CocCommand prettier.formatFile
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

