return {
    {
        "nvim-telescope/telescope.nvim", version = "0.2.1",

        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        
        -- Configure Key Mappings
        keys = {
            -- Keymapping for finding files
            {
                "<leader>ff",
                function() require("telescope.builtin").find_files() end,
                desc = "Find files",
            },
            -- Keymapping for live grep
            {
                "<leader>lg",
               function() require("telescope.builtin").live_grep() end,
                desc = "Live Grep",
            },
        }
    }
}
