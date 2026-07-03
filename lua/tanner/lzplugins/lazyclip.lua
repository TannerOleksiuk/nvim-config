return {
    "atiladefreitas/lazyclip",
    config = function()
        require("lazyclip").setup({
            -- Custom configuration options go here
        })
    end,
    keys = {
        -- Open LazyClip {leader}Cw
        { "Cw", desc = "Open Clipboard Manager" },
    },
    -- Optional: Load plugin when yanking text
    event = { "TextYankPost" },
}
