require'nvim-treesitter.configs'.setup { 
  ensure_installed = "maintained",
  ignore_install = {
      "teal",
      "zig",
      "jsonc",
      "scala",
      "swift",
      "haskell",
      "fortran",
      "elm",
      "erlang"
  },
  highlight = { 
    enable = true 
  } 
}
