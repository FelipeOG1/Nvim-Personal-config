vim.g.mapleader = " "
vim.keymap.set('n', '<leader>a', ':bprevious<CR>', { noremap = true, silent = true })
local function toggle_terminal()
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_is_valid(buf) and vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
            -- Cambiar a ese buffer
            vim.api.nvim_set_current_buf(buf)
            vim.cmd("startinsert")
            return
        end
    end

    -- Si no hay terminal, abrir nueva
    vim.cmd("term")
    vim.cmd("startinsert")
end

-- Keymap para abrir/alternar terminal
vim.keymap.set("n", "<leader>t", toggle_terminal, { noremap = true, silent = true })

-- Keymap para volver al buffer anterior desde la terminal
vim.keymap.set("t", "<leader>b", function()
    vim.cmd("stopinsert")
    vim.cmd("b#")
end, { noremap = true, silent = true })
vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)
-- Salir del modo terminal y volver a modo normal con <Esc>
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.keymap.set('n',"<leader>q", vim.lsp.buf.hover, { desc = "Hover info" })
local opts = { noremap = true, silent = true }

-- Hover info
vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, { desc = "Hover info" })

-- Go to definition

-- Go to type definition
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, { desc = "Go to type definition" })

-- Go to implementation
vim.keymap.set('n', '<leader>i', vim.lsp.buf.implementation, { desc = "Go to implementation" })

-- List references
vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, { desc = "List references" })

-- Rename symbol
vim.keymap.set('n', '<leader>R', vim.lsp.buf.rename, { desc = "Rename symbol" })

-- Code actions
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code action" })

-- Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Show line diagnostics" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Diagnostics to loclist" })
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })

-- Format buffer
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, { desc = "Format buffer" })
--vim.keymap.set("n","<leader>pf",builtin.find_files,{})

--vim.keymap.set("n","<leader>pg",builtin.git_files,{})


