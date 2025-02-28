return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
        config = function()
            local dap = require("dapui")
            dap.setup()

            vim.keymap.set("n", "<leader>db", dap.toggle);
            vim.keymap.set("n", "<leader>b", ":DapToggleBreakpoint<CR>");
        end
    },
    {
       "julianolf/nvim-dap-lldb",
       dependencies = { "mfussenegger/nvim-dap" },
    }
}
