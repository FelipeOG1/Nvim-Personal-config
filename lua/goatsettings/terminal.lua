-- terminal.lua
local function toggle_terminal()
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
         if vim.api.nvim_buf_is_valid(buf) and vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
            vim.api.nvim_set_current_buf(buf)
            vim.cmd("startinsert")
            return
        end
    end

    vim.cmd("term")
    vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>t", toggle_terminal, { noremap = true, silent = true })

vim.keymap.set("t", "<leader>b", function()
    vim.cmd("stopinsert")
    vim.cmd("b#")
end, { noremap = true, silent = true })
