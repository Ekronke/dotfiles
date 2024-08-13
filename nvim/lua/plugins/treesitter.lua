return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = { 'vim', 'vimdoc', 'lua', 'cpp', 'c', 'haskell', 'latex', 'markdown' },
            highlight = {
                enable = true,
                disable = { "latex" },
                additional_vim_regex_highlighting = { "latex", "markdown" },
            },
            auto_install = false,
            indent = { enable = true },
        }
    end,
}
