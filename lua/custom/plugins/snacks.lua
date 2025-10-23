return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = false },
            dashboard = {
                sections = {
                    { section = "header", },
                    { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
                    { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                    { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                    { section = "startup" },
                },
            },
            toggle = {
                map = vim.keymap.set, -- keymap.set function to use
                which_key = true, -- integrate with which-key to show enabled/disabled icons and colors
                notify = true, -- show a notification when toggling
                -- icons for enabled/disabled states
                icon = {
                    enabled = " ",
                    disabled = " ",
                },
                -- colors for enabled/disabled states
                color = {
                    enabled = "green",
                    disabled = "yellow",
                },
                wk_desc = {
                    enabled = "Disable ",
                    disabled = "Enable ",
                },
            },
            explorer = { enabled = false },
            indent = { enabled = false },
            input = { enabled = false },
            picker = { enabled = false },
            notifier = { enabled = false },
            quickfile = { enabled = false },
            scope = { enabled = false },
            scroll = { enabled = false },
            statuscolumn = { enabled = true },
            words = { enabled = false },
        },
    }
}
