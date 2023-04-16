return {
    "AstroNvim/astrocommunity",

    { import = "astrocommunity.colorscheme.catppuccin" },
    {
        "catppuccin",
        opts = {
            flavour = "macchiato",
        },
    },

    { import = "astrocommunity.bars-and-lines.scope-nvim" },

    { import = "astrocommunity.diagnostics.trouble-nvim" },
    { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
    { import = "astrocommunity.editing-support.todo-comments-nvim" },

    { import = "astrocommunity.motion.nvim-surround" },

    { import = "astrocommunity.completion.copilot-lua" },
    { import = "astrocommunity.completion.copilot-lua-cmp" },

    { import = "astrocommunity.pack.rust" },
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.astro" },
    { import = "astrocommunity.pack.json" },

    { import = "astrocommunity.project.neoconf-nvim" },

    { import = "astrocommunity.utility.noice-nvim" },
    {
        "noice.nvim",
        opts = {
            presets = { lsp_doc_border = true },
        },
    },
}
