require("nvim-treesitter.configs").setup {
        ensure_installed = { "c", "lua", "rust", "typescript" },
        highlight = { enable = true, }
}
