require("nvim-tree").setup({
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "c", action = "cd" },
                { key = "N", action = "create" },
                { key = "u", action = "dir_up" },
                { key = "t", action = "tabnew" },
                { key = "?", action = "toggle_help" },
            },
        }
    },
    git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        timeout = 400,
    },
})

