return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {  -- Optional configuration options for the plugin

    -- Define key mappings for the plugin
    keys = {
        -- Jump to a location
        { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },

        -- Flash with Treesitter
        { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },

        -- Remote Flash (operator mode)
        { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },

        -- Treesitter search (operator and visual mode)
        { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },

        -- Toggle Flash search in command-line mode
        { "<c-s>", mode = "c", function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
	}
}
