local feline = require('feline')

-- Define components
local vi_mode_utils = require('feline.providers.vi_mode')
local lsp = require('feline.providers.lsp')
local git = require('feline.providers.git')

-- Theme colors
local colors = {
  bg        = '#1e1e2e',
  fg        = '#cdd6f4',
  yellow    = '#f9e2af',
  cyan      = '#89dceb',
  darkblue  = '#89b4fa',
  green     = '#a6e3a1',
  orange    = '#fab387',
  magenta   = '#cba6f7',
  blue      = '#74c7ec',
  red       = '#f38ba8'
}

-- Left components
local left = {
  {
    provider = vi_mode_utils.get_vim_mode,
    hl = function()
      return {
        name = vi_mode_utils.get_mode_highlight_name(),
        fg = colors.bg,
        bg = colors.green,
        style = 'bold'
      }
    end,
    left_sep = 'block',
    right_sep = 'block',
  },
  {
    provider = 'file_info',
    hl = { fg = colors.blue, bg = colors.bg },
    left_sep = ' ',
    right_sep = ' ',
  },
  {
    provider = 'git_branch',
    hl = { fg = colors.magenta },
    left_sep = ' | ',
  },
}

-- Middle components
local middle = {
  {
    provider = 'diagnostic_errors',
    hl = { fg = colors.red },
  },
  {
    provider = 'diagnostic_warnings',
    hl = { fg = colors.yellow },
  },
  {
    provider = 'diagnostic_hints',
    hl = { fg = colors.cyan },
  },
  {
    provider = 'diagnostic_info',
    hl = { fg = colors.blue },
  },
}

-- Right components
local right = {
  {
    provider = 'position',
    hl = { fg = colors.fg },
    left_sep = ' ',
    right_sep = 'block',
  },
  {
    provider = function()
      return os.date('%H:%M   %d/%m/%Y')
    end,
    hl = { fg = colors.green },
    left_sep = ' ',
    right_sep = 'block',
  },
}


-- Assemble the config
feline.setup({
  components = {
    active = {
      left,
      middle,
      right,
    },
    inactive = {},
  },
})


