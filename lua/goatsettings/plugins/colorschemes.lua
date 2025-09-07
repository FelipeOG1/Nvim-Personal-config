return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            --vim.cmd([[colorscheme rose-pine]])
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            -- solo se activa si quieres usarlo
            vim.cmd([[colorscheme kanagawa]])
	    vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
	    vim.api.nvim_set_hl(0,"Float",{bg = "none"})
	    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })  -- para floats
	    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })  -- borde de floats
	    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })    -- para splits
	    vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })   -- statusline
	    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })       -- números de línea
		    
	    
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        name = "nightfox",
        config = function()
            -- vim.cmd([[colorscheme nightfox]])
        end,
    },
}
