return {
    'tamton-aquib/duck.nvim',
    config = function()
        vim.keymap.set('n', '<leader>d1', function() require("duck").hatch("😀", 7) end, {}) -- A pretty fast duck

         vim.keymap.set('n', '<leader>d2', function() require("duck").      hatch("💸", 7) end, {})
        vim.keymap.set('n', '<leader>d3', function() require("duck").hatch("🤖", 7) end, {})

        vim.keymap.set('n', '<leader>d4', function() require("duck").hatch("💩") end, {})
        vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
        vim.keymap.set('n', '<leader>da', function() require("duck").cook_all() end, {})
    end
}
