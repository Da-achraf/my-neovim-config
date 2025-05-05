function ColorMyPencil(color)
    --color = color or 'gruvbox-material'
    --color = color or 'tokyonight'
    --color = color or 'tokyonight-night'
    --color = color or 'carbonfox'
    --color = color or 'duskfox'
    --color = color or 'nordfox'
    --color = color or 'nightfox'

    --color = color or 'terafox'
    color = color or 'rose-pine'
    --color = color or 'catppuccin'
    --color = color or 'kanagawa-wave'
    --
    vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = 'none' })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none' })

end


ColorMyPencil()
