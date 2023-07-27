return {
    updater = {
        remote = "origin",
        channel = "stable",
        version = "latest",
        branch = "main",
        commit = nil,
        pin_plugins = nil,
        skip_prompts = false,
        show_changelog = true,
        auto_quit = false,
        remotes = {},
    },
    colorscheme = "catppuccin",
    diagnostics = {
        virtual_text = true,
        underline = true,
    },
    lsp = {
        servers = { "sqlls" },
        formatting = {
            format_on_save = {
                enabled = true,
                allow_filetypes = {},
                ignore_filetypes = {},
            },
            timeout_ms = 1000,
        },
        config = {
            rust_analyzer = {
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = {
                            command = "clippy",
                        },
                    },
                },
            },
        },
    },
    lazy = {
        defaults = { lazy = true },
        performance = {
            rtp = {
                disabled_plugins = {
                    "tohtml",
                    "gzip",
                    "matchit",
                    "zipPlugin",
                    "netrwPlugin",
                    "tarPlugin",
                },
            },
        },
    },
}
