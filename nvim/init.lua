require('settings.options')
require('settings.remaps')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { import = "plugins.cmp" },
        { import = "plugins.comment" },
        { import = "plugins.flash" },
        { import = "plugins.harpoon" },
        { import = "plugins.kanagawa" },
        { import = "plugins.lsp" },
        { import = "plugins.lualine" },
        { import = "plugins.luasnip" },
        { import = "plugins.mason" },
        { import = "plugins.neotree" },
        { import = "plugins.oil" },
        { import = "plugins.telescope" },
        { import = "plugins.treesitter" },
    }
})
