return {
    "ThePrimeagen/harpoon",
    config = function()
        local harpoon = require("harpoon")
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        harpoon.setup()

        -- Adding files to Harpoon
        vim.keymap.set("n", "<leader>a", function() mark.add_file() end)

        -- Toggling Harpoon menu
        vim.keymap.set("n", "<C-e>", function() ui.toggle_quick_menu() end)

        -- Navigating to specific files
        vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
    end
}

       
