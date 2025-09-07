return {

    "windwp/nvim-autopairs",
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true,  -- usa treesitter para no cerrar dentro de strings, comentarios, etc.
        })
    end,

}

