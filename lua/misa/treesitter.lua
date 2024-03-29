require'nvim-treesitter.configs'.setup { 
    ensure_installed = "all",
    ignore_install = {
        "beancount",
        "markdown",
        "swift",
        "vala"
    },
    highlight = { 
        enable = true 
    } 
}
