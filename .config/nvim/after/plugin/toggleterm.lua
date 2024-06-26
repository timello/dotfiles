require("toggleterm").setup {
        size = function(term)
                if term.direction == "horizontal" then
                        return 15
                elseif term.direction == "vertical" then
                        return vim.o.columns * 0.4
                end
        end,
        direction = 'horizontal',
        float_opts = {
                border = 'curved',
                -- width = 100,
                -- height = 30,
                -- winblend = 3,
                title_pos = 'left'
        }
}
