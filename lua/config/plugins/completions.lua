return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    opts = {
        keymap = {
            ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
            ['<C-e>'] = { 'hide' },
            ['<C-y>'] = { 'select_and_accept' },
            ['<Tab>'] = {
                function(cmp)
                    if cmp.snippet_active() then return cmp.accept()
                    else return cmp.select_and_accept() end
                end,
                'snippet_forward',
                'fallback'
            },

            ['<Up>'] = { 'select_prev', 'fallback' },
            ['<Down>'] = { 'select_next', 'fallback' },
            ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
            ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },

            ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
            ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

            ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

            ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
        },
        
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
        },


        -- See the fuzzy documentation for more information
        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
}
