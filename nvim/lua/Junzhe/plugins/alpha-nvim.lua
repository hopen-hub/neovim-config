return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
        "██╗  ██╗ ██████╗ ██████╗ ███████╗███╗   ██╗",
        "██║  ██║██╔═══██╗██╔══██╗██╔════╝████╗  ██║",
        "███████║██║   ██║██████╔╝█████╗  ██╔██╗ ██║",
        "██╔══██║██║   ██║██╔═══╝ ██╔══╝  ██║╚██╗██║",
        "██║  ██║╚██████╔╝██║     ███████╗██║ ╚████║",
        "╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═══╝",
        "                     Welcom back,my friend!",
        "                                or myself!  ",
        }

        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
            dashboard.button("SPC e", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
            dashboard.button("f", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("s", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("x", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
            dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
            dashboard.button("SPC s","💻 > split the screen", "<cmd>vsplit<CR>"),
            dashboard.button("SPC h", "❔ > help", "<cmd>help<CR>"),
            dashboard.button("SPC f", "🔴🟠🟡🟢🔵(When you are coding)"),
            dashboard.button("SPC d1(d2,d3)", "summon an item"),
            dashboard.button("g","👍 > support me", "<cmd>e /data/data/com.termux/files/home/.config/nvim/support_me.txt<CR>"),
                  
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)
-- nimated Cursor
        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
