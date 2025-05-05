-- plugins/formatter.lua

-- ALE formatter configuration

-- Enable fix on save
vim.g.ale_fix_on_save = 1

-- Configure fixers for each filetype
vim.g.ale_fixers = {
    javascript = { 'prettier' },
    typescript = { 'prettier' },
    json       = { 'prettier' },
    html       = { 'prettier' },
    css        = { 'prettier' },
    python     = { 'black' },
    lua        = { 'stylua' },
    sh         = { 'shfmt' },
}

vim.keymap.set("n", "<leader>f", ":ALEFix<CR>", { noremap = true, silent = true })

