return {
  'nvim-lualine/lualine.nvim',
  lazy = false,
  cmd = { 'TimerStart', 'TimerRepeat' },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'rcarriga/nvim-notify',
  },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'gruvbox_dark',
      },
      sections = {
        lualine_x = {
          function()
            local ok, pomo = pcall(require, 'pomo')
            if not ok then
              return ''
            end

            local timer = pomo.get_first_to_finish()
            if timer == nil then
              return ''
            end

            return '󰄉 ' .. tostring(timer)
          end,
          'encoding',
          'fileformat',
          'filetype',
        },
      },
    }
  end,
}
