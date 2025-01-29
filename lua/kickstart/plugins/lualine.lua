return {
  'nvim-lualine/lualine.nvim',
  priority = 1000,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  init = function()
    require('lualine').setup {
      options = {
        theme = 'material-stealth',
      },
    }
  end,
}
