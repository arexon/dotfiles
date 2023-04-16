return {
    { "better-escape.nvim", enabled = false },
    {
        "alpha-nvim",
        opts = function(_, opts)
            opts.section.header.val = {
                "▄▄▄ ▄▄▄     ▄▄  ▄▄▄▄ ▄▄▄▄ ▄▄▄▄  ▄▄     ▄▄▄ ▄▄▄",
                "▄ █ █▄▄    █▄▄█ ▀▄▄▄  ██  █▄▄▀ █  █    ▄▄█ █ ▄",
                "█ █▄▄▄█    █  █ ▄▄▄▀  ██  █  █ █▄▄▀    █▄▄▄█ █",
                "█▄▄ █▄▄       ▄  ▄ ▄  ▄ ▄▄  ▄▄▄        ▄▄█ ▄▄█",
                "▄▄▄▄ ▄█       ██▄█ █  █ ██ █▀█▀█       █▄ ▄▄▄▄",
                "▄▄ █▄▄▄       █ ▀█ ▀██▀ ██ █ █ █       ▄▄▄█ ▄▄",
            }

            local function button(shortcut, text)
                local _shortcut =
                    shortcut:gsub("%s", ""):gsub("Spc", "<leader>")
                return {
                    type = "button",
                    val = text,
                    on_press = function()
                        local key = vim.api.nvim_replace_termcodes(
                            _shortcut,
                            true,
                            false,
                            true
                        )
                        vim.api.nvim_feedkeys(key, "normal", false)
                    end,
                    opts = {
                        position = "center",
                        text = text,
                        shortcut = shortcut,
                        cursor = 23,
                        width = 46,
                        align_shortcut = "right",
                        hl = "Comment",
                        hl_shortcut = "Comment",
                    },
                }
            end
            opts.section.buttons.val = {
                button("Spc f f", "  Find File"),
                button("Spc f o", "  Recent Files"),
                button("Spc f w", "  Find Word"),
                button("Spc S l", "  Last Session"),
            }

            opts.config.layout[1].val =
                vim.fn.floor(vim.fn.winheight(0) / 2 - 8)
            opts.config.layout[5] = nil
        end,
    },
    {
        "heirline.nvim",
        opts = function(_, opts)
            local status = require("astronvim.utils.status")
            opts.statusline[9] = status.component.lsp({
                lsp_progress = false,
            })
            opts.winbar = false
        end,
    },
}
