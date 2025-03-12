return {
    'windwp/nvim-autopairs',
    lazy = false,
    config = function()
        require("nvim-autopairs").setup({})
    end
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
}
