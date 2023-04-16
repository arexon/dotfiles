return {
    {
        "folke/todo-comments.nvim",
        keys = {
            {
                "<leader>xt",
                "<cmd>TodoTrouble<cr>",
                desc = "Todo (Trouble)",
            },
            {
                "<leader>xa",
                "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>",
                desc = "Todo/Fix/Fixme (Trouble)",
            },
            {
                "<leader>ft",
                "<cmd>TodoTelescope<cr>",
                desc = "Find todos",
            },
        },
    },
    {
        "utilyre/barbecue.nvim",
        event = "BufEnter",
        name = "barbecue",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {},
    },
    {
        "rcarriga/nvim-notify",
        opts = {
            render = "minimal",
            stages = "fade",
            timeout = 2000,
            fps = 60,
        },
    },
}
