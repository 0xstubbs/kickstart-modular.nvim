vim.opt.conceallevel = 2
return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',

  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --    'BufReadPre '
  -- .. vim.fn.expand '~'
  --  .. '~/Documents/stubbs/**.md',
  --   'BufReadPre ~/Documents/stubbs/**.md',
  --    'BufNewFile ~/Documents/stubbs/**.md',
  --},
  --},
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = 'stubbs',
        path = '~/Documents/stubbs',
      },
    },

    --      see below for full list of options 👇
    --       daily_notes = {
    --         folder = 'Periodic Notes/Daily Notes',
    --         template = 'Template_daily',
    --       },
  },
}
