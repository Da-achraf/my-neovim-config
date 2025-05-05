-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>o', ':NvimTreeToggle<CR>', { noremap = true, silent = false })

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  git = {
    enable = false
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
   },
})

