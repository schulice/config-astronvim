return {
    'akinsho/toggleterm.nvim',
    -- version = "*",
    opts = {
        shade_terminals = false;
        direction = "float",
        float_opts = {
            border = "curved",
            winblend = 0,
        },
        on_open = function(term)
            local name_map = {
                [1] = "AI",
                [2] = "Tools",
                [3] = "Other",
            }
            local name = name_map[term.id] or "Term"
            local display_title = string.format(" %d: %s ", term.id, name)

            vim.api.nvim_win_set_config(term.window, {
                title = display_title,
                title_pos = "left",
            })
        end
    },
    specs = {
        {
            "AstroNvim/astrocore",
            opts = {
                mappings = {
                    t = {
                        -- ["<ESC><ESC>"] = { "<C-\\><C-N>" },
                    },
                    n = {
                        ["<C-_>"] = {
                            function() vim.cmd [[ ToggleTerm ]] end,
                            noremap = true,
                            silent = true,
                            desc = "Toggle terminal",
                        },
                        ["<C-'>"] = {
                            function()
                                local count = vim.v.count
                                if count == 0 then
                                    vim.cmd("ToggleTerm direction=float")
                                else
                                    vim.cmd(string.format("%dToggleTerm direction=float", count))
                                end
                            end,
                            desc = "Toggle Terminal by count",
                        },
                    }
                },
            },
        },
    },
}

